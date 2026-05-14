package gnu.kawa.lispexpr;

import gnu.mapping.Namespace;

/* JADX INFO: compiled from: LispPackage.java */
/* JADX INFO: loaded from: classes2.dex */
class NamespaceUse {
    Namespace imported;
    Namespace importing;
    NamespaceUse nextImported;
    NamespaceUse nextImporting;

    NamespaceUse() {
    }
}
