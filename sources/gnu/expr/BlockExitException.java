package gnu.expr;

/* JADX INFO: compiled from: BlockExp.java */
/* JADX INFO: loaded from: classes.dex */
class BlockExitException extends RuntimeException {
    ExitExp exit;
    Object result;

    public BlockExitException(ExitExp exit, Object result) {
        this.exit = exit;
        this.result = result;
    }
}
