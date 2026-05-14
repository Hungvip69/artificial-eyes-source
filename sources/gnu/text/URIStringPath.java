package gnu.text;

import java.net.URI;

/* JADX INFO: compiled from: URIPath.java */
/* JADX INFO: loaded from: classes.dex */
class URIStringPath extends URIPath {
    String uriString;

    @Override // gnu.text.URIPath, gnu.text.Path
    public String toURIString() {
        return this.uriString;
    }

    public URIStringPath(URI uri, String uriString) {
        super(uri);
        this.uriString = uriString;
    }
}
