package gnu.bytecode;

import com.google.appinventor.components.common.PropertyTypeConstants;
import java.io.DataOutputStream;
import java.io.IOException;
import kawa.Telnet;

/* JADX INFO: loaded from: classes.dex */
public class StackMapTableAttr extends MiscAttr {
    public static boolean compressStackMapTable = true;
    int countLocals;
    int countStack;
    int[] encodedLocals;
    int[] encodedStack;
    int numEntries;
    int prevPosition;

    public StackMapTableAttr() {
        super("StackMapTable", null, 0, 0);
        this.prevPosition = -1;
        put2(0);
    }

    public StackMapTableAttr(byte[] data, CodeAttr code) {
        super("StackMapTable", data, 0, data.length);
        this.prevPosition = -1;
        addToFrontOf(code);
        this.numEntries = u2(0);
    }

    public Method getMethod() {
        return ((CodeAttr) this.container).getMethod();
    }

    @Override // gnu.bytecode.MiscAttr, gnu.bytecode.Attribute
    public void write(DataOutputStream dstr) throws IOException {
        put2(0, this.numEntries);
        super.write(dstr);
    }

    void emitVerificationType(int encoding) {
        int tag = encoding & 255;
        put1(tag);
        if (tag >= 7) {
            put2(encoding >> 8);
        }
    }

    int encodeVerificationType(Type type, CodeAttr code) {
        if (type == null) {
            return 0;
        }
        if (type instanceof UninitializedType) {
            UninitializedType utype = (UninitializedType) type;
            Label label = utype.label;
            if (label == null) {
                return 6;
            }
            return (label.position << 8) | 8;
        }
        Type type2 = type.getImplementationType();
        if (type2 instanceof PrimType) {
            switch (type2.signature.charAt(0)) {
                case 'B':
                case 'C':
                case 'I':
                case 'S':
                case 'Z':
                    return 1;
                case 'D':
                    return 3;
                case 'F':
                    return 2;
                case 'J':
                    return 4;
                default:
                    return 0;
            }
        }
        if (type2 == Type.nullType) {
            return 5;
        }
        return (code.getConstants().addClass((ObjectType) type2).index << 8) | 7;
    }

    public void emitStackMapEntry(Label label, CodeAttr code) {
        int offset_delta = (label.position - this.prevPosition) - 1;
        int rawLocalsCount = label.localTypes.length;
        if (rawLocalsCount > this.encodedLocals.length) {
            int[] tmp = new int[this.encodedLocals.length + rawLocalsCount];
            System.arraycopy(this.encodedLocals, 0, tmp, 0, this.countLocals);
            this.encodedLocals = tmp;
        }
        int rawStackCount = label.stackTypes.length;
        if (rawStackCount > this.encodedStack.length) {
            int[] tmp2 = new int[this.encodedStack.length + rawStackCount];
            System.arraycopy(this.encodedStack, 0, tmp2, 0, this.countStack);
            this.encodedStack = tmp2;
        }
        int unchangedLocals = 0;
        int curLocalsCount = 0;
        int i = 0;
        while (i < rawLocalsCount) {
            int prevType = this.encodedLocals[curLocalsCount];
            int nextType = encodeVerificationType(label.localTypes[i], code);
            if (prevType == nextType && unchangedLocals == curLocalsCount) {
                unchangedLocals = curLocalsCount + 1;
            }
            int curLocalsCount2 = curLocalsCount + 1;
            this.encodedLocals[curLocalsCount] = nextType;
            if (nextType == 3 || nextType == 4) {
                i++;
            }
            i++;
            curLocalsCount = curLocalsCount2;
        }
        while (curLocalsCount > 0 && this.encodedLocals[curLocalsCount - 1] == 0) {
            curLocalsCount--;
        }
        int curStackCount = 0;
        int i2 = 0;
        while (i2 < rawStackCount) {
            int i3 = this.encodedStack[curStackCount];
            Type t = label.stackTypes[i2];
            if (t == Type.voidType) {
                i2++;
                t = label.stackTypes[i2];
            }
            this.encodedStack[curStackCount] = encodeVerificationType(t, code);
            i2++;
            curStackCount++;
        }
        int localsDelta = curLocalsCount - this.countLocals;
        if (compressStackMapTable && localsDelta == 0 && curLocalsCount == unchangedLocals && curStackCount <= 1) {
            if (curStackCount == 0) {
                if (offset_delta > 63) {
                    put1(Telnet.WILL);
                    put2(offset_delta);
                } else {
                    put1(offset_delta);
                }
            } else {
                if (offset_delta <= 63) {
                    put1(offset_delta + 64);
                } else {
                    put1(247);
                    put2(offset_delta);
                }
                emitVerificationType(this.encodedStack[0]);
            }
        } else if (compressStackMapTable && curStackCount == 0 && curLocalsCount < this.countLocals && unchangedLocals == curLocalsCount && localsDelta >= -3) {
            put1(localsDelta + Telnet.WILL);
            put2(offset_delta);
        } else if (!compressStackMapTable || curStackCount != 0 || this.countLocals != unchangedLocals || localsDelta > 3) {
            put1(255);
            put2(offset_delta);
            put2(curLocalsCount);
            for (int i4 = 0; i4 < curLocalsCount; i4++) {
                emitVerificationType(this.encodedLocals[i4]);
            }
            put2(curStackCount);
            for (int i5 = 0; i5 < curStackCount; i5++) {
                emitVerificationType(this.encodedStack[i5]);
            }
        } else {
            put1(localsDelta + Telnet.WILL);
            put2(offset_delta);
            for (int i6 = 0; i6 < localsDelta; i6++) {
                emitVerificationType(this.encodedLocals[unchangedLocals + i6]);
            }
        }
        this.countLocals = curLocalsCount;
        this.countStack = curStackCount;
        this.prevPosition = label.position;
        this.numEntries++;
    }

    void printVerificationType(int encoding, ClassTypeWriter dst) {
        int tag = encoding & 255;
        switch (tag) {
            case 0:
                dst.print("top/unavailable");
                break;
            case 1:
                dst.print(PropertyTypeConstants.PROPERTY_TYPE_INTEGER);
                break;
            case 2:
                dst.print(PropertyTypeConstants.PROPERTY_TYPE_FLOAT);
                break;
            case 3:
                dst.print("double");
                break;
            case 4:
                dst.print("long");
                break;
            case 5:
                dst.print("null");
                break;
            case 6:
                dst.print("uninitialized this");
                break;
            case 7:
                int index = encoding >> 8;
                dst.printOptionalIndex(index);
                dst.printConstantTersely(index, 7);
                break;
            case 8:
                dst.print("uninitialized object created at ");
                dst.print(encoding >> 8);
                break;
            default:
                dst.print("<bad verification type tag " + tag + '>');
                break;
        }
    }

    int extractVerificationType(int startOffset, int tag) {
        if (tag == 7 || tag == 8) {
            int value = u2(startOffset + 1);
            return tag | (value << 8);
        }
        return tag;
    }

    static int[] reallocBuffer(int[] buffer, int needed) {
        if (buffer == null) {
            return new int[needed + 10];
        }
        if (needed > buffer.length) {
            int[] tmp = new int[needed + 10];
            System.arraycopy(buffer, 0, tmp, 0, buffer.length);
            return tmp;
        }
        return buffer;
    }

    int extractVerificationTypes(int startOffset, int count, int startIndex, int[] buffer) {
        int tag;
        int offset = startOffset;
        while (true) {
            count--;
            if (count >= 0) {
                if (offset >= this.dataLength) {
                    tag = -1;
                } else {
                    int tag2 = this.data[offset];
                    int encoding = extractVerificationType(offset, tag2);
                    offset += (tag2 == 7 || tag2 == 8) ? 3 : 1;
                    tag = encoding;
                }
                int encoding2 = startIndex + 1;
                buffer[startIndex] = tag;
                startIndex = encoding2;
            } else {
                return offset;
            }
        }
    }

    void printVerificationTypes(int[] encodings, int startIndex, int count, ClassTypeWriter dst) {
        int regno = 0;
        for (int i = 0; i < startIndex + count; i++) {
            int encoding = encodings[i];
            int tag = encoding & 255;
            if (i >= startIndex) {
                dst.print("  ");
                if (regno < 100) {
                    if (regno < 10) {
                        dst.print(' ');
                    }
                    dst.print(' ');
                }
                dst.print(regno);
                dst.print(": ");
                printVerificationType(encoding, dst);
                dst.println();
            }
            regno++;
            if (tag == 3 || tag == 4) {
                regno++;
            }
        }
    }

    @Override // gnu.bytecode.MiscAttr, gnu.bytecode.Attribute
    public void print(ClassTypeWriter classTypeWriter) {
        classTypeWriter.print("Attribute \"");
        classTypeWriter.print(getName());
        classTypeWriter.print("\", length:");
        classTypeWriter.print(getLength());
        classTypeWriter.print(", number of entries: ");
        classTypeWriter.println(this.numEntries);
        int i = 2;
        int iU2 = -1;
        Method method = getMethod();
        int[] iArrReallocBuffer = null;
        int length = (!method.getStaticFlag() ? 1 : 0) + method.arg_types.length;
        int i2 = 0;
        while (i2 < this.numEntries && i < this.dataLength) {
            int iExtractVerificationTypes = i + 1;
            int iU1 = u1(i);
            int i3 = iU2 + 1;
            if (iU1 > 127) {
                if (iExtractVerificationTypes + 1 < this.dataLength) {
                    iU2 = i3 + u2(iExtractVerificationTypes);
                    iExtractVerificationTypes += 2;
                } else {
                    return;
                }
            } else {
                iU2 = i3 + (iU1 & 63);
            }
            classTypeWriter.print("  offset: ");
            classTypeWriter.print(iU2);
            if (iU1 > 63) {
                if (iU1 <= 127 || iU1 == 247) {
                    classTypeWriter.println(iU1 <= 127 ? " - same_locals_1_stack_item_frame" : " - same_locals_1_stack_item_frame_extended");
                    iArrReallocBuffer = reallocBuffer(iArrReallocBuffer, 1);
                    iExtractVerificationTypes = extractVerificationTypes(iExtractVerificationTypes, 1, 0, iArrReallocBuffer);
                    printVerificationTypes(iArrReallocBuffer, 0, 1, classTypeWriter);
                } else {
                    if (iU1 <= 246) {
                        classTypeWriter.print(" - tag reserved for future use - ");
                        classTypeWriter.println(iU1);
                        return;
                    }
                    if (iU1 <= 250) {
                        int i4 = 251 - iU1;
                        classTypeWriter.print(" - chop_frame - undefine ");
                        classTypeWriter.print(i4);
                        classTypeWriter.println(" locals");
                        length -= i4;
                    } else if (iU1 == 251) {
                        classTypeWriter.println(" - same_frame_extended");
                    } else if (iU1 > 254) {
                        if (iExtractVerificationTypes + 1 < this.dataLength) {
                            int iU22 = u2(iExtractVerificationTypes);
                            classTypeWriter.print(" - full_frame.  Locals count: ");
                            classTypeWriter.println(iU22);
                            int[] iArrReallocBuffer2 = reallocBuffer(iArrReallocBuffer, iU22);
                            int iExtractVerificationTypes2 = extractVerificationTypes(iExtractVerificationTypes + 2, iU22, 0, iArrReallocBuffer2);
                            printVerificationTypes(iArrReallocBuffer2, 0, iU22, classTypeWriter);
                            length = iU22;
                            if (iExtractVerificationTypes2 + 1 < this.dataLength) {
                                int iU23 = u2(iExtractVerificationTypes2);
                                int i5 = iExtractVerificationTypes2 + 2;
                                classTypeWriter.print("    (end of locals)");
                                int length2 = Integer.toString(iU2).length();
                                while (true) {
                                    length2--;
                                    if (length2 < 0) {
                                        break;
                                    } else {
                                        classTypeWriter.print(' ');
                                    }
                                }
                                classTypeWriter.print("       Stack count: ");
                                classTypeWriter.println(iU23);
                                iArrReallocBuffer = reallocBuffer(iArrReallocBuffer2, iU23);
                                int iExtractVerificationTypes3 = extractVerificationTypes(i5, iU23, 0, iArrReallocBuffer);
                                printVerificationTypes(iArrReallocBuffer, 0, iU23, classTypeWriter);
                                iExtractVerificationTypes = iExtractVerificationTypes3;
                            } else {
                                return;
                            }
                        } else {
                            return;
                        }
                    } else {
                        int i6 = iU1 - 251;
                        classTypeWriter.print(" - append_frame - define ");
                        classTypeWriter.print(i6);
                        classTypeWriter.println(" more locals");
                        iArrReallocBuffer = reallocBuffer(iArrReallocBuffer, length + i6);
                        iExtractVerificationTypes = extractVerificationTypes(iExtractVerificationTypes, i6, length, iArrReallocBuffer);
                        printVerificationTypes(iArrReallocBuffer, length, i6, classTypeWriter);
                        length += i6;
                    }
                }
            } else {
                classTypeWriter.println(" - same_frame");
            }
            if (iExtractVerificationTypes >= 0) {
                i2++;
                i = iExtractVerificationTypes;
            } else {
                classTypeWriter.println("<ERROR - missing data>");
                return;
            }
        }
    }
}
