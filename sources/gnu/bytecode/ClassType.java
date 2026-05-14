package gnu.bytecode;

import androidx.core.internal.view.SupportMenu;
import com.google.appinventor.components.runtime.util.FullScreenVideoUtil;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.Externalizable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.ObjectStreamException;
import java.io.OutputStream;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Vector;

/* JADX INFO: loaded from: classes.dex */
public class ClassType extends ObjectType implements AttrContainer, Externalizable, Member {
    public static final int JDK_1_1_VERSION = 2949123;
    public static final int JDK_1_2_VERSION = 3014656;
    public static final int JDK_1_3_VERSION = 3080192;
    public static final int JDK_1_4_VERSION = 3145728;
    public static final int JDK_1_5_VERSION = 3211264;
    public static final int JDK_1_6_VERSION = 3276800;
    public static final int JDK_1_7_VERSION = 3342336;
    public static final ClassType[] noClasses = new ClassType[0];
    int Code_name_index;
    int ConstantValue_name_index;
    int LineNumberTable_name_index;
    int LocalVariableTable_name_index;
    int access_flags;
    Attribute attributes;
    ConstantPool constants;
    public Method constructor;
    Member enclosingMember;
    Field fields;
    int fields_count;
    ClassType firstInnerClass;
    int[] interfaceIndexes;
    ClassType[] interfaces;
    Field last_field;
    Method last_method;
    Method methods;
    int methods_count;
    ClassType nextInnerClass;
    SourceDebugExtAttr sourceDbgExt;
    ClassType superClass;
    int thisClassIndex;
    int classfileFormatVersion = JDK_1_1_VERSION;
    int superClassIndex = -1;
    boolean emitDebugInfo = true;

    public short getClassfileMajorVersion() {
        return (short) (this.classfileFormatVersion >> 16);
    }

    public short getClassfileMinorVersion() {
        return (short) (this.classfileFormatVersion & SupportMenu.USER_MASK);
    }

    public void setClassfileVersion(int major, int minor) {
        this.classfileFormatVersion = ((major & SupportMenu.USER_MASK) * 65536) + (SupportMenu.USER_MASK * minor);
    }

    public void setClassfileVersion(int code) {
        this.classfileFormatVersion = code;
    }

    public int getClassfileVersion() {
        return this.classfileFormatVersion;
    }

    public void setClassfileVersionJava5() {
        setClassfileVersion(JDK_1_5_VERSION);
    }

    public static ClassType make(String name) {
        return (ClassType) Type.getType(name);
    }

    public static ClassType make(String name, ClassType superClass) {
        ClassType type = make(name);
        if (type.superClass == null) {
            type.setSuper(superClass);
        }
        return type;
    }

    @Override // gnu.bytecode.AttrContainer
    public final Attribute getAttributes() {
        return this.attributes;
    }

    @Override // gnu.bytecode.AttrContainer
    public final void setAttributes(Attribute attributes) {
        this.attributes = attributes;
    }

    public final ConstantPool getConstants() {
        return this.constants;
    }

    public final CpoolEntry getConstant(int i) {
        if (this.constants == null || this.constants.pool == null || i > this.constants.count) {
            return null;
        }
        return this.constants.pool[i];
    }

    @Override // gnu.bytecode.Member
    public final synchronized int getModifiers() {
        if (this.access_flags == 0 && (this.flags & 16) != 0 && getReflectClass() != null) {
            this.access_flags = this.reflectClass.getModifiers();
        }
        return this.access_flags;
    }

    @Override // gnu.bytecode.Member
    public final boolean getStaticFlag() {
        return (getModifiers() & 8) != 0;
    }

    public final void setModifiers(int flags) {
        this.access_flags = flags;
    }

    public final void addModifiers(int flags) {
        this.access_flags |= flags;
    }

    public synchronized String getSimpleName() {
        if ((this.flags & 16) != 0 && getReflectClass() != null) {
            try {
                return this.reflectClass.getSimpleName();
            } catch (Throwable th) {
            }
        }
        String name = getName();
        int dot = name.lastIndexOf(46);
        if (dot > 0) {
            name = name.substring(dot + 1);
        }
        int dollar = name.lastIndexOf(36);
        if (dollar >= 0) {
            int len = name.length();
            int start = dollar + 1;
            while (start < len) {
                char ch = name.charAt(start);
                if (ch < '0' || ch > '9') {
                    break;
                }
                start++;
            }
            name = name.substring(start);
        }
        return name;
    }

    public void addMemberClass(ClassType member) {
        ClassType prev = null;
        for (ClassType entry = this.firstInnerClass; entry != null; entry = entry.nextInnerClass) {
            if (entry == member) {
                return;
            }
            prev = entry;
        }
        if (prev == null) {
            this.firstInnerClass = member;
        } else {
            prev.nextInnerClass = member;
        }
    }

    public ClassType getDeclaredClass(String simpleName) {
        addMemberClasses();
        for (ClassType member = this.firstInnerClass; member != null; member = member.nextInnerClass) {
            if (simpleName.equals(member.getSimpleName())) {
                return member;
            }
        }
        return null;
    }

    @Override // gnu.bytecode.Member
    public ClassType getDeclaringClass() {
        addEnclosingMember();
        if (this.enclosingMember instanceof ClassType) {
            return (ClassType) this.enclosingMember;
        }
        return null;
    }

    public Member getEnclosingMember() {
        addEnclosingMember();
        return this.enclosingMember;
    }

    public void setEnclosingMember(Member member) {
        this.enclosingMember = member;
    }

    synchronized void addEnclosingMember() {
        if ((this.flags & 24) != 16) {
            return;
        }
        Class clas = getReflectClass();
        this.flags |= 8;
        Class<?> enclosingClass = clas.getEnclosingClass();
        if (enclosingClass == null) {
            return;
        }
        if (!clas.isMemberClass()) {
            java.lang.reflect.Method rmeth = clas.getEnclosingMethod();
            if (rmeth != null) {
                this.enclosingMember = addMethod(rmeth);
                return;
            }
            Constructor<?> enclosingConstructor = clas.getEnclosingConstructor();
            if (enclosingConstructor != null) {
                this.enclosingMember = addMethod(enclosingConstructor);
                return;
            }
        }
        this.enclosingMember = (ClassType) Type.make(enclosingClass);
    }

    public synchronized void addMemberClasses() {
        if ((this.flags & 20) != 16) {
            return;
        }
        Class clas = getReflectClass();
        this.flags |= 4;
        Class<?>[] classes = clas.getClasses();
        int numMembers = classes.length;
        if (numMembers > 0) {
            for (Class<?> cls : classes) {
                ClassType member = (ClassType) Type.make(cls);
                addMemberClass(member);
            }
        }
    }

    public final boolean hasOuterLink() {
        getFields();
        return (this.flags & 32) != 0;
    }

    public ClassType getOuterLinkType() {
        if (hasOuterLink()) {
            return (ClassType) getDeclaredField("this$0").getType();
        }
        return null;
    }

    public final Field setOuterLink(ClassType outer) {
        if ((this.flags & 16) != 0) {
            throw new Error("setOuterLink called for existing class " + getName());
        }
        Field field = getDeclaredField("this$0");
        if (field == null) {
            field = addField("this$0", outer);
            this.flags |= 32;
            for (Method meth = this.methods; meth != null; meth = meth.getNext()) {
                if ("<init>".equals(meth.getName())) {
                    if (meth.code != null) {
                        throw new Error("setOuterLink called when " + meth + " has code");
                    }
                    Type[] arg_types = meth.arg_types;
                    Type[] new_types = new Type[arg_types.length + 1];
                    System.arraycopy(arg_types, 0, new_types, 1, arg_types.length);
                    new_types[0] = outer;
                    meth.arg_types = new_types;
                    meth.signature = null;
                }
            }
        } else if (!outer.equals(field.getType())) {
            throw new Error("inconsistent setOuterLink call for " + getName());
        }
        return field;
    }

    public boolean isAccessible(Member member, ObjectType receiver) {
        if (member.getStaticFlag()) {
            receiver = null;
        }
        return isAccessible(member.getDeclaringClass(), receiver, member.getModifiers());
    }

    public boolean isAccessible(ClassType declaring, ObjectType receiver, int modifiers) {
        int cmods = declaring.getModifiers();
        if ((modifiers & 1) != 0 && (cmods & 1) != 0) {
            return true;
        }
        String callerName = getName();
        String className = declaring.getName();
        if (callerName.equals(className)) {
            return true;
        }
        if ((modifiers & 2) != 0) {
            return false;
        }
        int dot = callerName.lastIndexOf(46);
        String callerPackage = dot >= 0 ? callerName.substring(0, dot) : "";
        int dot2 = className.lastIndexOf(46);
        String classPackage = dot2 >= 0 ? className.substring(0, dot2) : "";
        if (callerPackage.equals(classPackage)) {
            return true;
        }
        return (cmods & 1) != 0 && (modifiers & 4) != 0 && isSubclass(declaring) && (!(receiver instanceof ClassType) || ((ClassType) receiver).isSubclass(this));
    }

    @Override // gnu.bytecode.Type, gnu.bytecode.Member
    public void setName(String name) {
        this.this_name = name;
        setSignature("L" + name.replace('.', '/') + ";");
    }

    public void setStratum(String stratum) {
        if (this.sourceDbgExt == null) {
            this.sourceDbgExt = new SourceDebugExtAttr(this);
        }
        this.sourceDbgExt.addStratum(stratum);
    }

    public void setSourceFile(String name) {
        if (this.sourceDbgExt != null) {
            this.sourceDbgExt.addFile(name);
            if (this.sourceDbgExt.fileCount > 1) {
                return;
            }
        }
        String name2 = SourceFileAttr.fixSourceFile(name);
        int slash = name2.lastIndexOf(47);
        if (slash >= 0) {
            name2 = name2.substring(slash + 1);
        }
        SourceFileAttr.setSourceFile(this, name2);
    }

    public void setSuper(String name) {
        setSuper(name == null ? Type.pointer_type : make(name));
    }

    public void setSuper(ClassType superClass) {
        this.superClass = superClass;
    }

    public synchronized ClassType getSuperclass() {
        if (this.superClass == null && !isInterface() && !"java.lang.Object".equals(getName()) && (this.flags & 16) != 0 && getReflectClass() != null) {
            this.superClass = (ClassType) make(this.reflectClass.getSuperclass());
        }
        return this.superClass;
    }

    public String getPackageName() {
        String name = getName();
        int index = name.lastIndexOf(46);
        return index < 0 ? "" : name.substring(0, index);
    }

    public synchronized ClassType[] getInterfaces() {
        if (this.interfaces == null && (this.flags & 16) != 0 && getReflectClass() != null) {
            Class<?>[] interfaces = this.reflectClass.getInterfaces();
            int numInterfaces = interfaces.length;
            this.interfaces = numInterfaces == 0 ? noClasses : new ClassType[numInterfaces];
            for (int i = 0; i < numInterfaces; i++) {
                this.interfaces[i] = (ClassType) Type.make(interfaces[i]);
            }
        }
        return this.interfaces;
    }

    public void setInterfaces(ClassType[] interfaces) {
        this.interfaces = interfaces;
    }

    public void addInterface(ClassType newInterface) {
        int oldCount;
        if (this.interfaces == null || this.interfaces.length == 0) {
            oldCount = 0;
            this.interfaces = new ClassType[1];
        } else {
            oldCount = this.interfaces.length;
            int i = oldCount;
            do {
                i--;
                if (i < 0) {
                    int i2 = oldCount + 1;
                    ClassType[] newInterfaces = new ClassType[i2];
                    System.arraycopy(this.interfaces, 0, newInterfaces, 0, oldCount);
                    this.interfaces = newInterfaces;
                }
            } while (this.interfaces[i] != newInterface);
            return;
        }
        this.interfaces[oldCount] = newInterface;
    }

    public final boolean isInterface() {
        return (getModifiers() & 512) != 0;
    }

    public final void setInterface(boolean val) {
        if (!val) {
            this.access_flags &= -513;
        } else {
            this.access_flags |= 1536;
        }
    }

    public ClassType() {
    }

    public ClassType(String class_name) {
        setName(class_name);
    }

    public final synchronized Field getFields() {
        if ((this.flags & 17) == 16) {
            addFields();
        }
        return this.fields;
    }

    public final int getFieldCount() {
        return this.fields_count;
    }

    public Field getDeclaredField(String name) {
        for (Field field = getFields(); field != null; field = field.next) {
            if (name.equals(field.name)) {
                return field;
            }
        }
        return null;
    }

    @Override // gnu.bytecode.ObjectType
    public synchronized Field getField(String name, int mask) {
        ClassType cl = this;
        do {
            Field field = cl.getDeclaredField(name);
            if (field != null && (mask == -1 || (field.getModifiers() & mask) != 0)) {
                return field;
            }
            ClassType[] interfaces = cl.getInterfaces();
            if (interfaces != null) {
                for (ClassType classType : interfaces) {
                    Field field2 = classType.getField(name, mask);
                    if (field2 != null) {
                        return field2;
                    }
                }
            }
            cl = cl.getSuperclass();
        } while (cl != null);
        return null;
    }

    public Field getField(String name) {
        return getField(name, 1);
    }

    public Field addField() {
        return new Field(this);
    }

    public Field addField(String name) {
        Field field = new Field(this);
        field.setName(name);
        return field;
    }

    public final Field addField(String name, Type type) {
        Field field = new Field(this);
        field.setName(name);
        field.setType(type);
        return field;
    }

    public final Field addField(String name, Type type, int flags) {
        Field field = addField(name, type);
        field.flags = flags;
        return field;
    }

    public synchronized void addFields() {
        java.lang.reflect.Field[] fields;
        Class clas = getReflectClass();
        try {
            fields = clas.getDeclaredFields();
        } catch (SecurityException e) {
            java.lang.reflect.Field[] fields2 = clas.getFields();
            fields = fields2;
        }
        for (java.lang.reflect.Field field : fields) {
            if ("this$0".equals(field.getName())) {
                this.flags |= 32;
            }
            addField(field.getName(), Type.make(field.getType()), field.getModifiers());
        }
        int i = this.flags;
        this.flags = i | 1;
    }

    public final Method getMethods() {
        return this.methods;
    }

    public final int getMethodCount() {
        return this.methods_count;
    }

    Method addMethod() {
        return new Method(this, 0);
    }

    public Method addMethod(String name) {
        return addMethod(name, 0);
    }

    public Method addMethod(String name, int flags) {
        Method method = new Method(this, flags);
        method.setName(name);
        return method;
    }

    public Method addMethod(String name, Type[] arg_types, Type return_type, int flags) {
        return addMethod(name, flags, arg_types, return_type);
    }

    public synchronized Method addMethod(String name, int flags, Type[] arg_types, Type return_type) {
        Method method = getDeclaredMethod(name, arg_types);
        if (method != null && return_type.equals(method.getReturnType()) && (method.access_flags & flags) == flags) {
            return method;
        }
        Method method2 = addMethod(name, flags);
        method2.arg_types = arg_types;
        method2.return_type = return_type;
        return method2;
    }

    public Method addMethod(java.lang.reflect.Method method) {
        int modifiers = method.getModifiers();
        Class<?>[] parameterTypes = method.getParameterTypes();
        int j = parameterTypes.length;
        Type[] args = new Type[j];
        while (true) {
            j--;
            if (j >= 0) {
                args[j] = Type.make(parameterTypes[j]);
            } else {
                Type rtype = Type.make(method.getReturnType());
                return addMethod(method.getName(), modifiers, args, rtype);
            }
        }
    }

    public Method addMethod(Constructor method) {
        Class<?>[] parameterTypes = method.getParameterTypes();
        int modifiers = method.getModifiers();
        int j = parameterTypes.length;
        Type[] args = new Type[j];
        while (true) {
            j--;
            if (j >= 0) {
                args[j] = Type.make(parameterTypes[j]);
            } else {
                return addMethod("<init>", modifiers, args, Type.voidType);
            }
        }
    }

    public Method addMethod(String name, String signature, int flags) {
        Method meth = addMethod(name, flags);
        meth.setSignature(signature);
        return meth;
    }

    public Method getMethod(java.lang.reflect.Method method) {
        String name = method.getName();
        Class<?>[] parameterTypes = method.getParameterTypes();
        Type[] parameterTypes2 = new Type[parameterTypes.length];
        int i = parameterTypes.length;
        while (true) {
            i--;
            if (i >= 0) {
                parameterTypes2[i] = Type.make(parameterTypes[i]);
            } else {
                int i2 = method.getModifiers();
                return addMethod(name, i2, parameterTypes2, Type.make(method.getReturnType()));
            }
        }
    }

    public final synchronized Method getDeclaredMethods() {
        if ((this.flags & 18) == 16) {
            addMethods(getReflectClass());
        }
        return this.methods;
    }

    public final int countMethods(Filter filter, int searchSupers) {
        Vector vec = new Vector();
        getMethods(filter, searchSupers, vec);
        return vec.size();
    }

    public Method[] getMethods(Filter filter, boolean z) {
        return getMethods(filter, z ? 1 : 0);
    }

    public Method[] getMethods(Filter filter, int searchSupers) {
        Vector<Method> vec = new Vector<>();
        getMethods(filter, searchSupers, vec);
        int count = vec.size();
        Method[] result = new Method[count];
        for (int i = 0; i < count; i++) {
            result[i] = vec.elementAt(i);
        }
        return result;
    }

    public int getMethods(Filter filter, int searchSupers, Method[] result, int offset) {
        Vector<Method> vec = new Vector<>();
        getMethods(filter, searchSupers, vec);
        int count = vec.size();
        for (int i = 0; i < count; i++) {
            result[offset + i] = vec.elementAt(i);
        }
        return count;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0025  */
    @Override // gnu.bytecode.ObjectType
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int getMethods(gnu.bytecode.Filter r8, int r9, java.util.List<gnu.bytecode.Method> r10) {
        /*
            r7 = this;
            r0 = 0
            r1 = 0
            r2 = r7
        L3:
            if (r2 == 0) goto L57
            java.lang.String r3 = r2.getPackageName()
            gnu.bytecode.Method r4 = r2.getDeclaredMethods()
        Ld:
            if (r4 == 0) goto L37
            if (r2 == r7) goto L25
            int r5 = r4.getModifiers()
            r6 = r5 & 2
            if (r6 == 0) goto L1a
            goto L32
        L1a:
            r6 = r5 & 5
            if (r6 != 0) goto L25
            boolean r6 = r3.equals(r1)
            if (r6 != 0) goto L25
            goto L32
        L25:
            boolean r5 = r8.select(r4)
            if (r5 == 0) goto L32
            if (r10 == 0) goto L30
            r10.add(r4)
        L30:
            int r0 = r0 + 1
        L32:
            gnu.bytecode.Method r4 = r4.getNext()
            goto Ld
        L37:
            r1 = r3
            if (r9 != 0) goto L3b
            goto L57
        L3b:
            r4 = 1
            if (r9 <= r4) goto L52
            gnu.bytecode.ClassType[] r4 = r2.getInterfaces()
            if (r4 == 0) goto L52
            r5 = 0
        L45:
            int r6 = r4.length
            if (r5 >= r6) goto L52
            r6 = r4[r5]
            int r6 = r6.getMethods(r8, r9, r10)
            int r0 = r0 + r6
            int r5 = r5 + 1
            goto L45
        L52:
            gnu.bytecode.ClassType r2 = r2.getSuperclass()
            goto L3
        L57:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.bytecode.ClassType.getMethods(gnu.bytecode.Filter, int, java.util.List):int");
    }

    static class AbstractMethodFilter implements Filter {
        public static final AbstractMethodFilter instance = new AbstractMethodFilter();

        AbstractMethodFilter() {
        }

        @Override // gnu.bytecode.Filter
        public boolean select(Object value) {
            Method method = (Method) value;
            return method.isAbstract();
        }
    }

    public Method[] getAbstractMethods() {
        return getMethods(AbstractMethodFilter.instance, 2);
    }

    public Method getDeclaredMethod(String name, Type[] arg_types) {
        int needOuterLinkArg = ("<init>".equals(name) && hasOuterLink()) ? 1 : 0;
        for (Method method = getDeclaredMethods(); method != null; method = method.next) {
            if (name.equals(method.getName())) {
                Type[] method_args = method.getParameterTypes();
                if (arg_types == null || (arg_types == method_args && needOuterLinkArg == 0)) {
                    return method;
                }
                int i = arg_types.length;
                if (i != method_args.length - needOuterLinkArg) {
                    continue;
                } else {
                    while (true) {
                        i--;
                        if (i < 0) {
                            break;
                        }
                        Type meth_type = method_args[i + needOuterLinkArg];
                        Type need_type = arg_types[i];
                        if (meth_type != need_type && need_type != null) {
                            String meth_sig = meth_type.getSignature();
                            String need_sig = need_type.getSignature();
                            if (!meth_sig.equals(need_sig)) {
                                break;
                            }
                        }
                    }
                    if (i < 0) {
                        return method;
                    }
                }
            }
        }
        return null;
    }

    public synchronized Method getDeclaredMethod(String name, int argCount) {
        Method result;
        result = null;
        int needOuterLinkArg = ("<init>".equals(name) && hasOuterLink()) ? 1 : 0;
        for (Method method = getDeclaredMethods(); method != null; method = method.next) {
            if (name.equals(method.getName()) && argCount + needOuterLinkArg == method.getParameterTypes().length) {
                if (result != null) {
                    throw new Error("ambiguous call to getDeclaredMethod(\"" + name + "\", " + argCount + ")\n - " + result + "\n - " + method);
                }
                result = method;
            }
        }
        return result;
    }

    @Override // gnu.bytecode.ObjectType
    public synchronized Method getMethod(String name, Type[] arg_types) {
        ClassType cl = this;
        do {
            Method method = cl.getDeclaredMethod(name, arg_types);
            if (method != null) {
                return method;
            }
            cl = cl.getSuperclass();
        } while (cl != null);
        ClassType cl2 = this;
        do {
            ClassType[] interfaces = cl2.getInterfaces();
            if (interfaces != null) {
                for (ClassType classType : interfaces) {
                    Method method2 = classType.getDeclaredMethod(name, arg_types);
                    if (method2 != null) {
                        return method2;
                    }
                }
            }
            cl2 = cl2.getSuperclass();
        } while (cl2 != null);
        return null;
    }

    public synchronized void addMethods(Class clas) {
        java.lang.reflect.Method[] methods;
        Constructor<?>[] constructors;
        this.flags |= 2;
        try {
            methods = clas.getDeclaredMethods();
        } catch (SecurityException e) {
            java.lang.reflect.Method[] methods2 = clas.getMethods();
            methods = methods2;
        }
        for (java.lang.reflect.Method method : methods) {
            if (method.getDeclaringClass().equals(clas)) {
                addMethod(method);
            }
        }
        try {
            constructors = clas.getDeclaredConstructors();
        } catch (SecurityException e2) {
            constructors = clas.getConstructors();
        }
        for (Constructor<?> constructor : constructors) {
            if (constructor.getDeclaringClass().equals(clas)) {
                addMethod(constructor);
            }
        }
    }

    public Method[] getMatchingMethods(String name, Type[] paramTypes, int flags) {
        int nMatches = 0;
        Vector matches = new Vector(10);
        for (Method method = this.methods; method != null; method = method.getNext()) {
            if (name.equals(method.getName()) && (flags & 8) == (method.access_flags & 8) && (flags & 1) <= (method.access_flags & 1)) {
                Type[] mtypes = method.arg_types;
                if (mtypes.length == paramTypes.length) {
                    nMatches++;
                    matches.addElement(method);
                }
            }
        }
        Method[] result = new Method[nMatches];
        matches.copyInto(result);
        return result;
    }

    public void doFixups() {
        if (this.constants == null) {
            this.constants = new ConstantPool();
        }
        if (this.thisClassIndex == 0) {
            this.thisClassIndex = this.constants.addClass(this).index;
        }
        if (this.superClass == this) {
            setSuper((ClassType) null);
        }
        if (this.superClassIndex < 0) {
            this.superClassIndex = this.superClass == null ? 0 : this.constants.addClass(this.superClass).index;
        }
        if (this.interfaces != null && this.interfaceIndexes == null) {
            int n = this.interfaces.length;
            this.interfaceIndexes = new int[n];
            for (int i = 0; i < n; i++) {
                this.interfaceIndexes[i] = this.constants.addClass(this.interfaces[i]).index;
            }
        }
        for (Field field = this.fields; field != null; field = field.next) {
            field.assign_constants(this);
        }
        for (Method method = this.methods; method != null; method = method.next) {
            method.assignConstants();
        }
        if (this.enclosingMember instanceof Method) {
            EnclosingMethodAttr attr = EnclosingMethodAttr.getFirstEnclosingMethod(getAttributes());
            if (attr == null) {
                attr = new EnclosingMethodAttr(this);
            }
            attr.method = (Method) this.enclosingMember;
        } else if (this.enclosingMember instanceof ClassType) {
            this.constants.addClass((ClassType) this.enclosingMember);
        }
        for (ClassType member = this.firstInnerClass; member != null; member = member.nextInnerClass) {
            this.constants.addClass(member);
        }
        InnerClassesAttr innerAttr = InnerClassesAttr.getFirstInnerClasses(getAttributes());
        if (innerAttr != null) {
            innerAttr.setSkipped(true);
        }
        Attribute.assignConstants(this, this);
        for (int i2 = 1; i2 <= this.constants.count; i2++) {
            CpoolEntry entry = this.constants.pool[i2];
            if (entry instanceof CpoolClass) {
                CpoolClass centry = (CpoolClass) entry;
                if (centry.clas instanceof ClassType) {
                    ClassType ctype = (ClassType) centry.clas;
                    if (ctype.getEnclosingMember() != null) {
                        if (innerAttr == null) {
                            innerAttr = new InnerClassesAttr(this);
                        }
                        innerAttr.addClass(centry, this);
                    }
                }
            }
        }
        if (innerAttr != null) {
            innerAttr.setSkipped(false);
            innerAttr.assignConstants(this);
        }
    }

    public void writeToStream(OutputStream stream) throws IOException {
        DataOutputStream dstr = new DataOutputStream(stream);
        doFixups();
        dstr.writeInt(-889275714);
        dstr.writeShort(getClassfileMinorVersion());
        dstr.writeShort(getClassfileMajorVersion());
        if (this.constants == null) {
            dstr.writeShort(1);
        } else {
            this.constants.write(dstr);
        }
        dstr.writeShort(this.access_flags);
        dstr.writeShort(this.thisClassIndex);
        dstr.writeShort(this.superClassIndex);
        if (this.interfaceIndexes == null) {
            dstr.writeShort(0);
        } else {
            int interfaces_count = this.interfaceIndexes.length;
            dstr.writeShort(interfaces_count);
            for (int i = 0; i < interfaces_count; i++) {
                dstr.writeShort(this.interfaceIndexes[i]);
            }
        }
        dstr.writeShort(this.fields_count);
        for (Field field = this.fields; field != null; field = field.next) {
            field.write(dstr, this);
        }
        dstr.writeShort(this.methods_count);
        for (Method method = this.methods; method != null; method = method.next) {
            method.write(dstr, this);
        }
        Attribute.writeAll(this, dstr);
        this.flags |= 3;
    }

    public void writeToFile(String filename) throws IOException {
        OutputStream stream = new BufferedOutputStream(new FileOutputStream(filename));
        writeToStream(stream);
        stream.close();
    }

    public void writeToFile() throws IOException {
        writeToFile(this.this_name.replace('.', File.separatorChar) + ".class");
    }

    public byte[] writeToArray() {
        ByteArrayOutputStream stream = new ByteArrayOutputStream(500);
        try {
            writeToStream(stream);
            return stream.toByteArray();
        } catch (IOException ex) {
            throw new InternalError(ex.toString());
        }
    }

    public static byte[] to_utf8(String str) {
        if (str == null) {
            return null;
        }
        int str_len = str.length();
        int utf_len = 0;
        for (int i = 0; i < str_len; i++) {
            int c = str.charAt(i);
            if (c > 0 && c <= 127) {
                utf_len++;
            } else if (c <= 2047) {
                utf_len += 2;
            } else {
                utf_len += 3;
            }
        }
        byte[] buffer = new byte[utf_len];
        int j = 0;
        for (int i2 = 0; i2 < str_len; i2++) {
            int c2 = str.charAt(i2);
            if (c2 > 0 && c2 <= 127) {
                buffer[j] = (byte) c2;
                j++;
            } else if (c2 <= 2047) {
                int j2 = j + 1;
                buffer[j] = (byte) (((c2 >> 6) & 31) | FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_PAUSE);
                j = j2 + 1;
                buffer[j2] = (byte) (((c2 >> 0) & 63) | 128);
            } else {
                int j3 = j + 1;
                buffer[j] = (byte) (((c2 >> 12) & 15) | 224);
                int j4 = j3 + 1;
                buffer[j3] = (byte) (((c2 >> 6) & 63) | 128);
                buffer[j4] = (byte) (((c2 >> 0) & 63) | 128);
                j = j4 + 1;
            }
        }
        return buffer;
    }

    public final boolean implementsInterface(ClassType iface) {
        if (this == iface) {
            return true;
        }
        ClassType baseClass = getSuperclass();
        if (baseClass != null && baseClass.implementsInterface(iface)) {
            return true;
        }
        ClassType[] interfaces = getInterfaces();
        if (interfaces != null) {
            int i = interfaces.length;
            do {
                i--;
                if (i < 0) {
                    return false;
                }
            } while (!interfaces[i].implementsInterface(iface));
            return true;
        }
        return false;
    }

    public final boolean isSubclass(String cname) {
        ClassType ctype = this;
        while (!cname.equals(ctype.getName())) {
            ctype = ctype.getSuperclass();
            if (ctype == null) {
                return false;
            }
        }
        return true;
    }

    public final boolean isSubclass(ClassType other) {
        if (other.isInterface()) {
            return implementsInterface(other);
        }
        if ((this == toStringType && other == javalangStringType) || (this == javalangStringType && other == toStringType)) {
            return true;
        }
        for (ClassType baseClass = this; baseClass != null; baseClass = baseClass.getSuperclass()) {
            if (baseClass == other) {
                return true;
            }
        }
        return false;
    }

    @Override // gnu.bytecode.ObjectType, gnu.bytecode.Type
    public int compare(Type other) {
        if (other == nullType) {
            return 1;
        }
        if (!(other instanceof ClassType)) {
            return swappedCompareResult(other.compare(this));
        }
        String name = getName();
        if (name != null && name.equals(other.getName())) {
            return 0;
        }
        ClassType cother = (ClassType) other;
        if (isSubclass(cother)) {
            return -1;
        }
        if (cother.isSubclass(this)) {
            return 1;
        }
        if (this == toStringType) {
            return cother == Type.javalangObjectType ? -1 : 1;
        }
        if (cother == toStringType) {
            return this == Type.javalangObjectType ? 1 : -1;
        }
        if (isInterface()) {
            return cother == Type.javalangObjectType ? -1 : -2;
        }
        if (cother.isInterface()) {
            return this == Type.javalangObjectType ? 1 : -2;
        }
        return -3;
    }

    @Override // gnu.bytecode.Type
    public String toString() {
        return "ClassType " + getName();
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput out) throws IOException {
        out.writeUTF(getName());
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput in) throws IOException, ClassNotFoundException {
        setName(in.readUTF());
        this.flags |= 16;
    }

    public Object readResolve() throws ObjectStreamException {
        String name = getName();
        HashMap<String, Type> map = mapNameToType;
        synchronized (map) {
            Type found = map.get(name);
            if (found != null) {
                return found;
            }
            map.put(name, this);
            return this;
        }
    }

    public void cleanupAfterCompilation() {
        for (Method meth = this.methods; meth != null; meth = meth.getNext()) {
            meth.cleanupAfterCompilation();
        }
        this.constants = null;
        this.attributes = null;
        this.sourceDbgExt = null;
    }

    public Method checkSingleAbstractMethod() {
        Method[] methods = getAbstractMethods();
        Method result = null;
        for (Method meth : methods) {
            String mname = meth.getName();
            Type[] ptypes = meth.getParameterTypes();
            Method mimpl = getMethod(mname, ptypes);
            if (mimpl == null || mimpl.isAbstract()) {
                if (result != null) {
                    return null;
                }
                result = meth;
            }
        }
        return result;
    }
}
