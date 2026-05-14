package gnu.expr;

import gnu.bytecode.ArrayType;
import gnu.bytecode.Type;
import gnu.lists.LList;
import gnu.mapping.CallContext;
import gnu.mapping.Location;
import gnu.mapping.MethodProc;
import java.lang.reflect.Array;

/* JADX INFO: compiled from: LambdaExp.java */
/* JADX INFO: loaded from: classes.dex */
class Closure extends MethodProc {
    Object[][] evalFrames;
    LambdaExp lambda;

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        return this.lambda.min_args | (this.lambda.max_args << 12);
    }

    public Closure(LambdaExp lexp, CallContext ctx) {
        this.lambda = lexp;
        Object[][] oldFrames = ctx.evalFrames;
        if (oldFrames != null) {
            int n = oldFrames.length;
            while (n > 0 && oldFrames[n - 1] == null) {
                n--;
            }
            this.evalFrames = new Object[n][];
            System.arraycopy(oldFrames, 0, this.evalFrames, 0, n);
        }
        setSymbol(this.lambda.getSymbol());
    }

    @Override // gnu.mapping.Procedure
    public int match0(CallContext ctx) {
        return matchN(new Object[0], ctx);
    }

    @Override // gnu.mapping.Procedure
    public int match1(Object arg1, CallContext ctx) {
        return matchN(new Object[]{arg1}, ctx);
    }

    @Override // gnu.mapping.Procedure
    public int match2(Object arg1, Object arg2, CallContext ctx) {
        return matchN(new Object[]{arg1, arg2}, ctx);
    }

    @Override // gnu.mapping.Procedure
    public int match3(Object arg1, Object arg2, Object arg3, CallContext ctx) {
        return matchN(new Object[]{arg1, arg2, arg3}, ctx);
    }

    @Override // gnu.mapping.Procedure
    public int match4(Object arg1, Object arg2, Object arg3, Object arg4, CallContext ctx) {
        return matchN(new Object[]{arg1, arg2, arg3, arg4}, ctx);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // gnu.mapping.Procedure
    public int matchN(Object[] objArr, CallContext callContext) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        Object objMakeList;
        Object obj;
        Object objEvalDefaultArg;
        int iNumArgs = numArgs();
        int length = objArr.length;
        int i6 = iNumArgs & 4095;
        if (length < i6) {
            return (-983040) | i6;
        }
        int i7 = iNumArgs >> 12;
        if (length > i7 && i7 >= 0) {
            return (-917504) | i7;
        }
        Object[] objArr2 = new Object[this.lambda.frameSize];
        int length2 = this.lambda.defaultArgs == null ? 0 : this.lambda.defaultArgs.length - (this.lambda.keywords == null ? 0 : this.lambda.keywords.length);
        int i8 = this.lambda.min_args;
        Declaration declarationFirstDecl = this.lambda.firstDecl();
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        while (declarationFirstDecl != null) {
            if (i11 < i8) {
                i = iNumArgs;
                i2 = length;
                i3 = i6;
                i5 = i11 + 1;
                i4 = i7;
                objMakeList = objArr[i11];
            } else if (i11 < i8 + length2) {
                if (i11 < length) {
                    int i12 = i11 + 1;
                    Object obj2 = objArr[i11];
                    i11 = i12;
                    objEvalDefaultArg = obj2;
                } else {
                    objEvalDefaultArg = this.lambda.evalDefaultArg(i10, callContext);
                }
                i10++;
                i = iNumArgs;
                i2 = length;
                i3 = i6;
                i4 = i7;
                i5 = i11;
                objMakeList = objEvalDefaultArg;
            } else if (this.lambda.max_args >= 0 || i11 != i8 + length2) {
                i = iNumArgs;
                i2 = length;
                i3 = i6;
                i4 = i7;
                int i13 = i9 + 1;
                Object objSearchForKeyword = Keyword.searchForKeyword(objArr, i8 + length2, this.lambda.keywords[i9]);
                if (objSearchForKeyword == Special.dfault) {
                    objSearchForKeyword = this.lambda.evalDefaultArg(i10, callContext);
                }
                i10++;
                i9 = i13;
                i5 = i11;
                objMakeList = objSearchForKeyword;
            } else if (declarationFirstDecl.type instanceof ArrayType) {
                i = iNumArgs;
                int i14 = length - i11;
                i2 = length;
                Type componentType = ((ArrayType) declarationFirstDecl.type).getComponentType();
                if (componentType == Type.objectType) {
                    Object obj3 = new Object[i14];
                    i3 = i6;
                    System.arraycopy(objArr, i11, obj3, 0, i14);
                    obj = obj3;
                    i4 = i7;
                } else {
                    i3 = i6;
                    i4 = i7;
                    Object objNewInstance = Array.newInstance((Class<?>) componentType.getReflectClass(), i14);
                    for (int i15 = 0; i15 < i14; i15++) {
                        try {
                            Array.set(objNewInstance, i15, componentType.coerceFromObject(objArr[i11 + i15]));
                        } catch (ClassCastException e) {
                            return (i11 + i15) | MethodProc.NO_MATCH_BAD_TYPE;
                        }
                    }
                    obj = objNewInstance;
                }
                i5 = i11;
                objMakeList = obj;
            } else {
                i = iNumArgs;
                i2 = length;
                i3 = i6;
                i4 = i7;
                i5 = i11;
                objMakeList = LList.makeList(objArr, i11);
            }
            Object objCoerceFromObject = objMakeList;
            if (declarationFirstDecl.type != null) {
                try {
                    objCoerceFromObject = declarationFirstDecl.type.coerceFromObject(objMakeList);
                } catch (ClassCastException e2) {
                    return i5 | MethodProc.NO_MATCH_BAD_TYPE;
                }
            }
            if (declarationFirstDecl.isIndirectBinding()) {
                Location locationMakeIndirectLocationFor = declarationFirstDecl.makeIndirectLocationFor();
                locationMakeIndirectLocationFor.set(objCoerceFromObject);
                objCoerceFromObject = locationMakeIndirectLocationFor;
            }
            objArr2[declarationFirstDecl.evalIndex] = objCoerceFromObject;
            declarationFirstDecl = declarationFirstDecl.nextDecl();
            i11 = i5;
            i7 = i4;
            iNumArgs = i;
            length = i2;
            i6 = i3;
        }
        callContext.values = objArr2;
        callContext.where = 0;
        callContext.next = 0;
        callContext.proc = this;
        return 0;
    }

    @Override // gnu.mapping.Procedure
    public void apply(CallContext ctx) throws Throwable {
        int level = ScopeExp.nesting(this.lambda);
        Object[] evalFrame = ctx.values;
        Object[][] saveFrames = ctx.evalFrames;
        int numFrames = this.evalFrames == null ? 0 : this.evalFrames.length;
        if (level >= numFrames) {
            numFrames = level;
        }
        Object[][] newFrames = new Object[numFrames + 10][];
        if (this.evalFrames != null) {
            System.arraycopy(this.evalFrames, 0, newFrames, 0, this.evalFrames.length);
        }
        newFrames[level] = evalFrame;
        ctx.evalFrames = newFrames;
        try {
            if (this.lambda.body == null) {
                StringBuffer sbuf = new StringBuffer("procedure ");
                String name = this.lambda.getName();
                if (name == null) {
                    name = "<anonymous>";
                }
                sbuf.append(name);
                int line = this.lambda.getLineNumber();
                if (line > 0) {
                    sbuf.append(" at line ");
                    sbuf.append(line);
                }
                sbuf.append(" was called before it was expanded");
                throw new RuntimeException(sbuf.toString());
            }
            this.lambda.body.apply(ctx);
        } finally {
            ctx.evalFrames = saveFrames;
        }
    }

    @Override // gnu.mapping.PropertySet
    public Object getProperty(Object key, Object defaultValue) {
        Object value = super.getProperty(key, defaultValue);
        if (value == null) {
            return this.lambda.getProperty(key, defaultValue);
        }
        return value;
    }
}
