package gnu.expr;

import gnu.bytecode.CodeAttr;
import gnu.bytecode.PrimType;
import gnu.bytecode.Type;
import gnu.mapping.CallContext;
import gnu.mapping.Location;
import gnu.mapping.OutPort;

/* JADX INFO: loaded from: classes.dex */
public class LetExp extends ScopeExp {
    public Expression body;
    public Expression[] inits;

    public LetExp(Expression[] i) {
        this.inits = i;
    }

    public Expression getBody() {
        return this.body;
    }

    public void setBody(Expression body) {
        this.body = body;
    }

    @Override // gnu.expr.Expression
    protected boolean mustCompile() {
        return false;
    }

    protected Object evalVariable(int i, CallContext ctx) throws Throwable {
        Expression init = this.inits[i];
        return init.eval(ctx);
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
    @Override // gnu.expr.Expression, gnu.mapping.Procedure
    public void apply(CallContext callContext) throws Throwable {
        Object[][] objArr;
        setIndexes();
        int iNesting = ScopeExp.nesting(this);
        Object[] objArr2 = new Object[this.frameSize];
        Object[][] objArr3 = callContext.evalFrames;
        if (objArr3 == null) {
            Object[][] objArr4 = new Object[iNesting + 10][];
            callContext.evalFrames = objArr4;
            objArr = objArr4;
        } else {
            int length = objArr3.length;
            objArr = objArr3;
            if (iNesting >= length) {
                Object[][] objArr5 = new Object[iNesting + 10][];
                System.arraycopy(objArr3, 0, objArr5, 0, objArr3.length);
                objArr = objArr5;
                callContext.evalFrames = objArr5;
            }
        }
        Object[] objArr6 = objArr[iNesting];
        objArr[iNesting] = objArr2;
        int i = 0;
        try {
            Declaration declarationFirstDecl = firstDecl();
            while (declarationFirstDecl != null) {
                if (this.inits[i] != QuoteExp.undefined_exp) {
                    Object objEvalVariable = evalVariable(i, callContext);
                    Type type = declarationFirstDecl.type;
                    Object objCoerceFromObject = objEvalVariable;
                    if (type != null) {
                        objCoerceFromObject = objEvalVariable;
                        if (type != Type.pointer_type) {
                            objCoerceFromObject = type.coerceFromObject(objEvalVariable);
                        }
                    }
                    Location location = objCoerceFromObject;
                    if (declarationFirstDecl.isIndirectBinding()) {
                        Location locationMakeIndirectLocationFor = declarationFirstDecl.makeIndirectLocationFor();
                        locationMakeIndirectLocationFor.set(objCoerceFromObject);
                        location = locationMakeIndirectLocationFor;
                    }
                    objArr2[i] = location;
                }
                declarationFirstDecl = declarationFirstDecl.nextDecl();
                i++;
            }
            this.body.apply(callContext);
        } finally {
            objArr[iNesting] = objArr6;
        }
    }

    void store_rest(Compilation comp, int i, Declaration decl) {
        if (decl != null) {
            store_rest(comp, i + 1, decl.nextDecl());
            if (decl.needsInit()) {
                if (decl.isIndirectBinding()) {
                    CodeAttr code = comp.getCode();
                    if (this.inits[i] == QuoteExp.undefined_exp) {
                        Object name = decl.getSymbol();
                        comp.compileConstant(name, Target.pushObject);
                        code.emitInvokeStatic(BindingInitializer.makeLocationMethod(name));
                    } else {
                        decl.pushIndirectBinding(comp);
                    }
                }
                decl.compileStore(comp);
            }
        }
    }

    @Override // gnu.expr.Expression
    public void compile(Compilation comp, Target target) {
        Target varTarget;
        CodeAttr code = comp.getCode();
        Declaration decl = firstDecl();
        int i = 0;
        while (i < this.inits.length) {
            Expression init = this.inits[i];
            boolean needsInit = decl.needsInit();
            if (needsInit && decl.isSimple()) {
                decl.allocateVariable(code);
            }
            if (!needsInit || (decl.isIndirectBinding() && init == QuoteExp.undefined_exp)) {
                varTarget = Target.Ignore;
            } else {
                Type varType = decl.getType();
                varTarget = CheckedTarget.getInstance(decl);
                if (init == QuoteExp.undefined_exp) {
                    if (varType instanceof PrimType) {
                        init = new QuoteExp(new Byte((byte) 0));
                    } else if (varType != null && varType != Type.pointer_type) {
                        init = QuoteExp.nullExp;
                    }
                }
            }
            init.compileWithPosition(comp, varTarget);
            i++;
            decl = decl.nextDecl();
        }
        code.enterScope(getVarScope());
        store_rest(comp, 0, firstDecl());
        this.body.compileWithPosition(comp, target);
        popScope(code);
    }

    @Override // gnu.expr.Expression
    public final Type getType() {
        return this.body.getType();
    }

    @Override // gnu.expr.ScopeExp, gnu.expr.Expression
    protected <R, D> R visit(ExpVisitor<R, D> visitor, D d) {
        return visitor.visitLetExp(this, d);
    }

    public <R, D> void visitInitializers(ExpVisitor<R, D> visitor, D d) {
        Declaration decl = firstDecl();
        int i = 0;
        while (i < this.inits.length) {
            Expression init0 = this.inits[i];
            if (init0 == null) {
                throw new Error("null1 init for " + this + " i:" + i + " d:" + decl);
            }
            Expression init = visitor.visitAndUpdate(init0, d);
            if (init == null) {
                throw new Error("null2 init for " + this + " was:" + init0);
            }
            this.inits[i] = init;
            if (decl.value == init0) {
                decl.value = init;
            }
            i++;
            decl = decl.nextDecl();
        }
    }

    @Override // gnu.expr.Expression
    protected <R, D> void visitChildren(ExpVisitor<R, D> visitor, D d) {
        visitInitializers(visitor, d);
        if (visitor.exitValue == null) {
            this.body = visitor.visitAndUpdate(this.body, d);
        }
    }

    @Override // gnu.expr.Expression
    public void print(OutPort out) {
        print(out, "(Let", ")");
    }

    public void print(OutPort out, String startTag, String endTag) {
        out.startLogicalBlock(startTag + "#" + this.id, endTag, 2);
        out.writeSpaceFill();
        printLineColumn(out);
        out.startLogicalBlock("(", false, ")");
        int i = 0;
        for (Declaration decl = firstDecl(); decl != null; decl = decl.nextDecl()) {
            if (i > 0) {
                out.writeSpaceFill();
            }
            out.startLogicalBlock("(", false, ")");
            decl.printInfo(out);
            if (this.inits != null) {
                out.writeSpaceFill();
                out.print('=');
                out.writeSpaceFill();
                if (i >= this.inits.length) {
                    out.print("<missing init>");
                } else if (this.inits[i] == null) {
                    out.print("<null>");
                } else {
                    this.inits[i].print(out);
                }
                i++;
            }
            out.endLogicalBlock(")");
        }
        out.endLogicalBlock(")");
        out.writeSpaceLinear();
        if (this.body == null) {
            out.print("<null body>");
        } else {
            this.body.print(out);
        }
        out.endLogicalBlock(endTag);
    }
}
