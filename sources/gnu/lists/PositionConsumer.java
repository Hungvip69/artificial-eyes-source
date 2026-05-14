package gnu.lists;

/* JADX INFO: loaded from: classes.dex */
public interface PositionConsumer {
    void consume(SeqPosition seqPosition);

    void writePosition(AbstractSequence abstractSequence, int i);
}
