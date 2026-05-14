package gnu.commonlisp.lang;

import gnu.kawa.lispexpr.ReadTable;

/* JADX INFO: compiled from: Lisp2.java */
/* JADX INFO: loaded from: classes2.dex */
class Lisp2ReadTable extends ReadTable {
    Lisp2ReadTable() {
    }

    @Override // gnu.kawa.lispexpr.ReadTable
    protected Object makeSymbol(String name) {
        return Lisp2.asSymbol(name.intern());
    }
}
