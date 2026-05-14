package gnu.kawa.swingviews;

import gnu.lists.CharBuffer;
import gnu.lists.SeqPosition;
import javax.swing.text.Position;

/* JADX INFO: compiled from: SwingContent.java */
/* JADX INFO: loaded from: classes.dex */
class GapPosition extends SeqPosition implements Position {
    public GapPosition(CharBuffer content, int offset) {
        super(content, offset, offset != 0);
    }

    public int getOffset() {
        return nextIndex();
    }
}
