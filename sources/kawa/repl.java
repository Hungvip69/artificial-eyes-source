package kawa;

import gnu.expr.ApplicationMainSupport;
import gnu.expr.Compilation;
import gnu.expr.Language;
import gnu.expr.ModuleBody;
import gnu.lists.FString;
import gnu.mapping.Environment;
import gnu.mapping.OutPort;
import gnu.mapping.Procedure0or1;
import gnu.mapping.Values;
import gnu.text.WriterManager;
import java.io.File;
import java.io.PrintStream;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class repl extends Procedure0or1 {
    public static String homeDirectory;
    public static boolean noConsole;
    static Language previousLanguage;
    Language language;
    public static String compilationTopname = null;
    static int defaultParseOptions = 72;
    static boolean shutdownRegistered = WriterManager.instance.registerShutdownHook();

    public repl(Language language) {
        this.language = language;
    }

    @Override // gnu.mapping.Procedure0or1, gnu.mapping.Procedure
    public Object apply0() {
        Shell.run(this.language, Environment.getCurrent());
        return Values.empty;
    }

    @Override // gnu.mapping.Procedure0or1, gnu.mapping.Procedure
    public Object apply1(Object env) {
        Shell.run(this.language, (Environment) env);
        return Values.empty;
    }

    static void bad_option(String str) {
        System.err.println("kawa: bad option '" + str + "'");
        printOptions(System.err);
        System.exit(-1);
    }

    public static void printOption(PrintStream out, String option, String doc) {
        out.print(" ");
        out.print(option);
        int len = option.length() + 1;
        for (int i = 0; i < 30 - len; i++) {
            out.print(" ");
        }
        out.print(" ");
        out.println(doc);
    }

    public static void printOptions(PrintStream out) {
        out.println("Usage: [java kawa.repl | kawa] [options ...]");
        out.println();
        out.println(" Generic options:");
        printOption(out, "--help", "Show help about options");
        printOption(out, "--author", "Show author information");
        printOption(out, "--version", "Show version information");
        out.println();
        out.println(" Options");
        printOption(out, "-e <expr>", "Evaluate expression <expr>");
        printOption(out, "-c <expr>", "Same as -e, but make sure ~/.kawarc.scm is run first");
        printOption(out, "-f <filename>", "File to interpret");
        printOption(out, "-s| --", "Start reading commands interactively from console");
        printOption(out, "-w", "Launch the interpreter in a GUI window");
        printOption(out, "--server <port>", "Start a server accepting telnet connections on <port>");
        printOption(out, "--debug-dump-zip", "Compiled interactive expressions to a zip archive");
        printOption(out, "--debug-print-expr", "Print generated internal expressions");
        printOption(out, "--debug-print-final-expr", "Print expression after any optimizations");
        printOption(out, "--debug-error-prints-stack-trace", "Print stack trace with errors");
        printOption(out, "--debug-warning-prints-stack-trace", "Print stack trace with warnings");
        printOption(out, "--[no-]full-tailcalls", "(Don't) use full tail-calls");
        printOption(out, "-C <filename> ...", "Compile named files to Java class files");
        printOption(out, "--output-format <format>", "Use <format> when printing top-level output");
        printOption(out, "--<language>", "Select source language, one of:");
        String[][] languages = Language.getLanguages();
        for (int i = 0; i < languages.length; i++) {
            out.print("   ");
            String[] lang = languages[i];
            int nwords = lang.length - 1;
            for (int j = 0; j < nwords; j++) {
                out.print(lang[j] + " ");
            }
            if (i == 0) {
                out.print("[default]");
            }
            out.println();
        }
        out.println(" Compilation options, must be specified before -C");
        printOption(out, "-d <dirname>", "Directory to place .class files in");
        printOption(out, "-P <prefix>", "Prefix to prepand to class names");
        printOption(out, "-T <topname>", "name to give to top-level class");
        printOption(out, "--main", "Generate an application, with a main method");
        printOption(out, "--applet", "Generate an applet");
        printOption(out, "--servlet", "Generate a servlet");
        printOption(out, "--module-static", "Top-level definitions are by default static");
        ArrayList<String> keys = Compilation.options.keys();
        for (int i2 = 0; i2 < keys.size(); i2++) {
            String name = keys.get(i2);
            printOption(out, "--" + name, Compilation.options.getDoc(name));
        }
        out.println();
        out.println("For more information go to:  http://www.gnu.org/software/kawa/");
    }

    static void checkInitFile() {
        Object scmHomeDirectory;
        if (homeDirectory == null) {
            File initFile = null;
            homeDirectory = System.getProperty("user.home");
            if (homeDirectory != null) {
                scmHomeDirectory = new FString(homeDirectory);
                String file_separator = System.getProperty("file.separator");
                String kawarc_name = "/".equals(file_separator) ? ".kawarc.scm" : "kawarc.scm";
                initFile = new File(homeDirectory, kawarc_name);
            } else {
                scmHomeDirectory = Boolean.FALSE;
            }
            Environment.getCurrent().put("home-directory", scmHomeDirectory);
            if (initFile != null && initFile.exists() && !Shell.runFileOrClass(initFile.getPath(), true, 0)) {
                System.exit(-1);
            }
        }
    }

    public static void setArgs(String[] args, int arg_start) {
        ApplicationMainSupport.setArgs(args, arg_start);
    }

    public static void getLanguageFromFilenameExtension(String name) {
        if (previousLanguage == null) {
            previousLanguage = Language.getInstanceFromFilenameExtension(name);
            if (previousLanguage != null) {
                Language.setDefaults(previousLanguage);
                return;
            }
        }
        getLanguage();
    }

    public static void getLanguage() {
        if (previousLanguage == null) {
            previousLanguage = Language.getInstance(null);
            Language.setDefaults(previousLanguage);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:158:0x02da, code lost:
    
        getLanguage();
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x02df, code lost:
    
        if (r0 != r18) goto L161;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x02e1, code lost:
    
        bad_option(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x02ea, code lost:
    
        if (r16[r0].equals("-") == false) goto L357;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x02ec, code lost:
    
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x02ee, code lost:
    
        r3 = java.lang.Integer.parseInt(r16[r0]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x02f6, code lost:
    
        bad_option("--server port#");
        r3 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:341:0x0666, code lost:
    
        getLanguage();
        setArgs(r16, r0 + 1);
        checkInitFile();
        kawa.Shell.run(gnu.expr.Language.getDefaultLanguage(), gnu.mapping.Environment.getCurrent());
     */
    /* JADX WARN: Code restructure failed: missing block: B:342:0x067c, code lost:
    
        return -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int processArgs(java.lang.String[] r16, int r17, int r18) {
        /*
            Method dump skipped, instruction units count: 1737
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kawa.repl.processArgs(java.lang.String[], int, int):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void compileFiles(java.lang.String[] r13, int r14, int r15) {
        /*
            Method dump skipped, instruction units count: 262
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kawa.repl.compileFiles(java.lang.String[], int, int):void");
    }

    static void internalError(Throwable ex, Compilation comp, Object arg) {
        StringBuffer sbuf = new StringBuffer();
        if (comp != null) {
            String file = comp.getFileName();
            int line = comp.getLineNumber();
            if (file != null && line > 0) {
                sbuf.append(file);
                sbuf.append(':');
                sbuf.append(line);
                sbuf.append(": ");
            }
        }
        sbuf.append("internal error while compiling ");
        sbuf.append(arg);
        System.err.println(sbuf.toString());
        ex.printStackTrace(System.err);
        System.exit(-1);
    }

    public static void main(String[] args) {
        try {
            int iArg = processArgs(args, 0, args.length);
            if (iArg < 0) {
                return;
            }
            if (iArg < args.length) {
                String filename = args[iArg];
                getLanguageFromFilenameExtension(filename);
                setArgs(args, iArg + 1);
                checkInitFile();
                Shell.runFileOrClass(filename, false, 0);
            } else {
                getLanguage();
                setArgs(args, iArg);
                checkInitFile();
                if (shouldUseGuiConsole()) {
                    startGuiConsole();
                } else {
                    boolean ok = Shell.run(Language.getDefaultLanguage(), Environment.getCurrent());
                    if (!ok) {
                        System.exit(-1);
                    }
                }
            }
            if (!shutdownRegistered) {
                OutPort.runCleanups();
            }
            ModuleBody.exitDecrement();
        } finally {
            if (!shutdownRegistered) {
                OutPort.runCleanups();
            }
            ModuleBody.exitDecrement();
        }
    }

    public static boolean shouldUseGuiConsole() {
        if (noConsole) {
            return true;
        }
        return Class.forName("java.lang.System").getMethod("console", new Class[0]).invoke(new Object[0], new Object[0]) == null;
    }

    private static void startGuiConsole() {
        try {
            Class.forName("kawa.GuiConsole").newInstance();
        } catch (Exception ex) {
            System.err.println("failed to create Kawa window: " + ex);
            System.exit(-1);
        }
    }
}
