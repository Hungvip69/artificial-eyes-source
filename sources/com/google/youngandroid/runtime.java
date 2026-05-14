package com.google.youngandroid;

import android.content.Context;
import android.os.Handler;
import android.text.format.Formatter;
import androidx.core.view.InputDeviceCompat;
import androidx.fragment.app.FragmentTransaction;
import appinventor.ai_quachtanhung124.artificial_eyes.R;
import com.google.api.client.http.HttpStatusCodes;
import com.google.appinventor.components.common.ComponentConstants;
import com.google.appinventor.components.common.OptionList;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.common.YaVersion;
import com.google.appinventor.components.runtime.Clock;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.ComponentContainer;
import com.google.appinventor.components.runtime.EventDispatcher;
import com.google.appinventor.components.runtime.Form;
import com.google.appinventor.components.runtime.OptionHelper;
import com.google.appinventor.components.runtime.errors.PermissionException;
import com.google.appinventor.components.runtime.errors.StopBlocksExecution;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import com.google.appinventor.components.runtime.util.AssetFetcher;
import com.google.appinventor.components.runtime.util.ComponentUtil;
import com.google.appinventor.components.runtime.util.Continuation;
import com.google.appinventor.components.runtime.util.ContinuationUtil;
import com.google.appinventor.components.runtime.util.CsvUtil;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.FullScreenVideoUtil;
import com.google.appinventor.components.runtime.util.JavaStringUtils;
import com.google.appinventor.components.runtime.util.JsonUtil;
import com.google.appinventor.components.runtime.util.MultiThreadUtil;
import com.google.appinventor.components.runtime.util.PropertyUtil;
import com.google.appinventor.components.runtime.util.RetValManager;
import com.google.appinventor.components.runtime.util.TypeUtil;
import com.google.appinventor.components.runtime.util.YailDictionary;
import com.google.appinventor.components.runtime.util.YailList;
import com.google.appinventor.components.runtime.util.YailMatrix;
import com.google.appinventor.components.runtime.util.YailNumberToString;
import com.google.appinventor.components.runtime.util.YailObject;
import com.google.appinventor.components.runtime.util.YailProcedure;
import gnu.bytecode.ClassType;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.expr.Special;
import gnu.kawa.functions.AddOp;
import gnu.kawa.functions.Apply;
import gnu.kawa.functions.Arithmetic;
import gnu.kawa.functions.BitwiseOp;
import gnu.kawa.functions.CallCC;
import gnu.kawa.functions.DivideOp;
import gnu.kawa.functions.Format;
import gnu.kawa.functions.GetNamedInstancePart;
import gnu.kawa.functions.GetNamedPart;
import gnu.kawa.functions.IsEqual;
import gnu.kawa.functions.LispEscapeFormat;
import gnu.kawa.functions.MultiplyOp;
import gnu.kawa.functions.NumberCompare;
import gnu.kawa.lispexpr.LangObjType;
import gnu.kawa.lispexpr.LispLanguage;
import gnu.kawa.reflect.Invoke;
import gnu.kawa.reflect.SlotGet;
import gnu.kawa.reflect.SlotSet;
import gnu.lists.Consumer;
import gnu.lists.FString;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.lists.PairWithPosition;
import gnu.mapping.CallContext;
import gnu.mapping.Environment;
import gnu.mapping.Location;
import gnu.mapping.Procedure;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Symbol;
import gnu.mapping.ThreadLocation;
import gnu.mapping.UnboundLocationException;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import gnu.math.DFloNum;
import gnu.math.IntFraction;
import gnu.math.IntNum;
import gnu.math.Numeric;
import gnu.math.RealNum;
import gnu.text.Char;
import java.util.Calendar;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kawa.Telnet;
import kawa.lang.Macro;
import kawa.lang.Quote;
import kawa.lang.SyntaxForms;
import kawa.lang.SyntaxPattern;
import kawa.lang.SyntaxRule;
import kawa.lang.SyntaxRules;
import kawa.lang.SyntaxTemplate;
import kawa.lang.TemplateScope;
import kawa.lib.characters;
import kawa.lib.lists;
import kawa.lib.misc;
import kawa.lib.numbers;
import kawa.lib.ports;
import kawa.lib.strings;
import kawa.lib.thread;
import kawa.standard.Scheme;
import kawa.standard.append;
import kawa.standard.expt;
import kawa.standard.syntax_case;

/* JADX INFO: compiled from: runtime3808032275111475787.scm */
/* JADX INFO: loaded from: classes.dex */
public class runtime extends ModuleBody implements Runnable {
    public static final ModuleMethod $Pcset$Mnand$Mncoerce$Mnproperty$Ex;
    public static final ModuleMethod $Pcset$Mnsubform$Mnlayout$Mnproperty$Ex;
    public static Object $Stalpha$Mnopaque$St;
    public static Object $Stcolor$Mnalpha$Mnposition$St;
    public static Object $Stcolor$Mnblue$Mnposition$St;
    public static Object $Stcolor$Mngreen$Mnposition$St;
    public static Object $Stcolor$Mnred$Mnposition$St;
    public static Boolean $Stdebug$St;
    public static final ModuleMethod $Stformat$Mninexact$St;
    public static Object $Stinit$Mnthunk$Mnenvironment$St;
    public static Object $Stinit$Mnthunk$Mnlist$St;
    public static String $Stjava$Mnexception$Mnmessage$St;
    public static final Macro $Stlist$Mnfor$Mnruntime$St;
    public static Object $Stmax$Mncolor$Mncomponent$St;
    public static Object $Stnon$Mncoercible$Mnvalue$St;
    public static IntNum $Stnum$Mnconnections$St;
    public static DFloNum $Stpi$St;
    public static Random $Strandom$Mnnumber$Mngenerator$St;
    public static IntNum $Strepl$Mnport$St;
    public static String $Strepl$Mnserver$Mnaddress$St;
    public static Boolean $Strun$Mntelnet$Mnrepl$St;
    public static Object $Sttest$Mnenvironment$St;
    public static Object $Sttest$Mnglobal$Mnvar$Mnenvironment$St;
    public static Boolean $Sttesting$St;
    public static String $Stthe$Mnempty$Mnstring$Mnprinted$Mnrep$St;
    public static Object $Stthe$Mnnull$Mnvalue$Mnprinted$Mnrep$St;
    public static Object $Stthe$Mnnull$Mnvalue$St;
    public static Object $Stthis$Mnform$Mnname$St;
    public static Object $Stthis$Mnform$St;
    public static Object $Stthis$Mnis$Mnthe$Mnrepl$St;
    public static Object $Stui$Mnhandler$St;
    public static final ModuleMethod $Styail$Mnbreak$St;
    public static SimpleSymbol $Styail$Mnlist$St;
    public static final runtime $instance;
    public static final Class AssetFetcher;
    public static final Class ContinuationUtil;
    public static final Class CsvUtil;
    public static final Class Double;
    public static Object ERROR_DIVISION_BY_ZERO;
    public static final Class Float;
    public static final Class Integer;
    public static final Class JavaCollection;
    public static final Class JavaIterator;
    public static final Class JavaMap;
    public static final Class JavaStringUtils;
    public static final Class KawaEnvironment;
    static final SimpleSymbol Lit0;
    static final SimpleSymbol Lit1;
    static final SimpleSymbol Lit10;
    static final SimpleSymbol Lit100;
    static final SyntaxRules Lit101;
    static final SimpleSymbol Lit102;
    static final SyntaxRules Lit103;
    static final SimpleSymbol Lit104;
    static final SyntaxRules Lit105;
    static final SimpleSymbol Lit106;
    static final SyntaxRules Lit107;
    static final SimpleSymbol Lit108;
    static final SyntaxRules Lit109;
    static final SimpleSymbol Lit11;
    static final SimpleSymbol Lit110;
    static final SimpleSymbol Lit111;
    static final SyntaxPattern Lit112;
    static final SyntaxTemplate Lit113;
    static final SimpleSymbol Lit114;
    static final SyntaxPattern Lit115;
    static final SyntaxTemplate Lit116;
    static final SimpleSymbol Lit117;
    static final SyntaxRules Lit118;
    static final SimpleSymbol Lit119;
    static final SimpleSymbol Lit12;
    static final SyntaxRules Lit120;
    static final SimpleSymbol Lit121;
    static final SyntaxPattern Lit122;
    static final SyntaxTemplate Lit123;
    static final SyntaxTemplate Lit124;
    static final SyntaxTemplate Lit125;
    static final SimpleSymbol Lit126;
    static final SyntaxTemplate Lit127;
    static final SyntaxTemplate Lit128;
    static final SyntaxTemplate Lit129;
    static final SimpleSymbol Lit13;
    static final SimpleSymbol Lit130;
    static final SyntaxPattern Lit131;
    static final SyntaxTemplate Lit132;
    static final SyntaxTemplate Lit133;
    static final SimpleSymbol Lit134;
    static final SyntaxTemplate Lit135;
    static final SyntaxTemplate Lit136;
    static final SyntaxTemplate Lit137;
    static final SyntaxTemplate Lit138;
    static final SimpleSymbol Lit139;
    static final SimpleSymbol Lit14;
    static final SyntaxRules Lit140;
    static final SimpleSymbol Lit141;
    static final SyntaxRules Lit142;
    static final SimpleSymbol Lit143;
    static final SimpleSymbol Lit144;
    static final SimpleSymbol Lit145;
    static final SimpleSymbol Lit146;
    static final SimpleSymbol Lit147;
    static final SimpleSymbol Lit148;
    static final SimpleSymbol Lit149;
    static final SimpleSymbol Lit15;
    static final SimpleSymbol Lit150;
    static final SimpleSymbol Lit151;
    static final PairWithPosition Lit152;
    static final PairWithPosition Lit153;
    static final PairWithPosition Lit154;
    static final PairWithPosition Lit155;
    static final PairWithPosition Lit156;
    static final PairWithPosition Lit157;
    static final PairWithPosition Lit158;
    static final SimpleSymbol Lit159;
    static final SimpleSymbol Lit16;
    static final SimpleSymbol Lit160;
    static final PairWithPosition Lit161;
    static final PairWithPosition Lit162;
    static final PairWithPosition Lit163;
    static final PairWithPosition Lit164;
    static final PairWithPosition Lit165;
    static final SimpleSymbol Lit166;
    static final PairWithPosition Lit167;
    static final PairWithPosition Lit168;
    static final PairWithPosition Lit169;
    static final SimpleSymbol Lit17;
    static final PairWithPosition Lit170;
    static final PairWithPosition Lit171;
    static final PairWithPosition Lit172;
    static final PairWithPosition Lit173;
    static final PairWithPosition Lit174;
    static final PairWithPosition Lit175;
    static final PairWithPosition Lit176;
    static final PairWithPosition Lit177;
    static final SimpleSymbol Lit18;
    static final SimpleSymbol Lit19;
    static final PairWithPosition Lit2;
    static final SimpleSymbol Lit20;
    static final SimpleSymbol Lit21;
    static final SimpleSymbol Lit22;
    static final DFloNum Lit23;
    static final DFloNum Lit24;
    static final DFloNum Lit25;
    static final DFloNum Lit26;
    static final SimpleSymbol Lit27;
    static final IntNum Lit28;
    static final IntNum Lit29;
    static final SimpleSymbol Lit3;
    static final IntNum Lit30;
    static final IntNum Lit31;
    static final DFloNum Lit32;
    static final IntNum Lit33;
    static final DFloNum Lit34;
    static final DFloNum Lit35;
    static final IntNum Lit36;
    static final IntNum Lit37;
    static final IntNum Lit38;
    static final IntNum Lit39;
    static final Class Lit4;
    static final Char Lit40;
    static final Char Lit41;
    static final Char Lit42;
    static final Char Lit43;
    static final DFloNum Lit44;
    static final IntFraction Lit45;
    static final IntFraction Lit46;
    static final SimpleSymbol Lit47;
    static final SimpleSymbol Lit48;
    static final PairWithPosition Lit49;
    static final SimpleSymbol Lit5;
    static final SimpleSymbol Lit50;
    static final GetNamedInstancePart Lit51;
    static final GetNamedInstancePart Lit52;
    static final SimpleSymbol Lit53;
    static final IntNum Lit54;
    static final IntNum Lit55;
    static final SimpleSymbol Lit56;
    static final IntNum Lit57;
    static final IntNum Lit58;
    static final IntNum Lit59;
    static final SimpleSymbol Lit6;
    static final IntNum Lit60;
    static final IntNum Lit61;
    static final SimpleSymbol Lit62;
    static final SimpleSymbol Lit63;
    static final IntNum Lit64;
    static final SimpleSymbol Lit65;
    static final SimpleSymbol Lit66;
    static final SimpleSymbol Lit67;
    static final SimpleSymbol Lit68;
    static final SimpleSymbol Lit69;
    static final SimpleSymbol Lit7;
    static final SimpleSymbol Lit70;
    static final SyntaxPattern Lit71;
    static final SyntaxTemplate Lit72;
    static final SimpleSymbol Lit73;
    static final SyntaxRules Lit74;
    static final SimpleSymbol Lit75;
    static final SimpleSymbol Lit76;
    static final SimpleSymbol Lit77;
    static final SimpleSymbol Lit78;
    static final SimpleSymbol Lit79;
    static final SimpleSymbol Lit8;
    static final SimpleSymbol Lit80;
    static final SimpleSymbol Lit81;
    static final SimpleSymbol Lit82;
    static final SyntaxRules Lit83;
    static final SimpleSymbol Lit84;
    static final SyntaxRules Lit85;
    static final SimpleSymbol Lit86;
    static final SimpleSymbol Lit87;
    static final SimpleSymbol Lit88;
    static final SimpleSymbol Lit89;
    static final SimpleSymbol Lit9;
    static final SimpleSymbol Lit90;
    static final SimpleSymbol Lit91;
    static final SimpleSymbol Lit92;
    static final SyntaxRules Lit93;
    static final SimpleSymbol Lit94;
    static final SyntaxRules Lit95;
    static final SimpleSymbol Lit96;
    static final SyntaxRules Lit97;
    static final SimpleSymbol Lit98;
    static final SyntaxRules Lit99;
    public static final Class Long;
    public static final Class Matcher;
    public static final Class MultiThreadUtil;
    public static final Class Pattern;
    public static final Class PermissionException;
    public static final Class Short;
    public static final ClassType SimpleForm;
    public static final Class StopBlocksExecution;
    public static final Class String;
    public static final Class TypeUtil;
    public static final Class YailDictionary;
    public static final Class YailList;
    public static final Class YailMatrix;
    public static final Class YailNumberToString;
    public static final Class YailProcedure;
    public static final Class YailRuntimeError;
    public static final ModuleMethod acos$Mndegrees;
    public static final Macro add$Mncomponent;
    public static final ModuleMethod add$Mncomponent$Mnwithin$Mnrepl;
    public static final ModuleMethod add$Mnglobal$Mnvar$Mnto$Mncurrent$Mnform$Mnenvironment;
    public static final ModuleMethod add$Mninit$Mnthunk;
    public static final ModuleMethod add$Mnto$Mncurrent$Mnform$Mnenvironment;
    public static final ModuleMethod all$Mncoercible$Qu;
    public static final ModuleMethod alternate$Mnnumber$Mn$Grstring$Mnbinary;
    public static final Macro and$Mndelayed;
    public static final ModuleMethod android$Mnlog;
    public static final ModuleMethod appinventor$Mnnumber$Mn$Grstring;
    public static final ModuleMethod array$Mn$Grlist;
    public static final ModuleMethod as$Mnnumber;
    public static final ModuleMethod asin$Mndegrees;
    public static final ModuleMethod atan$Mndegrees;
    public static final ModuleMethod atan2$Mndegrees;
    public static final ModuleMethod avg;
    public static final ModuleMethod boolean$Mn$Grstring;
    public static final ModuleMethod boolean$Mneq$Qu;
    public static final ModuleMethod boolean$Mnleq$Qu;
    public static final ModuleMethod boolean$Mnlt$Qu;
    public static final ModuleMethod but$Mnlast;
    public static final ModuleMethod call$MnInitialize$Mnof$Mncomponents;
    public static final ModuleMethod call$MnInitialize$Mnof$Mncomponents$Mnlibrary;
    public static final ModuleMethod call$Mncomponent$Mnmethod;
    public static final ModuleMethod call$Mncomponent$Mnmethod$Mnwith$Mnblocking$Mncontinuation;
    public static final ModuleMethod call$Mncomponent$Mnmethod$Mnwith$Mncontinuation;
    public static final ModuleMethod call$Mncomponent$Mntype$Mnmethod;
    public static final ModuleMethod call$Mncomponent$Mntype$Mnmethod$Mnwith$Mnblocking$Mncontinuation;
    public static final ModuleMethod call$Mncomponent$Mntype$Mnmethod$Mnwith$Mncontinuation;
    public static final ModuleMethod call$Mnwith$Mncoerced$Mnargs;
    public static final ModuleMethod call$Mnyail$Mnprimitive;
    public static final ModuleMethod call$Mnyail$Mnprocedure;
    public static final ModuleMethod call$Mnyail$Mnprocedure$Mninput$Mnlist;
    public static final ModuleMethod clarify;
    public static final ModuleMethod clarify1;
    public static final ModuleMethod clear$Mncurrent$Mnform;
    public static final ModuleMethod clear$Mninit$Mnthunks;
    public static Object clip$Mnto$Mnjava$Mnint$Mnrange;
    public static final ModuleMethod close$Mnapplication;
    public static final ModuleMethod close$Mnscreen;
    public static final ModuleMethod close$Mnscreen$Mnwith$Mnplain$Mntext;
    public static final ModuleMethod close$Mnscreen$Mnwith$Mnvalue;
    public static final ModuleMethod coerce$Mnarg;
    public static final ModuleMethod coerce$Mnargs;
    public static final ModuleMethod coerce$Mnto$Mnboolean;
    public static final ModuleMethod coerce$Mnto$Mncomponent;
    public static final ModuleMethod coerce$Mnto$Mncomponent$Mnand$Mnverify;
    public static final ModuleMethod coerce$Mnto$Mncomponent$Mnof$Mntype;
    public static final ModuleMethod coerce$Mnto$Mndictionary;
    public static final ModuleMethod coerce$Mnto$Mndouble$Mnarray;
    public static final ModuleMethod coerce$Mnto$Mnenum;
    public static final ModuleMethod coerce$Mnto$Mninstant;
    public static final ModuleMethod coerce$Mnto$Mnkey;
    public static final ModuleMethod coerce$Mnto$Mnmatrix;
    public static final ModuleMethod coerce$Mnto$Mnnumber;
    public static final ModuleMethod coerce$Mnto$Mnnumber$Mnlist;
    public static final ModuleMethod coerce$Mnto$Mnpair;
    public static final ModuleMethod coerce$Mnto$Mnstring;
    public static final ModuleMethod coerce$Mnto$Mntext;
    public static final ModuleMethod coerce$Mnto$Mnyail$Mnlist;
    public static final ModuleMethod component$Mneq$Qu;
    public static final ModuleMethod component$Mnleq$Qu;
    public static final ModuleMethod component$Mnlt$Qu;
    public static final ModuleMethod convert$Mnto$Mnstrings$Mnfor$Mncsv;
    public static final ModuleMethod cos$Mndegrees;
    public static final ModuleMethod create$Mnyail$Mnprocedure;
    public static final ModuleMethod create$Mnyail$Mnprocedure$Mnwith$Mnname;
    public static final Macro def;
    public static final Macro define$Mnevent;
    public static final Macro define$Mnevent$Mnhelper;
    public static final Macro define$Mnform;
    public static final Macro define$Mnform$Mninternal;
    public static final Macro define$Mngeneric$Mnevent;
    public static final Macro define$Mnrepl$Mnform;
    public static final ModuleMethod degrees$Mn$Grradians;
    public static final ModuleMethod degrees$Mn$Grradians$Mninternal;
    public static final ModuleMethod delete$Mnfrom$Mncurrent$Mnform$Mnenvironment;
    public static final Macro do$Mnafter$Mnform$Mncreation;
    public static final ModuleMethod enum$Mntype$Qu;
    public static final ModuleMethod enum$Qu;
    public static final Class errorMessages;
    public static final ModuleMethod filter$Mntype$Mnin$Mncurrent$Mnform$Mnenvironment;
    public static final Macro filter_nondest;
    public static final Macro foreach;
    public static final Macro foreach$Mnwith$Mnbreak;
    public static final ModuleMethod format$Mnas$Mndecimal;
    public static final Macro forrange;
    public static final Macro forrange$Mnwith$Mnbreak;
    public static final Macro gen$Mnevent$Mnname;
    public static final Macro gen$Mngeneric$Mnevent$Mnname;
    public static final Macro gen$Mnsimple$Mncomponent$Mntype;
    public static final ModuleMethod generate$Mnruntime$Mntype$Mnerror;
    public static final Macro get$Mnall$Mncomponents;
    public static final Macro get$Mncomponent;
    public static final ModuleMethod get$Mndisplay$Mnrepresentation;
    public static final ModuleMethod get$Mninit$Mnthunk;
    public static Object get$Mnjson$Mndisplay$Mnrepresentation;
    public static Object get$Mnoriginal$Mndisplay$Mnrepresentation;
    public static final ModuleMethod get$Mnplain$Mnstart$Mntext;
    public static final ModuleMethod get$Mnproperty;
    public static final ModuleMethod get$Mnproperty$Mnand$Mncheck;
    public static final ModuleMethod get$Mnserver$Mnaddress$Mnfrom$Mnwifi;
    public static final ModuleMethod get$Mnstart$Mnvalue;
    public static final Macro get$Mnvar;
    public static final ModuleMethod gm;
    static Numeric highest;
    public static final ModuleMethod in$Mnui;
    public static final ModuleMethod init$Mnruntime;
    public static final ModuleMethod insert$Mnyail$Mnlist$Mnheader;
    public static final ModuleMethod internal$Mnbinary$Mnconvert;
    public static final ModuleMethod is$Mnbase10$Qu;
    public static final ModuleMethod is$Mnbinary$Qu;
    public static final ModuleMethod is$Mncoercible$Qu;
    public static final ModuleMethod is$Mneq$Qu;
    public static final ModuleMethod is$Mnhexadecimal$Qu;
    public static final ModuleMethod is$Mnleq$Qu;
    public static final ModuleMethod is$Mnlt$Qu;
    public static final ModuleMethod is$Mnnumber$Qu;
    public static final ModuleMethod java$Mncollection$Mn$Grkawa$Mnlist;
    public static final ModuleMethod java$Mncollection$Mn$Gryail$Mnlist;
    public static final ModuleMethod java$Mnmap$Mn$Gryail$Mndictionary;
    public static final ModuleMethod join$Mnstrings;
    public static final ModuleMethod kawa$Mnlist$Mn$Gryail$Mnlist;
    static final ModuleMethod lambda$Fn11;
    static final ModuleMethod lambda$Fn16;
    static final ModuleMethod lambda$Fn8;
    public static final Macro lexical$Mnvalue;
    public static final ModuleMethod list$Mneq$Qu;
    public static final ModuleMethod list$Mnleq$Qu;
    public static final ModuleMethod list$Mnlt$Qu;
    public static final ModuleMethod list$Mnmax;
    public static final ModuleMethod list$Mnmin;
    public static final ModuleMethod list$Mnnumber$Mnonly;
    static final Location loc$Arrays;
    static final Location loc$component;
    static final Location loc$every;
    static final Location loc$non$Mncoercible$Mnvalue;
    static final Location loc$possible$Mncomponent;
    public static final ModuleMethod lookup$Mncomponent;
    public static final ModuleMethod lookup$Mnglobal$Mnvar$Mnin$Mncurrent$Mnform$Mnenvironment;
    public static final ModuleMethod lookup$Mnin$Mncurrent$Mnform$Mnenvironment;
    static Numeric lowest;
    public static final ModuleMethod make$Mncolor;
    public static final ModuleMethod make$Mndictionary$Mnpair;
    public static final ModuleMethod make$Mndisjunct;
    public static final ModuleMethod make$Mnexact$Mnyail$Mninteger;
    public static final ModuleMethod make$Mnyail$Mndictionary;
    public static final ModuleMethod make$Mnyail$Mnlist;
    public static final ModuleMethod make$Mnyail$Mnmatrix;
    public static final ModuleMethod make$Mnyail$Mnmatrix$Mnmultidim;
    public static final Macro map_nondest;
    public static final ModuleMethod math$Mnconvert$Mnbin$Mndec;
    public static final ModuleMethod math$Mnconvert$Mndec$Mnbin;
    public static final ModuleMethod math$Mnconvert$Mndec$Mnhex;
    public static final ModuleMethod math$Mnconvert$Mnhex$Mndec;
    public static final Macro maxcomparator$Mnnondest;
    public static final ModuleMethod maxl;
    public static final ModuleMethod mean;
    public static final ModuleMethod merge$Mnkey;
    public static final ModuleMethod mergesort$Mnkey;
    public static final Macro mincomparator$Mnnondest;
    public static final ModuleMethod minl;
    public static final ModuleMethod mode;
    public static final ModuleMethod num$Mnargs$Mnyail$Mnprocedure;
    public static final ModuleMethod open$Mnanother$Mnscreen;
    public static final ModuleMethod open$Mnanother$Mnscreen$Mnwith$Mnstart$Mnvalue;
    public static final Macro or$Mndelayed;
    public static final ModuleMethod padded$Mnstring$Mn$Grnumber;
    public static final ModuleMethod pair$Mnok$Qu;
    public static final ModuleMethod patched$Mnnumber$Mn$Grstring$Mnbinary;
    public static final ModuleMethod process$Mnand$Mndelayed;
    public static final ModuleMethod process$Mnor$Mndelayed;
    public static final Macro process$Mnrepl$Mninput;
    public static final ModuleMethod radians$Mn$Grdegrees;
    public static final ModuleMethod radians$Mn$Grdegrees$Mninternal;
    public static final ModuleMethod random$Mnfraction;
    public static final ModuleMethod random$Mninteger;
    public static final ModuleMethod random$Mnset$Mnseed;
    public static final Macro reduceovereach;
    public static final ModuleMethod remove$Mncomponent;
    public static final ModuleMethod rename$Mncomponent;
    public static final ModuleMethod rename$Mnin$Mncurrent$Mnform$Mnenvironment;
    public static final ModuleMethod reset$Mncurrent$Mnform$Mnenvironment;
    public static final ModuleMethod run$Mnafter$Mnperiod;
    public static final ModuleMethod run$Mnin$Mnbackground;
    public static final ModuleMethod sample$Mnstd$Mndev;
    public static final ModuleMethod sanitize$Mnatomic;
    public static final ModuleMethod sanitize$Mncomponent$Mndata;
    public static final ModuleMethod sanitize$Mnreturn$Mnvalue;
    public static final ModuleMethod send$Mnto$Mnblock;
    public static final ModuleMethod set$Mnand$Mncoerce$Mnproperty$Ex;
    public static final ModuleMethod set$Mnand$Mncoerce$Mnproperty$Mnand$Mncheck$Ex;
    public static final ModuleMethod set$Mnform$Mnname;
    public static final Macro set$Mnlexical$Ex;
    public static final ModuleMethod set$Mnthis$Mnform;
    public static final Macro set$Mnvar$Ex;
    public static final ModuleMethod set$Mnyail$Mnlist$Mncontents$Ex;
    public static final ModuleMethod setup$Mnthunk$Mnlist;
    public static final ModuleMethod show$Mnarglist$Mnno$Mnparens;
    public static final ModuleMethod signal$Mnruntime$Mnerror;
    public static final ModuleMethod signal$Mnruntime$Mnform$Mnerror;
    public static final String simple$Mncomponent$Mnpackage$Mnname;
    public static final ModuleMethod sin$Mndegrees;
    public static final Macro sortcomparator_nondest;
    public static final Macro sortkey_nondest;
    public static final ModuleMethod split$Mncolor;
    public static final ModuleMethod std$Mndev;
    public static final ModuleMethod std$Mnerr;
    public static final ModuleMethod string$Mncontains;
    public static final ModuleMethod string$Mncontains$Mnall;
    public static final ModuleMethod string$Mncontains$Mnany;
    public static final ModuleMethod string$Mnempty$Qu;
    public static final ModuleMethod string$Mnreplace;
    public static final ModuleMethod string$Mnreplace$Mnall;
    public static final ModuleMethod string$Mnreplace$Mnmappings$Mndictionary;
    public static final ModuleMethod string$Mnreplace$Mnmappings$Mnearliest$Mnoccurrence;
    public static final ModuleMethod string$Mnreplace$Mnmappings$Mnlongest$Mnstring;
    public static final ModuleMethod string$Mnreverse;
    public static final ModuleMethod string$Mnsplit;
    public static final ModuleMethod string$Mnsplit$Mnat$Mnany;
    public static final ModuleMethod string$Mnsplit$Mnat$Mnfirst;
    public static final ModuleMethod string$Mnsplit$Mnat$Mnfirst$Mnof$Mnany;
    public static final ModuleMethod string$Mnsplit$Mnat$Mnspaces;
    public static final ModuleMethod string$Mnstarts$Mnat;
    public static final ModuleMethod string$Mnsubstring;
    public static final ModuleMethod string$Mnto$Mnlower$Mncase;
    public static final ModuleMethod string$Mnto$Mnupper$Mncase;
    public static final ModuleMethod string$Mntrim;
    public static final ModuleMethod sum$Mnmean$Mnsquare$Mndiff;
    public static final ModuleMethod symbol$Mnappend;
    public static final ModuleMethod tan$Mndegrees;
    public static final ModuleMethod text$Mndeobfuscate;
    public static final ModuleMethod type$Mn$Grclass;
    public static final ModuleMethod type$Mnlt$Qu;
    public static final ModuleMethod unicode$Mnstring$Mn$Grlist;
    public static final Macro use$Mnjson$Mnformat;

    /* JADX INFO: renamed from: while, reason: not valid java name */
    public static final Macro f11while;
    public static final Macro while$Mnwith$Mnbreak;
    public static final ModuleMethod yail$Mnalist$Mnlookup;
    public static final ModuleMethod yail$Mnatomic$Mnequal$Qu;
    public static final ModuleMethod yail$Mnceiling;
    public static final ModuleMethod yail$Mndictionary$Mnalist$Mnto$Mndict;
    public static final ModuleMethod yail$Mndictionary$Mncombine$Mndicts;
    public static final ModuleMethod yail$Mndictionary$Mncopy;
    public static final ModuleMethod yail$Mndictionary$Mndelete$Mnpair;
    public static final ModuleMethod yail$Mndictionary$Mndict$Mnto$Mnalist;
    public static final ModuleMethod yail$Mndictionary$Mnget$Mnkeys;
    public static final ModuleMethod yail$Mndictionary$Mnget$Mnvalues;
    public static final ModuleMethod yail$Mndictionary$Mnis$Mnkey$Mnin;
    public static final ModuleMethod yail$Mndictionary$Mnlength;
    public static final ModuleMethod yail$Mndictionary$Mnlookup;
    public static final ModuleMethod yail$Mndictionary$Mnrecursive$Mnlookup;
    public static final ModuleMethod yail$Mndictionary$Mnrecursive$Mnset;
    public static final ModuleMethod yail$Mndictionary$Mnset$Mnpair;
    public static final ModuleMethod yail$Mndictionary$Mnwalk;
    public static final ModuleMethod yail$Mndictionary$Qu;
    public static final ModuleMethod yail$Mndivide;
    public static final ModuleMethod yail$Mndrop;
    public static final ModuleMethod yail$Mnequal$Qu;
    public static final ModuleMethod yail$Mnfloor;
    public static final ModuleMethod yail$Mnfor$Mneach;
    public static final ModuleMethod yail$Mnfor$Mnrange;
    public static final ModuleMethod yail$Mnfor$Mnrange$Mnwith$Mnnumeric$Mnchecked$Mnargs;
    public static final ModuleMethod yail$Mnindexof;
    public static final ModuleMethod yail$Mnlist$Mn$Grkawa$Mnlist;
    public static final ModuleMethod yail$Mnlist$Mnadd$Mnto$Mnlist$Ex;
    public static final ModuleMethod yail$Mnlist$Mnappend$Ex;
    public static final ModuleMethod yail$Mnlist$Mnbut$Mnfirst;
    public static final ModuleMethod yail$Mnlist$Mnbut$Mnlast;
    public static final ModuleMethod yail$Mnlist$Mncandidate$Qu;
    public static final ModuleMethod yail$Mnlist$Mncontents;
    public static final ModuleMethod yail$Mnlist$Mncopy;
    public static final ModuleMethod yail$Mnlist$Mnempty$Qu;
    public static final ModuleMethod yail$Mnlist$Mnfilter;
    public static final ModuleMethod yail$Mnlist$Mnfrom$Mncsv$Mnrow;
    public static final ModuleMethod yail$Mnlist$Mnfrom$Mncsv$Mntable;
    public static final ModuleMethod yail$Mnlist$Mnget$Mnitem;
    public static final ModuleMethod yail$Mnlist$Mnindex;
    public static final ModuleMethod yail$Mnlist$Mninsert$Mnitem$Ex;
    public static final ModuleMethod yail$Mnlist$Mnjoin$Mnwith$Mnseparator;
    public static final ModuleMethod yail$Mnlist$Mnlength;
    public static final ModuleMethod yail$Mnlist$Mnmap;
    public static final ModuleMethod yail$Mnlist$Mnmax$Mncomparator;
    public static final ModuleMethod yail$Mnlist$Mnmember$Qu;
    public static final ModuleMethod yail$Mnlist$Mnmin$Mncomparator;
    public static final ModuleMethod yail$Mnlist$Mnnecessary;
    public static final ModuleMethod yail$Mnlist$Mnpick$Mnrandom;
    public static final ModuleMethod yail$Mnlist$Mnreduce;
    public static final ModuleMethod yail$Mnlist$Mnremove$Mnitem$Ex;
    public static final ModuleMethod yail$Mnlist$Mnreverse;
    public static final ModuleMethod yail$Mnlist$Mnset$Mnitem$Ex;
    public static final ModuleMethod yail$Mnlist$Mnslice;
    public static final ModuleMethod yail$Mnlist$Mnsort;
    public static final ModuleMethod yail$Mnlist$Mnsort$Mncomparator;
    public static final ModuleMethod yail$Mnlist$Mnsort$Mnkey;
    public static final ModuleMethod yail$Mnlist$Mnto$Mncsv$Mnrow;
    public static final ModuleMethod yail$Mnlist$Mnto$Mncsv$Mntable;
    public static final ModuleMethod yail$Mnlist$Qu;
    public static final ModuleMethod yail$Mnmatrix$Mnadd;
    public static final ModuleMethod yail$Mnmatrix$Mnequal$Qu;
    public static final ModuleMethod yail$Mnmatrix$Mnget$Mncell;
    public static final ModuleMethod yail$Mnmatrix$Mnget$Mncolumn;
    public static final ModuleMethod yail$Mnmatrix$Mnget$Mndims;
    public static final ModuleMethod yail$Mnmatrix$Mnget$Mnrow;
    public static final ModuleMethod yail$Mnmatrix$Mninverse;
    public static final ModuleMethod yail$Mnmatrix$Mnmultiply;
    public static final ModuleMethod yail$Mnmatrix$Mnpower;
    public static final ModuleMethod yail$Mnmatrix$Mnrotate$Mnleft;
    public static final ModuleMethod yail$Mnmatrix$Mnrotate$Mnright;
    public static final ModuleMethod yail$Mnmatrix$Mnset$Mncell$Ex;
    public static final ModuleMethod yail$Mnmatrix$Mnsubtract;
    public static final ModuleMethod yail$Mnmatrix$Mnto$Mnalist;
    public static final ModuleMethod yail$Mnmatrix$Mntranspose;
    public static final ModuleMethod yail$Mnmatrix$Qu;
    public static final ModuleMethod yail$Mnmerge;
    public static final ModuleMethod yail$Mnmergesort;
    public static final ModuleMethod yail$Mnmul;
    public static final ModuleMethod yail$Mnnot;
    public static final ModuleMethod yail$Mnnot$Mnequal$Qu;
    public static final ModuleMethod yail$Mnnumber$Mnrange;
    public static final ModuleMethod yail$Mnround;
    public static final ModuleMethod yail$Mntake;
    public static final ModuleMethod yail$Mntypeof;
    public static PairWithPosition yail$Mntypeordering;
    static final SimpleSymbol Lit578 = (SimpleSymbol) new SimpleSymbol("add-to-components").readResolve();
    static final SimpleSymbol Lit577 = (SimpleSymbol) new SimpleSymbol("init-components").readResolve();
    static final SimpleSymbol Lit576 = (SimpleSymbol) new SimpleSymbol("init-global-variables").readResolve();
    static final SimpleSymbol Lit575 = (SimpleSymbol) new SimpleSymbol("components").readResolve();
    static final SimpleSymbol Lit574 = (SimpleSymbol) new SimpleSymbol("create-components").readResolve();
    static final SimpleSymbol Lit573 = (SimpleSymbol) new SimpleSymbol("reverse").readResolve();
    static final SimpleSymbol Lit572 = (SimpleSymbol) new SimpleSymbol("*the-null-value*").readResolve();
    static final SimpleSymbol Lit571 = (SimpleSymbol) new SimpleSymbol("register-events").readResolve();
    static final SimpleSymbol Lit570 = (SimpleSymbol) new SimpleSymbol("symbols").readResolve();
    static final SimpleSymbol Lit569 = (SimpleSymbol) new SimpleSymbol("symbol->string").readResolve();
    static final SimpleSymbol Lit568 = (SimpleSymbol) new SimpleSymbol("field").readResolve();
    static final SimpleSymbol Lit567 = (SimpleSymbol) new SimpleSymbol("when").readResolve();
    static final SimpleSymbol Lit566 = (SimpleSymbol) new SimpleSymbol("cadddr").readResolve();
    static final SimpleSymbol Lit565 = (SimpleSymbol) new SimpleSymbol("caddr").readResolve();
    static final SimpleSymbol Lit564 = (SimpleSymbol) new SimpleSymbol("component-descriptors").readResolve();
    static final SimpleSymbol Lit563 = (SimpleSymbol) new SimpleSymbol("component-object").readResolve();
    static final SimpleSymbol Lit562 = (SimpleSymbol) new SimpleSymbol("component-container").readResolve();
    static final SimpleSymbol Lit561 = (SimpleSymbol) new SimpleSymbol("cadr").readResolve();
    static final SimpleSymbol Lit560 = (SimpleSymbol) new SimpleSymbol("component-info").readResolve();
    static final SimpleSymbol Lit559 = (SimpleSymbol) new SimpleSymbol("var-val-pairs").readResolve();
    static final SimpleSymbol Lit558 = (SimpleSymbol) new SimpleSymbol("add-to-global-var-environment").readResolve();
    static final SimpleSymbol Lit557 = (SimpleSymbol) new SimpleSymbol("var-val").readResolve();
    static final SimpleSymbol Lit556 = (SimpleSymbol) new SimpleSymbol("car").readResolve();
    static final SimpleSymbol Lit555 = (SimpleSymbol) new SimpleSymbol("for-each").readResolve();
    static final SimpleSymbol Lit554 = (SimpleSymbol) new SimpleSymbol("events").readResolve();
    static final SimpleSymbol Lit553 = (SimpleSymbol) new SimpleSymbol("event-info").readResolve();
    static final SimpleSymbol Lit552 = (SimpleSymbol) new SimpleSymbol("registerEventForDelegation").readResolve();
    static final SimpleSymbol Lit551 = (SimpleSymbol) new SimpleSymbol("SimpleEventDispatcher").readResolve();
    static final SimpleSymbol Lit550 = (SimpleSymbol) new SimpleSymbol("define-alias").readResolve();
    static final SimpleSymbol Lit549 = (SimpleSymbol) new SimpleSymbol("componentName").readResolve();
    static final SimpleSymbol Lit548 = (SimpleSymbol) new SimpleSymbol("lookup-handler").readResolve();
    static final SimpleSymbol Lit547 = (SimpleSymbol) new SimpleSymbol("java.lang.Throwable").readResolve();
    static final SimpleSymbol Lit546 = (SimpleSymbol) new SimpleSymbol("getPermissionNeeded").readResolve();
    static final SimpleSymbol Lit545 = (SimpleSymbol) new SimpleSymbol("PermissionDenied").readResolve();
    static final SimpleSymbol Lit544 = (SimpleSymbol) new SimpleSymbol("equal?").readResolve();
    static final SimpleSymbol Lit543 = (SimpleSymbol) new SimpleSymbol("com.google.appinventor.components.runtime.errors.PermissionException").readResolve();
    static final SimpleSymbol Lit542 = (SimpleSymbol) new SimpleSymbol("com.google.appinventor.components.runtime.errors.StopBlocksExecution").readResolve();
    static final SimpleSymbol Lit541 = (SimpleSymbol) new SimpleSymbol("notAlreadyHandled").readResolve();
    static final SimpleSymbol Lit540 = (SimpleSymbol) new SimpleSymbol("apply").readResolve();
    static final SimpleSymbol Lit539 = (SimpleSymbol) new SimpleSymbol("try-catch").readResolve();
    static final SimpleSymbol Lit538 = (SimpleSymbol) new SimpleSymbol("handler-symbol").readResolve();
    static final SimpleSymbol Lit537 = (SimpleSymbol) new SimpleSymbol("get-simple-name").readResolve();
    static final SimpleSymbol Lit536 = (SimpleSymbol) new SimpleSymbol("string-append").readResolve();
    static final SimpleSymbol Lit535 = (SimpleSymbol) new SimpleSymbol("string->symbol").readResolve();
    static final SimpleSymbol Lit534 = (SimpleSymbol) new SimpleSymbol("void").readResolve();
    static final SimpleSymbol Lit533 = (SimpleSymbol) new SimpleSymbol("java.lang.Object[]").readResolve();
    static final SimpleSymbol Lit532 = (SimpleSymbol) new SimpleSymbol("com.google.appinventor.components.runtime.Component").readResolve();
    static final SimpleSymbol Lit531 = (SimpleSymbol) new SimpleSymbol("com.google.appinventor.components.runtime.HandlesEventDispatching").readResolve();
    static final SimpleSymbol Lit530 = (SimpleSymbol) new SimpleSymbol("com.google.appinventor.components.runtime.EventDispatcher").readResolve();
    static final SimpleSymbol Lit529 = (SimpleSymbol) new SimpleSymbol("printStackTrace").readResolve();
    static final SimpleSymbol Lit528 = (SimpleSymbol) new SimpleSymbol("getMessage").readResolve();
    static final SimpleSymbol Lit527 = (SimpleSymbol) new SimpleSymbol("process-exception").readResolve();
    static final SimpleSymbol Lit526 = (SimpleSymbol) new SimpleSymbol("exception").readResolve();
    static final SimpleSymbol Lit525 = (SimpleSymbol) new SimpleSymbol("args").readResolve();
    static final SimpleSymbol Lit524 = (SimpleSymbol) new SimpleSymbol("handler").readResolve();
    static final SimpleSymbol Lit523 = (SimpleSymbol) new SimpleSymbol("eventName").readResolve();
    static final SimpleSymbol Lit522 = (SimpleSymbol) new SimpleSymbol("componentObject").readResolve();
    static final SimpleSymbol Lit521 = (SimpleSymbol) new SimpleSymbol("lookup-in-form-environment").readResolve();
    static final SimpleSymbol Lit520 = (SimpleSymbol) new SimpleSymbol("eq?").readResolve();
    static final SimpleSymbol Lit519 = (SimpleSymbol) new SimpleSymbol("registeredObject").readResolve();
    static final SimpleSymbol Lit518 = (SimpleSymbol) new SimpleSymbol("is-bound-in-form-environment").readResolve();
    static final SimpleSymbol Lit517 = (SimpleSymbol) new SimpleSymbol("registeredComponentName").readResolve();
    static final SimpleSymbol Lit516 = (SimpleSymbol) new SimpleSymbol("java.lang.String").readResolve();
    static final SimpleSymbol Lit515 = (SimpleSymbol) new SimpleSymbol("as").readResolve();
    static final SimpleSymbol Lit514 = (SimpleSymbol) new SimpleSymbol("YailRuntimeError").readResolve();
    static final SimpleSymbol Lit513 = (SimpleSymbol) new SimpleSymbol(GetNamedPart.INSTANCEOF_METHOD_NAME).readResolve();
    static final SimpleSymbol Lit512 = (SimpleSymbol) new SimpleSymbol("ex").readResolve();
    static final SimpleSymbol Lit511 = (SimpleSymbol) new SimpleSymbol("toastAllowed").readResolve();
    static final SimpleSymbol Lit510 = (SimpleSymbol) new SimpleSymbol("and").readResolve();
    static final SimpleSymbol Lit509 = (SimpleSymbol) new SimpleSymbol("this").readResolve();
    static final SimpleSymbol Lit508 = (SimpleSymbol) new SimpleSymbol("not").readResolve();
    static final SimpleSymbol Lit507 = (SimpleSymbol) new SimpleSymbol("error").readResolve();
    static final SimpleSymbol Lit506 = (SimpleSymbol) new SimpleSymbol("thunk").readResolve();
    static final SimpleSymbol Lit505 = (SimpleSymbol) new SimpleSymbol("form-do-after-creation").readResolve();
    static final SimpleSymbol Lit504 = (SimpleSymbol) new SimpleSymbol("add-to-form-do-after-creation").readResolve();
    static final SimpleSymbol Lit503 = (SimpleSymbol) new SimpleSymbol("val-thunk").readResolve();
    static final SimpleSymbol Lit502 = (SimpleSymbol) new SimpleSymbol("var").readResolve();
    static final SimpleSymbol Lit501 = (SimpleSymbol) new SimpleSymbol("global-vars-to-create").readResolve();
    static final SimpleSymbol Lit500 = (SimpleSymbol) new SimpleSymbol("init-thunk").readResolve();
    static final SimpleSymbol Lit499 = (SimpleSymbol) new SimpleSymbol("component-type").readResolve();
    static final SimpleSymbol Lit498 = (SimpleSymbol) new SimpleSymbol("container-name").readResolve();
    static final SimpleSymbol Lit497 = (SimpleSymbol) new SimpleSymbol("components-to-create").readResolve();
    static final SimpleSymbol Lit496 = (SimpleSymbol) new SimpleSymbol("set!").readResolve();
    static final SimpleSymbol Lit495 = (SimpleSymbol) new SimpleSymbol("event-name").readResolve();
    static final SimpleSymbol Lit494 = (SimpleSymbol) new SimpleSymbol("component-name").readResolve();
    static final SimpleSymbol Lit493 = (SimpleSymbol) new SimpleSymbol("cons").readResolve();
    static final SimpleSymbol Lit492 = (SimpleSymbol) new SimpleSymbol("events-to-register").readResolve();
    static final SimpleSymbol Lit491 = (SimpleSymbol) new SimpleSymbol("add-to-events").readResolve();
    static final SimpleSymbol Lit490 = (SimpleSymbol) new SimpleSymbol("gnu.lists.LList").readResolve();
    static final SimpleSymbol Lit489 = (SimpleSymbol) new SimpleSymbol("global-var-environment").readResolve();
    static final SimpleSymbol Lit488 = (SimpleSymbol) new SimpleSymbol("format").readResolve();
    static final SimpleSymbol Lit487 = (SimpleSymbol) new SimpleSymbol("make").readResolve();
    static final SimpleSymbol Lit486 = (SimpleSymbol) new SimpleSymbol("isBound").readResolve();
    static final SimpleSymbol Lit485 = (SimpleSymbol) new SimpleSymbol("default-value").readResolve();
    static final SimpleSymbol Lit484 = (SimpleSymbol) new SimpleSymbol("gnu.mapping.Symbol").readResolve();
    static final SimpleSymbol Lit483 = (SimpleSymbol) new SimpleSymbol("form-environment").readResolve();
    static final SimpleSymbol Lit482 = (SimpleSymbol) new SimpleSymbol("name").readResolve();
    static final SimpleSymbol Lit481 = (SimpleSymbol) new SimpleSymbol("android-log-form").readResolve();
    static final SimpleSymbol Lit480 = (SimpleSymbol) new SimpleSymbol("add-to-form-environment").readResolve();
    static final SimpleSymbol Lit479 = (SimpleSymbol) new SimpleSymbol("gnu.mapping.Environment").readResolve();
    static final SimpleSymbol Lit478 = (SimpleSymbol) new SimpleSymbol("message").readResolve();
    static final SimpleSymbol Lit477 = (SimpleSymbol) new SimpleSymbol("*debug-form*").readResolve();
    static final SimpleSymbol Lit476 = (SimpleSymbol) new SimpleSymbol("icicle").readResolve();
    static final SimpleSymbol Lit475 = (SimpleSymbol) new SimpleSymbol("onCreate").readResolve();
    static final SimpleSymbol Lit474 = (SimpleSymbol) new SimpleSymbol("::").readResolve();
    static final SimpleSymbol Lit473 = (SimpleSymbol) new SimpleSymbol("object").readResolve();
    static final SimpleSymbol Lit472 = (SimpleSymbol) new SimpleSymbol("*").readResolve();
    static final SimpleSymbol Lit471 = (SimpleSymbol) new SimpleSymbol("define").readResolve();
    static final SimpleSymbol Lit470 = (SimpleSymbol) new SimpleSymbol("add-to-global-vars").readResolve();
    static final SimpleSymbol Lit469 = (SimpleSymbol) new SimpleSymbol(LispLanguage.quote_sym).readResolve();
    static final SimpleSymbol Lit468 = (SimpleSymbol) new SimpleSymbol("*this-is-the-repl*").readResolve();
    static final SimpleSymbol Lit467 = (SimpleSymbol) new SimpleSymbol("delay").readResolve();
    static final SimpleSymbol Lit466 = (SimpleSymbol) new SimpleSymbol("proc").readResolve();
    static final SimpleSymbol Lit465 = (SimpleSymbol) new SimpleSymbol("*yail-loop*").readResolve();
    static final SimpleSymbol Lit464 = (SimpleSymbol) new SimpleSymbol("begin").readResolve();
    static final SimpleSymbol Lit463 = (SimpleSymbol) new SimpleSymbol("let").readResolve();
    static final SimpleSymbol Lit462 = (SimpleSymbol) new SimpleSymbol("lambda").readResolve();
    static final SimpleSymbol Lit461 = (SimpleSymbol) new SimpleSymbol("call-with-current-continuation").readResolve();
    static final SimpleSymbol Lit460 = (SimpleSymbol) new SimpleSymbol("loop").readResolve();
    static final SimpleSymbol Lit459 = (SimpleSymbol) new SimpleSymbol("if").readResolve();
    static final SimpleSymbol Lit458 = (SimpleSymbol) new SimpleSymbol(LispLanguage.quasiquote_sym).readResolve();
    static final SimpleSymbol Lit457 = (SimpleSymbol) new SimpleSymbol("$lookup$").readResolve();
    static final SimpleSymbol Lit456 = (SimpleSymbol) new SimpleSymbol("_").readResolve();
    static final SimpleSymbol Lit455 = (SimpleSymbol) new SimpleSymbol("clarify1").readResolve();
    static final SimpleSymbol Lit454 = (SimpleSymbol) new SimpleSymbol("clarify").readResolve();
    static final SimpleSymbol Lit453 = (SimpleSymbol) new SimpleSymbol("set-this-form").readResolve();
    static final SimpleSymbol Lit452 = (SimpleSymbol) new SimpleSymbol("init-runtime").readResolve();
    static final SimpleSymbol Lit451 = (SimpleSymbol) new SimpleSymbol("rename-component").readResolve();
    static final SimpleSymbol Lit450 = (SimpleSymbol) new SimpleSymbol("remove-component").readResolve();
    static final SimpleSymbol Lit449 = (SimpleSymbol) new SimpleSymbol("set-form-name").readResolve();
    static final SimpleSymbol Lit448 = (SimpleSymbol) new SimpleSymbol("clear-current-form").readResolve();
    static final SimpleSymbol Lit447 = (SimpleSymbol) new SimpleSymbol("send-to-block").readResolve();
    static final SimpleSymbol Lit446 = (SimpleSymbol) new SimpleSymbol("in-ui").readResolve();
    static final SyntaxRules Lit445 = new SyntaxRules(new Object[]{Lit456}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\b", new Object[0], 2), "\u0001\u0001", "\u0011\u0018\u0004\t\u0003\b\u0011\u0018\f\b\u000b", new Object[]{Lit446, Lit467}, 0)}, 2);
    static final SimpleSymbol Lit444 = (SimpleSymbol) new SimpleSymbol("process-repl-input").readResolve();
    static final SimpleSymbol Lit443 = (SimpleSymbol) new SimpleSymbol("get-server-address-from-wifi").readResolve();
    static final SimpleSymbol Lit442 = (SimpleSymbol) new SimpleSymbol("close-screen-with-plain-text").readResolve();
    static final SimpleSymbol Lit441 = (SimpleSymbol) new SimpleSymbol("get-plain-start-text").readResolve();
    static final SimpleSymbol Lit440 = (SimpleSymbol) new SimpleSymbol("close-screen-with-value").readResolve();
    static final SimpleSymbol Lit439 = (SimpleSymbol) new SimpleSymbol("get-start-value").readResolve();
    static final SimpleSymbol Lit438 = (SimpleSymbol) new SimpleSymbol("open-another-screen-with-start-value").readResolve();
    static final SimpleSymbol Lit437 = (SimpleSymbol) new SimpleSymbol("open-another-screen").readResolve();
    static final SimpleSymbol Lit436 = (SimpleSymbol) new SimpleSymbol("close-application").readResolve();
    static final SimpleSymbol Lit435 = (SimpleSymbol) new SimpleSymbol("close-screen").readResolve();
    static final SimpleSymbol Lit434 = (SimpleSymbol) new SimpleSymbol("split-color").readResolve();
    static final SimpleSymbol Lit433 = (SimpleSymbol) new SimpleSymbol("make-color").readResolve();
    static final SimpleSymbol Lit432 = (SimpleSymbol) new SimpleSymbol("make-exact-yail-integer").readResolve();
    static final SimpleSymbol Lit431 = (SimpleSymbol) new SimpleSymbol("string-replace-mappings-earliest-occurrence").readResolve();
    static final SimpleSymbol Lit430 = (SimpleSymbol) new SimpleSymbol("string-replace-mappings-longest-string").readResolve();
    static final SimpleSymbol Lit429 = (SimpleSymbol) new SimpleSymbol("string-replace-mappings-dictionary").readResolve();
    static final SimpleSymbol Lit428 = (SimpleSymbol) new SimpleSymbol("text-deobfuscate").readResolve();
    static final SimpleSymbol Lit427 = (SimpleSymbol) new SimpleSymbol("string-empty?").readResolve();
    static final SimpleSymbol Lit426 = (SimpleSymbol) new SimpleSymbol("string-replace-all").readResolve();
    static final SimpleSymbol Lit425 = (SimpleSymbol) new SimpleSymbol("string-trim").readResolve();
    static final SimpleSymbol Lit424 = (SimpleSymbol) new SimpleSymbol("string-substring").readResolve();
    static final SimpleSymbol Lit423 = (SimpleSymbol) new SimpleSymbol("string-split-at-spaces").readResolve();
    static final SimpleSymbol Lit422 = (SimpleSymbol) new SimpleSymbol("string-split-at-any").readResolve();
    static final SimpleSymbol Lit421 = (SimpleSymbol) new SimpleSymbol("string-split").readResolve();
    static final SimpleSymbol Lit420 = (SimpleSymbol) new SimpleSymbol("string-split-at-first-of-any").readResolve();
    static final SimpleSymbol Lit419 = (SimpleSymbol) new SimpleSymbol("string-split-at-first").readResolve();
    static final SimpleSymbol Lit418 = (SimpleSymbol) new SimpleSymbol("string-contains-all").readResolve();
    static final SimpleSymbol Lit417 = (SimpleSymbol) new SimpleSymbol("string-contains-any").readResolve();
    static final SimpleSymbol Lit416 = (SimpleSymbol) new SimpleSymbol("string-contains").readResolve();
    static final SimpleSymbol Lit415 = (SimpleSymbol) new SimpleSymbol("string-starts-at").readResolve();
    static final SimpleSymbol Lit414 = (SimpleSymbol) new SimpleSymbol("array->list").readResolve();
    static final SimpleSymbol Lit413 = (SimpleSymbol) new SimpleSymbol("make-disjunct").readResolve();
    static final SimpleSymbol Lit412 = (SimpleSymbol) new SimpleSymbol("run-after-period").readResolve();
    static final SimpleSymbol Lit411 = (SimpleSymbol) new SimpleSymbol("run-in-background").readResolve();
    static final SimpleSymbol Lit410 = (SimpleSymbol) new SimpleSymbol("num-args-yail-procedure").readResolve();
    static final SimpleSymbol Lit409 = (SimpleSymbol) new SimpleSymbol("call-yail-procedure-input-list").readResolve();
    static final SimpleSymbol Lit408 = (SimpleSymbol) new SimpleSymbol("call-yail-procedure").readResolve();
    static final SimpleSymbol Lit407 = (SimpleSymbol) new SimpleSymbol("create-yail-procedure-with-name").readResolve();
    static final SimpleSymbol Lit406 = (SimpleSymbol) new SimpleSymbol("create-yail-procedure").readResolve();
    static final SimpleSymbol Lit405 = (SimpleSymbol) new SimpleSymbol("yail-matrix-equal?").readResolve();
    static final SimpleSymbol Lit404 = (SimpleSymbol) new SimpleSymbol("yail-matrix-to-alist").readResolve();
    static final SimpleSymbol Lit403 = (SimpleSymbol) new SimpleSymbol("yail-matrix-power").readResolve();
    static final SimpleSymbol Lit402 = (SimpleSymbol) new SimpleSymbol("yail-matrix-multiply").readResolve();
    static final SimpleSymbol Lit401 = (SimpleSymbol) new SimpleSymbol("yail-matrix-subtract").readResolve();
    static final SimpleSymbol Lit400 = (SimpleSymbol) new SimpleSymbol("yail-matrix-add").readResolve();
    static final SimpleSymbol Lit399 = (SimpleSymbol) new SimpleSymbol("yail-matrix-rotate-right").readResolve();
    static final SimpleSymbol Lit398 = (SimpleSymbol) new SimpleSymbol("yail-matrix-rotate-left").readResolve();
    static final SimpleSymbol Lit397 = (SimpleSymbol) new SimpleSymbol("yail-matrix-transpose").readResolve();
    static final SimpleSymbol Lit396 = (SimpleSymbol) new SimpleSymbol("yail-matrix-inverse").readResolve();
    static final SimpleSymbol Lit395 = (SimpleSymbol) new SimpleSymbol("yail-matrix-get-dims").readResolve();
    static final SimpleSymbol Lit394 = (SimpleSymbol) new SimpleSymbol("yail-matrix?").readResolve();
    static final SimpleSymbol Lit393 = (SimpleSymbol) new SimpleSymbol("yail-matrix-set-cell!").readResolve();
    static final SimpleSymbol Lit392 = (SimpleSymbol) new SimpleSymbol("yail-matrix-get-cell").readResolve();
    static final SimpleSymbol Lit391 = (SimpleSymbol) new SimpleSymbol("yail-matrix-get-column").readResolve();
    static final SimpleSymbol Lit390 = (SimpleSymbol) new SimpleSymbol("yail-matrix-get-row").readResolve();
    static final SimpleSymbol Lit389 = (SimpleSymbol) new SimpleSymbol("make-yail-matrix-multidim").readResolve();
    static final SimpleSymbol Lit388 = (SimpleSymbol) new SimpleSymbol("make-yail-matrix").readResolve();
    static final SimpleSymbol Lit387 = (SimpleSymbol) new SimpleSymbol("yail-dictionary?").readResolve();
    static final SimpleSymbol Lit386 = (SimpleSymbol) new SimpleSymbol("yail-dictionary-combine-dicts").readResolve();
    static final SimpleSymbol Lit385 = (SimpleSymbol) new SimpleSymbol("yail-dictionary-copy").readResolve();
    static final SimpleSymbol Lit384 = (SimpleSymbol) new SimpleSymbol("yail-dictionary-dict-to-alist").readResolve();
    static final SimpleSymbol Lit383 = (SimpleSymbol) new SimpleSymbol("yail-dictionary-alist-to-dict").readResolve();
    static final SimpleSymbol Lit382 = (SimpleSymbol) new SimpleSymbol("yail-dictionary-length").readResolve();
    static final SimpleSymbol Lit381 = (SimpleSymbol) new SimpleSymbol("yail-dictionary-is-key-in").readResolve();
    static final SimpleSymbol Lit380 = (SimpleSymbol) new SimpleSymbol("yail-dictionary-get-values").readResolve();
    static final SimpleSymbol Lit379 = (SimpleSymbol) new SimpleSymbol("yail-dictionary-get-keys").readResolve();
    static final SimpleSymbol Lit378 = (SimpleSymbol) new SimpleSymbol("yail-dictionary-recursive-set").readResolve();
    static final SimpleSymbol Lit377 = (SimpleSymbol) new SimpleSymbol("yail-dictionary-walk").readResolve();
    static final SimpleSymbol Lit376 = (SimpleSymbol) new SimpleSymbol("yail-dictionary-recursive-lookup").readResolve();
    static final SimpleSymbol Lit375 = (SimpleSymbol) new SimpleSymbol("yail-dictionary-lookup").readResolve();
    static final SimpleSymbol Lit374 = (SimpleSymbol) new SimpleSymbol("yail-dictionary-delete-pair").readResolve();
    static final SimpleSymbol Lit373 = (SimpleSymbol) new SimpleSymbol("yail-dictionary-set-pair").readResolve();
    static final SimpleSymbol Lit372 = (SimpleSymbol) new SimpleSymbol("make-dictionary-pair").readResolve();
    static final SimpleSymbol Lit371 = (SimpleSymbol) new SimpleSymbol("make-yail-dictionary").readResolve();
    static final SimpleSymbol Lit370 = (SimpleSymbol) new SimpleSymbol("yail-list-join-with-separator").readResolve();
    static final SimpleSymbol Lit369 = (SimpleSymbol) new SimpleSymbol("pair-ok?").readResolve();
    static final SimpleSymbol Lit368 = (SimpleSymbol) new SimpleSymbol("yail-alist-lookup").readResolve();
    static final SimpleSymbol Lit367 = (SimpleSymbol) new SimpleSymbol("yail-number-range").readResolve();
    static final SimpleSymbol Lit366 = (SimpleSymbol) new SimpleSymbol("yail-for-range-with-numeric-checked-args").readResolve();
    static final SimpleSymbol Lit365 = (SimpleSymbol) new SimpleSymbol("yail-for-range").readResolve();
    static final SimpleSymbol Lit364 = (SimpleSymbol) new SimpleSymbol("yail-list-slice").readResolve();
    static final SimpleSymbol Lit363 = (SimpleSymbol) new SimpleSymbol("yail-list-but-last").readResolve();
    static final SimpleSymbol Lit362 = (SimpleSymbol) new SimpleSymbol("but-last").readResolve();
    static final SimpleSymbol Lit361 = (SimpleSymbol) new SimpleSymbol("yail-list-but-first").readResolve();
    static final SimpleSymbol Lit360 = (SimpleSymbol) new SimpleSymbol("yail-list-max-comparator").readResolve();
    static final SimpleSymbol Lit359 = (SimpleSymbol) new SimpleSymbol("list-max").readResolve();
    static final SimpleSymbol Lit358 = (SimpleSymbol) new SimpleSymbol("yail-list-min-comparator").readResolve();
    static final SimpleSymbol Lit357 = (SimpleSymbol) new SimpleSymbol("list-min").readResolve();
    static final SimpleSymbol Lit356 = (SimpleSymbol) new SimpleSymbol("list-number-only").readResolve();
    static final SimpleSymbol Lit355 = (SimpleSymbol) new SimpleSymbol("yail-list-sort-key").readResolve();
    static final SimpleSymbol Lit354 = (SimpleSymbol) new SimpleSymbol("mergesort-key").readResolve();
    static final SimpleSymbol Lit353 = (SimpleSymbol) new SimpleSymbol("merge-key").readResolve();
    static final SimpleSymbol Lit352 = (SimpleSymbol) new SimpleSymbol("yail-list-sort-comparator").readResolve();
    static final SimpleSymbol Lit351 = (SimpleSymbol) new SimpleSymbol("yail-list-sort").readResolve();
    static final SimpleSymbol Lit350 = (SimpleSymbol) new SimpleSymbol("yail-mergesort").readResolve();
    static final SimpleSymbol Lit349 = (SimpleSymbol) new SimpleSymbol("yail-merge").readResolve();
    static final SimpleSymbol Lit348 = (SimpleSymbol) new SimpleSymbol("yail-drop").readResolve();
    static final SimpleSymbol Lit347 = (SimpleSymbol) new SimpleSymbol("yail-take").readResolve();
    static final SimpleSymbol Lit346 = (SimpleSymbol) new SimpleSymbol("component-leq?").readResolve();
    static final SimpleSymbol Lit345 = (SimpleSymbol) new SimpleSymbol("component-eq?").readResolve();
    static final SimpleSymbol Lit344 = (SimpleSymbol) new SimpleSymbol("component-lt?").readResolve();
    static final SimpleSymbol Lit343 = (SimpleSymbol) new SimpleSymbol("list-leq?").readResolve();
    static final SimpleSymbol Lit342 = (SimpleSymbol) new SimpleSymbol("yail-list-necessary").readResolve();
    static final SimpleSymbol Lit341 = (SimpleSymbol) new SimpleSymbol("list-eq?").readResolve();
    static final SimpleSymbol Lit340 = (SimpleSymbol) new SimpleSymbol("list-lt?").readResolve();
    static final SimpleSymbol Lit339 = (SimpleSymbol) new SimpleSymbol("boolean-leq?").readResolve();
    static final SimpleSymbol Lit338 = (SimpleSymbol) new SimpleSymbol("boolean-eq?").readResolve();
    static final SimpleSymbol Lit337 = (SimpleSymbol) new SimpleSymbol("boolean-lt?").readResolve();
    static final SimpleSymbol Lit336 = (SimpleSymbol) new SimpleSymbol("is-leq?").readResolve();
    static final SimpleSymbol Lit335 = (SimpleSymbol) new SimpleSymbol("is-eq?").readResolve();
    static final SimpleSymbol Lit334 = (SimpleSymbol) new SimpleSymbol("is-lt?").readResolve();
    static final SimpleSymbol Lit333 = (SimpleSymbol) new SimpleSymbol("type-lt?").readResolve();
    static final SimpleSymbol Lit332 = (SimpleSymbol) new SimpleSymbol("yail-indexof").readResolve();
    static final SimpleSymbol Lit331 = (SimpleSymbol) new SimpleSymbol("yail-typeof").readResolve();
    static final SimpleSymbol Lit330 = (SimpleSymbol) new SimpleSymbol("yail-list-reduce").readResolve();
    static final SimpleSymbol Lit329 = (SimpleSymbol) new SimpleSymbol("yail-list-filter").readResolve();
    static final SimpleSymbol Lit328 = (SimpleSymbol) new SimpleSymbol("yail-list-map").readResolve();
    static final SimpleSymbol Lit327 = (SimpleSymbol) new SimpleSymbol("yail-for-each").readResolve();
    static final SimpleSymbol Lit326 = (SimpleSymbol) new SimpleSymbol("yail-list-pick-random").readResolve();
    static final SimpleSymbol Lit325 = (SimpleSymbol) new SimpleSymbol("yail-list-member?").readResolve();
    static final SimpleSymbol Lit324 = (SimpleSymbol) new SimpleSymbol("yail-list-add-to-list!").readResolve();
    static final SimpleSymbol Lit323 = (SimpleSymbol) new SimpleSymbol("yail-list-append!").readResolve();
    static final SimpleSymbol Lit322 = (SimpleSymbol) new SimpleSymbol("yail-list-insert-item!").readResolve();
    static final SimpleSymbol Lit321 = (SimpleSymbol) new SimpleSymbol("yail-list-remove-item!").readResolve();
    static final SimpleSymbol Lit320 = (SimpleSymbol) new SimpleSymbol("yail-list-set-item!").readResolve();
    static final SimpleSymbol Lit319 = (SimpleSymbol) new SimpleSymbol("yail-list-get-item").readResolve();
    static final SimpleSymbol Lit318 = (SimpleSymbol) new SimpleSymbol("yail-list-index").readResolve();
    static final SimpleSymbol Lit317 = (SimpleSymbol) new SimpleSymbol("yail-list-length").readResolve();
    static final SimpleSymbol Lit316 = (SimpleSymbol) new SimpleSymbol("yail-list-from-csv-row").readResolve();
    static final SimpleSymbol Lit315 = (SimpleSymbol) new SimpleSymbol("yail-list-from-csv-table").readResolve();
    static final SimpleSymbol Lit314 = (SimpleSymbol) new SimpleSymbol("convert-to-strings-for-csv").readResolve();
    static final SimpleSymbol Lit313 = (SimpleSymbol) new SimpleSymbol("yail-list-to-csv-row").readResolve();
    static final SimpleSymbol Lit312 = (SimpleSymbol) new SimpleSymbol("yail-list-to-csv-table").readResolve();
    static final SimpleSymbol Lit311 = (SimpleSymbol) new SimpleSymbol("yail-list-reverse").readResolve();
    static final SimpleSymbol Lit310 = (SimpleSymbol) new SimpleSymbol("yail-list-copy").readResolve();
    static final SimpleSymbol Lit309 = (SimpleSymbol) new SimpleSymbol("make-yail-list").readResolve();
    static final SimpleSymbol Lit308 = (SimpleSymbol) new SimpleSymbol("yail-list-empty?").readResolve();
    static final SimpleSymbol Lit307 = (SimpleSymbol) new SimpleSymbol("yail-list->kawa-list").readResolve();
    static final SimpleSymbol Lit306 = (SimpleSymbol) new SimpleSymbol("kawa-list->yail-list").readResolve();
    static final SimpleSymbol Lit305 = (SimpleSymbol) new SimpleSymbol("insert-yail-list-header").readResolve();
    static final SimpleSymbol Lit304 = (SimpleSymbol) new SimpleSymbol("set-yail-list-contents!").readResolve();
    static final SimpleSymbol Lit303 = (SimpleSymbol) new SimpleSymbol("yail-list-contents").readResolve();
    static final SimpleSymbol Lit302 = (SimpleSymbol) new SimpleSymbol("yail-list-candidate?").readResolve();
    static final SimpleSymbol Lit301 = (SimpleSymbol) new SimpleSymbol("yail-list?").readResolve();
    static final SimpleSymbol Lit300 = (SimpleSymbol) new SimpleSymbol("std-err").readResolve();
    static final SimpleSymbol Lit299 = (SimpleSymbol) new SimpleSymbol("sample-std-dev").readResolve();
    static final SimpleSymbol Lit298 = (SimpleSymbol) new SimpleSymbol("std-dev").readResolve();
    static final SimpleSymbol Lit297 = (SimpleSymbol) new SimpleSymbol("sum-mean-square-diff").readResolve();
    static final SimpleSymbol Lit296 = (SimpleSymbol) new SimpleSymbol("mean").readResolve();
    static final SimpleSymbol Lit295 = (SimpleSymbol) new SimpleSymbol("minl").readResolve();
    static final SimpleSymbol Lit294 = (SimpleSymbol) new SimpleSymbol("maxl").readResolve();
    static final SimpleSymbol Lit293 = (SimpleSymbol) new SimpleSymbol("mode").readResolve();
    static final SimpleSymbol Lit292 = (SimpleSymbol) new SimpleSymbol("gm").readResolve();
    static final SimpleSymbol Lit291 = (SimpleSymbol) new SimpleSymbol("yail-mul").readResolve();
    static final SimpleSymbol Lit290 = (SimpleSymbol) new SimpleSymbol("avg").readResolve();
    static final SimpleSymbol Lit289 = (SimpleSymbol) new SimpleSymbol("internal-binary-convert").readResolve();
    static final SimpleSymbol Lit288 = (SimpleSymbol) new SimpleSymbol("alternate-number->string-binary").readResolve();
    static final SimpleSymbol Lit287 = (SimpleSymbol) new SimpleSymbol("patched-number->string-binary").readResolve();
    static final SimpleSymbol Lit286 = (SimpleSymbol) new SimpleSymbol("math-convert-dec-bin").readResolve();
    static final SimpleSymbol Lit285 = (SimpleSymbol) new SimpleSymbol("math-convert-bin-dec").readResolve();
    static final SimpleSymbol Lit284 = (SimpleSymbol) new SimpleSymbol("math-convert-hex-dec").readResolve();
    static final SimpleSymbol Lit283 = (SimpleSymbol) new SimpleSymbol("math-convert-dec-hex").readResolve();
    static final SimpleSymbol Lit282 = (SimpleSymbol) new SimpleSymbol("is-binary?").readResolve();
    static final SimpleSymbol Lit281 = (SimpleSymbol) new SimpleSymbol("is-hexadecimal?").readResolve();
    static final SimpleSymbol Lit280 = (SimpleSymbol) new SimpleSymbol("is-base10?").readResolve();
    static final SimpleSymbol Lit279 = (SimpleSymbol) new SimpleSymbol("is-number?").readResolve();
    static final SimpleSymbol Lit278 = (SimpleSymbol) new SimpleSymbol("format-as-decimal").readResolve();
    static final SimpleSymbol Lit277 = (SimpleSymbol) new SimpleSymbol("string-reverse").readResolve();
    static final SimpleSymbol Lit276 = (SimpleSymbol) new SimpleSymbol("unicode-string->list").readResolve();
    static final SimpleSymbol Lit275 = (SimpleSymbol) new SimpleSymbol("string-to-lower-case").readResolve();
    static final SimpleSymbol Lit274 = (SimpleSymbol) new SimpleSymbol("string-to-upper-case").readResolve();
    static final SimpleSymbol Lit273 = (SimpleSymbol) new SimpleSymbol("atan2-degrees").readResolve();
    static final SimpleSymbol Lit272 = (SimpleSymbol) new SimpleSymbol("atan-degrees").readResolve();
    static final SimpleSymbol Lit271 = (SimpleSymbol) new SimpleSymbol("acos-degrees").readResolve();
    static final SimpleSymbol Lit270 = (SimpleSymbol) new SimpleSymbol("asin-degrees").readResolve();
    static final SimpleSymbol Lit269 = (SimpleSymbol) new SimpleSymbol("tan-degrees").readResolve();
    static final SimpleSymbol Lit268 = (SimpleSymbol) new SimpleSymbol("cos-degrees").readResolve();
    static final SimpleSymbol Lit267 = (SimpleSymbol) new SimpleSymbol("sin-degrees").readResolve();
    static final SimpleSymbol Lit266 = (SimpleSymbol) new SimpleSymbol("radians->degrees").readResolve();
    static final SimpleSymbol Lit265 = (SimpleSymbol) new SimpleSymbol("degrees->radians").readResolve();
    static final SimpleSymbol Lit264 = (SimpleSymbol) new SimpleSymbol("radians->degrees-internal").readResolve();
    static final SimpleSymbol Lit263 = (SimpleSymbol) new SimpleSymbol("degrees->radians-internal").readResolve();
    static final SimpleSymbol Lit262 = (SimpleSymbol) new SimpleSymbol("yail-divide").readResolve();
    static final SimpleSymbol Lit261 = (SimpleSymbol) new SimpleSymbol("random-integer").readResolve();
    static final SimpleSymbol Lit260 = (SimpleSymbol) new SimpleSymbol("random-fraction").readResolve();
    static final SimpleSymbol Lit259 = (SimpleSymbol) new SimpleSymbol("random-set-seed").readResolve();
    static final SimpleSymbol Lit258 = (SimpleSymbol) new SimpleSymbol("yail-round").readResolve();
    static final SimpleSymbol Lit257 = (SimpleSymbol) new SimpleSymbol("yail-ceiling").readResolve();
    static final SimpleSymbol Lit256 = (SimpleSymbol) new SimpleSymbol("yail-floor").readResolve();
    static final SimpleSymbol Lit255 = (SimpleSymbol) new SimpleSymbol("process-or-delayed").readResolve();
    static final SimpleSymbol Lit254 = (SimpleSymbol) new SimpleSymbol("process-and-delayed").readResolve();
    static final SimpleSymbol Lit253 = (SimpleSymbol) new SimpleSymbol("yail-not-equal?").readResolve();
    static final SimpleSymbol Lit252 = (SimpleSymbol) new SimpleSymbol("as-number").readResolve();
    static final SimpleSymbol Lit251 = (SimpleSymbol) new SimpleSymbol("yail-atomic-equal?").readResolve();
    static final SimpleSymbol Lit250 = (SimpleSymbol) new SimpleSymbol("yail-equal?").readResolve();
    static final SimpleSymbol Lit249 = (SimpleSymbol) new SimpleSymbol("appinventor-number->string").readResolve();
    static final SimpleSymbol Lit248 = (SimpleSymbol) new SimpleSymbol("*format-inexact*").readResolve();
    static final SimpleSymbol Lit247 = (SimpleSymbol) new SimpleSymbol("padded-string->number").readResolve();
    static final SimpleSymbol Lit246 = (SimpleSymbol) new SimpleSymbol("boolean->string").readResolve();
    static final SimpleSymbol Lit245 = (SimpleSymbol) new SimpleSymbol("all-coercible?").readResolve();
    static final SimpleSymbol Lit244 = (SimpleSymbol) new SimpleSymbol("is-coercible?").readResolve();
    static final SimpleSymbol Lit243 = (SimpleSymbol) new SimpleSymbol("coerce-to-boolean").readResolve();
    static final SimpleSymbol Lit242 = (SimpleSymbol) new SimpleSymbol("coerce-to-matrix").readResolve();
    static final SimpleSymbol Lit241 = (SimpleSymbol) new SimpleSymbol("coerce-to-dictionary").readResolve();
    static final SimpleSymbol Lit240 = (SimpleSymbol) new SimpleSymbol("coerce-to-pair").readResolve();
    static final SimpleSymbol Lit239 = (SimpleSymbol) new SimpleSymbol("coerce-to-yail-list").readResolve();
    static final SimpleSymbol Lit238 = (SimpleSymbol) new SimpleSymbol("string-replace").readResolve();
    static final SimpleSymbol Lit237 = (SimpleSymbol) new SimpleSymbol("join-strings").readResolve();
    static final SimpleSymbol Lit236 = (SimpleSymbol) new SimpleSymbol("get-display-representation").readResolve();
    static final SimpleSymbol Lit235 = (SimpleSymbol) new SimpleSymbol("coerce-to-string").readResolve();
    static final SyntaxRules Lit234 = new SyntaxRules(new Object[]{Lit456}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\b", new Object[0], 0), "", "\u0018\u0004", new Object[]{PairWithPosition.make(Lit459, PairWithPosition.make((SimpleSymbol) new SimpleSymbol("*testing*").readResolve(), PairWithPosition.make(Boolean.TRUE, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit457, Pair.make(Lit472, Pair.make(Pair.make(Lit458, Pair.make((SimpleSymbol) new SimpleSymbol("ShowListsAsJson").readResolve(), LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 6729739), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit457, Pair.make((SimpleSymbol) new SimpleSymbol("SimpleForm").readResolve(), Pair.make(Pair.make(Lit458, Pair.make((SimpleSymbol) new SimpleSymbol("getActiveForm").readResolve(), LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 6729758), LList.Empty, "/tmp/runtime3808032275111475787.scm", 6729757), LList.Empty, "/tmp/runtime3808032275111475787.scm", 6729757), "/tmp/runtime3808032275111475787.scm", 6729738), LList.Empty, "/tmp/runtime3808032275111475787.scm", 6729738), "/tmp/runtime3808032275111475787.scm", 6725652), "/tmp/runtime3808032275111475787.scm", 6725642), "/tmp/runtime3808032275111475787.scm", 6725638)}, 0)}, 0);
    static final SimpleSymbol Lit233 = (SimpleSymbol) new SimpleSymbol("use-json-format").readResolve();
    static final SimpleSymbol Lit232 = (SimpleSymbol) new SimpleSymbol("coerce-to-key").readResolve();
    static final SimpleSymbol Lit231 = (SimpleSymbol) new SimpleSymbol("coerce-to-number").readResolve();
    static final SimpleSymbol Lit230 = (SimpleSymbol) new SimpleSymbol("type->class").readResolve();
    static final SimpleSymbol Lit229 = (SimpleSymbol) new SimpleSymbol("coerce-to-component-of-type").readResolve();
    static final SimpleSymbol Lit228 = (SimpleSymbol) new SimpleSymbol("coerce-to-component").readResolve();
    static final SimpleSymbol Lit227 = (SimpleSymbol) new SimpleSymbol("coerce-to-instant").readResolve();
    static final SimpleSymbol Lit226 = (SimpleSymbol) new SimpleSymbol("coerce-to-text").readResolve();
    static final SimpleSymbol Lit225 = (SimpleSymbol) new SimpleSymbol("coerce-to-enum").readResolve();
    static final SimpleSymbol Lit224 = (SimpleSymbol) new SimpleSymbol("enum?").readResolve();
    static final SimpleSymbol Lit223 = (SimpleSymbol) new SimpleSymbol("enum-type?").readResolve();
    static final SimpleSymbol Lit222 = (SimpleSymbol) new SimpleSymbol("coerce-to-number-list").readResolve();
    static final SimpleSymbol Lit221 = (SimpleSymbol) new SimpleSymbol("coerce-to-double-array").readResolve();
    static final SimpleSymbol Lit220 = (SimpleSymbol) new SimpleSymbol("coerce-arg").readResolve();
    static final SimpleSymbol Lit219 = (SimpleSymbol) new SimpleSymbol("coerce-args").readResolve();
    static final SimpleSymbol Lit218 = (SimpleSymbol) new SimpleSymbol("show-arglist-no-parens").readResolve();
    static final SimpleSymbol Lit217 = (SimpleSymbol) new SimpleSymbol("generate-runtime-type-error").readResolve();
    static final SimpleSymbol Lit216 = (SimpleSymbol) new SimpleSymbol("%set-subform-layout-property!").readResolve();
    static final SimpleSymbol Lit215 = (SimpleSymbol) new SimpleSymbol("%set-and-coerce-property!").readResolve();
    static final SimpleSymbol Lit214 = (SimpleSymbol) new SimpleSymbol("call-with-coerced-args").readResolve();
    static final SimpleSymbol Lit213 = (SimpleSymbol) new SimpleSymbol("yail-not").readResolve();
    static final SimpleSymbol Lit212 = (SimpleSymbol) new SimpleSymbol("signal-runtime-form-error").readResolve();
    static final SimpleSymbol Lit211 = (SimpleSymbol) new SimpleSymbol("signal-runtime-error").readResolve();
    static final SimpleSymbol Lit210 = (SimpleSymbol) new SimpleSymbol("sanitize-atomic").readResolve();
    static final SimpleSymbol Lit209 = (SimpleSymbol) new SimpleSymbol("java-map->yail-dictionary").readResolve();
    static final SimpleSymbol Lit208 = (SimpleSymbol) new SimpleSymbol("java-collection->kawa-list").readResolve();
    static final SimpleSymbol Lit207 = (SimpleSymbol) new SimpleSymbol("java-collection->yail-list").readResolve();
    static final SimpleSymbol Lit206 = (SimpleSymbol) new SimpleSymbol("sanitize-return-value").readResolve();
    static final SimpleSymbol Lit205 = (SimpleSymbol) new SimpleSymbol("sanitize-component-data").readResolve();
    static final SimpleSymbol Lit204 = (SimpleSymbol) new SimpleSymbol("call-yail-primitive").readResolve();
    static final SimpleSymbol Lit203 = (SimpleSymbol) new SimpleSymbol("call-component-type-method-with-blocking-continuation").readResolve();
    static final SimpleSymbol Lit202 = (SimpleSymbol) new SimpleSymbol("call-component-type-method-with-continuation").readResolve();
    static final SimpleSymbol Lit201 = (SimpleSymbol) new SimpleSymbol("call-component-type-method").readResolve();
    static final SimpleSymbol Lit200 = (SimpleSymbol) new SimpleSymbol("call-component-method-with-blocking-continuation").readResolve();
    static final SimpleSymbol Lit199 = (SimpleSymbol) new SimpleSymbol("call-component-method-with-continuation").readResolve();
    static final SimpleSymbol Lit198 = (SimpleSymbol) new SimpleSymbol("call-component-method").readResolve();
    static final SyntaxRules Lit197 = new SyntaxRules(new Object[]{Lit456}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\r\u0017\u0010\b\b", new Object[0], 3), "\u0001\u0001\u0003", "\u0011\u0018\u0004\b\u0011\u0018\f\u0011\b\u0003\b\u0011\u0018\u0014\u0011\u0018\u001c\t\u0010\b\u0011\u0018$\t\u000bA\u0011\u0018,\u0011\u0015\u0013\u00184\u0018<", new Object[]{Lit461, Lit462, Lit463, Lit460, Lit459, Lit464, PairWithPosition.make(PairWithPosition.make(Lit460, LList.Empty, "/tmp/runtime3808032275111475787.scm", 4247555), LList.Empty, "/tmp/runtime3808032275111475787.scm", 4247555), PairWithPosition.make(Lit572, LList.Empty, "/tmp/runtime3808032275111475787.scm", 4251656)}, 1)}, 3);
    static final SimpleSymbol Lit196 = (SimpleSymbol) new SimpleSymbol("while-with-break").readResolve();
    static final SyntaxRules Lit195 = new SyntaxRules(new Object[]{Lit456}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\f\u001f\f'\f/\b", new Object[0], 6), "\u0001\u0001\u0001\u0001\u0001\u0001", "\u0011\u0018\u0004\b\u0011\u0018\f\u0011\b\u0003\b\u0011\u0018\u0014A\u0011\u0018\f\u0011\b\u000b\b\u0013\t\u001b\t#\b+", new Object[]{Lit461, Lit462, Lit365}, 0)}, 6);
    static final SimpleSymbol Lit194 = (SimpleSymbol) new SimpleSymbol("forrange-with-break").readResolve();
    static final SyntaxRules Lit193 = new SyntaxRules(new Object[]{Lit456}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\b", new Object[0], 3), "\u0001\u0001\u0001", "\u0011\u0018\u0004A\u0011\u0018\f\u0011\b\u0003\b\u000b\b\u0013", new Object[]{Lit355, Lit462}, 0)}, 3);
    static final SimpleSymbol Lit192 = (SimpleSymbol) new SimpleSymbol("sortkey_nondest").readResolve();
    static final SyntaxRules Lit191 = new SyntaxRules(new Object[]{Lit456}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\f\u001f\b", new Object[0], 4), "\u0001\u0001\u0001\u0001", "\u0011\u0018\u0004Q\u0011\u0018\f!\t\u0003\b\u000b\b\u0013\b\u001b", new Object[]{Lit360, Lit462}, 0)}, 4);
    static final SimpleSymbol Lit190 = (SimpleSymbol) new SimpleSymbol("maxcomparator-nondest").readResolve();
    static final SyntaxRules Lit189 = new SyntaxRules(new Object[]{Lit456}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\f\u001f\b", new Object[0], 4), "\u0001\u0001\u0001\u0001", "\u0011\u0018\u0004Q\u0011\u0018\f!\t\u0003\b\u000b\b\u0013\b\u001b", new Object[]{Lit358, Lit462}, 0)}, 4);
    static final SimpleSymbol Lit188 = (SimpleSymbol) new SimpleSymbol("mincomparator-nondest").readResolve();
    static final SyntaxRules Lit187 = new SyntaxRules(new Object[]{Lit456}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\f\u001f\b", new Object[0], 4), "\u0001\u0001\u0001\u0001", "\u0011\u0018\u0004Q\u0011\u0018\f!\t\u0003\b\u000b\b\u0013\b\u001b", new Object[]{Lit352, Lit462}, 0)}, 4);
    static final SimpleSymbol Lit186 = (SimpleSymbol) new SimpleSymbol("sortcomparator_nondest").readResolve();
    static final SyntaxRules Lit185 = new SyntaxRules(new Object[]{Lit456}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\f\u001f\f'\b", new Object[0], 5), "\u0001\u0001\u0001\u0001\u0001", "\u0011\u0018\u0004\t\u0003Q\u0011\u0018\f!\t\u000b\b\u0013\b\u001b\b#", new Object[]{Lit330, Lit462}, 0)}, 5);
    static final SimpleSymbol Lit184 = (SimpleSymbol) new SimpleSymbol("reduceovereach").readResolve();
    static final SyntaxRules Lit183 = new SyntaxRules(new Object[]{Lit456}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\b", new Object[0], 3), "\u0001\u0001\u0001", "\u0011\u0018\u0004A\u0011\u0018\f\u0011\b\u0003\b\u000b\b\u0013", new Object[]{Lit329, Lit462}, 0)}, 3);
    static final SimpleSymbol Lit182 = (SimpleSymbol) new SimpleSymbol("filter_nondest").readResolve();
    static final SyntaxRules Lit181 = new SyntaxRules(new Object[]{Lit456}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\b", new Object[0], 3), "\u0001\u0001\u0001", "\u0011\u0018\u0004A\u0011\u0018\f\u0011\b\u0003\b\u000b\b\u0013", new Object[]{Lit328, Lit462}, 0)}, 3);
    static final SimpleSymbol Lit180 = (SimpleSymbol) new SimpleSymbol("map_nondest").readResolve();
    static final SyntaxRules Lit179 = new SyntaxRules(new Object[]{Lit456}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\f\u001f\b", new Object[0], 4), "\u0001\u0001\u0001\u0001", "\u0011\u0018\u0004\b\u0011\u0018\f\u0011\b\u0003\b\u0011\u0018\u0014i\b\u0011\u0018\u001c\b\u0011\u0018\f\u0011\b\u000b\b\u0013\b\u0011\u0018$\u0011\u0018\u001c\b\u001b", new Object[]{Lit461, Lit462, Lit463, Lit466, Lit327}, 0)}, 4);
    static final SimpleSymbol Lit178 = (SimpleSymbol) new SimpleSymbol("foreach-with-break").readResolve();

    public runtime() {
        ModuleInfo.register(this);
    }

    public static Object lookupGlobalVarInCurrentFormEnvironment(Symbol symbol) {
        return lookupGlobalVarInCurrentFormEnvironment(symbol, Boolean.FALSE);
    }

    public static Object lookupInCurrentFormEnvironment(Symbol symbol) {
        return lookupInCurrentFormEnvironment(symbol, Boolean.FALSE);
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext $ctx) throws Throwable {
        Consumer $result = $ctx.consumer;
        $Stdebug$St = Boolean.FALSE;
        $Stthis$Mnis$Mnthe$Mnrepl$St = Boolean.FALSE;
        $Sttesting$St = Boolean.FALSE;
        $Stinit$Mnthunk$Mnenvironment$St = Environment.make("init-thunk-environment");
        $Stinit$Mnthunk$Mnlist$St = LList.Empty;
        $Sttest$Mnenvironment$St = Environment.make("test-env");
        $Sttest$Mnglobal$Mnvar$Mnenvironment$St = Environment.make("test-global-var-env");
        $Stthe$Mnnull$Mnvalue$St = null;
        $Stthe$Mnnull$Mnvalue$Mnprinted$Mnrep$St = "*nothing*";
        $Stthe$Mnempty$Mnstring$Mnprinted$Mnrep$St = "*empty-string*";
        $Stnon$Mncoercible$Mnvalue$St = Lit2;
        $Stjava$Mnexception$Mnmessage$St = "An internal system error occurred: ";
        get$Mnoriginal$Mndisplay$Mnrepresentation = lambda$Fn8;
        get$Mnjson$Mndisplay$Mnrepresentation = lambda$Fn11;
        $Strandom$Mnnumber$Mngenerator$St = new Random();
        Object objApply2 = AddOp.$Mn.apply2(expt.expt(Lit30, Lit31), Lit28);
        try {
            highest = (Numeric) objApply2;
            Object objApply1 = AddOp.$Mn.apply1(highest);
            try {
                lowest = (Numeric) objApply1;
                clip$Mnto$Mnjava$Mnint$Mnrange = lambda$Fn16;
                ERROR_DIVISION_BY_ZERO = Integer.valueOf(ErrorMessages.ERROR_DIVISION_BY_ZERO);
                $Stpi$St = Lit32;
                $Styail$Mnlist$St = Lit47;
                yail$Mntypeordering = Lit49;
                $Stmax$Mncolor$Mncomponent$St = numbers.exact(Lit54);
                $Stcolor$Mnalpha$Mnposition$St = numbers.exact(Lit57);
                $Stcolor$Mnred$Mnposition$St = numbers.exact(Lit58);
                $Stcolor$Mngreen$Mnposition$St = numbers.exact(Lit55);
                $Stcolor$Mnblue$Mnposition$St = numbers.exact(Lit29);
                $Stalpha$Mnopaque$St = numbers.exact(Lit54);
                $Strun$Mntelnet$Mnrepl$St = Boolean.TRUE;
                $Stnum$Mnconnections$St = Lit28;
                $Strepl$Mnserver$Mnaddress$St = "NONE";
                $Strepl$Mnport$St = Lit61;
                $Stthis$Mnform$Mnname$St = "Screen1";
                $Stui$Mnhandler$St = null;
                $Stthis$Mnform$St = null;
            } catch (ClassCastException e) {
                throw new WrongType(e, "lowest", -2, objApply1);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "highest", -2, objApply2);
        }
    }

    public static void androidLog(Object message) {
    }

    @Override // gnu.expr.ModuleBody
    public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
        switch (moduleMethod.selector) {
            case 16:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 17:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 23:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 25:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 28:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 32:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 33:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 34:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 35:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 37:
                if (!(obj instanceof Symbol)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 39:
                if (!(obj instanceof Symbol)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 40:
                if (!(obj instanceof Symbol)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 43:
                if (!(obj instanceof Symbol)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 47:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 57:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 59:
                if (!(obj instanceof Collection)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 60:
                if (!(obj instanceof Collection)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 61:
                if (!(obj instanceof Map)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 62:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 65:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 70:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 73:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 74:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 75:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 76:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 78:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 79:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 80:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 82:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 83:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 84:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 85:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 86:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 87:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 88:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 91:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 92:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 93:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 94:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 95:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 96:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 97:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 98:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 99:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 100:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 101:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 104:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 108:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 109:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 110:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 111:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 114:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 116:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 117:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 118:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 119:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case R.styleable.AppCompatTheme_viewInflaterClass /* 120 */:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 121:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 122:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 123:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 124:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 125:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 127:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 128:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 129:
                if (!(obj instanceof CharSequence)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 130:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 132:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 133:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 134:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 135:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 136:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 137:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 138:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 139:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 140:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 141:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 142:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 143:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 144:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 145:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 146:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 147:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 148:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 149:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 151:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 152:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 153:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 154:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 155:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 156:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 158:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 159:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case ComponentConstants.TEXTBOX_PREFERRED_WIDTH /* 160 */:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 161:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 163:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 164:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 165:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 166:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 167:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 168:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 169:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 170:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 179:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 184:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_FULLSCREEN /* 195 */:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case HttpStatusCodes.STATUS_CODE_NO_CONTENT /* 204 */:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 209:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 214:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 215:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 216:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 222:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 232:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case YaVersion.YOUNG_ANDROID_VERSION /* 233 */:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 235:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 236:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 237:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 238:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 240:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 247:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 248:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 249:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 250:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case Telnet.WILL /* 251 */:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case Telnet.WONT /* 252 */:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case InputDeviceCompat.SOURCE_KEYBOARD /* 257 */:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 259:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 260:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 263:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 266:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 267:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 276:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 278:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 280:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 285:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 286:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 287:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 290:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 293:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 295:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case HttpStatusCodes.STATUS_CODE_MULTIPLE_CHOICES /* 300 */:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 301:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case ErrorMessages.ERROR_TWITTER_AUTHORIZATION_FAILED /* 305 */:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case ErrorMessages.ERROR_TWITTER_SET_STATUS_FAILED /* 306 */:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            default:
                return super.match1(moduleMethod, obj, callContext);
        }
    }

    static {
        SimpleSymbol simpleSymbol = Lit461;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) new SimpleSymbol("cont").readResolve();
        Lit56 = simpleSymbol2;
        Lit177 = PairWithPosition.make(PairWithPosition.make(simpleSymbol, PairWithPosition.make(simpleSymbol2, LList.Empty, "/tmp/runtime3808032275111475787.scm", 3919910), "/tmp/runtime3808032275111475787.scm", 3919878), LList.Empty, "/tmp/runtime3808032275111475787.scm", 3919878);
        Lit176 = PairWithPosition.make(null, LList.Empty, "/tmp/runtime3808032275111475787.scm", 3915800);
        Lit175 = PairWithPosition.make(PairWithPosition.make(Lit465, LList.Empty, "/tmp/runtime3808032275111475787.scm", 3911711), LList.Empty, "/tmp/runtime3808032275111475787.scm", 3911711);
        Lit174 = PairWithPosition.make(Lit464, LList.Empty, "/tmp/runtime3808032275111475787.scm", 3907615);
        Lit173 = PairWithPosition.make(Lit464, LList.Empty, "/tmp/runtime3808032275111475787.scm", 3907608);
        Lit172 = PairWithPosition.make(Lit459, LList.Empty, "/tmp/runtime3808032275111475787.scm", 3903508);
        Lit171 = PairWithPosition.make(Lit463, PairWithPosition.make(Lit465, PairWithPosition.make(LList.Empty, LList.Empty, "/tmp/runtime3808032275111475787.scm", 3899427), "/tmp/runtime3808032275111475787.scm", 3899415), "/tmp/runtime3808032275111475787.scm", 3899410);
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) new SimpleSymbol("*yail-break*").readResolve();
        Lit159 = simpleSymbol3;
        Lit170 = PairWithPosition.make(simpleSymbol3, LList.Empty, "/tmp/runtime3808032275111475787.scm", 3895320);
        Lit169 = PairWithPosition.make(Lit462, LList.Empty, "/tmp/runtime3808032275111475787.scm", 3895312);
        Lit168 = PairWithPosition.make(Lit56, LList.Empty, "/tmp/runtime3808032275111475787.scm", 3895306);
        Lit167 = PairWithPosition.make(Lit463, LList.Empty, "/tmp/runtime3808032275111475787.scm", 3895300);
        Lit166 = (SimpleSymbol) new SimpleSymbol("while").readResolve();
        Lit165 = PairWithPosition.make(Lit462, LList.Empty, "/tmp/runtime3808032275111475787.scm", 3842071);
        Lit164 = PairWithPosition.make(Lit365, LList.Empty, "/tmp/runtime3808032275111475787.scm", 3842055);
        Lit163 = PairWithPosition.make(Lit159, LList.Empty, "/tmp/runtime3808032275111475787.scm", 3837965);
        Lit162 = PairWithPosition.make(Lit462, LList.Empty, "/tmp/runtime3808032275111475787.scm", 3837957);
        Lit161 = PairWithPosition.make(Lit461, LList.Empty, "/tmp/runtime3808032275111475787.scm", 3833860);
        Lit160 = (SimpleSymbol) new SimpleSymbol("forrange").readResolve();
        Lit158 = PairWithPosition.make(Lit327, PairWithPosition.make(Lit466, LList.Empty, "/tmp/runtime3808032275111475787.scm", 3764248), "/tmp/runtime3808032275111475787.scm", 3764233);
        Lit157 = PairWithPosition.make(Lit462, LList.Empty, "/tmp/runtime3808032275111475787.scm", 3760147);
        Lit156 = PairWithPosition.make(Lit466, LList.Empty, "/tmp/runtime3808032275111475787.scm", 3760141);
        Lit155 = PairWithPosition.make(Lit463, LList.Empty, "/tmp/runtime3808032275111475787.scm", 3760135);
        Lit154 = PairWithPosition.make(Lit159, LList.Empty, "/tmp/runtime3808032275111475787.scm", 3756045);
        Lit153 = PairWithPosition.make(Lit462, LList.Empty, "/tmp/runtime3808032275111475787.scm", 3756037);
        Lit152 = PairWithPosition.make(Lit461, LList.Empty, "/tmp/runtime3808032275111475787.scm", 3751940);
        Lit151 = (SimpleSymbol) new SimpleSymbol("foreach").readResolve();
        Lit150 = (SimpleSymbol) new SimpleSymbol("reset-current-form-environment").readResolve();
        Lit149 = (SimpleSymbol) new SimpleSymbol("lookup-global-var-in-current-form-environment").readResolve();
        Lit148 = (SimpleSymbol) new SimpleSymbol("add-global-var-to-current-form-environment").readResolve();
        Lit147 = (SimpleSymbol) new SimpleSymbol("rename-in-current-form-environment").readResolve();
        Lit146 = (SimpleSymbol) new SimpleSymbol("delete-from-current-form-environment").readResolve();
        Lit145 = (SimpleSymbol) new SimpleSymbol("filter-type-in-current-form-environment").readResolve();
        Lit144 = (SimpleSymbol) new SimpleSymbol("lookup-in-current-form-environment").readResolve();
        Lit143 = (SimpleSymbol) new SimpleSymbol("add-to-current-form-environment").readResolve();
        Lit142 = new SyntaxRules(new Object[]{Lit456}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\r\u0007\u0000\b\b", new Object[0], 1), "\u0003", "\u0011\u0018\u0004\u0011\u0018\f1\u0011\u0018\u0014\b\u0005\u0003\b\u0011\u0018\u001c\b\u0011\u0018$\b\u0011\u0018\u0014\b\u0005\u0003", new Object[]{Lit459, Lit468, Lit464, Lit504, Lit467}, 1)}, 1);
        Lit141 = (SimpleSymbol) new SimpleSymbol("do-after-form-creation").readResolve();
        Lit140 = new SyntaxRules(new Object[]{Lit456}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018<\f\u0007\r\u000f\b\b\b\r\u0017\u0010\b\b", new Object[0], 3), "\u0001\u0003\u0003", "\u0011\u0018\u0004\b\u0011\u0018\f\u0011\u0018\u0014¡\u0011\u0018\u001c)\u0011\u0018$\b\u0003\b\u0011\u0018,\u0019\b\r\u000b\b\u0015\u0013\b\u0011\u00184)\u0011\u0018$\b\u0003\b\u0011\u0018,\t\u0010\b\u0011\u0018,\u0019\b\r\u000b\b\u0015\u0013", new Object[]{Lit464, Lit459, Lit468, Lit148, Lit469, Lit462, Lit470}, 1), new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\b", new Object[0], 2), "\u0001\u0001", "\u0011\u0018\u0004\b\u0011\u0018\f\u0011\u0018\u0014Y\u0011\u0018\u001c)\u0011\u0018$\b\u0003\b\u000b\b\u0011\u0018,)\u0011\u0018$\b\u0003\b\u0011\u00184\t\u0010\b\u000b", new Object[]{Lit464, Lit459, Lit468, Lit148, Lit469, Lit470, Lit462}, 0)}, 3);
        Lit139 = (SimpleSymbol) new SimpleSymbol("def").readResolve();
        Lit138 = new SyntaxTemplate("\u0001\u0001\u0001\u0001\u0000", "\u0010", new Object[0], 0);
        Lit137 = new SyntaxTemplate("\u0001\u0001\u0001\u0001\u0000", "\t\u001b\b\"", new Object[0], 0);
        Lit136 = new SyntaxTemplate("\u0001\u0001\u0001\u0001\u0000", "\u0013", new Object[0], 0);
        Lit135 = new SyntaxTemplate("\u0001\u0001\u0001\u0001\u0000", "\u000b", new Object[0], 0);
        Lit134 = (SimpleSymbol) new SimpleSymbol("any$").readResolve();
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) new SimpleSymbol("define-event-helper").readResolve();
        Lit117 = simpleSymbol4;
        Lit133 = new SyntaxTemplate("\u0001\u0001\u0001\u0001\u0000", "\u0018\u0004", new Object[]{PairWithPosition.make(simpleSymbol4, LList.Empty, "/tmp/runtime3808032275111475787.scm", 3190796)}, 0);
        Lit132 = new SyntaxTemplate("\u0001\u0001\u0001\u0001\u0000", "\u0018\u0004", new Object[]{PairWithPosition.make(Lit464, LList.Empty, "/tmp/runtime3808032275111475787.scm", 3186698)}, 0);
        Lit131 = new SyntaxPattern("\f\u0007\f\u000f\f\u0017\f\u001f#", new Object[0], 5);
        Lit130 = (SimpleSymbol) new SimpleSymbol("define-generic-event").readResolve();
        Lit129 = new SyntaxTemplate("\u0001\u0001\u0001\u0001\u0000", "\b\u0011\u0018\u0004\u0011\u0018\f\u0091\u0011\u0018\u0014\u0011\u0018\u001c)\u0011\u0018$\b\u000b\b\u0011\u0018$\b\u0013\b\u0011\u0018,)\u0011\u0018$\b\u000b\b\u0011\u0018$\b\u0013", new Object[]{Lit459, Lit468, PairWithPosition.make(Lit457, Pair.make(Lit530, Pair.make(Pair.make(Lit458, Pair.make(Lit552, LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 3141649), PairWithPosition.make(Lit515, PairWithPosition.make(Lit531, PairWithPosition.make((SimpleSymbol) new SimpleSymbol("*this-form*").readResolve(), LList.Empty, "/tmp/runtime3808032275111475787.scm", 3145815), "/tmp/runtime3808032275111475787.scm", 3145749), "/tmp/runtime3808032275111475787.scm", 3145745), Lit469, Lit491}, 0);
        Lit128 = new SyntaxTemplate("\u0001\u0001\u0001\u0001\u0000", "\t\u001b\b\"", new Object[0], 0);
        Lit127 = new SyntaxTemplate("\u0001\u0001\u0001\u0001\u0000", "\u0013", new Object[0], 0);
        Lit126 = (SimpleSymbol) new SimpleSymbol("$").readResolve();
        Lit125 = new SyntaxTemplate("\u0001\u0001\u0001\u0001\u0000", "\u000b", new Object[0], 0);
        Lit124 = new SyntaxTemplate("\u0001\u0001\u0001\u0001\u0000", "\u0018\u0004", new Object[]{PairWithPosition.make(Lit117, LList.Empty, "/tmp/runtime3808032275111475787.scm", 3117068)}, 0);
        Lit123 = new SyntaxTemplate("\u0001\u0001\u0001\u0001\u0000", "\u0018\u0004", new Object[]{PairWithPosition.make(Lit464, LList.Empty, "/tmp/runtime3808032275111475787.scm", 3112970)}, 0);
        Lit122 = new SyntaxPattern("\f\u0007\f\u000f\f\u0017\f\u001f#", new Object[0], 5);
        Lit121 = (SimpleSymbol) new SimpleSymbol("define-event").readResolve();
        Object[] objArr = {Lit456};
        SyntaxPattern syntaxPattern = new SyntaxPattern("\f\u0018\r\u0007\u0000\b\b", new Object[0], 1);
        SimpleSymbol simpleSymbol5 = (SimpleSymbol) new SimpleSymbol("list").readResolve();
        Lit8 = simpleSymbol5;
        Lit120 = new SyntaxRules(objArr, new SyntaxRule[]{new SyntaxRule(syntaxPattern, "\u0003", "\u0011\u0018\u0004\b\u0005\u0003", new Object[]{simpleSymbol5}, 1)}, 1);
        Lit119 = (SimpleSymbol) new SimpleSymbol("*list-for-runtime*").readResolve();
        Lit118 = new SyntaxRules(new Object[]{Lit456}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007,\r\u000f\b\b\b,\r\u0017\u0010\b\b\b", new Object[0], 3), "\u0001\u0003\u0003", "\u0011\u0018\u0004Ù\u0011\u0018\f)\t\u0003\b\r\u000b\b\u0011\u0018\u0014Q\b\r\t\u000b\b\u0011\u0018\u001c\b\u000b\b\u0015\u0013\b\u0011\u0018$\u0011\u0018,Y\u0011\u00184)\u0011\u0018<\b\u0003\b\u0003\b\u0011\u0018D)\u0011\u0018<\b\u0003\b\u0003", new Object[]{Lit464, Lit471, Lit463, Lit205, Lit459, Lit468, Lit143, Lit469, Lit480}, 1)}, 3);
        SimpleSymbol simpleSymbol6 = (SimpleSymbol) new SimpleSymbol("symbol-append").readResolve();
        Lit110 = simpleSymbol6;
        Lit116 = new SyntaxTemplate("\u0001\u0001\u0001", "\u0011\u0018\u0004\u0011\u0018\f\t\u000b\u0011\u0018\u0014\b\u0013", new Object[]{simpleSymbol6, PairWithPosition.make(Lit469, PairWithPosition.make(Lit134, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2883636), "/tmp/runtime3808032275111475787.scm", 2883636), PairWithPosition.make(Lit469, PairWithPosition.make(Lit126, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2883657), "/tmp/runtime3808032275111475787.scm", 2883657)}, 0);
        Lit115 = new SyntaxPattern("\f\u0007\f\u000f\f\u0017\b", new Object[0], 3);
        Lit114 = (SimpleSymbol) new SimpleSymbol("gen-generic-event-name").readResolve();
        Lit113 = new SyntaxTemplate("\u0001\u0001\u0001", "\u0011\u0018\u0004\t\u000b\u0011\u0018\f\b\u0013", new Object[]{Lit110, PairWithPosition.make(Lit469, PairWithPosition.make(Lit126, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2850883), "/tmp/runtime3808032275111475787.scm", 2850883)}, 0);
        Lit112 = new SyntaxPattern("\f\u0007\f\u000f\f\u0017\b", new Object[0], 3);
        Lit111 = (SimpleSymbol) new SimpleSymbol("gen-event-name").readResolve();
        Object[] objArr2 = {Lit456};
        SyntaxPattern syntaxPattern2 = new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\f\u001f\f'\b", new Object[0], 5);
        SimpleSymbol simpleSymbol7 = (SimpleSymbol) new SimpleSymbol("module-extends").readResolve();
        SimpleSymbol simpleSymbol8 = (SimpleSymbol) new SimpleSymbol("module-name").readResolve();
        SimpleSymbol simpleSymbol9 = (SimpleSymbol) new SimpleSymbol("module-static").readResolve();
        PairWithPosition pairWithPositionMake = PairWithPosition.make((SimpleSymbol) new SimpleSymbol("require").readResolve(), PairWithPosition.make((SimpleSymbol) new SimpleSymbol("<com.google.youngandroid.runtime>").readResolve(), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1380369), "/tmp/runtime3808032275111475787.scm", 1380360);
        PairWithPosition pairWithPositionMake2 = PairWithPosition.make(Lit471, PairWithPosition.make(PairWithPosition.make(Lit537, PairWithPosition.make(Lit473, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1388577), "/tmp/runtime3808032275111475787.scm", 1388560), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit457, Pair.make(Lit472, Pair.make(Pair.make(Lit458, Pair.make((SimpleSymbol) new SimpleSymbol("getSimpleName").readResolve(), LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 1392651), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit457, Pair.make(Lit472, Pair.make(Pair.make(Lit458, Pair.make((SimpleSymbol) new SimpleSymbol("getClass").readResolve(), LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 1392668), PairWithPosition.make(Lit473, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1392679), "/tmp/runtime3808032275111475787.scm", 1392667), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1392667), "/tmp/runtime3808032275111475787.scm", 1392650), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1392650), "/tmp/runtime3808032275111475787.scm", 1388560), "/tmp/runtime3808032275111475787.scm", 1388552);
        PairWithPosition pairWithPositionMake3 = PairWithPosition.make(Lit475, PairWithPosition.make(Lit476, PairWithPosition.make(Lit474, PairWithPosition.make((SimpleSymbol) new SimpleSymbol("android.os.Bundle").readResolve(), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1400868), "/tmp/runtime3808032275111475787.scm", 1400865), "/tmp/runtime3808032275111475787.scm", 1400858), "/tmp/runtime3808032275111475787.scm", 1400848);
        PairWithPosition pairWithPositionMake4 = PairWithPosition.make(Lit457, Pair.make((SimpleSymbol) new SimpleSymbol("com.google.appinventor.components.runtime.AppInventorCompatActivity").readResolve(), Pair.make(Pair.make(Lit458, Pair.make((SimpleSymbol) new SimpleSymbol("setClassicModeFromYail").readResolve(), LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 1409035);
        SimpleSymbol simpleSymbol10 = (SimpleSymbol) new SimpleSymbol("invoke-special").readResolve();
        PairWithPosition pairWithPositionMake5 = PairWithPosition.make(PairWithPosition.make(Lit509, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1413160), PairWithPosition.make(PairWithPosition.make(Lit469, PairWithPosition.make(Lit475, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1413168), "/tmp/runtime3808032275111475787.scm", 1413168), PairWithPosition.make(Lit476, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1413177), "/tmp/runtime3808032275111475787.scm", 1413167), "/tmp/runtime3808032275111475787.scm", 1413160);
        PairWithPosition pairWithPositionMake6 = PairWithPosition.make(Lit471, PairWithPosition.make(Lit477, PairWithPosition.make(Boolean.FALSE, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1421341), "/tmp/runtime3808032275111475787.scm", 1421328), "/tmp/runtime3808032275111475787.scm", 1421320);
        PairWithPosition pairWithPositionMake7 = PairWithPosition.make(Lit471, PairWithPosition.make(PairWithPosition.make(Lit481, PairWithPosition.make(Lit478, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1429538), "/tmp/runtime3808032275111475787.scm", 1429520), PairWithPosition.make(PairWithPosition.make(Lit567, PairWithPosition.make(Lit477, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit457, Pair.make((SimpleSymbol) new SimpleSymbol("android.util.Log").readResolve(), Pair.make(Pair.make(Lit458, Pair.make((SimpleSymbol) new SimpleSymbol("i").readResolve(), LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 1433630), PairWithPosition.make("YAIL", PairWithPosition.make(Lit478, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1433656), "/tmp/runtime3808032275111475787.scm", 1433649), "/tmp/runtime3808032275111475787.scm", 1433629), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1433629), "/tmp/runtime3808032275111475787.scm", 1433616), "/tmp/runtime3808032275111475787.scm", 1433610), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1433610), "/tmp/runtime3808032275111475787.scm", 1429520), "/tmp/runtime3808032275111475787.scm", 1429512);
        PairWithPosition pairWithPositionMake8 = PairWithPosition.make(Lit457, Pair.make(Lit479, Pair.make(Pair.make(Lit458, Pair.make(Lit487, LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 1458187);
        SimpleSymbol simpleSymbol11 = Lit471;
        PairWithPosition pairWithPositionMake9 = PairWithPosition.make(Lit480, PairWithPosition.make(Lit482, PairWithPosition.make(Lit474, PairWithPosition.make(Lit484, PairWithPosition.make(Lit473, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1466436), "/tmp/runtime3808032275111475787.scm", 1466417), "/tmp/runtime3808032275111475787.scm", 1466414), "/tmp/runtime3808032275111475787.scm", 1466409), "/tmp/runtime3808032275111475787.scm", 1466384);
        PairWithPosition pairWithPositionMake10 = PairWithPosition.make(Lit481, PairWithPosition.make(PairWithPosition.make(Lit488, PairWithPosition.make(Boolean.FALSE, PairWithPosition.make("Adding ~A to env ~A with value ~A", PairWithPosition.make(Lit482, PairWithPosition.make(Lit483, PairWithPosition.make(Lit473, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1470561), "/tmp/runtime3808032275111475787.scm", 1470544), "/tmp/runtime3808032275111475787.scm", 1470539), "/tmp/runtime3808032275111475787.scm", 1470503), "/tmp/runtime3808032275111475787.scm", 1470500), "/tmp/runtime3808032275111475787.scm", 1470492), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1470492), "/tmp/runtime3808032275111475787.scm", 1470474);
        SimpleSymbol simpleSymbol12 = Lit457;
        SimpleSymbol simpleSymbol13 = Lit479;
        SimpleSymbol simpleSymbol14 = Lit458;
        SimpleSymbol simpleSymbol15 = (SimpleSymbol) new SimpleSymbol("put").readResolve();
        Lit0 = simpleSymbol15;
        PairWithPosition pairWithPositionMake11 = PairWithPosition.make(simpleSymbol11, PairWithPosition.make(pairWithPositionMake9, PairWithPosition.make(pairWithPositionMake10, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol12, Pair.make(simpleSymbol13, Pair.make(Pair.make(simpleSymbol14, Pair.make(simpleSymbol15, LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 1474571), PairWithPosition.make(Lit483, PairWithPosition.make(Lit482, PairWithPosition.make(Lit473, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1474621), "/tmp/runtime3808032275111475787.scm", 1474616), "/tmp/runtime3808032275111475787.scm", 1474599), "/tmp/runtime3808032275111475787.scm", 1474570), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1474570), "/tmp/runtime3808032275111475787.scm", 1470474), "/tmp/runtime3808032275111475787.scm", 1466384), "/tmp/runtime3808032275111475787.scm", 1466376);
        SimpleSymbol simpleSymbol16 = Lit471;
        PairWithPosition pairWithPositionMake12 = PairWithPosition.make(Lit521, PairWithPosition.make(Lit482, PairWithPosition.make(Lit474, PairWithPosition.make(Lit484, PairWithPosition.make(Special.optional, PairWithPosition.make(PairWithPosition.make(Lit485, PairWithPosition.make(Boolean.FALSE, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1482849), "/tmp/runtime3808032275111475787.scm", 1482834), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1482834), "/tmp/runtime3808032275111475787.scm", 1482823), "/tmp/runtime3808032275111475787.scm", 1482804), "/tmp/runtime3808032275111475787.scm", 1482801), "/tmp/runtime3808032275111475787.scm", 1482796), "/tmp/runtime3808032275111475787.scm", 1482768);
        SimpleSymbol simpleSymbol17 = Lit459;
        PairWithPosition pairWithPositionMake13 = PairWithPosition.make(Lit510, PairWithPosition.make(PairWithPosition.make(Lit508, PairWithPosition.make(PairWithPosition.make(Lit520, PairWithPosition.make(Lit483, PairWithPosition.make(null, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1486894), "/tmp/runtime3808032275111475787.scm", 1486877), "/tmp/runtime3808032275111475787.scm", 1486872), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1486872), "/tmp/runtime3808032275111475787.scm", 1486867), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit457, Pair.make(Lit479, Pair.make(Pair.make(Lit458, Pair.make(Lit486, LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 1490964), PairWithPosition.make(Lit483, PairWithPosition.make(Lit482, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1491013), "/tmp/runtime3808032275111475787.scm", 1490996), "/tmp/runtime3808032275111475787.scm", 1490963), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1490963), "/tmp/runtime3808032275111475787.scm", 1486867), "/tmp/runtime3808032275111475787.scm", 1486862);
        SimpleSymbol simpleSymbol18 = Lit457;
        SimpleSymbol simpleSymbol19 = Lit479;
        SimpleSymbol simpleSymbol20 = Lit458;
        SimpleSymbol simpleSymbol21 = (SimpleSymbol) new SimpleSymbol("get").readResolve();
        Lit1 = simpleSymbol21;
        PairWithPosition pairWithPositionMake14 = PairWithPosition.make(simpleSymbol16, PairWithPosition.make(pairWithPositionMake12, PairWithPosition.make(PairWithPosition.make(simpleSymbol17, PairWithPosition.make(pairWithPositionMake13, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol18, Pair.make(simpleSymbol19, Pair.make(Pair.make(simpleSymbol20, Pair.make(simpleSymbol21, LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 1495055), PairWithPosition.make(Lit483, PairWithPosition.make(Lit482, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1495100), "/tmp/runtime3808032275111475787.scm", 1495083), "/tmp/runtime3808032275111475787.scm", 1495054), PairWithPosition.make(Lit485, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1499150), "/tmp/runtime3808032275111475787.scm", 1495054), "/tmp/runtime3808032275111475787.scm", 1486862), "/tmp/runtime3808032275111475787.scm", 1486858), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1486858), "/tmp/runtime3808032275111475787.scm", 1482768), "/tmp/runtime3808032275111475787.scm", 1482760);
        PairWithPosition pairWithPositionMake15 = PairWithPosition.make(Lit471, PairWithPosition.make(PairWithPosition.make(Lit518, PairWithPosition.make(Lit482, PairWithPosition.make(Lit474, PairWithPosition.make(Lit484, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1507382), "/tmp/runtime3808032275111475787.scm", 1507379), "/tmp/runtime3808032275111475787.scm", 1507374), "/tmp/runtime3808032275111475787.scm", 1507344), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit457, Pair.make(Lit479, Pair.make(Pair.make(Lit458, Pair.make(Lit486, LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 1511435), PairWithPosition.make(Lit483, PairWithPosition.make(Lit482, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1511484), "/tmp/runtime3808032275111475787.scm", 1511467), "/tmp/runtime3808032275111475787.scm", 1511434), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1511434), "/tmp/runtime3808032275111475787.scm", 1507344), "/tmp/runtime3808032275111475787.scm", 1507336);
        PairWithPosition pairWithPositionMake16 = PairWithPosition.make(Lit457, Pair.make(Lit479, Pair.make(Pair.make(Lit458, Pair.make(Lit487, LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 1523723);
        PairWithPosition pairWithPositionMake17 = PairWithPosition.make("-global-vars", LList.Empty, "/tmp/runtime3808032275111475787.scm", 1531945);
        PairWithPosition pairWithPositionMake18 = PairWithPosition.make(Lit471, PairWithPosition.make(PairWithPosition.make(Lit558, PairWithPosition.make(Lit482, PairWithPosition.make(Lit474, PairWithPosition.make(Lit484, PairWithPosition.make(Lit473, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1540170), "/tmp/runtime3808032275111475787.scm", 1540151), "/tmp/runtime3808032275111475787.scm", 1540148), "/tmp/runtime3808032275111475787.scm", 1540143), "/tmp/runtime3808032275111475787.scm", 1540112), PairWithPosition.make(PairWithPosition.make(Lit481, PairWithPosition.make(PairWithPosition.make(Lit488, PairWithPosition.make(Boolean.FALSE, PairWithPosition.make("Adding ~A to env ~A with value ~A", PairWithPosition.make(Lit482, PairWithPosition.make(Lit489, PairWithPosition.make(Lit473, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1544295), "/tmp/runtime3808032275111475787.scm", 1544272), "/tmp/runtime3808032275111475787.scm", 1544267), "/tmp/runtime3808032275111475787.scm", 1544231), "/tmp/runtime3808032275111475787.scm", 1544228), "/tmp/runtime3808032275111475787.scm", 1544220), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1544220), "/tmp/runtime3808032275111475787.scm", 1544202), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit457, Pair.make(Lit479, Pair.make(Pair.make(Lit458, Pair.make(Lit0, LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 1548299), PairWithPosition.make(Lit489, PairWithPosition.make(Lit482, PairWithPosition.make(Lit473, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1548355), "/tmp/runtime3808032275111475787.scm", 1548350), "/tmp/runtime3808032275111475787.scm", 1548327), "/tmp/runtime3808032275111475787.scm", 1548298), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1548298), "/tmp/runtime3808032275111475787.scm", 1544202), "/tmp/runtime3808032275111475787.scm", 1540112), "/tmp/runtime3808032275111475787.scm", 1540104);
        PairWithPosition pairWithPositionMake19 = PairWithPosition.make(null, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1564712);
        SimpleSymbol simpleSymbol22 = (SimpleSymbol) new SimpleSymbol("form-name-symbol").readResolve();
        PairWithPosition pairWithPositionMake20 = PairWithPosition.make(Lit471, PairWithPosition.make(Lit492, PairWithPosition.make(Lit474, PairWithPosition.make(Lit490, PairWithPosition.make(PairWithPosition.make(Lit469, PairWithPosition.make(LList.Empty, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1589304), "/tmp/runtime3808032275111475787.scm", 1589304), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1589303), "/tmp/runtime3808032275111475787.scm", 1589287), "/tmp/runtime3808032275111475787.scm", 1589284), "/tmp/runtime3808032275111475787.scm", 1589264), "/tmp/runtime3808032275111475787.scm", 1589256);
        PairWithPosition pairWithPositionMake21 = PairWithPosition.make(Lit471, PairWithPosition.make(Lit497, PairWithPosition.make(Lit474, PairWithPosition.make(Lit490, PairWithPosition.make(PairWithPosition.make(Lit469, PairWithPosition.make(LList.Empty, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1609786), "/tmp/runtime3808032275111475787.scm", 1609786), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1609785), "/tmp/runtime3808032275111475787.scm", 1609769), "/tmp/runtime3808032275111475787.scm", 1609766), "/tmp/runtime3808032275111475787.scm", 1609744), "/tmp/runtime3808032275111475787.scm", 1609736);
        PairWithPosition pairWithPositionMake22 = PairWithPosition.make(Lit471, PairWithPosition.make(PairWithPosition.make(Lit491, PairWithPosition.make(Lit494, PairWithPosition.make(Lit495, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1626158), "/tmp/runtime3808032275111475787.scm", 1626143), "/tmp/runtime3808032275111475787.scm", 1626128), PairWithPosition.make(PairWithPosition.make(Lit496, PairWithPosition.make(Lit492, PairWithPosition.make(PairWithPosition.make(Lit493, PairWithPosition.make(PairWithPosition.make(Lit493, PairWithPosition.make(Lit494, PairWithPosition.make(Lit495, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1634347), "/tmp/runtime3808032275111475787.scm", 1634332), "/tmp/runtime3808032275111475787.scm", 1634326), PairWithPosition.make(Lit492, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1638422), "/tmp/runtime3808032275111475787.scm", 1634326), "/tmp/runtime3808032275111475787.scm", 1634320), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1634320), "/tmp/runtime3808032275111475787.scm", 1630224), "/tmp/runtime3808032275111475787.scm", 1630218), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1630218), "/tmp/runtime3808032275111475787.scm", 1626128), "/tmp/runtime3808032275111475787.scm", 1626120);
        PairWithPosition pairWithPositionMake23 = PairWithPosition.make(Lit471, PairWithPosition.make(PairWithPosition.make(Lit578, PairWithPosition.make(Lit498, PairWithPosition.make(Lit499, PairWithPosition.make(Lit494, PairWithPosition.make(Lit500, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1654864), "/tmp/runtime3808032275111475787.scm", 1654849), "/tmp/runtime3808032275111475787.scm", 1654834), "/tmp/runtime3808032275111475787.scm", 1654819), "/tmp/runtime3808032275111475787.scm", 1654800), PairWithPosition.make(PairWithPosition.make(Lit496, PairWithPosition.make(Lit497, PairWithPosition.make(PairWithPosition.make(Lit493, PairWithPosition.make(PairWithPosition.make(Lit8, PairWithPosition.make(Lit498, PairWithPosition.make(Lit499, PairWithPosition.make(Lit494, PairWithPosition.make(Lit500, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1663049), "/tmp/runtime3808032275111475787.scm", 1663034), "/tmp/runtime3808032275111475787.scm", 1663019), "/tmp/runtime3808032275111475787.scm", 1663004), "/tmp/runtime3808032275111475787.scm", 1662998), PairWithPosition.make(Lit497, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1667094), "/tmp/runtime3808032275111475787.scm", 1662998), "/tmp/runtime3808032275111475787.scm", 1662992), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1662992), "/tmp/runtime3808032275111475787.scm", 1658896), "/tmp/runtime3808032275111475787.scm", 1658890), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1658890), "/tmp/runtime3808032275111475787.scm", 1654800), "/tmp/runtime3808032275111475787.scm", 1654792);
        PairWithPosition pairWithPositionMake24 = PairWithPosition.make(Lit471, PairWithPosition.make(Lit501, PairWithPosition.make(Lit474, PairWithPosition.make(Lit490, PairWithPosition.make(PairWithPosition.make(Lit469, PairWithPosition.make(LList.Empty, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1679419), "/tmp/runtime3808032275111475787.scm", 1679419), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1679418), "/tmp/runtime3808032275111475787.scm", 1679402), "/tmp/runtime3808032275111475787.scm", 1679399), "/tmp/runtime3808032275111475787.scm", 1679376), "/tmp/runtime3808032275111475787.scm", 1679368);
        PairWithPosition pairWithPositionMake25 = PairWithPosition.make(Lit471, PairWithPosition.make(PairWithPosition.make(Lit470, PairWithPosition.make(Lit502, PairWithPosition.make(Lit503, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1691688), "/tmp/runtime3808032275111475787.scm", 1691684), "/tmp/runtime3808032275111475787.scm", 1691664), PairWithPosition.make(PairWithPosition.make(Lit496, PairWithPosition.make(Lit501, PairWithPosition.make(PairWithPosition.make(Lit493, PairWithPosition.make(PairWithPosition.make(Lit8, PairWithPosition.make(Lit502, PairWithPosition.make(Lit503, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1699872), "/tmp/runtime3808032275111475787.scm", 1699868), "/tmp/runtime3808032275111475787.scm", 1699862), PairWithPosition.make(Lit501, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1703958), "/tmp/runtime3808032275111475787.scm", 1699862), "/tmp/runtime3808032275111475787.scm", 1699856), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1699856), "/tmp/runtime3808032275111475787.scm", 1695760), "/tmp/runtime3808032275111475787.scm", 1695754), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1695754), "/tmp/runtime3808032275111475787.scm", 1691664), "/tmp/runtime3808032275111475787.scm", 1691656);
        PairWithPosition pairWithPositionMake26 = PairWithPosition.make(Lit471, PairWithPosition.make(Lit505, PairWithPosition.make(Lit474, PairWithPosition.make(Lit490, PairWithPosition.make(PairWithPosition.make(Lit469, PairWithPosition.make(LList.Empty, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1724476), "/tmp/runtime3808032275111475787.scm", 1724476), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1724475), "/tmp/runtime3808032275111475787.scm", 1724459), "/tmp/runtime3808032275111475787.scm", 1724456), "/tmp/runtime3808032275111475787.scm", 1724432), "/tmp/runtime3808032275111475787.scm", 1724424);
        PairWithPosition pairWithPositionMake27 = PairWithPosition.make(Lit471, PairWithPosition.make(PairWithPosition.make(Lit504, PairWithPosition.make(Lit506, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1732655), "/tmp/runtime3808032275111475787.scm", 1732624), PairWithPosition.make(PairWithPosition.make(Lit496, PairWithPosition.make(Lit505, PairWithPosition.make(PairWithPosition.make(Lit493, PairWithPosition.make(Lit506, PairWithPosition.make(Lit505, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1744918), "/tmp/runtime3808032275111475787.scm", 1740822), "/tmp/runtime3808032275111475787.scm", 1740816), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1740816), "/tmp/runtime3808032275111475787.scm", 1736720), "/tmp/runtime3808032275111475787.scm", 1736714), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1736714), "/tmp/runtime3808032275111475787.scm", 1732624), "/tmp/runtime3808032275111475787.scm", 1732616);
        PairWithPosition pairWithPositionMake28 = PairWithPosition.make(Lit471, PairWithPosition.make(PairWithPosition.make((SimpleSymbol) new SimpleSymbol("send-error").readResolve(), PairWithPosition.make(Lit507, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1753116), "/tmp/runtime3808032275111475787.scm", 1753104), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit457, Pair.make((SimpleSymbol) new SimpleSymbol("com.google.appinventor.components.runtime.util.RetValManager").readResolve(), Pair.make(Pair.make(Lit458, Pair.make((SimpleSymbol) new SimpleSymbol("sendError").readResolve(), LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 1757195), PairWithPosition.make(Lit507, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1757266), "/tmp/runtime3808032275111475787.scm", 1757194), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1757194), "/tmp/runtime3808032275111475787.scm", 1753104), "/tmp/runtime3808032275111475787.scm", 1753096);
        PairWithPosition pairWithPositionMake29 = PairWithPosition.make(Lit527, PairWithPosition.make(Lit512, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1765411), "/tmp/runtime3808032275111475787.scm", 1765392);
        PairWithPosition pairWithPositionMake30 = PairWithPosition.make(Lit550, PairWithPosition.make(Lit514, PairWithPosition.make((SimpleSymbol) new SimpleSymbol("<com.google.appinventor.components.runtime.errors.YailRuntimeError>").readResolve(), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1769513), "/tmp/runtime3808032275111475787.scm", 1769496), "/tmp/runtime3808032275111475787.scm", 1769482);
        SimpleSymbol simpleSymbol23 = (SimpleSymbol) new SimpleSymbol("or").readResolve();
        PairWithPosition pairWithPositionMake31 = PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit457, Pair.make(PairWithPosition.make(Lit509, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1798176), Pair.make(Pair.make(Lit458, Pair.make(Lit511, LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 1798176), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1798175), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1798175);
        PairWithPosition pairWithPositionMake32 = PairWithPosition.make(Lit457, Pair.make((SimpleSymbol) new SimpleSymbol("com.google.appinventor.components.runtime.util.RuntimeErrorAlert").readResolve(), Pair.make(Pair.make(Lit458, Pair.make((SimpleSymbol) new SimpleSymbol("alert").readResolve(), LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 1802256);
        PairWithPosition pairWithPositionMake33 = PairWithPosition.make(Lit509, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1806352);
        PairWithPosition pairWithPositionMake34 = PairWithPosition.make(PairWithPosition.make(Lit457, Pair.make(PairWithPosition.make(Lit509, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1818652), Pair.make(Pair.make(Lit458, Pair.make(Lit511, LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 1818652), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1818652);
        PairWithPosition pairWithPositionMake35 = PairWithPosition.make(PairWithPosition.make(Lit459, PairWithPosition.make(PairWithPosition.make(Lit513, PairWithPosition.make(Lit512, PairWithPosition.make((SimpleSymbol) new SimpleSymbol("java.lang.Error").readResolve(), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1822754), "/tmp/runtime3808032275111475787.scm", 1822751), "/tmp/runtime3808032275111475787.scm", 1822740), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit457, Pair.make(Lit512, Pair.make(Pair.make(Lit458, Pair.make((SimpleSymbol) new SimpleSymbol("toString").readResolve(), LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 1822772), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1822771), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit457, Pair.make(Lit512, Pair.make(Pair.make(Lit458, Pair.make(Lit528, LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 1822786), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1822785), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1822785), "/tmp/runtime3808032275111475787.scm", 1822771), "/tmp/runtime3808032275111475787.scm", 1822740), "/tmp/runtime3808032275111475787.scm", 1822736), PairWithPosition.make(PairWithPosition.make(Lit459, PairWithPosition.make(PairWithPosition.make(Lit513, PairWithPosition.make(Lit512, PairWithPosition.make(Lit514, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1826850), "/tmp/runtime3808032275111475787.scm", 1826847), "/tmp/runtime3808032275111475787.scm", 1826836), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit457, Pair.make(PairWithPosition.make(Lit515, PairWithPosition.make(Lit514, PairWithPosition.make(Lit512, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1826890), "/tmp/runtime3808032275111475787.scm", 1826873), "/tmp/runtime3808032275111475787.scm", 1826869), Pair.make(Pair.make(Lit458, Pair.make((SimpleSymbol) new SimpleSymbol("getErrorType").readResolve(), LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 1826869), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1826868), PairWithPosition.make("Runtime Error", LList.Empty, "/tmp/runtime3808032275111475787.scm", 1826908), "/tmp/runtime3808032275111475787.scm", 1826868), "/tmp/runtime3808032275111475787.scm", 1826836), "/tmp/runtime3808032275111475787.scm", 1826832), PairWithPosition.make("End Application", LList.Empty, "/tmp/runtime3808032275111475787.scm", 1830928), "/tmp/runtime3808032275111475787.scm", 1826832), "/tmp/runtime3808032275111475787.scm", 1822736);
        SimpleSymbol simpleSymbol24 = Lit471;
        PairWithPosition pairWithPositionMake36 = PairWithPosition.make((SimpleSymbol) new SimpleSymbol("dispatchEvent").readResolve(), PairWithPosition.make(Lit522, PairWithPosition.make(Lit474, PairWithPosition.make(Lit532, PairWithPosition.make(Lit517, PairWithPosition.make(Lit474, PairWithPosition.make(Lit516, PairWithPosition.make(Lit523, PairWithPosition.make(Lit474, PairWithPosition.make(Lit516, PairWithPosition.make(Lit525, PairWithPosition.make(Lit474, PairWithPosition.make(Lit533, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1859623), "/tmp/runtime3808032275111475787.scm", 1859620), "/tmp/runtime3808032275111475787.scm", 1859615), "/tmp/runtime3808032275111475787.scm", 1855532), "/tmp/runtime3808032275111475787.scm", 1855529), "/tmp/runtime3808032275111475787.scm", 1855519), "/tmp/runtime3808032275111475787.scm", 1851450), "/tmp/runtime3808032275111475787.scm", 1851447), "/tmp/runtime3808032275111475787.scm", 1851423), "/tmp/runtime3808032275111475787.scm", 1847346), "/tmp/runtime3808032275111475787.scm", 1847343), "/tmp/runtime3808032275111475787.scm", 1847327), "/tmp/runtime3808032275111475787.scm", 1847312);
        SimpleSymbol simpleSymbol25 = Lit474;
        SimpleSymbol simpleSymbol26 = (SimpleSymbol) new SimpleSymbol(PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN).readResolve();
        Lit7 = simpleSymbol26;
        SimpleSymbol simpleSymbol27 = Lit463;
        PairWithPosition pairWithPositionMake37 = PairWithPosition.make(PairWithPosition.make(Lit519, PairWithPosition.make(PairWithPosition.make(Lit535, PairWithPosition.make(Lit517, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1884212), "/tmp/runtime3808032275111475787.scm", 1884196), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1884196), "/tmp/runtime3808032275111475787.scm", 1884178), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1884177);
        SimpleSymbol simpleSymbol28 = Lit459;
        PairWithPosition pairWithPositionMake38 = PairWithPosition.make(Lit518, PairWithPosition.make(Lit519, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1888308), "/tmp/runtime3808032275111475787.scm", 1888278);
        SimpleSymbol simpleSymbol29 = Lit459;
        PairWithPosition pairWithPositionMake39 = PairWithPosition.make(Lit520, PairWithPosition.make(PairWithPosition.make(Lit521, PairWithPosition.make(Lit519, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1892411), "/tmp/runtime3808032275111475787.scm", 1892383), PairWithPosition.make(Lit522, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1892429), "/tmp/runtime3808032275111475787.scm", 1892383), "/tmp/runtime3808032275111475787.scm", 1892378);
        SimpleSymbol simpleSymbol30 = Lit463;
        PairWithPosition pairWithPositionMake40 = PairWithPosition.make(PairWithPosition.make(Lit524, PairWithPosition.make(PairWithPosition.make(Lit548, PairWithPosition.make(Lit517, PairWithPosition.make(Lit523, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1896528), "/tmp/runtime3808032275111475787.scm", 1896504), "/tmp/runtime3808032275111475787.scm", 1896488), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1896488), "/tmp/runtime3808032275111475787.scm", 1896479), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1896478);
        SimpleSymbol simpleSymbol31 = Lit539;
        SimpleSymbol simpleSymbol32 = Lit464;
        SimpleSymbol simpleSymbol33 = Lit540;
        SimpleSymbol simpleSymbol34 = Lit524;
        SimpleSymbol simpleSymbol35 = Lit457;
        SimpleSymbol simpleSymbol36 = Lit490;
        SimpleSymbol simpleSymbol37 = Lit458;
        SimpleSymbol simpleSymbol38 = (SimpleSymbol) new SimpleSymbol("makeList").readResolve();
        Lit48 = simpleSymbol38;
        PairWithPosition pairWithPositionMake41 = PairWithPosition.make(simpleSymbol35, Pair.make(simpleSymbol36, Pair.make(Pair.make(simpleSymbol37, Pair.make(simpleSymbol38, LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 1933364);
        SimpleSymbol simpleSymbol39 = Lit525;
        IntNum intNumMake = IntNum.make(0);
        Lit29 = intNumMake;
        Lit109 = new SyntaxRules(objArr2, new SyntaxRule[]{new SyntaxRule(syntaxPattern2, "\u0001\u0001\u0001\u0001\u0001", "\u0011\u0018\u0004)\u0011\u0018\f\b\u0013)\u0011\u0018\u0014\b\u0003)\u0011\u0018\u001c\b\u000b\u0011\u0018$\u0011\u0018,Ñ\u0011\u00184\u0011\u0018<\u0011\u0018D\u0011\u0018L)\u0011\u0018T\b#\b\u0011\u0018\\\t\u0013\u0018d\u0011\u0018l\u0011\u0018tÑ\u0011\u00184\u0011\u0018|\u0011\u0018D\u0011\u0018\u0084\b\u0011\u0018\u008c\b\u0011\u0018\u0094\b\u0011\u0018\u009c\b\u000b\u0011\u0018¤\u0011\u0018¬\u0011\u0018´ā\u0011\u00184\u0011\u0018¼\u0011\u0018D\u0011\u0018\u0084\b\u0011\u0018Ä\b\u0011\u0018ÌI\u0011\u0018\u0094\b\u0011\u0018\u009c\b\u000b\u0018Ô\u0011\u0018Üa\u0011\u00184\t\u000b\u0011\u0018D\t\u0003\u0018ä\u0091\u0011\u00184\u0011\u0018ì\u0011\u0018D\u0011\u0018ô\b\u0011\u0018\u009c\b\u000b\u0011\u0018ü\u0011\u0018Ą\u0011\u0018Č\u0011\u0018Ĕ\u0011\u0018Ĝ\u0011\u0018Ĥ\u0011\u0018Ĭ\u0011\u0018Ĵ\u0011\u0018ļř\u0011\u00184\u0011\u0018ń\u0011\u0018Ō\b\u0011\u0018ŔY\u0011\u0018Ŝ)\u0011\u0018Ť\b\u001b\u0018Ŭ\b\b\u0011\u0018Ŵ\u0011\u0018ż9\u0011\u0018Ƅ\t\u001b\u0018ƌ\u0018Ɣ\u0011\u0018Ɯ\u0011\u0018Ƥ\u0011\u0018Ƭ\b\u0011\u00184\u0011\u0018ƴ\u0011\u0018D\u0011\u0018L\u0011\u0018Ƽ\u0011\u0018Ǆ\u0011\u0018ǌ\u0011\u0018ǔ\u0011\u0018ǜ\u0011\u0018Ǥ\u0011\u0018Ǭ9\u0011\u0018Ǵ\t\u000b\u0018ǼY\u0011\u0018Ȅ)\u0011\u0018\u009c\b\u000b\u0018Ȍ\u0018Ȕ", new Object[]{Lit464, simpleSymbol7, simpleSymbol8, simpleSymbol9, pairWithPositionMake, pairWithPositionMake2, Lit471, pairWithPositionMake3, Lit474, Lit534, pairWithPositionMake4, simpleSymbol10, pairWithPositionMake5, pairWithPositionMake6, pairWithPositionMake7, Lit483, Lit479, pairWithPositionMake8, Lit569, Lit469, pairWithPositionMake11, pairWithPositionMake14, pairWithPositionMake15, Lit489, pairWithPositionMake16, Lit536, pairWithPositionMake17, pairWithPositionMake18, pairWithPositionMake19, simpleSymbol22, Lit484, pairWithPositionMake20, pairWithPositionMake21, pairWithPositionMake22, pairWithPositionMake23, pairWithPositionMake24, pairWithPositionMake25, pairWithPositionMake26, pairWithPositionMake27, pairWithPositionMake28, pairWithPositionMake29, pairWithPositionMake30, Lit459, simpleSymbol23, Lit508, pairWithPositionMake31, pairWithPositionMake32, pairWithPositionMake33, Lit510, pairWithPositionMake34, pairWithPositionMake35, PairWithPosition.make(simpleSymbol24, PairWithPosition.make(pairWithPositionMake36, PairWithPosition.make(simpleSymbol25, PairWithPosition.make(simpleSymbol26, PairWithPosition.make(PairWithPosition.make(simpleSymbol27, PairWithPosition.make(pairWithPositionMake37, PairWithPosition.make(PairWithPosition.make(simpleSymbol28, PairWithPosition.make(pairWithPositionMake38, PairWithPosition.make(PairWithPosition.make(simpleSymbol29, PairWithPosition.make(pairWithPositionMake39, PairWithPosition.make(PairWithPosition.make(simpleSymbol30, PairWithPosition.make(pairWithPositionMake40, PairWithPosition.make(PairWithPosition.make(simpleSymbol31, PairWithPosition.make(PairWithPosition.make(simpleSymbol32, PairWithPosition.make(PairWithPosition.make(simpleSymbol33, PairWithPosition.make(simpleSymbol34, PairWithPosition.make(PairWithPosition.make(pairWithPositionMake41, PairWithPosition.make(simpleSymbol39, PairWithPosition.make(intNumMake, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1933394), "/tmp/runtime3808032275111475787.scm", 1933389), "/tmp/runtime3808032275111475787.scm", 1933363), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1933363), "/tmp/runtime3808032275111475787.scm", 1933355), "/tmp/runtime3808032275111475787.scm", 1933348), PairWithPosition.make(Boolean.TRUE, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1937444), "/tmp/runtime3808032275111475787.scm", 1933348), "/tmp/runtime3808032275111475787.scm", 1929250), PairWithPosition.make(PairWithPosition.make(Lit526, PairWithPosition.make(Lit542, PairWithPosition.make(PairWithPosition.make((SimpleSymbol) new SimpleSymbol("throw").readResolve(), PairWithPosition.make(Lit526, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1945643), "/tmp/runtime3808032275111475787.scm", 1945636), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1945636), "/tmp/runtime3808032275111475787.scm", 1941549), "/tmp/runtime3808032275111475787.scm", 1941538), PairWithPosition.make(PairWithPosition.make(Lit526, PairWithPosition.make(Lit543, PairWithPosition.make(PairWithPosition.make(Lit464, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit457, Pair.make(Lit526, Pair.make(Pair.make(Lit458, Pair.make(Lit529, LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 1982502), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1982501), PairWithPosition.make(PairWithPosition.make(Lit459, PairWithPosition.make(PairWithPosition.make(Lit510, PairWithPosition.make(PairWithPosition.make(Lit520, PairWithPosition.make(PairWithPosition.make(Lit509, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1998899), PairWithPosition.make(Lit522, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1998906), "/tmp/runtime3808032275111475787.scm", 1998899), "/tmp/runtime3808032275111475787.scm", 1998894), PairWithPosition.make(PairWithPosition.make(Lit544, PairWithPosition.make(Lit523, PairWithPosition.make("PermissionNeeded", LList.Empty, "/tmp/runtime3808032275111475787.scm", 2003008), "/tmp/runtime3808032275111475787.scm", 2002998), "/tmp/runtime3808032275111475787.scm", 2002990), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2002990), "/tmp/runtime3808032275111475787.scm", 1998894), "/tmp/runtime3808032275111475787.scm", 1998889), PairWithPosition.make(PairWithPosition.make(Lit527, PairWithPosition.make(Lit526, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2019388), "/tmp/runtime3808032275111475787.scm", 2019369), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit457, Pair.make(PairWithPosition.make(Lit509, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2023466), Pair.make(Pair.make(Lit458, Pair.make(Lit545, LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 2023466), PairWithPosition.make(Lit522, PairWithPosition.make(Lit523, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit457, Pair.make(Lit526, Pair.make(Pair.make(Lit458, Pair.make(Lit546, LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 2027587), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2027586), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2027586), "/tmp/runtime3808032275111475787.scm", 2023506), "/tmp/runtime3808032275111475787.scm", 2023490), "/tmp/runtime3808032275111475787.scm", 2023465), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2023465), "/tmp/runtime3808032275111475787.scm", 2019369), "/tmp/runtime3808032275111475787.scm", 1998889), "/tmp/runtime3808032275111475787.scm", 1998885), PairWithPosition.make(Boolean.FALSE, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2031653), "/tmp/runtime3808032275111475787.scm", 1998885), "/tmp/runtime3808032275111475787.scm", 1982501), "/tmp/runtime3808032275111475787.scm", 1978403), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1978403), "/tmp/runtime3808032275111475787.scm", 1974317), "/tmp/runtime3808032275111475787.scm", 1974306), PairWithPosition.make(PairWithPosition.make(Lit526, PairWithPosition.make(Lit547, PairWithPosition.make(PairWithPosition.make(Lit464, PairWithPosition.make(PairWithPosition.make(Lit481, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit457, Pair.make(Lit526, Pair.make(Pair.make(Lit458, Pair.make(Lit528, LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 2043960), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2043959), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2043959), "/tmp/runtime3808032275111475787.scm", 2043941), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit457, Pair.make(Lit526, Pair.make(Pair.make(Lit458, Pair.make(Lit529, LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 2052134), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2052133), PairWithPosition.make(PairWithPosition.make(Lit527, PairWithPosition.make(Lit526, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2056248), "/tmp/runtime3808032275111475787.scm", 2056229), PairWithPosition.make(Boolean.FALSE, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2060325), "/tmp/runtime3808032275111475787.scm", 2056229), "/tmp/runtime3808032275111475787.scm", 2052133), "/tmp/runtime3808032275111475787.scm", 2043941), "/tmp/runtime3808032275111475787.scm", 2039843), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2039843), "/tmp/runtime3808032275111475787.scm", 2035757), "/tmp/runtime3808032275111475787.scm", 2035746), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2035746), "/tmp/runtime3808032275111475787.scm", 1974306), "/tmp/runtime3808032275111475787.scm", 1941538), "/tmp/runtime3808032275111475787.scm", 1929250), "/tmp/runtime3808032275111475787.scm", 1925153), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1925153), "/tmp/runtime3808032275111475787.scm", 1896478), "/tmp/runtime3808032275111475787.scm", 1896473), PairWithPosition.make(Boolean.FALSE, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2064409), "/tmp/runtime3808032275111475787.scm", 1896473), "/tmp/runtime3808032275111475787.scm", 1892378), "/tmp/runtime3808032275111475787.scm", 1892374), PairWithPosition.make(PairWithPosition.make(Lit464, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit457, Pair.make(Lit530, Pair.make(Pair.make(Lit458, Pair.make((SimpleSymbol) new SimpleSymbol("unregisterEventForDelegation").readResolve(), LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 2076697), PairWithPosition.make(PairWithPosition.make(Lit515, PairWithPosition.make(Lit531, PairWithPosition.make(PairWithPosition.make(Lit509, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2080864), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2080864), "/tmp/runtime3808032275111475787.scm", 2080798), "/tmp/runtime3808032275111475787.scm", 2080794), PairWithPosition.make(Lit517, PairWithPosition.make(Lit523, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2084914), "/tmp/runtime3808032275111475787.scm", 2084890), "/tmp/runtime3808032275111475787.scm", 2080794), "/tmp/runtime3808032275111475787.scm", 2076696), PairWithPosition.make(Boolean.FALSE, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2088984), "/tmp/runtime3808032275111475787.scm", 2076696), "/tmp/runtime3808032275111475787.scm", 2072598), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2072598), "/tmp/runtime3808032275111475787.scm", 1892374), "/tmp/runtime3808032275111475787.scm", 1888278), "/tmp/runtime3808032275111475787.scm", 1888274), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1888274), "/tmp/runtime3808032275111475787.scm", 1884177), "/tmp/runtime3808032275111475787.scm", 1884172), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1884172), "/tmp/runtime3808032275111475787.scm", 1859646), "/tmp/runtime3808032275111475787.scm", 1859643), "/tmp/runtime3808032275111475787.scm", 1847312), "/tmp/runtime3808032275111475787.scm", 1847304), PairWithPosition.make(Lit471, PairWithPosition.make(PairWithPosition.make((SimpleSymbol) new SimpleSymbol("dispatchGenericEvent").readResolve(), PairWithPosition.make(Lit522, PairWithPosition.make(Lit474, PairWithPosition.make(Lit532, PairWithPosition.make(Lit523, PairWithPosition.make(Lit474, PairWithPosition.make(Lit516, PairWithPosition.make(Lit541, PairWithPosition.make(Lit474, PairWithPosition.make(Lit7, PairWithPosition.make(Lit525, PairWithPosition.make(Lit474, PairWithPosition.make(Lit533, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2109486), "/tmp/runtime3808032275111475787.scm", 2109483), "/tmp/runtime3808032275111475787.scm", 2109478), "/tmp/runtime3808032275111475787.scm", 2105403), "/tmp/runtime3808032275111475787.scm", 2105400), "/tmp/runtime3808032275111475787.scm", 2105382), "/tmp/runtime3808032275111475787.scm", 2101299), "/tmp/runtime3808032275111475787.scm", 2101296), "/tmp/runtime3808032275111475787.scm", 2101286), "/tmp/runtime3808032275111475787.scm", 2097209), "/tmp/runtime3808032275111475787.scm", 2097206), "/tmp/runtime3808032275111475787.scm", 2097190), "/tmp/runtime3808032275111475787.scm", 2097168), PairWithPosition.make(Lit474, PairWithPosition.make(Lit534, PairWithPosition.make(PairWithPosition.make((SimpleSymbol) new SimpleSymbol("let*").readResolve(), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit538, PairWithPosition.make(PairWithPosition.make(Lit535, PairWithPosition.make(PairWithPosition.make(Lit536, PairWithPosition.make("any$", PairWithPosition.make(PairWithPosition.make(Lit537, PairWithPosition.make(Lit522, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2146392), "/tmp/runtime3808032275111475787.scm", 2146375), PairWithPosition.make("$", PairWithPosition.make(Lit523, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2146413), "/tmp/runtime3808032275111475787.scm", 2146409), "/tmp/runtime3808032275111475787.scm", 2146375), "/tmp/runtime3808032275111475787.scm", 2146368), "/tmp/runtime3808032275111475787.scm", 2146353), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2146353), "/tmp/runtime3808032275111475787.scm", 2146337), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2146337), "/tmp/runtime3808032275111475787.scm", 2146321), PairWithPosition.make(PairWithPosition.make(Lit524, PairWithPosition.make(PairWithPosition.make(Lit521, PairWithPosition.make(Lit538, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2150454), "/tmp/runtime3808032275111475787.scm", 2150426), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2150426), "/tmp/runtime3808032275111475787.scm", 2150417), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2150417), "/tmp/runtime3808032275111475787.scm", 2146320), PairWithPosition.make(PairWithPosition.make(Lit459, PairWithPosition.make(Lit524, PairWithPosition.make(PairWithPosition.make(Lit539, PairWithPosition.make(PairWithPosition.make(Lit464, PairWithPosition.make(PairWithPosition.make(Lit540, PairWithPosition.make(Lit524, PairWithPosition.make(PairWithPosition.make(Lit493, PairWithPosition.make(Lit522, PairWithPosition.make(PairWithPosition.make(Lit493, PairWithPosition.make(Lit541, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit457, Pair.make(Lit490, Pair.make(Pair.make(Lit458, Pair.make(Lit48, LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 2166865), PairWithPosition.make(Lit525, PairWithPosition.make(Lit29, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2166895), "/tmp/runtime3808032275111475787.scm", 2166890), "/tmp/runtime3808032275111475787.scm", 2166864), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2166864), "/tmp/runtime3808032275111475787.scm", 2166846), "/tmp/runtime3808032275111475787.scm", 2166840), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2166840), "/tmp/runtime3808032275111475787.scm", 2166824), "/tmp/runtime3808032275111475787.scm", 2166818), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2166818), "/tmp/runtime3808032275111475787.scm", 2166810), "/tmp/runtime3808032275111475787.scm", 2166803), PairWithPosition.make(Boolean.TRUE, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2170899), "/tmp/runtime3808032275111475787.scm", 2166803), "/tmp/runtime3808032275111475787.scm", 2162705), PairWithPosition.make(PairWithPosition.make(Lit526, PairWithPosition.make(Lit542, PairWithPosition.make(Boolean.FALSE, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2179091), "/tmp/runtime3808032275111475787.scm", 2175004), "/tmp/runtime3808032275111475787.scm", 2174993), PairWithPosition.make(PairWithPosition.make(Lit526, PairWithPosition.make(Lit543, PairWithPosition.make(PairWithPosition.make(Lit464, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit457, Pair.make(Lit526, Pair.make(Pair.make(Lit458, Pair.make(Lit529, LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 2191381), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2191380), PairWithPosition.make(PairWithPosition.make(Lit459, PairWithPosition.make(PairWithPosition.make(Lit510, PairWithPosition.make(PairWithPosition.make(Lit520, PairWithPosition.make(PairWithPosition.make(Lit509, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2207778), PairWithPosition.make(Lit522, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2207785), "/tmp/runtime3808032275111475787.scm", 2207778), "/tmp/runtime3808032275111475787.scm", 2207773), PairWithPosition.make(PairWithPosition.make(Lit544, PairWithPosition.make(Lit523, PairWithPosition.make("PermissionNeeded", LList.Empty, "/tmp/runtime3808032275111475787.scm", 2211887), "/tmp/runtime3808032275111475787.scm", 2211877), "/tmp/runtime3808032275111475787.scm", 2211869), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2211869), "/tmp/runtime3808032275111475787.scm", 2207773), "/tmp/runtime3808032275111475787.scm", 2207768), PairWithPosition.make(PairWithPosition.make(Lit527, PairWithPosition.make(Lit526, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2228267), "/tmp/runtime3808032275111475787.scm", 2228248), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit457, Pair.make(PairWithPosition.make(Lit509, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2232345), Pair.make(Pair.make(Lit458, Pair.make(Lit545, LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 2232345), PairWithPosition.make(Lit522, PairWithPosition.make(Lit523, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit457, Pair.make(Lit526, Pair.make(Pair.make(Lit458, Pair.make(Lit546, LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 2236442), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2236441), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2236441), "/tmp/runtime3808032275111475787.scm", 2232385), "/tmp/runtime3808032275111475787.scm", 2232369), "/tmp/runtime3808032275111475787.scm", 2232344), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2232344), "/tmp/runtime3808032275111475787.scm", 2228248), "/tmp/runtime3808032275111475787.scm", 2207768), "/tmp/runtime3808032275111475787.scm", 2207764), PairWithPosition.make(Boolean.FALSE, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2240532), "/tmp/runtime3808032275111475787.scm", 2207764), "/tmp/runtime3808032275111475787.scm", 2191380), "/tmp/runtime3808032275111475787.scm", 2187282), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2187282), "/tmp/runtime3808032275111475787.scm", 2183196), "/tmp/runtime3808032275111475787.scm", 2183185), PairWithPosition.make(PairWithPosition.make(Lit526, PairWithPosition.make(Lit547, PairWithPosition.make(PairWithPosition.make(Lit464, PairWithPosition.make(PairWithPosition.make(Lit481, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit457, Pair.make(Lit526, Pair.make(Pair.make(Lit458, Pair.make(Lit528, LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 2252839), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2252838), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2252838), "/tmp/runtime3808032275111475787.scm", 2252820), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit457, Pair.make(Lit526, Pair.make(Pair.make(Lit458, Pair.make(Lit529, LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 2261013), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2261012), PairWithPosition.make(PairWithPosition.make(Lit527, PairWithPosition.make(Lit526, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2265127), "/tmp/runtime3808032275111475787.scm", 2265108), PairWithPosition.make(Boolean.FALSE, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2269204), "/tmp/runtime3808032275111475787.scm", 2265108), "/tmp/runtime3808032275111475787.scm", 2261012), "/tmp/runtime3808032275111475787.scm", 2252820), "/tmp/runtime3808032275111475787.scm", 2248722), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2248722), "/tmp/runtime3808032275111475787.scm", 2244636), "/tmp/runtime3808032275111475787.scm", 2244625), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2244625), "/tmp/runtime3808032275111475787.scm", 2183185), "/tmp/runtime3808032275111475787.scm", 2174993), "/tmp/runtime3808032275111475787.scm", 2162705), "/tmp/runtime3808032275111475787.scm", 2158608), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2158608), "/tmp/runtime3808032275111475787.scm", 2154512), "/tmp/runtime3808032275111475787.scm", 2154508), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2154508), "/tmp/runtime3808032275111475787.scm", 2146320), "/tmp/runtime3808032275111475787.scm", 2146314), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2146314), "/tmp/runtime3808032275111475787.scm", 2109509), "/tmp/runtime3808032275111475787.scm", 2109506), "/tmp/runtime3808032275111475787.scm", 2097168), "/tmp/runtime3808032275111475787.scm", 2097160), PairWithPosition.make(Lit471, PairWithPosition.make(PairWithPosition.make(Lit548, PairWithPosition.make(Lit549, PairWithPosition.make(Lit523, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2277422), "/tmp/runtime3808032275111475787.scm", 2277408), "/tmp/runtime3808032275111475787.scm", 2277392), PairWithPosition.make(PairWithPosition.make(Lit521, PairWithPosition.make(PairWithPosition.make(Lit535, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit457, Pair.make(Lit530, Pair.make(Pair.make(Lit458, Pair.make((SimpleSymbol) new SimpleSymbol("makeFullEventName").readResolve(), LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 2289677), PairWithPosition.make(Lit549, PairWithPosition.make(Lit523, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2293787), "/tmp/runtime3808032275111475787.scm", 2293773), "/tmp/runtime3808032275111475787.scm", 2289676), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2289676), "/tmp/runtime3808032275111475787.scm", 2285579), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2285579), "/tmp/runtime3808032275111475787.scm", 2281482), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2281482), "/tmp/runtime3808032275111475787.scm", 2277392), "/tmp/runtime3808032275111475787.scm", 2277384), PairWithPosition.make((SimpleSymbol) new SimpleSymbol("$define").readResolve(), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2310160), PairWithPosition.make(Lit471, PairWithPosition.make(PairWithPosition.make(Lit571, PairWithPosition.make(Lit554, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2322467), "/tmp/runtime3808032275111475787.scm", 2322450), PairWithPosition.make(PairWithPosition.make(Lit550, PairWithPosition.make(Lit551, PairWithPosition.make((SimpleSymbol) new SimpleSymbol("<com.google.appinventor.components.runtime.EventDispatcher>").readResolve(), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2330638), "/tmp/runtime3808032275111475787.scm", 2326554), "/tmp/runtime3808032275111475787.scm", 2326540), PairWithPosition.make(PairWithPosition.make(Lit555, PairWithPosition.make(PairWithPosition.make(Lit462, PairWithPosition.make(PairWithPosition.make(Lit553, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2334750), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit457, Pair.make(Lit551, Pair.make(Pair.make(Lit458, Pair.make(Lit552, LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 2342937), PairWithPosition.make(PairWithPosition.make(Lit515, PairWithPosition.make(Lit531, PairWithPosition.make(PairWithPosition.make(Lit509, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2347103), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2347103), "/tmp/runtime3808032275111475787.scm", 2347037), "/tmp/runtime3808032275111475787.scm", 2347033), PairWithPosition.make(PairWithPosition.make(Lit556, PairWithPosition.make(Lit553, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2351134), "/tmp/runtime3808032275111475787.scm", 2351129), PairWithPosition.make(PairWithPosition.make((SimpleSymbol) new SimpleSymbol("cdr").readResolve(), PairWithPosition.make(Lit553, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2355230), "/tmp/runtime3808032275111475787.scm", 2355225), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2355225), "/tmp/runtime3808032275111475787.scm", 2351129), "/tmp/runtime3808032275111475787.scm", 2347033), "/tmp/runtime3808032275111475787.scm", 2342936), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2342936), "/tmp/runtime3808032275111475787.scm", 2334750), "/tmp/runtime3808032275111475787.scm", 2334742), PairWithPosition.make(Lit554, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2359318), "/tmp/runtime3808032275111475787.scm", 2334742), "/tmp/runtime3808032275111475787.scm", 2334732), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2334732), "/tmp/runtime3808032275111475787.scm", 2326540), "/tmp/runtime3808032275111475787.scm", 2322450), "/tmp/runtime3808032275111475787.scm", 2322442), PairWithPosition.make(Lit471, PairWithPosition.make(PairWithPosition.make(Lit576, PairWithPosition.make(Lit559, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2371625), "/tmp/runtime3808032275111475787.scm", 2371602), PairWithPosition.make(PairWithPosition.make(Lit555, PairWithPosition.make(PairWithPosition.make(Lit462, PairWithPosition.make(PairWithPosition.make(Lit557, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2379806), PairWithPosition.make(PairWithPosition.make(Lit463, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit502, PairWithPosition.make(PairWithPosition.make(Lit556, PairWithPosition.make(Lit557, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2383912), "/tmp/runtime3808032275111475787.scm", 2383907), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2383907), "/tmp/runtime3808032275111475787.scm", 2383902), PairWithPosition.make(PairWithPosition.make(Lit503, PairWithPosition.make(PairWithPosition.make(Lit561, PairWithPosition.make(Lit557, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2388015), "/tmp/runtime3808032275111475787.scm", 2388009), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2388009), "/tmp/runtime3808032275111475787.scm", 2387998), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2387998), "/tmp/runtime3808032275111475787.scm", 2383901), PairWithPosition.make(PairWithPosition.make(Lit558, PairWithPosition.make(Lit502, PairWithPosition.make(PairWithPosition.make(Lit503, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2392125), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2392125), "/tmp/runtime3808032275111475787.scm", 2392121), "/tmp/runtime3808032275111475787.scm", 2392090), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2392090), "/tmp/runtime3808032275111475787.scm", 2383901), "/tmp/runtime3808032275111475787.scm", 2383896), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2383896), "/tmp/runtime3808032275111475787.scm", 2379806), "/tmp/runtime3808032275111475787.scm", 2379798), PairWithPosition.make(Lit559, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2396182), "/tmp/runtime3808032275111475787.scm", 2379798), "/tmp/runtime3808032275111475787.scm", 2379788), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2379788), "/tmp/runtime3808032275111475787.scm", 2371602), "/tmp/runtime3808032275111475787.scm", 2371594), PairWithPosition.make(Lit471, PairWithPosition.make(PairWithPosition.make(Lit574, PairWithPosition.make(Lit564, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2408485), "/tmp/runtime3808032275111475787.scm", 2408466), PairWithPosition.make(PairWithPosition.make(Lit555, PairWithPosition.make(PairWithPosition.make(Lit462, PairWithPosition.make(PairWithPosition.make(Lit560, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2412574), PairWithPosition.make(PairWithPosition.make(Lit463, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit494, PairWithPosition.make(PairWithPosition.make(Lit565, PairWithPosition.make(Lit560, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2416693), "/tmp/runtime3808032275111475787.scm", 2416686), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2416686), "/tmp/runtime3808032275111475787.scm", 2416670), PairWithPosition.make(PairWithPosition.make(Lit500, PairWithPosition.make(PairWithPosition.make(Lit566, PairWithPosition.make(Lit560, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2420786), "/tmp/runtime3808032275111475787.scm", 2420778), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2420778), "/tmp/runtime3808032275111475787.scm", 2420766), PairWithPosition.make(PairWithPosition.make(Lit499, PairWithPosition.make(PairWithPosition.make(Lit561, PairWithPosition.make(Lit560, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2424884), "/tmp/runtime3808032275111475787.scm", 2424878), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2424878), "/tmp/runtime3808032275111475787.scm", 2424862), PairWithPosition.make(PairWithPosition.make(Lit562, PairWithPosition.make(PairWithPosition.make(Lit521, PairWithPosition.make(PairWithPosition.make(Lit556, PairWithPosition.make(Lit560, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2429012), "/tmp/runtime3808032275111475787.scm", 2429007), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2429007), "/tmp/runtime3808032275111475787.scm", 2428979), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2428979), "/tmp/runtime3808032275111475787.scm", 2428958), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2428958), "/tmp/runtime3808032275111475787.scm", 2424862), "/tmp/runtime3808032275111475787.scm", 2420766), "/tmp/runtime3808032275111475787.scm", 2416669), PairWithPosition.make(PairWithPosition.make(Lit463, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit563, PairWithPosition.make(PairWithPosition.make(Lit487, PairWithPosition.make(Lit499, PairWithPosition.make(Lit562, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2445383), "/tmp/runtime3808032275111475787.scm", 2445368), "/tmp/runtime3808032275111475787.scm", 2445362), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2445362), "/tmp/runtime3808032275111475787.scm", 2445344), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2445343), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit457, Pair.make(Lit472, Pair.make(Pair.make(Lit458, Pair.make((SimpleSymbol) new SimpleSymbol("setComponentName").readResolve(), LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 2453533), PairWithPosition.make(Lit563, PairWithPosition.make(Lit494, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2453569), "/tmp/runtime3808032275111475787.scm", 2453552), "/tmp/runtime3808032275111475787.scm", 2453532), PairWithPosition.make(PairWithPosition.make(Lit496, PairWithPosition.make(PairWithPosition.make(Lit568, PairWithPosition.make(PairWithPosition.make(Lit509, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2461737), PairWithPosition.make(Lit494, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2461744), "/tmp/runtime3808032275111475787.scm", 2461737), "/tmp/runtime3808032275111475787.scm", 2461730), PairWithPosition.make(Lit563, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2461760), "/tmp/runtime3808032275111475787.scm", 2461730), "/tmp/runtime3808032275111475787.scm", 2461724), PairWithPosition.make(PairWithPosition.make(Lit480, PairWithPosition.make(Lit494, PairWithPosition.make(Lit563, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2474052), "/tmp/runtime3808032275111475787.scm", 2474037), "/tmp/runtime3808032275111475787.scm", 2474012), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2474012), "/tmp/runtime3808032275111475787.scm", 2461724), "/tmp/runtime3808032275111475787.scm", 2453532), "/tmp/runtime3808032275111475787.scm", 2445343), "/tmp/runtime3808032275111475787.scm", 2445338), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2445338), "/tmp/runtime3808032275111475787.scm", 2416669), "/tmp/runtime3808032275111475787.scm", 2416664), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2416664), "/tmp/runtime3808032275111475787.scm", 2412574), "/tmp/runtime3808032275111475787.scm", 2412566), PairWithPosition.make(Lit564, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2478102), "/tmp/runtime3808032275111475787.scm", 2412566), "/tmp/runtime3808032275111475787.scm", 2412556), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2412556), "/tmp/runtime3808032275111475787.scm", 2408466), "/tmp/runtime3808032275111475787.scm", 2408458), PairWithPosition.make(Lit471, PairWithPosition.make(PairWithPosition.make(Lit577, PairWithPosition.make(Lit564, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2490403), "/tmp/runtime3808032275111475787.scm", 2490386), PairWithPosition.make(PairWithPosition.make(Lit555, PairWithPosition.make(PairWithPosition.make(Lit462, PairWithPosition.make(PairWithPosition.make(Lit560, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2498590), PairWithPosition.make(PairWithPosition.make(Lit463, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit494, PairWithPosition.make(PairWithPosition.make(Lit565, PairWithPosition.make(Lit560, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2502709), "/tmp/runtime3808032275111475787.scm", 2502702), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2502702), "/tmp/runtime3808032275111475787.scm", 2502686), PairWithPosition.make(PairWithPosition.make(Lit500, PairWithPosition.make(PairWithPosition.make(Lit566, PairWithPosition.make(Lit560, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2506802), "/tmp/runtime3808032275111475787.scm", 2506794), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2506794), "/tmp/runtime3808032275111475787.scm", 2506782), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2506782), "/tmp/runtime3808032275111475787.scm", 2502685), PairWithPosition.make(PairWithPosition.make(Lit567, PairWithPosition.make(Lit500, PairWithPosition.make(PairWithPosition.make(Lit500, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2514987), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2514987), "/tmp/runtime3808032275111475787.scm", 2514976), "/tmp/runtime3808032275111475787.scm", 2514970), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2514970), "/tmp/runtime3808032275111475787.scm", 2502685), "/tmp/runtime3808032275111475787.scm", 2502680), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2502680), "/tmp/runtime3808032275111475787.scm", 2498590), "/tmp/runtime3808032275111475787.scm", 2498582), PairWithPosition.make(Lit564, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2519062), "/tmp/runtime3808032275111475787.scm", 2498582), "/tmp/runtime3808032275111475787.scm", 2498572), PairWithPosition.make(PairWithPosition.make(Lit555, PairWithPosition.make(PairWithPosition.make(Lit462, PairWithPosition.make(PairWithPosition.make(Lit560, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2527262), PairWithPosition.make(PairWithPosition.make(Lit463, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit494, PairWithPosition.make(PairWithPosition.make(Lit565, PairWithPosition.make(Lit560, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2531381), "/tmp/runtime3808032275111475787.scm", 2531374), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2531374), "/tmp/runtime3808032275111475787.scm", 2531358), PairWithPosition.make(PairWithPosition.make(Lit500, PairWithPosition.make(PairWithPosition.make(Lit566, PairWithPosition.make(Lit560, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2535474), "/tmp/runtime3808032275111475787.scm", 2535466), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2535466), "/tmp/runtime3808032275111475787.scm", 2535454), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2535454), "/tmp/runtime3808032275111475787.scm", 2531357), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit457, Pair.make(PairWithPosition.make(Lit509, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2543643), Pair.make(Pair.make(Lit458, Pair.make((SimpleSymbol) new SimpleSymbol("callInitialize").readResolve(), LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 2543643), PairWithPosition.make(PairWithPosition.make(Lit568, PairWithPosition.make(PairWithPosition.make(Lit509, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2543672), PairWithPosition.make(Lit494, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2543679), "/tmp/runtime3808032275111475787.scm", 2543672), "/tmp/runtime3808032275111475787.scm", 2543665), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2543665), "/tmp/runtime3808032275111475787.scm", 2543642), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2543642), "/tmp/runtime3808032275111475787.scm", 2531357), "/tmp/runtime3808032275111475787.scm", 2531352), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2531352), "/tmp/runtime3808032275111475787.scm", 2527262), "/tmp/runtime3808032275111475787.scm", 2527254), PairWithPosition.make(Lit564, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2547734), "/tmp/runtime3808032275111475787.scm", 2527254), "/tmp/runtime3808032275111475787.scm", 2527244), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2527244), "/tmp/runtime3808032275111475787.scm", 2498572), "/tmp/runtime3808032275111475787.scm", 2490386), "/tmp/runtime3808032275111475787.scm", 2490378), PairWithPosition.make(Lit471, PairWithPosition.make(PairWithPosition.make(Lit110, Lit570, "/tmp/runtime3808032275111475787.scm", 2560018), PairWithPosition.make(PairWithPosition.make(Lit535, PairWithPosition.make(PairWithPosition.make(Lit540, PairWithPosition.make(Lit536, PairWithPosition.make(PairWithPosition.make((SimpleSymbol) new SimpleSymbol("map").readResolve(), PairWithPosition.make(Lit569, PairWithPosition.make(Lit570, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2572328), "/tmp/runtime3808032275111475787.scm", 2572313), "/tmp/runtime3808032275111475787.scm", 2572308), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2572308), "/tmp/runtime3808032275111475787.scm", 2568212), "/tmp/runtime3808032275111475787.scm", 2568205), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2568205), "/tmp/runtime3808032275111475787.scm", 2564108), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2564108), "/tmp/runtime3808032275111475787.scm", 2560018), "/tmp/runtime3808032275111475787.scm", 2560010), PairWithPosition.make(PairWithPosition.make(Lit457, Pair.make((SimpleSymbol) new SimpleSymbol("gnu.expr.Language").readResolve(), Pair.make(Pair.make(Lit458, Pair.make((SimpleSymbol) new SimpleSymbol("setDefaults").readResolve(), LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 2592779), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit457, Pair.make((SimpleSymbol) new SimpleSymbol("kawa.standard.Scheme").readResolve(), Pair.make(Pair.make(Lit458, Pair.make((SimpleSymbol) new SimpleSymbol("getInstance").readResolve(), LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 2592810), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2592809), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2592809), "/tmp/runtime3808032275111475787.scm", 2592778), PairWithPosition.make(Lit539, PairWithPosition.make(PairWithPosition.make((SimpleSymbol) new SimpleSymbol("invoke").readResolve(), PairWithPosition.make(PairWithPosition.make(Lit509, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2629651), PairWithPosition.make(PairWithPosition.make(Lit469, PairWithPosition.make((SimpleSymbol) new SimpleSymbol("run").readResolve(), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2629659), "/tmp/runtime3808032275111475787.scm", 2629659), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2629658), "/tmp/runtime3808032275111475787.scm", 2629651), "/tmp/runtime3808032275111475787.scm", 2629643), PairWithPosition.make(PairWithPosition.make(Lit526, PairWithPosition.make((SimpleSymbol) new SimpleSymbol("java.lang.Exception").readResolve(), PairWithPosition.make(PairWithPosition.make(Lit481, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit457, Pair.make(Lit526, Pair.make(Pair.make(Lit458, Pair.make(Lit528, LList.Empty)), LList.Empty)), "/tmp/runtime3808032275111475787.scm", 2637855), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2637854), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2637854), "/tmp/runtime3808032275111475787.scm", 2637836), PairWithPosition.make(PairWithPosition.make(Lit527, PairWithPosition.make(Lit526, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2641951), "/tmp/runtime3808032275111475787.scm", 2641932), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2641932), "/tmp/runtime3808032275111475787.scm", 2637836), "/tmp/runtime3808032275111475787.scm", 2633750), "/tmp/runtime3808032275111475787.scm", 2633739), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2633739), "/tmp/runtime3808032275111475787.scm", 2629643), "/tmp/runtime3808032275111475787.scm", 2625546), Lit496, PairWithPosition.make(PairWithPosition.make(Lit509, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2646042), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2646042), Lit480, PairWithPosition.make(PairWithPosition.make(Lit509, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2654254), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2654254), PairWithPosition.make(PairWithPosition.make(Lit571, PairWithPosition.make(Lit492, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2662427), "/tmp/runtime3808032275111475787.scm", 2662410), PairWithPosition.make(PairWithPosition.make(Lit539, PairWithPosition.make(PairWithPosition.make(Lit463, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(Lit575, PairWithPosition.make(PairWithPosition.make(Lit573, PairWithPosition.make(Lit497, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2674726), "/tmp/runtime3808032275111475787.scm", 2674717), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2674717), "/tmp/runtime3808032275111475787.scm", 2674705), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2674704), PairWithPosition.make(PairWithPosition.make(Lit470, PairWithPosition.make(PairWithPosition.make(Lit469, PairWithPosition.make(Lit572, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2695202), "/tmp/runtime3808032275111475787.scm", 2695202), PairWithPosition.make(PairWithPosition.make(Lit462, PairWithPosition.make(LList.Empty, PairWithPosition.make(null, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2695230), "/tmp/runtime3808032275111475787.scm", 2695227), "/tmp/runtime3808032275111475787.scm", 2695219), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2695219), "/tmp/runtime3808032275111475787.scm", 2695201), "/tmp/runtime3808032275111475787.scm", 2695181), PairWithPosition.make(PairWithPosition.make(Lit555, PairWithPosition.make((SimpleSymbol) new SimpleSymbol("force").readResolve(), PairWithPosition.make(PairWithPosition.make(Lit573, PairWithPosition.make(Lit505, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2711590), "/tmp/runtime3808032275111475787.scm", 2711581), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2711581), "/tmp/runtime3808032275111475787.scm", 2711575), "/tmp/runtime3808032275111475787.scm", 2711565), PairWithPosition.make(PairWithPosition.make(Lit574, PairWithPosition.make(Lit575, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2715680), "/tmp/runtime3808032275111475787.scm", 2715661), PairWithPosition.make(PairWithPosition.make(Lit576, PairWithPosition.make(PairWithPosition.make(Lit573, PairWithPosition.make(Lit501, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2740269), "/tmp/runtime3808032275111475787.scm", 2740260), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2740260), "/tmp/runtime3808032275111475787.scm", 2740237), PairWithPosition.make(PairWithPosition.make(Lit577, PairWithPosition.make(Lit575, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2768926), "/tmp/runtime3808032275111475787.scm", 2768909), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2768909), "/tmp/runtime3808032275111475787.scm", 2740237), "/tmp/runtime3808032275111475787.scm", 2715661), "/tmp/runtime3808032275111475787.scm", 2711565), "/tmp/runtime3808032275111475787.scm", 2695181), "/tmp/runtime3808032275111475787.scm", 2674704), "/tmp/runtime3808032275111475787.scm", 2674699), PairWithPosition.make(PairWithPosition.make(Lit526, PairWithPosition.make((SimpleSymbol) new SimpleSymbol("com.google.appinventor.components.runtime.errors.YailRuntimeError").readResolve(), PairWithPosition.make(PairWithPosition.make(Lit527, PairWithPosition.make(Lit526, LList.Empty, "/tmp/runtime3808032275111475787.scm", 2781225), "/tmp/runtime3808032275111475787.scm", 2781206), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2781206), "/tmp/runtime3808032275111475787.scm", 2773014), "/tmp/runtime3808032275111475787.scm", 2773003), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2773003), "/tmp/runtime3808032275111475787.scm", 2674699), "/tmp/runtime3808032275111475787.scm", 2670602), LList.Empty, "/tmp/runtime3808032275111475787.scm", 2670602), "/tmp/runtime3808032275111475787.scm", 2662410)}, 0)}, 5);
        Lit108 = (SimpleSymbol) new SimpleSymbol("define-form-internal").readResolve();
        Lit107 = new SyntaxRules(new Object[]{Lit456}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\b", new Object[0], 2), "\u0001\u0001", "\u0011\u0018\u0004\t\u0003\t\u000b\u0018\f", new Object[]{Lit108, PairWithPosition.make(PairWithPosition.make(Lit469, PairWithPosition.make((SimpleSymbol) new SimpleSymbol("com.google.appinventor.components.runtime.ReplForm").readResolve(), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1343538), "/tmp/runtime3808032275111475787.scm", 1343538), PairWithPosition.make(Boolean.TRUE, PairWithPosition.make(Boolean.FALSE, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1343592), "/tmp/runtime3808032275111475787.scm", 1343589), "/tmp/runtime3808032275111475787.scm", 1343537)}, 0)}, 2);
        Lit106 = (SimpleSymbol) new SimpleSymbol("define-repl-form").readResolve();
        Object[] objArr3 = {Lit456};
        SyntaxPattern syntaxPattern3 = new SyntaxPattern("\f\u0018\f\u0007\f\u000f\b", new Object[0], 2);
        SimpleSymbol simpleSymbol40 = Lit469;
        SimpleSymbol simpleSymbol41 = (SimpleSymbol) new SimpleSymbol("com.google.appinventor.components.runtime.Form").readResolve();
        Lit21 = simpleSymbol41;
        Lit105 = new SyntaxRules(objArr3, new SyntaxRule[]{new SyntaxRule(syntaxPattern3, "\u0001\u0001", "\u0011\u0018\u0004\t\u0003\t\u000b\u0018\f", new Object[]{Lit108, PairWithPosition.make(PairWithPosition.make(simpleSymbol40, PairWithPosition.make(simpleSymbol41, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1314866), "/tmp/runtime3808032275111475787.scm", 1314866), PairWithPosition.make(Boolean.FALSE, PairWithPosition.make(Boolean.TRUE, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1314916), "/tmp/runtime3808032275111475787.scm", 1314913), "/tmp/runtime3808032275111475787.scm", 1314865)}, 0), new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\b", new Object[0], 3), "\u0001\u0001\u0001", "\u0011\u0018\u0004\t\u0003\t\u000b\u0011\u0018\f\u0011\u0018\u0014\b\u0013", new Object[]{Lit108, PairWithPosition.make(Lit469, PairWithPosition.make(Lit21, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1323058), "/tmp/runtime3808032275111475787.scm", 1323058), Boolean.FALSE}, 0)}, 3);
        Lit104 = (SimpleSymbol) new SimpleSymbol("define-form").readResolve();
        Lit103 = new SyntaxRules(new Object[]{Lit456}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\r\u0007\u0000\b\b", new Object[0], 1), "\u0003", "\u0011\u0018\u0004\b\u0005\u0011\u0018\f\t\u0010\b\u0003", new Object[]{Lit255, Lit462}, 1)}, 1);
        Lit102 = (SimpleSymbol) new SimpleSymbol("or-delayed").readResolve();
        Lit101 = new SyntaxRules(new Object[]{Lit456}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\r\u0007\u0000\b\b", new Object[0], 1), "\u0003", "\u0011\u0018\u0004\b\u0005\u0011\u0018\f\t\u0010\b\u0003", new Object[]{Lit254, Lit462}, 1)}, 1);
        Lit100 = (SimpleSymbol) new SimpleSymbol("and-delayed").readResolve();
        Lit99 = new SyntaxRules(new Object[]{Lit456}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\b", new Object[0], 2), "\u0001\u0001", "\u0011\u0018\u0004\t\u0003\b\u000b", new Object[]{Lit496}, 0)}, 2);
        Lit98 = (SimpleSymbol) new SimpleSymbol("set-lexical!").readResolve();
        Lit97 = new SyntaxRules(new Object[]{Lit456}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\b", new Object[0], 1), "\u0001", "\u0011\u0018\u00049\u0011\u0018\f\t\u0003\u0018\u0014Á\u0011\u0018\u001c\u0091\u0011\u0018$\u0011\u0018,I\u0011\u00184\b\u0011\u0018<\b\u0003\u0018D\u0018L\b\u0003", new Object[]{Lit459, Lit513, PairWithPosition.make((SimpleSymbol) new SimpleSymbol("<java.lang.Package>").readResolve(), LList.Empty, "/tmp/runtime3808032275111475787.scm", 1167390), Lit211, Lit536, "The variable ", Lit236, Lit458, PairWithPosition.make(" is not bound in the current context", LList.Empty, "/tmp/runtime3808032275111475787.scm", 1179674), PairWithPosition.make("Unbound Variable", LList.Empty, "/tmp/runtime3808032275111475787.scm", 1183755)}, 0)}, 1);
        Lit96 = (SimpleSymbol) new SimpleSymbol("lexical-value").readResolve();
        Lit95 = new SyntaxRules(new Object[]{Lit456}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\b", new Object[0], 2), "\u0001\u0001", "\u0011\u0018\u0004)\u0011\u0018\f\b\u0003\b\u000b", new Object[]{Lit148, Lit469}, 0)}, 2);
        Lit94 = (SimpleSymbol) new SimpleSymbol("set-var!").readResolve();
        Lit93 = new SyntaxRules(new Object[]{Lit456}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\b", new Object[0], 1), "\u0001", "\u0011\u0018\u0004)\u0011\u0018\f\b\u0003\u0018\u0014", new Object[]{Lit149, Lit469, PairWithPosition.make(Lit572, LList.Empty, "/tmp/runtime3808032275111475787.scm", 1101887)}, 0)}, 1);
        Lit92 = (SimpleSymbol) new SimpleSymbol("get-var").readResolve();
        Lit91 = (SimpleSymbol) new SimpleSymbol("set-and-coerce-property-and-check!").readResolve();
        Lit90 = (SimpleSymbol) new SimpleSymbol("get-property-and-check").readResolve();
        Lit89 = (SimpleSymbol) new SimpleSymbol("coerce-to-component-and-verify").readResolve();
        Lit88 = (SimpleSymbol) new SimpleSymbol("get-property").readResolve();
        Lit87 = (SimpleSymbol) new SimpleSymbol("set-and-coerce-property!").readResolve();
        Lit86 = (SimpleSymbol) new SimpleSymbol("lookup-component").readResolve();
        Lit85 = new SyntaxRules(new Object[]{Lit456}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\b", new Object[0], 1), "\u0001", "\u0011\u0018\u0004\b\u0011\u0018\f\b\u0003", new Object[]{Lit145, Lit469}, 0)}, 1);
        Lit84 = (SimpleSymbol) new SimpleSymbol("get-all-components").readResolve();
        Lit83 = new SyntaxRules(new Object[]{Lit456}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\b", new Object[0], 1), "\u0001", "\u0011\u0018\u0004\b\u0011\u0018\f\b\u0003", new Object[]{Lit144, Lit469}, 0)}, 1);
        Lit82 = (SimpleSymbol) new SimpleSymbol("get-component").readResolve();
        Lit81 = (SimpleSymbol) new SimpleSymbol("clear-init-thunks").readResolve();
        Lit80 = (SimpleSymbol) new SimpleSymbol("get-init-thunk").readResolve();
        Lit79 = (SimpleSymbol) new SimpleSymbol("add-init-thunk").readResolve();
        Lit78 = (SimpleSymbol) new SimpleSymbol("setup-thunk-list").readResolve();
        Lit77 = (SimpleSymbol) new SimpleSymbol("call-Initialize-of-components-library").readResolve();
        Lit76 = (SimpleSymbol) new SimpleSymbol("call-Initialize-of-components").readResolve();
        Lit75 = (SimpleSymbol) new SimpleSymbol("add-component-within-repl").readResolve();
        Object[] objArr4 = {Lit456};
        SyntaxPattern syntaxPattern4 = new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\b", new Object[0], 3);
        SimpleSymbol simpleSymbol42 = (SimpleSymbol) new SimpleSymbol("gen-simple-component-type").readResolve();
        Lit70 = simpleSymbol42;
        Lit74 = new SyntaxRules(objArr4, new SyntaxRule[]{new SyntaxRule(syntaxPattern4, "\u0001\u0001\u0001", "\u0011\u0018\u0004\u0081\u0011\u0018\f\t\u0013\u0011\u0018\u0014)\u0011\u0018\u001c\b\u000b\u0018$\b\u0011\u0018,\u0011\u00184¹\u0011\u0018<)\u0011\u0018D\b\u0003)\u0011\u0018\u001c\b\u000b)\u0011\u0018D\b\u0013\u0018L\b\u0011\u0018T)\u0011\u0018D\b\u0003)\u0011\u0018\u001c\b\u000b)\u0011\u0018D\b\u0013\u0018\\", new Object[]{Lit464, Lit471, Lit474, simpleSymbol42, PairWithPosition.make(null, LList.Empty, "/tmp/runtime3808032275111475787.scm", 241741), Lit459, Lit468, Lit75, Lit469, PairWithPosition.make(Boolean.FALSE, LList.Empty, "/tmp/runtime3808032275111475787.scm", 262183), Lit578, PairWithPosition.make(Boolean.FALSE, LList.Empty, "/tmp/runtime3808032275111475787.scm", 278559)}, 0), new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\r\u001f\u0018\b\b", new Object[0], 4), "\u0001\u0001\u0001\u0003", "\u0011\u0018\u0004\u0081\u0011\u0018\f\t\u0013\u0011\u0018\u0014)\u0011\u0018\u001c\b\u000b\u0018$\b\u0011\u0018,\u0011\u00184ñ\u0011\u0018<)\u0011\u0018D\b\u0003)\u0011\u0018\u001c\b\u000b)\u0011\u0018D\b\u0013\b\u0011\u0018L\t\u0010\b\u001d\u001b\b\u0011\u0018T)\u0011\u0018D\b\u0003)\u0011\u0018\u001c\b\u000b)\u0011\u0018D\b\u0013\b\u0011\u0018L\t\u0010\b\u001d\u001b", new Object[]{Lit464, Lit471, Lit474, Lit70, PairWithPosition.make(null, LList.Empty, "/tmp/runtime3808032275111475787.scm", 290893), Lit459, Lit468, Lit75, Lit469, Lit462, Lit578}, 1)}, 4);
        Lit73 = (SimpleSymbol) new SimpleSymbol("add-component").readResolve();
        Lit72 = new SyntaxTemplate("\u0001\u0001", "\u000b", new Object[0], 0);
        Lit71 = new SyntaxPattern("\f\u0007\f\u000f\b", new Object[0], 2);
        Lit69 = (SimpleSymbol) new SimpleSymbol("android-log").readResolve();
        Lit68 = (SimpleSymbol) new SimpleSymbol("every").readResolve();
        Lit67 = (SimpleSymbol) new SimpleSymbol("non-coercible-value").readResolve();
        Lit66 = (SimpleSymbol) new SimpleSymbol("Arrays").readResolve();
        Lit65 = (SimpleSymbol) new SimpleSymbol("possible-component").readResolve();
        Lit64 = IntNum.make(-2);
        Lit63 = (SimpleSymbol) new SimpleSymbol("post").readResolve();
        Lit62 = (SimpleSymbol) new SimpleSymbol("getDhcpInfo").readResolve();
        Lit61 = IntNum.make(9999);
        Lit60 = IntNum.make(4);
        Lit59 = IntNum.make(3);
        Lit58 = IntNum.make(16);
        Lit57 = IntNum.make(24);
        Lit55 = IntNum.make(8);
        Lit54 = IntNum.make(255);
        Lit53 = (SimpleSymbol) new SimpleSymbol("numArgs").readResolve();
        Lit52 = new GetNamedInstancePart("setCell");
        Lit51 = new GetNamedInstancePart("getCell");
        Lit50 = (SimpleSymbol) new SimpleSymbol("setValueForKeyPath").readResolve();
        SimpleSymbol simpleSymbol43 = Lit7;
        SimpleSymbol simpleSymbol44 = (SimpleSymbol) new SimpleSymbol("number").readResolve();
        Lit5 = simpleSymbol44;
        SimpleSymbol simpleSymbol45 = (SimpleSymbol) new SimpleSymbol(PropertyTypeConstants.PROPERTY_TYPE_TEXT).readResolve();
        Lit6 = simpleSymbol45;
        SimpleSymbol simpleSymbol46 = Lit8;
        SimpleSymbol simpleSymbol47 = (SimpleSymbol) new SimpleSymbol("component").readResolve();
        Lit11 = simpleSymbol47;
        Lit49 = PairWithPosition.make(simpleSymbol43, PairWithPosition.make(simpleSymbol44, PairWithPosition.make(simpleSymbol45, PairWithPosition.make(simpleSymbol46, PairWithPosition.make(simpleSymbol47, LList.Empty, "/tmp/runtime3808032275111475787.scm", 11460662), "/tmp/runtime3808032275111475787.scm", 11460657), "/tmp/runtime3808032275111475787.scm", 11460652), "/tmp/runtime3808032275111475787.scm", 11460645), "/tmp/runtime3808032275111475787.scm", 11460636);
        Lit47 = (SimpleSymbol) new SimpleSymbol("*list*").readResolve();
        IntNum intNumMake2 = IntNum.make(1);
        Lit28 = intNumMake2;
        Lit46 = new IntFraction(intNumMake2, Lit29);
        IntNum intNumMake3 = IntNum.make(-1);
        Lit38 = intNumMake3;
        Lit45 = new IntFraction(intNumMake3, Lit29);
        Lit44 = DFloNum.make(1.0E18d);
        Lit43 = Char.make(57343);
        Lit42 = Char.make(55296);
        Lit41 = Char.make(57343);
        Lit40 = Char.make(55296);
        Lit39 = IntNum.make(45);
        Lit37 = IntNum.make(90);
        Lit36 = IntNum.make(360);
        Lit35 = DFloNum.make(6.2831853d);
        Lit34 = DFloNum.make(6.2831853d);
        Lit33 = IntNum.make(180);
        Lit32 = DFloNum.make(3.14159265d);
        Lit31 = IntNum.make(30);
        Lit30 = IntNum.make(2);
        Lit27 = (SimpleSymbol) new SimpleSymbol("toYailDictionary").readResolve();
        Lit26 = DFloNum.make(Double.NEGATIVE_INFINITY);
        Lit25 = DFloNum.make(Double.POSITIVE_INFINITY);
        Lit24 = DFloNum.make(Double.NEGATIVE_INFINITY);
        Lit23 = DFloNum.make(Double.POSITIVE_INFINITY);
        Lit22 = (SimpleSymbol) new SimpleSymbol("toUnderlyingValue").readResolve();
        Lit20 = (SimpleSymbol) new SimpleSymbol("Screen").readResolve();
        Lit19 = (SimpleSymbol) new SimpleSymbol("D").readResolve();
        Lit18 = (SimpleSymbol) new SimpleSymbol("toPrimitiveArray").readResolve();
        Lit17 = (SimpleSymbol) new SimpleSymbol("any").readResolve();
        Lit16 = (SimpleSymbol) new SimpleSymbol("double-array").readResolve();
        Lit15 = (SimpleSymbol) new SimpleSymbol("matrix").readResolve();
        Lit14 = (SimpleSymbol) new SimpleSymbol("dictionary").readResolve();
        Lit13 = (SimpleSymbol) new SimpleSymbol("key").readResolve();
        Lit12 = (SimpleSymbol) new SimpleSymbol("pair").readResolve();
        Lit10 = (SimpleSymbol) new SimpleSymbol("InstantInTime").readResolve();
        Lit9 = (SimpleSymbol) new SimpleSymbol("list-of-number").readResolve();
        Lit4 = Object.class;
        Lit3 = (SimpleSymbol) new SimpleSymbol("remove").readResolve();
        Lit2 = PairWithPosition.make((SimpleSymbol) new SimpleSymbol("non-coercible").readResolve(), LList.Empty, "/tmp/runtime3808032275111475787.scm", 4501536);
        AssetFetcher = AssetFetcher.class;
        errorMessages = ErrorMessages.class;
        JavaMap = Map.class;
        JavaIterator = Iterator.class;
        JavaCollection = Collection.class;
        YailNumberToString = YailNumberToString.class;
        YailMatrix = YailMatrix.class;
        YailDictionary = YailDictionary.class;
        YailList = YailList.class;
        JavaStringUtils = JavaStringUtils.class;
        YailRuntimeError = YailRuntimeError.class;
        StopBlocksExecution = StopBlocksExecution.class;
        PermissionException = PermissionException.class;
        CsvUtil = CsvUtil.class;
        ContinuationUtil = ContinuationUtil.class;
        Matcher = Matcher.class;
        MultiThreadUtil = MultiThreadUtil.class;
        YailProcedure = YailProcedure.class;
        Pattern = Pattern.class;
        String = String.class;
        Short = Short.class;
        Long = Long.class;
        KawaEnvironment = Environment.class;
        Integer = Integer.class;
        Float = Float.class;
        Double = Double.class;
        TypeUtil = TypeUtil.class;
        SimpleForm = ClassType.make("com.google.appinventor.components.runtime.Form");
        $instance = new runtime();
        loc$possible$Mncomponent = ThreadLocation.getInstance(Lit65, null);
        loc$component = ThreadLocation.getInstance(Lit11, null);
        loc$Arrays = ThreadLocation.getInstance(Lit66, null);
        loc$non$Mncoercible$Mnvalue = ThreadLocation.getInstance(Lit67, null);
        loc$every = ThreadLocation.getInstance(Lit68, null);
        runtime runtimeVar = $instance;
        android$Mnlog = new ModuleMethod(runtimeVar, 16, Lit69, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        simple$Mncomponent$Mnpackage$Mnname = "com.google.appinventor.components.runtime";
        SimpleSymbol simpleSymbol48 = Lit70;
        ModuleMethod moduleMethod = new ModuleMethod(runtimeVar, 17, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod.setProperty("source-location", "/tmp/runtime3808032275111475787.scm:40");
        gen$Mnsimple$Mncomponent$Mntype = Macro.make(simpleSymbol48, moduleMethod, $instance);
        add$Mncomponent = Macro.make(Lit73, Lit74, $instance);
        add$Mncomponent$Mnwithin$Mnrepl = new ModuleMethod(runtimeVar, 18, Lit75, 16388);
        call$MnInitialize$Mnof$Mncomponents = new ModuleMethod(runtimeVar, 19, Lit76, -4096);
        call$MnInitialize$Mnof$Mncomponents$Mnlibrary = new ModuleMethod(runtimeVar, 20, Lit77, 0);
        setup$Mnthunk$Mnlist = new ModuleMethod(runtimeVar, 21, Lit78, 0);
        add$Mninit$Mnthunk = new ModuleMethod(runtimeVar, 22, Lit79, 8194);
        get$Mninit$Mnthunk = new ModuleMethod(runtimeVar, 23, Lit80, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        clear$Mninit$Mnthunks = new ModuleMethod(runtimeVar, 24, Lit81, 0);
        get$Mncomponent = Macro.make(Lit82, Lit83, $instance);
        get$Mnall$Mncomponents = Macro.make(Lit84, Lit85, $instance);
        lookup$Mncomponent = new ModuleMethod(runtimeVar, 25, Lit86, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        set$Mnand$Mncoerce$Mnproperty$Ex = new ModuleMethod(runtimeVar, 26, Lit87, 16388);
        get$Mnproperty = new ModuleMethod(runtimeVar, 27, Lit88, 8194);
        coerce$Mnto$Mncomponent$Mnand$Mnverify = new ModuleMethod(runtimeVar, 28, Lit89, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        get$Mnproperty$Mnand$Mncheck = new ModuleMethod(runtimeVar, 29, Lit90, 12291);
        set$Mnand$Mncoerce$Mnproperty$Mnand$Mncheck$Ex = new ModuleMethod(runtimeVar, 30, Lit91, 20485);
        get$Mnvar = Macro.make(Lit92, Lit93, $instance);
        set$Mnvar$Ex = Macro.make(Lit94, Lit95, $instance);
        lexical$Mnvalue = Macro.make(Lit96, Lit97, $instance);
        set$Mnlexical$Ex = Macro.make(Lit98, Lit99, $instance);
        and$Mndelayed = Macro.make(Lit100, Lit101, $instance);
        or$Mndelayed = Macro.make(Lit102, Lit103, $instance);
        define$Mnform = Macro.make(Lit104, Lit105, $instance);
        define$Mnrepl$Mnform = Macro.make(Lit106, Lit107, $instance);
        define$Mnform$Mninternal = Macro.make(Lit108, Lit109, $instance);
        symbol$Mnappend = new ModuleMethod(runtimeVar, 31, Lit110, -4096);
        SimpleSymbol simpleSymbol49 = Lit111;
        ModuleMethod moduleMethod2 = new ModuleMethod(runtimeVar, 32, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod2.setProperty("source-location", "/tmp/runtime3808032275111475787.scm:693");
        gen$Mnevent$Mnname = Macro.make(simpleSymbol49, moduleMethod2, $instance);
        SimpleSymbol simpleSymbol50 = Lit114;
        ModuleMethod moduleMethod3 = new ModuleMethod(runtimeVar, 33, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod3.setProperty("source-location", "/tmp/runtime3808032275111475787.scm:701");
        gen$Mngeneric$Mnevent$Mnname = Macro.make(simpleSymbol50, moduleMethod3, $instance);
        define$Mnevent$Mnhelper = Macro.make(Lit117, Lit118, $instance);
        $Stlist$Mnfor$Mnruntime$St = Macro.make(Lit119, Lit120, $instance);
        SimpleSymbol simpleSymbol51 = Lit121;
        ModuleMethod moduleMethod4 = new ModuleMethod(runtimeVar, 34, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod4.setProperty("source-location", "/tmp/runtime3808032275111475787.scm:757");
        define$Mnevent = Macro.make(simpleSymbol51, moduleMethod4, $instance);
        SimpleSymbol simpleSymbol52 = Lit130;
        ModuleMethod moduleMethod5 = new ModuleMethod(runtimeVar, 35, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod5.setProperty("source-location", "/tmp/runtime3808032275111475787.scm:775");
        define$Mngeneric$Mnevent = Macro.make(simpleSymbol52, moduleMethod5, $instance);
        def = Macro.make(Lit139, Lit140, $instance);
        do$Mnafter$Mnform$Mncreation = Macro.make(Lit141, Lit142, $instance);
        add$Mnto$Mncurrent$Mnform$Mnenvironment = new ModuleMethod(runtimeVar, 36, Lit143, 8194);
        lookup$Mnin$Mncurrent$Mnform$Mnenvironment = new ModuleMethod(runtimeVar, 37, Lit144, 8193);
        filter$Mntype$Mnin$Mncurrent$Mnform$Mnenvironment = new ModuleMethod(runtimeVar, 39, Lit145, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        delete$Mnfrom$Mncurrent$Mnform$Mnenvironment = new ModuleMethod(runtimeVar, 40, Lit146, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        rename$Mnin$Mncurrent$Mnform$Mnenvironment = new ModuleMethod(runtimeVar, 41, Lit147, 8194);
        add$Mnglobal$Mnvar$Mnto$Mncurrent$Mnform$Mnenvironment = new ModuleMethod(runtimeVar, 42, Lit148, 8194);
        lookup$Mnglobal$Mnvar$Mnin$Mncurrent$Mnform$Mnenvironment = new ModuleMethod(runtimeVar, 43, Lit149, 8193);
        reset$Mncurrent$Mnform$Mnenvironment = new ModuleMethod(runtimeVar, 45, Lit150, 0);
        foreach = Macro.makeNonHygienic(Lit151, new ModuleMethod(runtimeVar, 46, null, 12291), $instance);
        $Styail$Mnbreak$St = new ModuleMethod(runtimeVar, 47, Lit159, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        forrange = Macro.makeNonHygienic(Lit160, new ModuleMethod(runtimeVar, 48, null, 20485), $instance);
        f11while = Macro.makeNonHygienic(Lit166, new ModuleMethod(runtimeVar, 49, null, -4094), $instance);
        foreach$Mnwith$Mnbreak = Macro.make(Lit178, Lit179, $instance);
        map_nondest = Macro.make(Lit180, Lit181, $instance);
        filter_nondest = Macro.make(Lit182, Lit183, $instance);
        reduceovereach = Macro.make(Lit184, Lit185, $instance);
        sortcomparator_nondest = Macro.make(Lit186, Lit187, $instance);
        mincomparator$Mnnondest = Macro.make(Lit188, Lit189, $instance);
        maxcomparator$Mnnondest = Macro.make(Lit190, Lit191, $instance);
        sortkey_nondest = Macro.make(Lit192, Lit193, $instance);
        forrange$Mnwith$Mnbreak = Macro.make(Lit194, Lit195, $instance);
        while$Mnwith$Mnbreak = Macro.make(Lit196, Lit197, $instance);
        call$Mncomponent$Mnmethod = new ModuleMethod(runtimeVar, 50, Lit198, 16388);
        call$Mncomponent$Mnmethod$Mnwith$Mncontinuation = new ModuleMethod(runtimeVar, 51, Lit199, 20485);
        call$Mncomponent$Mnmethod$Mnwith$Mnblocking$Mncontinuation = new ModuleMethod(runtimeVar, 52, Lit200, 16388);
        call$Mncomponent$Mntype$Mnmethod = new ModuleMethod(runtimeVar, 53, Lit201, 20485);
        call$Mncomponent$Mntype$Mnmethod$Mnwith$Mncontinuation = new ModuleMethod(runtimeVar, 54, Lit202, 20485);
        call$Mncomponent$Mntype$Mnmethod$Mnwith$Mnblocking$Mncontinuation = new ModuleMethod(runtimeVar, 55, Lit203, 16388);
        call$Mnyail$Mnprimitive = new ModuleMethod(runtimeVar, 56, Lit204, 16388);
        sanitize$Mncomponent$Mndata = new ModuleMethod(runtimeVar, 57, Lit205, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        sanitize$Mnreturn$Mnvalue = new ModuleMethod(runtimeVar, 58, Lit206, 12291);
        java$Mncollection$Mn$Gryail$Mnlist = new ModuleMethod(runtimeVar, 59, Lit207, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        java$Mncollection$Mn$Grkawa$Mnlist = new ModuleMethod(runtimeVar, 60, Lit208, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        java$Mnmap$Mn$Gryail$Mndictionary = new ModuleMethod(runtimeVar, 61, Lit209, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        sanitize$Mnatomic = new ModuleMethod(runtimeVar, 62, Lit210, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        signal$Mnruntime$Mnerror = new ModuleMethod(runtimeVar, 63, Lit211, 8194);
        signal$Mnruntime$Mnform$Mnerror = new ModuleMethod(runtimeVar, 64, Lit212, 12291);
        yail$Mnnot = new ModuleMethod(runtimeVar, 65, Lit213, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        call$Mnwith$Mncoerced$Mnargs = new ModuleMethod(runtimeVar, 66, Lit214, 16388);
        $Pcset$Mnand$Mncoerce$Mnproperty$Ex = new ModuleMethod(runtimeVar, 67, Lit215, 16388);
        $Pcset$Mnsubform$Mnlayout$Mnproperty$Ex = new ModuleMethod(runtimeVar, 68, Lit216, 12291);
        generate$Mnruntime$Mntype$Mnerror = new ModuleMethod(runtimeVar, 69, Lit217, 8194);
        show$Mnarglist$Mnno$Mnparens = new ModuleMethod(runtimeVar, 70, Lit218, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        coerce$Mnargs = new ModuleMethod(runtimeVar, 71, Lit219, 12291);
        coerce$Mnarg = new ModuleMethod(runtimeVar, 72, Lit220, 8194);
        coerce$Mnto$Mndouble$Mnarray = new ModuleMethod(runtimeVar, 73, Lit221, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        coerce$Mnto$Mnnumber$Mnlist = new ModuleMethod(runtimeVar, 74, Lit222, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        enum$Mntype$Qu = new ModuleMethod(runtimeVar, 75, Lit223, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        enum$Qu = new ModuleMethod(runtimeVar, 76, Lit224, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        coerce$Mnto$Mnenum = new ModuleMethod(runtimeVar, 77, Lit225, 8194);
        coerce$Mnto$Mntext = new ModuleMethod(runtimeVar, 78, Lit226, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        coerce$Mnto$Mninstant = new ModuleMethod(runtimeVar, 79, Lit227, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        coerce$Mnto$Mncomponent = new ModuleMethod(runtimeVar, 80, Lit228, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        coerce$Mnto$Mncomponent$Mnof$Mntype = new ModuleMethod(runtimeVar, 81, Lit229, 8194);
        type$Mn$Grclass = new ModuleMethod(runtimeVar, 82, Lit230, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        coerce$Mnto$Mnnumber = new ModuleMethod(runtimeVar, 83, Lit231, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        coerce$Mnto$Mnkey = new ModuleMethod(runtimeVar, 84, Lit232, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        use$Mnjson$Mnformat = Macro.make(Lit233, Lit234, $instance);
        coerce$Mnto$Mnstring = new ModuleMethod(runtimeVar, 85, Lit235, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        ModuleMethod moduleMethod6 = new ModuleMethod(runtimeVar, 86, Lit236, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod6.setProperty("source-location", "/tmp/runtime3808032275111475787.scm:1671");
        get$Mndisplay$Mnrepresentation = moduleMethod6;
        ModuleMethod moduleMethod7 = new ModuleMethod(runtimeVar, 87, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod7.setProperty("source-location", "/tmp/runtime3808032275111475787.scm:1681");
        lambda$Fn8 = moduleMethod7;
        ModuleMethod moduleMethod8 = new ModuleMethod(runtimeVar, 88, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod8.setProperty("source-location", "/tmp/runtime3808032275111475787.scm:1704");
        lambda$Fn11 = moduleMethod8;
        join$Mnstrings = new ModuleMethod(runtimeVar, 89, Lit237, 8194);
        string$Mnreplace = new ModuleMethod(runtimeVar, 90, Lit238, 8194);
        coerce$Mnto$Mnyail$Mnlist = new ModuleMethod(runtimeVar, 91, Lit239, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        coerce$Mnto$Mnpair = new ModuleMethod(runtimeVar, 92, Lit240, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        coerce$Mnto$Mndictionary = new ModuleMethod(runtimeVar, 93, Lit241, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        coerce$Mnto$Mnmatrix = new ModuleMethod(runtimeVar, 94, Lit242, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        coerce$Mnto$Mnboolean = new ModuleMethod(runtimeVar, 95, Lit243, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        is$Mncoercible$Qu = new ModuleMethod(runtimeVar, 96, Lit244, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        all$Mncoercible$Qu = new ModuleMethod(runtimeVar, 97, Lit245, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        boolean$Mn$Grstring = new ModuleMethod(runtimeVar, 98, Lit246, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        padded$Mnstring$Mn$Grnumber = new ModuleMethod(runtimeVar, 99, Lit247, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        $Stformat$Mninexact$St = new ModuleMethod(runtimeVar, 100, Lit248, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        appinventor$Mnnumber$Mn$Grstring = new ModuleMethod(runtimeVar, 101, Lit249, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnequal$Qu = new ModuleMethod(runtimeVar, 102, Lit250, 8194);
        yail$Mnatomic$Mnequal$Qu = new ModuleMethod(runtimeVar, 103, Lit251, 8194);
        as$Mnnumber = new ModuleMethod(runtimeVar, 104, Lit252, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnnot$Mnequal$Qu = new ModuleMethod(runtimeVar, 105, Lit253, 8194);
        process$Mnand$Mndelayed = new ModuleMethod(runtimeVar, 106, Lit254, -4096);
        process$Mnor$Mndelayed = new ModuleMethod(runtimeVar, 107, Lit255, -4096);
        yail$Mnfloor = new ModuleMethod(runtimeVar, 108, Lit256, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnceiling = new ModuleMethod(runtimeVar, 109, Lit257, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnround = new ModuleMethod(runtimeVar, 110, Lit258, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        random$Mnset$Mnseed = new ModuleMethod(runtimeVar, 111, Lit259, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        random$Mnfraction = new ModuleMethod(runtimeVar, 112, Lit260, 0);
        random$Mninteger = new ModuleMethod(runtimeVar, 113, Lit261, 8194);
        ModuleMethod moduleMethod9 = new ModuleMethod(runtimeVar, 114, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod9.setProperty("source-location", "/tmp/runtime3808032275111475787.scm:2032");
        lambda$Fn16 = moduleMethod9;
        yail$Mndivide = new ModuleMethod(runtimeVar, 115, Lit262, 8194);
        degrees$Mn$Grradians$Mninternal = new ModuleMethod(runtimeVar, 116, Lit263, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        radians$Mn$Grdegrees$Mninternal = new ModuleMethod(runtimeVar, 117, Lit264, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        degrees$Mn$Grradians = new ModuleMethod(runtimeVar, 118, Lit265, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        radians$Mn$Grdegrees = new ModuleMethod(runtimeVar, 119, Lit266, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        sin$Mndegrees = new ModuleMethod(runtimeVar, R.styleable.AppCompatTheme_viewInflaterClass, Lit267, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        cos$Mndegrees = new ModuleMethod(runtimeVar, 121, Lit268, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        tan$Mndegrees = new ModuleMethod(runtimeVar, 122, Lit269, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        asin$Mndegrees = new ModuleMethod(runtimeVar, 123, Lit270, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        acos$Mndegrees = new ModuleMethod(runtimeVar, 124, Lit271, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        atan$Mndegrees = new ModuleMethod(runtimeVar, 125, Lit272, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        atan2$Mndegrees = new ModuleMethod(runtimeVar, 126, Lit273, 8194);
        string$Mnto$Mnupper$Mncase = new ModuleMethod(runtimeVar, 127, Lit274, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        string$Mnto$Mnlower$Mncase = new ModuleMethod(runtimeVar, 128, Lit275, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        unicode$Mnstring$Mn$Grlist = new ModuleMethod(runtimeVar, 129, Lit276, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        string$Mnreverse = new ModuleMethod(runtimeVar, 130, Lit277, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        format$Mnas$Mndecimal = new ModuleMethod(runtimeVar, 131, Lit278, 8194);
        is$Mnnumber$Qu = new ModuleMethod(runtimeVar, 132, Lit279, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        is$Mnbase10$Qu = new ModuleMethod(runtimeVar, 133, Lit280, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        is$Mnhexadecimal$Qu = new ModuleMethod(runtimeVar, 134, Lit281, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        is$Mnbinary$Qu = new ModuleMethod(runtimeVar, 135, Lit282, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        math$Mnconvert$Mndec$Mnhex = new ModuleMethod(runtimeVar, 136, Lit283, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        math$Mnconvert$Mnhex$Mndec = new ModuleMethod(runtimeVar, 137, Lit284, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        math$Mnconvert$Mnbin$Mndec = new ModuleMethod(runtimeVar, 138, Lit285, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        math$Mnconvert$Mndec$Mnbin = new ModuleMethod(runtimeVar, 139, Lit286, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        patched$Mnnumber$Mn$Grstring$Mnbinary = new ModuleMethod(runtimeVar, 140, Lit287, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        alternate$Mnnumber$Mn$Grstring$Mnbinary = new ModuleMethod(runtimeVar, 141, Lit288, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        internal$Mnbinary$Mnconvert = new ModuleMethod(runtimeVar, 142, Lit289, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        avg = new ModuleMethod(runtimeVar, 143, Lit290, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnmul = new ModuleMethod(runtimeVar, 144, Lit291, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        gm = new ModuleMethod(runtimeVar, 145, Lit292, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        mode = new ModuleMethod(runtimeVar, 146, Lit293, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        maxl = new ModuleMethod(runtimeVar, 147, Lit294, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        minl = new ModuleMethod(runtimeVar, 148, Lit295, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        mean = new ModuleMethod(runtimeVar, 149, Lit296, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        sum$Mnmean$Mnsquare$Mndiff = new ModuleMethod(runtimeVar, 150, Lit297, 8194);
        std$Mndev = new ModuleMethod(runtimeVar, 151, Lit298, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        sample$Mnstd$Mndev = new ModuleMethod(runtimeVar, 152, Lit299, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        std$Mnerr = new ModuleMethod(runtimeVar, 153, Lit300, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnlist$Qu = new ModuleMethod(runtimeVar, 154, Lit301, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnlist$Mncandidate$Qu = new ModuleMethod(runtimeVar, 155, Lit302, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnlist$Mncontents = new ModuleMethod(runtimeVar, 156, Lit303, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        set$Mnyail$Mnlist$Mncontents$Ex = new ModuleMethod(runtimeVar, 157, Lit304, 8194);
        insert$Mnyail$Mnlist$Mnheader = new ModuleMethod(runtimeVar, 158, Lit305, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        kawa$Mnlist$Mn$Gryail$Mnlist = new ModuleMethod(runtimeVar, 159, Lit306, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnlist$Mn$Grkawa$Mnlist = new ModuleMethod(runtimeVar, ComponentConstants.TEXTBOX_PREFERRED_WIDTH, Lit307, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnlist$Mnempty$Qu = new ModuleMethod(runtimeVar, 161, Lit308, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        make$Mnyail$Mnlist = new ModuleMethod(runtimeVar, 162, Lit309, -4096);
        yail$Mnlist$Mncopy = new ModuleMethod(runtimeVar, 163, Lit310, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnlist$Mnreverse = new ModuleMethod(runtimeVar, 164, Lit311, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnlist$Mnto$Mncsv$Mntable = new ModuleMethod(runtimeVar, 165, Lit312, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnlist$Mnto$Mncsv$Mnrow = new ModuleMethod(runtimeVar, 166, Lit313, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        convert$Mnto$Mnstrings$Mnfor$Mncsv = new ModuleMethod(runtimeVar, 167, Lit314, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnlist$Mnfrom$Mncsv$Mntable = new ModuleMethod(runtimeVar, 168, Lit315, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnlist$Mnfrom$Mncsv$Mnrow = new ModuleMethod(runtimeVar, 169, Lit316, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnlist$Mnlength = new ModuleMethod(runtimeVar, 170, Lit317, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnlist$Mnindex = new ModuleMethod(runtimeVar, 171, Lit318, 8194);
        yail$Mnlist$Mnget$Mnitem = new ModuleMethod(runtimeVar, 172, Lit319, 8194);
        yail$Mnlist$Mnset$Mnitem$Ex = new ModuleMethod(runtimeVar, 173, Lit320, 12291);
        yail$Mnlist$Mnremove$Mnitem$Ex = new ModuleMethod(runtimeVar, 174, Lit321, 8194);
        yail$Mnlist$Mninsert$Mnitem$Ex = new ModuleMethod(runtimeVar, 175, Lit322, 12291);
        yail$Mnlist$Mnappend$Ex = new ModuleMethod(runtimeVar, 176, Lit323, 8194);
        yail$Mnlist$Mnadd$Mnto$Mnlist$Ex = new ModuleMethod(runtimeVar, 177, Lit324, -4095);
        yail$Mnlist$Mnmember$Qu = new ModuleMethod(runtimeVar, 178, Lit325, 8194);
        yail$Mnlist$Mnpick$Mnrandom = new ModuleMethod(runtimeVar, 179, Lit326, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnfor$Mneach = new ModuleMethod(runtimeVar, 180, Lit327, 8194);
        yail$Mnlist$Mnmap = new ModuleMethod(runtimeVar, 181, Lit328, 8194);
        yail$Mnlist$Mnfilter = new ModuleMethod(runtimeVar, 182, Lit329, 8194);
        yail$Mnlist$Mnreduce = new ModuleMethod(runtimeVar, 183, Lit330, 12291);
        yail$Mntypeof = new ModuleMethod(runtimeVar, 184, Lit331, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnindexof = new ModuleMethod(runtimeVar, 185, Lit332, 8194);
        type$Mnlt$Qu = new ModuleMethod(runtimeVar, 186, Lit333, 8194);
        is$Mnlt$Qu = new ModuleMethod(runtimeVar, 187, Lit334, 8194);
        is$Mneq$Qu = new ModuleMethod(runtimeVar, 188, Lit335, 8194);
        is$Mnleq$Qu = new ModuleMethod(runtimeVar, FullScreenVideoUtil.FULLSCREEN_VIDEO_DIALOG_FLAG, Lit336, 8194);
        boolean$Mnlt$Qu = new ModuleMethod(runtimeVar, FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_SEEK, Lit337, 8194);
        boolean$Mneq$Qu = new ModuleMethod(runtimeVar, FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_PLAY, Lit338, 8194);
        boolean$Mnleq$Qu = new ModuleMethod(runtimeVar, FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_PAUSE, Lit339, 8194);
        list$Mnlt$Qu = new ModuleMethod(runtimeVar, FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_STOP, Lit340, 8194);
        list$Mneq$Qu = new ModuleMethod(runtimeVar, FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_SOURCE, Lit341, 8194);
        yail$Mnlist$Mnnecessary = new ModuleMethod(runtimeVar, FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_FULLSCREEN, Lit342, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        list$Mnleq$Qu = new ModuleMethod(runtimeVar, FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_DURATION, Lit343, 8194);
        component$Mnlt$Qu = new ModuleMethod(runtimeVar, 197, Lit344, 8194);
        component$Mneq$Qu = new ModuleMethod(runtimeVar, 198, Lit345, 8194);
        component$Mnleq$Qu = new ModuleMethod(runtimeVar, 199, Lit346, 8194);
        yail$Mntake = new ModuleMethod(runtimeVar, 200, Lit347, 8194);
        yail$Mndrop = new ModuleMethod(runtimeVar, 201, Lit348, 8194);
        yail$Mnmerge = new ModuleMethod(runtimeVar, 202, Lit349, 12291);
        yail$Mnmergesort = new ModuleMethod(runtimeVar, 203, Lit350, 8194);
        yail$Mnlist$Mnsort = new ModuleMethod(runtimeVar, HttpStatusCodes.STATUS_CODE_NO_CONTENT, Lit351, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnlist$Mnsort$Mncomparator = new ModuleMethod(runtimeVar, 205, Lit352, 8194);
        merge$Mnkey = new ModuleMethod(runtimeVar, 206, Lit353, 16388);
        mergesort$Mnkey = new ModuleMethod(runtimeVar, 207, Lit354, 12291);
        yail$Mnlist$Mnsort$Mnkey = new ModuleMethod(runtimeVar, 208, Lit355, 8194);
        list$Mnnumber$Mnonly = new ModuleMethod(runtimeVar, 209, Lit356, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        list$Mnmin = new ModuleMethod(runtimeVar, 210, Lit357, 12291);
        yail$Mnlist$Mnmin$Mncomparator = new ModuleMethod(runtimeVar, 211, Lit358, 8194);
        list$Mnmax = new ModuleMethod(runtimeVar, 212, Lit359, 12291);
        yail$Mnlist$Mnmax$Mncomparator = new ModuleMethod(runtimeVar, 213, Lit360, 8194);
        yail$Mnlist$Mnbut$Mnfirst = new ModuleMethod(runtimeVar, 214, Lit361, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        but$Mnlast = new ModuleMethod(runtimeVar, 215, Lit362, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnlist$Mnbut$Mnlast = new ModuleMethod(runtimeVar, 216, Lit363, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnlist$Mnslice = new ModuleMethod(runtimeVar, 217, Lit364, 12291);
        yail$Mnfor$Mnrange = new ModuleMethod(runtimeVar, 218, Lit365, 16388);
        yail$Mnfor$Mnrange$Mnwith$Mnnumeric$Mnchecked$Mnargs = new ModuleMethod(runtimeVar, 219, Lit366, 16388);
        yail$Mnnumber$Mnrange = new ModuleMethod(runtimeVar, 220, Lit367, 8194);
        yail$Mnalist$Mnlookup = new ModuleMethod(runtimeVar, 221, Lit368, 12291);
        pair$Mnok$Qu = new ModuleMethod(runtimeVar, 222, Lit369, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnlist$Mnjoin$Mnwith$Mnseparator = new ModuleMethod(runtimeVar, 223, Lit370, 8194);
        make$Mnyail$Mndictionary = new ModuleMethod(runtimeVar, 224, Lit371, -4096);
        make$Mndictionary$Mnpair = new ModuleMethod(runtimeVar, 225, Lit372, 8194);
        yail$Mndictionary$Mnset$Mnpair = new ModuleMethod(runtimeVar, 226, Lit373, 12291);
        yail$Mndictionary$Mndelete$Mnpair = new ModuleMethod(runtimeVar, 227, Lit374, 8194);
        yail$Mndictionary$Mnlookup = new ModuleMethod(runtimeVar, 228, Lit375, 12291);
        yail$Mndictionary$Mnrecursive$Mnlookup = new ModuleMethod(runtimeVar, 229, Lit376, 12291);
        yail$Mndictionary$Mnwalk = new ModuleMethod(runtimeVar, 230, Lit377, 8194);
        yail$Mndictionary$Mnrecursive$Mnset = new ModuleMethod(runtimeVar, 231, Lit378, 12291);
        yail$Mndictionary$Mnget$Mnkeys = new ModuleMethod(runtimeVar, 232, Lit379, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mndictionary$Mnget$Mnvalues = new ModuleMethod(runtimeVar, YaVersion.YOUNG_ANDROID_VERSION, Lit380, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mndictionary$Mnis$Mnkey$Mnin = new ModuleMethod(runtimeVar, 234, Lit381, 8194);
        yail$Mndictionary$Mnlength = new ModuleMethod(runtimeVar, 235, Lit382, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mndictionary$Mnalist$Mnto$Mndict = new ModuleMethod(runtimeVar, 236, Lit383, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mndictionary$Mndict$Mnto$Mnalist = new ModuleMethod(runtimeVar, 237, Lit384, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mndictionary$Mncopy = new ModuleMethod(runtimeVar, 238, Lit385, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mndictionary$Mncombine$Mndicts = new ModuleMethod(runtimeVar, 239, Lit386, 8194);
        yail$Mndictionary$Qu = new ModuleMethod(runtimeVar, 240, Lit387, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        make$Mnyail$Mnmatrix = new ModuleMethod(runtimeVar, LispEscapeFormat.ESCAPE_NORMAL, Lit388, -4096);
        make$Mnyail$Mnmatrix$Mnmultidim = new ModuleMethod(runtimeVar, LispEscapeFormat.ESCAPE_ALL, Lit389, 8194);
        yail$Mnmatrix$Mnget$Mnrow = new ModuleMethod(runtimeVar, 243, Lit390, 8194);
        yail$Mnmatrix$Mnget$Mncolumn = new ModuleMethod(runtimeVar, 244, Lit391, 8194);
        yail$Mnmatrix$Mnget$Mncell = new ModuleMethod(runtimeVar, 245, Lit392, -4095);
        yail$Mnmatrix$Mnset$Mncell$Ex = new ModuleMethod(runtimeVar, 246, Lit393, -4094);
        yail$Mnmatrix$Qu = new ModuleMethod(runtimeVar, 247, Lit394, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnmatrix$Mnget$Mndims = new ModuleMethod(runtimeVar, 248, Lit395, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnmatrix$Mninverse = new ModuleMethod(runtimeVar, 249, Lit396, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnmatrix$Mntranspose = new ModuleMethod(runtimeVar, 250, Lit397, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnmatrix$Mnrotate$Mnleft = new ModuleMethod(runtimeVar, Telnet.WILL, Lit398, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnmatrix$Mnrotate$Mnright = new ModuleMethod(runtimeVar, Telnet.WONT, Lit399, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnmatrix$Mnadd = new ModuleMethod(runtimeVar, Telnet.DO, Lit400, -4096);
        yail$Mnmatrix$Mnsubtract = new ModuleMethod(runtimeVar, Telnet.DONT, Lit401, 8194);
        yail$Mnmatrix$Mnmultiply = new ModuleMethod(runtimeVar, 255, Lit402, -4096);
        yail$Mnmatrix$Mnpower = new ModuleMethod(runtimeVar, 256, Lit403, 8194);
        yail$Mnmatrix$Mnto$Mnalist = new ModuleMethod(runtimeVar, InputDeviceCompat.SOURCE_KEYBOARD, Lit404, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnmatrix$Mnequal$Qu = new ModuleMethod(runtimeVar, 258, Lit405, 8194);
        create$Mnyail$Mnprocedure = new ModuleMethod(runtimeVar, 259, Lit406, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        create$Mnyail$Mnprocedure$Mnwith$Mnname = new ModuleMethod(runtimeVar, 260, Lit407, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        call$Mnyail$Mnprocedure = new ModuleMethod(runtimeVar, 261, Lit408, -4095);
        call$Mnyail$Mnprocedure$Mninput$Mnlist = new ModuleMethod(runtimeVar, 262, Lit409, 8194);
        num$Mnargs$Mnyail$Mnprocedure = new ModuleMethod(runtimeVar, 263, Lit410, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        run$Mnin$Mnbackground = new ModuleMethod(runtimeVar, 264, Lit411, 8194);
        run$Mnafter$Mnperiod = new ModuleMethod(runtimeVar, 265, Lit412, 8194);
        make$Mndisjunct = new ModuleMethod(runtimeVar, 266, Lit413, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        array$Mn$Grlist = new ModuleMethod(runtimeVar, 267, Lit414, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        string$Mnstarts$Mnat = new ModuleMethod(runtimeVar, 268, Lit415, 8194);
        string$Mncontains = new ModuleMethod(runtimeVar, 269, Lit416, 8194);
        string$Mncontains$Mnany = new ModuleMethod(runtimeVar, 270, Lit417, 8194);
        string$Mncontains$Mnall = new ModuleMethod(runtimeVar, 271, Lit418, 8194);
        string$Mnsplit$Mnat$Mnfirst = new ModuleMethod(runtimeVar, 272, Lit419, 8194);
        string$Mnsplit$Mnat$Mnfirst$Mnof$Mnany = new ModuleMethod(runtimeVar, 273, Lit420, 8194);
        string$Mnsplit = new ModuleMethod(runtimeVar, 274, Lit421, 8194);
        string$Mnsplit$Mnat$Mnany = new ModuleMethod(runtimeVar, 275, Lit422, 8194);
        string$Mnsplit$Mnat$Mnspaces = new ModuleMethod(runtimeVar, 276, Lit423, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        string$Mnsubstring = new ModuleMethod(runtimeVar, 277, Lit424, 12291);
        string$Mntrim = new ModuleMethod(runtimeVar, 278, Lit425, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        string$Mnreplace$Mnall = new ModuleMethod(runtimeVar, 279, Lit426, 12291);
        string$Mnempty$Qu = new ModuleMethod(runtimeVar, 280, Lit427, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        text$Mndeobfuscate = new ModuleMethod(runtimeVar, 281, Lit428, 8194);
        string$Mnreplace$Mnmappings$Mndictionary = new ModuleMethod(runtimeVar, 282, Lit429, 8194);
        string$Mnreplace$Mnmappings$Mnlongest$Mnstring = new ModuleMethod(runtimeVar, 283, Lit430, 8194);
        string$Mnreplace$Mnmappings$Mnearliest$Mnoccurrence = new ModuleMethod(runtimeVar, 284, Lit431, 8194);
        make$Mnexact$Mnyail$Mninteger = new ModuleMethod(runtimeVar, 285, Lit432, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        make$Mncolor = new ModuleMethod(runtimeVar, 286, Lit433, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        split$Mncolor = new ModuleMethod(runtimeVar, 287, Lit434, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        close$Mnscreen = new ModuleMethod(runtimeVar, 288, Lit435, 0);
        close$Mnapplication = new ModuleMethod(runtimeVar, 289, Lit436, 0);
        open$Mnanother$Mnscreen = new ModuleMethod(runtimeVar, 290, Lit437, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        open$Mnanother$Mnscreen$Mnwith$Mnstart$Mnvalue = new ModuleMethod(runtimeVar, 291, Lit438, 8194);
        get$Mnstart$Mnvalue = new ModuleMethod(runtimeVar, 292, Lit439, 0);
        close$Mnscreen$Mnwith$Mnvalue = new ModuleMethod(runtimeVar, 293, Lit440, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        get$Mnplain$Mnstart$Mntext = new ModuleMethod(runtimeVar, 294, Lit441, 0);
        close$Mnscreen$Mnwith$Mnplain$Mntext = new ModuleMethod(runtimeVar, 295, Lit442, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        get$Mnserver$Mnaddress$Mnfrom$Mnwifi = new ModuleMethod(runtimeVar, 296, Lit443, 0);
        process$Mnrepl$Mninput = Macro.make(Lit444, Lit445, $instance);
        in$Mnui = new ModuleMethod(runtimeVar, 297, Lit446, 8194);
        send$Mnto$Mnblock = new ModuleMethod(runtimeVar, 298, Lit447, 8194);
        clear$Mncurrent$Mnform = new ModuleMethod(runtimeVar, 299, Lit448, 0);
        set$Mnform$Mnname = new ModuleMethod(runtimeVar, HttpStatusCodes.STATUS_CODE_MULTIPLE_CHOICES, Lit449, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        remove$Mncomponent = new ModuleMethod(runtimeVar, 301, Lit450, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        rename$Mncomponent = new ModuleMethod(runtimeVar, 302, Lit451, 8194);
        init$Mnruntime = new ModuleMethod(runtimeVar, 303, Lit452, 0);
        set$Mnthis$Mnform = new ModuleMethod(runtimeVar, 304, Lit453, 0);
        clarify = new ModuleMethod(runtimeVar, ErrorMessages.ERROR_TWITTER_AUTHORIZATION_FAILED, Lit454, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        clarify1 = new ModuleMethod(runtimeVar, ErrorMessages.ERROR_TWITTER_SET_STATUS_FAILED, Lit455, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
    }

    static Object lambda22(Object stx) {
        Object[] objArrAllocVars = SyntaxPattern.allocVars(2, null);
        if (Lit71.match(stx, objArrAllocVars, 0)) {
            Object objExecute = Lit72.execute(objArrAllocVars, TemplateScope.make());
            try {
                return SyntaxForms.makeWithTemplate(stx, strings.stringAppend("", "", ((Symbol) objExecute).toString()));
            } catch (ClassCastException e) {
                throw new WrongType(e, "symbol->string", 1, objExecute);
            }
        }
        return syntax_case.error("syntax-case", stx);
    }

    public static Object addComponentWithinRepl(Object container$Mnname, Object component$Mntype, Object componentName, Object initPropsThunk) throws Throwable {
        frame frameVar = new frame();
        frameVar.component$Mnname = componentName;
        frameVar.init$Mnprops$Mnthunk = initPropsThunk;
        try {
            Object objLookupInCurrentFormEnvironment = lookupInCurrentFormEnvironment((Symbol) container$Mnname);
            try {
                ComponentContainer container = (ComponentContainer) objLookupInCurrentFormEnvironment;
                Object obj = frameVar.component$Mnname;
                try {
                    frameVar.existing$Mncomponent = lookupInCurrentFormEnvironment((Symbol) obj);
                    frameVar.component$Mnto$Mnadd = Invoke.make.apply2(component$Mntype, container);
                    Invoke.invoke.apply3(frameVar.component$Mnto$Mnadd, "setComponentName", frameVar.component$Mnname);
                    Object obj2 = frameVar.component$Mnname;
                    try {
                        addToCurrentFormEnvironment((Symbol) obj2, frameVar.component$Mnto$Mnadd);
                        return addInitThunk(frameVar.component$Mnname, frameVar.lambda$Fn1);
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "add-to-current-form-environment", 0, obj2);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "lookup-in-current-form-environment", 0, obj);
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "container", -2, objLookupInCurrentFormEnvironment);
            }
        } catch (ClassCastException e4) {
            throw new WrongType(e4, "lookup-in-current-form-environment", 0, container$Mnname);
        }
    }

    @Override // gnu.expr.ModuleBody
    public int match4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4, CallContext callContext) {
        switch (moduleMethod.selector) {
            case 18:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.value4 = obj4;
                callContext.proc = moduleMethod;
                callContext.pc = 4;
                return 0;
            case 26:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.value4 = obj4;
                callContext.proc = moduleMethod;
                callContext.pc = 4;
                return 0;
            case 50:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.value4 = obj4;
                callContext.proc = moduleMethod;
                callContext.pc = 4;
                return 0;
            case 52:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.value4 = obj4;
                callContext.proc = moduleMethod;
                callContext.pc = 4;
                return 0;
            case 55:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.value4 = obj4;
                callContext.proc = moduleMethod;
                callContext.pc = 4;
                return 0;
            case 56:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.value4 = obj4;
                callContext.proc = moduleMethod;
                callContext.pc = 4;
                return 0;
            case 66:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.value4 = obj4;
                callContext.proc = moduleMethod;
                callContext.pc = 4;
                return 0;
            case 67:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.value4 = obj4;
                callContext.proc = moduleMethod;
                callContext.pc = 4;
                return 0;
            case 206:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.value4 = obj4;
                callContext.proc = moduleMethod;
                callContext.pc = 4;
                return 0;
            case 218:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.value4 = obj4;
                callContext.proc = moduleMethod;
                callContext.pc = 4;
                return 0;
            case 219:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.value4 = obj4;
                callContext.proc = moduleMethod;
                callContext.pc = 4;
                return 0;
            default:
                return super.match4(moduleMethod, obj, obj2, obj3, obj4, callContext);
        }
    }

    /* JADX INFO: compiled from: runtime3808032275111475787.scm */
    public class frame extends ModuleBody {
        Object component$Mnname;
        Object component$Mnto$Mnadd;
        Object existing$Mncomponent;
        Object init$Mnprops$Mnthunk;
        final ModuleMethod lambda$Fn1;

        public frame() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 1, null, 0);
            moduleMethod.setProperty("source-location", "/tmp/runtime3808032275111475787.scm:101");
            this.lambda$Fn1 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 1 ? lambda1() : super.apply0(moduleMethod);
        }

        Object lambda1() throws Throwable {
            if (this.init$Mnprops$Mnthunk != Boolean.FALSE) {
                Scheme.applyToArgs.apply1(this.init$Mnprops$Mnthunk);
            }
            if (this.existing$Mncomponent == Boolean.FALSE) {
                return Values.empty;
            }
            runtime.androidLog(Format.formatToString(0, "Copying component properties for ~A", this.component$Mnname));
            Object obj = this.existing$Mncomponent;
            try {
                Component component = (Component) obj;
                Object obj2 = this.component$Mnto$Mnadd;
                try {
                    return PropertyUtil.copyComponentProperties(component, (Component) obj2);
                } catch (ClassCastException e) {
                    throw new WrongType(e, "com.google.appinventor.components.runtime.util.PropertyUtil.copyComponentProperties(com.google.appinventor.components.runtime.Component,com.google.appinventor.components.runtime.Component)", 2, obj2);
                }
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "com.google.appinventor.components.runtime.util.PropertyUtil.copyComponentProperties(com.google.appinventor.components.runtime.Component,com.google.appinventor.components.runtime.Component)", 1, obj);
            }
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 1) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }
    }

    public static Object call$MnInitializeOfComponents$V(Object[] argsArray) throws Throwable {
        LList component$Mnnames = LList.makeList(argsArray, 0);
        Object arg0 = component$Mnnames;
        while (arg0 != LList.Empty) {
            try {
                Pair arg02 = (Pair) arg0;
                Object init$Mnthunk = getInitThunk(arg02.getCar());
                if (init$Mnthunk != Boolean.FALSE) {
                    Scheme.applyToArgs.apply1(init$Mnthunk);
                }
                arg0 = arg02.getCdr();
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, arg0);
            }
        }
        Object arg03 = component$Mnnames;
        while (arg03 != LList.Empty) {
            try {
                Pair arg04 = (Pair) arg03;
                Object component$Mnname = arg04.getCar();
                try {
                    ((Form) $Stthis$Mnform$St).callInitialize(lookupInCurrentFormEnvironment((Symbol) component$Mnname));
                    arg03 = arg04.getCdr();
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "lookup-in-current-form-environment", 0, component$Mnname);
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "arg0", -2, arg03);
            }
        }
        return Values.empty;
    }

    @Override // gnu.expr.ModuleBody
    public int matchN(ModuleMethod moduleMethod, Object[] objArr, CallContext callContext) {
        switch (moduleMethod.selector) {
            case 19:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 30:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 31:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 48:
            case 49:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 51:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 53:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 54:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 106:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 107:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 162:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 177:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 224:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case LispEscapeFormat.ESCAPE_NORMAL /* 241 */:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 245:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 246:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case Telnet.DO /* 253 */:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 255:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 261:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            default:
                return super.matchN(moduleMethod, objArr, callContext);
        }
    }

    public static Object call$MnInitializeOfComponentsLibrary() {
        androidLog(Format.formatToString(0, "*init-thunk-list* = ~A", $Stinit$Mnthunk$Mnlist$St));
        return Scheme.apply.apply2(call$MnInitialize$Mnof$Mncomponents, $Stinit$Mnthunk$Mnlist$St);
    }

    @Override // gnu.expr.ModuleBody
    public int match0(ModuleMethod moduleMethod, CallContext callContext) {
        switch (moduleMethod.selector) {
            case 20:
                callContext.proc = moduleMethod;
                callContext.pc = 0;
                return 0;
            case 21:
                callContext.proc = moduleMethod;
                callContext.pc = 0;
                return 0;
            case 24:
                callContext.proc = moduleMethod;
                callContext.pc = 0;
                return 0;
            case 45:
                callContext.proc = moduleMethod;
                callContext.pc = 0;
                return 0;
            case 112:
                callContext.proc = moduleMethod;
                callContext.pc = 0;
                return 0;
            case 288:
                callContext.proc = moduleMethod;
                callContext.pc = 0;
                return 0;
            case 289:
                callContext.proc = moduleMethod;
                callContext.pc = 0;
                return 0;
            case 292:
                callContext.proc = moduleMethod;
                callContext.pc = 0;
                return 0;
            case 294:
                callContext.proc = moduleMethod;
                callContext.pc = 0;
                return 0;
            case 296:
                callContext.proc = moduleMethod;
                callContext.pc = 0;
                return 0;
            case 299:
                callContext.proc = moduleMethod;
                callContext.pc = 0;
                return 0;
            case 303:
                callContext.proc = moduleMethod;
                callContext.pc = 0;
                return 0;
            case 304:
                callContext.proc = moduleMethod;
                callContext.pc = 0;
                return 0;
            default:
                return super.match0(moduleMethod, callContext);
        }
    }

    public static void setupThunkList() {
        Object form$Mnname = $Stthis$Mnform$Mnname$St;
        androidLog(Format.formatToString(0, "Setting *init-thunk-list* Screen  to ~A", form$Mnname));
        if (strings.isString(form$Mnname)) {
            try {
                $Stinit$Mnthunk$Mnlist$St = LList.list1(misc.string$To$Symbol((CharSequence) form$Mnname));
                return;
            } catch (ClassCastException e) {
                throw new WrongType(e, "string->symbol", 1, form$Mnname);
            }
        }
        $Stinit$Mnthunk$Mnlist$St = LList.list1(form$Mnname);
    }

    public static Object addInitThunk(Object component$Mnname, Object thunk) {
        $Stinit$Mnthunk$Mnlist$St = append.append$V(new Object[]{$Stinit$Mnthunk$Mnlist$St, LList.list1(component$Mnname)});
        androidLog(Format.formatToString(0, "add-init-thunk: *init-thunk-list* = ~A", $Stinit$Mnthunk$Mnlist$St));
        return Invoke.invokeStatic.applyN(new Object[]{KawaEnvironment, Lit0, $Stinit$Mnthunk$Mnenvironment$St, component$Mnname, thunk});
    }

    @Override // gnu.expr.ModuleBody
    public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
        switch (moduleMethod.selector) {
            case 22:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 27:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 36:
                if (!(obj instanceof Symbol)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 37:
                if (!(obj instanceof Symbol)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 41:
                if (!(obj instanceof Symbol)) {
                    return -786431;
                }
                callContext.value1 = obj;
                if (!(obj2 instanceof Symbol)) {
                    return -786430;
                }
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 42:
                if (!(obj instanceof Symbol)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 43:
                if (!(obj instanceof Symbol)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 63:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 69:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 72:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 77:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case R.styleable.AppCompatTheme_panelBackground /* 81 */:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 89:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 90:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 102:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 103:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 105:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 113:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 115:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 126:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 131:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 150:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 157:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 171:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 172:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 174:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 176:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 178:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 180:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 181:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 182:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 185:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 186:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 187:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 188:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case FullScreenVideoUtil.FULLSCREEN_VIDEO_DIALOG_FLAG /* 189 */:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_SEEK /* 190 */:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_PLAY /* 191 */:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_PAUSE /* 192 */:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_STOP /* 193 */:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_SOURCE /* 194 */:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_DURATION /* 196 */:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 197:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 198:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 199:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 200:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 201:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 203:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 205:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 208:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 211:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 213:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 220:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 223:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 225:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 227:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 230:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 234:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 239:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case LispEscapeFormat.ESCAPE_ALL /* 242 */:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 243:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 244:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case Telnet.DONT /* 254 */:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 256:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 258:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 262:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 264:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 265:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 268:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 269:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 270:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 271:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 272:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 273:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 274:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 275:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 281:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 282:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 283:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 284:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 291:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 297:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 298:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 302:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            default:
                return super.match2(moduleMethod, obj, obj2, callContext);
        }
    }

    public static Object getInitThunk(Object component$Mnname) {
        Object obj = $Stinit$Mnthunk$Mnenvironment$St;
        try {
            try {
                boolean x = ((Environment) obj).isBound((Symbol) component$Mnname);
                if (x) {
                    return Invoke.invokeStatic.apply4(KawaEnvironment, Lit1, $Stinit$Mnthunk$Mnenvironment$St, component$Mnname);
                }
                return x ? Boolean.TRUE : Boolean.FALSE;
            } catch (ClassCastException e) {
                throw new WrongType(e, "gnu.mapping.Environment.isBound(gnu.mapping.Symbol)", 2, component$Mnname);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "gnu.mapping.Environment.isBound(gnu.mapping.Symbol)", 1, obj);
        }
    }

    public static void clearInitThunks() {
        setupThunkList();
        $Stinit$Mnthunk$Mnenvironment$St = Environment.make("init-thunk-environment");
    }

    public static Object lookupComponent(Object comp$Mnname) {
        try {
            Object verified = lookupInCurrentFormEnvironment((Symbol) comp$Mnname, Boolean.FALSE);
            return verified != Boolean.FALSE ? verified : Lit2;
        } catch (ClassCastException e) {
            throw new WrongType(e, "lookup-in-current-form-environment", 0, comp$Mnname);
        }
    }

    public static Object setAndCoerceProperty$Ex(Object component, Object prop$Mnsym, Object property$Mnvalue, Object property$Mntype) {
        return $PcSetAndCoerceProperty$Ex(coerceToComponentAndVerify(component), prop$Mnsym, property$Mnvalue, property$Mntype);
    }

    public static Object getProperty$1(Object component, Object prop$Mnname) {
        Object component2 = coerceToComponentAndVerify(component);
        return sanitizeReturnValue(component2, prop$Mnname, Invoke.invoke.apply2(component2, prop$Mnname));
    }

    public static Object coerceToComponentAndVerify(Object possible$Mncomponent) {
        Object component = coerceToComponent(possible$Mncomponent);
        return !(component instanceof Component) ? signalRuntimeError(strings.stringAppend("Cannot find the component: ", getDisplayRepresentation(possible$Mncomponent)), "Problem with application") : component;
    }

    public static Object getPropertyAndCheck(Object possible$Mncomponent, Object component$Mntype, Object prop$Mnname) {
        Object component = coerceToComponentOfType(possible$Mncomponent, component$Mntype);
        return !(component instanceof Component) ? signalRuntimeError(Format.formatToString(0, "Property getter was expecting a ~A component but got a ~A instead.", component$Mntype, possible$Mncomponent.getClass().getSimpleName()), "Problem with application") : sanitizeReturnValue(component, prop$Mnname, Invoke.invoke.apply2(component, prop$Mnname));
    }

    @Override // gnu.expr.ModuleBody
    public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
        switch (moduleMethod.selector) {
            case 29:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 46:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 58:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 64:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 68:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 71:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 173:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 175:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 183:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 202:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 207:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 210:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 212:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 217:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 221:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 226:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 228:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 229:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 231:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 277:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 279:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            default:
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
        }
    }

    public static Object setAndCoercePropertyAndCheck$Ex(Object possible$Mncomponent, Object comp$Mntype, Object prop$Mnsym, Object property$Mnvalue, Object property$Mntype) {
        Object component = coerceToComponentOfType(possible$Mncomponent, comp$Mntype);
        return !(component instanceof Component) ? signalRuntimeError(Format.formatToString(0, "Property setter was expecting a ~A component but got a ~A instead.", comp$Mntype, possible$Mncomponent.getClass().getSimpleName()), "Problem with application") : $PcSetAndCoerceProperty$Ex(component, prop$Mnsym, property$Mnvalue, property$Mntype);
    }

    public static SimpleSymbol symbolAppend$V(Object[] argsArray) throws Throwable {
        LList symbols = LList.makeList(argsArray, 0);
        Apply apply = Scheme.apply;
        ModuleMethod moduleMethod = strings.string$Mnappend;
        Object result = LList.Empty;
        Object arg0 = symbols;
        while (arg0 != LList.Empty) {
            try {
                Pair arg02 = (Pair) arg0;
                Object cdr = arg02.getCdr();
                Object car = arg02.getCar();
                try {
                    result = Pair.make(((Symbol) car).toString(), result);
                    arg0 = cdr;
                } catch (ClassCastException e) {
                    throw new WrongType(e, "symbol->string", 1, car);
                }
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "arg0", -2, arg0);
            }
        }
        Object objApply2 = apply.apply2(moduleMethod, LList.reverseInPlace(result));
        try {
            return misc.string$To$Symbol((CharSequence) objApply2);
        } catch (ClassCastException e3) {
            throw new WrongType(e3, "string->symbol", 1, objApply2);
        }
    }

    static Object lambda23(Object stx) {
        Object[] objArrAllocVars = SyntaxPattern.allocVars(3, null);
        if (!Lit112.match(stx, objArrAllocVars, 0)) {
            return syntax_case.error("syntax-case", stx);
        }
        return SyntaxForms.makeWithTemplate(stx, Lit113.execute(objArrAllocVars, TemplateScope.make()));
    }

    static Object lambda24(Object stx) {
        Object[] objArrAllocVars = SyntaxPattern.allocVars(3, null);
        if (!Lit115.match(stx, objArrAllocVars, 0)) {
            return syntax_case.error("syntax-case", stx);
        }
        return SyntaxForms.makeWithTemplate(stx, Lit116.execute(objArrAllocVars, TemplateScope.make()));
    }

    static Object lambda25(Object stx) {
        Object[] objArrAllocVars = SyntaxPattern.allocVars(5, null);
        if (!Lit122.match(stx, objArrAllocVars, 0)) {
            return syntax_case.error("syntax-case", stx);
        }
        TemplateScope templateScopeMake = TemplateScope.make();
        return Quote.append$V(new Object[]{Lit123.execute(objArrAllocVars, templateScopeMake), Pair.make(Quote.append$V(new Object[]{Lit124.execute(objArrAllocVars, templateScopeMake), LList.consX(new Object[]{symbolAppend$V(new Object[]{Lit125.execute(objArrAllocVars, templateScopeMake), Lit126, Lit127.execute(objArrAllocVars, templateScopeMake)}), Lit128.execute(objArrAllocVars, templateScopeMake)})}), Lit129.execute(objArrAllocVars, templateScopeMake))});
    }

    static Object lambda26(Object stx) {
        Object[] objArrAllocVars = SyntaxPattern.allocVars(5, null);
        if (!Lit131.match(stx, objArrAllocVars, 0)) {
            return syntax_case.error("syntax-case", stx);
        }
        TemplateScope templateScopeMake = TemplateScope.make();
        return Quote.append$V(new Object[]{Lit132.execute(objArrAllocVars, templateScopeMake), Pair.make(Quote.append$V(new Object[]{Lit133.execute(objArrAllocVars, templateScopeMake), LList.consX(new Object[]{symbolAppend$V(new Object[]{Lit134, Lit135.execute(objArrAllocVars, templateScopeMake), Lit126, Lit136.execute(objArrAllocVars, templateScopeMake)}), Lit137.execute(objArrAllocVars, templateScopeMake)})}), Lit138.execute(objArrAllocVars, templateScopeMake))});
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) throws Throwable {
        switch (moduleMethod.selector) {
            case 16:
                androidLog(obj);
                return Values.empty;
            case 17:
                return lambda22(obj);
            case 23:
                return getInitThunk(obj);
            case 25:
                return lookupComponent(obj);
            case 28:
                return coerceToComponentAndVerify(obj);
            case 32:
                return lambda23(obj);
            case 33:
                return lambda24(obj);
            case 34:
                return lambda25(obj);
            case 35:
                return lambda26(obj);
            case 37:
                try {
                    return lookupInCurrentFormEnvironment((Symbol) obj);
                } catch (ClassCastException e) {
                    throw new WrongType(e, "lookup-in-current-form-environment", 1, obj);
                }
            case 39:
                try {
                    return filterTypeInCurrentFormEnvironment((Symbol) obj);
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "filter-type-in-current-form-environment", 1, obj);
                }
            case 40:
                try {
                    return deleteFromCurrentFormEnvironment((Symbol) obj);
                } catch (ClassCastException e3) {
                    throw new WrongType(e3, "delete-from-current-form-environment", 1, obj);
                }
            case 43:
                try {
                    return lookupGlobalVarInCurrentFormEnvironment((Symbol) obj);
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "lookup-global-var-in-current-form-environment", 1, obj);
                }
            case 47:
                return $StYailBreak$St(obj);
            case 57:
                return sanitizeComponentData(obj);
            case 59:
                try {
                    return javaCollection$To$YailList((Collection) obj);
                } catch (ClassCastException e5) {
                    throw new WrongType(e5, "java-collection->yail-list", 1, obj);
                }
            case 60:
                try {
                    return javaCollection$To$KawaList((Collection) obj);
                } catch (ClassCastException e6) {
                    throw new WrongType(e6, "java-collection->kawa-list", 1, obj);
                }
            case 61:
                try {
                    return javaMap$To$YailDictionary((Map) obj);
                } catch (ClassCastException e7) {
                    throw new WrongType(e7, "java-map->yail-dictionary", 1, obj);
                }
            case 62:
                return sanitizeAtomic(obj);
            case 65:
                return yailNot(obj) ? Boolean.TRUE : Boolean.FALSE;
            case 70:
                return showArglistNoParens(obj);
            case 73:
                return coerceToDoubleArray(obj);
            case 74:
                return coerceToNumberList(obj);
            case 75:
                return isEnumType(obj);
            case 76:
                return isEnum(obj);
            case 78:
                return coerceToText(obj);
            case 79:
                return coerceToInstant(obj);
            case 80:
                return coerceToComponent(obj);
            case 82:
                return type$To$Class(obj);
            case 83:
                return coerceToNumber(obj);
            case 84:
                return coerceToKey(obj);
            case 85:
                return coerceToString(obj);
            case 86:
                return getDisplayRepresentation(obj);
            case 87:
                return lambda8(obj);
            case 88:
                return lambda11(obj);
            case 91:
                return coerceToYailList(obj);
            case 92:
                return coerceToPair(obj);
            case 93:
                return coerceToDictionary(obj);
            case 94:
                return coerceToMatrix(obj);
            case 95:
                return coerceToBoolean(obj);
            case 96:
                return isIsCoercible(obj) ? Boolean.TRUE : Boolean.FALSE;
            case 97:
                return isAllCoercible(obj);
            case 98:
                return boolean$To$String(obj);
            case 99:
                return paddedString$To$Number(obj);
            case 100:
                return $StFormatInexact$St(obj);
            case 101:
                return appinventorNumber$To$String(obj);
            case 104:
                return asNumber(obj);
            case 108:
                return yailFloor(obj);
            case 109:
                return yailCeiling(obj);
            case 110:
                return yailRound(obj);
            case 111:
                return randomSetSeed(obj);
            case 114:
                return lambda16(obj);
            case 116:
                return degrees$To$RadiansInternal(obj);
            case 117:
                return radians$To$DegreesInternal(obj);
            case 118:
                return degrees$To$Radians(obj);
            case 119:
                return radians$To$Degrees(obj);
            case R.styleable.AppCompatTheme_viewInflaterClass /* 120 */:
                return sinDegrees(obj);
            case 121:
                return cosDegrees(obj);
            case 122:
                return tanDegrees(obj);
            case 123:
                return asinDegrees(obj);
            case 124:
                return acosDegrees(obj);
            case 125:
                return atanDegrees(obj);
            case 127:
                return stringToUpperCase(obj);
            case 128:
                return stringToLowerCase(obj);
            case 129:
                try {
                    return unicodeString$To$List((CharSequence) obj);
                } catch (ClassCastException e8) {
                    throw new WrongType(e8, "unicode-string->list", 1, obj);
                }
            case 130:
                return stringReverse(obj);
            case 132:
                return isIsNumber(obj);
            case 133:
                return isIsBase10(obj) ? Boolean.TRUE : Boolean.FALSE;
            case 134:
                return isIsHexadecimal(obj) ? Boolean.TRUE : Boolean.FALSE;
            case 135:
                return isIsBinary(obj) ? Boolean.TRUE : Boolean.FALSE;
            case 136:
                return mathConvertDecHex(obj);
            case 137:
                return mathConvertHexDec(obj);
            case 138:
                return mathConvertBinDec(obj);
            case 139:
                return mathConvertDecBin(obj);
            case 140:
                return patchedNumber$To$StringBinary(obj);
            case 141:
                return alternateNumber$To$StringBinary(obj);
            case 142:
                return internalBinaryConvert(obj);
            case 143:
                return avg(obj);
            case 144:
                return yailMul(obj);
            case 145:
                return gm(obj);
            case 146:
                return mode(obj);
            case 147:
                return maxl(obj);
            case 148:
                return minl(obj);
            case 149:
                return mean(obj);
            case 151:
                return stdDev(obj);
            case 152:
                return sampleStdDev(obj);
            case 153:
                return stdErr(obj);
            case 154:
                return isYailList(obj);
            case 155:
                return isYailListCandidate(obj);
            case 156:
                return yailListContents(obj);
            case 158:
                return insertYailListHeader(obj);
            case 159:
                return kawaList$To$YailList(obj);
            case ComponentConstants.TEXTBOX_PREFERRED_WIDTH /* 160 */:
                return yailList$To$KawaList(obj);
            case 161:
                return isYailListEmpty(obj);
            case 163:
                return yailListCopy(obj);
            case 164:
                return yailListReverse(obj);
            case 165:
                return yailListToCsvTable(obj);
            case 166:
                return yailListToCsvRow(obj);
            case 167:
                return convertToStringsForCsv(obj);
            case 168:
                return yailListFromCsvTable(obj);
            case 169:
                return yailListFromCsvRow(obj);
            case 170:
                return Integer.valueOf(yailListLength(obj));
            case 179:
                return yailListPickRandom(obj);
            case 184:
                return yailTypeof(obj);
            case FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_FULLSCREEN /* 195 */:
                return yailListNecessary(obj);
            case HttpStatusCodes.STATUS_CODE_NO_CONTENT /* 204 */:
                return yailListSort(obj);
            case 209:
                return listNumberOnly(obj);
            case 214:
                return yailListButFirst(obj);
            case 215:
                return butLast(obj);
            case 216:
                return yailListButLast(obj);
            case 222:
                return isPairOk(obj);
            case 232:
                return yailDictionaryGetKeys(obj);
            case YaVersion.YOUNG_ANDROID_VERSION /* 233 */:
                return yailDictionaryGetValues(obj);
            case 235:
                return Integer.valueOf(yailDictionaryLength(obj));
            case 236:
                return yailDictionaryAlistToDict(obj);
            case 237:
                return yailDictionaryDictToAlist(obj);
            case 238:
                return yailDictionaryCopy(obj);
            case 240:
                return isYailDictionary(obj);
            case 247:
                return isYailMatrix(obj);
            case 248:
                return yailMatrixGetDims(obj);
            case 249:
                return yailMatrixInverse(obj);
            case 250:
                return yailMatrixTranspose(obj);
            case Telnet.WILL /* 251 */:
                return yailMatrixRotateLeft(obj);
            case Telnet.WONT /* 252 */:
                return yailMatrixRotateRight(obj);
            case InputDeviceCompat.SOURCE_KEYBOARD /* 257 */:
                return yailMatrixToAlist(obj);
            case 259:
                return createYailProcedure(obj);
            case 260:
                return createYailProcedureWithName(obj);
            case 263:
                return numArgsYailProcedure(obj);
            case 266:
                return makeDisjunct(obj);
            case 267:
                return array$To$List(obj);
            case 276:
                return stringSplitAtSpaces(obj);
            case 278:
                return stringTrim(obj);
            case 280:
                return isStringEmpty(obj);
            case 285:
                return makeExactYailInteger(obj);
            case 286:
                return makeColor(obj);
            case 287:
                return splitColor(obj);
            case 290:
                openAnotherScreen(obj);
                return Values.empty;
            case 293:
                closeScreenWithValue(obj);
                return Values.empty;
            case 295:
                closeScreenWithPlainText(obj);
                return Values.empty;
            case HttpStatusCodes.STATUS_CODE_MULTIPLE_CHOICES /* 300 */:
                return setFormName(obj);
            case 301:
                return removeComponent(obj);
            case ErrorMessages.ERROR_TWITTER_AUTHORIZATION_FAILED /* 305 */:
                return clarify(obj);
            case ErrorMessages.ERROR_TWITTER_SET_STATUS_FAILED /* 306 */:
                return clarify1(obj);
            default:
                return super.apply1(moduleMethod, obj);
        }
    }

    public static Object addToCurrentFormEnvironment(Symbol name, Object object) {
        return $Stthis$Mnform$St != null ? Invoke.invokeStatic.applyN(new Object[]{KawaEnvironment, Lit0, SlotGet.getSlotValue(false, $Stthis$Mnform$St, "form-environment", "form$Mnenvironment", "getFormEnvironment", "isFormEnvironment", Scheme.instance), name, object}) : Invoke.invokeStatic.applyN(new Object[]{KawaEnvironment, Lit0, $Sttest$Mnenvironment$St, name, object});
    }

    public static Object lookupInCurrentFormEnvironment(Symbol name, Object default$Mnvalue) {
        Object env = $Stthis$Mnform$St != null ? SlotGet.getSlotValue(false, $Stthis$Mnform$St, "form-environment", "form$Mnenvironment", "getFormEnvironment", "isFormEnvironment", Scheme.instance) : $Sttest$Mnenvironment$St;
        try {
            if (!((Environment) env).isBound(name)) {
                return default$Mnvalue;
            }
            return Invoke.invokeStatic.apply4(KawaEnvironment, Lit1, env, name);
        } catch (ClassCastException e) {
            throw new WrongType(e, "gnu.mapping.Environment.isBound(gnu.mapping.Symbol)", 1, env);
        }
    }

    public static Object filterTypeInCurrentFormEnvironment(Symbol type) {
        Object env = $Stthis$Mnform$St != null ? SlotGet.getSlotValue(false, $Stthis$Mnform$St, "form-environment", "form$Mnenvironment", "getFormEnvironment", "isFormEnvironment", Scheme.instance) : $Sttest$Mnenvironment$St;
        try {
            return sanitizeComponentData(ComponentUtil.filterComponentsOfType((Environment) env, type == null ? null : type.toString()));
        } catch (ClassCastException e) {
            throw new WrongType(e, "com.google.appinventor.components.runtime.util.ComponentUtil.filterComponentsOfType(gnu.mapping.Environment,java.lang.String)", 1, env);
        }
    }

    public static Object deleteFromCurrentFormEnvironment(Symbol name) {
        if ($Stthis$Mnform$St != null) {
            return Invoke.invokeStatic.apply4(KawaEnvironment, Lit3, SlotGet.getSlotValue(false, $Stthis$Mnform$St, "form-environment", "form$Mnenvironment", "getFormEnvironment", "isFormEnvironment", Scheme.instance), name);
        }
        return Invoke.invokeStatic.apply4(KawaEnvironment, Lit3, $Sttest$Mnenvironment$St, name);
    }

    public static Object renameInCurrentFormEnvironment(Symbol old$Mnname, Symbol new$Mnname) throws Throwable {
        if (Scheme.isEqv.apply2(old$Mnname, new$Mnname) != Boolean.FALSE) {
            return Values.empty;
        }
        Object old$Mnvalue = lookupInCurrentFormEnvironment(old$Mnname);
        if ($Stthis$Mnform$St != null) {
            Invoke.invokeStatic.applyN(new Object[]{KawaEnvironment, Lit0, SlotGet.getSlotValue(false, $Stthis$Mnform$St, "form-environment", "form$Mnenvironment", "getFormEnvironment", "isFormEnvironment", Scheme.instance), new$Mnname, old$Mnvalue});
        } else {
            Invoke.invokeStatic.applyN(new Object[]{KawaEnvironment, Lit0, $Sttest$Mnenvironment$St, new$Mnname, old$Mnvalue});
        }
        return deleteFromCurrentFormEnvironment(old$Mnname);
    }

    public static Object addGlobalVarToCurrentFormEnvironment(Symbol name, Object object) throws Throwable {
        if ($Stthis$Mnform$St != null) {
            Invoke.invokeStatic.applyN(new Object[]{KawaEnvironment, Lit0, SlotGet.getSlotValue(false, $Stthis$Mnform$St, "global-var-environment", "global$Mnvar$Mnenvironment", "getGlobalVarEnvironment", "isGlobalVarEnvironment", Scheme.instance), name, object});
            return null;
        }
        Invoke.invokeStatic.applyN(new Object[]{KawaEnvironment, Lit0, $Sttest$Mnglobal$Mnvar$Mnenvironment$St, name, object});
        return null;
    }

    public static Object lookupGlobalVarInCurrentFormEnvironment(Symbol name, Object default$Mnvalue) {
        Object env = $Stthis$Mnform$St != null ? SlotGet.getSlotValue(false, $Stthis$Mnform$St, "global-var-environment", "global$Mnvar$Mnenvironment", "getGlobalVarEnvironment", "isGlobalVarEnvironment", Scheme.instance) : $Sttest$Mnglobal$Mnvar$Mnenvironment$St;
        try {
            if (!((Environment) env).isBound(name)) {
                return default$Mnvalue;
            }
            return Invoke.invokeStatic.apply4(KawaEnvironment, Lit1, env, name);
        } catch (ClassCastException e) {
            throw new WrongType(e, "gnu.mapping.Environment.isBound(gnu.mapping.Symbol)", 1, env);
        }
    }

    public static void resetCurrentFormEnvironment() throws Throwable {
        if ($Stthis$Mnform$St != null) {
            Object form$Mnname = SlotGet.getSlotValue(false, $Stthis$Mnform$St, "form-name-symbol", "form$Mnname$Mnsymbol", "getFormNameSymbol", "isFormNameSymbol", Scheme.instance);
            try {
                SlotSet.set$Mnfield$Ex.apply3($Stthis$Mnform$St, "form-environment", Environment.make(((Symbol) form$Mnname).toString()));
                try {
                    addToCurrentFormEnvironment((Symbol) form$Mnname, $Stthis$Mnform$St);
                    SlotSet slotSet = SlotSet.set$Mnfield$Ex;
                    Object obj = $Stthis$Mnform$St;
                    try {
                        FString fStringStringAppend = strings.stringAppend(((Symbol) form$Mnname).toString(), "-global-vars");
                        slotSet.apply3(obj, "global-var-environment", Environment.make(fStringStringAppend == null ? null : fStringStringAppend.toString()));
                        return;
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "symbol->string", 1, form$Mnname);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "add-to-current-form-environment", 0, form$Mnname);
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "symbol->string", 1, form$Mnname);
            }
        }
        $Sttest$Mnenvironment$St = Environment.make("test-env");
        Invoke.invoke.apply3(Environment.getCurrent(), "addParent", $Sttest$Mnenvironment$St);
        $Sttest$Mnglobal$Mnvar$Mnenvironment$St = Environment.make("test-global-var-env");
    }

    static Object lambda27(Object arg$Mnname, Object bodyform, Object list$Mnof$Mnargs) {
        return Quote.append$V(new Object[]{Lit152, Pair.make(Quote.append$V(new Object[]{Lit153, Pair.make(Lit154, Pair.make(Quote.append$V(new Object[]{Lit155, Pair.make(Pair.make(Quote.append$V(new Object[]{Lit156, Pair.make(Quote.append$V(new Object[]{Lit157, Pair.make(LList.consX(new Object[]{arg$Mnname, LList.Empty}), LList.consX(new Object[]{bodyform, LList.Empty}))}), LList.Empty)}), LList.Empty), Pair.make(Quote.append$V(new Object[]{Lit158, LList.consX(new Object[]{list$Mnof$Mnargs, LList.Empty})}), LList.Empty))}), LList.Empty))}), LList.Empty)});
    }

    public static Object $StYailBreak$St(Object ignore) {
        return signalRuntimeError("Break should be run only from within a loop", "Bad use of Break");
    }

    static Object lambda28(Object lambda$Mnarg$Mnname, Object body$Mnform, Object start, Object end, Object step) {
        return Quote.append$V(new Object[]{Lit161, Pair.make(Quote.append$V(new Object[]{Lit162, Pair.make(Lit163, Pair.make(Quote.append$V(new Object[]{Lit164, Pair.make(Quote.append$V(new Object[]{Lit165, Pair.make(LList.consX(new Object[]{lambda$Mnarg$Mnname, LList.Empty}), LList.consX(new Object[]{body$Mnform, LList.Empty}))}), LList.consX(new Object[]{start, LList.consX(new Object[]{end, LList.consX(new Object[]{step, LList.Empty})})}))}), LList.Empty))}), LList.Empty)});
    }

    static Object lambda29$V(Object condition, Object body, Object[] argsArray) {
        LList rest = LList.makeList(argsArray, 0);
        return Quote.append$V(new Object[]{Lit167, Pair.make(Pair.make(Quote.append$V(new Object[]{Lit168, Pair.make(Quote.append$V(new Object[]{Lit169, Pair.make(Lit170, Pair.make(Quote.append$V(new Object[]{Lit171, Pair.make(Quote.append$V(new Object[]{Lit172, LList.consX(new Object[]{condition, Pair.make(Quote.append$V(new Object[]{Lit173, Pair.make(Quote.append$V(new Object[]{Lit174, LList.consX(new Object[]{body, rest})}), Lit175)}), Lit176)})}), LList.Empty)}), LList.Empty))}), LList.Empty)}), LList.Empty), Lit177)});
    }

    public static Object callComponentMethod(Object component$Mnname, Object method$Mnname, Object arglist, Object typelist) throws Throwable {
        Object result;
        Object coerced$Mnargs = coerceArgs(method$Mnname, arglist, typelist);
        try {
            Object component = lookupInCurrentFormEnvironment((Symbol) component$Mnname);
            if (isAllCoercible(coerced$Mnargs) != Boolean.FALSE) {
                try {
                    result = Scheme.apply.apply2(Invoke.invoke, LList.consX(new Object[]{component, LList.consX(new Object[]{method$Mnname, Quote.append$V(new Object[]{coerced$Mnargs, LList.Empty})})}));
                } catch (PermissionException exception) {
                    result = Invoke.invoke.applyN(new Object[]{Form.getActiveForm(), "dispatchPermissionDeniedEvent", component, method$Mnname, exception});
                }
            } else {
                result = generateRuntimeTypeError(method$Mnname, arglist);
            }
            return sanitizeReturnValue(component, method$Mnname, result);
        } catch (ClassCastException e) {
            throw new WrongType(e, "lookup-in-current-form-environment", 0, component$Mnname);
        }
    }

    public static Object callComponentMethodWithContinuation(Object component$Mnname, Object methodName, Object arglist, Object typelist, Object k) {
        Apply apply;
        Invoke invoke;
        Object[] objArr;
        Object[] objArr2;
        frame0 frame0Var = new frame0();
        frame0Var.method$Mnname = methodName;
        frame0Var.k = k;
        Object coerced$Mnargs = coerceArgs(frame0Var.method$Mnname, arglist, typelist);
        try {
            frame0Var.component = lookupInCurrentFormEnvironment((Symbol) component$Mnname);
            Continuation continuation = ContinuationUtil.wrap(frame0Var.lambda$Fn2, Lit4);
            if (isAllCoercible(coerced$Mnargs) != Boolean.FALSE) {
                try {
                    apply = Scheme.apply;
                    invoke = Invoke.invoke;
                    objArr = new Object[2];
                    objArr[0] = frame0Var.component;
                    objArr2 = new Object[2];
                } catch (PermissionException e) {
                    exception = e;
                }
                try {
                    objArr2[0] = frame0Var.method$Mnname;
                    objArr2[1] = Quote.append$V(new Object[]{coerced$Mnargs, LList.consX(new Object[]{continuation, LList.Empty})});
                    objArr[1] = LList.consX(objArr2);
                    return apply.apply2(invoke, LList.consX(objArr));
                } catch (PermissionException e2) {
                    exception = e2;
                    return Invoke.invoke.applyN(new Object[]{Form.getActiveForm(), "dispatchPermissionDeniedEvent", frame0Var.component, frame0Var.method$Mnname, exception});
                }
            }
            return generateRuntimeTypeError(frame0Var.method$Mnname, arglist);
        } catch (ClassCastException e3) {
            throw new WrongType(e3, "lookup-in-current-form-environment", 0, component$Mnname);
        }
    }

    /* JADX INFO: compiled from: runtime3808032275111475787.scm */
    public class frame0 extends ModuleBody {
        Object component;
        Object k;
        final ModuleMethod lambda$Fn2;
        Object method$Mnname;

        public frame0() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 2, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/tmp/runtime3808032275111475787.scm:1158");
            this.lambda$Fn2 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 2 ? lambda2(obj) : super.apply1(moduleMethod, obj);
        }

        Object lambda2(Object v) {
            return Scheme.applyToArgs.apply2(this.k, runtime.sanitizeReturnValue(this.component, this.method$Mnname, v));
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 2) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public static Object callComponentMethodWithBlockingContinuation(Object component$Mnname, Object method$Mnname, Object arglist, Object typelist) {
        frame1 frame1Var = new frame1();
        frame1Var.result = Boolean.FALSE;
        callComponentMethodWithContinuation(component$Mnname, method$Mnname, arglist, typelist, frame1Var.lambda$Fn3);
        return frame1Var.result;
    }

    /* JADX INFO: compiled from: runtime3808032275111475787.scm */
    public class frame1 extends ModuleBody {
        final ModuleMethod lambda$Fn3;
        Object result;

        public frame1() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 3, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/tmp/runtime3808032275111475787.scm:1179");
            this.lambda$Fn3 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            if (moduleMethod.selector != 3) {
                return super.apply1(moduleMethod, obj);
            }
            lambda3(obj);
            return Values.empty;
        }

        void lambda3(Object v) {
            this.result = v;
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 3) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public static Object callComponentTypeMethod(Object possible$Mncomponent, Object component$Mntype, Object method$Mnname, Object arglist, Object typelist) throws Throwable {
        Object objGenerateRuntimeTypeError;
        Object coerced$Mnargs = coerceArgs(method$Mnname, arglist, lists.cdr.apply1(typelist));
        Object component$Mnvalue = coerceToComponentOfType(possible$Mncomponent, component$Mntype);
        if (!(component$Mnvalue instanceof Component)) {
            Object result = generateRuntimeTypeError(method$Mnname, LList.list1(getDisplayRepresentation(possible$Mncomponent)));
            return result;
        }
        if (isAllCoercible(coerced$Mnargs) != Boolean.FALSE) {
            objGenerateRuntimeTypeError = Scheme.apply.apply2(Invoke.invoke, LList.consX(new Object[]{component$Mnvalue, LList.consX(new Object[]{method$Mnname, Quote.append$V(new Object[]{coerced$Mnargs, LList.Empty})})}));
        } else {
            objGenerateRuntimeTypeError = generateRuntimeTypeError(method$Mnname, arglist);
        }
        Object result2 = objGenerateRuntimeTypeError;
        return sanitizeReturnValue(component$Mnvalue, method$Mnname, result2);
    }

    public static Object callComponentTypeMethodWithContinuation(Object component$Mntype, Object methodName, Object arglist, Object typelist, Object k) {
        frame2 frame2Var = new frame2();
        frame2Var.method$Mnname = methodName;
        frame2Var.k = k;
        Object coerced$Mnargs = coerceArgs(frame2Var.method$Mnname, arglist, lists.cdr.apply1(typelist));
        try {
            frame2Var.component$Mnvalue = coerceToComponentOfType(loc$possible$Mncomponent.get(), component$Mntype);
            Continuation continuation = ContinuationUtil.wrap(frame2Var.lambda$Fn4, Lit4);
            if (isAllCoercible(coerced$Mnargs) == Boolean.FALSE) {
                return generateRuntimeTypeError(frame2Var.method$Mnname, arglist);
            }
            try {
                Apply apply = Scheme.apply;
                Invoke invoke = Invoke.invoke;
                Object[] objArr = new Object[2];
                try {
                    objArr[0] = frame2Var.component$Mnvalue;
                    objArr[1] = LList.consX(new Object[]{frame2Var.method$Mnname, Quote.append$V(new Object[]{coerced$Mnargs, LList.consX(new Object[]{continuation, LList.Empty})})});
                    return apply.apply2(invoke, LList.consX(objArr));
                } catch (PermissionException e) {
                    e = e;
                    PermissionException exception = e;
                    try {
                        return Invoke.invoke.applyN(new Object[]{Form.getActiveForm(), "dispatchPermissionDeniedEvent", loc$component.get(), frame2Var.method$Mnname, exception});
                    } catch (UnboundLocationException e2) {
                        e2.setLine("/tmp/runtime3808032275111475787.scm", 1227, 72);
                        throw e2;
                    }
                }
            } catch (PermissionException e3) {
                e = e3;
            }
        } catch (UnboundLocationException e4) {
            e4.setLine("/tmp/runtime3808032275111475787.scm", 1219, 56);
            throw e4;
        }
    }

    /* JADX INFO: compiled from: runtime3808032275111475787.scm */
    public class frame2 extends ModuleBody {
        Object component$Mnvalue;
        Object k;
        final ModuleMethod lambda$Fn4;
        Object method$Mnname;

        public frame2() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 4, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/tmp/runtime3808032275111475787.scm:1221");
            this.lambda$Fn4 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 4 ? lambda4(obj) : super.apply1(moduleMethod, obj);
        }

        Object lambda4(Object v) {
            return Scheme.applyToArgs.apply2(this.k, runtime.sanitizeReturnValue(this.component$Mnvalue, this.method$Mnname, v));
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 4) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public static Object callComponentTypeMethodWithBlockingContinuation(Object component$Mntype, Object method$Mnname, Object arglist, Object typelist) {
        frame3 frame3Var = new frame3();
        frame3Var.result = Boolean.FALSE;
        callComponentTypeMethodWithContinuation(component$Mntype, method$Mnname, arglist, typelist, frame3Var.lambda$Fn5);
        return frame3Var.result;
    }

    /* JADX INFO: compiled from: runtime3808032275111475787.scm */
    public class frame3 extends ModuleBody {
        final ModuleMethod lambda$Fn5;
        Object result;

        public frame3() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 5, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/tmp/runtime3808032275111475787.scm:1238");
            this.lambda$Fn5 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            if (moduleMethod.selector != 5) {
                return super.apply1(moduleMethod, obj);
            }
            lambda5(obj);
            return Values.empty;
        }

        void lambda5(Object v) {
            this.result = v;
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 5) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public static Object callYailPrimitive(Object prim, Object arglist, Object typelist, Object codeblocks$Mnname) {
        Object coerced$Mnargs = coerceArgs(codeblocks$Mnname, arglist, typelist);
        if (isAllCoercible(coerced$Mnargs) != Boolean.FALSE) {
            return Scheme.apply.apply2(prim, coerced$Mnargs);
        }
        return generateRuntimeTypeError(codeblocks$Mnname, arglist);
    }

    public static Object sanitizeComponentData(Object data) {
        if (!strings.isString(data) && isYailDictionary(data) == Boolean.FALSE) {
            if (data instanceof Map) {
                try {
                    return javaMap$To$YailDictionary((Map) data);
                } catch (ClassCastException e) {
                    throw new WrongType(e, "java-map->yail-dictionary", 0, data);
                }
            }
            if (isYailList(data) == Boolean.FALSE) {
                if (lists.isList(data)) {
                    return kawaList$To$YailList(data);
                }
                if (data instanceof Collection) {
                    try {
                        return javaCollection$To$YailList((Collection) data);
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "java-collection->yail-list", 0, data);
                    }
                }
                return sanitizeAtomic(data);
            }
        }
        return data;
    }

    public static Object sanitizeReturnValue(Object component, Object func$Mnname, Object value) {
        if (isEnum(value) != Boolean.FALSE) {
            return value;
        }
        Object value2 = OptionHelper.optionListFromValue(component, func$Mnname == null ? null : func$Mnname.toString(), value);
        return isEnum(value2) != Boolean.FALSE ? value2 : sanitizeComponentData(value2);
    }

    public static Object javaCollection$To$YailList(Collection collection) {
        return kawaList$To$YailList(javaCollection$To$KawaList(collection));
    }

    public static Object javaCollection$To$KawaList(Collection collection) {
        Iterator iterator = collection.iterator();
        Object result = LList.Empty;
        while (iterator.hasNext()) {
            result = lists.cons(sanitizeComponentData(iterator.next()), result);
        }
        try {
            return LList.reverseInPlace((LList) result);
        } catch (ClassCastException e) {
            throw new WrongType(e, "reverse!", 1, result);
        }
    }

    public static Object javaMap$To$YailDictionary(Map jMap) {
        YailDictionary dict = new YailDictionary();
        for (Object key : jMap.keySet()) {
            dict.put(key, sanitizeComponentData(jMap.get(key)));
        }
        return dict;
    }

    public static Object sanitizeAtomic(Object arg) {
        if (arg == null || Values.empty == arg) {
            return null;
        }
        if (!numbers.isNumber(arg)) {
            return arg;
        }
        Numeric numericarg = Arithmetic.asNumeric(arg);
        return numericarg;
    }

    public static Object signalRuntimeError(Object message, Object error$Mntype) {
        throw new YailRuntimeError(message == null ? null : message.toString(), error$Mntype != null ? error$Mntype.toString() : null);
    }

    public static Object signalRuntimeFormError(Object function$Mnname, Object error$Mnnumber, Object message) {
        return Invoke.invoke.applyN(new Object[]{$Stthis$Mnform$St, "runtimeFormErrorOccurredEvent", function$Mnname, error$Mnnumber, message});
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean yailNot(Object foo) {
        return ((foo != Boolean.FALSE ? 1 : 0) + 1) & 1;
    }

    public static Object callWithCoercedArgs(Object func, Object arglist, Object typelist, Object codeblocks$Mnname) {
        Object coerced$Mnargs = coerceArgs(codeblocks$Mnname, arglist, typelist);
        if (isAllCoercible(coerced$Mnargs) != Boolean.FALSE) {
            return Scheme.apply.apply2(func, coerced$Mnargs);
        }
        return generateRuntimeTypeError(codeblocks$Mnname, arglist);
    }

    public static Object $PcSetAndCoerceProperty$Ex(Object comp, Object prop$Mnname, Object property$Mnvalue, Object property$Mntype) {
        androidLog(Format.formatToString(0, "coercing for setting property ~A -- value ~A to type ~A", prop$Mnname, property$Mnvalue, property$Mntype));
        Object coerced$Mnarg = coerceArg(property$Mnvalue, property$Mntype);
        androidLog(Format.formatToString(0, "coerced property value was: ~A ", coerced$Mnarg));
        if (isAllCoercible(LList.list1(coerced$Mnarg)) != Boolean.FALSE) {
            try {
                return Invoke.invoke.apply3(comp, prop$Mnname, coerced$Mnarg);
            } catch (PermissionException exception) {
                return Invoke.invoke.applyN(new Object[]{Form.getActiveForm(), "dispatchPermissionDeniedEvent", comp, prop$Mnname, exception});
            }
        }
        return generateRuntimeTypeError(prop$Mnname, LList.list1(property$Mnvalue));
    }

    public static Object $PcSetSubformLayoutProperty$Ex(Object layout, Object prop$Mnname, Object value) {
        return Invoke.invoke.apply3(layout, prop$Mnname, value);
    }

    public static Object generateRuntimeTypeError(Object proc$Mnname, Object arglist) throws Throwable {
        androidLog(Format.formatToString(0, "arglist is: ~A ", arglist));
        Object string$Mnname = coerceToString(proc$Mnname);
        try {
            return signalRuntimeError(strings.stringAppend("The operation ", string$Mnname, Format.formatToString(0, " cannot accept the argument~P: ", Integer.valueOf(lists.length((LList) arglist))), showArglistNoParens(arglist)), strings.stringAppend("Bad arguments to ", string$Mnname));
        } catch (ClassCastException e) {
            throw new WrongType(e, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, arglist);
        }
    }

    public static Object showArglistNoParens(Object args) throws Throwable {
        Object result = LList.Empty;
        Object arg0 = args;
        while (arg0 != LList.Empty) {
            try {
                Pair arg02 = (Pair) arg0;
                Object arg03 = arg02.getCdr();
                result = Pair.make(getDisplayRepresentation(arg02.getCar()), result);
                arg0 = arg03;
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, arg0);
            }
        }
        LList elements = LList.reverseInPlace(result);
        Object result2 = LList.Empty;
        Object arg04 = elements;
        while (arg04 != LList.Empty) {
            try {
                Pair arg05 = (Pair) arg04;
                arg04 = arg05.getCdr();
                Object s = arg05.getCar();
                result2 = Pair.make(strings.stringAppend("[", s, "]"), result2);
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "arg0", -2, arg04);
            }
        }
        Object rest$Mnelements = LList.reverseInPlace(result2);
        Object result3 = "";
        while (!lists.isNull(rest$Mnelements)) {
            FString fStringStringAppend = strings.stringAppend(result3, ", ", lists.car.apply1(rest$Mnelements));
            rest$Mnelements = lists.cdr.apply1(rest$Mnelements);
            result3 = fStringStringAppend;
        }
        return result3;
    }

    public static Object coerceArgs(Object procedure$Mnname, Object arglist, Object typelist) {
        if (lists.isNull(typelist)) {
            return lists.isNull(arglist) ? arglist : signalRuntimeError(strings.stringAppend("The procedure ", procedure$Mnname, " expects no arguments, but it was called with the arguments: ", showArglistNoParens(arglist)), strings.stringAppend("Wrong number of arguments for", procedure$Mnname));
        }
        try {
            try {
                if (lists.length((LList) arglist) != lists.length((LList) typelist)) {
                    return signalRuntimeError(strings.stringAppend("The arguments ", showArglistNoParens(arglist), " are the wrong number of arguments for ", getDisplayRepresentation(procedure$Mnname)), strings.stringAppend("Wrong number of arguments for", getDisplayRepresentation(procedure$Mnname)));
                }
                Object result = LList.Empty;
                Object arg0 = arglist;
                Object arg1 = typelist;
                while (arg0 != LList.Empty && arg1 != LList.Empty) {
                    try {
                        Pair arg02 = (Pair) arg0;
                        try {
                            Pair arg12 = (Pair) arg1;
                            arg0 = arg02.getCdr();
                            arg1 = arg12.getCdr();
                            result = Pair.make(coerceArg(arg02.getCar(), arg12.getCar()), result);
                        } catch (ClassCastException e) {
                            throw new WrongType(e, "arg1", -2, arg1);
                        }
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "arg0", -2, arg0);
                    }
                }
                return LList.reverseInPlace(result);
            } catch (ClassCastException e3) {
                throw new WrongType(e3, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, typelist);
            }
        } catch (ClassCastException e4) {
            throw new WrongType(e4, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, arglist);
        }
    }

    public static Object coerceArg(Object arg, Object type) {
        Object arg2 = sanitizeAtomic(arg);
        if (IsEqual.apply(type, Lit5)) {
            return coerceToNumber(arg2);
        }
        if (IsEqual.apply(type, Lit6)) {
            return coerceToText(arg2);
        }
        if (IsEqual.apply(type, Lit7)) {
            return coerceToBoolean(arg2);
        }
        if (IsEqual.apply(type, Lit8)) {
            return coerceToYailList(arg2);
        }
        if (IsEqual.apply(type, Lit9)) {
            return coerceToNumberList(arg2);
        }
        if (IsEqual.apply(type, Lit10)) {
            return coerceToInstant(arg2);
        }
        if (IsEqual.apply(type, Lit11)) {
            return coerceToComponent(arg2);
        }
        if (IsEqual.apply(type, Lit12)) {
            return coerceToPair(arg2);
        }
        if (IsEqual.apply(type, Lit13)) {
            return coerceToKey(arg2);
        }
        if (IsEqual.apply(type, Lit14)) {
            return coerceToDictionary(arg2);
        }
        if (IsEqual.apply(type, Lit15)) {
            return coerceToMatrix(arg2);
        }
        if (IsEqual.apply(type, Lit16)) {
            return coerceToDoubleArray(arg2);
        }
        if (IsEqual.apply(type, Lit17)) {
            return arg2;
        }
        if (isEnumType(type) != Boolean.FALSE) {
            return coerceToEnum(arg2, type);
        }
        return coerceToComponentOfType(arg2, type);
    }

    public static Object coerceToDoubleArray(Object arg) {
        if (arg instanceof double[]) {
            return arg;
        }
        if (isYailList(arg) != Boolean.FALSE) {
            Object arg0 = yailListContents(arg);
            Object result = LList.Empty;
            while (arg0 != LList.Empty) {
                try {
                    Pair arg02 = (Pair) arg0;
                    arg0 = arg02.getCdr();
                    result = Pair.make(coerceToNumber(arg02.getCar()), result);
                } catch (ClassCastException e) {
                    throw new WrongType(e, "arg0", -2, arg0);
                }
            }
            LList coerced = LList.reverseInPlace(result);
            if (isAllCoercible(coerced) == Boolean.FALSE) {
                return Lit2;
            }
            try {
                return Scheme.applyToArgs.apply3(GetNamedPart.getNamedPart.apply2(loc$Arrays.get(), Lit18), Lit19, coerced);
            } catch (UnboundLocationException e2) {
                e2.setLine("/tmp/runtime3808032275111475787.scm", 1531, 13);
                throw e2;
            }
        }
        if (!lists.isList(arg)) {
            return Lit2;
        }
        Object result2 = LList.Empty;
        Object arg03 = arg;
        while (arg03 != LList.Empty) {
            try {
                Pair arg04 = (Pair) arg03;
                arg03 = arg04.getCdr();
                result2 = Pair.make(coerceToNumber(arg04.getCar()), result2);
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "arg0", -2, arg03);
            }
        }
        LList coerced2 = LList.reverseInPlace(result2);
        if (isAllCoercible(coerced2) == Boolean.FALSE) {
            return Lit2;
        }
        try {
            return Scheme.applyToArgs.apply3(GetNamedPart.getNamedPart.apply2(loc$Arrays.get(), Lit18), Lit19, coerced2);
        } catch (UnboundLocationException e4) {
            e4.setLine("/tmp/runtime3808032275111475787.scm", 1537, 13);
            throw e4;
        }
    }

    public static Object coerceToNumberList(Object l) {
        if (isYailList(l) == Boolean.FALSE) {
            return Lit2;
        }
        Object arg0 = yailListContents(l);
        Object result = LList.Empty;
        while (arg0 != LList.Empty) {
            try {
                Pair arg02 = (Pair) arg0;
                arg0 = arg02.getCdr();
                result = Pair.make(coerceToNumber(arg02.getCar()), result);
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, arg0);
            }
        }
        LList coerced = LList.reverseInPlace(result);
        if (isAllCoercible(coerced) == Boolean.FALSE) {
            try {
                return loc$non$Mncoercible$Mnvalue.get();
            } catch (UnboundLocationException e2) {
                e2.setLine("/tmp/runtime3808032275111475787.scm", 1546, 9);
                throw e2;
            }
        }
        return Scheme.apply.apply2(make$Mnyail$Mnlist, coerced);
    }

    public static Object isEnumType(Object type) {
        try {
            return stringContains(((Symbol) type).toString(), "Enum");
        } catch (ClassCastException e) {
            throw new WrongType(e, "symbol->string", 1, type);
        }
    }

    public static Object isEnum(Object arg) {
        return arg instanceof OptionList ? Boolean.TRUE : Boolean.FALSE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x004a, code lost:
    
        if (r0 != java.lang.Boolean.FALSE) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0051, code lost:
    
        r1 = com.google.appinventor.components.runtime.util.TypeUtil.castToEnum(r7, (gnu.mapping.Symbol) r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0056, code lost:
    
        if (r1 != null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005b, code lost:
    
        return com.google.youngandroid.runtime.Lit2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005c, code lost:
    
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0065, code lost:
    
        throw new gnu.mapping.WrongType(r7, "com.google.appinventor.components.runtime.util.TypeUtil.castToEnum(java.lang.Object,gnu.mapping.Symbol)", 2, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:?, code lost:
    
        return r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:?, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0033, code lost:
    
        if (r1.apply2(r2, gnu.lists.LList.list2(r7, kawa.lib.misc.string$To$Symbol((java.lang.CharSequence) r4))) != java.lang.Boolean.FALSE) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object coerceToEnum(java.lang.Object r7, java.lang.Object r8) {
        /*
            java.lang.String r0 = "coerce-to-enum"
            androidLog(r0)
            java.lang.Object r0 = isEnum(r7)
            r1 = 0
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            if (r0 == r1) goto L48
            gnu.kawa.functions.Apply r1 = kawa.standard.Scheme.apply
            gnu.kawa.reflect.InstanceOf r2 = kawa.standard.Scheme.instanceOf
            r3 = 1
            r4 = r8
            gnu.mapping.Symbol r4 = (gnu.mapping.Symbol) r4     // Catch: java.lang.ClassCastException -> L3f
            java.lang.String r4 = kawa.lib.misc.symbol$To$String(r4)
            java.lang.String r5 = "Enum"
            java.lang.String r6 = ""
            java.lang.Object r4 = stringReplaceAll(r4, r5, r6)
            java.lang.CharSequence r4 = (java.lang.CharSequence) r4     // Catch: java.lang.ClassCastException -> L36
            gnu.mapping.SimpleSymbol r3 = kawa.lib.misc.string$To$Symbol(r4)
            gnu.lists.Pair r3 = gnu.lists.LList.list2(r7, r3)
            java.lang.Object r1 = r1.apply2(r2, r3)
            java.lang.Boolean r2 = java.lang.Boolean.FALSE
            if (r1 == r2) goto L4e
            goto L4c
        L36:
            r7 = move-exception
            gnu.mapping.WrongType r8 = new gnu.mapping.WrongType
            java.lang.String r0 = "string->symbol"
            r8.<init>(r7, r0, r3, r4)
            throw r8
        L3f:
            r7 = move-exception
            gnu.mapping.WrongType r0 = new gnu.mapping.WrongType
            java.lang.String r1 = "symbol->string"
            r0.<init>(r7, r1, r3, r8)
            throw r0
        L48:
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            if (r0 == r1) goto L4e
        L4c:
            r0 = r7
            goto L5b
        L4e:
            r1 = r8
            gnu.mapping.Symbol r1 = (gnu.mapping.Symbol) r1     // Catch: java.lang.ClassCastException -> L5c
            com.google.appinventor.components.common.OptionList r1 = com.google.appinventor.components.runtime.util.TypeUtil.castToEnum(r7, r1)
            r0 = r1
            if (r0 != 0) goto L5b
            gnu.lists.PairWithPosition r1 = com.google.youngandroid.runtime.Lit2
            r0 = r1
        L5b:
            return r0
        L5c:
            r7 = move-exception
            gnu.mapping.WrongType r0 = new gnu.mapping.WrongType
            java.lang.String r1 = "com.google.appinventor.components.runtime.util.TypeUtil.castToEnum(java.lang.Object,gnu.mapping.Symbol)"
            r2 = 2
            r0.<init>(r7, r1, r2, r8)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.youngandroid.runtime.coerceToEnum(java.lang.Object, java.lang.Object):java.lang.Object");
    }

    public static Object coerceToText(Object arg) {
        return arg == null ? Lit2 : coerceToString(arg);
    }

    public static Object coerceToInstant(Object arg) throws Throwable {
        if (arg instanceof Calendar) {
            return arg;
        }
        Object as$Mnmillis = coerceToNumber(arg);
        if (!numbers.isNumber(as$Mnmillis)) {
            return Lit2;
        }
        try {
            return Clock.MakeInstantFromMillis(((Number) as$Mnmillis).longValue());
        } catch (ClassCastException e) {
            throw new WrongType(e, "com.google.appinventor.components.runtime.Clock.MakeInstantFromMillis(long)", 1, as$Mnmillis);
        }
    }

    public static Object coerceToComponent(Object arg) {
        if (!strings.isString(arg)) {
            if (arg instanceof Component) {
                return arg;
            }
            return misc.isSymbol(arg) ? lookupComponent(arg) : Lit2;
        }
        if (strings.isString$Eq(arg, "")) {
            return null;
        }
        try {
            return lookupComponent(misc.string$To$Symbol((CharSequence) arg));
        } catch (ClassCastException e) {
            throw new WrongType(e, "string->symbol", 1, arg);
        }
    }

    public static Object coerceToComponentOfType(Object arg, Object type) {
        Object component = coerceToComponent(arg);
        return (component == Lit2 || Scheme.apply.apply2(Scheme.instanceOf, LList.list2(arg, type$To$Class(type))) == Boolean.FALSE) ? Lit2 : component;
    }

    public static Object type$To$Class(Object type$Mnname) {
        return type$Mnname == Lit20 ? Lit21 : type$Mnname;
    }

    public static Object coerceToNumber(Object arg) throws Throwable {
        if (numbers.isNumber(arg)) {
            return arg;
        }
        if (strings.isString(arg)) {
            Object x = paddedString$To$Number(arg);
            return x != Boolean.FALSE ? x : Lit2;
        }
        if (isEnum(arg) == Boolean.FALSE) {
            return Lit2;
        }
        Object val = Scheme.applyToArgs.apply1(GetNamedPart.getNamedPart.apply2(arg, Lit22));
        return numbers.isNumber(val) ? val : Lit2;
    }

    public static Object coerceToKey(Object arg) {
        if (numbers.isNumber(arg)) {
            return coerceToNumber(arg);
        }
        if (strings.isString(arg)) {
            return coerceToString(arg);
        }
        return (isEnum(arg) == Boolean.FALSE && !(arg instanceof Component)) ? Lit2 : arg;
    }

    public static Object coerceToString(Object arg) throws Throwable {
        frame4 frame4Var = new frame4();
        frame4Var.arg = arg;
        if (frame4Var.arg == null) {
            return "*nothing*";
        }
        if (strings.isString(frame4Var.arg)) {
            return frame4Var.arg;
        }
        if (numbers.isNumber(frame4Var.arg)) {
            return appinventorNumber$To$String(frame4Var.arg);
        }
        if (misc.isBoolean(frame4Var.arg)) {
            return boolean$To$String(frame4Var.arg);
        }
        if (isYailList(frame4Var.arg) != Boolean.FALSE) {
            return coerceToString(yailList$To$KawaList(frame4Var.arg));
        }
        if (lists.isList(frame4Var.arg)) {
            if (Form.getActiveForm().ShowListsAsJson()) {
                Object arg0 = frame4Var.arg;
                Object result = LList.Empty;
                while (arg0 != LList.Empty) {
                    try {
                        Pair arg02 = (Pair) arg0;
                        arg0 = arg02.getCdr();
                        result = Pair.make(((Procedure) get$Mnjson$Mndisplay$Mnrepresentation).apply1(arg02.getCar()), result);
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "arg0", -2, arg0);
                    }
                }
                LList pieces = LList.reverseInPlace(result);
                return strings.stringAppend("[", joinStrings(pieces, ", "), "]");
            }
            Object arg03 = frame4Var.arg;
            Object result2 = LList.Empty;
            while (arg03 != LList.Empty) {
                try {
                    Pair arg04 = (Pair) arg03;
                    arg03 = arg04.getCdr();
                    result2 = Pair.make(coerceToString(arg04.getCar()), result2);
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "arg0", -2, arg03);
                }
            }
            frame4Var.pieces = LList.reverseInPlace(result2);
            return ports.callWithOutputString(frame4Var.lambda$Fn6);
        }
        if (isEnum(frame4Var.arg) != Boolean.FALSE) {
            Object val = Scheme.applyToArgs.apply1(GetNamedPart.getNamedPart.apply2(frame4Var.arg, Lit22));
            return strings.isString(val) ? val : Lit2;
        }
        return ports.callWithOutputString(frame4Var.lambda$Fn7);
    }

    /* JADX INFO: compiled from: runtime3808032275111475787.scm */
    public class frame4 extends ModuleBody {
        Object arg;
        final ModuleMethod lambda$Fn6;
        final ModuleMethod lambda$Fn7;
        LList pieces;

        public frame4() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 6, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/tmp/runtime3808032275111475787.scm:1656");
            this.lambda$Fn6 = moduleMethod;
            ModuleMethod moduleMethod2 = new ModuleMethod(this, 7, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod2.setProperty("source-location", "/tmp/runtime3808032275111475787.scm:1662");
            this.lambda$Fn7 = moduleMethod2;
        }

        void lambda6(Object port) {
            ports.display(this.pieces, port);
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            switch (moduleMethod.selector) {
                case 6:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 7:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                default:
                    return super.match1(moduleMethod, obj, callContext);
            }
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            switch (moduleMethod.selector) {
                case 6:
                    lambda6(obj);
                    return Values.empty;
                case 7:
                    lambda7(obj);
                    return Values.empty;
                default:
                    return super.apply1(moduleMethod, obj);
            }
        }

        void lambda7(Object port) {
            ports.display(this.arg, port);
        }
    }

    public static Object getDisplayRepresentation(Object arg) {
        if (Form.getActiveForm().ShowListsAsJson()) {
            return ((Procedure) get$Mnjson$Mndisplay$Mnrepresentation).apply1(arg);
        }
        return ((Procedure) get$Mnoriginal$Mndisplay$Mnrepresentation).apply1(arg);
    }

    static Object lambda8(Object arg) {
        frame5 frame5Var = new frame5();
        frame5Var.arg = arg;
        if (Scheme.numEqu.apply2(frame5Var.arg, Lit23) != Boolean.FALSE) {
            return "+infinity";
        }
        if (Scheme.numEqu.apply2(frame5Var.arg, Lit24) != Boolean.FALSE) {
            return "-infinity";
        }
        if (frame5Var.arg == null) {
            return "*nothing*";
        }
        if (misc.isSymbol(frame5Var.arg)) {
            Object obj = frame5Var.arg;
            try {
                return ((Symbol) obj).toString();
            } catch (ClassCastException e) {
                throw new WrongType(e, "symbol->string", 1, obj);
            }
        }
        if (strings.isString(frame5Var.arg)) {
            if (strings.isString$Eq(frame5Var.arg, "")) {
                return "*empty-string*";
            }
            return frame5Var.arg;
        }
        if (numbers.isNumber(frame5Var.arg)) {
            return appinventorNumber$To$String(frame5Var.arg);
        }
        if (misc.isBoolean(frame5Var.arg)) {
            return boolean$To$String(frame5Var.arg);
        }
        if (isYailList(frame5Var.arg) != Boolean.FALSE) {
            return getDisplayRepresentation(yailList$To$KawaList(frame5Var.arg));
        }
        if (lists.isList(frame5Var.arg)) {
            Object arg0 = frame5Var.arg;
            Object result = LList.Empty;
            while (arg0 != LList.Empty) {
                try {
                    Pair arg02 = (Pair) arg0;
                    arg0 = arg02.getCdr();
                    result = Pair.make(getDisplayRepresentation(arg02.getCar()), result);
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "arg0", -2, arg0);
                }
            }
            frame5Var.pieces = LList.reverseInPlace(result);
            return ports.callWithOutputString(frame5Var.lambda$Fn9);
        }
        return ports.callWithOutputString(frame5Var.lambda$Fn10);
    }

    /* JADX INFO: compiled from: runtime3808032275111475787.scm */
    public class frame5 extends ModuleBody {
        Object arg;
        final ModuleMethod lambda$Fn10;
        final ModuleMethod lambda$Fn9;
        LList pieces;

        public frame5() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 8, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/tmp/runtime3808032275111475787.scm:1696");
            this.lambda$Fn9 = moduleMethod;
            ModuleMethod moduleMethod2 = new ModuleMethod(this, 9, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod2.setProperty("source-location", "/tmp/runtime3808032275111475787.scm:1697");
            this.lambda$Fn10 = moduleMethod2;
        }

        void lambda9(Object port) {
            ports.display(this.pieces, port);
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            switch (moduleMethod.selector) {
                case 8:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 9:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                default:
                    return super.match1(moduleMethod, obj, callContext);
            }
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            switch (moduleMethod.selector) {
                case 8:
                    lambda9(obj);
                    return Values.empty;
                case 9:
                    lambda10(obj);
                    return Values.empty;
                default:
                    return super.apply1(moduleMethod, obj);
            }
        }

        void lambda10(Object port) {
            ports.display(this.arg, port);
        }
    }

    static Object lambda11(Object arg) {
        frame6 frame6Var = new frame6();
        frame6Var.arg = arg;
        if (Scheme.numEqu.apply2(frame6Var.arg, Lit25) != Boolean.FALSE) {
            return "+infinity";
        }
        if (Scheme.numEqu.apply2(frame6Var.arg, Lit26) != Boolean.FALSE) {
            return "-infinity";
        }
        if (frame6Var.arg == null) {
            return "*nothing*";
        }
        if (misc.isSymbol(frame6Var.arg)) {
            Object obj = frame6Var.arg;
            try {
                return ((Symbol) obj).toString();
            } catch (ClassCastException e) {
                throw new WrongType(e, "symbol->string", 1, obj);
            }
        }
        if (strings.isString(frame6Var.arg)) {
            return strings.stringAppend("\"", frame6Var.arg, "\"");
        }
        if (numbers.isNumber(frame6Var.arg)) {
            return appinventorNumber$To$String(frame6Var.arg);
        }
        if (misc.isBoolean(frame6Var.arg)) {
            return boolean$To$String(frame6Var.arg);
        }
        if (isYailList(frame6Var.arg) != Boolean.FALSE) {
            return ((Procedure) get$Mnjson$Mndisplay$Mnrepresentation).apply1(yailList$To$KawaList(frame6Var.arg));
        }
        if (lists.isList(frame6Var.arg)) {
            Object arg0 = frame6Var.arg;
            Object result = LList.Empty;
            while (arg0 != LList.Empty) {
                try {
                    Pair arg02 = (Pair) arg0;
                    arg0 = arg02.getCdr();
                    result = Pair.make(((Procedure) get$Mnjson$Mndisplay$Mnrepresentation).apply1(arg02.getCar()), result);
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "arg0", -2, arg0);
                }
            }
            LList pieces = LList.reverseInPlace(result);
            return strings.stringAppend("[", joinStrings(pieces, ", "), "]");
        }
        return ports.callWithOutputString(frame6Var.lambda$Fn12);
    }

    /* JADX INFO: compiled from: runtime3808032275111475787.scm */
    public class frame6 extends ModuleBody {
        Object arg;
        final ModuleMethod lambda$Fn12;

        public frame6() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 10, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/tmp/runtime3808032275111475787.scm:1717");
            this.lambda$Fn12 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            if (moduleMethod.selector != 10) {
                return super.apply1(moduleMethod, obj);
            }
            lambda12(obj);
            return Values.empty;
        }

        void lambda12(Object port) {
            ports.display(this.arg, port);
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 10) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public static Object joinStrings(Object list$Mnof$Mnstrings, Object separator) {
        try {
            return JavaStringUtils.joinStrings((List) list$Mnof$Mnstrings, separator == null ? null : separator.toString());
        } catch (ClassCastException e) {
            throw new WrongType(e, "com.google.appinventor.components.runtime.util.JavaStringUtils.joinStrings(java.util.List,java.lang.String)", 1, list$Mnof$Mnstrings);
        }
    }

    public static Object stringReplace(Object original, Object replacement$Mntable) {
        return lists.isNull(replacement$Mntable) ? original : strings.isString$Eq(original, lists.caar.apply1(replacement$Mntable)) ? lists.cadar.apply1(replacement$Mntable) : stringReplace(original, lists.cdr.apply1(replacement$Mntable));
    }

    public static Object coerceToYailList(Object arg) {
        if (isYailList(arg) != Boolean.FALSE) {
            return arg;
        }
        if (isYailDictionary(arg) != Boolean.FALSE) {
            return yailDictionaryDictToAlist(arg);
        }
        return isYailMatrix(arg) != Boolean.FALSE ? yailMatrixToAlist(arg) : Lit2;
    }

    public static Object coerceToPair(Object arg) {
        return coerceToYailList(arg);
    }

    public static Object coerceToDictionary(Object arg) {
        if (isYailDictionary(arg) != Boolean.FALSE) {
            return arg;
        }
        if (isYailList(arg) != Boolean.FALSE) {
            return yailDictionaryAlistToDict(arg);
        }
        if (strings.isString(arg)) {
            return JsonUtil.getObjectFromJson(arg == null ? null : arg.toString(), true);
        }
        try {
            return Scheme.applyToArgs.apply1(GetNamedPart.getNamedPart.apply2(arg, Lit27));
        } catch (Exception e) {
            return Scheme.applyToArgs.apply1(Lit2);
        }
    }

    public static Object coerceToMatrix(Object arg) throws Throwable {
        Object objApply3;
        frame7 frame7Var = new frame7();
        frame7Var.arg = arg;
        if (isYailMatrix(frame7Var.arg) != Boolean.FALSE) {
            return frame7Var.arg;
        }
        if (isYailList(frame7Var.arg) != Boolean.FALSE) {
            Object obj = frame7Var.arg;
            try {
                int rows = lists.length((LList) obj);
                boolean x = rows > 0;
                if (!x) {
                    objApply3 = x ? Boolean.TRUE : Boolean.FALSE;
                } else {
                    try {
                        objApply3 = Scheme.applyToArgs.apply3(loc$every.get(), frame7Var.lambda$Fn13, frame7Var.arg);
                    } catch (UnboundLocationException e) {
                        e.setLine("/tmp/runtime3808032275111475787.scm", 1803, 36);
                        throw e;
                    }
                }
                Object is$Mnvalid$Mnmatrix = objApply3;
                if (is$Mnvalid$Mnmatrix == Boolean.FALSE) {
                    return Lit2;
                }
                Integer numValueOf = Integer.valueOf(rows);
                Object objApply1 = lists.car.apply1(frame7Var.arg);
                try {
                    return makeYailMatrix$V(new Object[]{numValueOf, Integer.valueOf(lists.length((LList) objApply1)), frame7Var.arg});
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, objApply1);
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, obj);
            }
        }
        return Lit2;
    }

    /* JADX INFO: compiled from: runtime3808032275111475787.scm */
    public class frame7 extends ModuleBody {
        Object arg;
        final ModuleMethod lambda$Fn13;

        public frame7() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 11, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/tmp/runtime3808032275111475787.scm:1803");
            this.lambda$Fn13 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 11 ? lambda13(obj) : super.apply1(moduleMethod, obj);
        }

        Object lambda13(Object row) throws Throwable {
            Object x = runtime.isYailList(row);
            if (x == Boolean.FALSE) {
                return x;
            }
            Object objApply1 = lists.car.apply1(this.arg);
            try {
                try {
                    return lists.length((LList) objApply1) == lists.length((LList) row) ? Boolean.TRUE : Boolean.FALSE;
                } catch (ClassCastException e) {
                    throw new WrongType(e, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, row);
                }
            } catch (ClassCastException e2) {
                throw new WrongType(e2, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, objApply1);
            }
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 11) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public static Object coerceToBoolean(Object arg) {
        return misc.isBoolean(arg) ? arg : Lit2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean isIsCoercible(Object x) {
        return ((x == Lit2 ? 1 : 0) + 1) & 1;
    }

    public static Object isAllCoercible(Object args) {
        if (lists.isNull(args)) {
            return Boolean.TRUE;
        }
        boolean x = isIsCoercible(lists.car.apply1(args));
        if (!x) {
            return x ? Boolean.TRUE : Boolean.FALSE;
        }
        return isAllCoercible(lists.cdr.apply1(args));
    }

    public static String boolean$To$String(Object b) {
        return b != Boolean.FALSE ? "true" : "false";
    }

    public static Object paddedString$To$Number(Object s) {
        return numbers.string$To$Number(s.toString().trim());
    }

    public static String $StFormatInexact$St(Object n) {
        try {
            return YailNumberToString.format(((Number) n).doubleValue());
        } catch (ClassCastException e) {
            throw new WrongType(e, "com.google.appinventor.components.runtime.util.YailNumberToString.format(double)", 1, n);
        }
    }

    /* JADX INFO: compiled from: runtime3808032275111475787.scm */
    public class frame8 extends ModuleBody {
        final ModuleMethod lambda$Fn14;
        final ModuleMethod lambda$Fn15;
        Object n;

        public frame8() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 12, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/tmp/runtime3808032275111475787.scm:1859");
            this.lambda$Fn14 = moduleMethod;
            ModuleMethod moduleMethod2 = new ModuleMethod(this, 13, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod2.setProperty("source-location", "/tmp/runtime3808032275111475787.scm:1867");
            this.lambda$Fn15 = moduleMethod2;
        }

        void lambda14(Object port) {
            ports.display(this.n, port);
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            switch (moduleMethod.selector) {
                case 12:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 13:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                default:
                    return super.match1(moduleMethod, obj, callContext);
            }
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            switch (moduleMethod.selector) {
                case 12:
                    lambda14(obj);
                    return Values.empty;
                case 13:
                    lambda15(obj);
                    return Values.empty;
                default:
                    return super.apply1(moduleMethod, obj);
            }
        }

        void lambda15(Object port) {
            Object obj = this.n;
            try {
                ports.display(numbers.exact((Number) obj), port);
            } catch (ClassCastException e) {
                throw new WrongType(e, "exact", 1, obj);
            }
        }
    }

    public static Object appinventorNumber$To$String(Object n) {
        frame8 frame8Var = new frame8();
        frame8Var.n = n;
        if (!numbers.isReal(frame8Var.n)) {
            return ports.callWithOutputString(frame8Var.lambda$Fn14);
        }
        if (numbers.isInteger(frame8Var.n)) {
            return ports.callWithOutputString(frame8Var.lambda$Fn15);
        }
        if (numbers.isExact(frame8Var.n)) {
            Object obj = frame8Var.n;
            try {
                return appinventorNumber$To$String(Arithmetic.toInexact((Number) obj));
            } catch (ClassCastException e) {
                throw new WrongType(e, "exact->inexact", 1, obj);
            }
        }
        return $StFormatInexact$St(frame8Var.n);
    }

    public static Object isYailEqual(Object obj, Object obj2) {
        boolean zIsNull = lists.isNull(obj);
        if (!zIsNull ? !zIsNull : !lists.isNull(obj2)) {
            return Boolean.TRUE;
        }
        boolean zIsNull2 = lists.isNull(obj);
        if (!zIsNull2 ? !lists.isNull(obj2) : !zIsNull2) {
            return Boolean.FALSE;
        }
        Object objIsYailMatrix = isYailMatrix(obj);
        if (objIsYailMatrix == Boolean.FALSE ? objIsYailMatrix != Boolean.FALSE : isYailMatrix(obj2) != Boolean.FALSE) {
            return isYailMatrixEqual(obj, obj2);
        }
        Object objIsYailMatrix2 = isYailMatrix(obj);
        if (objIsYailMatrix2 == Boolean.FALSE ? objIsYailMatrix2 != Boolean.FALSE : isYailList(obj2) != Boolean.FALSE) {
            return isYailEqual(yailMatrixToAlist(obj), obj2);
        }
        Object objIsYailList = isYailList(obj);
        if (objIsYailList == Boolean.FALSE ? objIsYailList != Boolean.FALSE : isYailMatrix(obj2) != Boolean.FALSE) {
            return isYailEqual(obj, yailMatrixToAlist(obj2));
        }
        int i = ((lists.isPair(obj) ? 1 : 0) + 1) & 1;
        if (i == 0 ? i != 0 : !lists.isPair(obj2)) {
            return isYailAtomicEqual(obj, obj2);
        }
        int i2 = ((lists.isPair(obj) ? 1 : 0) + 1) & 1;
        if (i2 == 0 ? !lists.isPair(obj2) : i2 != 0) {
            return Boolean.FALSE;
        }
        Object objIsYailEqual = isYailEqual(lists.car.apply1(obj), lists.car.apply1(obj2));
        if (objIsYailEqual == Boolean.FALSE) {
            return objIsYailEqual;
        }
        return isYailEqual(lists.cdr.apply1(obj), lists.cdr.apply1(obj2));
    }

    public static Object isYailAtomicEqual(Object obj, Object obj2) throws Throwable {
        if (IsEqual.apply(obj, obj2)) {
            return Boolean.TRUE;
        }
        Object objIsEnum = isEnum(obj);
        if (objIsEnum == Boolean.FALSE ? objIsEnum != Boolean.FALSE : isEnum(obj2) == Boolean.FALSE) {
            return IsEqual.apply(Scheme.applyToArgs.apply1(GetNamedPart.getNamedPart.apply2(obj, Lit22)), obj2) ? Boolean.TRUE : Boolean.FALSE;
        }
        Object objIsEnum2 = isEnum(obj);
        try {
            int i = ((objIsEnum2 != Boolean.FALSE ? 1 : 0) + 1) & 1;
            if (i == 0 ? i != 0 : isEnum(obj2) != Boolean.FALSE) {
                return IsEqual.apply(obj, Scheme.applyToArgs.apply1(GetNamedPart.getNamedPart.apply2(obj2, Lit22))) ? Boolean.TRUE : Boolean.FALSE;
            }
            Object objAsNumber = asNumber(obj);
            if (objAsNumber == Boolean.FALSE) {
                return objAsNumber;
            }
            Object objAsNumber2 = asNumber(obj2);
            return objAsNumber2 != Boolean.FALSE ? Scheme.numEqu.apply2(objAsNumber, objAsNumber2) : objAsNumber2;
        } catch (ClassCastException e) {
            throw new WrongType(e, "x", -2, objIsEnum2);
        }
    }

    public static Object asNumber(Object x) throws Throwable {
        Object nx = coerceToNumber(x);
        return nx == Lit2 ? Boolean.FALSE : nx;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean isYailNotEqual(Object x1, Object x2) {
        return ((isYailEqual(x1, x2) != Boolean.FALSE ? 1 : 0) + 1) & 1;
    }

    public static Object processAndDelayed$V(Object[] argsArray) throws Throwable {
        LList delayed$Mnargs = LList.makeList(argsArray, 0);
        for (Object delayed$Mnargs2 = delayed$Mnargs; !lists.isNull(delayed$Mnargs2); delayed$Mnargs2 = lists.cdr.apply1(delayed$Mnargs2)) {
            Object conjunct = Scheme.applyToArgs.apply1(lists.car.apply1(delayed$Mnargs2));
            Object coerced$Mnconjunct = coerceToBoolean(conjunct);
            if (!isIsCoercible(coerced$Mnconjunct)) {
                return signalRuntimeError(strings.stringAppend("The AND operation cannot accept the argument ", getDisplayRepresentation(conjunct), " because it is neither true nor false"), strings.stringAppend("Bad argument to AND" instanceof Object[] ? (Object[]) "Bad argument to AND" : new Object[]{"Bad argument to AND"}));
            }
            if (coerced$Mnconjunct == Boolean.FALSE) {
                return coerced$Mnconjunct;
            }
        }
        return Boolean.TRUE;
    }

    public static Object processOrDelayed$V(Object[] argsArray) throws Throwable {
        LList delayed$Mnargs = LList.makeList(argsArray, 0);
        for (Object delayed$Mnargs2 = delayed$Mnargs; !lists.isNull(delayed$Mnargs2); delayed$Mnargs2 = lists.cdr.apply1(delayed$Mnargs2)) {
            Object disjunct = Scheme.applyToArgs.apply1(lists.car.apply1(delayed$Mnargs2));
            Object coerced$Mndisjunct = coerceToBoolean(disjunct);
            if (!isIsCoercible(coerced$Mndisjunct)) {
                return signalRuntimeError(strings.stringAppend("The OR operation cannot accept the argument ", getDisplayRepresentation(disjunct), " because it is neither true nor false"), strings.stringAppend("Bad argument to OR" instanceof Object[] ? (Object[]) "Bad argument to OR" : new Object[]{"Bad argument to OR"}));
            }
            if (coerced$Mndisjunct != Boolean.FALSE) {
                return coerced$Mndisjunct;
            }
        }
        return Boolean.FALSE;
    }

    public static Number yailFloor(Object x) {
        try {
            return Arithmetic.toExact(numbers.floor(LangObjType.coerceRealNum(x)));
        } catch (ClassCastException e) {
            throw new WrongType(e, "floor", 1, x);
        }
    }

    public static Number yailCeiling(Object x) {
        try {
            return Arithmetic.toExact(numbers.ceiling(LangObjType.coerceRealNum(x)));
        } catch (ClassCastException e) {
            throw new WrongType(e, "ceiling", 1, x);
        }
    }

    public static Number yailRound(Object x) {
        try {
            return Arithmetic.toExact(numbers.round(LangObjType.coerceRealNum(x)));
        } catch (ClassCastException e) {
            throw new WrongType(e, "round", 1, x);
        }
    }

    public static Object randomSetSeed(Object seed) {
        if (numbers.isNumber(seed)) {
            try {
                $Strandom$Mnnumber$Mngenerator$St.setSeed(((Number) seed).longValue());
                return Values.empty;
            } catch (ClassCastException e) {
                throw new WrongType(e, "java.util.Random.setSeed(long)", 2, seed);
            }
        }
        if (strings.isString(seed)) {
            return randomSetSeed(paddedString$To$Number(seed));
        }
        if (lists.isList(seed)) {
            return randomSetSeed(lists.car.apply1(seed));
        }
        if (Boolean.TRUE == seed) {
            return randomSetSeed(Lit28);
        }
        if (Boolean.FALSE == seed) {
            return randomSetSeed(Lit29);
        }
        return randomSetSeed(Lit29);
    }

    public static double randomFraction() {
        return $Strandom$Mnnumber$Mngenerator$St.nextDouble();
    }

    public static Object randomInteger(Object low, Object high) throws Throwable {
        try {
            Object low2 = numbers.ceiling(LangObjType.coerceRealNum(low));
            try {
                Object high2 = numbers.floor(LangObjType.coerceRealNum(high));
                while (Scheme.numGrt.apply2(low2, high2) != Boolean.FALSE) {
                    Object high3 = low2;
                    low2 = high2;
                    high2 = high3;
                }
                Object clow = ((Procedure) clip$Mnto$Mnjava$Mnint$Mnrange).apply1(low2);
                Object chigh = ((Procedure) clip$Mnto$Mnjava$Mnint$Mnrange).apply1(high2);
                AddOp addOp = AddOp.$Pl;
                Random random = $Strandom$Mnnumber$Mngenerator$St;
                Object objApply2 = AddOp.$Pl.apply2(Lit28, AddOp.$Mn.apply2(chigh, clow));
                try {
                    Object objApply22 = addOp.apply2(Integer.valueOf(random.nextInt(((Number) objApply2).intValue())), clow);
                    try {
                        return Arithmetic.toExact((Number) objApply22);
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "inexact->exact", 1, objApply22);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "java.util.Random.nextInt(int)", 2, objApply2);
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "floor", 1, high);
            }
        } catch (ClassCastException e4) {
            throw new WrongType(e4, "ceiling", 1, low);
        }
    }

    static Object lambda16(Object x) {
        return numbers.max(lowest, numbers.min(x, highest));
    }

    public static Object yailDivide(Object n, Object d) throws Throwable {
        Object objApply2 = Scheme.numEqu.apply2(d, Lit29);
        try {
            boolean x = ((Boolean) objApply2).booleanValue();
            if (!x ? x : Scheme.numEqu.apply2(n, Lit29) != Boolean.FALSE) {
                signalRuntimeFormError("Division", ERROR_DIVISION_BY_ZERO, n);
                return n;
            }
            if (Scheme.numEqu.apply2(d, Lit29) != Boolean.FALSE) {
                signalRuntimeFormError("Division", ERROR_DIVISION_BY_ZERO, n);
                Object objApply22 = DivideOp.$Sl.apply2(n, d);
                try {
                    return Arithmetic.toInexact((Number) objApply22);
                } catch (ClassCastException e) {
                    throw new WrongType(e, "exact->inexact", 1, objApply22);
                }
            }
            Object objApply23 = DivideOp.$Sl.apply2(n, d);
            try {
                return Arithmetic.toInexact((Number) objApply23);
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "exact->inexact", 1, objApply23);
            }
        } catch (ClassCastException e3) {
            throw new WrongType(e3, "x", -2, objApply2);
        }
    }

    public static Object degrees$To$RadiansInternal(Object degrees) {
        return DivideOp.$Sl.apply2(MultiplyOp.$St.apply2(degrees, Lit32), Lit33);
    }

    public static Object radians$To$DegreesInternal(Object radians) {
        return DivideOp.$Sl.apply2(MultiplyOp.$St.apply2(radians, Lit33), Lit32);
    }

    public static Object degrees$To$Radians(Object degrees) throws Throwable {
        Object rads = DivideOp.modulo.apply2(degrees$To$RadiansInternal(degrees), Lit34);
        return Scheme.numGEq.apply2(rads, Lit32) != Boolean.FALSE ? AddOp.$Mn.apply2(rads, Lit35) : rads;
    }

    public static Object radians$To$Degrees(Object radians) {
        return DivideOp.modulo.apply2(radians$To$DegreesInternal(radians), Lit36);
    }

    public static Object sinDegrees(Object degrees) {
        if (Scheme.numEqu.apply2(DivideOp.modulo.apply2(degrees, Lit37), Lit29) != Boolean.FALSE) {
            return Scheme.numEqu.apply2(DivideOp.modulo.apply2(DivideOp.$Sl.apply2(degrees, Lit37), Lit30), Lit29) != Boolean.FALSE ? Lit29 : Scheme.numEqu.apply2(DivideOp.modulo.apply2(DivideOp.$Sl.apply2(AddOp.$Mn.apply2(degrees, Lit37), Lit33), Lit30), Lit29) != Boolean.FALSE ? Lit28 : Lit38;
        }
        Object objDegrees$To$RadiansInternal = degrees$To$RadiansInternal(degrees);
        try {
            return Double.valueOf(numbers.sin(((Number) objDegrees$To$RadiansInternal).doubleValue()));
        } catch (ClassCastException e) {
            throw new WrongType(e, "sin", 1, objDegrees$To$RadiansInternal);
        }
    }

    public static Object cosDegrees(Object degrees) {
        if (Scheme.numEqu.apply2(DivideOp.modulo.apply2(degrees, Lit37), Lit29) != Boolean.FALSE) {
            return Scheme.numEqu.apply2(DivideOp.modulo.apply2(DivideOp.$Sl.apply2(degrees, Lit37), Lit30), Lit28) != Boolean.FALSE ? Lit29 : Scheme.numEqu.apply2(DivideOp.modulo.apply2(DivideOp.$Sl.apply2(degrees, Lit33), Lit30), Lit28) != Boolean.FALSE ? Lit38 : Lit28;
        }
        Object objDegrees$To$RadiansInternal = degrees$To$RadiansInternal(degrees);
        try {
            return Double.valueOf(numbers.cos(((Number) objDegrees$To$RadiansInternal).doubleValue()));
        } catch (ClassCastException e) {
            throw new WrongType(e, "cos", 1, objDegrees$To$RadiansInternal);
        }
    }

    public static Object tanDegrees(Object degrees) {
        if (Scheme.numEqu.apply2(DivideOp.modulo.apply2(degrees, Lit33), Lit29) != Boolean.FALSE) {
            return Lit29;
        }
        if (Scheme.numEqu.apply2(DivideOp.modulo.apply2(AddOp.$Mn.apply2(degrees, Lit39), Lit37), Lit29) != Boolean.FALSE) {
            return Scheme.numEqu.apply2(DivideOp.modulo.apply2(DivideOp.$Sl.apply2(AddOp.$Mn.apply2(degrees, Lit39), Lit37), Lit30), Lit29) != Boolean.FALSE ? Lit28 : Lit38;
        }
        Object objDegrees$To$RadiansInternal = degrees$To$RadiansInternal(degrees);
        try {
            return Double.valueOf(numbers.tan(((Number) objDegrees$To$RadiansInternal).doubleValue()));
        } catch (ClassCastException e) {
            throw new WrongType(e, "tan", 1, objDegrees$To$RadiansInternal);
        }
    }

    public static Object asinDegrees(Object y) {
        try {
            return radians$To$DegreesInternal(Double.valueOf(numbers.asin(((Number) y).doubleValue())));
        } catch (ClassCastException e) {
            throw new WrongType(e, "asin", 1, y);
        }
    }

    public static Object acosDegrees(Object y) {
        try {
            return radians$To$DegreesInternal(Double.valueOf(numbers.acos(((Number) y).doubleValue())));
        } catch (ClassCastException e) {
            throw new WrongType(e, "acos", 1, y);
        }
    }

    public static Object atanDegrees(Object ratio) {
        return radians$To$DegreesInternal(numbers.atan.apply1(ratio));
    }

    public static Object atan2Degrees(Object y, Object x) {
        return radians$To$DegreesInternal(numbers.atan.apply2(y, x));
    }

    public static String stringToUpperCase(Object s) {
        return s.toString().toUpperCase();
    }

    public static String stringToLowerCase(Object s) {
        return s.toString().toLowerCase();
    }

    public static LList unicodeString$To$List(CharSequence str) {
        LList result = LList.Empty;
        int i = strings.stringLength(str);
        while (true) {
            i--;
            if (i >= 0) {
                boolean x = i >= 1;
                if (!x) {
                    if (x) {
                        Pair pair = new Pair(Char.make(strings.stringRef(str, i)), new Pair(Char.make(strings.stringRef(str, i - 1)), result));
                        i--;
                        result = pair;
                    } else {
                        result = new Pair(Char.make(strings.stringRef(str, i)), result);
                    }
                } else {
                    char c = strings.stringRef(str, i);
                    char c1 = strings.stringRef(str, i - 1);
                    boolean x2 = characters.isChar$Gr$Eq(Char.make(c), Lit40);
                    if (x2) {
                        boolean x3 = characters.isChar$Ls$Eq(Char.make(c), Lit41);
                        if (x3) {
                            boolean x4 = characters.isChar$Gr$Eq(Char.make(c1), Lit42);
                            if (x4) {
                                if (characters.isChar$Ls$Eq(Char.make(c1), Lit43)) {
                                    Pair pair2 = new Pair(Char.make(strings.stringRef(str, i)), new Pair(Char.make(strings.stringRef(str, i - 1)), result));
                                    i--;
                                    result = pair2;
                                } else {
                                    result = new Pair(Char.make(strings.stringRef(str, i)), result);
                                }
                            } else if (x4) {
                                Pair pair22 = new Pair(Char.make(strings.stringRef(str, i)), new Pair(Char.make(strings.stringRef(str, i - 1)), result));
                                i--;
                                result = pair22;
                            } else {
                                result = new Pair(Char.make(strings.stringRef(str, i)), result);
                            }
                        } else if (x3) {
                            Pair pair222 = new Pair(Char.make(strings.stringRef(str, i)), new Pair(Char.make(strings.stringRef(str, i - 1)), result));
                            i--;
                            result = pair222;
                        } else {
                            result = new Pair(Char.make(strings.stringRef(str, i)), result);
                        }
                    } else if (x2) {
                        Pair pair2222 = new Pair(Char.make(strings.stringRef(str, i)), new Pair(Char.make(strings.stringRef(str, i - 1)), result));
                        i--;
                        result = pair2222;
                    } else {
                        result = new Pair(Char.make(strings.stringRef(str, i)), result);
                    }
                }
            } else {
                return result;
            }
        }
    }

    public static CharSequence stringReverse(Object s) {
        try {
            return strings.list$To$String(lists.reverse(unicodeString$To$List((CharSequence) s)));
        } catch (ClassCastException e) {
            throw new WrongType(e, "unicode-string->list", 0, s);
        }
    }

    public static Object formatAsDecimal(Object number, Object places) {
        if (Scheme.numEqu.apply2(places, Lit29) != Boolean.FALSE) {
            return yailRound(number);
        }
        boolean x = numbers.isInteger(places);
        if (!x ? x : Scheme.numGrt.apply2(places, Lit29) != Boolean.FALSE) {
            return signalRuntimeError(strings.stringAppend("format-as-decimal was called with ", getDisplayRepresentation(places), " as the number of decimal places.  This number must be a non-negative integer."), strings.stringAppend("Bad number of decimal places for format as decimal" instanceof Object[] ? (Object[]) "Bad number of decimal places for format as decimal" : new Object[]{"Bad number of decimal places for format as decimal"}));
        }
        return Format.formatToString(0, strings.stringAppend("~,", appinventorNumber$To$String(places), "f"), number);
    }

    public static Boolean isIsNumber(Object arg) {
        boolean x;
        boolean x2 = numbers.isNumber(arg);
        return (!x2 ? !(!(x = strings.isString(arg)) ? x : paddedString$To$Number(arg) != Boolean.FALSE) : x2) ? Boolean.FALSE : Boolean.TRUE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean isIsBase10(Object arg) {
        try {
            boolean x = Pattern.matches("[0123456789]*", (CharSequence) arg);
            if (x) {
                return ((isStringEmpty(arg) != Boolean.FALSE ? 1 : 0) + 1) & 1;
            }
            return x;
        } catch (ClassCastException e) {
            throw new WrongType(e, "java.util.regex.Pattern.matches(java.lang.String,java.lang.CharSequence)", 2, arg);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean isIsHexadecimal(Object arg) {
        try {
            boolean x = Pattern.matches("[0-9a-fA-F]*", (CharSequence) arg);
            if (x) {
                return ((isStringEmpty(arg) != Boolean.FALSE ? 1 : 0) + 1) & 1;
            }
            return x;
        } catch (ClassCastException e) {
            throw new WrongType(e, "java.util.regex.Pattern.matches(java.lang.String,java.lang.CharSequence)", 2, arg);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean isIsBinary(Object arg) {
        try {
            boolean x = Pattern.matches("[01]*", (CharSequence) arg);
            if (x) {
                return ((isStringEmpty(arg) != Boolean.FALSE ? 1 : 0) + 1) & 1;
            }
            return x;
        } catch (ClassCastException e) {
            throw new WrongType(e, "java.util.regex.Pattern.matches(java.lang.String,java.lang.CharSequence)", 2, arg);
        }
    }

    public static Object mathConvertDecHex(Object x) {
        if (!isIsBase10(x)) {
            return signalRuntimeError(Format.formatToString(0, "Convert base 10 to hex: '~A' is not a positive integer", getDisplayRepresentation(x)), "Argument is not a positive integer");
        }
        try {
            Object objString$To$Number = numbers.string$To$Number((CharSequence) x);
            try {
                return stringToUpperCase(numbers.number$To$String((Number) objString$To$Number, 16));
            } catch (ClassCastException e) {
                throw new WrongType(e, "number->string", 1, objString$To$Number);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "string->number", 1, x);
        }
    }

    public static Object mathConvertHexDec(Object x) {
        return isIsHexadecimal(x) ? numbers.string$To$Number(stringToUpperCase(x), 16) : signalRuntimeError(Format.formatToString(0, "Convert hex to base 10: '~A' is not a hexadecimal number", getDisplayRepresentation(x)), "Invalid hexadecimal number");
    }

    public static Object mathConvertBinDec(Object x) {
        if (!isIsBinary(x)) {
            return signalRuntimeError(Format.formatToString(0, "Convert binary to base 10: '~A' is not a  binary number", getDisplayRepresentation(x)), "Invalid binary number");
        }
        try {
            return numbers.string$To$Number((CharSequence) x, 2);
        } catch (ClassCastException e) {
            throw new WrongType(e, "string->number", 1, x);
        }
    }

    public static Object mathConvertDecBin(Object x) {
        if (!isIsBase10(x)) {
            return signalRuntimeError(Format.formatToString(0, "Convert base 10 to binary: '~A' is not a positive integer", getDisplayRepresentation(x)), "Argument is not a positive integer");
        }
        try {
            return patchedNumber$To$StringBinary(numbers.string$To$Number((CharSequence) x));
        } catch (ClassCastException e) {
            throw new WrongType(e, "string->number", 1, x);
        }
    }

    public static Object patchedNumber$To$StringBinary(Object x) {
        try {
            if (Scheme.numLss.apply2(numbers.abs((Number) x), Lit44) != Boolean.FALSE) {
                try {
                    return numbers.number$To$String((Number) x, 2);
                } catch (ClassCastException e) {
                    throw new WrongType(e, "number->string", 1, x);
                }
            }
            return alternateNumber$To$StringBinary(x);
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "abs", 1, x);
        }
    }

    public static Object alternateNumber$To$StringBinary(Object x) {
        try {
            Number numberAbs = numbers.abs((Number) x);
            try {
                RealNum clean$Mnx = numbers.floor(LangObjType.coerceRealNum(numberAbs));
                Object converted$Mnclean$Mnx = internalBinaryConvert(clean$Mnx);
                return clean$Mnx.doubleValue() >= 0.0d ? converted$Mnclean$Mnx : strings.stringAppend("-", converted$Mnclean$Mnx);
            } catch (ClassCastException e) {
                throw new WrongType(e, "floor", 1, numberAbs);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "abs", 1, x);
        }
    }

    public static Object internalBinaryConvert(Object x) {
        return Scheme.numEqu.apply2(x, Lit29) != Boolean.FALSE ? Component.TYPEFACE_DEFAULT : Scheme.numEqu.apply2(x, Lit28) != Boolean.FALSE ? Component.TYPEFACE_SANSSERIF : strings.stringAppend(internalBinaryConvert(DivideOp.quotient.apply2(x, Lit30)), internalBinaryConvert(DivideOp.remainder.apply2(x, Lit30)));
    }

    public static Object avg(Object l) throws Throwable {
        Object l$Mncontent = yailListContents(l);
        if (lists.isNull(l$Mncontent)) {
            return Lit29;
        }
        try {
            return yailDivide(Scheme.apply.apply2(AddOp.$Pl, l$Mncontent), Integer.valueOf(lists.length((LList) l$Mncontent)));
        } catch (ClassCastException e) {
            throw new WrongType(e, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, l$Mncontent);
        }
    }

    public static Object yailMul(Object yail$Mnlist$Mncontents2) {
        return lists.isNull(yail$Mnlist$Mncontents2) ? Lit29 : Scheme.apply.apply2(MultiplyOp.$St, yail$Mnlist$Mncontents2);
    }

    public static Object gm(Object l) {
        Object l$Mncontent = yailListContents(l);
        if (lists.isNull(l$Mncontent)) {
            return Lit29;
        }
        try {
            return expt.expt(yailMul(l$Mncontent), yailDivide(Lit28, Integer.valueOf(lists.length((LList) l$Mncontent))));
        } catch (ClassCastException e) {
            throw new WrongType(e, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, l$Mncontent);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0069  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object mode(java.lang.Object r9) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 248
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.youngandroid.runtime.mode(java.lang.Object):java.lang.Object");
    }

    public static Object maxl(Object l) {
        Object l$Mncontent = yailListContents(l);
        return lists.isNull(l$Mncontent) ? Lit45 : Scheme.apply.apply2(numbers.max, l$Mncontent);
    }

    public static Object minl(Object l) {
        Object l$Mncontent = yailListContents(l);
        return lists.isNull(l$Mncontent) ? Lit46 : Scheme.apply.apply2(numbers.min, l$Mncontent);
    }

    public static Object mean(Object l$Mncontent) throws Throwable {
        try {
            return yailDivide(Scheme.apply.apply2(AddOp.$Pl, l$Mncontent), Integer.valueOf(lists.length((LList) l$Mncontent)));
        } catch (ClassCastException e) {
            throw new WrongType(e, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, l$Mncontent);
        }
    }

    public static Object sumMeanSquareDiff(Object lst, Object av) {
        return lists.isNull(lst) ? Lit29 : AddOp.$Pl.apply2(MultiplyOp.$St.apply2(AddOp.$Mn.apply2(lists.car.apply1(lst), av), AddOp.$Mn.apply2(lists.car.apply1(lst), av)), sumMeanSquareDiff(lists.cdr.apply1(lst), av));
    }

    public static Object stdDev(Object l) {
        Object lst = yailListContents(l);
        try {
            if (lists.length((LList) lst) <= 1) {
                return signalRuntimeError(Format.formatToString(0, "Select list item: Attempt to get item number ~A, of the list ~A.  The minimum valid item number is 2.", getDisplayRepresentation(lst)), "List smaller than 2");
            }
            try {
                return numbers.sqrt.apply1(yailDivide(sumMeanSquareDiff(lst, mean(lst)), Integer.valueOf(lists.length((LList) lst))));
            } catch (ClassCastException e) {
                throw new WrongType(e, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, lst);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, lst);
        }
    }

    public static Object sampleStdDev(Object lst) {
        try {
            return numbers.sqrt.apply1(yailDivide(sumMeanSquareDiff(lst, mean(lst)), Integer.valueOf(lists.length((LList) lst) - 1)));
        } catch (ClassCastException e) {
            throw new WrongType(e, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, lst);
        }
    }

    public static Object stdErr(Object l) {
        Object lst = yailListContents(l);
        try {
            if (lists.length((LList) lst) <= 1) {
                return signalRuntimeError(Format.formatToString(0, "Select list item: Attempt to get item number ~A, of the list ~A.  The minimum valid item number is 2.", getDisplayRepresentation(lst)), "List smaller than 2");
            }
            try {
                return yailDivide(sampleStdDev(lst), numbers.sqrt.apply1(Integer.valueOf(lists.length((LList) lst))));
            } catch (ClassCastException e) {
                throw new WrongType(e, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, lst);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, lst);
        }
    }

    public static Object isYailList(Object x) {
        Object x2 = isYailListCandidate(x);
        if (x2 != Boolean.FALSE) {
            return x instanceof YailList ? Boolean.TRUE : Boolean.FALSE;
        }
        return x2;
    }

    public static Object isYailListCandidate(Object x) {
        boolean x2 = lists.isPair(x);
        return x2 ? IsEqual.apply(lists.car.apply1(x), Lit47) ? Boolean.TRUE : Boolean.FALSE : x2 ? Boolean.TRUE : Boolean.FALSE;
    }

    public static Object yailListContents(Object yail$Mnlist) {
        return lists.cdr.apply1(yail$Mnlist);
    }

    public static void setYailListContents$Ex(Object yail$Mnlist, Object contents) {
        try {
            ((Pair) yail$Mnlist).setCdr(contents);
        } catch (ClassCastException e) {
            throw new WrongType(e, "set-cdr!", 1, yail$Mnlist);
        }
    }

    public static Object insertYailListHeader(Object x) {
        return Invoke.invokeStatic.apply3(YailList, Lit48, x);
    }

    public static Object kawaList$To$YailList(Object x) {
        if (lists.isNull(x)) {
            return new YailList();
        }
        if (!lists.isPair(x)) {
            return sanitizeAtomic(x);
        }
        if (isYailList(x) != Boolean.FALSE) {
            return x;
        }
        Object result = LList.Empty;
        Object arg0 = x;
        while (arg0 != LList.Empty) {
            try {
                Pair arg02 = (Pair) arg0;
                arg0 = arg02.getCdr();
                result = Pair.make(kawaList$To$YailList(arg02.getCar()), result);
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, arg0);
            }
        }
        return YailList.makeList((List) LList.reverseInPlace(result));
    }

    public static Object yailList$To$KawaList(Object data) {
        if (isYailList(data) == Boolean.FALSE) {
            return data;
        }
        Object arg0 = yailListContents(data);
        Object result = LList.Empty;
        while (arg0 != LList.Empty) {
            try {
                Pair arg02 = (Pair) arg0;
                arg0 = arg02.getCdr();
                result = Pair.make(yailList$To$KawaList(arg02.getCar()), result);
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, arg0);
            }
        }
        Object arg03 = LList.reverseInPlace(result);
        return arg03;
    }

    public static Object isYailListEmpty(Object x) {
        Object x2 = isYailList(x);
        if (x2 != Boolean.FALSE) {
            return lists.isNull(yailListContents(x)) ? Boolean.TRUE : Boolean.FALSE;
        }
        return x2;
    }

    public static YailList makeYailList$V(Object[] argsArray) {
        LList args = LList.makeList(argsArray, 0);
        return YailList.makeList((List) args);
    }

    public static Object yailListCopy(Object yl) {
        if (isYailListEmpty(yl) != Boolean.FALSE) {
            return new YailList();
        }
        if (!lists.isPair(yl)) {
            return yl;
        }
        Object arg0 = yailListContents(yl);
        Object result = LList.Empty;
        while (arg0 != LList.Empty) {
            try {
                Pair arg02 = (Pair) arg0;
                arg0 = arg02.getCdr();
                result = Pair.make(yailListCopy(arg02.getCar()), result);
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, arg0);
            }
        }
        return YailList.makeList((List) LList.reverseInPlace(result));
    }

    public static Object yailListReverse(Object yl) {
        if (isYailList(yl) == Boolean.FALSE) {
            return signalRuntimeError("Argument value to \"reverse list\" must be a list", "Expecting list");
        }
        Object objYailListContents = yailListContents(yl);
        try {
            return insertYailListHeader(lists.reverse((LList) objYailListContents));
        } catch (ClassCastException e) {
            throw new WrongType(e, "reverse", 1, objYailListContents);
        }
    }

    public static Object yailListToCsvTable(Object yl) throws Throwable {
        if (isYailList(yl) == Boolean.FALSE) {
            return signalRuntimeError("Argument value to \"list to csv table\" must be a list", "Expecting list");
        }
        Apply apply = Scheme.apply;
        ModuleMethod moduleMethod = make$Mnyail$Mnlist;
        Object arg0 = yailListContents(yl);
        Object result = LList.Empty;
        while (arg0 != LList.Empty) {
            try {
                Pair arg02 = (Pair) arg0;
                arg0 = arg02.getCdr();
                result = Pair.make(convertToStringsForCsv(arg02.getCar()), result);
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, arg0);
            }
        }
        Object arg03 = LList.reverseInPlace(result);
        Object objApply2 = apply.apply2(moduleMethod, arg03);
        try {
            return CsvUtil.toCsvTable((YailList) objApply2);
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "com.google.appinventor.components.runtime.util.CsvUtil.toCsvTable(com.google.appinventor.components.runtime.util.YailList)", 1, objApply2);
        }
    }

    public static Object yailListToCsvRow(Object yl) {
        if (isYailList(yl) == Boolean.FALSE) {
            return signalRuntimeError("Argument value to \"list to csv row\" must be a list", "Expecting list");
        }
        Object objConvertToStringsForCsv = convertToStringsForCsv(yl);
        try {
            return CsvUtil.toCsvRow((YailList) objConvertToStringsForCsv);
        } catch (ClassCastException e) {
            throw new WrongType(e, "com.google.appinventor.components.runtime.util.CsvUtil.toCsvRow(com.google.appinventor.components.runtime.util.YailList)", 1, objConvertToStringsForCsv);
        }
    }

    public static Object convertToStringsForCsv(Object yl) {
        if (isYailListEmpty(yl) != Boolean.FALSE) {
            return yl;
        }
        if (isYailList(yl) == Boolean.FALSE) {
            return makeYailList$V(new Object[]{yl});
        }
        Apply apply = Scheme.apply;
        ModuleMethod moduleMethod = make$Mnyail$Mnlist;
        Object arg0 = yailListContents(yl);
        Object result = LList.Empty;
        while (arg0 != LList.Empty) {
            try {
                Pair arg02 = (Pair) arg0;
                arg0 = arg02.getCdr();
                result = Pair.make(coerceToString(arg02.getCar()), result);
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, arg0);
            }
        }
        Object arg03 = LList.reverseInPlace(result);
        return apply.apply2(moduleMethod, arg03);
    }

    public static Object yailListFromCsvTable(Object str) {
        String string;
        if (str == null) {
            string = null;
        } else {
            try {
                string = str.toString();
            } catch (Exception exception) {
                return signalRuntimeError("Cannot parse text argument to \"list from csv table\" as a CSV-formatted table", exception.getMessage());
            }
        }
        return CsvUtil.fromCsvTable(string);
    }

    public static Object yailListFromCsvRow(Object str) {
        String string;
        if (str == null) {
            string = null;
        } else {
            try {
                string = str.toString();
            } catch (Exception exception) {
                return signalRuntimeError("Cannot parse text argument to \"list from csv row\" as CSV-formatted row", exception.getMessage());
            }
        }
        return CsvUtil.fromCsvRow(string);
    }

    public static int yailListLength(Object yail$Mnlist) {
        Object objYailListContents = yailListContents(yail$Mnlist);
        try {
            return lists.length((LList) objYailListContents);
        } catch (ClassCastException e) {
            throw new WrongType(e, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, objYailListContents);
        }
    }

    public static Object yailListIndex(Object object, Object yail$Mnlist) throws Throwable {
        Object i = Lit28;
        for (Object list = yailListContents(yail$Mnlist); !lists.isNull(list); list = lists.cdr.apply1(list)) {
            if (isYailEqual(object, lists.car.apply1(list)) != Boolean.FALSE) {
                return i;
            }
            i = AddOp.$Pl.apply2(i, Lit28);
        }
        Object i2 = Lit29;
        return i2;
    }

    public static Object yailListGetItem(Object yail$Mnlist, Object index) throws Throwable {
        if (Scheme.numLss.apply2(index, Lit28) != Boolean.FALSE) {
            signalRuntimeError(Format.formatToString(0, "Select list item: Attempt to get item number ~A, of the list ~A.  The minimum valid item number is 1.", index, getDisplayRepresentation(yail$Mnlist)), "List index smaller than 1");
        }
        int len = yailListLength(yail$Mnlist);
        if (Scheme.numGrt.apply2(index, Integer.valueOf(len)) != Boolean.FALSE) {
            return signalRuntimeError(Format.formatToString(0, "Select list item: Attempt to get item number ~A of a list of length ~A: ~A", index, Integer.valueOf(len), getDisplayRepresentation(yail$Mnlist)), "Select list item: List index too large");
        }
        Object objYailListContents = yailListContents(yail$Mnlist);
        Object objApply2 = AddOp.$Mn.apply2(index, Lit28);
        try {
            return lists.listRef(objYailListContents, ((Number) objApply2).intValue());
        } catch (ClassCastException e) {
            throw new WrongType(e, "list-ref", 2, objApply2);
        }
    }

    public static void yailListSetItem$Ex(Object yail$Mnlist, Object index, Object value) throws Throwable {
        if (Scheme.numLss.apply2(index, Lit28) != Boolean.FALSE) {
            signalRuntimeError(Format.formatToString(0, "Replace list item: Attempt to replace item number ~A of the list ~A.  The minimum valid item number is 1.", index, getDisplayRepresentation(yail$Mnlist)), "List index smaller than 1");
        }
        int len = yailListLength(yail$Mnlist);
        if (Scheme.numGrt.apply2(index, Integer.valueOf(len)) != Boolean.FALSE) {
            signalRuntimeError(Format.formatToString(0, "Replace list item: Attempt to replace item number ~A of a list of length ~A: ~A", index, Integer.valueOf(len), getDisplayRepresentation(yail$Mnlist)), "List index too large");
        }
        Object objYailListContents = yailListContents(yail$Mnlist);
        Object objApply2 = AddOp.$Mn.apply2(index, Lit28);
        try {
            Object objListTail = lists.listTail(objYailListContents, ((Number) objApply2).intValue());
            try {
                ((Pair) objListTail).setCar(value);
            } catch (ClassCastException e) {
                throw new WrongType(e, "set-car!", 1, objListTail);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "list-tail", 2, objApply2);
        }
    }

    public static void yailListRemoveItem$Ex(Object yail$Mnlist, Object index) throws Throwable {
        Object index2 = coerceToNumber(index);
        if (index2 == Lit2) {
            signalRuntimeError(Format.formatToString(0, "Remove list item: index -- ~A -- is not a number", getDisplayRepresentation(index)), "Bad list index");
        }
        if (isYailListEmpty(yail$Mnlist) != Boolean.FALSE) {
            signalRuntimeError(Format.formatToString(0, "Remove list item: Attempt to remove item ~A of an empty list", getDisplayRepresentation(index)), "Invalid list operation");
        }
        if (Scheme.numLss.apply2(index2, Lit28) != Boolean.FALSE) {
            signalRuntimeError(Format.formatToString(0, "Remove list item: Attempt to remove item ~A of the list ~A.  The minimum valid item number is 1.", index2, getDisplayRepresentation(yail$Mnlist)), "List index smaller than 1");
        }
        int len = yailListLength(yail$Mnlist);
        if (Scheme.numGrt.apply2(index2, Integer.valueOf(len)) != Boolean.FALSE) {
            signalRuntimeError(Format.formatToString(0, "Remove list item: Attempt to remove item ~A of a list of length ~A: ~A", index2, Integer.valueOf(len), getDisplayRepresentation(yail$Mnlist)), "List index too large");
        }
        Object objApply2 = AddOp.$Mn.apply2(index2, Lit28);
        try {
            Object pair$Mnpointing$Mnto$Mndeletion = lists.listTail(yail$Mnlist, ((Number) objApply2).intValue());
            try {
                ((Pair) pair$Mnpointing$Mnto$Mndeletion).setCdr(lists.cddr.apply1(pair$Mnpointing$Mnto$Mndeletion));
            } catch (ClassCastException e) {
                throw new WrongType(e, "set-cdr!", 1, pair$Mnpointing$Mnto$Mndeletion);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "list-tail", 2, objApply2);
        }
    }

    public static void yailListInsertItem$Ex(Object yail$Mnlist, Object index, Object item) throws Throwable {
        Object index2 = coerceToNumber(index);
        if (index2 == Lit2) {
            signalRuntimeError(Format.formatToString(0, "Insert list item: index (~A) is not a number", getDisplayRepresentation(index)), "Bad list index");
        }
        if (Scheme.numLss.apply2(index2, Lit28) != Boolean.FALSE) {
            signalRuntimeError(Format.formatToString(0, "Insert list item: Attempt to insert item ~A into the list ~A.  The minimum valid item number is 1.", index2, getDisplayRepresentation(yail$Mnlist)), "List index smaller than 1");
        }
        int len$Pl1 = yailListLength(yail$Mnlist) + 1;
        if (Scheme.numGrt.apply2(index2, Integer.valueOf(len$Pl1)) != Boolean.FALSE) {
            signalRuntimeError(Format.formatToString(0, "Insert list item: Attempt to insert item ~A into the list ~A.  The maximum valid item number is ~A.", index2, getDisplayRepresentation(yail$Mnlist), Integer.valueOf(len$Pl1)), "List index too large");
        }
        Object contents = yailListContents(yail$Mnlist);
        if (Scheme.numEqu.apply2(index2, Lit28) != Boolean.FALSE) {
            setYailListContents$Ex(yail$Mnlist, lists.cons(item, contents));
            return;
        }
        Object objApply2 = AddOp.$Mn.apply2(index2, Lit30);
        try {
            Object at$Mnitem = lists.listTail(contents, ((Number) objApply2).intValue());
            try {
                ((Pair) at$Mnitem).setCdr(lists.cons(item, lists.cdr.apply1(at$Mnitem)));
            } catch (ClassCastException e) {
                throw new WrongType(e, "set-cdr!", 1, at$Mnitem);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "list-tail", 2, objApply2);
        }
    }

    public static void yailListAppend$Ex(Object yail$Mnlist$MnA, Object yail$Mnlist$MnB) {
        Object objYailListContents = yailListContents(yail$Mnlist$MnA);
        try {
            Object objListTail = lists.listTail(yail$Mnlist$MnA, lists.length((LList) objYailListContents));
            try {
                ((Pair) objListTail).setCdr(lambda17listCopy(yailListContents(yail$Mnlist$MnB)));
            } catch (ClassCastException e) {
                throw new WrongType(e, "set-cdr!", 1, objListTail);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, objYailListContents);
        }
    }

    public static Object lambda17listCopy(Object l) {
        return lists.isNull(l) ? LList.Empty : lists.cons(lists.car.apply1(l), lambda17listCopy(lists.cdr.apply1(l)));
    }

    public static void yailListAddToList$Ex$V(Object yail$Mnlist, Object[] argsArray) {
        LList items = LList.makeList(argsArray, 0);
        yailListAppend$Ex(yail$Mnlist, Scheme.apply.apply2(make$Mnyail$Mnlist, items));
    }

    public static Boolean isYailListMember(Object object, Object yail$Mnlist) {
        Object result = lists.member(object, yailListContents(yail$Mnlist), yail$Mnequal$Qu);
        return result != Boolean.FALSE ? Boolean.TRUE : Boolean.FALSE;
    }

    public static Object yailListPickRandom(Object yail$Mnlist) {
        if (isYailListEmpty(yail$Mnlist) != Boolean.FALSE) {
            signalRuntimeError(Format.formatToString(0, "Pick random item: Attempt to pick a random element from an empty list" instanceof Object[] ? (Object[]) "Pick random item: Attempt to pick a random element from an empty list" : new Object[]{"Pick random item: Attempt to pick a random element from an empty list"}), "Invalid list operation");
        }
        return yailListGetItem(yail$Mnlist, randomInteger(Lit28, Integer.valueOf(yailListLength(yail$Mnlist))));
    }

    public static Object yailForEach(Object proc, Object yail$Mnlist) throws Throwable {
        Object verified$Mnlist = coerceToYailList(yail$Mnlist);
        if (verified$Mnlist == Lit2) {
            return signalRuntimeError(Format.formatToString(0, "The second argument to foreach is not a list.  The second argument is: ~A", getDisplayRepresentation(yail$Mnlist)), "Bad list argument to foreach");
        }
        Object arg0 = yailListContents(verified$Mnlist);
        while (arg0 != LList.Empty) {
            try {
                Pair arg02 = (Pair) arg0;
                Scheme.applyToArgs.apply2(proc, arg02.getCar());
                arg0 = arg02.getCdr();
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, arg0);
            }
        }
        return null;
    }

    public static Object yailListMap(Object proc, Object yail$Mnlist) {
        Object verified$Mnlist = coerceToYailList(yail$Mnlist);
        if (verified$Mnlist == Lit2) {
            return signalRuntimeError(Format.formatToString(0, "The second argument to map is not a list.  The second argument is: ~A", getDisplayRepresentation(yail$Mnlist)), "Bad list argument to map");
        }
        Object arg0 = yailListContents(verified$Mnlist);
        Object result = LList.Empty;
        while (arg0 != LList.Empty) {
            try {
                Pair arg02 = (Pair) arg0;
                arg0 = arg02.getCdr();
                result = Pair.make(Scheme.applyToArgs.apply2(proc, arg02.getCar()), result);
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, arg0);
            }
        }
        return kawaList$To$YailList(LList.reverseInPlace(result));
    }

    public static Object yailListFilter(Object pred, Object yail$Mnlist) {
        Object verified$Mnlist = coerceToYailList(yail$Mnlist);
        return verified$Mnlist == Lit2 ? signalRuntimeError(Format.formatToString(0, "The second argument to filter is not a list.  The second argument is: ~A", getDisplayRepresentation(yail$Mnlist)), "Bad list argument to filter") : kawaList$To$YailList(lambda18filter_(pred, yailListContents(verified$Mnlist)));
    }

    public static Object lambda18filter_(Object pred, Object lst) {
        return lists.isNull(lst) ? LList.Empty : Scheme.applyToArgs.apply2(pred, lists.car.apply1(lst)) != Boolean.FALSE ? lists.cons(lists.car.apply1(lst), lambda18filter_(pred, lists.cdr.apply1(lst))) : lambda18filter_(pred, lists.cdr.apply1(lst));
    }

    public static Object yailListReduce(Object ans, Object binop, Object yail$Mnlist) throws Throwable {
        Object verified$Mnlist = coerceToYailList(yail$Mnlist);
        if (verified$Mnlist == Lit2) {
            return signalRuntimeError(Format.formatToString(0, "The second argument to reduce is not a list.  The second argument is: ~A", getDisplayRepresentation(yail$Mnlist)), "Bad list argument to reduce");
        }
        Object accum = ans;
        for (Object lst = yailListContents(verified$Mnlist); !lists.isNull(lst); lst = lists.cdr.apply1(lst)) {
            accum = Scheme.applyToArgs.apply3(binop, accum, lists.car.apply1(lst));
        }
        Object lst2 = kawaList$To$YailList(accum);
        return lst2;
    }

    public static Object yailTypeof(Object val) {
        return misc.isBoolean(val) ? Lit7 : numbers.isNumber(val) ? Lit5 : strings.isString(val) ? Lit6 : isYailList(val) != Boolean.FALSE ? Lit8 : val instanceof Component ? Lit11 : signalRuntimeError(Format.formatToString(0, "typeof called with unexpected value: ~A", getDisplayRepresentation(val)), "Bad arguement to yail-typeof");
    }

    public static Object yailIndexof(Object element, Object lst) {
        return yailListIndex(element, lst);
    }

    public static boolean isTypeLt(Object type1, Object type2) {
        return ((Boolean) Scheme.numLss.apply2(yailIndexof(type1, Lit49), yailIndexof(type2, Lit49))).booleanValue();
    }

    public static Object isIsLt(Object val1, Object val2) throws Throwable {
        Object objIsComponentLt;
        Object type1 = yailTypeof(val1);
        Object type2 = yailTypeof(val2);
        boolean x = isTypeLt(type1, type2);
        if (x) {
            return x ? Boolean.TRUE : Boolean.FALSE;
        }
        boolean x2 = type1 == type2;
        if (!x2) {
            return x2 ? Boolean.TRUE : Boolean.FALSE;
        }
        if (type1 == Lit7) {
            objIsComponentLt = isBooleanLt(val1, val2);
        } else if (type1 == Lit5) {
            objIsComponentLt = Scheme.numLss.apply2(val1, val2);
        } else if (type1 == Lit6) {
            objIsComponentLt = strings.isString$Ls(val1, val2) ? Boolean.TRUE : Boolean.FALSE;
        } else if (type1 == Lit8) {
            objIsComponentLt = isListLt(val1, val2);
        } else {
            objIsComponentLt = type1 == Lit11 ? isComponentLt(val1, val2) : signalRuntimeError(Format.formatToString(0, "(islt? ~A ~A)", getDisplayRepresentation(val1), getDisplayRepresentation(val2)), "Shouldn't happen");
        }
        return objIsComponentLt;
    }

    public static Object isIsEq(Object val1, Object val2) {
        Object type1 = yailTypeof(val1);
        Object type2 = yailTypeof(val2);
        boolean x = type1 == type2;
        if (!x) {
            return x ? Boolean.TRUE : Boolean.FALSE;
        }
        if (type1 == Lit7) {
            return isBooleanEq(val1, val2);
        }
        if (type1 == Lit5) {
            return Scheme.numEqu.apply2(val1, val2);
        }
        if (type1 == Lit6) {
            return strings.isString$Eq(val1, val2) ? Boolean.TRUE : Boolean.FALSE;
        }
        if (type1 == Lit8) {
            return isListEq(val1, val2);
        }
        return type1 == Lit11 ? isComponentEq(val1, val2) : signalRuntimeError(Format.formatToString(0, "(islt? ~A ~A)", getDisplayRepresentation(val1), getDisplayRepresentation(val2)), "Shouldn't happen");
    }

    public static Object isIsLeq(Object val1, Object val2) throws Throwable {
        Object objIsComponentLeq;
        Object type1 = yailTypeof(val1);
        Object type2 = yailTypeof(val2);
        boolean x = isTypeLt(type1, type2);
        if (x) {
            return x ? Boolean.TRUE : Boolean.FALSE;
        }
        boolean x2 = type1 == type2;
        if (!x2) {
            return x2 ? Boolean.TRUE : Boolean.FALSE;
        }
        if (type1 == Lit7) {
            objIsComponentLeq = isBooleanLeq(val1, val2);
        } else if (type1 == Lit5) {
            objIsComponentLeq = Scheme.numLEq.apply2(val1, val2);
        } else if (type1 == Lit6) {
            objIsComponentLeq = strings.isString$Ls$Eq(val1, val2) ? Boolean.TRUE : Boolean.FALSE;
        } else if (type1 == Lit8) {
            objIsComponentLeq = isListLeq(val1, val2);
        } else {
            objIsComponentLeq = type1 == Lit11 ? isComponentLeq(val1, val2) : signalRuntimeError(Format.formatToString(0, "(isleq? ~A ~A)", getDisplayRepresentation(val1), getDisplayRepresentation(val2)), "Shouldn't happen");
        }
        return objIsComponentLeq;
    }

    public static Object isBooleanLt(Object val1, Object val2) {
        try {
            int i = ((val1 != Boolean.FALSE ? 1 : 0) + 1) & 1;
            return i != 0 ? val2 : i != 0 ? Boolean.TRUE : Boolean.FALSE;
        } catch (ClassCastException e) {
            throw new WrongType(e, "x", -2, val1);
        }
    }

    public static Object isBooleanEq(Object val1, Object val2) {
        Object x = val1 != Boolean.FALSE ? val2 : val1;
        if (x != Boolean.FALSE) {
            return x;
        }
        try {
            int i = ((val1 != Boolean.FALSE ? 1 : 0) + 1) & 1;
            return i != 0 ? val2 != Boolean.FALSE ? Boolean.FALSE : Boolean.TRUE : i != 0 ? Boolean.TRUE : Boolean.FALSE;
        } catch (ClassCastException e) {
            throw new WrongType(e, "x", -2, val1);
        }
    }

    public static Object isBooleanLeq(Object val1, Object val2) {
        return (val1 == Boolean.FALSE ? val1 == Boolean.FALSE : val2 != Boolean.FALSE) ? Boolean.TRUE : Boolean.FALSE;
    }

    public static Object isListLt(Object y1, Object y2) throws Throwable {
        Object lst1 = yailListContents(y1);
        Object lst2 = yailListContents(y2);
        while (!lists.isNull(lst1)) {
            if (lists.isNull(lst2)) {
                return Boolean.FALSE;
            }
            if (isIsLt(lists.car.apply1(lst1), lists.car.apply1(lst2)) != Boolean.FALSE) {
                return Boolean.TRUE;
            }
            if (isIsEq(lists.car.apply1(lst1), lists.car.apply1(lst2)) == Boolean.FALSE) {
                return Boolean.FALSE;
            }
            lst1 = lists.cdr.apply1(lst1);
            lst2 = lists.cdr.apply1(lst2);
        }
        return lists.isNull(lst2) ? Boolean.FALSE : Boolean.TRUE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:?, code lost:
    
        return java.lang.Boolean.TRUE;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0033 A[LOOP:0: B:3:0x000c->B:12:0x0033, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0040 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object isListEq(java.lang.Object r5, java.lang.Object r6) throws java.lang.Throwable {
        /*
            java.lang.Object r0 = yailListContents(r5)
            java.lang.Object r1 = yailListContents(r6)
            r2 = 0
        Lc:
            boolean r3 = kawa.lib.lists.isNull(r0)
            r2 = r3
            if (r2 == 0) goto L1a
            boolean r3 = kawa.lib.lists.isNull(r1)
            if (r3 == 0) goto L1f
            goto L1c
        L1a:
            if (r2 == 0) goto L1f
        L1c:
            java.lang.Boolean r2 = java.lang.Boolean.TRUE
            goto L42
        L1f:
            gnu.expr.GenericProc r3 = kawa.lib.lists.car
            java.lang.Object r3 = r3.apply1(r0)
            gnu.expr.GenericProc r4 = kawa.lib.lists.car
            java.lang.Object r4 = r4.apply1(r1)
            java.lang.Object r3 = isIsEq(r3, r4)
            java.lang.Boolean r4 = java.lang.Boolean.FALSE
            if (r3 == r4) goto L40
            gnu.expr.GenericProc r3 = kawa.lib.lists.cdr
            java.lang.Object r0 = r3.apply1(r0)
            gnu.expr.GenericProc r3 = kawa.lib.lists.cdr
            java.lang.Object r1 = r3.apply1(r1)
            goto Lc
        L40:
            java.lang.Boolean r2 = java.lang.Boolean.FALSE
        L42:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.youngandroid.runtime.isListEq(java.lang.Object, java.lang.Object):java.lang.Object");
    }

    public static Object yailListNecessary(Object y1) {
        return isYailList(y1) != Boolean.FALSE ? yailListContents(y1) : y1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:?, code lost:
    
        return java.lang.Boolean.TRUE;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x001d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object isListLeq(java.lang.Object r5, java.lang.Object r6) throws java.lang.Throwable {
        /*
            java.lang.Object r0 = yailListNecessary(r5)
            java.lang.Object r1 = yailListNecessary(r6)
            r2 = 0
        Lc:
            boolean r3 = kawa.lib.lists.isNull(r0)
            r2 = r3
            if (r2 == 0) goto L1a
            boolean r3 = kawa.lib.lists.isNull(r1)
            if (r3 == 0) goto L1d
            goto L1c
        L1a:
            if (r2 == 0) goto L1d
        L1c:
            goto L23
        L1d:
            boolean r3 = kawa.lib.lists.isNull(r0)
            if (r3 == 0) goto L26
        L23:
            java.lang.Boolean r2 = java.lang.Boolean.TRUE
            goto L69
        L26:
            boolean r3 = kawa.lib.lists.isNull(r1)
            if (r3 == 0) goto L2f
            java.lang.Boolean r2 = java.lang.Boolean.FALSE
            goto L69
        L2f:
            gnu.expr.GenericProc r3 = kawa.lib.lists.car
            java.lang.Object r3 = r3.apply1(r0)
            gnu.expr.GenericProc r4 = kawa.lib.lists.car
            java.lang.Object r4 = r4.apply1(r1)
            java.lang.Object r3 = isIsLt(r3, r4)
            java.lang.Boolean r4 = java.lang.Boolean.FALSE
            if (r3 == r4) goto L46
            java.lang.Boolean r2 = java.lang.Boolean.TRUE
            goto L69
        L46:
            gnu.expr.GenericProc r3 = kawa.lib.lists.car
            java.lang.Object r3 = r3.apply1(r0)
            gnu.expr.GenericProc r4 = kawa.lib.lists.car
            java.lang.Object r4 = r4.apply1(r1)
            java.lang.Object r3 = isIsEq(r3, r4)
            java.lang.Boolean r4 = java.lang.Boolean.FALSE
            if (r3 == r4) goto L67
            gnu.expr.GenericProc r3 = kawa.lib.lists.cdr
            java.lang.Object r0 = r3.apply1(r0)
            gnu.expr.GenericProc r3 = kawa.lib.lists.cdr
            java.lang.Object r1 = r3.apply1(r1)
            goto Lc
        L67:
            java.lang.Boolean r2 = java.lang.Boolean.FALSE
        L69:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.youngandroid.runtime.isListLeq(java.lang.Object, java.lang.Object):java.lang.Object");
    }

    public static Object isComponentLt(Object comp1, Object comp2) {
        boolean x = strings.isString$Ls(comp1.getClass().getSimpleName(), comp2.getClass().getSimpleName());
        if (x) {
            return x ? Boolean.TRUE : Boolean.FALSE;
        }
        boolean x2 = strings.isString$Eq(comp1.getClass().getSimpleName(), comp2.getClass().getSimpleName());
        return x2 ? comp1.hashCode() < comp2.hashCode() ? Boolean.TRUE : Boolean.FALSE : x2 ? Boolean.TRUE : Boolean.FALSE;
    }

    public static Object isComponentEq(Object comp1, Object comp2) {
        boolean x = strings.isString$Eq(comp1.getClass().getSimpleName(), comp2.getClass().getSimpleName());
        return x ? comp1.hashCode() == comp2.hashCode() ? Boolean.TRUE : Boolean.FALSE : x ? Boolean.TRUE : Boolean.FALSE;
    }

    public static Object isComponentLeq(Object comp1, Object comp2) {
        boolean x = strings.isString$Ls(comp1.getClass().getSimpleName(), comp2.getClass().getSimpleName());
        if (x) {
            return x ? Boolean.TRUE : Boolean.FALSE;
        }
        boolean x2 = strings.isString$Eq(comp1.getClass().getSimpleName(), comp2.getClass().getSimpleName());
        return x2 ? comp1.hashCode() <= comp2.hashCode() ? Boolean.TRUE : Boolean.FALSE : x2 ? Boolean.TRUE : Boolean.FALSE;
    }

    public static Object yailTake(Object n, Object xs) throws Throwable {
        Object zs = LList.Empty;
        Object n2 = n;
        Object xs2 = xs;
        while (true) {
            Object objApply2 = Scheme.numEqu.apply2(n2, Lit29);
            try {
                boolean x = ((Boolean) objApply2).booleanValue();
                if (x) {
                    if (!x) {
                        Object objApply22 = AddOp.$Mn.apply2(n2, Lit28);
                        Object objApply1 = lists.cdr.apply1(xs2);
                        zs = lists.cons(lists.car.apply1(xs2), zs);
                        xs2 = objApply1;
                        n2 = objApply22;
                    }
                    try {
                        return lists.reverse((LList) zs);
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "reverse", 1, zs);
                    }
                }
                if (!lists.isNull(xs2)) {
                    Object objApply222 = AddOp.$Mn.apply2(n2, Lit28);
                    Object objApply12 = lists.cdr.apply1(xs2);
                    zs = lists.cons(lists.car.apply1(xs2), zs);
                    xs2 = objApply12;
                    n2 = objApply222;
                }
                return lists.reverse((LList) zs);
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "x", -2, objApply2);
            }
        }
    }

    public static Object yailDrop(Object n, Object xs) throws Throwable {
        Object objApply2 = Scheme.numEqu.apply2(n, Lit29);
        try {
            boolean x = ((Boolean) objApply2).booleanValue();
            return (!x ? lists.isNull(xs) : x) ? yailDrop(AddOp.$Mn.apply2(n, Lit28), lists.cdr.apply1(xs)) : xs;
        } catch (ClassCastException e) {
            throw new WrongType(e, "x", -2, objApply2);
        }
    }

    public static Object yailMerge(Object lessthan$Qu, Object lst1, Object lst2) {
        if (lists.isNull(lst1)) {
            return lst2;
        }
        if (lists.isNull(lst2)) {
            return lst1;
        }
        return Scheme.applyToArgs.apply3(lessthan$Qu, lists.car.apply1(lst1), lists.car.apply1(lst2)) != Boolean.FALSE ? lists.cons(lists.car.apply1(lst1), yailMerge(lessthan$Qu, lists.cdr.apply1(lst1), lst2)) : lists.cons(lists.car.apply1(lst2), yailMerge(lessthan$Qu, lst1, lists.cdr.apply1(lst2)));
    }

    public static Object yailMergesort(Object lessthan$Qu, Object lst) {
        if (lists.isNull(lst) || lists.isNull(lists.cdr.apply1(lst))) {
            return lst;
        }
        try {
            try {
                return yailMerge(lessthan$Qu, yailMergesort(lessthan$Qu, yailTake(Integer.valueOf(lists.length((LList) lst) / 2), lst)), yailMergesort(lessthan$Qu, yailDrop(Integer.valueOf(lists.length((LList) lst) / 2), lst)));
            } catch (ClassCastException e) {
                throw new WrongType(e, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, lst);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, lst);
        }
    }

    public static Object yailListSort(Object y1) {
        if (isYailListEmpty(y1) != Boolean.FALSE) {
            return new YailList();
        }
        if (!lists.isPair(y1)) {
            return y1;
        }
        return kawaList$To$YailList(yailMergesort(is$Mnleq$Qu, yailListContents(y1)));
    }

    public static Object yailListSortComparator(Object lessthan$Qu, Object y1) {
        if (isYailListEmpty(y1) != Boolean.FALSE) {
            return new YailList();
        }
        if (!lists.isPair(y1)) {
            return y1;
        }
        return kawaList$To$YailList(yailMergesort(lessthan$Qu, yailListContents(y1)));
    }

    public static Object mergeKey(Object lessthan$Qu, Object key, Object lst1, Object lst2) {
        if (lists.isNull(lst1)) {
            return lst2;
        }
        if (lists.isNull(lst2)) {
            return lst1;
        }
        return Scheme.applyToArgs.apply3(lessthan$Qu, Scheme.applyToArgs.apply2(key, lists.car.apply1(lst1)), Scheme.applyToArgs.apply2(key, lists.car.apply1(lst2))) != Boolean.FALSE ? lists.cons(lists.car.apply1(lst1), mergeKey(lessthan$Qu, key, lists.cdr.apply1(lst1), lst2)) : lists.cons(lists.car.apply1(lst2), mergeKey(lessthan$Qu, key, lst1, lists.cdr.apply1(lst2)));
    }

    public static Object mergesortKey(Object lessthan$Qu, Object key, Object lst) {
        if (lists.isNull(lst) || lists.isNull(lists.cdr.apply1(lst))) {
            return lst;
        }
        try {
            try {
                return mergeKey(lessthan$Qu, key, mergesortKey(lessthan$Qu, key, yailTake(Integer.valueOf(lists.length((LList) lst) / 2), lst)), mergesortKey(lessthan$Qu, key, yailDrop(Integer.valueOf(lists.length((LList) lst) / 2), lst)));
            } catch (ClassCastException e) {
                throw new WrongType(e, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, lst);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, lst);
        }
    }

    public static Object yailListSortKey(Object key, Object y1) {
        if (isYailListEmpty(y1) != Boolean.FALSE) {
            return new YailList();
        }
        if (!lists.isPair(y1)) {
            return y1;
        }
        return kawaList$To$YailList(mergesortKey(is$Mnleq$Qu, key, yailListContents(y1)));
    }

    public static Object listNumberOnly(Object lst) {
        return lists.isNull(lst) ? LList.Empty : numbers.isNumber(lists.car.apply1(lst)) ? lists.cons(lists.car.apply1(lst), listNumberOnly(lists.cdr.apply1(lst))) : listNumberOnly(lists.cdr.apply1(lst));
    }

    public static Object listMin(Object lessthan$Qu, Object min, Object lst) {
        if (lists.isNull(lst)) {
            return min;
        }
        return listMin(lessthan$Qu, Scheme.applyToArgs.apply3(lessthan$Qu, min, lists.car.apply1(lst)) != Boolean.FALSE ? min : lists.car.apply1(lst), lists.cdr.apply1(lst));
    }

    public static Object yailListMinComparator(Object lessthan$Qu, Object y1) {
        if (!lists.isPair(y1)) {
            return y1;
        }
        if (isYailListEmpty(y1) != Boolean.FALSE) {
            return makeYailList$V(new Object[0]);
        }
        return listMin(lessthan$Qu, lists.car.apply1(yailListContents(y1)), lists.cdr.apply1(yailListContents(y1)));
    }

    public static Object listMax(Object lessthan$Qu, Object max, Object lst) throws Throwable {
        Object objApply1;
        if (lists.isNull(lst)) {
            return max;
        }
        if (Scheme.applyToArgs.apply3(lessthan$Qu, max, lists.car.apply1(lst)) == Boolean.FALSE) {
            objApply1 = max;
        } else {
            objApply1 = lists.car.apply1(lst);
        }
        return listMax(lessthan$Qu, objApply1, lists.cdr.apply1(lst));
    }

    public static Object yailListMaxComparator(Object lessthan$Qu, Object y1) {
        if (!lists.isPair(y1)) {
            return y1;
        }
        if (isYailListEmpty(y1) != Boolean.FALSE) {
            return makeYailList$V(new Object[0]);
        }
        return listMax(lessthan$Qu, lists.car.apply1(yailListContents(y1)), lists.cdr.apply1(yailListContents(y1)));
    }

    public static Object yailListButFirst(Object yail$Mnlist) {
        Object contents = yailListContents(yail$Mnlist);
        if (lists.isNull(contents)) {
            return signalRuntimeError(Format.formatToString(0, "The list cannot be empty" instanceof Object[] ? (Object[]) "The list cannot be empty" : new Object[]{"The list cannot be empty"}), "Bad list argument to but-first");
        }
        return lists.isNull(lists.cdr.apply1(contents)) ? makeYailList$V(new Object[0]) : kawaList$To$YailList(lists.cdr.apply1(contents));
    }

    public static Object butLast(Object lst) {
        if (!lists.isNull(lst) && !lists.isNull(lists.cdr.apply1(lst))) {
            return lists.cons(lists.car.apply1(lst), butLast(lists.cdr.apply1(lst)));
        }
        return LList.Empty;
    }

    public static Object yailListButLast(Object yail$Mnlist) {
        Object contents = yailListContents(yail$Mnlist);
        if (lists.isNull(contents)) {
            return signalRuntimeError(Format.formatToString(0, "The list cannot be empty" instanceof Object[] ? (Object[]) "The list cannot be empty" : new Object[]{"The list cannot be empty"}), "Bad list argument to but-last");
        }
        return kawaList$To$YailList(butLast(yailListContents(yail$Mnlist)));
    }

    public static Object yailListSlice(Object yail$Mnlist, Object index1, Object index2) throws Throwable {
        Object verified$Mnindex1 = coerceToNumber(index1);
        Object verified$Mnindex2 = coerceToNumber(index2);
        if (verified$Mnindex1 == Lit2) {
            signalRuntimeError(Format.formatToString(0, "Insert list item: index (~A) is not a number", getDisplayRepresentation(verified$Mnindex1)), "Bad list verified-index1");
        }
        if (verified$Mnindex2 == Lit2) {
            signalRuntimeError(Format.formatToString(0, "Insert list item: index (~A) is not a number", getDisplayRepresentation(verified$Mnindex2)), "Bad list verified-index2");
        }
        if (Scheme.numLss.apply2(verified$Mnindex1, Lit28) != Boolean.FALSE) {
            signalRuntimeError(Format.formatToString(0, "Slice list: Attempt to slice list ~A at index ~A. The minimum valid index number is 1.", getDisplayRepresentation(yail$Mnlist), verified$Mnindex2), "List index smaller than 1");
        }
        int len$Pl1 = yailListLength(yail$Mnlist) + 1;
        if (Scheme.numGrt.apply2(verified$Mnindex2, Integer.valueOf(len$Pl1)) != Boolean.FALSE) {
            signalRuntimeError(Format.formatToString(0, "Slice list: Attempt to slice list ~A at index ~A.  The maximum valid index number is ~A.", getDisplayRepresentation(yail$Mnlist), verified$Mnindex2, Integer.valueOf(len$Pl1)), "List index too large");
        }
        return kawaList$To$YailList(yailTake(AddOp.$Mn.apply2(verified$Mnindex2, verified$Mnindex1), yailDrop(AddOp.$Mn.apply2(verified$Mnindex1, Lit28), yailListContents(yail$Mnlist))));
    }

    public static Object yailForRange(Object proc, Object start, Object end, Object step) throws Throwable {
        Object nstart = coerceToNumber(start);
        Object nend = coerceToNumber(end);
        Object nstep = coerceToNumber(step);
        if (nstart == Lit2) {
            signalRuntimeError(Format.formatToString(0, "For range: the start value -- ~A -- is not a number", getDisplayRepresentation(start)), "Bad start value");
        }
        if (nend == Lit2) {
            signalRuntimeError(Format.formatToString(0, "For range: the end value -- ~A -- is not a number", getDisplayRepresentation(end)), "Bad end value");
        }
        if (nstep == Lit2) {
            signalRuntimeError(Format.formatToString(0, "For range: the step value -- ~A -- is not a number", getDisplayRepresentation(step)), "Bad step value");
        }
        return yailForRangeWithNumericCheckedArgs(proc, nstart, nend, nstep);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0052, code lost:
    
        if (r1 != false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x007d, code lost:
    
        if (r1 != false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:?, code lost:
    
        return null;
     */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00c1 A[LOOP:0: B:53:0x00b7->B:57:0x00c1, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object yailForRangeWithNumericCheckedArgs(java.lang.Object r5, java.lang.Object r6, java.lang.Object r7, java.lang.Object r8) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 235
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.youngandroid.runtime.yailForRangeWithNumericCheckedArgs(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object):java.lang.Object");
    }

    @Override // gnu.expr.ModuleBody
    public Object apply4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4) {
        switch (moduleMethod.selector) {
            case 18:
                return addComponentWithinRepl(obj, obj2, obj3, obj4);
            case 26:
                return setAndCoerceProperty$Ex(obj, obj2, obj3, obj4);
            case 50:
                return callComponentMethod(obj, obj2, obj3, obj4);
            case 52:
                return callComponentMethodWithBlockingContinuation(obj, obj2, obj3, obj4);
            case 55:
                return callComponentTypeMethodWithBlockingContinuation(obj, obj2, obj3, obj4);
            case 56:
                return callYailPrimitive(obj, obj2, obj3, obj4);
            case 66:
                return callWithCoercedArgs(obj, obj2, obj3, obj4);
            case 67:
                return $PcSetAndCoerceProperty$Ex(obj, obj2, obj3, obj4);
            case 206:
                return mergeKey(obj, obj2, obj3, obj4);
            case 218:
                return yailForRange(obj, obj2, obj3, obj4);
            case 219:
                return yailForRangeWithNumericCheckedArgs(obj, obj2, obj3, obj4);
            default:
                return super.apply4(moduleMethod, obj, obj2, obj3, obj4);
        }
    }

    public static Object yailNumberRange(Object low, Object high) {
        try {
            try {
                return kawaList$To$YailList(lambda19loop(Arithmetic.toExact(numbers.ceiling(LangObjType.coerceRealNum(low))), Arithmetic.toExact(numbers.floor(LangObjType.coerceRealNum(high)))));
            } catch (ClassCastException e) {
                throw new WrongType(e, "floor", 1, high);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "ceiling", 1, low);
        }
    }

    public static Object lambda19loop(Object a, Object b) {
        return Scheme.numGrt.apply2(a, b) != Boolean.FALSE ? LList.Empty : lists.cons(a, lambda19loop(AddOp.$Pl.apply2(a, Lit28), b));
    }

    public static Object yailAlistLookup(Object key, Object yail$Mnlist$Mnof$Mnpairs, Object obj) throws Throwable {
        androidLog(Format.formatToString(0, "List alist lookup key is  ~A and table is ~A", key, yail$Mnlist$Mnof$Mnpairs));
        for (Object pairs$Mnto$Mncheck = yailListContents(yail$Mnlist$Mnof$Mnpairs); !lists.isNull(pairs$Mnto$Mncheck); pairs$Mnto$Mncheck = lists.cdr.apply1(pairs$Mnto$Mncheck)) {
            if (isPairOk(lists.car.apply1(pairs$Mnto$Mncheck)) == Boolean.FALSE) {
                return signalRuntimeError(Format.formatToString(0, "Lookup in pairs: the list ~A is not a well-formed list of pairs", getDisplayRepresentation(yail$Mnlist$Mnof$Mnpairs)), "Invalid list of pairs");
            }
            if (isYailEqual(key, lists.car.apply1(yailListContents(lists.car.apply1(pairs$Mnto$Mncheck)))) != Boolean.FALSE) {
                return lists.cadr.apply1(yailListContents(lists.car.apply1(pairs$Mnto$Mncheck)));
            }
        }
        return obj;
    }

    public static Object isPairOk(Object candidate$Mnpair) {
        Object x = isYailList(candidate$Mnpair);
        if (x == Boolean.FALSE) {
            return x;
        }
        Object objYailListContents = yailListContents(candidate$Mnpair);
        try {
            return lists.length((LList) objYailListContents) == 2 ? Boolean.TRUE : Boolean.FALSE;
        } catch (ClassCastException e) {
            throw new WrongType(e, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, objYailListContents);
        }
    }

    public static Object yailListJoinWithSeparator(Object yail$Mnlist, Object separator) {
        return joinStrings(yailListContents(yail$Mnlist), separator);
    }

    public static YailDictionary makeYailDictionary$V(Object[] argsArray) {
        LList pairs = LList.makeList(argsArray, 0);
        return YailDictionary.makeDictionary(pairs);
    }

    public static YailList makeDictionaryPair(Object key, Object value) {
        return makeYailList$V(new Object[]{key, value});
    }

    public static Object yailDictionarySetPair(Object key, Object yail$Mndictionary, Object value) {
        return ((YailDictionary) yail$Mndictionary).put(key, value);
    }

    public static Object yailDictionaryDeletePair(Object yail$Mndictionary, Object key) {
        return ((YailDictionary) yail$Mndictionary).remove(key);
    }

    public static Object yailDictionaryLookup(Object key, Object yail$Mndictionary, Object obj) throws Throwable {
        Object result;
        Object objYailDictionaryLookup;
        if (yail$Mndictionary instanceof YailList) {
            result = yailAlistLookup(key, yail$Mndictionary, obj);
        } else {
            result = yail$Mndictionary instanceof YailDictionary ? ((YailDictionary) yail$Mndictionary).get(key) : obj;
        }
        if (result != null) {
            return result;
        }
        if (isEnum(key) == Boolean.FALSE) {
            objYailDictionaryLookup = obj;
        } else {
            objYailDictionaryLookup = yailDictionaryLookup(sanitizeComponentData(Scheme.applyToArgs.apply1(GetNamedPart.getNamedPart.apply2(key, Lit22))), yail$Mndictionary, obj);
        }
        Object result2 = objYailDictionaryLookup;
        return result2;
    }

    public static Object yailDictionaryRecursiveLookup(Object keys, Object yail$Mndictionary, Object obj) {
        YailDictionary yailDictionary = (YailDictionary) yail$Mndictionary;
        Object objYailListContents = yailListContents(keys);
        try {
            Object result = yailDictionary.getObjectAtKeyPath((List) objYailListContents);
            return result == null ? obj : result;
        } catch (ClassCastException e) {
            throw new WrongType(e, "com.google.appinventor.components.runtime.util.YailDictionary.getObjectAtKeyPath(java.util.List)", 2, objYailListContents);
        }
    }

    public static YailList yailDictionaryWalk(Object path, Object dict) {
        try {
            YailObject yailObject = (YailObject) dict;
            Object objYailListContents = yailListContents(path);
            try {
                return YailList.makeList((List) YailDictionary.walkKeyPath(yailObject, (List) objYailListContents));
            } catch (ClassCastException e) {
                throw new WrongType(e, "com.google.appinventor.components.runtime.util.YailDictionary.walkKeyPath(com.google.appinventor.components.runtime.util.YailObject,java.util.List)", 2, objYailListContents);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "com.google.appinventor.components.runtime.util.YailDictionary.walkKeyPath(com.google.appinventor.components.runtime.util.YailObject,java.util.List)", 1, dict);
        }
    }

    public static Object yailDictionaryRecursiveSet(Object keys, Object yail$Mndictionary, Object value) {
        return Scheme.applyToArgs.apply3(GetNamedPart.getNamedPart.apply2(yail$Mndictionary, Lit50), yailListContents(keys), value);
    }

    public static YailList yailDictionaryGetKeys(Object yail$Mndictionary) {
        return YailList.makeList((Set) ((YailDictionary) yail$Mndictionary).keySet());
    }

    public static YailList yailDictionaryGetValues(Object yail$Mndictionary) {
        return YailList.makeList(((YailDictionary) yail$Mndictionary).values());
    }

    public static boolean yailDictionaryIsKeyIn(Object key, Object yail$Mndictionary) {
        return ((YailDictionary) yail$Mndictionary).containsKey(key);
    }

    public static int yailDictionaryLength(Object yail$Mndictionary) {
        return ((YailDictionary) yail$Mndictionary).size();
    }

    public static Object yailDictionaryAlistToDict(Object alist) throws Throwable {
        Object pairs$Mnto$Mncheck = yailListContents(alist);
        while (true) {
            if (!lists.isNull(pairs$Mnto$Mncheck)) {
                if (isPairOk(lists.car.apply1(pairs$Mnto$Mncheck)) == Boolean.FALSE) {
                    signalRuntimeError(Format.formatToString(0, "List of pairs to dict: the list ~A is not a well-formed list of pairs", getDisplayRepresentation(alist)), "Invalid list of pairs");
                    break;
                }
                pairs$Mnto$Mncheck = lists.cdr.apply1(pairs$Mnto$Mncheck);
            }
        }
        try {
            return YailDictionary.alistToDict((YailList) alist);
        } catch (ClassCastException e) {
            throw new WrongType(e, "com.google.appinventor.components.runtime.util.YailDictionary.alistToDict(com.google.appinventor.components.runtime.util.YailList)", 1, alist);
        }
    }

    public static Object yailDictionaryDictToAlist(Object dict) {
        try {
            return YailDictionary.dictToAlist((YailDictionary) dict);
        } catch (ClassCastException e) {
            throw new WrongType(e, "com.google.appinventor.components.runtime.util.YailDictionary.dictToAlist(com.google.appinventor.components.runtime.util.YailDictionary)", 1, dict);
        }
    }

    public static Object yailDictionaryCopy(Object yail$Mndictionary) {
        return ((YailDictionary) yail$Mndictionary).clone();
    }

    public static void yailDictionaryCombineDicts(Object first$Mndictionary, Object second$Mndictionary) {
        try {
            ((YailDictionary) first$Mndictionary).putAll((Map) second$Mndictionary);
        } catch (ClassCastException e) {
            throw new WrongType(e, "com.google.appinventor.components.runtime.util.YailDictionary.putAll(java.util.Map)", 2, second$Mndictionary);
        }
    }

    public static Object isYailDictionary(Object x) {
        return x instanceof YailDictionary ? Boolean.TRUE : Boolean.FALSE;
    }

    public static Object makeYailMatrix$V(Object[] argsArray) {
        Object objMakeList = LList.makeList(argsArray, 0);
        return YailMatrix.makeMatrix(objMakeList instanceof Object[] ? (Object[]) objMakeList : new Object[]{objMakeList});
    }

    public static YailMatrix makeYailMatrixMultidim(Object dims, Object init) {
        return YailMatrix.makeMultidimMatrix(dims, init);
    }

    public static Object yailMatrixGetRow(Object matrix, Object row) {
        try {
            return Scheme.apply.apply2(make$Mnyail$Mnlist, ((YailMatrix) matrix).getRow(((Number) row).intValue()));
        } catch (ClassCastException e) {
            throw new WrongType(e, "com.google.appinventor.components.runtime.util.YailMatrix.getRow(int)", 2, row);
        }
    }

    public static Object yailMatrixGetColumn(Object matrix, Object col) {
        try {
            return Scheme.apply.apply2(make$Mnyail$Mnlist, ((YailMatrix) matrix).getColumn(((Number) col).intValue()));
        } catch (ClassCastException e) {
            throw new WrongType(e, "com.google.appinventor.components.runtime.util.YailMatrix.getColumn(int)", 2, col);
        }
    }

    public static Object yailMatrixGetCell$V(Object matrix, Object[] argsArray) {
        LList idxs = LList.makeList(argsArray, 0);
        return Scheme.apply.apply3(Lit51, (YailMatrix) matrix, idxs);
    }

    public static Object yailMatrixSetCell$Ex$V(Object matrix, Object value, Object[] argsArray) {
        LList idxs = LList.makeList(argsArray, 0);
        return Scheme.apply.apply4(Lit52, (YailMatrix) matrix, value, idxs);
    }

    public static Object isYailMatrix(Object x) {
        return x instanceof YailMatrix ? Boolean.TRUE : Boolean.FALSE;
    }

    public static Object yailMatrixGetDims(Object matrix) {
        return kawaList$To$YailList(((YailMatrix) matrix).getDimensions());
    }

    public static YailMatrix yailMatrixInverse(Object matrix) {
        return YailMatrix.inverse((YailMatrix) matrix);
    }

    public static YailMatrix yailMatrixTranspose(Object matrix) {
        return YailMatrix.transpose((YailMatrix) matrix);
    }

    public static YailMatrix yailMatrixRotateLeft(Object matrix) {
        return YailMatrix.rotateLeft((YailMatrix) matrix);
    }

    public static YailMatrix yailMatrixRotateRight(Object matrix) {
        return YailMatrix.rotateRight((YailMatrix) matrix);
    }

    public static YailMatrix yailMatrixAdd$V(Object[] argsArray) {
        Object objMakeList = LList.makeList(argsArray, 0);
        return YailMatrix.add(objMakeList instanceof Object[] ? (Object[]) objMakeList : new Object[]{objMakeList});
    }

    public static YailMatrix yailMatrixSubtract(Object matrix1, Object matrix2) {
        return YailMatrix.subtract((YailMatrix) matrix1, (YailMatrix) matrix2);
    }

    public static YailMatrix yailMatrixMultiply$V(Object[] argsArray) {
        Object objMakeList = LList.makeList(argsArray, 0);
        return YailMatrix.multiply(objMakeList instanceof Object[] ? (Object[]) objMakeList : new Object[]{objMakeList});
    }

    public static YailMatrix yailMatrixPower(Object matrix, Object exponent) {
        try {
            return YailMatrix.power((YailMatrix) matrix, ((Number) exponent).intValue());
        } catch (ClassCastException e) {
            throw new WrongType(e, "com.google.appinventor.components.runtime.util.YailMatrix.power(com.google.appinventor.components.runtime.util.YailMatrix,int)", 2, exponent);
        }
    }

    public static Object yailMatrixToAlist(Object matrix) {
        try {
            return YailMatrix.matrixToAlist((YailMatrix) matrix);
        } catch (ClassCastException e) {
            throw new WrongType(e, "com.google.appinventor.components.runtime.util.YailMatrix.matrixToAlist(com.google.appinventor.components.runtime.util.YailMatrix)", 1, matrix);
        }
    }

    public static Object isYailMatrixEqual(Object matrix1, Object matrix2) {
        return YailMatrix.matrixEqual((YailMatrix) matrix1, (YailMatrix) matrix2) ? Boolean.TRUE : Boolean.FALSE;
    }

    public static YailProcedure createYailProcedure(Object x) {
        try {
            return YailProcedure.create((Procedure) x);
        } catch (ClassCastException e) {
            throw new WrongType(e, "com.google.appinventor.components.runtime.util.YailProcedure.create(gnu.mapping.Procedure)", 1, x);
        }
    }

    public static YailProcedure createYailProcedureWithName(Object x) {
        return YailProcedure.createWithName(x == null ? null : x.toString());
    }

    public static Object callYailProcedure$V(Object procedure, Object[] argsArray) {
        LList args = LList.makeList(argsArray, 0);
        try {
            return YailProcedure.callProcedure((YailProcedure) procedure, args);
        } catch (ClassCastException e) {
            throw new WrongType(e, "com.google.appinventor.components.runtime.util.YailProcedure.callProcedure(com.google.appinventor.components.runtime.util.YailProcedure,list)", 1, procedure);
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object applyN(ModuleMethod moduleMethod, Object[] objArr) {
        switch (moduleMethod.selector) {
            case 19:
                return call$MnInitializeOfComponents$V(objArr);
            case 30:
                return setAndCoercePropertyAndCheck$Ex(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4]);
            case 31:
                return symbolAppend$V(objArr);
            case 48:
                return lambda28(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4]);
            case 49:
                Object obj = objArr[0];
                Object obj2 = objArr[1];
                int length = objArr.length - 2;
                Object[] objArr2 = new Object[length];
                while (true) {
                    length--;
                    if (length < 0) {
                        return lambda29$V(obj, obj2, objArr2);
                    }
                    objArr2[length] = objArr[length + 2];
                }
                break;
            case 51:
                return callComponentMethodWithContinuation(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4]);
            case 53:
                return callComponentTypeMethod(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4]);
            case 54:
                return callComponentTypeMethodWithContinuation(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4]);
            case 106:
                return processAndDelayed$V(objArr);
            case 107:
                return processOrDelayed$V(objArr);
            case 162:
                return makeYailList$V(objArr);
            case 177:
                Object obj3 = objArr[0];
                int length2 = objArr.length - 1;
                Object[] objArr3 = new Object[length2];
                while (true) {
                    length2--;
                    if (length2 < 0) {
                        yailListAddToList$Ex$V(obj3, objArr3);
                        return Values.empty;
                    }
                    objArr3[length2] = objArr[length2 + 1];
                }
                break;
            case 224:
                return makeYailDictionary$V(objArr);
            case LispEscapeFormat.ESCAPE_NORMAL /* 241 */:
                return makeYailMatrix$V(objArr);
            case 245:
                Object obj4 = objArr[0];
                int length3 = objArr.length - 1;
                Object[] objArr4 = new Object[length3];
                while (true) {
                    length3--;
                    if (length3 < 0) {
                        return yailMatrixGetCell$V(obj4, objArr4);
                    }
                    objArr4[length3] = objArr[length3 + 1];
                }
                break;
            case 246:
                Object obj5 = objArr[0];
                Object obj6 = objArr[1];
                int length4 = objArr.length - 2;
                Object[] objArr5 = new Object[length4];
                while (true) {
                    length4--;
                    if (length4 < 0) {
                        return yailMatrixSetCell$Ex$V(obj5, obj6, objArr5);
                    }
                    objArr5[length4] = objArr[length4 + 2];
                }
                break;
            case Telnet.DO /* 253 */:
                return yailMatrixAdd$V(objArr);
            case 255:
                return yailMatrixMultiply$V(objArr);
            case 261:
                Object obj7 = objArr[0];
                int length5 = objArr.length - 1;
                Object[] objArr6 = new Object[length5];
                while (true) {
                    length5--;
                    if (length5 < 0) {
                        return callYailProcedure$V(obj7, objArr6);
                    }
                    objArr6[length5] = objArr[length5 + 1];
                }
                break;
            default:
                return super.applyN(moduleMethod, objArr);
        }
    }

    public static Object callYailProcedureInputList(Object procedure, Object inputlist) {
        try {
            try {
                return YailProcedure.callProcedure((YailProcedure) procedure, (LList) inputlist);
            } catch (ClassCastException e) {
                throw new WrongType(e, "com.google.appinventor.components.runtime.util.YailProcedure.callProcedure(com.google.appinventor.components.runtime.util.YailProcedure,list)", 2, inputlist);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "com.google.appinventor.components.runtime.util.YailProcedure.callProcedure(com.google.appinventor.components.runtime.util.YailProcedure,list)", 1, procedure);
        }
    }

    public static Object numArgsYailProcedure(Object procedure) {
        return Invoke.invokeStatic.apply3(YailProcedure, Lit53, procedure);
    }

    public static void runInBackground(Object procedure$Mnto$Mnrun, Object callback) {
        try {
            try {
                MultiThreadUtil.runInNewThread((YailProcedure) procedure$Mnto$Mnrun, (YailProcedure) callback);
            } catch (ClassCastException e) {
                throw new WrongType(e, "com.google.appinventor.components.runtime.util.MultiThreadUtil.runInNewThread(com.google.appinventor.components.runtime.util.YailProcedure,com.google.appinventor.components.runtime.util.YailProcedure)", 2, callback);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "com.google.appinventor.components.runtime.util.MultiThreadUtil.runInNewThread(com.google.appinventor.components.runtime.util.YailProcedure,com.google.appinventor.components.runtime.util.YailProcedure)", 1, procedure$Mnto$Mnrun);
        }
    }

    public static void runAfterPeriod(Object millis, Object procedure$Mnto$Mnrun) {
        try {
            try {
                MultiThreadUtil.runAfterPeriod(((Number) millis).longValue(), (YailProcedure) procedure$Mnto$Mnrun);
            } catch (ClassCastException e) {
                throw new WrongType(e, "com.google.appinventor.components.runtime.util.MultiThreadUtil.runAfterPeriod(long,com.google.appinventor.components.runtime.util.YailProcedure)", 2, procedure$Mnto$Mnrun);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "com.google.appinventor.components.runtime.util.MultiThreadUtil.runAfterPeriod(long,com.google.appinventor.components.runtime.util.YailProcedure)", 1, millis);
        }
    }

    public static Object makeDisjunct(Object x) throws Throwable {
        if (lists.isNull(lists.cdr.apply1(x))) {
            Object objApply1 = lists.car.apply1(x);
            return Pattern.quote(objApply1 != null ? objApply1.toString() : null);
        }
        Object objApply12 = lists.car.apply1(x);
        return strings.stringAppend(Pattern.quote(objApply12 != null ? objApply12.toString() : null), strings.stringAppend("|", makeDisjunct(lists.cdr.apply1(x))));
    }

    public static Object array$To$List(Object arr) {
        try {
            return insertYailListHeader(LList.makeList((Object[]) arr, 0));
        } catch (ClassCastException e) {
            throw new WrongType(e, "gnu.lists.LList.makeList(java.lang.Object[],int)", 1, arr);
        }
    }

    public static int stringStartsAt(Object text, Object piece) {
        return text.toString().indexOf(piece.toString()) + 1;
    }

    public static Boolean stringContains(Object text, Object piece) {
        return stringStartsAt(text, piece) == 0 ? Boolean.FALSE : Boolean.TRUE;
    }

    public static Object stringContainsAny(Object text, Object piece$Mnlist) throws Throwable {
        for (Object piece$Mnlist2 = yailListContents(piece$Mnlist); !lists.isNull(piece$Mnlist2); piece$Mnlist2 = lists.cdr.apply1(piece$Mnlist2)) {
            Boolean x = stringContains(text, lists.car.apply1(piece$Mnlist2));
            if (x != Boolean.FALSE) {
                return x;
            }
        }
        return Boolean.FALSE;
    }

    public static Object stringContainsAll(Object text, Object piece$Mnlist) throws Throwable {
        for (Object piece$Mnlist2 = yailListContents(piece$Mnlist); !lists.isNull(piece$Mnlist2); piece$Mnlist2 = lists.cdr.apply1(piece$Mnlist2)) {
            Boolean x = stringContains(text, lists.car.apply1(piece$Mnlist2));
            if (x == Boolean.FALSE) {
                return x;
            }
        }
        return Boolean.TRUE;
    }

    public static Object stringSplitAtFirst(Object text, Object at) {
        return array$To$List(text.toString().split(Pattern.quote(at == null ? null : at.toString()), 2));
    }

    public static Object stringSplitAtFirstOfAny(Object text, Object at) throws Throwable {
        if (lists.isNull(yailListContents(at))) {
            return signalRuntimeError("split at first of any: The list of places to split at is empty.", "Invalid text operation");
        }
        String string = text.toString();
        Object objMakeDisjunct = makeDisjunct(yailListContents(at));
        return array$To$List(string.split(objMakeDisjunct == null ? null : objMakeDisjunct.toString(), 2));
    }

    public static YailList stringSplit(Object text, Object at) {
        return JavaStringUtils.split(text == null ? null : text.toString(), Pattern.quote(at != null ? at.toString() : null));
    }

    public static Object stringSplitAtAny(Object text, Object at) throws Throwable {
        if (lists.isNull(yailListContents(at))) {
            return signalRuntimeError("split at any: The list of places to split at is empty.", "Invalid text operation");
        }
        String string = text.toString();
        Object objMakeDisjunct = makeDisjunct(yailListContents(at));
        return array$To$List(string.split(objMakeDisjunct == null ? null : objMakeDisjunct.toString(), -1));
    }

    public static Object stringSplitAtSpaces(Object text) {
        return array$To$List(text.toString().trim().split("\\s+", -1));
    }

    public static Object stringSubstring(Object wholestring, Object start, Object length) throws Throwable {
        try {
            int len = strings.stringLength((CharSequence) wholestring);
            if (Scheme.numLss.apply2(start, Lit28) != Boolean.FALSE) {
                return signalRuntimeError(Format.formatToString(0, "Segment: Start is less than 1 (~A).", start), "Invalid text operation");
            }
            if (Scheme.numLss.apply2(length, Lit29) != Boolean.FALSE) {
                return signalRuntimeError(Format.formatToString(0, "Segment: Length is negative (~A).", length), "Invalid text operation");
            }
            if (Scheme.numGrt.apply2(AddOp.$Pl.apply2(AddOp.$Mn.apply2(start, Lit28), length), Integer.valueOf(len)) != Boolean.FALSE) {
                return signalRuntimeError(Format.formatToString(0, "Segment: Start (~A) + length (~A) - 1 exceeds text length (~A).", start, length, Integer.valueOf(len)), "Invalid text operation");
            }
            try {
                CharSequence charSequence = (CharSequence) wholestring;
                Object objApply2 = AddOp.$Mn.apply2(start, Lit28);
                try {
                    int iIntValue = ((Number) objApply2).intValue();
                    Object objApply22 = AddOp.$Pl.apply2(AddOp.$Mn.apply2(start, Lit28), length);
                    try {
                        return strings.substring(charSequence, iIntValue, ((Number) objApply22).intValue());
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "substring", 3, objApply22);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "substring", 2, objApply2);
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "substring", 1, wholestring);
            }
        } catch (ClassCastException e4) {
            throw new WrongType(e4, "string-length", 1, wholestring);
        }
    }

    public static String stringTrim(Object text) {
        return text.toString().trim();
    }

    public static Object stringReplaceAll(Object text, Object substring, Object replacement) {
        return text.toString().replaceAll(Pattern.quote(substring.toString()), Matcher.quoteReplacement(replacement.toString()));
    }

    @Override // gnu.expr.ModuleBody
    public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) throws Throwable {
        switch (moduleMethod.selector) {
            case 29:
                return getPropertyAndCheck(obj, obj2, obj3);
            case 46:
                return lambda27(obj, obj2, obj3);
            case 58:
                return sanitizeReturnValue(obj, obj2, obj3);
            case 64:
                return signalRuntimeFormError(obj, obj2, obj3);
            case 68:
                return $PcSetSubformLayoutProperty$Ex(obj, obj2, obj3);
            case 71:
                return coerceArgs(obj, obj2, obj3);
            case 173:
                yailListSetItem$Ex(obj, obj2, obj3);
                return Values.empty;
            case 175:
                yailListInsertItem$Ex(obj, obj2, obj3);
                return Values.empty;
            case 183:
                return yailListReduce(obj, obj2, obj3);
            case 202:
                return yailMerge(obj, obj2, obj3);
            case 207:
                return mergesortKey(obj, obj2, obj3);
            case 210:
                return listMin(obj, obj2, obj3);
            case 212:
                return listMax(obj, obj2, obj3);
            case 217:
                return yailListSlice(obj, obj2, obj3);
            case 221:
                return yailAlistLookup(obj, obj2, obj3);
            case 226:
                return yailDictionarySetPair(obj, obj2, obj3);
            case 228:
                return yailDictionaryLookup(obj, obj2, obj3);
            case 229:
                return yailDictionaryRecursiveLookup(obj, obj2, obj3);
            case 231:
                return yailDictionaryRecursiveSet(obj, obj2, obj3);
            case 277:
                return stringSubstring(obj, obj2, obj3);
            case 279:
                return stringReplaceAll(obj, obj2, obj3);
            default:
                return super.apply3(moduleMethod, obj, obj2, obj3);
        }
    }

    public static Object isStringEmpty(Object text) {
        try {
            return strings.stringLength((CharSequence) text) == 0 ? Boolean.TRUE : Boolean.FALSE;
        } catch (ClassCastException e) {
            throw new WrongType(e, "string-length", 1, text);
        }
    }

    public static Object textDeobfuscate(Object obj, Object obj2) throws Throwable {
        frame9 frame9Var = new frame9();
        frame9Var.text = obj;
        frame9Var.lc = obj2;
        ModuleMethod moduleMethod = frame9Var.cont$Fn17;
        CallCC.callcc.apply1(frame9Var.cont$Fn17);
        Object objApply2 = Lit29;
        LList lListCons = LList.Empty;
        Object obj3 = frame9Var.text;
        try {
            Integer numValueOf = Integer.valueOf(strings.stringLength((CharSequence) obj3));
            while (true) {
                NumberCompare numberCompare = Scheme.numGEq;
                Object obj4 = frame9Var.text;
                try {
                    if (numberCompare.apply2(objApply2, Integer.valueOf(strings.stringLength((CharSequence) obj4))) != Boolean.FALSE) {
                        try {
                            break;
                        } catch (ClassCastException e) {
                            throw new WrongType(e, "reverse", 1, lListCons);
                        }
                    }
                    Object obj5 = frame9Var.text;
                    try {
                        try {
                            int iIntValue = Char.make(strings.stringRef((CharSequence) obj5, ((Number) objApply2).intValue())).intValue();
                            Object objApply22 = BitwiseOp.and.apply2(BitwiseOp.ior.apply2(BitwiseOp.ashiftl.apply2(BitwiseOp.and.apply2(BitwiseOp.xor.apply2(Integer.valueOf(iIntValue >> 8), objApply2), Lit54), Lit55), BitwiseOp.and.apply2(BitwiseOp.xor.apply2(Integer.valueOf(iIntValue), AddOp.$Mn.apply2(numValueOf, objApply2)), Lit54)), Lit54);
                            BitwiseOp bitwiseOp = BitwiseOp.and;
                            BitwiseOp bitwiseOp2 = BitwiseOp.xor;
                            Object obj6 = frame9Var.lc;
                            try {
                                try {
                                    lListCons = lists.cons(bitwiseOp.apply2(bitwiseOp2.apply2(objApply22, Integer.valueOf(Char.make(strings.stringRef((CharSequence) obj6, ((Number) objApply2).intValue())).intValue())), Lit54), lListCons);
                                    objApply2 = AddOp.$Pl.apply2(Lit28, objApply2);
                                } catch (ClassCastException e2) {
                                    throw new WrongType(e2, "string-ref", 2, objApply2);
                                }
                            } catch (ClassCastException e3) {
                                throw new WrongType(e3, "string-ref", 1, obj6);
                            }
                        } catch (ClassCastException e4) {
                            throw new WrongType(e4, "string-ref", 2, objApply2);
                        }
                    } catch (ClassCastException e5) {
                        throw new WrongType(e5, "string-ref", 1, obj5);
                    }
                } catch (ClassCastException e6) {
                    throw new WrongType(e6, "string-length", 1, obj4);
                }
            }
            Object objReverse = lists.reverse(lListCons);
            Object objMake = LList.Empty;
            while (objReverse != LList.Empty) {
                try {
                    Pair pair = (Pair) objReverse;
                    Object cdr = pair.getCdr();
                    Object car = pair.getCar();
                    try {
                        objMake = Pair.make(Char.make(((Number) car).intValue()), objMake);
                        objReverse = cdr;
                    } catch (ClassCastException e7) {
                        throw new WrongType(e7, "integer->char", 1, car);
                    }
                } catch (ClassCastException e8) {
                    throw new WrongType(e8, "arg0", -2, objReverse);
                }
            }
            return strings.list$To$String(LList.reverseInPlace(objMake));
        } catch (ClassCastException e9) {
            throw new WrongType(e9, "string-length", 1, obj3);
        }
    }

    /* JADX INFO: compiled from: runtime3808032275111475787.scm */
    public class frame9 extends ModuleBody {
        final ModuleMethod cont$Fn17 = new ModuleMethod(this, 14, runtime.Lit56, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        Object lc;
        Object text;

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 14 ? lambda20cont(obj) : super.apply1(moduleMethod, obj);
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 14) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }

        public Object lambda20cont(Object $Styail$Mnbreak$St) {
            while (true) {
                Object obj = this.lc;
                try {
                    int iStringLength = strings.stringLength((CharSequence) obj);
                    Object obj2 = this.text;
                    try {
                        if (iStringLength >= strings.stringLength((CharSequence) obj2)) {
                            return null;
                        }
                        this.lc = strings.stringAppend(this.lc, this.lc);
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "string-length", 1, obj2);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "string-length", 1, obj);
                }
            }
        }
    }

    public static String stringReplaceMappingsDictionary(Object text, Object mappings) {
        try {
            return JavaStringUtils.replaceAllMappingsDictionaryOrder(text == null ? null : text.toString(), (Map) mappings);
        } catch (ClassCastException e) {
            throw new WrongType(e, "com.google.appinventor.components.runtime.util.JavaStringUtils.replaceAllMappingsDictionaryOrder(java.lang.String,java.util.Map)", 2, mappings);
        }
    }

    public static String stringReplaceMappingsLongestString(Object text, Object mappings) {
        try {
            return JavaStringUtils.replaceAllMappingsLongestStringOrder(text == null ? null : text.toString(), (Map) mappings);
        } catch (ClassCastException e) {
            throw new WrongType(e, "com.google.appinventor.components.runtime.util.JavaStringUtils.replaceAllMappingsLongestStringOrder(java.lang.String,java.util.Map)", 2, mappings);
        }
    }

    public static String stringReplaceMappingsEarliestOccurrence(Object text, Object mappings) {
        try {
            return JavaStringUtils.replaceAllMappingsEarliestOccurrenceOrder(text == null ? null : text.toString(), (Map) mappings);
        } catch (ClassCastException e) {
            throw new WrongType(e, "com.google.appinventor.components.runtime.util.JavaStringUtils.replaceAllMappingsEarliestOccurrenceOrder(java.lang.String,java.util.Map)", 2, mappings);
        }
    }

    public static Number makeExactYailInteger(Object x) throws Throwable {
        Object objCoerceToNumber = coerceToNumber(x);
        try {
            return numbers.exact(numbers.round(LangObjType.coerceRealNum(objCoerceToNumber)));
        } catch (ClassCastException e) {
            throw new WrongType(e, "round", 1, objCoerceToNumber);
        }
    }

    public static Object makeColor(Object color$Mncomponents) throws Throwable {
        Number alpha;
        Number red = makeExactYailInteger(yailListGetItem(color$Mncomponents, Lit28));
        Number green = makeExactYailInteger(yailListGetItem(color$Mncomponents, Lit30));
        Number blue = makeExactYailInteger(yailListGetItem(color$Mncomponents, Lit59));
        if (yailListLength(color$Mncomponents) <= 3) {
            Object obj = $Stalpha$Mnopaque$St;
            try {
                alpha = (Number) obj;
            } catch (ClassCastException e) {
                throw new WrongType(e, "alpha", -2, obj);
            }
        } else {
            alpha = makeExactYailInteger(yailListGetItem(color$Mncomponents, Lit60));
        }
        return BitwiseOp.ior.apply2(BitwiseOp.ior.apply2(BitwiseOp.ior.apply2(BitwiseOp.ashiftl.apply2(BitwiseOp.and.apply2(alpha, $Stmax$Mncolor$Mncomponent$St), $Stcolor$Mnalpha$Mnposition$St), BitwiseOp.ashiftl.apply2(BitwiseOp.and.apply2(red, $Stmax$Mncolor$Mncomponent$St), $Stcolor$Mnred$Mnposition$St)), BitwiseOp.ashiftl.apply2(BitwiseOp.and.apply2(green, $Stmax$Mncolor$Mncomponent$St), $Stcolor$Mngreen$Mnposition$St)), BitwiseOp.ashiftl.apply2(BitwiseOp.and.apply2(blue, $Stmax$Mncolor$Mncomponent$St), $Stcolor$Mnblue$Mnposition$St));
    }

    public static Object splitColor(Object color) throws Throwable {
        Number intcolor = makeExactYailInteger(color);
        return kawaList$To$YailList(LList.list4(BitwiseOp.and.apply2(BitwiseOp.ashiftr.apply2(intcolor, $Stcolor$Mnred$Mnposition$St), $Stmax$Mncolor$Mncomponent$St), BitwiseOp.and.apply2(BitwiseOp.ashiftr.apply2(intcolor, $Stcolor$Mngreen$Mnposition$St), $Stmax$Mncolor$Mncomponent$St), BitwiseOp.and.apply2(BitwiseOp.ashiftr.apply2(intcolor, $Stcolor$Mnblue$Mnposition$St), $Stmax$Mncolor$Mncomponent$St), BitwiseOp.and.apply2(BitwiseOp.ashiftr.apply2(intcolor, $Stcolor$Mnalpha$Mnposition$St), $Stmax$Mncolor$Mncomponent$St)));
    }

    public static void closeScreen() {
        Form.finishActivity();
    }

    public static void closeApplication() {
        Form.finishApplication();
    }

    public static void openAnotherScreen(Object screen$Mnname) throws Throwable {
        Object objCoerceToString = coerceToString(screen$Mnname);
        Form.switchForm(objCoerceToString == null ? null : objCoerceToString.toString());
    }

    public static void openAnotherScreenWithStartValue(Object screen$Mnname, Object start$Mnvalue) throws Throwable {
        Object objCoerceToString = coerceToString(screen$Mnname);
        Form.switchFormWithStartValue(objCoerceToString == null ? null : objCoerceToString.toString(), start$Mnvalue);
    }

    public static Object getStartValue() {
        return sanitizeComponentData(Form.getStartValue());
    }

    public static void closeScreenWithValue(Object result) {
        Form.finishActivityWithResult(result);
    }

    public static String getPlainStartText() {
        return Form.getStartText();
    }

    public static void closeScreenWithPlainText(Object string) {
        Form.finishActivityWithTextResult(string == null ? null : string.toString());
    }

    public static String getServerAddressFromWifi() {
        Object slotValue = SlotGet.getSlotValue(false, Scheme.applyToArgs.apply1(GetNamedPart.getNamedPart.apply2(((Context) $Stthis$Mnform$St).getSystemService(Context.WIFI_SERVICE), Lit62)), "ipAddress", "ipAddress", "getIpAddress", "isIpAddress", Scheme.instance);
        try {
            return Formatter.formatIpAddress(((Number) slotValue).intValue());
        } catch (ClassCastException e) {
            throw new WrongType(e, "android.text.format.Formatter.formatIpAddress(int)", 1, slotValue);
        }
    }

    public static Object inUi(Object blockid, Object promise) {
        frame10 frame10Var = new frame10();
        frame10Var.blockid = blockid;
        frame10Var.promise = promise;
        $Stthis$Mnis$Mnthe$Mnrepl$St = Boolean.TRUE;
        return Scheme.applyToArgs.apply2(GetNamedPart.getNamedPart.apply2($Stui$Mnhandler$St, Lit63), thread.runnable(frame10Var.lambda$Fn18));
    }

    /* JADX INFO: compiled from: runtime3808032275111475787.scm */
    public class frame10 extends ModuleBody {
        Object blockid;
        final ModuleMethod lambda$Fn18;
        Object promise;

        public frame10() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 15, null, 0);
            moduleMethod.setProperty("source-location", "/tmp/runtime3808032275111475787.scm:3740");
            this.lambda$Fn18 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 15 ? lambda21() : super.apply0(moduleMethod);
        }

        Object lambda21() {
            Pair pairList2;
            String message;
            Object obj = "NOK";
            Object obj2 = this.blockid;
            try {
                try {
                    pairList2 = LList.list2("OK", runtime.getDisplayRepresentation(misc.force(this.promise)));
                } catch (PermissionException exception) {
                    exception.printStackTrace();
                    pairList2 = LList.list2("NOK", strings.stringAppend("Failed due to missing permission: ", exception.getPermissionNeeded()));
                } catch (StopBlocksExecution e) {
                    pairList2 = LList.list2("OK", Boolean.FALSE);
                } catch (YailRuntimeError exception2) {
                    runtime.androidLog(exception2.getMessage());
                    pairList2 = LList.list2("NOK", exception2.getMessage());
                }
                obj = pairList2;
            } catch (Throwable exception3) {
                runtime.androidLog(exception3.getMessage());
                exception3.printStackTrace();
                if (exception3 instanceof Error) {
                    message = exception3.toString();
                } else {
                    message = exception3.getMessage();
                }
                pairList2 = LList.list2(obj, message);
            }
            return runtime.sendToBlock(obj2, pairList2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 15) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }
    }

    public static Object sendToBlock(Object blockid, Object message) throws Throwable {
        if (Scheme.numEqu.apply2(blockid, Lit64) != Boolean.FALSE) {
            return Values.empty;
        }
        Object good = lists.car.apply1(message);
        Object value = lists.cadr.apply1(message);
        RetValManager.appendReturnValue(blockid == null ? null : blockid.toString(), good == null ? null : good.toString(), value != null ? value.toString() : null);
        return Values.empty;
    }

    public static Object clearCurrentForm() throws Throwable {
        if ($Stthis$Mnform$St == null) {
            return Values.empty;
        }
        clearInitThunks();
        resetCurrentFormEnvironment();
        EventDispatcher.unregisterAllEventsForDelegation();
        return Invoke.invoke.apply2($Stthis$Mnform$St, "clear");
    }

    public static Object setFormName(Object form$Mnname) {
        $Stthis$Mnform$Mnname$St = form$Mnname;
        return Invoke.invoke.apply3($Stthis$Mnform$St, "setFormName", form$Mnname);
    }

    public static Object removeComponent(Object component$Mnname) {
        try {
            SimpleSymbol component$Mnsymbol = misc.string$To$Symbol((CharSequence) component$Mnname);
            Object component$Mnobject = lookupInCurrentFormEnvironment(component$Mnsymbol);
            deleteFromCurrentFormEnvironment(component$Mnsymbol);
            return $Stthis$Mnform$St != null ? Invoke.invoke.apply3($Stthis$Mnform$St, "deleteComponent", component$Mnobject) : Values.empty;
        } catch (ClassCastException e) {
            throw new WrongType(e, "string->symbol", 1, component$Mnname);
        }
    }

    public static Object renameComponent(Object old$Mncomponent$Mnname, Object new$Mncomponent$Mnname) {
        try {
            try {
                return renameInCurrentFormEnvironment(misc.string$To$Symbol((CharSequence) old$Mncomponent$Mnname), misc.string$To$Symbol((CharSequence) new$Mncomponent$Mnname));
            } catch (ClassCastException e) {
                throw new WrongType(e, "string->symbol", 1, new$Mncomponent$Mnname);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "string->symbol", 1, old$Mncomponent$Mnname);
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) throws Throwable {
        switch (moduleMethod.selector) {
            case 22:
                return addInitThunk(obj, obj2);
            case 27:
                return getProperty$1(obj, obj2);
            case 36:
                try {
                    return addToCurrentFormEnvironment((Symbol) obj, obj2);
                } catch (ClassCastException e) {
                    throw new WrongType(e, "add-to-current-form-environment", 1, obj);
                }
            case 37:
                try {
                    return lookupInCurrentFormEnvironment((Symbol) obj, obj2);
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "lookup-in-current-form-environment", 1, obj);
                }
            case 41:
                try {
                    try {
                        return renameInCurrentFormEnvironment((Symbol) obj, (Symbol) obj2);
                    } catch (ClassCastException e3) {
                        throw new WrongType(e3, "rename-in-current-form-environment", 2, obj2);
                    }
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "rename-in-current-form-environment", 1, obj);
                }
            case 42:
                try {
                    return addGlobalVarToCurrentFormEnvironment((Symbol) obj, obj2);
                } catch (ClassCastException e5) {
                    throw new WrongType(e5, "add-global-var-to-current-form-environment", 1, obj);
                }
            case 43:
                try {
                    return lookupGlobalVarInCurrentFormEnvironment((Symbol) obj, obj2);
                } catch (ClassCastException e6) {
                    throw new WrongType(e6, "lookup-global-var-in-current-form-environment", 1, obj);
                }
            case 63:
                return signalRuntimeError(obj, obj2);
            case 69:
                return generateRuntimeTypeError(obj, obj2);
            case 72:
                return coerceArg(obj, obj2);
            case 77:
                return coerceToEnum(obj, obj2);
            case R.styleable.AppCompatTheme_panelBackground /* 81 */:
                return coerceToComponentOfType(obj, obj2);
            case 89:
                return joinStrings(obj, obj2);
            case 90:
                return stringReplace(obj, obj2);
            case 102:
                return isYailEqual(obj, obj2);
            case 103:
                return isYailAtomicEqual(obj, obj2);
            case 105:
                return isYailNotEqual(obj, obj2) ? Boolean.TRUE : Boolean.FALSE;
            case 113:
                return randomInteger(obj, obj2);
            case 115:
                return yailDivide(obj, obj2);
            case 126:
                return atan2Degrees(obj, obj2);
            case 131:
                return formatAsDecimal(obj, obj2);
            case 150:
                return sumMeanSquareDiff(obj, obj2);
            case 157:
                setYailListContents$Ex(obj, obj2);
                return Values.empty;
            case 171:
                return yailListIndex(obj, obj2);
            case 172:
                return yailListGetItem(obj, obj2);
            case 174:
                yailListRemoveItem$Ex(obj, obj2);
                return Values.empty;
            case 176:
                yailListAppend$Ex(obj, obj2);
                return Values.empty;
            case 178:
                return isYailListMember(obj, obj2);
            case 180:
                return yailForEach(obj, obj2);
            case 181:
                return yailListMap(obj, obj2);
            case 182:
                return yailListFilter(obj, obj2);
            case 185:
                return yailIndexof(obj, obj2);
            case 186:
                return isTypeLt(obj, obj2) ? Boolean.TRUE : Boolean.FALSE;
            case 187:
                return isIsLt(obj, obj2);
            case 188:
                return isIsEq(obj, obj2);
            case FullScreenVideoUtil.FULLSCREEN_VIDEO_DIALOG_FLAG /* 189 */:
                return isIsLeq(obj, obj2);
            case FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_SEEK /* 190 */:
                return isBooleanLt(obj, obj2);
            case FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_PLAY /* 191 */:
                return isBooleanEq(obj, obj2);
            case FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_PAUSE /* 192 */:
                return isBooleanLeq(obj, obj2);
            case FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_STOP /* 193 */:
                return isListLt(obj, obj2);
            case FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_SOURCE /* 194 */:
                return isListEq(obj, obj2);
            case FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_DURATION /* 196 */:
                return isListLeq(obj, obj2);
            case 197:
                return isComponentLt(obj, obj2);
            case 198:
                return isComponentEq(obj, obj2);
            case 199:
                return isComponentLeq(obj, obj2);
            case 200:
                return yailTake(obj, obj2);
            case 201:
                return yailDrop(obj, obj2);
            case 203:
                return yailMergesort(obj, obj2);
            case 205:
                return yailListSortComparator(obj, obj2);
            case 208:
                return yailListSortKey(obj, obj2);
            case 211:
                return yailListMinComparator(obj, obj2);
            case 213:
                return yailListMaxComparator(obj, obj2);
            case 220:
                return yailNumberRange(obj, obj2);
            case 223:
                return yailListJoinWithSeparator(obj, obj2);
            case 225:
                return makeDictionaryPair(obj, obj2);
            case 227:
                return yailDictionaryDeletePair(obj, obj2);
            case 230:
                return yailDictionaryWalk(obj, obj2);
            case 234:
                return yailDictionaryIsKeyIn(obj, obj2) ? Boolean.TRUE : Boolean.FALSE;
            case 239:
                yailDictionaryCombineDicts(obj, obj2);
                return Values.empty;
            case LispEscapeFormat.ESCAPE_ALL /* 242 */:
                return makeYailMatrixMultidim(obj, obj2);
            case 243:
                return yailMatrixGetRow(obj, obj2);
            case 244:
                return yailMatrixGetColumn(obj, obj2);
            case Telnet.DONT /* 254 */:
                return yailMatrixSubtract(obj, obj2);
            case 256:
                return yailMatrixPower(obj, obj2);
            case 258:
                return isYailMatrixEqual(obj, obj2);
            case 262:
                return callYailProcedureInputList(obj, obj2);
            case 264:
                runInBackground(obj, obj2);
                return Values.empty;
            case 265:
                runAfterPeriod(obj, obj2);
                return Values.empty;
            case 268:
                return Integer.valueOf(stringStartsAt(obj, obj2));
            case 269:
                return stringContains(obj, obj2);
            case 270:
                return stringContainsAny(obj, obj2);
            case 271:
                return stringContainsAll(obj, obj2);
            case 272:
                return stringSplitAtFirst(obj, obj2);
            case 273:
                return stringSplitAtFirstOfAny(obj, obj2);
            case 274:
                return stringSplit(obj, obj2);
            case 275:
                return stringSplitAtAny(obj, obj2);
            case 281:
                return textDeobfuscate(obj, obj2);
            case 282:
                return stringReplaceMappingsDictionary(obj, obj2);
            case 283:
                return stringReplaceMappingsLongestString(obj, obj2);
            case 284:
                return stringReplaceMappingsEarliestOccurrence(obj, obj2);
            case 291:
                openAnotherScreenWithStartValue(obj, obj2);
                return Values.empty;
            case 297:
                return inUi(obj, obj2);
            case 298:
                return sendToBlock(obj, obj2);
            case 302:
                return renameComponent(obj, obj2);
            default:
                return super.apply2(moduleMethod, obj, obj2);
        }
    }

    public static void initRuntime() {
        setThisForm();
        $Stui$Mnhandler$St = new Handler();
    }

    public static void setThisForm() {
        $Stthis$Mnform$St = Form.getActiveForm();
    }

    @Override // gnu.expr.ModuleBody
    public Object apply0(ModuleMethod moduleMethod) throws Throwable {
        switch (moduleMethod.selector) {
            case 20:
                return call$MnInitializeOfComponentsLibrary();
            case 21:
                setupThunkList();
                return Values.empty;
            case 24:
                clearInitThunks();
                return Values.empty;
            case 45:
                resetCurrentFormEnvironment();
                return Values.empty;
            case 112:
                return Double.valueOf(randomFraction());
            case 288:
                closeScreen();
                return Values.empty;
            case 289:
                closeApplication();
                return Values.empty;
            case 292:
                return getStartValue();
            case 294:
                return getPlainStartText();
            case 296:
                return getServerAddressFromWifi();
            case 299:
                return clearCurrentForm();
            case 303:
                initRuntime();
                return Values.empty;
            case 304:
                setThisForm();
                return Values.empty;
            default:
                return super.apply0(moduleMethod);
        }
    }

    public static Object clarify(Object sl) {
        return clarify1(yailListContents(sl));
    }

    public static Object clarify1(Object sl) {
        String strApply1;
        if (lists.isNull(sl)) {
            Object sp = LList.Empty;
            return sp;
        }
        if (IsEqual.apply(lists.car.apply1(sl), "")) {
            strApply1 = "<empty>";
        } else {
            strApply1 = IsEqual.apply(lists.car.apply1(sl), " ") ? "<space>" : lists.car.apply1(sl);
        }
        Object sp2 = strApply1;
        return lists.cons(sp2, clarify1(lists.cdr.apply1(sl)));
    }
}
