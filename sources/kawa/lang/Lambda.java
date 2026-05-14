package kawa.lang;

import gnu.expr.Declaration;
import gnu.expr.ErrorExp;
import gnu.expr.Expression;
import gnu.expr.Keyword;
import gnu.expr.LambdaExp;
import gnu.expr.LangExp;
import gnu.expr.QuoteExp;
import gnu.expr.ScopeExp;
import gnu.lists.Consumer;
import gnu.lists.Pair;
import gnu.lists.PairWithPosition;
import gnu.mapping.SimpleSymbol;
import kawa.standard.object;

/* JADX INFO: loaded from: classes.dex */
public class Lambda extends Syntax {
    public static final Keyword nameKeyword = Keyword.make("name");
    public Expression defaultDefault = QuoteExp.falseExp;
    public Object keyKeyword;
    public Object optionalKeyword;
    public Object restKeyword;

    public void setKeywords(Object optional, Object rest, Object key) {
        this.optionalKeyword = optional;
        this.restKeyword = rest;
        this.keyKeyword = key;
    }

    @Override // kawa.lang.Syntax
    public Expression rewriteForm(Pair form, Translator tr) {
        Expression exp = rewrite(form.getCdr(), tr);
        Translator.setLine(exp, form);
        return exp;
    }

    @Override // kawa.lang.Syntax
    public Expression rewrite(Object obj, Translator tr) {
        if (!(obj instanceof Pair)) {
            return tr.syntaxError("missing formals in lambda");
        }
        int old_errors = tr.getMessages().getErrorCount();
        LambdaExp lexp = new LambdaExp();
        Pair pair = (Pair) obj;
        Translator.setLine(lexp, pair);
        rewrite(lexp, pair.getCar(), pair.getCdr(), tr, null);
        if (tr.getMessages().getErrorCount() > old_errors) {
            return new ErrorExp("bad lambda expression");
        }
        return lexp;
    }

    public void rewrite(LambdaExp lexp, Object formals, Object body, Translator tr, TemplateScope templateScopeRest) {
        rewriteFormals(lexp, formals, tr, templateScopeRest);
        if (body instanceof PairWithPosition) {
            lexp.setFile(((PairWithPosition) body).getFileName());
        }
        rewriteBody(lexp, rewriteAttrs(lexp, body, tr), tr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:172:0x0407, code lost:
    
        r26.syntaxError(r23.optionalKeyword.toString() + " after " + r23.restKeyword + " or " + r23.keyKeyword);
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x0433, code lost:
    
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void rewriteFormals(gnu.expr.LambdaExp r24, java.lang.Object r25, kawa.lang.Translator r26, kawa.lang.TemplateScope r27) {
        /*
            Method dump skipped, instruction units count: 1237
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kawa.lang.Lambda.rewriteFormals(gnu.expr.LambdaExp, java.lang.Object, kawa.lang.Translator, kawa.lang.TemplateScope):void");
    }

    private static void addParam(Declaration decl, ScopeExp templateScope, LambdaExp lexp, Translator tr) {
        if (templateScope != null) {
            decl = tr.makeRenamedAlias(decl, templateScope);
        }
        lexp.addDeclaration(decl);
        if (templateScope != null) {
            decl.context = templateScope;
        }
    }

    public Object rewriteAttrs(LambdaExp lexp, Object body, Translator tr) {
        int accessFlag;
        int allocationFlag;
        int allocationFlag2;
        int accessFlag2;
        int allocationFlag3;
        Object attrValue;
        int accessFlag3;
        int accessFlag4;
        SyntaxForm syntax0 = null;
        int allocationFlag4 = 0;
        int accessFlag5 = 0;
        String allocationFlagName = null;
        String allocationFlagName2 = null;
        Object body2 = body;
        while (true) {
            if (body2 instanceof SyntaxForm) {
                syntax0 = (SyntaxForm) body2;
                body2 = syntax0.getDatum();
            } else {
                if (!(body2 instanceof Pair)) {
                    break;
                }
                Pair pair1 = (Pair) body2;
                Object attrName = Translator.stripSyntax(pair1.getCar());
                if (tr.matches(attrName, "::")) {
                    attrName = null;
                } else {
                    if (!(attrName instanceof Keyword)) {
                        break;
                    }
                    break;
                    break;
                }
                SyntaxForm syntax1 = syntax0;
                Object pair1_cdr = pair1.getCdr();
                while (pair1_cdr instanceof SyntaxForm) {
                    syntax1 = (SyntaxForm) pair1_cdr;
                    pair1_cdr = syntax1.getDatum();
                }
                if (!(pair1_cdr instanceof Pair)) {
                    break;
                }
                Pair pair2 = (Pair) pair1_cdr;
                if (attrName == null) {
                    if (!lexp.isClassMethod() || !"*init*".equals(lexp.getName())) {
                        lexp.body = new LangExp(new Object[]{pair2, syntax1});
                        accessFlag = accessFlag5;
                        allocationFlag = allocationFlag4;
                    } else {
                        tr.error('e', "explicit return type for '*init*' method");
                        accessFlag = accessFlag5;
                        allocationFlag = allocationFlag4;
                    }
                } else {
                    if (attrName == object.accessKeyword) {
                        Expression attrExpr = tr.rewrite_car(pair2, syntax1);
                        if (attrExpr instanceof QuoteExp) {
                            Object attrValue2 = ((QuoteExp) attrExpr).getValue();
                            if (attrValue2 instanceof SimpleSymbol) {
                                attrValue = attrValue2;
                            } else {
                                attrValue = attrValue2;
                                if (!(attrValue instanceof CharSequence)) {
                                    accessFlag2 = accessFlag5;
                                    allocationFlag3 = allocationFlag4;
                                }
                            }
                            Object body3 = lexp.nameDecl;
                            if (body3 == null) {
                                tr.error('e', "access: not allowed for anonymous function");
                                accessFlag2 = accessFlag5;
                                allocationFlag3 = allocationFlag4;
                                accessFlag5 = accessFlag2;
                                allocationFlag4 = allocationFlag3;
                            } else {
                                String value = attrValue.toString();
                                int accessFlag6 = accessFlag5;
                                if ("private".equals(value)) {
                                    accessFlag3 = 16777216;
                                    allocationFlag3 = allocationFlag4;
                                } else if ("protected".equals(value)) {
                                    accessFlag3 = 33554432;
                                    allocationFlag3 = allocationFlag4;
                                } else if ("public".equals(value)) {
                                    accessFlag3 = Declaration.PUBLIC_ACCESS;
                                    allocationFlag3 = allocationFlag4;
                                } else if ("package".equals(value)) {
                                    accessFlag3 = Declaration.PACKAGE_ACCESS;
                                    allocationFlag3 = allocationFlag4;
                                } else {
                                    allocationFlag3 = allocationFlag4;
                                    tr.error('e', "unknown access specifier");
                                    accessFlag3 = accessFlag6;
                                }
                                if (allocationFlagName2 == null || value == null) {
                                    accessFlag4 = accessFlag3;
                                } else {
                                    accessFlag4 = accessFlag3;
                                    tr.error('e', "duplicate access specifiers - " + allocationFlagName2 + " and " + value);
                                }
                                allocationFlagName2 = value;
                                accessFlag5 = accessFlag4;
                                allocationFlag4 = allocationFlag3;
                            }
                        } else {
                            accessFlag2 = accessFlag5;
                            allocationFlag3 = allocationFlag4;
                        }
                        tr.error('e', "access: value not a constant symbol or string");
                        accessFlag5 = accessFlag2;
                        allocationFlag4 = allocationFlag3;
                    } else {
                        accessFlag = accessFlag5;
                        allocationFlag = allocationFlag4;
                        Object body4 = object.allocationKeyword;
                        if (attrName == body4) {
                            Expression attrExpr2 = tr.rewrite_car(pair2, syntax1);
                            if (attrExpr2 instanceof QuoteExp) {
                                Object attrValue3 = ((QuoteExp) attrExpr2).getValue();
                                if ((attrValue3 instanceof SimpleSymbol) || (attrValue3 instanceof CharSequence)) {
                                    if (lexp.nameDecl == null) {
                                        tr.error('e', "allocation: not allowed for anonymous function");
                                        allocationFlag4 = allocationFlag;
                                        accessFlag5 = accessFlag;
                                    } else {
                                        String value2 = attrValue3.toString();
                                        if ("class".equals(value2) || "static".equals(value2)) {
                                            allocationFlag2 = 2048;
                                        } else if ("instance".equals(value2)) {
                                            allocationFlag2 = 4096;
                                        } else {
                                            tr.error('e', "unknown allocation specifier");
                                            allocationFlag2 = allocationFlag;
                                        }
                                        if (allocationFlagName != null && value2 != null) {
                                            tr.error('e', "duplicate allocation specifiers - " + allocationFlagName + " and " + value2);
                                        }
                                        allocationFlagName = value2;
                                        allocationFlag4 = allocationFlag2;
                                        accessFlag5 = accessFlag;
                                    }
                                }
                            }
                            tr.error('e', "allocation: value not a constant symbol or string");
                            allocationFlag4 = allocationFlag;
                            accessFlag5 = accessFlag;
                        } else if (attrName == object.throwsKeyword) {
                            Object attrValue4 = pair2.getCar();
                            int count = Translator.listLength(attrValue4);
                            if (count < 0) {
                                tr.error('e', "throws: not followed by a list");
                            } else {
                                Expression[] exps = new Expression[count];
                                SyntaxForm syntax2 = syntax1;
                                for (int i = 0; i < count; i++) {
                                    while (attrValue4 instanceof SyntaxForm) {
                                        syntax2 = (SyntaxForm) attrValue4;
                                        attrValue4 = syntax2.getDatum();
                                    }
                                    Pair pair3 = (Pair) attrValue4;
                                    exps[i] = tr.rewrite_car(pair3, syntax2);
                                    Translator.setLine(exps[i], pair3);
                                    attrValue4 = pair3.getCdr();
                                }
                                lexp.setExceptions(exps);
                            }
                        } else if (attrName == nameKeyword) {
                            Expression attrExpr3 = tr.rewrite_car(pair2, syntax1);
                            if (attrExpr3 instanceof QuoteExp) {
                                lexp.setName(((QuoteExp) attrExpr3).getValue().toString());
                            }
                        } else {
                            tr.error('w', "unknown procedure property " + attrName);
                        }
                    }
                    body2 = pair2.getCdr();
                }
                accessFlag5 = accessFlag;
                allocationFlag4 = allocationFlag;
                body2 = pair2.getCdr();
            }
        }
        int accessFlag7 = accessFlag5 | allocationFlag4;
        if (accessFlag7 != 0) {
            lexp.nameDecl.setFlag(accessFlag7);
        }
        if (syntax0 != null) {
            return SyntaxForms.fromDatumIfNeeded(body2, syntax0);
        }
        return body2;
    }

    public Object skipAttrs(LambdaExp lexp, Object body, Translator tr) {
        while (body instanceof Pair) {
            Pair pair = (Pair) body;
            if (!(pair.getCdr() instanceof Pair)) {
                break;
            }
            Object attrName = pair.getCar();
            if (!tr.matches(attrName, "::") && !(attrName instanceof Keyword)) {
                break;
            }
            body = ((Pair) pair.getCdr()).getCdr();
        }
        return body;
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:72:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void rewriteBody(gnu.expr.LambdaExp r20, java.lang.Object r21, kawa.lang.Translator r22) {
        /*
            Method dump skipped, instruction units count: 365
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kawa.lang.Lambda.rewriteBody(gnu.expr.LambdaExp, java.lang.Object, kawa.lang.Translator):void");
    }

    @Override // kawa.lang.Syntax, gnu.text.Printable
    public void print(Consumer out) {
        out.write("#<builtin lambda>");
    }
}
