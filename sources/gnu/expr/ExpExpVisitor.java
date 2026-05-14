package gnu.expr;

/* JADX INFO: loaded from: classes.dex */
public abstract class ExpExpVisitor<D> extends ExpVisitor<Expression, D> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // gnu.expr.ExpVisitor
    public Expression update(Expression exp, Expression r) {
        return r;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // gnu.expr.ExpVisitor
    public Expression defaultValue(Expression r, D d) {
        return r;
    }
}
