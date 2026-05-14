package gnu.kawa.swingviews;

import javax.swing.text.BadLocationException;
import javax.swing.undo.AbstractUndoableEdit;
import javax.swing.undo.CannotRedoException;
import javax.swing.undo.CannotUndoException;

/* JADX INFO: compiled from: SwingContent.java */
/* JADX INFO: loaded from: classes.dex */
class GapUndoableEdit extends AbstractUndoableEdit {
    SwingContent content;
    String data;
    boolean isInsertion;
    int nitems;
    int startOffset;

    GapUndoableEdit(int offset) {
        this.startOffset = offset;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: javax.swing.text.BadLocationException */
    private void doit(boolean isInsertion) throws BadLocationException {
        if (isInsertion) {
            this.content.insertString(this.startOffset, this.data);
        } else {
            this.content.remove(this.startOffset, this.nitems);
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: javax.swing.text.BadLocationException */
    /* JADX INFO: Thrown type has an unknown type hierarchy: javax.swing.undo.CannotUndoException */
    public void undo() throws CannotUndoException {
        super.undo();
        try {
            doit(!this.isInsertion);
        } catch (BadLocationException e) {
            throw new CannotUndoException();
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: javax.swing.text.BadLocationException */
    /* JADX INFO: Thrown type has an unknown type hierarchy: javax.swing.undo.CannotRedoException */
    public void redo() throws CannotRedoException, CannotUndoException {
        super.redo();
        try {
            doit(this.isInsertion);
        } catch (BadLocationException e) {
            throw new CannotRedoException();
        }
    }
}
