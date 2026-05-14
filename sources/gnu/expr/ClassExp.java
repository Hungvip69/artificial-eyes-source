package gnu.expr;

import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.Field;
import gnu.bytecode.Method;
import gnu.bytecode.Type;
import gnu.mapping.OutPort;
import java.util.Hashtable;
import java.util.Vector;

/* JADX INFO: loaded from: classes.dex */
public class ClassExp extends LambdaExp {
    public static final int CLASS_SPECIFIED = 65536;
    public static final int HAS_SUBCLASS = 131072;
    public static final int INTERFACE_SPECIFIED = 32768;
    public static final int IS_ABSTRACT = 16384;
    public String classNameSpecifier;
    public LambdaExp clinitMethod;
    boolean explicitInit;
    public LambdaExp initMethod;
    ClassType instanceType;
    boolean partsDeclared;
    boolean simple;
    public int superClassIndex = -1;
    public Expression[] supers;

    public boolean isSimple() {
        return this.simple;
    }

    public void setSimple(boolean value) {
        this.simple = value;
    }

    @Override // gnu.expr.LambdaExp
    public final boolean isAbstract() {
        return getFlag(16384);
    }

    public boolean isMakingClassPair() {
        return this.type != this.instanceType;
    }

    @Override // gnu.expr.LambdaExp, gnu.expr.Expression
    public Type getType() {
        return this.simple ? Compilation.typeClass : Compilation.typeClassType;
    }

    @Override // gnu.expr.LambdaExp
    public ClassType getClassType() {
        return this.type;
    }

    public ClassExp() {
    }

    public ClassExp(boolean simple) {
        this.simple = simple;
        ClassType classType = new ClassType();
        this.type = classType;
        this.instanceType = classType;
    }

    @Override // gnu.expr.LambdaExp, gnu.expr.Expression
    protected boolean mustCompile() {
        return true;
    }

    @Override // gnu.expr.LambdaExp, gnu.expr.Expression
    public void compile(Compilation comp, Target target) {
        if (target instanceof IgnoreTarget) {
            return;
        }
        compileMembers(comp);
        compilePushClass(comp, target);
    }

    public void compilePushClass(Compilation compilation, Target target) {
        int i;
        ClassType classTypeMake;
        ClassType classType = this.type;
        CodeAttr code = compilation.getCode();
        compilation.loadClassRef(classType);
        boolean needsClosureEnv = getNeedsClosureEnv();
        if (isSimple() && !needsClosureEnv) {
            return;
        }
        if (isMakingClassPair() || needsClosureEnv) {
            if (classType == this.instanceType) {
                code.emitDup(this.instanceType);
            } else {
                compilation.loadClassRef(this.instanceType);
            }
            ClassType classTypeMake2 = ClassType.make("gnu.expr.PairClassType");
            if (needsClosureEnv) {
                i = 3;
                classTypeMake = classTypeMake2;
            } else {
                i = 2;
                classTypeMake = classTypeMake2;
            }
        } else {
            i = 1;
            classTypeMake = ClassType.make("gnu.bytecode.Type");
        }
        Type[] typeArr = new Type[i];
        if (needsClosureEnv) {
            getOwningLambda().loadHeapFrame(compilation);
            i--;
            typeArr[i] = Type.pointer_type;
        }
        Type typeMake = ClassType.make("java.lang.Class");
        while (true) {
            i--;
            if (i < 0) {
                code.emitInvokeStatic(classTypeMake.addMethod("make", typeArr, classTypeMake, 9));
                target.compileFromStack(compilation, classTypeMake);
                return;
            }
            typeArr[i] = typeMake;
        }
    }

    @Override // gnu.expr.LambdaExp
    protected ClassType getCompiledClassType(Compilation comp) {
        return this.type;
    }

    public void setTypes(Compilation compilation) {
        String name;
        int length;
        String strGenerateClassName;
        int modifiers;
        int i = 0;
        int length2 = this.supers == null ? 0 : this.supers.length;
        ClassType[] classTypeArr = new ClassType[length2];
        ClassType classType = null;
        int i2 = 0;
        for (int i3 = 0; i3 < length2; i3++) {
            Type typeFor = Language.getDefaultLanguage().getTypeFor(this.supers[i3]);
            if (!(typeFor instanceof ClassType)) {
                compilation.setLine(this.supers[i3]);
                compilation.error('e', "invalid super type");
            } else {
                ClassType classType2 = (ClassType) typeFor;
                try {
                    modifiers = classType2.getModifiers();
                } catch (RuntimeException e) {
                    if (compilation != null) {
                        compilation.error('e', "unknown super-type " + classType2.getName());
                    }
                    modifiers = 0;
                }
                if ((modifiers & 512) == 0) {
                    if (i2 < i3) {
                        compilation.error('e', "duplicate superclass for " + this);
                    }
                    this.superClassIndex = i3;
                    classType = classType2;
                } else {
                    classTypeArr[i2] = classType2;
                    i2++;
                }
            }
        }
        if (classType != null && (this.flags & 32768) != 0) {
            compilation.error('e', "cannot be interface since has superclass");
        }
        if (!this.simple && classType == null && (this.flags & 65536) == 0 && (getFlag(131072) || (this.nameDecl != null && this.nameDecl.isPublic()))) {
            PairClassType pairClassType = new PairClassType();
            this.type = pairClassType;
            pairClassType.setInterface(true);
            pairClassType.instanceType = this.instanceType;
            ClassType[] classTypeArr2 = {this.type};
            this.instanceType.setSuper(Type.pointer_type);
            this.instanceType.setInterfaces(classTypeArr2);
        } else if (getFlag(32768)) {
            this.instanceType.setInterface(true);
        }
        ClassType classType3 = this.type;
        if (classType == null) {
            classType = Type.pointer_type;
        }
        classType3.setSuper(classType);
        if (i2 != length2) {
            ClassType[] classTypeArr3 = new ClassType[i2];
            System.arraycopy(classTypeArr, 0, classTypeArr3, 0, i2);
            classTypeArr = classTypeArr3;
        }
        this.type.setInterfaces(classTypeArr);
        if (this.type.getName() == null) {
            if (this.classNameSpecifier != null) {
                name = this.classNameSpecifier;
            } else {
                name = getName();
                if (name != null && (length = name.length()) > 2 && name.charAt(0) == '<') {
                    int i4 = length - 1;
                    if (name.charAt(i4) == '>') {
                        name = name.substring(1, i4);
                    }
                }
            }
            if (name == null) {
                StringBuffer stringBuffer = new StringBuffer(100);
                compilation.getModule().classFor(compilation);
                stringBuffer.append(compilation.mainClass.getName());
                stringBuffer.append('$');
                int length3 = stringBuffer.length();
                while (true) {
                    stringBuffer.append(i);
                    strGenerateClassName = stringBuffer.toString();
                    if (compilation.findNamedClass(strGenerateClassName) == null) {
                        break;
                    }
                    stringBuffer.setLength(length3);
                    i++;
                }
            } else if (!isSimple() || (this instanceof ObjectExp)) {
                strGenerateClassName = compilation.generateClassName(name);
            } else {
                StringBuffer stringBuffer2 = new StringBuffer(100);
                int i5 = 0;
                while (true) {
                    int iIndexOf = name.indexOf(46, i5);
                    if (iIndexOf < 0) {
                        break;
                    }
                    stringBuffer2.append(Compilation.mangleNameIfNeeded(name.substring(i5, iIndexOf)));
                    i5 = iIndexOf + 1;
                    if (i5 < name.length()) {
                        stringBuffer2.append('.');
                    }
                }
                if (i5 == 0) {
                    String name2 = compilation.mainClass != null ? compilation.mainClass.getName() : null;
                    int iLastIndexOf = name2 == null ? -1 : name2.lastIndexOf(46);
                    if (iLastIndexOf > 0) {
                        stringBuffer2.append(name2.substring(0, iLastIndexOf + 1));
                    } else if (compilation.classPrefix != null) {
                        stringBuffer2.append(compilation.classPrefix);
                    }
                } else if (i5 == 1 && i5 < name.length()) {
                    stringBuffer2.setLength(0);
                    stringBuffer2.append(compilation.mainClass.getName());
                    stringBuffer2.append('$');
                }
                if (i5 < name.length()) {
                    stringBuffer2.append(Compilation.mangleNameIfNeeded(name.substring(i5)));
                }
                strGenerateClassName = stringBuffer2.toString();
            }
            this.type.setName(strGenerateClassName);
            compilation.addClass(this.type);
            if (isMakingClassPair()) {
                this.instanceType.setName(this.type.getName() + "$class");
                compilation.addClass(this.instanceType);
            }
        }
    }

    public void declareParts(Compilation comp) {
        if (this.partsDeclared) {
            return;
        }
        this.partsDeclared = true;
        Hashtable<String, Declaration> seenFields = new Hashtable<>();
        for (Declaration decl = firstDecl(); decl != null; decl = decl.nextDecl()) {
            if (decl.getCanRead()) {
                int flags = decl.getAccessFlags((short) 1);
                if (decl.getFlag(2048L)) {
                    flags |= 8;
                }
                if (isMakingClassPair()) {
                    int flags2 = flags | 1024;
                    Type ftype = decl.getType().getImplementationType();
                    this.type.addMethod(slotToMethodName("get", decl.getName()), flags2, Type.typeArray0, ftype);
                    Type[] stypes = {ftype};
                    this.type.addMethod(slotToMethodName("set", decl.getName()), flags2, stypes, Type.voidType);
                } else {
                    String fname = Compilation.mangleNameIfNeeded(decl.getName());
                    decl.field = this.instanceType.addField(fname, decl.getType(), flags);
                    decl.setSimple(false);
                    Declaration old = seenFields.get(fname);
                    if (old != null) {
                        duplicateDeclarationError(old, decl, comp);
                    }
                    seenFields.put(fname, decl);
                }
            }
        }
        for (LambdaExp child = this.firstChild; child != null; child = child.nextSibling) {
            if (child.isAbstract()) {
                setFlag(16384);
            }
            if ("*init*".equals(child.getName())) {
                this.explicitInit = true;
                if (child.isAbstract()) {
                    comp.error('e', "*init* method cannot be abstract", child);
                }
                if (this.type instanceof PairClassType) {
                    comp.error('e', "'*init*' methods only supported for simple classes");
                }
            }
            child.outer = this;
            if ((child != this.initMethod && child != this.clinitMethod && child.nameDecl != null && !child.nameDecl.getFlag(2048L)) || !isMakingClassPair()) {
                child.addMethodFor(this.type, comp, null);
            }
            if (isMakingClassPair()) {
                child.addMethodFor(this.instanceType, comp, this.type);
            }
        }
        if (!this.explicitInit && !this.instanceType.isInterface()) {
            Compilation.getConstructor(this.instanceType, this);
        }
        if (isAbstract()) {
            this.instanceType.setModifiers(this.instanceType.getModifiers() | 1024);
        }
        if (this.nameDecl != null) {
            this.instanceType.setModifiers(this.nameDecl.getAccessFlags((short) 1) | (this.instanceType.getModifiers() & (-2)));
        }
    }

    static void getImplMethods(ClassType interfaceType, String mname, Type[] paramTypes, Vector vec) {
        ClassType implType;
        if (interfaceType instanceof PairClassType) {
            implType = ((PairClassType) interfaceType).instanceType;
        } else {
            if (!interfaceType.isInterface()) {
                return;
            }
            try {
                Class reflectClass = interfaceType.getReflectClass();
                if (reflectClass == null) {
                    return;
                }
                String implTypeName = interfaceType.getName() + "$class";
                ClassLoader loader = reflectClass.getClassLoader();
                implType = (ClassType) Type.make(Class.forName(implTypeName, false, loader));
            } catch (Throwable th) {
                return;
            }
        }
        Type[] itypes = new Type[paramTypes.length + 1];
        itypes[0] = interfaceType;
        System.arraycopy(paramTypes, 0, itypes, 1, paramTypes.length);
        Method implMethod = implType.getDeclaredMethod(mname, itypes);
        if (implMethod != null) {
            int count = vec.size();
            if (count == 0 || !vec.elementAt(count - 1).equals(implMethod)) {
                vec.addElement(implMethod);
                return;
            }
            return;
        }
        ClassType[] superInterfaces = interfaceType.getInterfaces();
        for (ClassType classType : superInterfaces) {
            getImplMethods(classType, mname, paramTypes, vec);
        }
    }

    private static void usedSuperClasses(ClassType clas, Compilation comp) {
        comp.usedClass(clas.getSuperclass());
        ClassType[] interfaces = clas.getInterfaces();
        if (interfaces != null) {
            int i = interfaces.length;
            while (true) {
                i--;
                if (i >= 0) {
                    comp.usedClass(interfaces[i]);
                } else {
                    return;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x0172 A[Catch: all -> 0x037d, TryCatch #0 {all -> 0x037d, blocks: (B:3:0x0008, B:5:0x0017, B:16:0x003a, B:18:0x0041, B:19:0x0047, B:21:0x004b, B:22:0x0059, B:24:0x0064, B:25:0x0069, B:27:0x006f, B:28:0x0072, B:30:0x007d, B:88:0x01d6, B:33:0x008b, B:35:0x00ac, B:38:0x00b9, B:40:0x00d6, B:42:0x00de, B:44:0x00f7, B:45:0x00f9, B:47:0x00fd, B:50:0x0108, B:52:0x0112, B:54:0x0119, B:56:0x0124, B:58:0x0132, B:60:0x013c, B:62:0x014e, B:68:0x016a, B:70:0x0172, B:73:0x017d, B:78:0x0191, B:80:0x0198, B:83:0x01ad, B:87:0x01c3, B:84:0x01b3, B:77:0x018e, B:86:0x01b7, B:37:0x00b4, B:89:0x01e1, B:91:0x01eb, B:93:0x01f3, B:97:0x0204, B:103:0x0217, B:105:0x022d, B:154:0x0366, B:108:0x023b, B:110:0x0242, B:112:0x024b, B:114:0x0254, B:122:0x026f, B:124:0x0275, B:126:0x0279, B:132:0x0286, B:134:0x02af, B:136:0x02c0, B:138:0x02d7, B:140:0x02ea, B:139:0x02dd, B:129:0x0282, B:143:0x02ff, B:145:0x0310, B:149:0x031b, B:150:0x0332, B:152:0x034b, B:153:0x0355, B:155:0x036e, B:100:0x020d, B:94:0x01f9, B:96:0x01fd, B:7:0x001d, B:10:0x0023, B:12:0x0027, B:14:0x0035), top: B:162:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0198 A[Catch: all -> 0x037d, TryCatch #0 {all -> 0x037d, blocks: (B:3:0x0008, B:5:0x0017, B:16:0x003a, B:18:0x0041, B:19:0x0047, B:21:0x004b, B:22:0x0059, B:24:0x0064, B:25:0x0069, B:27:0x006f, B:28:0x0072, B:30:0x007d, B:88:0x01d6, B:33:0x008b, B:35:0x00ac, B:38:0x00b9, B:40:0x00d6, B:42:0x00de, B:44:0x00f7, B:45:0x00f9, B:47:0x00fd, B:50:0x0108, B:52:0x0112, B:54:0x0119, B:56:0x0124, B:58:0x0132, B:60:0x013c, B:62:0x014e, B:68:0x016a, B:70:0x0172, B:73:0x017d, B:78:0x0191, B:80:0x0198, B:83:0x01ad, B:87:0x01c3, B:84:0x01b3, B:77:0x018e, B:86:0x01b7, B:37:0x00b4, B:89:0x01e1, B:91:0x01eb, B:93:0x01f3, B:97:0x0204, B:103:0x0217, B:105:0x022d, B:154:0x0366, B:108:0x023b, B:110:0x0242, B:112:0x024b, B:114:0x0254, B:122:0x026f, B:124:0x0275, B:126:0x0279, B:132:0x0286, B:134:0x02af, B:136:0x02c0, B:138:0x02d7, B:140:0x02ea, B:139:0x02dd, B:129:0x0282, B:143:0x02ff, B:145:0x0310, B:149:0x031b, B:150:0x0332, B:152:0x034b, B:153:0x0355, B:155:0x036e, B:100:0x020d, B:94:0x01f9, B:96:0x01fd, B:7:0x001d, B:10:0x0023, B:12:0x0027, B:14:0x0035), top: B:162:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01ad A[Catch: all -> 0x037d, TryCatch #0 {all -> 0x037d, blocks: (B:3:0x0008, B:5:0x0017, B:16:0x003a, B:18:0x0041, B:19:0x0047, B:21:0x004b, B:22:0x0059, B:24:0x0064, B:25:0x0069, B:27:0x006f, B:28:0x0072, B:30:0x007d, B:88:0x01d6, B:33:0x008b, B:35:0x00ac, B:38:0x00b9, B:40:0x00d6, B:42:0x00de, B:44:0x00f7, B:45:0x00f9, B:47:0x00fd, B:50:0x0108, B:52:0x0112, B:54:0x0119, B:56:0x0124, B:58:0x0132, B:60:0x013c, B:62:0x014e, B:68:0x016a, B:70:0x0172, B:73:0x017d, B:78:0x0191, B:80:0x0198, B:83:0x01ad, B:87:0x01c3, B:84:0x01b3, B:77:0x018e, B:86:0x01b7, B:37:0x00b4, B:89:0x01e1, B:91:0x01eb, B:93:0x01f3, B:97:0x0204, B:103:0x0217, B:105:0x022d, B:154:0x0366, B:108:0x023b, B:110:0x0242, B:112:0x024b, B:114:0x0254, B:122:0x026f, B:124:0x0275, B:126:0x0279, B:132:0x0286, B:134:0x02af, B:136:0x02c0, B:138:0x02d7, B:140:0x02ea, B:139:0x02dd, B:129:0x0282, B:143:0x02ff, B:145:0x0310, B:149:0x031b, B:150:0x0332, B:152:0x034b, B:153:0x0355, B:155:0x036e, B:100:0x020d, B:94:0x01f9, B:96:0x01fd, B:7:0x001d, B:10:0x0023, B:12:0x0027, B:14:0x0035), top: B:162:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01b3 A[Catch: all -> 0x037d, TryCatch #0 {all -> 0x037d, blocks: (B:3:0x0008, B:5:0x0017, B:16:0x003a, B:18:0x0041, B:19:0x0047, B:21:0x004b, B:22:0x0059, B:24:0x0064, B:25:0x0069, B:27:0x006f, B:28:0x0072, B:30:0x007d, B:88:0x01d6, B:33:0x008b, B:35:0x00ac, B:38:0x00b9, B:40:0x00d6, B:42:0x00de, B:44:0x00f7, B:45:0x00f9, B:47:0x00fd, B:50:0x0108, B:52:0x0112, B:54:0x0119, B:56:0x0124, B:58:0x0132, B:60:0x013c, B:62:0x014e, B:68:0x016a, B:70:0x0172, B:73:0x017d, B:78:0x0191, B:80:0x0198, B:83:0x01ad, B:87:0x01c3, B:84:0x01b3, B:77:0x018e, B:86:0x01b7, B:37:0x00b4, B:89:0x01e1, B:91:0x01eb, B:93:0x01f3, B:97:0x0204, B:103:0x0217, B:105:0x022d, B:154:0x0366, B:108:0x023b, B:110:0x0242, B:112:0x024b, B:114:0x0254, B:122:0x026f, B:124:0x0275, B:126:0x0279, B:132:0x0286, B:134:0x02af, B:136:0x02c0, B:138:0x02d7, B:140:0x02ea, B:139:0x02dd, B:129:0x0282, B:143:0x02ff, B:145:0x0310, B:149:0x031b, B:150:0x0332, B:152:0x034b, B:153:0x0355, B:155:0x036e, B:100:0x020d, B:94:0x01f9, B:96:0x01fd, B:7:0x001d, B:10:0x0023, B:12:0x0027, B:14:0x0035), top: B:162:0x0008 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public gnu.bytecode.ClassType compileMembers(gnu.expr.Compilation r29) {
        /*
            Method dump skipped, instruction units count: 901
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.expr.ClassExp.compileMembers(gnu.expr.Compilation):gnu.bytecode.ClassType");
    }

    @Override // gnu.expr.LambdaExp, gnu.expr.ScopeExp, gnu.expr.Expression
    protected <R, D> R visit(ExpVisitor<R, D> visitor, D d) {
        Compilation comp = visitor.getCompilation();
        if (comp == null) {
            return visitor.visitClassExp(this, d);
        }
        ClassType saveClass = comp.curClass;
        try {
            comp.curClass = this.type;
            return visitor.visitClassExp(this, d);
        } finally {
            comp.curClass = saveClass;
        }
    }

    @Override // gnu.expr.LambdaExp, gnu.expr.Expression
    protected <R, D> void visitChildren(ExpVisitor<R, D> visitor, D d) {
        Declaration firstParam;
        LambdaExp save = visitor.currentLambda;
        visitor.currentLambda = this;
        this.supers = visitor.visitExps(this.supers, this.supers.length, d);
        try {
            for (LambdaExp child = this.firstChild; child != null; child = child.nextSibling) {
                if (visitor.exitValue != null) {
                    break;
                }
                if (this.instanceType != null && (firstParam = child.firstDecl()) != null && firstParam.isThisParameter()) {
                    firstParam.setType(this.type);
                }
                visitor.visitLambdaExp(child, d);
            }
        } finally {
            visitor.currentLambda = save;
        }
    }

    static void loadSuperStaticLink(Expression superExp, ClassType superClass, Compilation comp) {
        CodeAttr code = comp.getCode();
        superExp.compile(comp, Target.pushValue(Compilation.typeClassType));
        code.emitInvokeStatic(ClassType.make("gnu.expr.PairClassType").getDeclaredMethod("extractStaticLink", 1));
        code.emitCheckcast(superClass.getOuterLinkType());
    }

    static void invokeDefaultSuperConstructor(ClassType superClass, Compilation comp, LambdaExp lexp) {
        CodeAttr code = comp.getCode();
        Method superConstructor = superClass.getDeclaredMethod("<init>", 0);
        if (superConstructor == null) {
            comp.error('e', "super class does not have a default constructor");
            return;
        }
        code.emitPushThis();
        if (superClass.hasOuterLink() && (lexp instanceof ClassExp)) {
            ClassExp clExp = (ClassExp) lexp;
            Expression superExp = clExp.supers[clExp.superClassIndex];
            loadSuperStaticLink(superExp, superClass, comp);
        }
        code.emitInvokeSpecial(superConstructor);
    }

    @Override // gnu.expr.LambdaExp, gnu.expr.Expression
    public void print(OutPort out) {
        out.startLogicalBlock("(" + getExpClassName() + "/", ")", 2);
        Object name = getSymbol();
        if (name != null) {
            out.print(name);
            out.print('/');
        }
        out.print(this.id);
        out.print("/fl:");
        out.print(Integer.toHexString(this.flags));
        if (this.supers.length > 0) {
            out.writeSpaceFill();
            out.startLogicalBlock("supers:", "", 2);
            for (int i = 0; i < this.supers.length; i++) {
                this.supers[i].print(out);
                out.writeSpaceFill();
            }
            out.endLogicalBlock("");
        }
        out.print('(');
        int i2 = 0;
        if (this.keywords != null) {
            int length = this.keywords.length;
        }
        for (Declaration decl = firstDecl(); decl != null; decl = decl.nextDecl()) {
            if (i2 > 0) {
                out.print(' ');
            }
            decl.printInfo(out);
            i2++;
        }
        out.print(") ");
        for (LambdaExp child = this.firstChild; child != null; child = child.nextSibling) {
            out.writeBreakLinear();
            child.print(out);
        }
        if (this.body != null) {
            out.writeBreakLinear();
            this.body.print(out);
        }
        out.endLogicalBlock(")");
    }

    @Override // gnu.expr.LambdaExp
    public Field compileSetField(Compilation comp) {
        return new ClassInitializer(this, comp).field;
    }

    public static String slotToMethodName(String prefix, String sname) {
        if (!Compilation.isValidJavaName(sname)) {
            sname = Compilation.mangleName(sname, false);
        }
        int slen = sname.length();
        StringBuffer sbuf = new StringBuffer(slen + 3);
        sbuf.append(prefix);
        if (slen > 0) {
            sbuf.append(Character.toTitleCase(sname.charAt(0)));
            sbuf.append(sname.substring(1));
        }
        return sbuf.toString();
    }

    public Declaration addMethod(LambdaExp lexp, Object mname) {
        Declaration mdecl = addDeclaration(mname, Compilation.typeProcedure);
        lexp.outer = this;
        lexp.setClassMethod(true);
        mdecl.noteValue(lexp);
        mdecl.setFlag(1048576L);
        mdecl.setProcedureDecl(true);
        lexp.setSymbol(mname);
        return mdecl;
    }
}
