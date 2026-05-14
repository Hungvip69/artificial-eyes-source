package gnu.kawa.xml;

/* JADX INFO: loaded from: classes2.dex */
public class XString implements CharSequence {
    public String text;
    private XStringType type;

    public XStringType getStringType() {
        return this.type;
    }

    @Override // java.lang.CharSequence
    public char charAt(int index) {
        return this.text.charAt(index);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.text.length();
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int start, int end) {
        return this.text.substring(start, end);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.text;
    }

    XString(String text, XStringType type) {
        this.text = text;
        this.type = type;
    }
}
