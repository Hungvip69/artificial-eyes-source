package gnu.bytecode;

/* JADX INFO: loaded from: classes.dex */
public interface Member {
    ClassType getDeclaringClass();

    int getModifiers();

    String getName();

    boolean getStaticFlag();

    void setName(String str);
}
