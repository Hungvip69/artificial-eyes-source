package gnu.lists;

import gnu.kawa.lispexpr.LispReader;
import gnu.text.Char;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public class TreeList extends AbstractSequence implements Appendable, XConsumer, PositionConsumer, Consumable {
    protected static final int BEGIN_ATTRIBUTE_LONG = 61705;
    public static final int BEGIN_ATTRIBUTE_LONG_SIZE = 5;
    protected static final int BEGIN_DOCUMENT = 61712;
    protected static final int BEGIN_ELEMENT_LONG = 61704;
    protected static final int BEGIN_ELEMENT_SHORT = 40960;
    protected static final int BEGIN_ELEMENT_SHORT_INDEX_MAX = 4095;
    public static final int BEGIN_ENTITY = 61714;
    public static final int BEGIN_ENTITY_SIZE = 5;
    static final char BOOL_FALSE = 61696;
    static final char BOOL_TRUE = 61697;
    static final int BYTE_PREFIX = 61440;
    static final int CDATA_SECTION = 61717;
    static final int CHAR_FOLLOWS = 61702;
    static final int COMMENT = 61719;
    protected static final int DOCUMENT_URI = 61720;
    static final int DOUBLE_FOLLOWS = 61701;
    static final int END_ATTRIBUTE = 61706;
    public static final int END_ATTRIBUTE_SIZE = 1;
    protected static final int END_DOCUMENT = 61713;
    protected static final int END_ELEMENT_LONG = 61708;
    protected static final int END_ELEMENT_SHORT = 61707;
    protected static final int END_ENTITY = 61715;
    static final int FLOAT_FOLLOWS = 61700;
    public static final int INT_FOLLOWS = 61698;
    static final int INT_SHORT_ZERO = 49152;
    static final int JOINER = 61718;
    static final int LONG_FOLLOWS = 61699;
    public static final int MAX_CHAR_SHORT = 40959;
    static final int MAX_INT_SHORT = 8191;
    static final int MIN_INT_SHORT = -4096;
    static final char OBJECT_REF_FOLLOWS = 61709;
    static final int OBJECT_REF_SHORT = 57344;
    static final int OBJECT_REF_SHORT_INDEX_MAX = 4095;
    protected static final char POSITION_PAIR_FOLLOWS = 61711;
    static final char POSITION_REF_FOLLOWS = 61710;
    protected static final int PROCESSING_INSTRUCTION = 61716;
    public int attrStart;
    int currentParent;
    public char[] data;
    public int docStart;
    public int gapEnd;
    public int gapStart;
    public Object[] objects;
    public int oindex;

    public TreeList() {
        this.currentParent = -1;
        resizeObjects();
        this.gapEnd = 200;
        this.data = new char[this.gapEnd];
    }

    public TreeList(TreeList list, int startPosition, int endPosition) {
        this();
        list.consumeIRange(startPosition, endPosition, this);
    }

    public TreeList(TreeList list) {
        this(list, 0, list.data.length);
    }

    @Override // gnu.lists.AbstractSequence, java.util.List, java.util.Collection
    public void clear() {
        this.gapStart = 0;
        this.gapEnd = this.data.length;
        this.attrStart = 0;
        if (this.gapEnd > 1500) {
            this.gapEnd = 200;
            this.data = new char[this.gapEnd];
        }
        this.objects = null;
        this.oindex = 0;
        resizeObjects();
    }

    public void ensureSpace(int needed) {
        int avail = this.gapEnd - this.gapStart;
        if (needed > avail) {
            int oldSize = this.data.length;
            int neededSize = (oldSize - avail) + needed;
            int newSize = oldSize * 2;
            if (newSize < neededSize) {
                newSize = neededSize;
            }
            char[] tmp = new char[newSize];
            if (this.gapStart > 0) {
                System.arraycopy(this.data, 0, tmp, 0, this.gapStart);
            }
            int afterGap = oldSize - this.gapEnd;
            if (afterGap > 0) {
                System.arraycopy(this.data, this.gapEnd, tmp, newSize - afterGap, afterGap);
            }
            this.gapEnd = newSize - afterGap;
            this.data = tmp;
        }
    }

    public final void resizeObjects() {
        Object[] tmp;
        if (this.objects == null) {
            tmp = new Object[100];
        } else {
            int oldLength = this.objects.length;
            int newLength = oldLength * 2;
            tmp = new Object[newLength];
            System.arraycopy(this.objects, 0, tmp, 0, oldLength);
        }
        this.objects = tmp;
    }

    public int find(Object arg1) {
        if (this.oindex == this.objects.length) {
            resizeObjects();
        }
        this.objects[this.oindex] = arg1;
        int i = this.oindex;
        this.oindex = i + 1;
        return i;
    }

    protected final int getIntN(int index) {
        return (this.data[index] << 16) | (this.data[index + 1] & LispReader.TOKEN_ESCAPE_CHAR);
    }

    protected final long getLongN(int index) {
        char[] data = this.data;
        return ((((long) data[index]) & 65535) << 48) | ((((long) data[index + 1]) & 65535) << 32) | ((((long) data[index + 2]) & 65535) << 16) | (65535 & ((long) data[index + 3]));
    }

    public final void setIntN(int index, int i) {
        this.data[index] = (char) (i >> 16);
        this.data[index + 1] = (char) i;
    }

    @Override // gnu.lists.PositionConsumer
    public void consume(SeqPosition position) {
        ensureSpace(3);
        int index = find(position.copy());
        char[] cArr = this.data;
        int i = this.gapStart;
        this.gapStart = i + 1;
        cArr[i] = POSITION_REF_FOLLOWS;
        setIntN(this.gapStart, index);
        this.gapStart += 2;
    }

    public void writePosition(AbstractSequence seq, int ipos) {
        ensureSpace(5);
        this.data[this.gapStart] = POSITION_PAIR_FOLLOWS;
        int seq_index = find(seq);
        setIntN(this.gapStart + 1, seq_index);
        setIntN(this.gapStart + 3, ipos);
        this.gapStart += 5;
    }

    public void writeObject(Object v) {
        ensureSpace(3);
        int index = find(v);
        if (index < 4096) {
            char[] cArr = this.data;
            int i = this.gapStart;
            this.gapStart = i + 1;
            cArr[i] = (char) (OBJECT_REF_SHORT | index);
            return;
        }
        char[] cArr2 = this.data;
        int i2 = this.gapStart;
        this.gapStart = i2 + 1;
        cArr2[i2] = OBJECT_REF_FOLLOWS;
        setIntN(this.gapStart, index);
        this.gapStart += 2;
    }

    public void writeDocumentUri(Object uri) {
        ensureSpace(3);
        int index = find(uri);
        char[] cArr = this.data;
        int i = this.gapStart;
        this.gapStart = i + 1;
        cArr[i] = 61720;
        setIntN(this.gapStart, index);
        this.gapStart += 2;
    }

    public void writeComment(char[] chars, int offset, int length) {
        ensureSpace(length + 3);
        int i = this.gapStart;
        int i2 = i + 1;
        this.data[i] = 61719;
        setIntN(i2, length);
        int i3 = i2 + 2;
        System.arraycopy(chars, offset, this.data, i3, length);
        this.gapStart = i3 + length;
    }

    public void writeComment(String comment, int offset, int length) {
        ensureSpace(length + 3);
        int i = this.gapStart;
        int i2 = i + 1;
        this.data[i] = 61719;
        setIntN(i2, length);
        int i3 = i2 + 2;
        comment.getChars(offset, offset + length, this.data, i3);
        this.gapStart = i3 + length;
    }

    public void writeProcessingInstruction(String target, char[] content, int offset, int length) {
        ensureSpace(length + 5);
        int i = this.gapStart;
        int i2 = i + 1;
        this.data[i] = 61716;
        int index = find(target);
        setIntN(i2, index);
        setIntN(i2 + 2, length);
        int i3 = i2 + 4;
        System.arraycopy(content, offset, this.data, i3, length);
        this.gapStart = i3 + length;
    }

    public void writeProcessingInstruction(String target, String content, int offset, int length) {
        ensureSpace(length + 5);
        int i = this.gapStart;
        int i2 = i + 1;
        this.data[i] = 61716;
        int index = find(target);
        setIntN(i2, index);
        setIntN(i2 + 2, length);
        int i3 = i2 + 4;
        content.getChars(offset, offset + length, this.data, i3);
        this.gapStart = i3 + length;
    }

    public void startElement(Object type) {
        startElement(find(type));
    }

    public void startDocument() {
        ensureSpace(6);
        this.gapEnd--;
        int p = this.gapStart;
        this.data[p] = 61712;
        if (this.docStart != 0) {
            throw new Error("nested document");
        }
        this.docStart = p + 1;
        setIntN(p + 1, this.gapEnd - this.data.length);
        setIntN(p + 3, this.currentParent != -1 ? this.currentParent - p : -1);
        this.currentParent = p;
        this.gapStart = p + 5;
        this.currentParent = p;
        this.data[this.gapEnd] = 61713;
    }

    public void endDocument() {
        if (this.data[this.gapEnd] != END_DOCUMENT || this.docStart <= 0 || this.data[this.currentParent] != BEGIN_DOCUMENT) {
            throw new Error("unexpected endDocument");
        }
        this.gapEnd++;
        setIntN(this.docStart, (this.gapStart - this.docStart) + 1);
        this.docStart = 0;
        char[] cArr = this.data;
        int i = this.gapStart;
        this.gapStart = i + 1;
        cArr[i] = 61713;
        int parent = getIntN(this.currentParent + 3);
        this.currentParent = parent >= -1 ? parent : this.currentParent + parent;
    }

    public void beginEntity(Object base) {
        if (this.gapStart != 0) {
            return;
        }
        ensureSpace(6);
        this.gapEnd--;
        int p = this.gapStart;
        this.data[p] = 61714;
        setIntN(p + 1, find(base));
        setIntN(p + 3, this.currentParent != -1 ? this.currentParent - p : -1);
        this.gapStart = p + 5;
        this.currentParent = p;
        this.data[this.gapEnd] = 61715;
    }

    public void endEntity() {
        if (this.gapEnd + 1 != this.data.length || this.data[this.gapEnd] != END_ENTITY) {
            return;
        }
        if (this.data[this.currentParent] != 61714) {
            throw new Error("unexpected endEntity");
        }
        this.gapEnd++;
        char[] cArr = this.data;
        int i = this.gapStart;
        this.gapStart = i + 1;
        cArr[i] = 61715;
        int parent = getIntN(this.currentParent + 3);
        this.currentParent = parent >= -1 ? parent : this.currentParent + parent;
    }

    public void startElement(int index) {
        ensureSpace(10);
        this.gapEnd -= 7;
        char[] cArr = this.data;
        int i = this.gapStart;
        this.gapStart = i + 1;
        cArr[i] = 61704;
        setIntN(this.gapStart, this.gapEnd - this.data.length);
        this.gapStart += 2;
        this.data[this.gapEnd] = 61708;
        setIntN(this.gapEnd + 1, index);
        setIntN(this.gapEnd + 3, this.gapStart - 3);
        setIntN(this.gapEnd + 5, this.currentParent);
        this.currentParent = this.gapStart - 3;
    }

    public void setElementName(int elementIndex, int nameIndex) {
        if (this.data[elementIndex] == BEGIN_ELEMENT_LONG) {
            int j = getIntN(elementIndex + 1);
            elementIndex = j + (j < 0 ? this.data.length : elementIndex);
        }
        if (elementIndex < this.gapEnd) {
            throw new Error("setElementName before gapEnd");
        }
        setIntN(elementIndex + 1, nameIndex);
    }

    public void endElement() {
        if (this.data[this.gapEnd] != END_ELEMENT_LONG) {
            throw new Error("unexpected endElement");
        }
        int index = getIntN(this.gapEnd + 1);
        int begin = getIntN(this.gapEnd + 3);
        int parent = getIntN(this.gapEnd + 5);
        this.currentParent = parent;
        this.gapEnd += 7;
        int offset = this.gapStart - begin;
        int parentOffset = begin - parent;
        if (index < 4095 && offset < 65536 && parentOffset < 65536) {
            this.data[begin] = (char) (BEGIN_ELEMENT_SHORT | index);
            this.data[begin + 1] = (char) offset;
            this.data[begin + 2] = (char) parentOffset;
            this.data[this.gapStart] = 61707;
            this.data[this.gapStart + 1] = (char) offset;
            this.gapStart += 2;
            return;
        }
        this.data[begin] = 61704;
        setIntN(begin + 1, offset);
        this.data[this.gapStart] = 61708;
        setIntN(this.gapStart + 1, index);
        setIntN(this.gapStart + 3, -offset);
        if (parent >= this.gapStart || begin <= this.gapStart) {
            parent -= this.gapStart;
        }
        setIntN(this.gapStart + 5, parent);
        this.gapStart += 7;
    }

    public void startAttribute(Object attrType) {
        startAttribute(find(attrType));
    }

    public void startAttribute(int index) {
        ensureSpace(6);
        this.gapEnd--;
        char[] cArr = this.data;
        int i = this.gapStart;
        this.gapStart = i + 1;
        cArr[i] = 61705;
        if (this.attrStart != 0) {
            throw new Error("nested attribute");
        }
        this.attrStart = this.gapStart;
        setIntN(this.gapStart, index);
        setIntN(this.gapStart + 2, this.gapEnd - this.data.length);
        this.gapStart += 4;
        this.data[this.gapEnd] = 61706;
    }

    public void setAttributeName(int attrIndex, int nameIndex) {
        setIntN(attrIndex + 1, nameIndex);
    }

    public void endAttribute() {
        if (this.attrStart <= 0) {
            return;
        }
        if (this.data[this.gapEnd] != END_ATTRIBUTE) {
            throw new Error("unexpected endAttribute");
        }
        this.gapEnd++;
        setIntN(this.attrStart + 2, (this.gapStart - this.attrStart) + 1);
        this.attrStart = 0;
        char[] cArr = this.data;
        int i = this.gapStart;
        this.gapStart = i + 1;
        cArr[i] = 61706;
    }

    @Override // java.lang.Appendable
    public Consumer append(char c) {
        write(c);
        return this;
    }

    public void write(int c) {
        ensureSpace(3);
        if (c <= 40959) {
            char[] cArr = this.data;
            int i = this.gapStart;
            this.gapStart = i + 1;
            cArr[i] = (char) c;
            return;
        }
        if (c < 65536) {
            char[] cArr2 = this.data;
            int i2 = this.gapStart;
            this.gapStart = i2 + 1;
            cArr2[i2] = 61702;
            char[] cArr3 = this.data;
            int i3 = this.gapStart;
            this.gapStart = i3 + 1;
            cArr3[i3] = (char) c;
            return;
        }
        Char.print(c, this);
    }

    public void writeBoolean(boolean v) {
        ensureSpace(1);
        char[] cArr = this.data;
        int i = this.gapStart;
        this.gapStart = i + 1;
        cArr[i] = v ? BOOL_TRUE : BOOL_FALSE;
    }

    public void writeByte(int v) {
        ensureSpace(1);
        char[] cArr = this.data;
        int i = this.gapStart;
        this.gapStart = i + 1;
        cArr[i] = (char) ((v & 255) + BYTE_PREFIX);
    }

    public void writeInt(int v) {
        ensureSpace(3);
        if (v >= MIN_INT_SHORT && v <= MAX_INT_SHORT) {
            char[] cArr = this.data;
            int i = this.gapStart;
            this.gapStart = i + 1;
            cArr[i] = (char) (INT_SHORT_ZERO + v);
            return;
        }
        char[] cArr2 = this.data;
        int i2 = this.gapStart;
        this.gapStart = i2 + 1;
        cArr2[i2] = 61698;
        setIntN(this.gapStart, v);
        this.gapStart += 2;
    }

    public void writeLong(long v) {
        ensureSpace(5);
        char[] cArr = this.data;
        int i = this.gapStart;
        this.gapStart = i + 1;
        cArr[i] = 61699;
        char[] cArr2 = this.data;
        int i2 = this.gapStart;
        this.gapStart = i2 + 1;
        cArr2[i2] = (char) (v >>> 48);
        char[] cArr3 = this.data;
        int i3 = this.gapStart;
        this.gapStart = i3 + 1;
        cArr3[i3] = (char) (v >>> 32);
        char[] cArr4 = this.data;
        int i4 = this.gapStart;
        this.gapStart = i4 + 1;
        cArr4[i4] = (char) (v >>> 16);
        char[] cArr5 = this.data;
        int i5 = this.gapStart;
        this.gapStart = i5 + 1;
        cArr5[i5] = (char) v;
    }

    public void writeFloat(float v) {
        ensureSpace(3);
        int i = Float.floatToIntBits(v);
        char[] cArr = this.data;
        int i2 = this.gapStart;
        this.gapStart = i2 + 1;
        cArr[i2] = 61700;
        char[] cArr2 = this.data;
        int i3 = this.gapStart;
        this.gapStart = i3 + 1;
        cArr2[i3] = (char) (i >>> 16);
        char[] cArr3 = this.data;
        int i4 = this.gapStart;
        this.gapStart = i4 + 1;
        cArr3[i4] = (char) i;
    }

    public void writeDouble(double v) {
        ensureSpace(5);
        long l = Double.doubleToLongBits(v);
        char[] cArr = this.data;
        int i = this.gapStart;
        this.gapStart = i + 1;
        cArr[i] = 61701;
        char[] cArr2 = this.data;
        int i2 = this.gapStart;
        this.gapStart = i2 + 1;
        cArr2[i2] = (char) (l >>> 48);
        char[] cArr3 = this.data;
        int i3 = this.gapStart;
        this.gapStart = i3 + 1;
        cArr3[i3] = (char) (l >>> 32);
        char[] cArr4 = this.data;
        int i4 = this.gapStart;
        this.gapStart = i4 + 1;
        cArr4[i4] = (char) (l >>> 16);
        char[] cArr5 = this.data;
        int i5 = this.gapStart;
        this.gapStart = i5 + 1;
        cArr5[i5] = (char) l;
    }

    @Override // gnu.lists.Consumer
    public boolean ignoring() {
        return false;
    }

    public void writeJoiner() {
        ensureSpace(1);
        char[] cArr = this.data;
        int i = this.gapStart;
        this.gapStart = i + 1;
        cArr[i] = 61718;
    }

    public void write(char[] buf, int off, int len) {
        if (len == 0) {
            writeJoiner();
        }
        ensureSpace(len);
        while (len > 0) {
            int off2 = off + 1;
            char ch = buf[off];
            len--;
            if (ch <= 40959) {
                char[] cArr = this.data;
                int i = this.gapStart;
                this.gapStart = i + 1;
                cArr[i] = ch;
            } else {
                write(ch);
                ensureSpace(len);
            }
            off = off2;
        }
    }

    public void write(String str) {
        write(str, 0, str.length());
    }

    public void write(CharSequence str, int start, int length) {
        if (length == 0) {
            writeJoiner();
        }
        ensureSpace(length);
        while (length > 0) {
            int start2 = start + 1;
            char ch = str.charAt(start);
            length--;
            if (ch <= 40959) {
                char[] cArr = this.data;
                int i = this.gapStart;
                this.gapStart = i + 1;
                cArr[i] = ch;
            } else {
                write(ch);
                ensureSpace(length);
            }
            start = start2;
        }
    }

    public void writeCDATA(char[] chars, int offset, int length) {
        ensureSpace(length + 3);
        int i = this.gapStart;
        int i2 = i + 1;
        this.data[i] = 61717;
        setIntN(i2, length);
        int i3 = i2 + 2;
        System.arraycopy(chars, offset, this.data, i3, length);
        this.gapStart = i3 + length;
    }

    @Override // java.lang.Appendable
    public Consumer append(CharSequence csq) {
        if (csq == null) {
            csq = "null";
        }
        return append(csq, 0, csq.length());
    }

    @Override // java.lang.Appendable
    public Consumer append(CharSequence csq, int start, int end) {
        if (csq == null) {
            csq = "null";
        }
        for (int i = start; i < end; i++) {
            append(csq.charAt(i));
        }
        return this;
    }

    @Override // gnu.lists.AbstractSequence, gnu.lists.Sequence, java.util.List, java.util.Collection
    public boolean isEmpty() {
        int pos = this.gapStart == 0 ? this.gapEnd : 0;
        return pos == this.data.length;
    }

    @Override // gnu.lists.AbstractSequence, gnu.lists.Sequence, java.util.List, java.util.Collection, com.google.appinventor.components.runtime.util.YailObject
    public int size() {
        int size = 0;
        int i = 0;
        while (true) {
            i = nextPos(i);
            if (i == 0) {
                return size;
            }
            size++;
        }
    }

    @Override // gnu.lists.AbstractSequence
    public int createPos(int index, boolean isAfter) {
        return createRelativePos(0, index, isAfter);
    }

    public final int posToDataIndex(int ipos) {
        if (ipos == -1) {
            return this.data.length;
        }
        int index = ipos >>> 1;
        if ((ipos & 1) != 0) {
            index--;
        }
        if (index >= this.gapStart) {
            index += this.gapEnd - this.gapStart;
        }
        if ((ipos & 1) != 0) {
            int index2 = nextDataIndex(index);
            if (index2 < 0) {
                return this.data.length;
            }
            if (index2 == this.gapStart) {
                return index2 + (this.gapEnd - this.gapStart);
            }
            return index2;
        }
        return index;
    }

    @Override // gnu.lists.AbstractSequence
    public int firstChildPos(int ipos) {
        int index = gotoChildrenStart(posToDataIndex(ipos));
        if (index < 0) {
            return 0;
        }
        return index << 1;
    }

    public final int gotoChildrenStart(int index) {
        int index2;
        if (index == this.data.length) {
            return -1;
        }
        char datum = this.data[index];
        if ((datum >= BEGIN_ELEMENT_SHORT && datum <= 45055) || datum == BEGIN_ELEMENT_LONG) {
            index2 = index + 3;
        } else {
            if (datum != BEGIN_DOCUMENT && datum != 61714) {
                return -1;
            }
            index2 = index + 5;
        }
        while (true) {
            if (index2 >= this.gapStart) {
                index2 += this.gapEnd - this.gapStart;
            }
            char datum2 = this.data[index2];
            if (datum2 == BEGIN_ATTRIBUTE_LONG) {
                int end = getIntN(index2 + 3);
                index2 = end + (end < 0 ? this.data.length : index2);
            } else if (datum2 == END_ATTRIBUTE || datum2 == JOINER) {
                index2++;
            } else if (datum2 == DOCUMENT_URI) {
                index2 += 3;
            } else {
                return index2;
            }
        }
    }

    @Override // gnu.lists.AbstractSequence
    public int parentPos(int ipos) {
        int index = posToDataIndex(ipos);
        do {
            index = parentOrEntityI(index);
            if (index == -1) {
                return -1;
            }
        } while (this.data[index] == 61714);
        return index << 1;
    }

    public int parentOrEntityPos(int ipos) {
        int index = parentOrEntityI(posToDataIndex(ipos));
        if (index < 0) {
            return -1;
        }
        return index << 1;
    }

    public int parentOrEntityI(int i) {
        if (i == this.data.length) {
            return -1;
        }
        char c = this.data[i];
        if (c == BEGIN_DOCUMENT || c == 61714) {
            int intN = getIntN(i + 3);
            if (intN >= -1) {
                return intN;
            }
            return i + intN;
        }
        if (c >= BEGIN_ELEMENT_SHORT && c <= 45055) {
            char c2 = this.data[i + 2];
            if (c2 == 0) {
                return -1;
            }
            return i - c2;
        }
        if (c == BEGIN_ELEMENT_LONG) {
            int intN2 = getIntN(i + 1);
            if (intN2 < 0) {
                i = this.data.length;
            }
            int i2 = intN2 + i;
            int intN3 = getIntN(i2 + 5);
            if (intN3 == 0) {
                return -1;
            }
            if (intN3 < 0) {
                return intN3 + i2;
            }
            return intN3;
        }
        while (true) {
            if (i == this.gapStart) {
                i = this.gapEnd;
            }
            if (i == this.data.length) {
                return -1;
            }
            switch (this.data[i]) {
                case END_ATTRIBUTE /* 61706 */:
                    i++;
                    break;
                case END_ELEMENT_SHORT /* 61707 */:
                    return i - this.data[i + 1];
                case END_ELEMENT_LONG /* 61708 */:
                    int intN4 = getIntN(i + 3);
                    if (intN4 < 0) {
                        return intN4 + i;
                    }
                    return intN4;
                case END_DOCUMENT /* 61713 */:
                    return -1;
                default:
                    i = nextDataIndex(i);
                    if (i < 0) {
                        return -1;
                    }
                    break;
            }
        }
    }

    public int getAttributeCount(int parent) {
        int n = 0;
        int attr = firstAttributePos(parent);
        while (attr != 0 && getNextKind(attr) == 35) {
            n++;
            attr = nextPos(attr);
        }
        return n;
    }

    @Override // gnu.lists.AbstractSequence
    public boolean gotoAttributesStart(TreePosition pos) {
        int index = gotoAttributesStart(pos.ipos >> 1);
        if (index < 0) {
            return false;
        }
        pos.push(this, index << 1);
        return true;
    }

    @Override // gnu.lists.AbstractSequence
    public int firstAttributePos(int ipos) {
        int index = gotoAttributesStart(posToDataIndex(ipos));
        if (index < 0) {
            return 0;
        }
        return index << 1;
    }

    public int gotoAttributesStart(int index) {
        if (index >= this.gapStart) {
            index += this.gapEnd - this.gapStart;
        }
        if (index == this.data.length) {
            return -1;
        }
        char datum = this.data[index];
        if ((datum < BEGIN_ELEMENT_SHORT || datum > 45055) && datum != BEGIN_ELEMENT_LONG) {
            return -1;
        }
        return index + 3;
    }

    @Override // gnu.lists.AbstractSequence
    public Object get(int index) {
        int i = 0;
        do {
            index--;
            if (index >= 0) {
                i = nextPos(i);
            } else {
                return getPosNext(i);
            }
        } while (i != 0);
        throw new IndexOutOfBoundsException();
    }

    @Override // gnu.lists.AbstractSequence
    public boolean consumeNext(int ipos, Consumer out) {
        if (!hasNext(ipos)) {
            return false;
        }
        int start = posToDataIndex(ipos);
        int end = nextNodeIndex(start, Integer.MAX_VALUE);
        if (end == start) {
            end = nextDataIndex(start);
        }
        if (end >= 0) {
            consumeIRange(start, end, out);
            return true;
        }
        return true;
    }

    @Override // gnu.lists.AbstractSequence
    public void consumePosRange(int startPos, int endPos, Consumer out) {
        consumeIRange(posToDataIndex(startPos), posToDataIndex(endPos), out);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x001b, code lost:
    
        return r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int consumeIRange(int r6, int r7, gnu.lists.Consumer r8) {
        /*
            Method dump skipped, instruction units count: 592
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.lists.TreeList.consumeIRange(int, int, gnu.lists.Consumer):int");
    }

    @Override // gnu.lists.AbstractSequence
    public void toString(String str, StringBuffer stringBuffer) {
        int intN;
        int i;
        int length = this.gapStart;
        int i2 = 0;
        boolean z = false;
        boolean z2 = false;
        while (true) {
            if (i2 < length || (i2 == this.gapStart && (i2 = this.gapEnd) != (length = this.data.length))) {
                int i3 = i2 + 1;
                char c = this.data[i2];
                if (c <= 40959) {
                    int i4 = i3 - 1;
                    while (true) {
                        if (i3 >= length) {
                            i2 = i3;
                        } else {
                            int i5 = i3 + 1;
                            if (this.data[i3] <= 40959) {
                                i3 = i5;
                            } else {
                                i2 = i5 - 1;
                            }
                        }
                    }
                    if (z) {
                        stringBuffer.append('>');
                        z = false;
                    }
                    stringBuffer.append(this.data, i4, i2 - i4);
                    z2 = false;
                } else {
                    if (c >= OBJECT_REF_SHORT && c <= 61439) {
                        if (z) {
                            stringBuffer.append('>');
                            z = false;
                        }
                        if (z2) {
                            stringBuffer.append(str);
                        } else {
                            z2 = true;
                        }
                        stringBuffer.append(this.objects[c - OBJECT_REF_SHORT]);
                        i2 = i3;
                    } else if (c >= BEGIN_ELEMENT_SHORT && c <= 45055) {
                        if (z) {
                            stringBuffer.append('>');
                        }
                        int i6 = c - BEGIN_ELEMENT_SHORT;
                        if (z2) {
                            stringBuffer.append(str);
                        }
                        stringBuffer.append('<');
                        stringBuffer.append(this.objects[i6].toString());
                        i2 = i3 + 2;
                        z = true;
                        z2 = false;
                    } else if (c >= 45056 && c <= 57343) {
                        if (z) {
                            stringBuffer.append('>');
                            z = false;
                        }
                        if (z2) {
                            stringBuffer.append(str);
                        } else {
                            z2 = true;
                        }
                        stringBuffer.append(c - INT_SHORT_ZERO);
                        i2 = i3;
                    } else {
                        switch (c) {
                            case 61696:
                            case 61697:
                                if (z) {
                                    stringBuffer.append('>');
                                    z = false;
                                }
                                if (z2) {
                                    stringBuffer.append(str);
                                } else {
                                    z2 = true;
                                }
                                stringBuffer.append(c != 61696);
                                i2 = i3;
                                break;
                            case INT_FOLLOWS /* 61698 */:
                                if (z) {
                                    stringBuffer.append('>');
                                    z = false;
                                }
                                if (z2) {
                                    stringBuffer.append(str);
                                } else {
                                    z2 = true;
                                }
                                stringBuffer.append(getIntN(i3));
                                i2 = i3 + 2;
                                break;
                            case LONG_FOLLOWS /* 61699 */:
                                if (z) {
                                    stringBuffer.append('>');
                                    z = false;
                                }
                                if (z2) {
                                    stringBuffer.append(str);
                                } else {
                                    z2 = true;
                                }
                                stringBuffer.append(getLongN(i3));
                                i2 = i3 + 4;
                                break;
                            case FLOAT_FOLLOWS /* 61700 */:
                                if (z) {
                                    stringBuffer.append('>');
                                    z = false;
                                }
                                if (z2) {
                                    stringBuffer.append(str);
                                } else {
                                    z2 = true;
                                }
                                stringBuffer.append(Float.intBitsToFloat(getIntN(i3)));
                                i2 = i3 + 2;
                                break;
                            case DOUBLE_FOLLOWS /* 61701 */:
                                if (z) {
                                    stringBuffer.append('>');
                                    z = false;
                                }
                                if (z2) {
                                    stringBuffer.append(str);
                                } else {
                                    z2 = true;
                                }
                                stringBuffer.append(Double.longBitsToDouble(getLongN(i3)));
                                i2 = i3 + 4;
                                break;
                            case CHAR_FOLLOWS /* 61702 */:
                                if (z) {
                                    stringBuffer.append('>');
                                    z = false;
                                }
                                stringBuffer.append(this.data, i3, (c + 1) - CHAR_FOLLOWS);
                                i2 = i3 + 1;
                                z2 = false;
                                break;
                            case 61703:
                            default:
                                throw new Error("unknown code:" + ((int) c));
                            case BEGIN_ELEMENT_LONG /* 61704 */:
                                int intN2 = getIntN(i3);
                                int length2 = intN2 >= 0 ? i3 - 1 : this.data.length;
                                int i7 = i3 + 2;
                                int intN3 = getIntN(intN2 + length2 + 1);
                                if (z) {
                                    stringBuffer.append('>');
                                } else if (z2) {
                                    stringBuffer.append(str);
                                }
                                stringBuffer.append('<');
                                stringBuffer.append(this.objects[intN3]);
                                i2 = i7;
                                z = true;
                                z2 = false;
                                break;
                            case BEGIN_ATTRIBUTE_LONG /* 61705 */:
                                int intN4 = getIntN(i3);
                                stringBuffer.append(' ');
                                stringBuffer.append(this.objects[intN4]);
                                stringBuffer.append("=\"");
                                i2 = i3 + 4;
                                z = false;
                                break;
                            case END_ATTRIBUTE /* 61706 */:
                                stringBuffer.append('\"');
                                i2 = i3;
                                z = true;
                                z2 = false;
                                break;
                            case END_ELEMENT_SHORT /* 61707 */:
                            case END_ELEMENT_LONG /* 61708 */:
                                if (c == END_ELEMENT_SHORT) {
                                    i = i3 + 1;
                                    intN = this.data[(i - 2) - this.data[i3]] - BEGIN_ELEMENT_SHORT;
                                } else {
                                    intN = getIntN(i3);
                                    i = i3 + 6;
                                }
                                if (z) {
                                    stringBuffer.append("/>");
                                } else {
                                    stringBuffer.append("</");
                                    stringBuffer.append(this.objects[intN]);
                                    stringBuffer.append('>');
                                }
                                i2 = i;
                                z = false;
                                z2 = true;
                                break;
                            case 61709:
                            case 61710:
                                if (z) {
                                    stringBuffer.append('>');
                                    z = false;
                                }
                                if (z2) {
                                    stringBuffer.append(str);
                                } else {
                                    z2 = true;
                                }
                                stringBuffer.append(this.objects[getIntN(i3)]);
                                i2 = i3 + 2;
                                break;
                            case 61711:
                                if (z) {
                                    stringBuffer.append('>');
                                    z = false;
                                }
                                if (z2) {
                                    stringBuffer.append(str);
                                } else {
                                    z2 = true;
                                }
                                stringBuffer.append(((AbstractSequence) this.objects[getIntN(i3)]).getIteratorAtPos(getIntN(i3 + 2)));
                                i2 = i3 + 4;
                                break;
                            case BEGIN_DOCUMENT /* 61712 */:
                            case BEGIN_ENTITY /* 61714 */:
                                i2 = i3 + 4;
                                break;
                            case END_DOCUMENT /* 61713 */:
                            case END_ENTITY /* 61715 */:
                            case JOINER /* 61718 */:
                                i2 = i3;
                                break;
                            case PROCESSING_INSTRUCTION /* 61716 */:
                                if (z) {
                                    stringBuffer.append('>');
                                    z = false;
                                }
                                stringBuffer.append("<?");
                                int intN5 = getIntN(i3);
                                int i8 = i3 + 2;
                                stringBuffer.append(this.objects[intN5]);
                                int intN6 = getIntN(i8);
                                int i9 = i8 + 2;
                                if (intN6 > 0) {
                                    stringBuffer.append(' ');
                                    stringBuffer.append(this.data, i9, intN6);
                                    i9 += intN6;
                                }
                                i2 = i9;
                                stringBuffer.append("?>");
                                break;
                            case CDATA_SECTION /* 61717 */:
                                if (z) {
                                    stringBuffer.append('>');
                                    z = false;
                                }
                                int intN7 = getIntN(i3);
                                int i10 = i3 + 2;
                                stringBuffer.append("<![CDATA[");
                                stringBuffer.append(this.data, i10, intN7);
                                stringBuffer.append("]]>");
                                i2 = intN7 + i10;
                                break;
                            case COMMENT /* 61719 */:
                                if (z) {
                                    stringBuffer.append('>');
                                    z = false;
                                }
                                int intN8 = getIntN(i3);
                                int i11 = i3 + 2;
                                stringBuffer.append("<!--");
                                stringBuffer.append(this.data, i11, intN8);
                                stringBuffer.append("-->");
                                i2 = intN8 + i11;
                                break;
                            case DOCUMENT_URI /* 61720 */:
                                i2 = i3 + 2;
                                break;
                        }
                    }
                }
            } else {
                return;
            }
        }
    }

    @Override // gnu.lists.AbstractSequence
    public boolean hasNext(int ipos) {
        char ch;
        int index = posToDataIndex(ipos);
        return (index == this.data.length || (ch = this.data[index]) == END_ATTRIBUTE || ch == END_ELEMENT_SHORT || ch == END_ELEMENT_LONG || ch == END_DOCUMENT) ? false : true;
    }

    @Override // gnu.lists.AbstractSequence
    public int getNextKind(int ipos) {
        return getNextKindI(posToDataIndex(ipos));
    }

    public int getNextKindI(int index) {
        if (index == this.data.length) {
            return 0;
        }
        char datum = this.data[index];
        if (datum <= 40959) {
            return 29;
        }
        if (datum >= OBJECT_REF_SHORT && datum <= 61439) {
            return 32;
        }
        if (datum >= BEGIN_ELEMENT_SHORT && datum <= 45055) {
            return 33;
        }
        if ((65280 & datum) == BYTE_PREFIX) {
            return 28;
        }
        if (datum >= 45056 && datum <= 57343) {
            return 22;
        }
        switch (datum) {
            case 61696:
            case 61697:
                return 27;
            case INT_FOLLOWS /* 61698 */:
                return 22;
            case LONG_FOLLOWS /* 61699 */:
                return 24;
            case FLOAT_FOLLOWS /* 61700 */:
                return 25;
            case DOUBLE_FOLLOWS /* 61701 */:
                return 26;
            case CHAR_FOLLOWS /* 61702 */:
            case BEGIN_DOCUMENT /* 61712 */:
                return 34;
            case 61703:
            case 61709:
            case 61710:
            case 61711:
            case JOINER /* 61718 */:
            default:
                return 32;
            case BEGIN_ELEMENT_LONG /* 61704 */:
                return 33;
            case BEGIN_ATTRIBUTE_LONG /* 61705 */:
                return 35;
            case END_ATTRIBUTE /* 61706 */:
            case END_ELEMENT_SHORT /* 61707 */:
            case END_ELEMENT_LONG /* 61708 */:
            case END_DOCUMENT /* 61713 */:
            case END_ENTITY /* 61715 */:
                return 0;
            case BEGIN_ENTITY /* 61714 */:
                return getNextKind((index + 5) << 1);
            case PROCESSING_INSTRUCTION /* 61716 */:
                return 37;
            case CDATA_SECTION /* 61717 */:
                return 31;
            case COMMENT /* 61719 */:
                return 36;
        }
    }

    @Override // gnu.lists.AbstractSequence
    public Object getNextTypeObject(int ipos) {
        int index;
        int index2 = posToDataIndex(ipos);
        while (index2 != this.data.length) {
            char datum = this.data[index2];
            if (datum == 61714) {
                index2 += 5;
            } else {
                if (datum >= BEGIN_ELEMENT_SHORT && datum <= 45055) {
                    index = datum - BEGIN_ELEMENT_SHORT;
                } else if (datum == BEGIN_ELEMENT_LONG) {
                    int j = getIntN(index2 + 1);
                    index = getIntN(j + (j < 0 ? this.data.length : index2) + 1);
                } else {
                    if (datum != BEGIN_ATTRIBUTE_LONG && datum != PROCESSING_INSTRUCTION) {
                        return null;
                    }
                    index = getIntN(index2 + 1);
                }
                if (index < 0) {
                    return null;
                }
                return this.objects[index];
            }
        }
        return null;
    }

    @Override // gnu.lists.AbstractSequence
    public String getNextTypeName(int ipos) {
        Object type = getNextTypeObject(ipos);
        if (type == null) {
            return null;
        }
        return type.toString();
    }

    @Override // gnu.lists.AbstractSequence
    public Object getPosPrevious(int ipos) {
        if ((ipos & 1) != 0 && ipos != -1) {
            return getPosNext(ipos - 3);
        }
        return super.getPosPrevious(ipos);
    }

    private Object copyToList(int startPosition, int endPosition) {
        return new TreeList(this, startPosition, endPosition);
    }

    public int getPosNextInt(int ipos) {
        int index = posToDataIndex(ipos);
        if (index < this.data.length) {
            char datum = this.data[index];
            if (datum >= 45056 && datum <= 57343) {
                return datum - INT_SHORT_ZERO;
            }
            if (datum == 61698) {
                return getIntN(index + 1);
            }
        }
        return ((Number) getPosNext(ipos)).intValue();
    }

    @Override // gnu.lists.AbstractSequence
    public Object getPosNext(int i) {
        int iPosToDataIndex = posToDataIndex(i);
        if (iPosToDataIndex == this.data.length) {
            return Sequence.eofValue;
        }
        char c = this.data[iPosToDataIndex];
        if (c <= 40959) {
            return Convert.toObject(c);
        }
        if (c >= OBJECT_REF_SHORT && c <= 61439) {
            return this.objects[c - OBJECT_REF_SHORT];
        }
        if (c >= BEGIN_ELEMENT_SHORT && c <= 45055) {
            return copyToList(iPosToDataIndex, this.data[iPosToDataIndex + 1] + iPosToDataIndex + 2);
        }
        if (c >= 45056 && c <= 57343) {
            return Convert.toObject(c - INT_SHORT_ZERO);
        }
        switch (c) {
            case 61696:
            case 61697:
                return Convert.toObject(c != 61696);
            case INT_FOLLOWS /* 61698 */:
                return Convert.toObject(getIntN(iPosToDataIndex + 1));
            case LONG_FOLLOWS /* 61699 */:
                return Convert.toObject(getLongN(iPosToDataIndex + 1));
            case FLOAT_FOLLOWS /* 61700 */:
                return Convert.toObject(Float.intBitsToFloat(getIntN(iPosToDataIndex + 1)));
            case DOUBLE_FOLLOWS /* 61701 */:
                return Convert.toObject(Double.longBitsToDouble(getLongN(iPosToDataIndex + 1)));
            case CHAR_FOLLOWS /* 61702 */:
                return Convert.toObject(this.data[iPosToDataIndex + 1]);
            case 61703:
            case BEGIN_ENTITY /* 61714 */:
            case END_ENTITY /* 61715 */:
            case PROCESSING_INSTRUCTION /* 61716 */:
            case CDATA_SECTION /* 61717 */:
            default:
                throw unsupported("getPosNext, code=" + Integer.toHexString(c));
            case BEGIN_ELEMENT_LONG /* 61704 */:
                int intN = getIntN(iPosToDataIndex + 1);
                return copyToList(iPosToDataIndex, intN + (intN < 0 ? this.data.length : iPosToDataIndex) + 7);
            case BEGIN_ATTRIBUTE_LONG /* 61705 */:
                int intN2 = getIntN(iPosToDataIndex + 3);
                return copyToList(iPosToDataIndex, intN2 + (intN2 < 0 ? this.data.length : iPosToDataIndex) + 1);
            case END_ATTRIBUTE /* 61706 */:
            case END_ELEMENT_SHORT /* 61707 */:
            case END_ELEMENT_LONG /* 61708 */:
            case END_DOCUMENT /* 61713 */:
                return Sequence.eofValue;
            case 61709:
            case 61710:
                return this.objects[getIntN(iPosToDataIndex + 1)];
            case 61711:
                return ((AbstractSequence) this.objects[getIntN(iPosToDataIndex + 1)]).getIteratorAtPos(getIntN(iPosToDataIndex + 3));
            case BEGIN_DOCUMENT /* 61712 */:
                int intN3 = getIntN(iPosToDataIndex + 1);
                return copyToList(iPosToDataIndex, intN3 + (intN3 < 0 ? this.data.length : iPosToDataIndex) + 1);
            case JOINER /* 61718 */:
                return "";
        }
    }

    public void stringValue(int startIndex, int endIndex, StringBuffer sbuf) {
        int index = startIndex;
        while (index < endIndex && index >= 0) {
            index = stringValue(false, index, sbuf);
        }
    }

    public int stringValue(int index, StringBuffer sbuf) {
        int next = nextNodeIndex(index, Integer.MAX_VALUE);
        if (next > index) {
            stringValue(index, next, sbuf);
            return index;
        }
        return stringValue(false, index, sbuf);
    }

    public int stringValue(boolean z, int i, StringBuffer stringBuffer) {
        Object obj;
        if (i >= this.gapStart) {
            i += this.gapEnd - this.gapStart;
        }
        if (i == this.data.length) {
            return -1;
        }
        char c = this.data[i];
        int length = i + 1;
        if (c <= 40959) {
            stringBuffer.append(c);
            return length;
        }
        if (c >= OBJECT_REF_SHORT && c <= 61439) {
            obj = this.objects[c - OBJECT_REF_SHORT];
        } else if (c >= BEGIN_ELEMENT_SHORT && c <= 45055) {
            iStringValue = length + 2;
            length = this.data[length] + length + 1;
            obj = null;
        } else {
            if ((65280 & c) == BYTE_PREFIX) {
                stringBuffer.append(c & 255);
                return length;
            }
            if (c >= 45056 && c <= 57343) {
                stringBuffer.append(c - INT_SHORT_ZERO);
                return length;
            }
            switch (c) {
                case 61696:
                case 61697:
                    stringBuffer.append(c != 61696);
                    return length;
                case INT_FOLLOWS /* 61698 */:
                    stringBuffer.append(getIntN(length));
                    return length + 2;
                case LONG_FOLLOWS /* 61699 */:
                    stringBuffer.append(getLongN(length));
                    return length + 4;
                case FLOAT_FOLLOWS /* 61700 */:
                    stringBuffer.append(Float.intBitsToFloat(getIntN(length)));
                    return length + 2;
                case DOUBLE_FOLLOWS /* 61701 */:
                    stringBuffer.append(Double.longBitsToDouble(getLongN(length)));
                    return length + 4;
                case CHAR_FOLLOWS /* 61702 */:
                    stringBuffer.append(this.data[length]);
                    return length + 1;
                case 61703:
                case 61709:
                case 61710:
                default:
                    throw new Error("unimplemented: " + Integer.toHexString(c) + " at:" + length);
                case BEGIN_ELEMENT_LONG /* 61704 */:
                    iStringValue = length + 2;
                    int intN = getIntN(length);
                    length = intN + (intN < 0 ? this.data.length : length - 1) + 7;
                    obj = null;
                    break;
                case BEGIN_ATTRIBUTE_LONG /* 61705 */:
                    iStringValue = z ? 0 : length + 4;
                    int intN2 = getIntN(length + 2);
                    if (intN2 < 0) {
                        length = this.data.length + 1;
                    }
                    length += intN2;
                    obj = null;
                    break;
                case END_ATTRIBUTE /* 61706 */:
                case END_ELEMENT_SHORT /* 61707 */:
                case END_ELEMENT_LONG /* 61708 */:
                case END_DOCUMENT /* 61713 */:
                case END_ENTITY /* 61715 */:
                    return -1;
                case 61711:
                    ((TreeList) ((AbstractSequence) this.objects[getIntN(length)])).stringValue(z, getIntN(length + 2) >> 1, stringBuffer);
                    length += 4;
                    obj = null;
                    break;
                case BEGIN_DOCUMENT /* 61712 */:
                case BEGIN_ENTITY /* 61714 */:
                    iStringValue = length + 4;
                    length = nextDataIndex(length - 1);
                    obj = null;
                    break;
                case PROCESSING_INSTRUCTION /* 61716 */:
                    length += 2;
                case CDATA_SECTION /* 61717 */:
                case COMMENT /* 61719 */:
                    int intN3 = getIntN(length);
                    int i2 = length + 2;
                    if (!z || c == CDATA_SECTION) {
                        stringBuffer.append(this.data, i2, intN3);
                    }
                    return i2 + intN3;
                case JOINER /* 61718 */:
                    obj = null;
                    break;
                case DOCUMENT_URI /* 61720 */:
                    return length + 2;
            }
        }
        if (obj != null) {
            stringBuffer.append(obj);
        }
        if (iStringValue > 0) {
            do {
                iStringValue = stringValue(true, iStringValue, stringBuffer);
            } while (iStringValue >= 0);
        }
        return length;
    }

    @Override // gnu.lists.AbstractSequence
    public int createRelativePos(int istart, int offset, boolean isAfter) {
        if (isAfter) {
            if (offset == 0) {
                if ((istart & 1) != 0) {
                    return istart;
                }
                if (istart == 0) {
                    return 1;
                }
            }
            offset--;
        }
        if (offset < 0) {
            throw unsupported("backwards createRelativePos");
        }
        int pos = posToDataIndex(istart);
        do {
            offset--;
            if (offset >= 0) {
                pos = nextDataIndex(pos);
            } else {
                if (pos >= this.gapEnd) {
                    pos -= this.gapEnd - this.gapStart;
                }
                return isAfter ? 1 | ((pos + 1) << 1) : pos << 1;
            }
        } while (pos >= 0);
        throw new IndexOutOfBoundsException();
    }

    public final int nextNodeIndex(int pos, int limit) {
        if ((Integer.MIN_VALUE | limit) == -1) {
            limit = this.data.length;
        }
        while (true) {
            if (pos == this.gapStart) {
                pos = this.gapEnd;
            }
            if (pos >= limit) {
                return pos;
            }
            char datum = this.data[pos];
            if (datum <= 40959 || ((datum >= OBJECT_REF_SHORT && datum <= 61439) || ((datum >= 45056 && datum <= 57343) || (65280 & datum) == BYTE_PREFIX))) {
                pos++;
            } else {
                if (datum >= BEGIN_ELEMENT_SHORT && datum <= 45055) {
                    return pos;
                }
                switch (datum) {
                    case BEGIN_ELEMENT_LONG /* 61704 */:
                    case BEGIN_ATTRIBUTE_LONG /* 61705 */:
                    case BEGIN_DOCUMENT /* 61712 */:
                    case PROCESSING_INSTRUCTION /* 61716 */:
                    case COMMENT /* 61719 */:
                        return pos;
                    case END_ATTRIBUTE /* 61706 */:
                    case END_ELEMENT_SHORT /* 61707 */:
                    case END_ELEMENT_LONG /* 61708 */:
                    case END_DOCUMENT /* 61713 */:
                    case END_ENTITY /* 61715 */:
                        return pos;
                    case 61709:
                    case 61710:
                    case 61711:
                    case CDATA_SECTION /* 61717 */:
                    default:
                        pos = nextDataIndex(pos);
                        break;
                    case BEGIN_ENTITY /* 61714 */:
                        pos += 5;
                        break;
                    case JOINER /* 61718 */:
                        pos++;
                        break;
                    case DOCUMENT_URI /* 61720 */:
                        pos += 3;
                        break;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x0143, code lost:
    
        throw new java.lang.Error("unknown code:" + ((int) r5));
     */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0112  */
    @Override // gnu.lists.AbstractSequence
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int nextMatching(int r8, gnu.lists.ItemPredicate r9, int r10, boolean r11) {
        /*
            Method dump skipped, instruction units count: 406
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.lists.TreeList.nextMatching(int, gnu.lists.ItemPredicate, int, boolean):int");
    }

    @Override // gnu.lists.AbstractSequence
    public int nextPos(int position) {
        int index = posToDataIndex(position);
        if (index == this.data.length) {
            return 0;
        }
        if (index >= this.gapEnd) {
            index -= this.gapEnd - this.gapStart;
        }
        return (index << 1) + 3;
    }

    public final int nextDataIndex(int pos) {
        if (pos == this.gapStart) {
            pos = this.gapEnd;
        }
        if (pos == this.data.length) {
            return -1;
        }
        int pos2 = pos + 1;
        char datum = this.data[pos];
        if (datum <= 40959 || ((datum >= OBJECT_REF_SHORT && datum <= 61439) || (datum >= 45056 && datum <= 57343))) {
            return pos2;
        }
        if (datum >= BEGIN_ELEMENT_SHORT && datum <= 45055) {
            return this.data[pos2] + pos2 + 1;
        }
        switch (datum) {
            case 61696:
            case 61697:
            case JOINER /* 61718 */:
                return pos2;
            case INT_FOLLOWS /* 61698 */:
            case FLOAT_FOLLOWS /* 61700 */:
            case 61709:
            case 61710:
                return pos2 + 2;
            case LONG_FOLLOWS /* 61699 */:
            case DOUBLE_FOLLOWS /* 61701 */:
                return pos2 + 4;
            case CHAR_FOLLOWS /* 61702 */:
                return pos2 + 1;
            case 61703:
            default:
                throw new Error("unknown code:" + Integer.toHexString(datum));
            case BEGIN_ELEMENT_LONG /* 61704 */:
                int j = getIntN(pos2);
                return j + (j < 0 ? this.data.length : pos2 - 1) + 7;
            case BEGIN_ATTRIBUTE_LONG /* 61705 */:
                int j2 = getIntN(pos2 + 2);
                return j2 + (j2 < 0 ? this.data.length : pos2 - 1) + 1;
            case END_ATTRIBUTE /* 61706 */:
            case END_ELEMENT_SHORT /* 61707 */:
            case END_ELEMENT_LONG /* 61708 */:
            case END_DOCUMENT /* 61713 */:
            case END_ENTITY /* 61715 */:
                return -1;
            case 61711:
                return pos2 + 4;
            case BEGIN_DOCUMENT /* 61712 */:
                int j3 = getIntN(pos2);
                return j3 + (j3 < 0 ? this.data.length : pos2 - 1) + 1;
            case BEGIN_ENTITY /* 61714 */:
                int j4 = pos2 + 4;
                while (true) {
                    if (j4 == this.gapStart) {
                        j4 = this.gapEnd;
                    }
                    if (j4 == this.data.length) {
                        return -1;
                    }
                    if (this.data[j4] == END_ENTITY) {
                        return j4 + 1;
                    }
                    j4 = nextDataIndex(j4);
                }
                break;
            case PROCESSING_INSTRUCTION /* 61716 */:
                pos2 += 2;
                break;
            case CDATA_SECTION /* 61717 */:
            case COMMENT /* 61719 */:
                break;
        }
        return pos2 + 2 + getIntN(pos2);
    }

    public Object documentUriOfPos(int pos) {
        int index = posToDataIndex(pos);
        if (index != this.data.length && this.data[index] == BEGIN_DOCUMENT) {
            int next = index + 5;
            if (next == this.gapStart) {
                next = this.gapEnd;
            }
            if (next < this.data.length && this.data[next] == DOCUMENT_URI) {
                return this.objects[getIntN(next + 1)];
            }
        }
        return null;
    }

    @Override // gnu.lists.AbstractSequence
    public int compare(int ipos1, int ipos2) {
        int i1 = posToDataIndex(ipos1);
        int i2 = posToDataIndex(ipos2);
        if (i1 < i2) {
            return -1;
        }
        return i1 > i2 ? 1 : 0;
    }

    @Override // gnu.lists.AbstractSequence
    protected int getIndexDifference(int ipos1, int ipos0) {
        int i0 = posToDataIndex(ipos0);
        int i1 = posToDataIndex(ipos1);
        boolean negate = false;
        if (i0 > i1) {
            negate = true;
            i1 = i0;
            i0 = i1;
        }
        int i = 0;
        while (i0 < i1) {
            i0 = nextDataIndex(i0);
            i++;
        }
        return negate ? -i : i;
    }

    @Override // gnu.lists.AbstractSequence, java.util.List, java.util.Collection
    public int hashCode() {
        return System.identityHashCode(this);
    }

    @Override // gnu.lists.AbstractSequence, gnu.lists.Consumable
    public void consume(Consumer out) {
        consumeIRange(0, this.data.length, out);
    }

    public void statistics() {
        PrintWriter out = new PrintWriter(System.out);
        statistics(out);
        out.flush();
    }

    public void statistics(PrintWriter out) {
        out.print("data array length: ");
        out.println(this.data.length);
        out.print("data array gap: ");
        out.println(this.gapEnd - this.gapStart);
        out.print("object array length: ");
        out.println(this.objects.length);
    }

    public void dump() {
        PrintWriter out = new PrintWriter(System.out);
        dump(out);
        out.flush();
    }

    public void dump(PrintWriter out) {
        out.println(getClass().getName() + " @" + Integer.toHexString(System.identityHashCode(this)) + " gapStart:" + this.gapStart + " gapEnd:" + this.gapEnd + " length:" + this.data.length);
        dump(out, 0, this.data.length);
    }

    public void dump(PrintWriter printWriter, int i, int i2) {
        int i3 = i;
        int i4 = 0;
        while (i3 < i2) {
            if (i3 < this.gapStart || i3 >= this.gapEnd) {
                char c = this.data[i3];
                printWriter.print("" + i3 + ": 0x" + Integer.toHexString(c) + '=' + ((int) ((short) c)));
                i4--;
                if (i4 < 0) {
                    if (c <= 40959) {
                        if (c >= ' ' && c < 127) {
                            printWriter.print("='" + c + "'");
                        } else if (c == '\n') {
                            printWriter.print("='\\n'");
                        } else {
                            printWriter.print("='\\u" + Integer.toHexString(c) + "'");
                        }
                    } else if (c >= OBJECT_REF_SHORT && c <= 61439) {
                        int i5 = c - OBJECT_REF_SHORT;
                        Object obj = this.objects[i5];
                        printWriter.print("=Object#" + i5 + '=' + obj + ':' + obj.getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(obj)));
                    } else if (c >= BEGIN_ELEMENT_SHORT && c <= 45055) {
                        int i6 = c - BEGIN_ELEMENT_SHORT;
                        printWriter.print("=BEGIN_ELEMENT_SHORT end:" + (this.data[i3 + 1] + i3) + " index#" + i6 + "=<" + this.objects[i6] + '>');
                        i4 = 2;
                    } else if (c >= 45056 && c <= 57343) {
                        printWriter.print("= INT_SHORT:" + (c - INT_SHORT_ZERO));
                    } else {
                        switch (c) {
                            case 61696:
                                printWriter.print("= false");
                                break;
                            case 61697:
                                printWriter.print("= true");
                                break;
                            case INT_FOLLOWS /* 61698 */:
                                printWriter.print("=INT_FOLLOWS value:" + getIntN(i3 + 1));
                                i4 = 2;
                                break;
                            case LONG_FOLLOWS /* 61699 */:
                                printWriter.print("=LONG_FOLLOWS value:" + getLongN(i3 + 1));
                                i4 = 4;
                                break;
                            case FLOAT_FOLLOWS /* 61700 */:
                                printWriter.write("=FLOAT_FOLLOWS value:" + Float.intBitsToFloat(getIntN(i3 + 1)));
                                i4 = 2;
                                break;
                            case DOUBLE_FOLLOWS /* 61701 */:
                                printWriter.print("=DOUBLE_FOLLOWS value:" + Double.longBitsToDouble(getLongN(i3 + 1)));
                                i4 = 4;
                                break;
                            case CHAR_FOLLOWS /* 61702 */:
                                printWriter.print("=CHAR_FOLLOWS");
                                i4 = 1;
                                break;
                            case BEGIN_ELEMENT_LONG /* 61704 */:
                                int intN = getIntN(i3 + 1);
                                int length = intN + (intN < 0 ? this.data.length : i3);
                                printWriter.print("=BEGIN_ELEMENT_LONG end:");
                                printWriter.print(length);
                                int intN2 = getIntN(length + 1);
                                printWriter.print(" -> #");
                                printWriter.print(intN2);
                                if (intN2 >= 0 && intN2 + 1 < this.objects.length) {
                                    printWriter.print("=<" + this.objects[intN2] + '>');
                                } else {
                                    printWriter.print("=<out-of-bounds>");
                                }
                                i4 = 2;
                                break;
                            case BEGIN_ATTRIBUTE_LONG /* 61705 */:
                                int intN3 = getIntN(i3 + 1);
                                printWriter.print("=BEGIN_ATTRIBUTE name:" + intN3 + "=" + this.objects[intN3]);
                                int intN4 = getIntN(i3 + 3);
                                printWriter.print(" end:" + (intN4 + (intN4 < 0 ? this.data.length : i3)));
                                i4 = 4;
                                break;
                            case END_ATTRIBUTE /* 61706 */:
                                printWriter.print("=END_ATTRIBUTE");
                                break;
                            case END_ELEMENT_SHORT /* 61707 */:
                                printWriter.print("=END_ELEMENT_SHORT begin:");
                                int i7 = i3 - this.data[i3 + 1];
                                printWriter.print(i7);
                                int i8 = this.data[i7] - BEGIN_ELEMENT_SHORT;
                                printWriter.print(" -> #");
                                printWriter.print(i8);
                                printWriter.print("=<");
                                printWriter.print(this.objects[i8]);
                                printWriter.print('>');
                                i4 = 1;
                                break;
                            case END_ELEMENT_LONG /* 61708 */:
                                int intN5 = getIntN(i3 + 1);
                                printWriter.print("=END_ELEMENT_LONG name:" + intN5 + "=<" + this.objects[intN5] + '>');
                                int intN6 = getIntN(i3 + 3);
                                if (intN6 < 0) {
                                    intN6 += i3;
                                }
                                printWriter.print(" begin:" + intN6);
                                int intN7 = getIntN(i3 + 5);
                                if (intN7 < 0) {
                                    intN7 += i3;
                                }
                                printWriter.print(" parent:" + intN7);
                                i4 = 6;
                                break;
                            case 61709:
                            case 61710:
                                i4 = 2;
                                break;
                            case 61711:
                                printWriter.print("=POSITION_PAIR_FOLLOWS seq:");
                                int intN8 = getIntN(i3 + 1);
                                printWriter.print(intN8);
                                printWriter.print('=');
                                Object obj2 = this.objects[intN8];
                                printWriter.print(obj2 == null ? null : obj2.getClass().getName());
                                printWriter.print('@');
                                if (obj2 == null) {
                                    printWriter.print("null");
                                } else {
                                    printWriter.print(Integer.toHexString(System.identityHashCode(obj2)));
                                }
                                printWriter.print(" ipos:");
                                printWriter.print(getIntN(i3 + 3));
                                i4 = 4;
                                break;
                            case BEGIN_DOCUMENT /* 61712 */:
                                int intN9 = getIntN(i3 + 1);
                                int length2 = intN9 < 0 ? this.data.length : i3;
                                printWriter.print("=BEGIN_DOCUMENT end:");
                                printWriter.print(intN9 + length2);
                                printWriter.print(" parent:");
                                printWriter.print(getIntN(i3 + 3));
                                i4 = 4;
                                break;
                            case END_DOCUMENT /* 61713 */:
                                printWriter.print("=END_DOCUMENT");
                                break;
                            case BEGIN_ENTITY /* 61714 */:
                                int intN10 = getIntN(i3 + 1);
                                printWriter.print("=BEGIN_ENTITY base:");
                                printWriter.print(intN10);
                                printWriter.print(" parent:");
                                printWriter.print(getIntN(i3 + 3));
                                i4 = 4;
                                break;
                            case END_ENTITY /* 61715 */:
                                printWriter.print("=END_ENTITY");
                                break;
                            case PROCESSING_INSTRUCTION /* 61716 */:
                                printWriter.print("=PROCESSING_INSTRUCTION: ");
                                printWriter.print(this.objects[getIntN(i3 + 1)]);
                                printWriter.print(" '");
                                int intN11 = getIntN(i3 + 3);
                                printWriter.write(this.data, i3 + 5, intN11);
                                printWriter.print('\'');
                                i4 = intN11 + 4;
                                break;
                            case CDATA_SECTION /* 61717 */:
                                printWriter.print("=CDATA: '");
                                int intN12 = getIntN(i3 + 1);
                                printWriter.write(this.data, i3 + 3, intN12);
                                printWriter.print('\'');
                                i4 = intN12 + 2;
                                break;
                            case JOINER /* 61718 */:
                                printWriter.print("= joiner");
                                break;
                            case COMMENT /* 61719 */:
                                printWriter.print("=COMMENT: '");
                                int intN13 = getIntN(i3 + 1);
                                printWriter.write(this.data, i3 + 3, intN13);
                                printWriter.print('\'');
                                i4 = intN13 + 2;
                                break;
                            case DOCUMENT_URI /* 61720 */:
                                printWriter.print("=DOCUMENT_URI: ");
                                printWriter.print(this.objects[getIntN(i3 + 1)]);
                                i4 = 2;
                                break;
                        }
                    }
                }
                printWriter.println();
                if (i4 > 0) {
                    i3 += i4;
                    i4 = 0;
                }
            }
            i3++;
        }
    }
}
