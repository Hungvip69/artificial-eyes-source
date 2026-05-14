package gnu.expr;

import gnu.bytecode.Type;
import gnu.mapping.CallContext;
import gnu.mapping.OutPort;

/* JADX INFO: loaded from: classes.dex */
public class IfExp extends Expression {
    Expression else_clause;
    Expression test;
    Expression then_clause;

    public IfExp(Expression i, Expression t, Expression e) {
        this.test = i;
        this.then_clause = t;
        this.else_clause = e;
    }

    public Expression getTest() {
        return this.test;
    }

    public Expression getThenClause() {
        return this.then_clause;
    }

    public Expression getElseClause() {
        return this.else_clause;
    }

    protected final Language getLanguage() {
        return Language.getDefaultLanguage();
    }

    @Override // gnu.expr.Expression
    protected boolean mustCompile() {
        return false;
    }

    @Override // gnu.expr.Expression, gnu.mapping.Procedure
    public void apply(CallContext ctx) throws Throwable {
        if (getLanguage().isTrue(this.test.eval(ctx))) {
            this.then_clause.apply(ctx);
        } else if (this.else_clause != null) {
            this.else_clause.apply(ctx);
        }
    }

    Expression select(boolean truth) {
        return truth ? this.then_clause : this.else_clause == null ? QuoteExp.voidExp : this.else_clause;
    }

    @Override // gnu.expr.Expression
    public void compile(Compilation comp, Target target) {
        compile(this.test, this.then_clause, this.else_clause == null ? QuoteExp.voidExp : this.else_clause, comp, target);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x004f A[PHI: r2
      0x004f: PHI (r2v1 'falseLabel' gnu.bytecode.Label) = 
      (r2v0 'falseLabel' gnu.bytecode.Label)
      (r2v0 'falseLabel' gnu.bytecode.Label)
      (r2v0 'falseLabel' gnu.bytecode.Label)
      (r2v2 'falseLabel' gnu.bytecode.Label)
     binds: [B:12:0x002d, B:14:0x0036, B:16:0x0042, B:18:0x004b] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void compile(gnu.expr.Expression r9, gnu.expr.Expression r10, gnu.expr.Expression r11, gnu.expr.Compilation r12, gnu.expr.Target r13) {
        /*
            gnu.expr.Language r0 = r12.getLanguage()
            gnu.bytecode.CodeAttr r1 = r12.getCode()
            r2 = 0
            boolean r3 = r13 instanceof gnu.expr.ConditionalTarget
            if (r3 == 0) goto L2b
            boolean r3 = r11 instanceof gnu.expr.QuoteExp
            if (r3 == 0) goto L2b
            r3 = 1
            r4 = r11
            gnu.expr.QuoteExp r4 = (gnu.expr.QuoteExp) r4
            java.lang.Object r4 = r4.getValue()
            boolean r5 = r0.isTrue(r4)
            if (r5 == 0) goto L25
            r5 = r13
            gnu.expr.ConditionalTarget r5 = (gnu.expr.ConditionalTarget) r5
            gnu.bytecode.Label r2 = r5.ifTrue
            goto L2a
        L25:
            r5 = r13
            gnu.expr.ConditionalTarget r5 = (gnu.expr.ConditionalTarget) r5
            gnu.bytecode.Label r2 = r5.ifFalse
        L2a:
            goto L50
        L2b:
            boolean r3 = r11 instanceof gnu.expr.ExitExp
            if (r3 == 0) goto L4f
            r3 = r11
            gnu.expr.ExitExp r3 = (gnu.expr.ExitExp) r3
            gnu.expr.Expression r3 = r3.result
            boolean r3 = r3 instanceof gnu.expr.QuoteExp
            if (r3 == 0) goto L4f
            r3 = r11
            gnu.expr.ExitExp r3 = (gnu.expr.ExitExp) r3
            gnu.expr.BlockExp r3 = r3.block
            r4 = r3
            gnu.expr.Target r3 = r3.exitTarget
            boolean r3 = r3 instanceof gnu.expr.IgnoreTarget
            if (r3 == 0) goto L4f
            gnu.bytecode.ExitableBlock r3 = r4.exitableBlock
            gnu.bytecode.Label r3 = r3.exitIsGoto()
            r2 = r3
            if (r3 == 0) goto L4f
            r3 = 1
            goto L50
        L4f:
            r3 = 0
        L50:
            if (r2 != 0) goto L58
            gnu.bytecode.Label r4 = new gnu.bytecode.Label
            r4.<init>(r1)
            r2 = r4
        L58:
            if (r9 != r10) goto L69
            boolean r4 = r13 instanceof gnu.expr.ConditionalTarget
            if (r4 == 0) goto L69
            boolean r4 = r10 instanceof gnu.expr.ReferenceExp
            if (r4 == 0) goto L69
            r4 = 1
            r5 = r13
            gnu.expr.ConditionalTarget r5 = (gnu.expr.ConditionalTarget) r5
            gnu.bytecode.Label r5 = r5.ifTrue
            goto L6f
        L69:
            r4 = 0
            gnu.bytecode.Label r5 = new gnu.bytecode.Label
            r5.<init>(r1)
        L6f:
            gnu.expr.ConditionalTarget r6 = new gnu.expr.ConditionalTarget
            r6.<init>(r5, r2, r0)
            if (r4 == 0) goto L79
            r7 = 0
            r6.trueBranchComesFirst = r7
        L79:
            r9.compile(r12, r6)
            r1.emitIfThen()
            if (r4 != 0) goto L8b
            r5.define(r1)
            gnu.bytecode.Variable r7 = r12.callContextVar
            r10.compileWithPosition(r12, r13)
            r12.callContextVar = r7
        L8b:
            if (r3 != 0) goto La3
            r1.emitElse()
            r2.define(r1)
            gnu.bytecode.Variable r7 = r12.callContextVar
            if (r11 != 0) goto L9d
            gnu.mapping.Values r8 = gnu.mapping.Values.empty
            r12.compileConstant(r8, r13)
            goto La0
        L9d:
            r11.compileWithPosition(r12, r13)
        La0:
            r12.callContextVar = r7
            goto La6
        La3:
            r1.setUnreachable()
        La6:
            r1.emitFi()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.expr.IfExp.compile(gnu.expr.Expression, gnu.expr.Expression, gnu.expr.Expression, gnu.expr.Compilation, gnu.expr.Target):void");
    }

    @Override // gnu.expr.Expression
    protected <R, D> R visit(ExpVisitor<R, D> visitor, D d) {
        return visitor.visitIfExp(this, d);
    }

    @Override // gnu.expr.Expression
    protected <R, D> void visitChildren(ExpVisitor<R, D> visitor, D d) {
        this.test = visitor.visitAndUpdate(this.test, d);
        if (visitor.exitValue == null) {
            this.then_clause = visitor.visitAndUpdate(this.then_clause, d);
        }
        if (visitor.exitValue == null && this.else_clause != null) {
            this.else_clause = visitor.visitAndUpdate(this.else_clause, d);
        }
    }

    @Override // gnu.expr.Expression
    public Type getType() {
        Type t1 = this.then_clause.getType();
        Type t2 = this.else_clause == null ? Type.voidType : this.else_clause.getType();
        return Language.unionType(t1, t2);
    }

    @Override // gnu.expr.Expression
    public void print(OutPort out) {
        out.startLogicalBlock("(If ", false, ")");
        out.setIndentation(-2, false);
        this.test.print(out);
        out.writeSpaceLinear();
        this.then_clause.print(out);
        if (this.else_clause != null) {
            out.writeSpaceLinear();
            this.else_clause.print(out);
        }
        out.endLogicalBlock(")");
    }
}
