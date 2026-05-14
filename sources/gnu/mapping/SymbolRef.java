package gnu.mapping;

import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: Namespace.java */
/* JADX INFO: loaded from: classes.dex */
class SymbolRef extends WeakReference {
    SymbolRef next;

    SymbolRef(Symbol sym, Namespace ns) {
        super(sym);
    }

    Symbol getSymbol() {
        return (Symbol) get();
    }

    public String toString() {
        return "SymbolRef[" + getSymbol() + "]";
    }
}
