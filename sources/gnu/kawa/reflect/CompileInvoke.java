package gnu.kawa.reflect;

import gnu.bytecode.ClassType;
import gnu.bytecode.Member;
import gnu.bytecode.ObjectType;
import gnu.bytecode.Type;
import gnu.expr.ClassExp;
import gnu.expr.Expression;
import gnu.expr.InlineCalls;
import gnu.expr.Keyword;
import gnu.expr.PrimProcedure;
import gnu.mapping.MethodProc;

/* JADX INFO: loaded from: classes.dex */
public class CompileInvoke {
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0246, code lost:
    
        if (gnu.kawa.reflect.ClassMethods.selectApplicable(gnu.kawa.reflect.ClassMethods.getMethods(r11, "add", 'V', null, r3.language), 2) > 0) goto L123;
     */
    /* JADX WARN: Removed duplicated region for block: B:187:0x03a5  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x03fd A[LOOP:2: B:199:0x03bf->B:223:0x03fd, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static gnu.expr.Expression validateApplyInvoke(gnu.expr.ApplyExp r30, gnu.expr.InlineCalls r31, gnu.bytecode.Type r32, gnu.mapping.Procedure r33) {
        /*
            Method dump skipped, instruction units count: 1514
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.reflect.CompileInvoke.validateApplyInvoke(gnu.expr.ApplyExp, gnu.expr.InlineCalls, gnu.bytecode.Type, gnu.mapping.Procedure):gnu.expr.Expression");
    }

    static Object[] checkKeywords(ObjectType type, Expression[] args, int start, ClassType caller) {
        int len = args.length;
        int npairs = 0;
        while ((npairs * 2) + start + 1 < len && (args[(npairs * 2) + start].valueIfConstant() instanceof Keyword)) {
            npairs++;
        }
        Object[] fields = new Object[npairs];
        for (int i = 0; i < npairs; i++) {
            Object value = args[(i * 2) + start].valueIfConstant();
            String name = ((Keyword) value).getName();
            Member slot = SlotSet.lookupMember(type, name, caller);
            if (slot == null) {
                slot = type.getMethod(ClassExp.slotToMethodName("add", name), SlotSet.type1Array);
            }
            fields[i] = slot != null ? slot : name;
        }
        return fields;
    }

    private static String getMethodName(Expression[] args, char kind) {
        if (kind == 'N') {
            return "<init>";
        }
        int nameIndex = kind == 'P' ? 2 : 1;
        if (args.length >= nameIndex + 1) {
            return ClassMethods.checkName(args[nameIndex], false);
        }
        return null;
    }

    private static void append(PrimProcedure[] methods, int mcount, StringBuffer sbuf) {
        for (int i = 0; i < mcount; i++) {
            sbuf.append("\n  candidate: ");
            sbuf.append(methods[i]);
        }
    }

    protected static PrimProcedure[] getMethods(ObjectType ctype, String mname, ClassType caller, Invoke iproc) {
        int kind = iproc.kind;
        char c = 'P';
        if (kind != 80) {
            c = (kind == 42 || kind == 86) ? 'V' : (char) 0;
        }
        return ClassMethods.getMethods(ctype, mname, c, caller, iproc.language);
    }

    static int hasKeywordArgument(int argsStartIndex, Expression[] args) {
        for (int i = argsStartIndex; i < args.length; i++) {
            if (args[i].valueIfConstant() instanceof Keyword) {
                return i;
            }
        }
        int i2 = args.length;
        return i2;
    }

    private static long selectApplicable(PrimProcedure[] methods, ObjectType ctype, Expression[] args, int margsLength, int argsStartIndex, int objIndex) {
        Type[] atypes = new Type[margsLength];
        int dst = 0;
        if (objIndex >= 0) {
            int dst2 = 0 + 1;
            atypes[0] = ctype;
            dst = dst2;
        }
        int src = argsStartIndex;
        while (src < args.length && dst < atypes.length) {
            Expression arg = args[src];
            Type atype = null;
            if (InlineCalls.checkIntValue(arg) != null) {
                atype = Type.intType;
            } else if (InlineCalls.checkLongValue(arg) != null) {
                atype = Type.longType;
            } else if (0 == 0) {
                atype = arg.getType();
            }
            atypes[dst] = atype;
            src++;
            dst++;
        }
        return ClassMethods.selectApplicable(methods, atypes);
    }

    public static synchronized PrimProcedure getStaticMethod(ClassType type, String name, Expression[] args) {
        PrimProcedure primProcedure;
        int index;
        primProcedure = null;
        PrimProcedure[] methods = getMethods(type, name, null, Invoke.invokeStatic);
        long num = selectApplicable(methods, type, args, args.length, 0, -1);
        int okCount = (int) (num >> 32);
        int maybeCount = (int) num;
        if (methods == null) {
            index = -1;
        } else if (okCount > 0) {
            index = MethodProc.mostSpecific(methods, okCount);
        } else if (maybeCount == 1) {
            index = 0;
        } else {
            index = -1;
        }
        if (index >= 0) {
            primProcedure = methods[index];
        }
        return primProcedure;
    }
}
