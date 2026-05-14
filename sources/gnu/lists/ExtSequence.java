package gnu.lists;

/* JADX INFO: loaded from: classes.dex */
public abstract class ExtSequence extends AbstractSequence {
    @Override // gnu.lists.AbstractSequence
    public int copyPos(int ipos) {
        if (ipos <= 0) {
            return ipos;
        }
        return PositionManager.manager.register(PositionManager.getPositionObject(ipos).copy());
    }

    @Override // gnu.lists.AbstractSequence
    protected void releasePos(int ipos) {
        if (ipos > 0) {
            PositionManager.manager.release(ipos);
        }
    }

    @Override // gnu.lists.AbstractSequence
    protected boolean isAfterPos(int ipos) {
        return ipos <= 0 ? ipos < 0 : (PositionManager.getPositionObject(ipos).ipos & 1) != 0;
    }

    @Override // gnu.lists.AbstractSequence
    protected int nextIndex(int ipos) {
        if (ipos == -1) {
            return size();
        }
        if (ipos == 0) {
            return 0;
        }
        return PositionManager.getPositionObject(ipos).nextIndex();
    }
}
