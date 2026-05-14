package kawa.standard;

import gnu.bytecode.ClassType;
import gnu.bytecode.Method;
import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.BlockExp;
import gnu.expr.Compilation;
import gnu.expr.Declaration;
import gnu.expr.ExitExp;
import gnu.expr.Expression;
import gnu.expr.IfExp;
import gnu.expr.Language;
import gnu.expr.LetExp;
import gnu.expr.PrimProcedure;
import gnu.expr.QuoteExp;
import gnu.expr.ReferenceExp;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.math.IntNum;
import kawa.lang.Pattern;
import kawa.lang.PatternScope;
import kawa.lang.Syntax;
import kawa.lang.SyntaxForm;
import kawa.lang.SyntaxPattern;
import kawa.lang.Translator;

/* JADX INFO: loaded from: classes.dex */
public class syntax_case extends Syntax {
    public static final syntax_case syntax_case = new syntax_case();
    PrimProcedure call_error;

    static {
        syntax_case.setName("syntax-case");
    }

    Expression rewriteClauses(Object obj, syntax_case_work syntax_case_workVar, Translator translator) {
        Expression expressionSyntaxError;
        Expression ifExp;
        Language language = translator.getLanguage();
        if (obj == LList.Empty) {
            Expression[] expressionArr = {new QuoteExp("syntax-case"), new ReferenceExp(syntax_case_workVar.inputExpression)};
            if (this.call_error == null) {
                this.call_error = new PrimProcedure(ClassType.make("kawa.standard.syntax_case").addMethod("error", new Type[]{Compilation.javaStringType, Type.objectType}, Type.objectType, 9), language);
            }
            return new ApplyExp(this.call_error, expressionArr);
        }
        Object objPushPositionOf = translator.pushPositionOf(obj);
        try {
            if (obj instanceof Pair) {
                Object car = ((Pair) obj).getCar();
                if (!(car instanceof Pair)) {
                    expressionSyntaxError = translator.syntaxError("syntax-case:  bad clause list");
                } else {
                    Pair pair = (Pair) car;
                    PatternScope patternScopePush = PatternScope.push(translator);
                    patternScopePush.matchArray = translator.matchArray;
                    translator.push(patternScopePush);
                    Object cdr = pair.getCdr();
                    SyntaxForm syntaxForm = null;
                    while (cdr instanceof SyntaxForm) {
                        syntaxForm = (SyntaxForm) cdr;
                        cdr = syntaxForm.getDatum();
                    }
                    if (!(cdr instanceof Pair)) {
                        expressionSyntaxError = translator.syntaxError("missing syntax-case output expression");
                    } else {
                        int size = patternScopePush.pattern_names.size();
                        SyntaxPattern syntaxPattern = new SyntaxPattern(pair.getCar(), syntax_case_workVar.literal_identifiers, translator);
                        int iVarCount = syntaxPattern.varCount();
                        if (iVarCount > syntax_case_workVar.maxVars) {
                            syntax_case_workVar.maxVars = iVarCount;
                        }
                        BlockExp blockExp = new BlockExp();
                        ApplyExp applyExp = new ApplyExp(new PrimProcedure(Pattern.matchPatternMethod, language), new QuoteExp(syntaxPattern), new ReferenceExp(syntax_case_workVar.inputExpression), new ReferenceExp(translator.matchArray), new QuoteExp(IntNum.zero()));
                        int i = iVarCount - size;
                        Expression[] expressionArr2 = new Expression[i];
                        while (true) {
                            i--;
                            if (i < 0) {
                                break;
                            }
                            expressionArr2[i] = QuoteExp.undefined_exp;
                        }
                        patternScopePush.inits = expressionArr2;
                        Pair pair2 = (Pair) cdr;
                        if (pair2.getCdr() == LList.Empty) {
                            ifExp = translator.rewrite_car(pair2, syntaxForm);
                        } else {
                            Expression expressionRewrite_car = translator.rewrite_car(pair2, syntaxForm);
                            if (pair2.getCdr() instanceof Pair) {
                                Pair pair3 = (Pair) pair2.getCdr();
                                if (pair3.getCdr() == LList.Empty) {
                                    ifExp = new IfExp(expressionRewrite_car, translator.rewrite_car(pair3, syntaxForm), new ExitExp(blockExp));
                                }
                            }
                            expressionSyntaxError = translator.syntaxError("syntax-case:  bad clause");
                        }
                        patternScopePush.setBody(ifExp);
                        translator.pop(patternScopePush);
                        PatternScope.pop(translator);
                        blockExp.setBody(new IfExp(applyExp, patternScopePush, new ExitExp(blockExp)), rewriteClauses(((Pair) obj).getCdr(), syntax_case_workVar, translator));
                        return blockExp;
                    }
                }
            } else {
                expressionSyntaxError = translator.syntaxError("syntax-case:  bad clause list");
            }
            return expressionSyntaxError;
        } finally {
            translator.popPositionOf(objPushPositionOf);
        }
    }

    @Override // kawa.lang.Syntax
    public Expression rewriteForm(Pair form, Translator tr) {
        syntax_case_work work = new syntax_case_work();
        Object obj = form.getCdr();
        if ((obj instanceof Pair) && (((Pair) obj).getCdr() instanceof Pair)) {
            Expression[] linits = new Expression[2];
            LetExp let = new LetExp(linits);
            work.inputExpression = let.addDeclaration((Object) null);
            Declaration matchArrayOuter = tr.matchArray;
            Declaration matchArray = let.addDeclaration((Object) null);
            matchArray.setType(Compilation.objArrayType);
            matchArray.setCanRead(true);
            tr.matchArray = matchArray;
            work.inputExpression.setCanRead(true);
            tr.push(let);
            Pair form2 = (Pair) obj;
            linits[0] = tr.rewrite(form2.getCar());
            work.inputExpression.noteValue(linits[0]);
            Pair form3 = (Pair) form2.getCdr();
            work.literal_identifiers = SyntaxPattern.getLiteralsList(form3.getCar(), null, tr);
            let.body = rewriteClauses(form3.getCdr(), work, tr);
            tr.pop(let);
            Method allocVars = ClassType.make("kawa.lang.SyntaxPattern").getDeclaredMethod("allocVars", 2);
            Expression[] args = new Expression[2];
            args[0] = new QuoteExp(IntNum.make(work.maxVars));
            if (matchArrayOuter == null) {
                args[1] = QuoteExp.nullExp;
            } else {
                args[1] = new ReferenceExp(matchArrayOuter);
            }
            linits[1] = new ApplyExp(allocVars, args);
            matchArray.noteValue(linits[1]);
            tr.matchArray = matchArrayOuter;
            return let;
        }
        return tr.syntaxError("insufficiant arguments to syntax-case");
    }

    public static Object error(String kind, Object arg) {
        Translator tr = (Translator) Compilation.getCurrent();
        if (tr == null) {
            throw new RuntimeException("no match in syntax-case");
        }
        Syntax syntax = tr.getCurrentSyntax();
        String name = syntax == null ? "some syntax" : syntax.getName();
        String msg = "no matching case while expanding " + name;
        return tr.syntaxError(msg);
    }
}
