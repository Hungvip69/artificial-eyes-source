package gnu.expr;

import gnu.mapping.InPort;
import gnu.mapping.Procedure1;

/* JADX INFO: compiled from: Language.java */
/* JADX INFO: loaded from: classes.dex */
class SimplePrompter extends Procedure1 {
    public String prefix = "[";
    public String suffix = "] ";

    SimplePrompter() {
    }

    @Override // gnu.mapping.Procedure1, gnu.mapping.Procedure
    public Object apply1(Object arg) {
        if (arg instanceof InPort) {
            InPort port = (InPort) arg;
            int line = port.getLineNumber() + 1;
            if (line >= 0) {
                return this.prefix + line + this.suffix;
            }
        }
        return this.suffix;
    }
}
