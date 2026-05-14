package gnu.xquery.util;

import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.Method;
import gnu.bytecode.Scope;
import gnu.bytecode.Type;
import gnu.bytecode.Variable;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.ConsumerTarget;
import gnu.expr.Declaration;
import gnu.expr.ErrorExp;
import gnu.expr.Expression;
import gnu.expr.IfExp;
import gnu.expr.InlineCalls;
import gnu.expr.LambdaExp;
import gnu.expr.LetExp;
import gnu.expr.PrimProcedure;
import gnu.expr.QuoteExp;
import gnu.expr.ReferenceExp;
import gnu.expr.Target;
import gnu.kawa.functions.AddOp;
import gnu.kawa.functions.ValuesMap;
import gnu.kawa.reflect.CompileReflect;
import gnu.kawa.xml.CoerceNodes;
import gnu.kawa.xml.SortNodes;
import gnu.kawa.xml.XDataType;
import gnu.mapping.Procedure;
import gnu.math.IntNum;
import gnu.xquery.lang.XQuery;

/* JADX INFO: loaded from: classes2.dex */
public class CompileMisc {
    static final ClassType typeTuples = ClassType.make("gnu.xquery.util.OrderedTuples");
    static final ClassType typeXDataType = ClassType.make("gnu.kawa.xml.XDataType");
    static final Method castMethod = typeXDataType.getDeclaredMethod("cast", 1);
    static final Method castableMethod = typeXDataType.getDeclaredMethod("castable", 1);

    public static Expression validateCompare(ApplyExp exp, InlineCalls visitor, Type required, Procedure proc) {
        exp.visitArgs(visitor);
        Expression folded = exp.inlineIfConstant(proc, visitor);
        if (folded != exp) {
            return folded;
        }
        Compare cproc = (Compare) proc;
        if ((cproc.flags & 32) == 0) {
            exp = new ApplyExp(ClassType.make("gnu.xquery.util.Compare").getDeclaredMethod("apply", 4), new QuoteExp(IntNum.make(cproc.flags)), exp.getArg(0), exp.getArg(1), QuoteExp.nullExp);
        }
        if (exp.getTypeRaw() == null) {
            exp.setType(XDataType.booleanType);
        }
        return exp;
    }

    public static Expression validateBooleanValue(ApplyExp exp, InlineCalls visitor, Type required, Procedure proc) {
        exp.visitArgs(visitor);
        Expression[] args = exp.getArgs();
        if (args.length == 1) {
            Expression arg = args[0];
            Type type = arg.getType();
            if (type == XDataType.booleanType) {
                return arg;
            }
            if (type == null) {
                exp.setType(XDataType.booleanType);
            }
            if (arg instanceof QuoteExp) {
                Object value = ((QuoteExp) arg).getValue();
                try {
                    return BooleanValue.booleanValue(value) ? XQuery.trueExp : XQuery.falseExp;
                } catch (Throwable th) {
                    visitor.getMessages().error('e', "cannot convert to a boolean");
                    return new ErrorExp("cannot convert to a boolean");
                }
            }
        }
        return exp;
    }

    public static Expression validateArithOp(ApplyExp exp, InlineCalls visitor, Type required, Procedure proc) {
        exp.visitArgs(visitor);
        return exp;
    }

    public static Expression validateApplyValuesFilter(ApplyExp exp, InlineCalls visitor, Type required, Procedure proc) {
        Type seqType;
        Method sizeMethod;
        ValuesFilter vproc = (ValuesFilter) proc;
        exp.visitArgs(visitor);
        Expression[] args = exp.getArgs();
        Expression exp2 = args[1];
        if (exp2 instanceof LambdaExp) {
            LambdaExp lexp2 = (LambdaExp) exp2;
            if (lexp2.min_args == 3 && lexp2.max_args == 3) {
                exp.setType(args[0].getType());
                Compilation parser = visitor.getCompilation();
                Declaration dotArg = lexp2.firstDecl();
                Declaration posArg = dotArg.nextDecl();
                Declaration lastArg = posArg.nextDecl();
                lexp2.setInlineOnly(true);
                lexp2.returnContinuation = exp;
                lexp2.inlineHome = visitor.getCurrentLambda();
                lexp2.remove(posArg, lastArg);
                lexp2.min_args = 2;
                lexp2.max_args = 2;
                if (!lastArg.getCanRead() && vproc.kind != 'R') {
                    return exp;
                }
                parser.letStart();
                Expression seq = args[0];
                if (vproc.kind == 'P') {
                    seqType = seq.getType();
                    sizeMethod = Compilation.typeValues.getDeclaredMethod("countValues", 1);
                } else {
                    seqType = SortNodes.typeSortedNodes;
                    seq = new ApplyExp(SortNodes.sortNodes, seq);
                    sizeMethod = CoerceNodes.typeNodes.getDeclaredMethod("size", 0);
                }
                Declaration sequence = parser.letVariable("sequence", seqType, seq);
                parser.letEnter();
                Expression pred = lexp2.body;
                Type predType = lexp2.body.getType();
                if (predType != XDataType.booleanType) {
                    pred = new ApplyExp(ValuesFilter.matchesMethod, pred, new ReferenceExp(posArg));
                }
                if (vproc.kind == 'R') {
                    Declaration posIncoming = new Declaration((Object) null, Type.intType);
                    Expression init = new ApplyExp(AddOp.$Mn, new ReferenceExp(lastArg), new ReferenceExp(posIncoming));
                    LetExp let = new LetExp(new Expression[]{new ApplyExp(AddOp.$Pl, init, new QuoteExp(IntNum.one()))});
                    lexp2.replaceFollowing(dotArg, posIncoming);
                    let.add(posArg);
                    let.body = pred;
                    pred = let;
                }
                lexp2.body = new IfExp(pred, new ReferenceExp(dotArg), QuoteExp.voidExp);
                ApplyExp doMap = new ApplyExp(ValuesMap.valuesMapWithPos, lexp2, new ReferenceExp(sequence));
                doMap.setType(dotArg.getType());
                lexp2.returnContinuation = doMap;
                Expression lastInit = new ApplyExp(sizeMethod, new ReferenceExp(sequence));
                LetExp let2 = new LetExp(new Expression[]{lastInit});
                let2.add(lastArg);
                let2.body = gnu.kawa.functions.CompileMisc.validateApplyValuesMap(doMap, visitor, required, ValuesMap.valuesMapWithPos);
                return parser.letDone(let2);
            }
        }
        return exp;
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x021b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static gnu.expr.Expression validateApplyRelativeStep(gnu.expr.ApplyExp r23, gnu.expr.InlineCalls r24, gnu.bytecode.Type r25, gnu.mapping.Procedure r26) {
        /*
            Method dump skipped, instruction units count: 554
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xquery.util.CompileMisc.validateApplyRelativeStep(gnu.expr.ApplyExp, gnu.expr.InlineCalls, gnu.bytecode.Type, gnu.mapping.Procedure):gnu.expr.Expression");
    }

    public static Expression validateApplyOrderedMap(ApplyExp exp, InlineCalls visitor, Type required, Procedure proc) {
        exp.visitArgs(visitor);
        Expression[] args = exp.getArgs();
        if (args.length > 2) {
            Expression[] rargs = new Expression[args.length - 1];
            System.arraycopy(args, 1, rargs, 0, rargs.length);
            Method makeTupleMethod = typeTuples.getDeclaredMethod("make$V", 2);
            Expression[] xargs = {args[0], new ApplyExp(makeTupleMethod, rargs)};
            return new ApplyExp(proc, xargs);
        }
        return exp;
    }

    public static void compileOrderedMap(ApplyExp exp, Compilation comp, Target target, Procedure proc) {
        Expression[] args = exp.getArgs();
        if (args.length != 2) {
            ApplyExp.compile(exp, comp, target);
            return;
        }
        CodeAttr code = comp.getCode();
        Scope scope = code.pushScope();
        Variable consumer = scope.addVariable(code, typeTuples, null);
        args[1].compile(comp, Target.pushValue(typeTuples));
        code.emitStore(consumer);
        ConsumerTarget ctarget = new ConsumerTarget(consumer);
        args[0].compile(comp, ctarget);
        Method mm = typeTuples.getDeclaredMethod("run$X", 1);
        code.emitLoad(consumer);
        PrimProcedure.compileInvoke(comp, mm, target, exp.isTailCall(), 182, Type.pointer_type);
        code.popScope();
    }

    public static Expression validateApplyCastAs(ApplyExp exp, InlineCalls visitor, Type required, Procedure proc) {
        exp.visitArgs(visitor);
        ApplyExp exp2 = CompileReflect.inlineClassName(exp, 0, visitor);
        Expression[] args = exp2.getArgs();
        if (args.length != 2 || !(args[0] instanceof QuoteExp)) {
            return exp2;
        }
        Object type = ((QuoteExp) args[0]).getValue();
        if (type instanceof XDataType) {
            return new ApplyExp(castMethod, args);
        }
        return exp2;
    }

    public static Expression validateApplyCastableAs(ApplyExp exp, InlineCalls visitor, Type required, Procedure proc) {
        exp.visitArgs(visitor);
        ApplyExp exp2 = CompileReflect.inlineClassName(exp, 1, visitor);
        Expression[] args = exp2.getArgs();
        if (args.length != 2 || !(args[1] instanceof QuoteExp)) {
            return exp2;
        }
        Object type = ((QuoteExp) args[1]).getValue();
        if (type instanceof XDataType) {
            return new ApplyExp(castableMethod, args[1], args[0]);
        }
        return exp2;
    }
}
