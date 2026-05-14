package kawa.lang;

import gnu.expr.Compilation;
import gnu.lists.FVector;
import gnu.lists.LList;
import gnu.lists.Pair;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.IdentityHashMap;
import java.util.Vector;

/* JADX INFO: loaded from: classes.dex */
public class SyntaxTemplate implements Externalizable {
    static final int BUILD_CONS = 1;
    static final int BUILD_DOTS = 5;
    static final int BUILD_LIST1 = 8;
    static final int BUILD_LITERAL = 4;
    static final int BUILD_MISC = 0;
    static final int BUILD_NIL = 16;
    static final int BUILD_SYNTAX = 24;
    static final int BUILD_VAR = 2;
    static final int BUILD_VAR_CAR = 3;
    static final int BUILD_VECTOR = 40;
    static final int BUILD_WIDE = 7;
    static final String dots3 = "...";
    Object[] literal_values;
    int max_nesting;
    String patternNesting;
    String template_program;

    protected SyntaxTemplate() {
    }

    public SyntaxTemplate(String patternNesting, String template_program, Object[] literal_values, int max_nesting) {
        this.patternNesting = patternNesting;
        this.template_program = template_program;
        this.literal_values = literal_values;
        this.max_nesting = max_nesting;
    }

    public SyntaxTemplate(Object template, SyntaxForm syntax, Translator tr) {
        this.patternNesting = (tr == null || tr.patternScope == null) ? "" : tr.patternScope.patternNesting.toString();
        StringBuffer program = new StringBuffer();
        Vector literals_vector = new Vector();
        IdentityHashMap seen = new IdentityHashMap();
        convert_template(template, syntax, program, 0, literals_vector, seen, false, tr);
        this.template_program = program.toString();
        this.literal_values = new Object[literals_vector.size()];
        literals_vector.copyInto(this.literal_values);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int convert_template(java.lang.Object r27, kawa.lang.SyntaxForm r28, java.lang.StringBuffer r29, int r30, java.util.Vector r31, java.lang.Object r32, boolean r33, kawa.lang.Translator r34) {
        /*
            Method dump skipped, instruction units count: 508
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kawa.lang.SyntaxTemplate.convert_template(java.lang.Object, kawa.lang.SyntaxForm, java.lang.StringBuffer, int, java.util.Vector, java.lang.Object, boolean, kawa.lang.Translator):int");
    }

    static int indexOf(Vector vec, Object elem) {
        int len = vec.size();
        for (int i = 0; i < len; i++) {
            if (vec.elementAt(i) == elem) {
                return i;
            }
        }
        return -1;
    }

    private int get_count(Object var, int nesting, int[] indexes) {
        for (int level = 0; level < nesting; level++) {
            var = ((Object[]) var)[indexes[level]];
        }
        Object[] var_array = (Object[]) var;
        return var_array.length;
    }

    public Object execute(Object[] vars, TemplateScope templateScope) {
        Object result = execute(0, vars, 0, new int[this.max_nesting], (Translator) Compilation.getCurrent(), templateScope);
        return result;
    }

    public Object execute(Object[] vars, Translator tr, TemplateScope templateScope) {
        return execute(0, vars, 0, new int[this.max_nesting], tr, templateScope);
    }

    Object get_var(int var_num, Object[] vars, int[] indexes) {
        Object var = vars[var_num];
        if (var_num < this.patternNesting.length()) {
            int var_nesting = this.patternNesting.charAt(var_num) >> 1;
            for (int level = 0; level < var_nesting; level++) {
                var = ((Object[]) var)[indexes[level]];
            }
        }
        return var;
    }

    LList executeToList(int pc, Object[] vars, int nesting, int[] indexes, Translator tr, TemplateScope templateScope) {
        int pc2 = pc;
        int ch = this.template_program.charAt(pc2);
        while ((ch & 7) == 7) {
            pc2++;
            ch = ((ch - 7) << 13) | this.template_program.charAt(pc2);
        }
        if ((ch & 7) == 3) {
            Pair p = (Pair) get_var(ch >> 3, vars, indexes);
            return Translator.makePair(p, p.getCar(), LList.Empty);
        }
        if ((ch & 7) == 5) {
            int var_num = ch >> 3;
            Object var = vars[var_num];
            int count = get_count(var, nesting, indexes);
            LList result = LList.Empty;
            int pc3 = pc2 + 1;
            LList result2 = result;
            int j = 0;
            Pair last = null;
            while (j < count) {
                indexes[nesting] = j;
                int var_num2 = var_num;
                Pair last2 = last;
                int j2 = j;
                LList list = executeToList(pc3, vars, nesting + 1, indexes, tr, templateScope);
                if (last2 == null) {
                    result2 = list;
                    last = last2;
                } else {
                    last2.setCdrBackdoor(list);
                    last = last2;
                }
                while (list instanceof Pair) {
                    last = (Pair) list;
                    list = (LList) last.getCdr();
                }
                j = j2 + 1;
                var_num = var_num2;
            }
            return result2;
        }
        Object v = execute(pc, vars, nesting, indexes, tr, templateScope);
        return new Pair(v, LList.Empty);
    }

    Object execute(int pc, Object[] vars, int nesting, int[] indexes, Translator tr, TemplateScope templateScope) {
        int pc2;
        int ch = this.template_program.charAt(pc);
        int pc3 = pc;
        while ((ch & 7) == 7) {
            pc3++;
            ch = ((ch - 7) << 13) | this.template_program.charAt(pc3);
        }
        if (ch == 8) {
            return executeToList(pc3 + 1, vars, nesting, indexes, tr, templateScope);
        }
        if (ch == 16) {
            return LList.Empty;
        }
        if (ch == 24) {
            Object v = execute(pc3 + 1, vars, nesting, indexes, tr, templateScope);
            return v == LList.Empty ? v : SyntaxForms.makeForm(v, templateScope);
        }
        if ((ch & 7) == 1) {
            int ch2 = ch;
            Object result = null;
            int i = pc3;
            Pair p = null;
            int pc4 = i;
            while (true) {
                int pc5 = pc4 + 1;
                Object q = executeToList(pc5, vars, nesting, indexes, tr, templateScope);
                if (p == null) {
                    result = q;
                } else {
                    p.setCdrBackdoor(q);
                }
                while (q instanceof Pair) {
                    p = (Pair) q;
                    q = p.getCdr();
                }
                pc2 = pc5 + (ch2 >> 3);
                ch2 = this.template_program.charAt(pc2);
                if ((ch2 & 7) != 1) {
                    break;
                }
                pc4 = pc2;
            }
            Object cdr = execute(pc2, vars, nesting, indexes, tr, templateScope);
            if (p == null) {
                return cdr;
            }
            p.setCdrBackdoor(cdr);
            return result;
        }
        if (ch == 40) {
            Object el = execute(pc3 + 1, vars, nesting, indexes, tr, templateScope);
            return new FVector((LList) el);
        }
        if ((ch & 7) == 4) {
            int lit_no = ch >> 3;
            return this.literal_values[lit_no];
        }
        int lit_no2 = ch & 6;
        if (lit_no2 != 2) {
            throw new Error("unknown template code: " + ch + " at " + pc3);
        }
        Object var = get_var(ch >> 3, vars, indexes);
        if ((ch & 7) == 3) {
            return ((Pair) var).getCar();
        }
        return var;
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput out) throws IOException {
        out.writeObject(this.patternNesting);
        out.writeObject(this.template_program);
        out.writeObject(this.literal_values);
        out.writeInt(this.max_nesting);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput in) throws IOException, ClassNotFoundException {
        this.patternNesting = (String) in.readObject();
        this.template_program = (String) in.readObject();
        this.literal_values = (Object[]) in.readObject();
        this.max_nesting = in.readInt();
    }
}
