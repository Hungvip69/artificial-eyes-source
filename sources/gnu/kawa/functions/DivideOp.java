package gnu.kawa.functions;

import gnu.mapping.Procedure;
import gnu.mapping.PropertySet;

/* JADX INFO: loaded from: classes.dex */
public class DivideOp extends ArithOp {
    int rounding_mode;
    public static final DivideOp $Sl = new DivideOp("/", 4);
    public static final DivideOp idiv = new DivideOp("idiv", 7);
    public static final DivideOp quotient = new DivideOp("quotient", 6);
    public static final DivideOp remainder = new DivideOp("remainder", 8);
    public static final DivideOp modulo = new DivideOp("modulo", 8);
    public static final DivideOp div = new DivideOp("div", 6);
    public static final DivideOp mod = new DivideOp("mod", 8);
    public static final DivideOp div0 = new DivideOp("div0", 6);
    public static final DivideOp mod0 = new DivideOp("mod0", 8);

    public int getRoundingMode() {
        return this.rounding_mode;
    }

    static {
        idiv.rounding_mode = 3;
        quotient.rounding_mode = 3;
        remainder.rounding_mode = 3;
        modulo.rounding_mode = 1;
        div.rounding_mode = 5;
        mod.rounding_mode = 5;
        div0.rounding_mode = 4;
        mod0.rounding_mode = 4;
    }

    public DivideOp(String name, int op) {
        super(name, op);
        setProperty(Procedure.validateApplyKey, "gnu.kawa.functions.CompileArith:validateApplyArithOp");
        Procedure.compilerKey.set((PropertySet) this, "*gnu.kawa.functions.CompileArith:forDiv");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x02d5  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0306 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01b5  */
    @Override // gnu.mapping.ProcedureN, gnu.mapping.Procedure
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object applyN(java.lang.Object[] r33) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 912
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.functions.DivideOp.applyN(java.lang.Object[]):java.lang.Object");
    }

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        return this.op == 4 ? -4095 : 8194;
    }
}
