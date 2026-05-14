package com.google.appinventor.components.runtime;

import android.widget.EdgeEffect;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public class ListBounceEdgeEffectFactory extends RecyclerView.EdgeEffectFactory {
    private static final float FLING_TRANSLATION_MAGNITUDE = 0.5f;
    private static final float OVERSCROLL_TRANSLATION_MAGNITUDE = 0.2f;

    public EdgeEffect createEdgeEffect(RecyclerView recyclerView, int direction) {
        LinearLayoutManager layoutManager = recyclerView.getLayoutManager();
        boolean isHorizontal = layoutManager != null && layoutManager.getOrientation() == 0;
        return new BounceEdgeEffect(recyclerView, direction, isHorizontal);
    }

    private static class BounceEdgeEffect extends EdgeEffect {
        private final int direction;
        private final boolean isHorizontal;
        private final RecyclerView recyclerView;
        private SpringAnimation translationAnim;

        public BounceEdgeEffect(RecyclerView recyclerView, int direction, boolean isHorizontal) {
            super(recyclerView.getContext());
            this.recyclerView = recyclerView;
            this.direction = direction;
            this.isHorizontal = isHorizontal;
        }

        @Override // android.widget.EdgeEffect
        public void onPull(float deltaDistance) {
            super.onPull(deltaDistance);
            handlePull(deltaDistance);
        }

        @Override // android.widget.EdgeEffect
        public void onPull(float deltaDistance, float displacement) {
            super.onPull(deltaDistance, displacement);
            handlePull(deltaDistance);
        }

        private void handlePull(float deltaDistance) {
            int sign = (this.direction == 3 || (this.isHorizontal && this.direction == 2)) ? -1 : 1;
            float translationDelta = this.recyclerView.getWidth() * sign * deltaDistance * ListBounceEdgeEffectFactory.OVERSCROLL_TRANSLATION_MAGNITUDE;
            translateRecyclerView(translationDelta);
            if (this.translationAnim != null) {
                this.translationAnim.cancel();
            }
        }

        @Override // android.widget.EdgeEffect
        public void onRelease() {
            super.onRelease();
            if (getTranslation() != 0.0f) {
                this.translationAnim = createAnim();
                if (this.translationAnim != null) {
                    this.translationAnim.start();
                }
            }
        }

        @Override // android.widget.EdgeEffect
        public void onAbsorb(int velocity) {
            super.onAbsorb(velocity);
            int sign = (this.direction == 3 || (this.isHorizontal && this.direction == 2)) ? -1 : 1;
            float translationVelocity = sign * velocity * ListBounceEdgeEffectFactory.FLING_TRANSLATION_MAGNITUDE;
            if (this.translationAnim != null) {
                this.translationAnim.cancel();
            }
            this.translationAnim = createAnim();
            if (this.translationAnim != null) {
                this.translationAnim.setStartVelocity(translationVelocity);
                this.translationAnim.start();
            }
        }

        @Override // android.widget.EdgeEffect
        public boolean draw(android.graphics.Canvas canvas) {
            return false;
        }

        @Override // android.widget.EdgeEffect
        public boolean isFinished() {
            return this.translationAnim == null || !this.translationAnim.isRunning();
        }

        private SpringAnimation createAnim() {
            return new SpringAnimation(this.recyclerView, this.isHorizontal ? SpringAnimation.TRANSLATION_X : SpringAnimation.TRANSLATION_Y).setSpring(new SpringForce().setFinalPosition(0.0f).setDampingRatio(ListBounceEdgeEffectFactory.FLING_TRANSLATION_MAGNITUDE).setStiffness(200.0f));
        }

        private float getTranslation() {
            return this.isHorizontal ? this.recyclerView.getTranslationX() : this.recyclerView.getTranslationY();
        }

        private void translateRecyclerView(float translationDelta) {
            if (this.isHorizontal) {
                this.recyclerView.setTranslationX(getTranslation() + translationDelta);
            } else {
                this.recyclerView.setTranslationY(getTranslation() + translationDelta);
            }
        }
    }
}
