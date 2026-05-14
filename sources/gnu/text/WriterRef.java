package gnu.text;

import java.io.Writer;
import java.lang.ref.WeakReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: WriterManager.java */
/* JADX INFO: loaded from: classes.dex */
public class WriterRef extends WeakReference {
    WriterRef next;
    WriterRef prev;

    public WriterRef(Writer wr) {
        super(wr);
    }
}
