package gnu.kawa.swingviews;

import gnu.kawa.models.Button;
import javax.swing.DefaultButtonModel;

/* JADX INFO: compiled from: SwingButton.java */
/* JADX INFO: loaded from: classes2.dex */
class SwModel extends DefaultButtonModel {
    Button model;

    public SwModel(Button model) {
        this.model = model;
        setActionCommand(model.getText());
    }
}
