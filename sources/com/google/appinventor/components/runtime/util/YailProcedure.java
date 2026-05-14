package com.google.appinventor.components.runtime.util;

import android.util.Log;
import com.google.appinventor.components.runtime.Form;
import com.google.appinventor.components.runtime.ReplForm;
import gnu.lists.LList;
import gnu.mapping.Procedure;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Symbol;
import gnu.mapping.Values;

/* JADX INFO: loaded from: classes.dex */
public final class YailProcedure {
    public static final Object RETURN_VALUE_WHEN_NULL = false;
    private final Executable executable;

    public interface Executable {
        Object execute(Object... objArr);

        int numArgs();
    }

    public static final YailProcedure create(Procedure procedure) {
        if (procedure == null) {
            throw new RuntimeException("Cannot create YailProcedure since the procedure is null");
        }
        return new YailProcedure(procedure);
    }

    public static final YailProcedure createWithName(String procedureName) {
        String processedName;
        if (procedureName.matches("^[^-0-9!&%^/>=<`'\"#:;,\\\\\\^\\*\\+\\.\\(\\)\\|\\{\\}\\[\\]\\ ][^-!&%^/>=<'\"#:;,\\\\\\^\\*\\+\\.\\(\\)\\|\\{\\}\\[\\]\\ ]*$")) {
            try {
                Log.d("YailProcedure", "createWithName: procedureName=" + procedureName);
                if (Form.getActiveForm() instanceof ReplForm) {
                    processedName = escapeUnicode(procedureName);
                    Log.d("YailProcedure", "createWithName: escaped procedureName for Repl: " + processedName);
                } else {
                    processedName = procedureName;
                }
                return create((Procedure) Class.forName("com.google.youngandroid.runtime").getMethod("lookupGlobalVarInCurrentFormEnvironment", Symbol.class, Object.class).invoke(null, new SimpleSymbol("p$" + processedName).readResolve(), null));
            } catch (Throwable e) {
                throw new RuntimeException("Cannot read global procedure: " + procedureName, e);
            }
        }
        throw new RuntimeException("Procedure name is not legal: " + procedureName);
    }

    private static String escapeUnicode(String str) {
        StringBuilder b = new StringBuilder();
        for (char c : str.toCharArray()) {
            if (c <= 127) {
                b.append(c);
            } else {
                b.append("u").append(Integer.toHexString(c));
            }
        }
        return b.toString();
    }

    public static final Object callProcedure(YailProcedure procedure, LList args) {
        return procedure.call(args.toArray());
    }

    public static final int numArgs(YailProcedure procedure) {
        return procedure.numArgs();
    }

    public YailProcedure(Executable executable) {
        this.executable = executable;
    }

    public YailProcedure(final Procedure methodToCall) {
        this(new Executable() { // from class: com.google.appinventor.components.runtime.util.YailProcedure.1
            @Override // com.google.appinventor.components.runtime.util.YailProcedure.Executable
            public Object execute(Object... args) {
                if (args.length < numArgs()) {
                    throw new RuntimeException("Unable to call YailProcedure: not enough arguments: require " + numArgs() + ", get " + args.length);
                }
                if (args.length > numArgs()) {
                    throw new RuntimeException("Unable to call YailProcedure: too many arguments: require " + numArgs() + ", get " + args.length);
                }
                try {
                    return methodToCall.applyN(args);
                } catch (Throwable t) {
                    throw new RuntimeException("Unable to call YailProcedure", t);
                }
            }

            @Override // com.google.appinventor.components.runtime.util.YailProcedure.Executable
            public int numArgs() {
                return methodToCall.minArgs();
            }
        });
    }

    public Object call(Object... args) {
        Object returnVal = this.executable.execute(args);
        if (returnVal == null || ((returnVal instanceof Values) && ((Values) returnVal).getValues().length == 0)) {
            return RETURN_VALUE_WHEN_NULL;
        }
        return returnVal;
    }

    public int numArgs() {
        return this.executable.numArgs();
    }
}
