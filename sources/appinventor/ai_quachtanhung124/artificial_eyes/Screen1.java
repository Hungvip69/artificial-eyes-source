package appinventor.ai_quachtanhung124.artificial_eyes;

import android.os.Bundle;
import android.util.Log;
import androidx.fragment.app.FragmentTransaction;
import com.NimaAI.NimaAI;
import com.Scorpio.ScSpeechRecognizer;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.AccelerometerSensor;
import com.google.appinventor.components.runtime.AppInventorCompatActivity;
import com.google.appinventor.components.runtime.BluetoothClient;
import com.google.appinventor.components.runtime.Button;
import com.google.appinventor.components.runtime.Clock;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.EventDispatcher;
import com.google.appinventor.components.runtime.File;
import com.google.appinventor.components.runtime.Form;
import com.google.appinventor.components.runtime.HandlesEventDispatching;
import com.google.appinventor.components.runtime.HorizontalArrangement;
import com.google.appinventor.components.runtime.Image;
import com.google.appinventor.components.runtime.LocationSensor;
import com.google.appinventor.components.runtime.PhoneCall;
import com.google.appinventor.components.runtime.Sound;
import com.google.appinventor.components.runtime.TextToSpeech;
import com.google.appinventor.components.runtime.Texting;
import com.google.appinventor.components.runtime.Translator;
import com.google.appinventor.components.runtime.VerticalArrangement;
import com.google.appinventor.components.runtime.Web;
import com.google.appinventor.components.runtime.WebViewer;
import com.google.appinventor.components.runtime.errors.PermissionException;
import com.google.appinventor.components.runtime.errors.StopBlocksExecution;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import com.google.appinventor.components.runtime.util.RetValManager;
import com.google.appinventor.components.runtime.util.RuntimeErrorAlert;
import com.google.youngandroid.runtime;
import com.kabby.Recy.Recy;
import com.kumaraswamy.camerax.ProCamera;
import gnu.expr.Language;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.kawa.functions.Apply;
import gnu.kawa.functions.ApplyToArgs;
import gnu.kawa.functions.Format;
import gnu.kawa.functions.GetNamedPart;
import gnu.kawa.functions.IsEqual;
import gnu.kawa.reflect.Invoke;
import gnu.kawa.reflect.SlotGet;
import gnu.kawa.reflect.SlotSet;
import gnu.lists.Consumer;
import gnu.lists.FString;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.lists.PairWithPosition;
import gnu.lists.VoidConsumer;
import gnu.mapping.CallContext;
import gnu.mapping.Environment;
import gnu.mapping.Procedure;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Symbol;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import gnu.math.DFloNum;
import gnu.math.IntNum;
import kawa.lang.Promise;
import kawa.lib.lists;
import kawa.lib.misc;
import kawa.lib.strings;
import kawa.standard.Scheme;
import kawa.standard.require;
import kawa.standard.throw_name;
import uk.co.metricrat.imagebase64.ImageBase64;
import java.io.BufferedReader;
import java.io.InputStreamReader;

/* JADX INFO: compiled from: Screen1.yail */
/* JADX INFO: loaded from: classes.dex */
public class Screen1 extends Form implements Runnable {
    private static final String TAG = "ArtificialEyesScreen1";
    private enum ModeState { IDLE, WALKING, READING }
    private ModeState modeState = ModeState.IDLE;
    private boolean modeSwitching = false;
    static final SimpleSymbol Lit0;
    static final SimpleSymbol Lit1;
    static final SimpleSymbol Lit10;
    static final SimpleSymbol Lit100;
    static final SimpleSymbol Lit101;
    static final IntNum Lit102;
    static final SimpleSymbol Lit103;
    static final IntNum Lit104;
    static final SimpleSymbol Lit105;
    static final IntNum Lit106;
    static final SimpleSymbol Lit107;
    static final SimpleSymbol Lit108;
    static final IntNum Lit109;
    static final SimpleSymbol Lit11;
    static final SimpleSymbol Lit110;
    static final SimpleSymbol Lit111;
    static final SimpleSymbol Lit112;
    static final SimpleSymbol Lit113;
    static final SimpleSymbol Lit114;
    static final SimpleSymbol Lit115;
    static final SimpleSymbol Lit116;
    static final IntNum Lit117;
    static final PairWithPosition Lit118;
    static final SimpleSymbol Lit119;
    static final PairWithPosition Lit12;
    static final SimpleSymbol Lit120;
    static final SimpleSymbol Lit121;
    static final FString Lit122;
    static final SimpleSymbol Lit123;
    static final SimpleSymbol Lit124;
    static final IntNum Lit125;
    static final SimpleSymbol Lit126;
    static final IntNum Lit127;
    static final FString Lit128;
    static final FString Lit129;
    static final SimpleSymbol Lit13;
    static final SimpleSymbol Lit130;
    static final FString Lit131;
    static final FString Lit132;
    static final SimpleSymbol Lit133;
    static final FString Lit134;
    static final FString Lit135;
    static final SimpleSymbol Lit136;
    static final FString Lit137;
    static final FString Lit138;
    static final SimpleSymbol Lit139;
    static final SimpleSymbol Lit14;
    static final SimpleSymbol Lit140;
    static final IntNum Lit141;
    static final IntNum Lit142;
    static final SimpleSymbol Lit143;
    static final SimpleSymbol Lit144;
    static final IntNum Lit145;
    static final FString Lit146;
    static final PairWithPosition Lit147;
    static final SimpleSymbol Lit148;
    static final SimpleSymbol Lit149;
    static final SimpleSymbol Lit15;
    static final FString Lit150;
    static final SimpleSymbol Lit151;
    static final FString Lit152;
    static final FString Lit153;
    static final SimpleSymbol Lit154;
    static final FString Lit155;
    static final FString Lit156;
    static final SimpleSymbol Lit157;
    static final SimpleSymbol Lit158;
    static final FString Lit159;
    static final PairWithPosition Lit16;
    static final PairWithPosition Lit160;
    static final SimpleSymbol Lit161;
    static final PairWithPosition Lit162;
    static final PairWithPosition Lit163;
    static final PairWithPosition Lit164;
    static final PairWithPosition Lit165;
    static final PairWithPosition Lit166;
    static final PairWithPosition Lit167;
    static final PairWithPosition Lit168;
    static final PairWithPosition Lit169;
    static final PairWithPosition Lit17;
    static final PairWithPosition Lit170;
    static final SimpleSymbol Lit171;
    static final SimpleSymbol Lit172;
    static final FString Lit173;
    static final SimpleSymbol Lit174;
    static final FString Lit175;
    static final FString Lit176;
    static final SimpleSymbol Lit177;
    static final IntNum Lit178;
    static final SimpleSymbol Lit179;
    static final SimpleSymbol Lit18;
    static final DFloNum Lit180;
    static final SimpleSymbol Lit181;
    static final SimpleSymbol Lit182;
    static final IntNum Lit183;
    static final FString Lit184;
    static final PairWithPosition Lit185;
    static final SimpleSymbol Lit186;
    static final SimpleSymbol Lit187;
    static final SimpleSymbol Lit188;
    static final FString Lit189;
    static final SimpleSymbol Lit19;
    static final FString Lit190;
    static final FString Lit191;
    static final SimpleSymbol Lit192;
    static final FString Lit193;
    static final SimpleSymbol Lit194;
    static final PairWithPosition Lit195;
    static final SimpleSymbol Lit196;
    static final SimpleSymbol Lit197;
    static final FString Lit198;
    static final FString Lit199;
    static final SimpleSymbol Lit2;
    static final SimpleSymbol Lit20;
    static final PairWithPosition Lit200;
    static final SimpleSymbol Lit201;
    static final SimpleSymbol Lit202;
    static final SimpleSymbol Lit203;
    static final PairWithPosition Lit204;
    static final SimpleSymbol Lit205;
    static final IntNum Lit206;
    static final SimpleSymbol Lit207;
    static final SimpleSymbol Lit208;
    static final FString Lit209;
    static final SimpleSymbol Lit21;
    static final FString Lit210;
    static final PairWithPosition Lit211;
    static final SimpleSymbol Lit212;
    static final SimpleSymbol Lit213;
    static final PairWithPosition Lit214;
    static final PairWithPosition Lit215;
    static final PairWithPosition Lit216;
    static final PairWithPosition Lit217;
    static final PairWithPosition Lit218;
    static final PairWithPosition Lit219;
    static final SimpleSymbol Lit22;
    static final PairWithPosition Lit220;
    static final PairWithPosition Lit221;
    static final SimpleSymbol Lit222;
    static final SimpleSymbol Lit223;
    static final PairWithPosition Lit224;
    static final IntNum Lit225;
    static final PairWithPosition Lit226;
    static final PairWithPosition Lit227;
    static final SimpleSymbol Lit228;
    static final PairWithPosition Lit229;
    static final SimpleSymbol Lit23;
    static final SimpleSymbol Lit230;
    static final PairWithPosition Lit231;
    static final SimpleSymbol Lit232;
    static final SimpleSymbol Lit233;
    static final PairWithPosition Lit234;
    static final SimpleSymbol Lit235;
    static final PairWithPosition Lit236;
    static final PairWithPosition Lit237;
    static final PairWithPosition Lit238;
    static final PairWithPosition Lit239;
    static final SimpleSymbol Lit24;
    static final SimpleSymbol Lit240;
    static final SimpleSymbol Lit241;
    static final SimpleSymbol Lit242;
    static final PairWithPosition Lit243;
    static final PairWithPosition Lit244;
    static final PairWithPosition Lit245;
    static final PairWithPosition Lit246;
    static final SimpleSymbol Lit247;
    static final SimpleSymbol Lit248;
    static final FString Lit249;
    static final SimpleSymbol Lit25;
    static final SimpleSymbol Lit250;
    static final SimpleSymbol Lit251;
    static final FString Lit252;
    static final PairWithPosition Lit253;
    static final SimpleSymbol Lit254;
    static final IntNum Lit255;
    static final PairWithPosition Lit256;
    static final SimpleSymbol Lit257;
    static final PairWithPosition Lit258;
    static final IntNum Lit259;
    static final PairWithPosition Lit26;
    static final PairWithPosition Lit260;
    static final PairWithPosition Lit261;
    static final PairWithPosition Lit262;
    static final SimpleSymbol Lit263;
    static final IntNum Lit264;
    static final PairWithPosition Lit265;
    static final PairWithPosition Lit266;
    static final IntNum Lit267;
    static final PairWithPosition Lit268;
    static final PairWithPosition Lit269;
    static final SimpleSymbol Lit27;
    static final PairWithPosition Lit270;
    static final SimpleSymbol Lit271;
    static final SimpleSymbol Lit272;
    static final FString Lit273;
    static final SimpleSymbol Lit274;
    static final FString Lit275;
    static final FString Lit276;
    static final SimpleSymbol Lit277;
    static final IntNum Lit278;
    static final FString Lit279;
    static final PairWithPosition Lit28;
    static final FString Lit280;
    static final SimpleSymbol Lit281;
    static final FString Lit282;
    static final FString Lit283;
    static final FString Lit284;
    static final PairWithPosition Lit285;
    static final PairWithPosition Lit286;
    static final PairWithPosition Lit287;
    static final SimpleSymbol Lit288;
    static final SimpleSymbol Lit289;
    static final SimpleSymbol Lit29;
    static final FString Lit290;
    static final SimpleSymbol Lit291;
    static final FString Lit292;
    static final FString Lit293;
    static final SimpleSymbol Lit294;
    static final FString Lit295;
    static final FString Lit296;
    static final SimpleSymbol Lit297;
    static final FString Lit298;
    static final SimpleSymbol Lit299;
    static final SimpleSymbol Lit3;
    static final SimpleSymbol Lit30;
    static final SimpleSymbol Lit300;
    static final PairWithPosition Lit301;
    static final SimpleSymbol Lit302;
    static final SimpleSymbol Lit303;
    static final FString Lit304;
    static final FString Lit305;
    static final SimpleSymbol Lit306;
    static final IntNum Lit307;
    static final PairWithPosition Lit308;
    static final SimpleSymbol Lit309;
    static final SimpleSymbol Lit31;
    static final SimpleSymbol Lit310;
    static final PairWithPosition Lit311;
    static final PairWithPosition Lit312;
    static final PairWithPosition Lit313;
    static final PairWithPosition Lit314;
    static final SimpleSymbol Lit315;
    static final SimpleSymbol Lit316;
    static final PairWithPosition Lit317;
    static final PairWithPosition Lit318;
    static final SimpleSymbol Lit319;
    static final SimpleSymbol Lit32;
    static final SimpleSymbol Lit320;
    static final FString Lit321;
    static final FString Lit322;
    static final SimpleSymbol Lit323;
    static final SimpleSymbol Lit324;
    static final SimpleSymbol Lit325;
    static final FString Lit326;
    static final SimpleSymbol Lit327;
    static final FString Lit328;
    static final SimpleSymbol Lit329;
    static final PairWithPosition Lit33;
    static final PairWithPosition Lit330;
    static final PairWithPosition Lit331;
    static final SimpleSymbol Lit332;
    static final SimpleSymbol Lit333;
    static final FString Lit334;
    static final FString Lit335;
    static final FString Lit336;
    static final FString Lit337;
    static final FString Lit338;
    static final SimpleSymbol Lit339;
    static final IntNum Lit34;
    static final SimpleSymbol Lit340;
    static final FString Lit341;
    static final SimpleSymbol Lit342;
    static final SimpleSymbol Lit343;
    static final SimpleSymbol Lit344;
    static final FString Lit345;
    static final SimpleSymbol Lit346;
    static final FString Lit347;
    static final FString Lit348;
    static final SimpleSymbol Lit349;
    static final PairWithPosition Lit35;
    static final FString Lit350;
    static final FString Lit351;
    static final FString Lit352;
    static final PairWithPosition Lit353;
    static final SimpleSymbol Lit354;
    static final PairWithPosition Lit355;
    static final SimpleSymbol Lit356;
    static final SimpleSymbol Lit357;
    static final FString Lit358;
    static final SimpleSymbol Lit359;
    static final PairWithPosition Lit36;
    static final FString Lit360;
    static final FString Lit361;
    static final SimpleSymbol Lit362;
    static final FString Lit363;
    static final FString Lit364;
    static final SimpleSymbol Lit365;
    static final FString Lit366;
    static final FString Lit367;
    static final SimpleSymbol Lit368;
    static final FString Lit369;
    static final PairWithPosition Lit37;
    static final FString Lit370;
    static final SimpleSymbol Lit371;
    static final FString Lit372;
    static final SimpleSymbol Lit373;
    static final PairWithPosition Lit374;
    static final PairWithPosition Lit375;
    static final SimpleSymbol Lit376;
    static final FString Lit377;
    static final FString Lit378;
    static final FString Lit379;
    static final SimpleSymbol Lit38;
    static final FString Lit380;
    static final PairWithPosition Lit381;
    static final SimpleSymbol Lit382;
    static final SimpleSymbol Lit383;
    static final PairWithPosition Lit384;
    static final SimpleSymbol Lit385;
    static final PairWithPosition Lit386;
    static final PairWithPosition Lit39;
    static final SimpleSymbol Lit4;
    static final PairWithPosition Lit40;
    static final SimpleSymbol Lit41;
    static final IntNum Lit42;
    static final PairWithPosition Lit43;
    static final IntNum Lit44;
    static final IntNum Lit45;
    static final PairWithPosition Lit46;
    static final IntNum Lit47;
    static final IntNum Lit48;
    static final PairWithPosition Lit49;
    static final SimpleSymbol Lit5;
    static final IntNum Lit50;
    static final IntNum Lit51;
    static final PairWithPosition Lit52;
    static final IntNum Lit53;
    static final PairWithPosition Lit54;
    static final PairWithPosition Lit55;
    static final PairWithPosition Lit56;
    static final PairWithPosition Lit57;
    static final PairWithPosition Lit58;
    static final PairWithPosition Lit59;
    static final SimpleSymbol Lit6;
    static final SimpleSymbol Lit60;
    static final SimpleSymbol Lit61;
    static final SimpleSymbol Lit62;
    static final SimpleSymbol Lit63;
    static final SimpleSymbol Lit64;
    static final SimpleSymbol Lit65;
    static final SimpleSymbol Lit66;
    static final SimpleSymbol Lit67;
    static final SimpleSymbol Lit68;
    static final SimpleSymbol Lit69;
    static final SimpleSymbol Lit7;
    static final SimpleSymbol Lit70;
    static final SimpleSymbol Lit71;
    static final SimpleSymbol Lit72;
    static final SimpleSymbol Lit73;
    static final SimpleSymbol Lit74;
    static final SimpleSymbol Lit75;
    static final SimpleSymbol Lit76;
    static final SimpleSymbol Lit77;
    static final SimpleSymbol Lit78;
    static final SimpleSymbol Lit79;
    static final PairWithPosition Lit8;
    static final SimpleSymbol Lit80;
    static final IntNum Lit81;
    static final SimpleSymbol Lit82;
    static final SimpleSymbol Lit83;
    static final SimpleSymbol Lit84;
    static final SimpleSymbol Lit85;
    static final SimpleSymbol Lit86;
    static final IntNum Lit87;
    static final SimpleSymbol Lit88;
    static final SimpleSymbol Lit89;
    static final SimpleSymbol Lit9;
    static final IntNum Lit90;
    static final SimpleSymbol Lit91;
    static final SimpleSymbol Lit92;
    static final SimpleSymbol Lit93;
    static final SimpleSymbol Lit94;
    static final SimpleSymbol Lit95;
    static final SimpleSymbol Lit96;
    static final SimpleSymbol Lit97;
    static final SimpleSymbol Lit98;
    static final PairWithPosition Lit99;
    public static Screen1 Screen1;
    static final ModuleMethod lambda$Fn1 = null;
    static final ModuleMethod lambda$Fn10 = null;
    static final ModuleMethod lambda$Fn100 = null;
    static final ModuleMethod lambda$Fn101 = null;
    static final ModuleMethod lambda$Fn102 = null;
    static final ModuleMethod lambda$Fn11 = null;
    static final ModuleMethod lambda$Fn12 = null;
    static final ModuleMethod lambda$Fn13 = null;
    static final ModuleMethod lambda$Fn14 = null;
    static final ModuleMethod lambda$Fn15 = null;
    static final ModuleMethod lambda$Fn16 = null;
    static final ModuleMethod lambda$Fn17 = null;
    static final ModuleMethod lambda$Fn18 = null;
    static final ModuleMethod lambda$Fn19 = null;
    static final ModuleMethod lambda$Fn2 = null;
    static final ModuleMethod lambda$Fn20 = null;
    static final ModuleMethod lambda$Fn21 = null;
    static final ModuleMethod lambda$Fn22 = null;
    static final ModuleMethod lambda$Fn23 = null;
    static final ModuleMethod lambda$Fn24 = null;
    static final ModuleMethod lambda$Fn25 = null;
    static final ModuleMethod lambda$Fn26 = null;
    static final ModuleMethod lambda$Fn27 = null;
    static final ModuleMethod lambda$Fn28 = null;
    static final ModuleMethod lambda$Fn29 = null;
    static final ModuleMethod lambda$Fn3 = null;
    static final ModuleMethod lambda$Fn30 = null;
    static final ModuleMethod lambda$Fn31 = null;
    static final ModuleMethod lambda$Fn32 = null;
    static final ModuleMethod lambda$Fn33 = null;
    static final ModuleMethod lambda$Fn34 = null;
    static final ModuleMethod lambda$Fn35 = null;
    static final ModuleMethod lambda$Fn36 = null;
    static final ModuleMethod lambda$Fn37 = null;
    static final ModuleMethod lambda$Fn38 = null;
    static final ModuleMethod lambda$Fn39 = null;
    static final ModuleMethod lambda$Fn4 = null;
    static final ModuleMethod lambda$Fn40 = null;
    static final ModuleMethod lambda$Fn41 = null;
    static final ModuleMethod lambda$Fn42 = null;
    static final ModuleMethod lambda$Fn43 = null;
    static final ModuleMethod lambda$Fn44 = null;
    static final ModuleMethod lambda$Fn45 = null;
    static final ModuleMethod lambda$Fn46 = null;
    static final ModuleMethod lambda$Fn47 = null;
    static final ModuleMethod lambda$Fn48 = null;
    static final ModuleMethod lambda$Fn49 = null;
    static final ModuleMethod lambda$Fn5 = null;
    static final ModuleMethod lambda$Fn50 = null;
    static final ModuleMethod lambda$Fn51 = null;
    static final ModuleMethod lambda$Fn52 = null;
    static final ModuleMethod lambda$Fn53 = null;
    static final ModuleMethod lambda$Fn54 = null;
    static final ModuleMethod lambda$Fn55 = null;
    static final ModuleMethod lambda$Fn56 = null;
    static final ModuleMethod lambda$Fn57 = null;
    static final ModuleMethod lambda$Fn58 = null;
    static final ModuleMethod lambda$Fn59 = null;
    static final ModuleMethod lambda$Fn6 = null;
    static final ModuleMethod lambda$Fn60 = null;
    static final ModuleMethod lambda$Fn61 = null;
    static final ModuleMethod lambda$Fn62 = null;
    static final ModuleMethod lambda$Fn63 = null;
    static final ModuleMethod lambda$Fn64 = null;
    static final ModuleMethod lambda$Fn65 = null;
    static final ModuleMethod lambda$Fn66 = null;
    static final ModuleMethod lambda$Fn67 = null;
    static final ModuleMethod lambda$Fn68 = null;
    static final ModuleMethod lambda$Fn7 = null;
    static final ModuleMethod lambda$Fn74 = null;
    static final ModuleMethod lambda$Fn8 = null;
    static final ModuleMethod lambda$Fn82 = null;
    static final ModuleMethod lambda$Fn83 = null;
    static final ModuleMethod lambda$Fn84 = null;
    static final ModuleMethod lambda$Fn85 = null;
    static final ModuleMethod lambda$Fn86 = null;
    static final ModuleMethod lambda$Fn87 = null;
    static final ModuleMethod lambda$Fn88 = null;
    static final ModuleMethod lambda$Fn89 = null;
    static final ModuleMethod lambda$Fn9 = null;
    static final ModuleMethod lambda$Fn90 = null;
    static final ModuleMethod lambda$Fn91 = null;
    static final ModuleMethod lambda$Fn92 = null;
    static final ModuleMethod lambda$Fn93 = null;
    static final ModuleMethod lambda$Fn94 = null;
    static final ModuleMethod lambda$Fn95 = null;
    static final ModuleMethod lambda$Fn96 = null;
    static final ModuleMethod lambda$Fn97 = null;
    static final ModuleMethod lambda$Fn98 = null;
    static final ModuleMethod lambda$Fn99 = null;
    public Boolean $Stdebug$Mnform$St;
    public final ModuleMethod $define;

    /* JADX INFO: renamed from: AI_thời_tiết, reason: contains not printable characters */
    public NimaAI f0AI_thi_tit;
    public AccelerometerSensor AccelerometerSensor1;
    public final ModuleMethod AccelerometerSensor1$AccelerationChanged;
    public BluetoothClient BluetoothClient1;
    public BluetoothClient BluetoothClient2;
    public Button Button1;
    public final ModuleMethod Button1$Click;
    public final ModuleMethod Button1$LongClick;
    public Clock Clock1;
    public final ModuleMethod Clock1$Timer;
    public Clock Clock2;
    public final ModuleMethod Clock2$Timer;
    public Clock Clock3;
    public Clock Clock4;
    public final ModuleMethod Clock4$Timer;
    public Clock Clock5;
    public Clock Clock6;
    public Clock Clock_AlertLock;
    public final ModuleMethod Clock_AlertLock$Timer;
    public Clock Clock_BT;
    public final ModuleMethod Clock_BT$Timer;
    public Clock Clock_walk;
    public File File1;
    public final ModuleMethod File1$GotText;
    public HorizontalArrangement HorizontalArrangement1;
    public HorizontalArrangement HorizontalArrangement2;
    public ImageBase64 ImageBase641;
    public Image Image_walk;
    public LocationSensor LocationSensor1;
    public Image Logo;
    public NimaAI NimaAI1;
    public final ModuleMethod NimaAI1$GotResponse;
    public PhoneCall PhoneCall1;
    public ProCamera ProCamera1;
    public final ModuleMethod ProCamera1$SavedPhoto;
    public ProCamera ProCamera_walk;
    public final ModuleMethod ProCamera_walk$SavedPhoto;
    public Recy Recy2;
    public final ModuleMethod Recy2$TextRecognized;
    public ScSpeechRecognizer ScSpeechRecognizer1;
    public final ModuleMethod ScSpeechRecognizer1$AfterGettingText;
    public final ModuleMethod Screen1$Initialize;
    public Button Setting_BT;
    public final ModuleMethod Setting_BT$Click;
    public Sound Sound1;
    public Sound Sound2;
    public TextToSpeech TextToSpeech1;
    public Texting Texting1;
    public Translator Translator1;
    public final ModuleMethod Translator1$GotTranslation;
    public VerticalArrangement VerticalArrangement1;
    public VerticalArrangement VerticalArrangement2;
    public VerticalArrangement VerticalArrangement3;
    public Web Web1;
    public final ModuleMethod Web1$GotText;
    public WebViewer WebViewer1;
    public final ModuleMethod WebViewer1$WebViewStringChange;
    public Web Web_walk;
    public final ModuleMethod add$Mnto$Mncomponents;
    public final ModuleMethod add$Mnto$Mnevents;
    public final ModuleMethod add$Mnto$Mnform$Mndo$Mnafter$Mncreation;
    public final ModuleMethod add$Mnto$Mnform$Mnenvironment;
    public final ModuleMethod add$Mnto$Mnglobal$Mnvar$Mnenvironment;
    public final ModuleMethod add$Mnto$Mnglobal$Mnvars;
    public final ModuleMethod android$Mnlog$Mnform;
    public LList components$Mnto$Mncreate;
    public final ModuleMethod dispatchEvent;
    public final ModuleMethod dispatchGenericEvent;
    public LList events$Mnto$Mnregister;
    public LList form$Mndo$Mnafter$Mncreation;
    public Environment form$Mnenvironment;
    public Symbol form$Mnname$Mnsymbol;
    public final ModuleMethod get$Mnsimple$Mnname;
    public Environment global$Mnvar$Mnenvironment;
    public LList global$Mnvars$Mnto$Mncreate;
    public final ModuleMethod is$Mnbound$Mnin$Mnform$Mnenvironment;
    public final ModuleMethod lookup$Mnhandler;
    public final ModuleMethod lookup$Mnin$Mnform$Mnenvironment;
    public final ModuleMethod onCreate;
    public final ModuleMethod process$Mnexception;
    public final ModuleMethod send$Mnerror;
    static final SimpleSymbol Lit410 = (SimpleSymbol) new SimpleSymbol("component").readResolve();
    static final SimpleSymbol Lit409 = (SimpleSymbol) new SimpleSymbol("list").readResolve();
    static final SimpleSymbol Lit408 = (SimpleSymbol) new SimpleSymbol("InstantInTime").readResolve();
    static final SimpleSymbol Lit407 = (SimpleSymbol) new SimpleSymbol("dictionary").readResolve();
    static final SimpleSymbol Lit406 = (SimpleSymbol) new SimpleSymbol("key").readResolve();
    static final SimpleSymbol Lit405 = (SimpleSymbol) new SimpleSymbol("any").readResolve();
    static final SimpleSymbol Lit404 = (SimpleSymbol) new SimpleSymbol("lookup-handler").readResolve();
    static final SimpleSymbol Lit403 = (SimpleSymbol) new SimpleSymbol("dispatchGenericEvent").readResolve();
    static final SimpleSymbol Lit402 = (SimpleSymbol) new SimpleSymbol("dispatchEvent").readResolve();
    static final SimpleSymbol Lit401 = (SimpleSymbol) new SimpleSymbol("send-error").readResolve();
    static final SimpleSymbol Lit400 = (SimpleSymbol) new SimpleSymbol("add-to-form-do-after-creation").readResolve();
    static final SimpleSymbol Lit399 = (SimpleSymbol) new SimpleSymbol("add-to-global-vars").readResolve();
    static final SimpleSymbol Lit398 = (SimpleSymbol) new SimpleSymbol("add-to-components").readResolve();
    static final SimpleSymbol Lit397 = (SimpleSymbol) new SimpleSymbol("add-to-events").readResolve();
    static final SimpleSymbol Lit396 = (SimpleSymbol) new SimpleSymbol("add-to-global-var-environment").readResolve();
    static final SimpleSymbol Lit395 = (SimpleSymbol) new SimpleSymbol("is-bound-in-form-environment").readResolve();
    static final SimpleSymbol Lit394 = (SimpleSymbol) new SimpleSymbol("lookup-in-form-environment").readResolve();
    static final SimpleSymbol Lit393 = (SimpleSymbol) new SimpleSymbol("add-to-form-environment").readResolve();
    static final SimpleSymbol Lit392 = (SimpleSymbol) new SimpleSymbol("android-log-form").readResolve();
    static final SimpleSymbol Lit391 = (SimpleSymbol) new SimpleSymbol("get-simple-name").readResolve();
    static final SimpleSymbol Lit390 = (SimpleSymbol) new SimpleSymbol("Clock_AlertLock$Timer").readResolve();
    static final FString Lit389 = new FString("com.google.appinventor.components.runtime.Clock");
    static final FString Lit388 = new FString("com.google.appinventor.components.runtime.Clock");
    static final SimpleSymbol Lit387 = (SimpleSymbol) new SimpleSymbol("Clock_BT$Timer").readResolve();

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) new SimpleSymbol("number").readResolve();
        Lit88 = simpleSymbol;
        Lit386 = PairWithPosition.make(simpleSymbol, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 1425850);
        Lit385 = (SimpleSymbol) new SimpleSymbol("ReceiveText").readResolve();
        Lit384 = PairWithPosition.make(Lit88, PairWithPosition.make(Lit88, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 1425730), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 1425722);
        Lit383 = (SimpleSymbol) new SimpleSymbol("BytesAvailableToReceive").readResolve();
        Lit382 = (SimpleSymbol) new SimpleSymbol("IsConnected").readResolve();
        Lit381 = PairWithPosition.make(Lit405, PairWithPosition.make(Lit405, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 1425501), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 1425496);
        Lit380 = new FString("com.google.appinventor.components.runtime.Clock");
        Lit379 = new FString("com.google.appinventor.components.runtime.Clock");
        Lit378 = new FString("com.google.appinventor.components.runtime.Sound");
        Lit377 = new FString("com.google.appinventor.components.runtime.Sound");
        Lit376 = (SimpleSymbol) new SimpleSymbol("ProCamera_walk$SavedPhoto").readResolve();
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) new SimpleSymbol(PropertyTypeConstants.PROPERTY_TYPE_TEXT).readResolve();
        Lit21 = simpleSymbol2;
        Lit375 = PairWithPosition.make(simpleSymbol2, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 1376692);
        Lit374 = PairWithPosition.make(Lit410, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 1376519);
        Lit373 = (SimpleSymbol) new SimpleSymbol("GetImageAsBase64").readResolve();
        Lit372 = new FString("com.kumaraswamy.camerax.ProCamera");
        Lit371 = (SimpleSymbol) new SimpleSymbol("ProCamera_walk").readResolve();
        Lit370 = new FString("com.kumaraswamy.camerax.ProCamera");
        Lit369 = new FString("com.google.appinventor.components.runtime.Clock");
        Lit368 = (SimpleSymbol) new SimpleSymbol("Clock_walk").readResolve();
        Lit367 = new FString("com.google.appinventor.components.runtime.Clock");
        Lit366 = new FString("uk.co.metricrat.imagebase64.ImageBase64");
        Lit365 = (SimpleSymbol) new SimpleSymbol("ImageBase641").readResolve();
        Lit364 = new FString("uk.co.metricrat.imagebase64.ImageBase64");
        Lit363 = new FString("com.google.appinventor.components.runtime.Web");
        Lit362 = (SimpleSymbol) new SimpleSymbol("Web_walk").readResolve();
        Lit361 = new FString("com.google.appinventor.components.runtime.Web");
        Lit360 = new FString("com.NimaAI.NimaAI");
        Lit359 = (SimpleSymbol) new SimpleSymbol("AI_thời_tiết").readResolve();
        Lit358 = new FString("com.NimaAI.NimaAI");
        Lit357 = (SimpleSymbol) new SimpleSymbol("TextRecognized").readResolve();
        Lit356 = (SimpleSymbol) new SimpleSymbol("Recy2$TextRecognized").readResolve();
        Lit355 = PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 1265921);
        Lit354 = (SimpleSymbol) new SimpleSymbol("Delete").readResolve();
        Lit353 = PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 1265758);
        Lit352 = new FString("com.kabby.Recy.Recy");
        Lit351 = new FString("com.kabby.Recy.Recy");
        Lit350 = new FString("com.google.appinventor.components.runtime.BluetoothClient");
        Lit349 = (SimpleSymbol) new SimpleSymbol("BluetoothClient2").readResolve();
        Lit348 = new FString("com.google.appinventor.components.runtime.BluetoothClient");
        Lit347 = new FString("com.google.appinventor.components.runtime.Clock");
        Lit346 = (SimpleSymbol) new SimpleSymbol("Clock6").readResolve();
        Lit345 = new FString("com.google.appinventor.components.runtime.Clock");
        Lit344 = (SimpleSymbol) new SimpleSymbol("File1$GotText").readResolve();
        Lit343 = (SimpleSymbol) new SimpleSymbol("$text").readResolve();
        Lit342 = (SimpleSymbol) new SimpleSymbol("PhoneNumber").readResolve();
        Lit341 = new FString("com.google.appinventor.components.runtime.File");
        Lit340 = (SimpleSymbol) new SimpleSymbol("WritePermission").readResolve();
        Lit339 = (SimpleSymbol) new SimpleSymbol("ReadPermission").readResolve();
        Lit338 = new FString("com.google.appinventor.components.runtime.File");
        Lit337 = new FString("com.google.appinventor.components.runtime.BluetoothClient");
        Lit336 = new FString("com.google.appinventor.components.runtime.BluetoothClient");
        Lit335 = new FString("com.google.appinventor.components.runtime.Clock");
        Lit334 = new FString("com.google.appinventor.components.runtime.Clock");
        Lit333 = (SimpleSymbol) new SimpleSymbol("GotTranslation").readResolve();
        Lit332 = (SimpleSymbol) new SimpleSymbol("Translator1$GotTranslation").readResolve();
        Lit331 = PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 1093946);
        Lit330 = PairWithPosition.make(Lit21, PairWithPosition.make(Lit21, PairWithPosition.make(Lit21, PairWithPosition.make(Lit21, PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 1093929), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 1093924), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 1093919), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 1093914), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 1093908);
        Lit329 = (SimpleSymbol) new SimpleSymbol("$translation").readResolve();
        Lit328 = new FString("com.google.appinventor.components.runtime.Translator");
        Lit327 = (SimpleSymbol) new SimpleSymbol("ApiKey").readResolve();
        Lit326 = new FString("com.google.appinventor.components.runtime.Translator");
        Lit325 = (SimpleSymbol) new SimpleSymbol("Clock4$Timer").readResolve();
        Lit324 = (SimpleSymbol) new SimpleSymbol("TakePicture").readResolve();
        Lit323 = (SimpleSymbol) new SimpleSymbol("Output").readResolve();
        Lit322 = new FString("com.google.appinventor.components.runtime.Clock");
        Lit321 = new FString("com.google.appinventor.components.runtime.Clock");
        Lit320 = (SimpleSymbol) new SimpleSymbol("GotText").readResolve();
        Lit319 = (SimpleSymbol) new SimpleSymbol("Web1$GotText").readResolve();
        Lit318 = PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 1020986);
        Lit317 = PairWithPosition.make(Lit21, PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 1020812), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 1020806);
        Lit316 = (SimpleSymbol) new SimpleSymbol("RequestTranslation").readResolve();
        Lit315 = (SimpleSymbol) new SimpleSymbol("Translator1").readResolve();
        Lit314 = PairWithPosition.make(Lit406, PairWithPosition.make(Lit407, PairWithPosition.make(Lit405, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 1020675), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 1020664), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 1020659);
        Lit313 = PairWithPosition.make(Lit406, PairWithPosition.make(Lit407, PairWithPosition.make(Lit405, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 1020496), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 1020485), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 1020480);
        Lit312 = PairWithPosition.make(Lit406, PairWithPosition.make(Lit407, PairWithPosition.make(Lit405, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 1020316), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 1020305), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 1020300);
        Lit311 = PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 1020151);
        Lit310 = (SimpleSymbol) new SimpleSymbol("$responseContent").readResolve();
        Lit309 = (SimpleSymbol) new SimpleSymbol("JsonTextDecode").readResolve();
        Lit308 = PairWithPosition.make(Lit405, PairWithPosition.make(Lit405, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 1020007), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 1020002);
        Lit307 = IntNum.make(200);
        Lit306 = (SimpleSymbol) new SimpleSymbol("$responseCode").readResolve();
        Lit305 = new FString("com.google.appinventor.components.runtime.Web");
        Lit304 = new FString("com.google.appinventor.components.runtime.Web");
        Lit303 = (SimpleSymbol) new SimpleSymbol("SavedPhoto").readResolve();
        Lit302 = (SimpleSymbol) new SimpleSymbol("ProCamera1$SavedPhoto").readResolve();
        Lit301 = PairWithPosition.make(Lit21, PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 991417), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 991411);
        Lit300 = (SimpleSymbol) new SimpleSymbol("ProcessImageFromPath").readResolve();
        Lit299 = (SimpleSymbol) new SimpleSymbol("Recy2").readResolve();
        Lit298 = new FString("com.kumaraswamy.camerax.ProCamera");
        Lit297 = (SimpleSymbol) new SimpleSymbol("Enhance").readResolve();
        Lit296 = new FString("com.kumaraswamy.camerax.ProCamera");
        Lit295 = new FString("com.google.appinventor.components.runtime.Clock");
        Lit294 = (SimpleSymbol) new SimpleSymbol("Clock3").readResolve();
        Lit293 = new FString("com.google.appinventor.components.runtime.Clock");
        Lit292 = new FString("com.google.appinventor.components.runtime.Sound");
        Lit291 = (SimpleSymbol) new SimpleSymbol("Source").readResolve();
        Lit290 = new FString("com.google.appinventor.components.runtime.Sound");
        Lit289 = (SimpleSymbol) new SimpleSymbol("Clock2$Timer").readResolve();
        Lit288 = (SimpleSymbol) new SimpleSymbol("MakePhoneCallDirect").readResolve();
        Lit287 = PairWithPosition.make(Lit21, PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 905658), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 905652);
        Lit286 = PairWithPosition.make(Lit405, PairWithPosition.make(Lit405, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 905408), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 905403);
        Lit285 = PairWithPosition.make(Lit405, PairWithPosition.make(Lit405, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 905318), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 905313);
        Lit284 = new FString("com.google.appinventor.components.runtime.Clock");
        Lit283 = new FString("com.google.appinventor.components.runtime.Clock");
        Lit282 = new FString("com.google.appinventor.components.runtime.Texting");
        Lit281 = (SimpleSymbol) new SimpleSymbol("ReceivingEnabled").readResolve();
        Lit280 = new FString("com.google.appinventor.components.runtime.Texting");
        Lit279 = new FString("com.google.appinventor.components.runtime.LocationSensor");
        Lit278 = IntNum.make(10000);
        Lit277 = (SimpleSymbol) new SimpleSymbol("TimeInterval").readResolve();
        Lit276 = new FString("com.google.appinventor.components.runtime.LocationSensor");
        Lit275 = new FString("com.google.appinventor.components.runtime.PhoneCall");
        Lit274 = (SimpleSymbol) new SimpleSymbol("PhoneCall1").readResolve();
        Lit273 = new FString("com.google.appinventor.components.runtime.PhoneCall");
        Lit272 = (SimpleSymbol) new SimpleSymbol("AccelerationChanged").readResolve();
        Lit271 = (SimpleSymbol) new SimpleSymbol("AccelerometerSensor1$AccelerationChanged").readResolve();
        Lit270 = PairWithPosition.make(Lit405, PairWithPosition.make(Lit405, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 800063), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 800058);
        Lit269 = PairWithPosition.make(Lit88, PairWithPosition.make(Lit88, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 799969), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 799961);
        Lit268 = PairWithPosition.make(Lit88, PairWithPosition.make(Lit88, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 799876), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 799868);
        Lit267 = IntNum.make(-1);
        Lit266 = PairWithPosition.make(Lit88, PairWithPosition.make(Lit88, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 799769), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 799761);
        Lit265 = PairWithPosition.make(Lit88, PairWithPosition.make(Lit88, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 799677), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 799669);
        Lit264 = IntNum.make(10000);
        Lit263 = (SimpleSymbol) new SimpleSymbol("Play").readResolve();
        Lit262 = PairWithPosition.make(Lit405, PairWithPosition.make(Lit405, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 799309), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 799304);
        Lit261 = PairWithPosition.make(Lit88, PairWithPosition.make(Lit88, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 799216), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 799208);
        Lit260 = PairWithPosition.make(Lit88, PairWithPosition.make(Lit88, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 799123), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 799115);
        Lit259 = IntNum.make(-7);
        Lit258 = PairWithPosition.make(Lit88, PairWithPosition.make(Lit88, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 799030), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 799022);
        Lit257 = (SimpleSymbol) new SimpleSymbol("$zAccel").readResolve();
        Lit256 = PairWithPosition.make(Lit88, PairWithPosition.make(Lit88, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 798938), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 798930);
        Lit255 = IntNum.make(9);
        Lit254 = (SimpleSymbol) new SimpleSymbol("$xAccel").readResolve();
        Lit253 = PairWithPosition.make(Lit405, PairWithPosition.make(Lit405, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 798811), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 798806);
        Lit252 = new FString("com.google.appinventor.components.runtime.AccelerometerSensor");
        Lit251 = (SimpleSymbol) new SimpleSymbol("Sensitivity").readResolve();
        Lit250 = (SimpleSymbol) new SimpleSymbol("AccelerometerSensor1").readResolve();
        Lit249 = new FString("com.google.appinventor.components.runtime.AccelerometerSensor");
        Lit248 = (SimpleSymbol) new SimpleSymbol("AfterGettingText").readResolve();
        Lit247 = (SimpleSymbol) new SimpleSymbol("ScSpeechRecognizer1$AfterGettingText").readResolve();
        Lit246 = PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 765750);
        Lit245 = PairWithPosition.make(Lit21, PairWithPosition.make(Lit21, PairWithPosition.make(Lit21, PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 765733), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 765728), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 765723), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 765717);
        Lit244 = PairWithPosition.make(Lit408, PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 765492), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 765477);
        Lit243 = PairWithPosition.make(Lit408, PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 765342), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 765327);
        Lit242 = (SimpleSymbol) new SimpleSymbol("FormatDateTime").readResolve();
        Lit241 = (SimpleSymbol) new SimpleSymbol("Now").readResolve();
        Lit240 = (SimpleSymbol) new SimpleSymbol("Clock5").readResolve();
        Lit239 = PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 765101);
        Lit238 = PairWithPosition.make(Lit21, PairWithPosition.make(Lit409, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 764921), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 764915);
        Lit237 = PairWithPosition.make(Lit405, PairWithPosition.make(Lit405, PairWithPosition.make(Lit405, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 764892), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 764888), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 764883);
        Lit236 = PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 764677);
        Lit235 = (SimpleSymbol) new SimpleSymbol("Get").readResolve();
        Lit234 = PairWithPosition.make(Lit21, PairWithPosition.make(Lit21, PairWithPosition.make(Lit21, PairWithPosition.make(Lit21, PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 764461), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 764456), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 764451), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 764446), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 764440);
        Lit233 = (SimpleSymbol) new SimpleSymbol("Url").readResolve();
        Lit232 = (SimpleSymbol) new SimpleSymbol("Web1").readResolve();
        Lit231 = PairWithPosition.make(Lit405, PairWithPosition.make(Lit405, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 764110), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 764105);
        Lit230 = (SimpleSymbol) new SimpleSymbol("Latitude").readResolve();
        Lit229 = PairWithPosition.make(Lit405, PairWithPosition.make(Lit405, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 763988), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 763983);
        Lit228 = (SimpleSymbol) new SimpleSymbol("Longitude").readResolve();
        Lit227 = PairWithPosition.make(Lit21, PairWithPosition.make(Lit409, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 763807), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 763801);
        Lit226 = PairWithPosition.make(Lit405, PairWithPosition.make(Lit405, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 763778), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 763773);
        Lit225 = IntNum.make(5000);
        Lit224 = PairWithPosition.make(Lit410, PairWithPosition.make(Lit88, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 763451), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 763440);
        Lit223 = (SimpleSymbol) new SimpleSymbol("CameraTypeFront").readResolve();
        Lit222 = (SimpleSymbol) new SimpleSymbol("ProCamera1").readResolve();
        Lit221 = PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 763280);
        Lit220 = PairWithPosition.make(Lit21, PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 763105), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 763099);
        Lit219 = PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 762902);
        Lit218 = PairWithPosition.make(Lit21, PairWithPosition.make(Lit409, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 762716), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 762710);
        Lit217 = PairWithPosition.make(Lit405, PairWithPosition.make(Lit405, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 762687), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 762682);
        Lit216 = PairWithPosition.make(Lit21, PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 762401), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 762395);
        Lit215 = PairWithPosition.make(Lit21, PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 762193), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 762187);
        Lit214 = PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 762049);
        Lit213 = (SimpleSymbol) new SimpleSymbol("$result").readResolve();
        Lit212 = (SimpleSymbol) new SimpleSymbol("SendToAI").readResolve();
        Lit211 = PairWithPosition.make(Lit405, PairWithPosition.make(Lit405, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 761942), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 761937);
        Lit210 = new FString("com.Scorpio.ScSpeechRecognizer");
        Lit209 = new FString("com.Scorpio.ScSpeechRecognizer");
        Lit208 = (SimpleSymbol) new SimpleSymbol("Timer").readResolve();
        Lit207 = (SimpleSymbol) new SimpleSymbol("Clock1$Timer").readResolve();
        Lit206 = IntNum.make(600000);
        Lit205 = (SimpleSymbol) new SimpleSymbol("SendMessageDirect").readResolve();
        Lit204 = PairWithPosition.make(Lit21, PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 733531), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 733525);
        Lit203 = (SimpleSymbol) new SimpleSymbol("CurrentAddress").readResolve();
        Lit202 = (SimpleSymbol) new SimpleSymbol("Message").readResolve();
        Lit201 = (SimpleSymbol) new SimpleSymbol("Texting1").readResolve();
        Lit200 = PairWithPosition.make(Lit405, PairWithPosition.make(Lit405, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 733275), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 733270);
        Lit199 = new FString("com.google.appinventor.components.runtime.Clock");
        Lit198 = new FString("com.google.appinventor.components.runtime.Clock");
        Lit197 = (SimpleSymbol) new SimpleSymbol("GotResponse").readResolve();
        Lit196 = (SimpleSymbol) new SimpleSymbol("NimaAI1$GotResponse").readResolve();
        Lit195 = PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 704610);
        Lit194 = (SimpleSymbol) new SimpleSymbol("$response").readResolve();
        Lit193 = new FString("com.NimaAI.NimaAI");
        Lit192 = (SimpleSymbol) new SimpleSymbol("NimaAI1").readResolve();
        Lit191 = new FString("com.NimaAI.NimaAI");
        Lit190 = new FString("com.google.appinventor.components.runtime.TextToSpeech");
        Lit189 = new FString("com.google.appinventor.components.runtime.TextToSpeech");
        Lit188 = (SimpleSymbol) new SimpleSymbol("Button1$Click").readResolve();
        Lit187 = (SimpleSymbol) new SimpleSymbol("LongClick").readResolve();
        Lit186 = (SimpleSymbol) new SimpleSymbol("Button1$LongClick").readResolve();
        Lit185 = PairWithPosition.make(Lit405, PairWithPosition.make(Lit405, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 647259), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 647254);
        Lit184 = new FString("com.google.appinventor.components.runtime.Button");
        Lit183 = IntNum.make(new int[]{-1, 0});
        Lit182 = (SimpleSymbol) new SimpleSymbol("Text").readResolve();
        Lit181 = (SimpleSymbol) new SimpleSymbol("Shape").readResolve();
        Lit180 = DFloNum.make(50);
        Lit179 = (SimpleSymbol) new SimpleSymbol("FontSize").readResolve();
        Lit178 = IntNum.make(new int[]{-16560488, 0});
        Lit177 = (SimpleSymbol) new SimpleSymbol("Button1").readResolve();
        Lit176 = new FString("com.google.appinventor.components.runtime.Button");
        Lit175 = new FString("com.google.appinventor.components.runtime.Image");
        Lit174 = (SimpleSymbol) new SimpleSymbol("Picture").readResolve();
        Lit173 = new FString("com.google.appinventor.components.runtime.Image");
        Lit172 = (SimpleSymbol) new SimpleSymbol("WebViewStringChange").readResolve();
        Lit171 = (SimpleSymbol) new SimpleSymbol("WebViewer1$WebViewStringChange").readResolve();
        Lit170 = PairWithPosition.make(Lit88, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 533469);
        Lit169 = PairWithPosition.make(Lit409, PairWithPosition.make(Lit88, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 533439), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 533433);
        Lit168 = PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 533284);
        Lit167 = PairWithPosition.make(Lit409, PairWithPosition.make(Lit88, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 533254), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 533248);
        Lit166 = PairWithPosition.make(Lit88, PairWithPosition.make(Lit88, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 533079), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 533071);
        Lit165 = PairWithPosition.make(Lit409, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 533042);
        Lit164 = PairWithPosition.make(Lit21, PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 532901), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 532895);
        Lit163 = PairWithPosition.make(Lit405, PairWithPosition.make(Lit405, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 532775), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 532770);
        Lit162 = PairWithPosition.make(Lit21, PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 532747), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 532741);
        Lit161 = (SimpleSymbol) new SimpleSymbol("$value").readResolve();
        Lit160 = PairWithPosition.make(Lit405, PairWithPosition.make(Lit405, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 532573), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 532568);
        Lit159 = new FString("com.google.appinventor.components.runtime.WebViewer");
        Lit158 = (SimpleSymbol) new SimpleSymbol("UsesCamera").readResolve();
        Lit157 = (SimpleSymbol) new SimpleSymbol("PromptforPermission").readResolve();
        Lit156 = new FString("com.google.appinventor.components.runtime.WebViewer");
        Lit155 = new FString("com.google.appinventor.components.runtime.Image");
        Lit154 = (SimpleSymbol) new SimpleSymbol("Image_walk").readResolve();
        Lit153 = new FString("com.google.appinventor.components.runtime.Image");
        Lit152 = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
        Lit151 = (SimpleSymbol) new SimpleSymbol("VerticalArrangement2").readResolve();
        Lit150 = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
        Lit149 = (SimpleSymbol) new SimpleSymbol("Click").readResolve();
        Lit148 = (SimpleSymbol) new SimpleSymbol("Setting_BT$Click").readResolve();
        Lit147 = PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 405589);
        Lit146 = new FString("com.google.appinventor.components.runtime.Button");
        Lit145 = IntNum.make(16777215);
        Lit144 = (SimpleSymbol) new SimpleSymbol("TextColor").readResolve();
        Lit143 = (SimpleSymbol) new SimpleSymbol(Component.LISTVIEW_KEY_IMAGE).readResolve();
        Lit142 = IntNum.make(50);
        Lit141 = IntNum.make(new int[]{-16560488, 0});
        Lit140 = (SimpleSymbol) new SimpleSymbol("BackgroundColor").readResolve();
        Lit139 = (SimpleSymbol) new SimpleSymbol("Setting_BT").readResolve();
        Lit138 = new FString("com.google.appinventor.components.runtime.Button");
        Lit137 = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
        Lit136 = (SimpleSymbol) new SimpleSymbol("VerticalArrangement3").readResolve();
        Lit135 = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
        Lit134 = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
        Lit133 = (SimpleSymbol) new SimpleSymbol("VerticalArrangement1").readResolve();
        Lit132 = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
        Lit131 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        Lit130 = (SimpleSymbol) new SimpleSymbol("HorizontalArrangement2").readResolve();
        Lit129 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        Lit128 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        Lit127 = IntNum.make(-2);
        Lit126 = (SimpleSymbol) new SimpleSymbol("Width").readResolve();
        Lit125 = IntNum.make(650);
        Lit124 = (SimpleSymbol) new SimpleSymbol("Height").readResolve();
        Lit123 = (SimpleSymbol) new SimpleSymbol("HorizontalArrangement1").readResolve();
        Lit122 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        Lit121 = (SimpleSymbol) new SimpleSymbol("Initialize").readResolve();
        Lit120 = (SimpleSymbol) new SimpleSymbol("Screen1$Initialize").readResolve();
        Lit119 = (SimpleSymbol) new SimpleSymbol("GetText").readResolve();
        Lit118 = PairWithPosition.make(Lit405, PairWithPosition.make(Lit405, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 222378), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 222373);
        Lit117 = IntNum.make(1);
        Lit116 = (SimpleSymbol) new SimpleSymbol("Language").readResolve();
        Lit115 = (SimpleSymbol) new SimpleSymbol("Country").readResolve();
        Lit114 = (SimpleSymbol) new SimpleSymbol("PreferOffLine").readResolve();
        Lit113 = (SimpleSymbol) new SimpleSymbol("EnableGoogleDialog").readResolve();
        Lit112 = (SimpleSymbol) new SimpleSymbol("ScSpeechRecognizer1").readResolve();
        Lit111 = (SimpleSymbol) new SimpleSymbol("Enabled").readResolve();
        Lit110 = (SimpleSymbol) new SimpleSymbol("LocationSensor1").readResolve();
        Lit109 = IntNum.make(10000);
        Lit108 = (SimpleSymbol) new SimpleSymbol("Clock4").readResolve();
        Lit107 = (SimpleSymbol) new SimpleSymbol("Clock2").readResolve();
        Lit106 = IntNum.make(600000);
        Lit105 = (SimpleSymbol) new SimpleSymbol("Clock1").readResolve();
        Lit104 = IntNum.make(2000);
        Lit103 = (SimpleSymbol) new SimpleSymbol("TimerInterval").readResolve();
        Lit102 = IntNum.make(10);
        Lit101 = (SimpleSymbol) new SimpleSymbol("DelimiterByte").readResolve();
        Lit100 = (SimpleSymbol) new SimpleSymbol("BluetoothClient1").readResolve();
        Lit99 = PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 221266);
        Lit98 = (SimpleSymbol) new SimpleSymbol("ReadFrom").readResolve();
        Lit97 = (SimpleSymbol) new SimpleSymbol("File1").readResolve();
        Lit96 = (SimpleSymbol) new SimpleSymbol("VersionCode").readResolve();
        Lit95 = (SimpleSymbol) new SimpleSymbol("TitleVisible").readResolve();
        Lit94 = (SimpleSymbol) new SimpleSymbol("Title").readResolve();
        Lit93 = (SimpleSymbol) new SimpleSymbol("Sizing").readResolve();
        Lit92 = (SimpleSymbol) new SimpleSymbol("ShowListsAsJson").readResolve();
        Lit91 = (SimpleSymbol) new SimpleSymbol("ScreenOrientation").readResolve();
        Lit90 = IntNum.make(new int[]{-16502434, 0});
        Lit89 = (SimpleSymbol) new SimpleSymbol("PrimaryColorDark").readResolve();
        Lit87 = IntNum.make(new int[]{-16560488, 0});
        Lit86 = (SimpleSymbol) new SimpleSymbol("PrimaryColor").readResolve();
        Lit85 = (SimpleSymbol) new SimpleSymbol("Icon").readResolve();
        Lit84 = (SimpleSymbol) new SimpleSymbol("AppName").readResolve();
        Lit83 = (SimpleSymbol) new SimpleSymbol("ActionBar").readResolve();
        Lit82 = (SimpleSymbol) new SimpleSymbol("g$value").readResolve();
        Lit81 = IntNum.make(0);
        Lit80 = (SimpleSymbol) new SimpleSymbol("g$AI").readResolve();
        Lit79 = (SimpleSymbol) new SimpleSymbol("g$parts").readResolve();
        Lit78 = (SimpleSymbol) new SimpleSymbol("g$run2").readResolve();
        Lit77 = (SimpleSymbol) new SimpleSymbol("g$run").readResolve();
        Lit76 = (SimpleSymbol) new SimpleSymbol("g$btData").readResolve();
        Lit75 = (SimpleSymbol) new SimpleSymbol("g$weather_data").readResolve();
        Lit74 = (SimpleSymbol) new SimpleSymbol("g$weather").readResolve();
        Lit73 = (SimpleSymbol) new SimpleSymbol("g$temp").readResolve();
        Lit72 = (SimpleSymbol) new SimpleSymbol("g$strTime").readResolve();
        Lit71 = (SimpleSymbol) new SimpleSymbol("g$strDate").readResolve();
        Lit70 = (SimpleSymbol) new SimpleSymbol("g$response").readResolve();
        Lit69 = (SimpleSymbol) new SimpleSymbol("g$pw").readResolve();
        Lit68 = (SimpleSymbol) new SimpleSymbol("g$prediction").readResolve();
        Lit67 = (SimpleSymbol) new SimpleSymbol("g$ph").readResolve();
        Lit66 = (SimpleSymbol) new SimpleSymbol("g$iw").readResolve();
        Lit65 = (SimpleSymbol) new SimpleSymbol("g$image").readResolve();
        Lit64 = (SimpleSymbol) new SimpleSymbol("g$ih").readResolve();
        Lit63 = (SimpleSymbol) new SimpleSymbol("g$currentInstant").readResolve();
        Lit62 = (SimpleSymbol) new SimpleSymbol("g$current_weather").readResolve();
        Lit61 = (SimpleSymbol) new SimpleSymbol("g$status").readResolve();
        Lit60 = (SimpleSymbol) new SimpleSymbol("g$fall").readResolve();
        Lit59 = PairWithPosition.make(Lit21, PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 54325), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 54319);
        Lit58 = PairWithPosition.make(Lit21, PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 54092), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 54086);
        Lit57 = PairWithPosition.make(Lit21, PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 53853), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 53847);
        Lit56 = PairWithPosition.make(Lit21, PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 53595), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 53589);
        Lit55 = PairWithPosition.make(Lit405, PairWithPosition.make(Lit405, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 53482), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 53477);
        Lit54 = PairWithPosition.make(Lit405, PairWithPosition.make(Lit405, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 53386), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 53381);
        Lit53 = IntNum.make(250);
        Lit52 = PairWithPosition.make(Lit21, PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 54325), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 54319);
        Lit51 = IntNum.make(2);
        Lit50 = IntNum.make(350);
        Lit49 = PairWithPosition.make(Lit21, PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 54092), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 54086);
        Lit48 = IntNum.make(4);
        Lit47 = IntNum.make(500);
        Lit46 = PairWithPosition.make(Lit21, PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 53853), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 53847);
        Lit45 = IntNum.make(5);
        Lit44 = IntNum.make(700);
        Lit43 = PairWithPosition.make(Lit21, PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 53595), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 53589);
        Lit42 = IntNum.make(3);
        Lit41 = (SimpleSymbol) new SimpleSymbol("$data").readResolve();
        Lit40 = PairWithPosition.make(Lit405, PairWithPosition.make(Lit405, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 53482), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 53477);
        Lit39 = PairWithPosition.make(Lit405, PairWithPosition.make(Lit405, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 53386), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 53381);
        Lit38 = (SimpleSymbol) new SimpleSymbol("p$XuLyCanhBaoPhanCung").readResolve();
        Lit37 = PairWithPosition.make(Lit88, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 49644);
        Lit36 = PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 49571);
        Lit35 = PairWithPosition.make(Lit88, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 49644);
        Lit34 = IntNum.make(150);
        Lit33 = PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 49571);
        Lit32 = (SimpleSymbol) new SimpleSymbol("Stop").readResolve();
        Lit31 = (SimpleSymbol) new SimpleSymbol("Sound2").readResolve();
        Lit30 = (SimpleSymbol) new SimpleSymbol("p$stopWalkMode").readResolve();
        Lit29 = (SimpleSymbol) new SimpleSymbol("p$startReadMode").readResolve();
        Lit28 = PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 41167);
        Lit27 = (SimpleSymbol) new SimpleSymbol("Clock_BT").readResolve();
        Lit26 = PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 41167);
        Lit25 = (SimpleSymbol) new SimpleSymbol("g$walkMode").readResolve();
        Lit24 = (SimpleSymbol) new SimpleSymbol("p$startWalkMode").readResolve();
        Lit23 = (SimpleSymbol) new SimpleSymbol("Visible").readResolve();
        Lit22 = (SimpleSymbol) new SimpleSymbol("Logo").readResolve();
        Lit20 = (SimpleSymbol) new SimpleSymbol("HomeUrl").readResolve();
        Lit19 = (SimpleSymbol) new SimpleSymbol("WebViewer1").readResolve();
        Lit18 = (SimpleSymbol) new SimpleSymbol("p$StartAIEngine").readResolve();
        Lit17 = PairWithPosition.make(Lit88, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 33025);
        Lit16 = PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 32929);
        Lit15 = (SimpleSymbol) new SimpleSymbol(PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN).readResolve();
        Lit14 = (SimpleSymbol) new SimpleSymbol("TimerEnabled").readResolve();
        Lit13 = (SimpleSymbol) new SimpleSymbol("Clock_AlertLock").readResolve();
        Lit12 = PairWithPosition.make(Lit88, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 33025);
        Lit11 = (SimpleSymbol) new SimpleSymbol("$vibrateMs").readResolve();
        Lit10 = (SimpleSymbol) new SimpleSymbol("Vibrate").readResolve();
        Lit9 = (SimpleSymbol) new SimpleSymbol("Sound1").readResolve();
        Lit8 = PairWithPosition.make(Lit21, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Screen1.yail", 32929);
        Lit7 = (SimpleSymbol) new SimpleSymbol("$message").readResolve();
        Lit6 = (SimpleSymbol) new SimpleSymbol("Speak").readResolve();
        Lit5 = (SimpleSymbol) new SimpleSymbol("TextToSpeech1").readResolve();
        Lit4 = (SimpleSymbol) new SimpleSymbol("g$canBTAlert").readResolve();
        Lit3 = (SimpleSymbol) new SimpleSymbol("p$CanhBaoDiBo").readResolve();
        Lit2 = (SimpleSymbol) new SimpleSymbol("*the-null-value*").readResolve();
        Lit1 = (SimpleSymbol) new SimpleSymbol("getMessage").readResolve();
        Lit0 = (SimpleSymbol) new SimpleSymbol("Screen1").readResolve();
    }

    public Screen1() {
        ModuleInfo.register(this);
        frame frameVar = new frame();
        frameVar.$main = this;
        this.get$Mnsimple$Mnname = new ModuleMethod(frameVar, 13, Lit391, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.onCreate = new ModuleMethod(frameVar, 14, "onCreate", FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.android$Mnlog$Mnform = new ModuleMethod(frameVar, 15, Lit392, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.add$Mnto$Mnform$Mnenvironment = new ModuleMethod(frameVar, 16, Lit393, 8194);
        this.lookup$Mnin$Mnform$Mnenvironment = new ModuleMethod(frameVar, 17, Lit394, 8193);
        this.is$Mnbound$Mnin$Mnform$Mnenvironment = new ModuleMethod(frameVar, 19, Lit395, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.add$Mnto$Mnglobal$Mnvar$Mnenvironment = new ModuleMethod(frameVar, 20, Lit396, 8194);
        this.add$Mnto$Mnevents = new ModuleMethod(frameVar, 21, Lit397, 8194);
        this.add$Mnto$Mncomponents = new ModuleMethod(frameVar, 22, Lit398, 16388);
        this.add$Mnto$Mnglobal$Mnvars = new ModuleMethod(frameVar, 23, Lit399, 8194);
        this.add$Mnto$Mnform$Mndo$Mnafter$Mncreation = new ModuleMethod(frameVar, 24, Lit400, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.send$Mnerror = new ModuleMethod(frameVar, 25, Lit401, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.process$Mnexception = new ModuleMethod(frameVar, 26, "process-exception", FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.dispatchEvent = new ModuleMethod(frameVar, 27, Lit402, 16388);
        this.dispatchGenericEvent = new ModuleMethod(frameVar, 28, Lit403, 16388);
        this.lookup$Mnhandler = new ModuleMethod(frameVar, 29, Lit404, 8194);
        ModuleMethod moduleMethod = new ModuleMethod(frameVar, 30, null, 0);
        moduleMethod.setProperty("source-location", "/tmp/runtime3808032275111475787.scm:658");
        lambda$Fn1 = moduleMethod;
        this.$define = new ModuleMethod(frameVar, 31, "$define", 0);
        lambda$Fn2 = new ModuleMethod(frameVar, 32, null, 8194);
        lambda$Fn4 = new ModuleMethod(frameVar, 33, null, 8194);
        lambda$Fn3 = new ModuleMethod(frameVar, 34, null, 0);
        lambda$Fn5 = new ModuleMethod(frameVar, 35, null, 0);
        lambda$Fn7 = new ModuleMethod(frameVar, 36, null, 0);
        lambda$Fn6 = new ModuleMethod(frameVar, 37, null, 0);
        lambda$Fn8 = new ModuleMethod(frameVar, 38, null, 0);
        lambda$Fn10 = new ModuleMethod(frameVar, 39, null, 0);
        lambda$Fn9 = new ModuleMethod(frameVar, 40, null, 0);
        lambda$Fn11 = new ModuleMethod(frameVar, 41, null, 0);
        lambda$Fn13 = new ModuleMethod(frameVar, 42, null, 0);
        lambda$Fn12 = new ModuleMethod(frameVar, 43, null, 0);
        lambda$Fn14 = new ModuleMethod(frameVar, 44, null, 0);
        lambda$Fn16 = new ModuleMethod(frameVar, 45, null, 0);
        lambda$Fn15 = new ModuleMethod(frameVar, 46, null, 0);
        lambda$Fn18 = new ModuleMethod(frameVar, 47, null, 0);
        lambda$Fn19 = new ModuleMethod(frameVar, 48, null, 0);
        lambda$Fn17 = new ModuleMethod(frameVar, 49, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        lambda$Fn22 = new ModuleMethod(frameVar, 50, null, 0);
        lambda$Fn23 = new ModuleMethod(frameVar, 51, null, 0);
        lambda$Fn21 = new ModuleMethod(frameVar, 52, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        lambda$Fn20 = new ModuleMethod(frameVar, 53, null, 0);
        lambda$Fn24 = new ModuleMethod(frameVar, 54, null, 0);
        lambda$Fn25 = new ModuleMethod(frameVar, 55, null, 0);
        lambda$Fn26 = new ModuleMethod(frameVar, 56, null, 0);
        lambda$Fn27 = new ModuleMethod(frameVar, 57, null, 0);
        lambda$Fn28 = new ModuleMethod(frameVar, 58, null, 0);
        lambda$Fn29 = new ModuleMethod(frameVar, 59, null, 0);
        lambda$Fn30 = new ModuleMethod(frameVar, 60, null, 0);
        lambda$Fn31 = new ModuleMethod(frameVar, 61, null, 0);
        lambda$Fn32 = new ModuleMethod(frameVar, 62, null, 0);
        lambda$Fn33 = new ModuleMethod(frameVar, 63, null, 0);
        lambda$Fn34 = new ModuleMethod(frameVar, 64, null, 0);
        lambda$Fn35 = new ModuleMethod(frameVar, 65, null, 0);
        lambda$Fn36 = new ModuleMethod(frameVar, 66, null, 0);
        lambda$Fn37 = new ModuleMethod(frameVar, 67, null, 0);
        lambda$Fn38 = new ModuleMethod(frameVar, 68, null, 0);
        lambda$Fn39 = new ModuleMethod(frameVar, 69, null, 0);
        lambda$Fn40 = new ModuleMethod(frameVar, 70, null, 0);
        lambda$Fn41 = new ModuleMethod(frameVar, 71, null, 0);
        lambda$Fn42 = new ModuleMethod(frameVar, 72, null, 0);
        lambda$Fn43 = new ModuleMethod(frameVar, 73, null, 0);
        lambda$Fn44 = new ModuleMethod(frameVar, 74, null, 0);
        lambda$Fn45 = new ModuleMethod(frameVar, 75, null, 0);
        lambda$Fn46 = new ModuleMethod(frameVar, 76, null, 0);
        lambda$Fn47 = new ModuleMethod(frameVar, 77, null, 0);
        lambda$Fn48 = new ModuleMethod(frameVar, 78, null, 0);
        this.Screen1$Initialize = new ModuleMethod(frameVar, 79, Lit120, 0);
        lambda$Fn49 = new ModuleMethod(frameVar, 80, null, 0);
        lambda$Fn50 = new ModuleMethod(frameVar, 81, null, 0);
        lambda$Fn51 = new ModuleMethod(frameVar, 82, null, 0);
        lambda$Fn52 = new ModuleMethod(frameVar, 83, null, 0);
        lambda$Fn53 = new ModuleMethod(frameVar, 84, null, 0);
        lambda$Fn54 = new ModuleMethod(frameVar, 85, null, 0);
        lambda$Fn55 = new ModuleMethod(frameVar, 86, null, 0);
        lambda$Fn56 = new ModuleMethod(frameVar, 87, null, 0);
        this.Setting_BT$Click = new ModuleMethod(frameVar, 88, Lit148, 0);
        lambda$Fn57 = new ModuleMethod(frameVar, 89, null, 0);
        lambda$Fn58 = new ModuleMethod(frameVar, 90, null, 0);
        lambda$Fn59 = new ModuleMethod(frameVar, 91, null, 0);
        lambda$Fn60 = new ModuleMethod(frameVar, 92, null, 0);
        this.WebViewer1$WebViewStringChange = new ModuleMethod(frameVar, 93, Lit171, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        lambda$Fn61 = new ModuleMethod(frameVar, 94, null, 0);
        lambda$Fn62 = new ModuleMethod(frameVar, 95, null, 0);
        lambda$Fn63 = new ModuleMethod(frameVar, 96, null, 0);
        lambda$Fn64 = new ModuleMethod(frameVar, 97, null, 0);
        this.Button1$LongClick = new ModuleMethod(frameVar, 98, Lit186, 0);
        this.Button1$Click = new ModuleMethod(frameVar, 99, Lit188, 0);
        this.NimaAI1$GotResponse = new ModuleMethod(frameVar, 100, Lit196, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.Clock1$Timer = new ModuleMethod(frameVar, 101, Lit207, 0);
        lambda$Fn65 = new ModuleMethod(frameVar, 102, null, 0);
        lambda$Fn66 = new ModuleMethod(frameVar, 103, null, 0);
        this.ScSpeechRecognizer1$AfterGettingText = new ModuleMethod(frameVar, 104, Lit247, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        lambda$Fn67 = new ModuleMethod(frameVar, 105, null, 0);
        lambda$Fn68 = new ModuleMethod(frameVar, 106, null, 0);
        lambda$Fn74 = new ModuleMethod(frameVar, 107, null, 0);
        lambda$Fn82 = new ModuleMethod(frameVar, 108, null, 0);
        this.AccelerometerSensor1$AccelerationChanged = new ModuleMethod(frameVar, 109, Lit271, 12291);
        lambda$Fn83 = new ModuleMethod(frameVar, 110, null, 0);
        lambda$Fn84 = new ModuleMethod(frameVar, 111, null, 0);
        lambda$Fn85 = new ModuleMethod(frameVar, 112, null, 0);
        lambda$Fn86 = new ModuleMethod(frameVar, 113, null, 0);
        lambda$Fn87 = new ModuleMethod(frameVar, 114, null, 0);
        lambda$Fn88 = new ModuleMethod(frameVar, 115, null, 0);
        this.Clock2$Timer = new ModuleMethod(frameVar, 116, Lit289, 0);
        lambda$Fn89 = new ModuleMethod(frameVar, 117, null, 0);
        lambda$Fn90 = new ModuleMethod(frameVar, 118, null, 0);
        lambda$Fn91 = new ModuleMethod(frameVar, 119, null, 0);
        lambda$Fn92 = new ModuleMethod(frameVar, R.styleable.AppCompatTheme_viewInflaterClass, null, 0);
        this.ProCamera1$SavedPhoto = new ModuleMethod(frameVar, 121, Lit302, 0);
        this.Web1$GotText = new ModuleMethod(frameVar, 122, Lit319, 16388);
        lambda$Fn93 = new ModuleMethod(frameVar, 123, null, 0);
        lambda$Fn94 = new ModuleMethod(frameVar, 124, null, 0);
        this.Clock4$Timer = new ModuleMethod(frameVar, 125, Lit325, 0);
        lambda$Fn95 = new ModuleMethod(frameVar, 126, null, 0);
        lambda$Fn96 = new ModuleMethod(frameVar, 127, null, 0);
        this.Translator1$GotTranslation = new ModuleMethod(frameVar, 128, Lit332, 8194);
        lambda$Fn97 = new ModuleMethod(frameVar, 129, null, 0);
        lambda$Fn98 = new ModuleMethod(frameVar, 130, null, 0);
        lambda$Fn99 = new ModuleMethod(frameVar, 131, null, 0);
        lambda$Fn100 = new ModuleMethod(frameVar, 132, null, 0);
        this.File1$GotText = new ModuleMethod(frameVar, 133, Lit344, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        lambda$Fn101 = new ModuleMethod(frameVar, 134, null, 0);
        lambda$Fn102 = new ModuleMethod(frameVar, 135, null, 0);
        this.Recy2$TextRecognized = new ModuleMethod(frameVar, 136, Lit356, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.ProCamera_walk$SavedPhoto = new ModuleMethod(frameVar, 137, Lit376, 0);
        this.Clock_BT$Timer = new ModuleMethod(frameVar, 138, Lit387, 0);
        this.Clock_AlertLock$Timer = new ModuleMethod(frameVar, 139, Lit390, 0);
    }

    static Boolean lambda12() {
        return Boolean.FALSE;
    }

    static Boolean lambda25() {
        return Boolean.FALSE;
    }

    static Boolean lambda26() {
        return Boolean.FALSE;
    }

    static Boolean lambda27() {
        return Boolean.FALSE;
    }

    static Boolean lambda43() {
        return Boolean.TRUE;
    }

    static Boolean lambda44() {
        return Boolean.TRUE;
    }

    static Boolean lambda45() {
        return Boolean.TRUE;
    }

    public Object lookupInFormEnvironment(Symbol symbol) {
        return lookupInFormEnvironment(symbol, Boolean.FALSE);
    }

    @Override // java.lang.Runnable
    public void run() {
        CallContext callContext = CallContext.getInstance();
        Consumer consumer = callContext.consumer;
        callContext.consumer = VoidConsumer.instance;
        try {
            run(callContext);
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        ModuleBody.runCleanup(callContext, th, consumer);
    }

    public final void run(CallContext $ctx) {
        Consumer $result = $ctx.consumer;
        Object objFind = require.find("com.google.youngandroid.runtime");
        try {
            ((Runnable) objFind).run();
            this.$Stdebug$Mnform$St = Boolean.FALSE;
            this.form$Mnenvironment = Environment.make(Lit0.toString());
            FString fStringStringAppend = strings.stringAppend(Lit0.toString(), "-global-vars");
            this.global$Mnvar$Mnenvironment = Environment.make(fStringStringAppend == null ? null : fStringStringAppend.toString());
            Screen1 = null;
            this.form$Mnname$Mnsymbol = Lit0;
            this.events$Mnto$Mnregister = LList.Empty;
            this.components$Mnto$Mncreate = LList.Empty;
            this.global$Mnvars$Mnto$Mncreate = LList.Empty;
            this.form$Mndo$Mnafter$Mncreation = LList.Empty;
            Object objFind2 = require.find("com.google.youngandroid.runtime");
            try {
                ((Runnable) objFind2).run();
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(Lit3, lambda$Fn2), $result);
                } else {
                    addToGlobalVars(Lit3, lambda$Fn3);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(Lit18, lambda$Fn5), $result);
                } else {
                    addToGlobalVars(Lit18, lambda$Fn6);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(Lit24, lambda$Fn8), $result);
                } else {
                    addToGlobalVars(Lit24, lambda$Fn9);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(Lit29, lambda$Fn11), $result);
                } else {
                    addToGlobalVars(Lit29, lambda$Fn12);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(Lit30, lambda$Fn14), $result);
                } else {
                    addToGlobalVars(Lit30, lambda$Fn15);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(Lit38, lambda$Fn17), $result);
                } else {
                    addToGlobalVars(Lit38, lambda$Fn20);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(Lit60, Boolean.FALSE), $result);
                } else {
                    addToGlobalVars(Lit60, lambda$Fn24);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(Lit61, Boolean.FALSE), $result);
                } else {
                    addToGlobalVars(Lit61, lambda$Fn25);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(Lit25, Boolean.FALSE), $result);
                } else {
                    addToGlobalVars(Lit25, lambda$Fn26);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(Lit62, ""), $result);
                } else {
                    addToGlobalVars(Lit62, lambda$Fn27);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(Lit63, ""), $result);
                } else {
                    addToGlobalVars(Lit63, lambda$Fn28);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(Lit64, ""), $result);
                } else {
                    addToGlobalVars(Lit64, lambda$Fn29);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(Lit65, ""), $result);
                } else {
                    addToGlobalVars(Lit65, lambda$Fn30);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(Lit66, ""), $result);
                } else {
                    addToGlobalVars(Lit66, lambda$Fn31);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(Lit67, ""), $result);
                } else {
                    addToGlobalVars(Lit67, lambda$Fn32);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(Lit68, ""), $result);
                } else {
                    addToGlobalVars(Lit68, lambda$Fn33);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(Lit69, ""), $result);
                } else {
                    addToGlobalVars(Lit69, lambda$Fn34);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(Lit70, ""), $result);
                } else {
                    addToGlobalVars(Lit70, lambda$Fn35);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(Lit71, ""), $result);
                } else {
                    addToGlobalVars(Lit71, lambda$Fn36);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(Lit72, ""), $result);
                } else {
                    addToGlobalVars(Lit72, lambda$Fn37);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(Lit73, ""), $result);
                } else {
                    addToGlobalVars(Lit73, lambda$Fn38);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(Lit74, ""), $result);
                } else {
                    addToGlobalVars(Lit74, lambda$Fn39);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(Lit75, ""), $result);
                } else {
                    addToGlobalVars(Lit75, lambda$Fn40);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(Lit76, ""), $result);
                } else {
                    addToGlobalVars(Lit76, lambda$Fn41);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(Lit4, Boolean.TRUE), $result);
                } else {
                    addToGlobalVars(Lit4, lambda$Fn42);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(Lit77, Boolean.TRUE), $result);
                } else {
                    addToGlobalVars(Lit77, lambda$Fn43);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(Lit78, Boolean.TRUE), $result);
                } else {
                    addToGlobalVars(Lit78, lambda$Fn44);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(Lit79, runtime.callYailPrimitive(runtime.make$Mnyail$Mnlist, LList.Empty, LList.Empty, "make a list")), $result);
                } else {
                    addToGlobalVars(Lit79, lambda$Fn45);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(Lit80, Lit81), $result);
                } else {
                    addToGlobalVars(Lit80, lambda$Fn46);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(Lit82, Lit81), $result);
                } else {
                    addToGlobalVars(Lit82, lambda$Fn47);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    runtime.setAndCoerceProperty$Ex(Lit0, Lit83, Boolean.TRUE, Lit15);
                    runtime.setAndCoerceProperty$Ex(Lit0, Lit84, "Artificial Eyes", Lit21);
                    runtime.setAndCoerceProperty$Ex(Lit0, Lit85, "Picture1.png", Lit21);
                    runtime.setAndCoerceProperty$Ex(Lit0, Lit86, Lit87, Lit88);
                    runtime.setAndCoerceProperty$Ex(Lit0, Lit89, Lit90, Lit88);
                    runtime.setAndCoerceProperty$Ex(Lit0, Lit91, "unspecified", Lit21);
                    runtime.setAndCoerceProperty$Ex(Lit0, Lit92, Boolean.TRUE, Lit15);
                    runtime.setAndCoerceProperty$Ex(Lit0, Lit93, "Responsive", Lit21);
                    runtime.setAndCoerceProperty$Ex(Lit0, Lit94, "Artificial Eyes", Lit21);
                    runtime.setAndCoerceProperty$Ex(Lit0, Lit95, Boolean.FALSE, Lit15);
                    Values.writeValues(runtime.setAndCoerceProperty$Ex(Lit0, Lit96, Lit51, Lit88), $result);
                } else {
                    addToFormDoAfterCreation(new Promise(lambda$Fn48));
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    runtime.addToCurrentFormEnvironment(Lit120, this.Screen1$Initialize);
                } else {
                    addToFormEnvironment(Lit120, this.Screen1$Initialize);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Screen1", "Initialize");
                } else {
                    addToEvents(Lit0, Lit121);
                }
                this.HorizontalArrangement1 = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit122, Lit123, lambda$Fn49), $result);
                } else {
                    addToComponents(Lit0, Lit128, Lit123, lambda$Fn50);
                }
                this.HorizontalArrangement2 = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit123, Lit129, Lit130, lambda$Fn51), $result);
                } else {
                    addToComponents(Lit123, Lit131, Lit130, lambda$Fn52);
                }
                this.VerticalArrangement1 = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit123, Lit132, Lit133, Boolean.FALSE), $result);
                } else {
                    addToComponents(Lit123, Lit134, Lit133, Boolean.FALSE);
                }
                this.VerticalArrangement3 = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit133, Lit135, Lit136, lambda$Fn53), $result);
                } else {
                    addToComponents(Lit133, Lit137, Lit136, lambda$Fn54);
                }
                this.Setting_BT = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit133, Lit138, Lit139, lambda$Fn55), $result);
                } else {
                    addToComponents(Lit133, Lit146, Lit139, lambda$Fn56);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    runtime.addToCurrentFormEnvironment(Lit148, this.Setting_BT$Click);
                } else {
                    addToFormEnvironment(Lit148, this.Setting_BT$Click);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Setting_BT", "Click");
                } else {
                    addToEvents(Lit139, Lit149);
                }
                this.VerticalArrangement2 = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit133, Lit150, Lit151, Boolean.FALSE), $result);
                } else {
                    addToComponents(Lit133, Lit152, Lit151, Boolean.FALSE);
                }
                this.Image_walk = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit151, Lit153, Lit154, lambda$Fn57), $result);
                } else {
                    addToComponents(Lit151, Lit155, Lit154, lambda$Fn58);
                }
                this.WebViewer1 = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit151, Lit156, Lit19, lambda$Fn59), $result);
                } else {
                    addToComponents(Lit151, Lit159, Lit19, lambda$Fn60);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    runtime.addToCurrentFormEnvironment(Lit171, this.WebViewer1$WebViewStringChange);
                } else {
                    addToFormEnvironment(Lit171, this.WebViewer1$WebViewStringChange);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "WebViewer1", "WebViewStringChange");
                } else {
                    addToEvents(Lit19, Lit172);
                }
                this.Logo = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit151, Lit173, Lit22, lambda$Fn61), $result);
                } else {
                    addToComponents(Lit151, Lit175, Lit22, lambda$Fn62);
                }
                this.Button1 = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit176, Lit177, lambda$Fn63), $result);
                } else {
                    addToComponents(Lit0, Lit184, Lit177, lambda$Fn64);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    runtime.addToCurrentFormEnvironment(Lit186, this.Button1$LongClick);
                } else {
                    addToFormEnvironment(Lit186, this.Button1$LongClick);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Button1", "LongClick");
                } else {
                    addToEvents(Lit177, Lit187);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    runtime.addToCurrentFormEnvironment(Lit188, this.Button1$Click);
                } else {
                    addToFormEnvironment(Lit188, this.Button1$Click);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Button1", "Click");
                } else {
                    addToEvents(Lit177, Lit149);
                }
                this.TextToSpeech1 = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit189, Lit5, Boolean.FALSE), $result);
                } else {
                    addToComponents(Lit0, Lit190, Lit5, Boolean.FALSE);
                }
                this.NimaAI1 = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit191, Lit192, Boolean.FALSE), $result);
                } else {
                    addToComponents(Lit0, Lit193, Lit192, Boolean.FALSE);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    runtime.addToCurrentFormEnvironment(Lit196, this.NimaAI1$GotResponse);
                } else {
                    addToFormEnvironment(Lit196, this.NimaAI1$GotResponse);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "NimaAI1", "GotResponse");
                } else {
                    addToEvents(Lit192, Lit197);
                }
                this.Clock1 = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit198, Lit105, Boolean.FALSE), $result);
                } else {
                    addToComponents(Lit0, Lit199, Lit105, Boolean.FALSE);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    runtime.addToCurrentFormEnvironment(Lit207, this.Clock1$Timer);
                } else {
                    addToFormEnvironment(Lit207, this.Clock1$Timer);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Clock1", "Timer");
                } else {
                    addToEvents(Lit105, Lit208);
                }
                this.ScSpeechRecognizer1 = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit209, Lit112, Boolean.FALSE), $result);
                } else {
                    addToComponents(Lit0, Lit210, Lit112, Boolean.FALSE);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    runtime.addToCurrentFormEnvironment(Lit247, this.ScSpeechRecognizer1$AfterGettingText);
                } else {
                    addToFormEnvironment(Lit247, this.ScSpeechRecognizer1$AfterGettingText);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "ScSpeechRecognizer1", "AfterGettingText");
                } else {
                    addToEvents(Lit112, Lit248);
                }
                this.AccelerometerSensor1 = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit249, Lit250, lambda$Fn67), $result);
                } else {
                    addToComponents(Lit0, Lit252, Lit250, lambda$Fn68);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    runtime.addToCurrentFormEnvironment(Lit271, this.AccelerometerSensor1$AccelerationChanged);
                } else {
                    addToFormEnvironment(Lit271, this.AccelerometerSensor1$AccelerationChanged);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "AccelerometerSensor1", "AccelerationChanged");
                } else {
                    addToEvents(Lit250, Lit272);
                }
                this.PhoneCall1 = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit273, Lit274, Boolean.FALSE), $result);
                } else {
                    addToComponents(Lit0, Lit275, Lit274, Boolean.FALSE);
                }
                this.LocationSensor1 = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit276, Lit110, lambda$Fn83), $result);
                } else {
                    addToComponents(Lit0, Lit279, Lit110, lambda$Fn84);
                }
                this.Texting1 = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit280, Lit201, lambda$Fn85), $result);
                } else {
                    addToComponents(Lit0, Lit282, Lit201, lambda$Fn86);
                }
                this.Clock2 = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit283, Lit107, Boolean.FALSE), $result);
                } else {
                    addToComponents(Lit0, Lit284, Lit107, Boolean.FALSE);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    runtime.addToCurrentFormEnvironment(Lit289, this.Clock2$Timer);
                } else {
                    addToFormEnvironment(Lit289, this.Clock2$Timer);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Clock2", "Timer");
                } else {
                    addToEvents(Lit107, Lit208);
                }
                this.Sound1 = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit290, Lit9, lambda$Fn89), $result);
                } else {
                    addToComponents(Lit0, Lit292, Lit9, lambda$Fn90);
                }
                this.Clock3 = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit293, Lit294, Boolean.FALSE), $result);
                } else {
                    addToComponents(Lit0, Lit295, Lit294, Boolean.FALSE);
                }
                this.ProCamera1 = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit296, Lit222, lambda$Fn91), $result);
                } else {
                    addToComponents(Lit0, Lit298, Lit222, lambda$Fn92);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    runtime.addToCurrentFormEnvironment(Lit302, this.ProCamera1$SavedPhoto);
                } else {
                    addToFormEnvironment(Lit302, this.ProCamera1$SavedPhoto);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "ProCamera1", "SavedPhoto");
                } else {
                    addToEvents(Lit222, Lit303);
                }
                this.Web1 = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit304, Lit232, Boolean.FALSE), $result);
                } else {
                    addToComponents(Lit0, Lit305, Lit232, Boolean.FALSE);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    runtime.addToCurrentFormEnvironment(Lit319, this.Web1$GotText);
                } else {
                    addToFormEnvironment(Lit319, this.Web1$GotText);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Web1", "GotText");
                } else {
                    addToEvents(Lit232, Lit320);
                }
                this.Clock4 = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit321, Lit108, lambda$Fn93), $result);
                } else {
                    addToComponents(Lit0, Lit322, Lit108, lambda$Fn94);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    runtime.addToCurrentFormEnvironment(Lit325, this.Clock4$Timer);
                } else {
                    addToFormEnvironment(Lit325, this.Clock4$Timer);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Clock4", "Timer");
                } else {
                    addToEvents(Lit108, Lit208);
                }
                this.Translator1 = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit326, Lit315, lambda$Fn95), $result);
                } else {
                    addToComponents(Lit0, Lit328, Lit315, lambda$Fn96);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    runtime.addToCurrentFormEnvironment(Lit332, this.Translator1$GotTranslation);
                } else {
                    addToFormEnvironment(Lit332, this.Translator1$GotTranslation);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Translator1", "GotTranslation");
                } else {
                    addToEvents(Lit315, Lit333);
                }
                this.Clock5 = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit334, Lit240, lambda$Fn97), $result);
                } else {
                    addToComponents(Lit0, Lit335, Lit240, lambda$Fn98);
                }
                this.BluetoothClient1 = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit336, Lit100, Boolean.FALSE), $result);
                } else {
                    addToComponents(Lit0, Lit337, Lit100, Boolean.FALSE);
                }
                this.File1 = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit338, Lit97, lambda$Fn99), $result);
                } else {
                    addToComponents(Lit0, Lit341, Lit97, lambda$Fn100);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    runtime.addToCurrentFormEnvironment(Lit344, this.File1$GotText);
                } else {
                    addToFormEnvironment(Lit344, this.File1$GotText);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "File1", "GotText");
                } else {
                    addToEvents(Lit97, Lit320);
                }
                this.Clock6 = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit345, Lit346, lambda$Fn101), $result);
                } else {
                    addToComponents(Lit0, Lit347, Lit346, lambda$Fn102);
                }
                this.BluetoothClient2 = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit348, Lit349, Boolean.FALSE), $result);
                } else {
                    addToComponents(Lit0, Lit350, Lit349, Boolean.FALSE);
                }
                this.Recy2 = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit351, Lit299, Boolean.FALSE), $result);
                } else {
                    addToComponents(Lit0, Lit352, Lit299, Boolean.FALSE);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    runtime.addToCurrentFormEnvironment(Lit356, this.Recy2$TextRecognized);
                } else {
                    addToFormEnvironment(Lit356, this.Recy2$TextRecognized);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Recy2", "TextRecognized");
                } else {
                    addToEvents(Lit299, Lit357);
                }
                this.f0AI_thi_tit = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit358, Lit359, Boolean.FALSE), $result);
                } else {
                    addToComponents(Lit0, Lit360, Lit359, Boolean.FALSE);
                }
                this.Web_walk = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit361, Lit362, Boolean.FALSE), $result);
                } else {
                    addToComponents(Lit0, Lit363, Lit362, Boolean.FALSE);
                }
                this.ImageBase641 = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit364, Lit365, Boolean.FALSE), $result);
                } else {
                    addToComponents(Lit0, Lit366, Lit365, Boolean.FALSE);
                }
                this.Clock_walk = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit367, Lit368, Boolean.FALSE), $result);
                } else {
                    addToComponents(Lit0, Lit369, Lit368, Boolean.FALSE);
                }
                this.ProCamera_walk = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit370, Lit371, Boolean.FALSE), $result);
                } else {
                    addToComponents(Lit0, Lit372, Lit371, Boolean.FALSE);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    runtime.addToCurrentFormEnvironment(Lit376, this.ProCamera_walk$SavedPhoto);
                } else {
                    addToFormEnvironment(Lit376, this.ProCamera_walk$SavedPhoto);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "ProCamera_walk", "SavedPhoto");
                } else {
                    addToEvents(Lit371, Lit303);
                }
                this.Sound2 = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit377, Lit31, Boolean.FALSE), $result);
                } else {
                    addToComponents(Lit0, Lit378, Lit31, Boolean.FALSE);
                }
                this.Clock_BT = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit379, Lit27, Boolean.FALSE), $result);
                } else {
                    addToComponents(Lit0, Lit380, Lit27, Boolean.FALSE);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    runtime.addToCurrentFormEnvironment(Lit387, this.Clock_BT$Timer);
                } else {
                    addToFormEnvironment(Lit387, this.Clock_BT$Timer);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Clock_BT", "Timer");
                } else {
                    addToEvents(Lit27, Lit208);
                }
                this.Clock_AlertLock = null;
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit388, Lit13, Boolean.FALSE), $result);
                } else {
                    addToComponents(Lit0, Lit389, Lit13, Boolean.FALSE);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    runtime.addToCurrentFormEnvironment(Lit390, this.Clock_AlertLock$Timer);
                } else {
                    addToFormEnvironment(Lit390, this.Clock_AlertLock$Timer);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
                    EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Clock_AlertLock", "Timer");
                } else {
                    addToEvents(Lit13, Lit208);
                }
                runtime.initRuntime();
            } catch (ClassCastException e) {
                throw new WrongType(e, "java.lang.Runnable.run()", 1, objFind2);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "java.lang.Runnable.run()", 1, objFind);
        }
    }

    /* JADX INFO: compiled from: Screen1.yail */
    public class frame extends ModuleBody {
        Screen1 $main;

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 109 ? this.$main.AccelerometerSensor1$AccelerationChanged(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
        }

        @Override // gnu.expr.ModuleBody
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            if (moduleMethod.selector != 109) {
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            switch (moduleMethod.selector) {
                case 16:
                    try {
                        this.$main.addToFormEnvironment((Symbol) obj, obj2);
                        return Values.empty;
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "add-to-form-environment", 1, obj);
                    }
                case 17:
                    try {
                        return this.$main.lookupInFormEnvironment((Symbol) obj, obj2);
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "lookup-in-form-environment", 1, obj);
                    }
                case 20:
                    try {
                        this.$main.addToGlobalVarEnvironment((Symbol) obj, obj2);
                        return Values.empty;
                    } catch (ClassCastException e3) {
                        throw new WrongType(e3, "add-to-global-var-environment", 1, obj);
                    }
                case 21:
                    this.$main.addToEvents(obj, obj2);
                    return Values.empty;
                case 23:
                    this.$main.addToGlobalVars(obj, obj2);
                    return Values.empty;
                case 29:
                    return this.$main.lookupHandler(obj, obj2);
                case 32:
                    return Screen1.lambda3(obj, obj2);
                case 33:
                    return Screen1.lambda5(obj, obj2);
                case 128:
                    return this.$main.Translator1$GotTranslation(obj, obj2);
                default:
                    return super.apply2(moduleMethod, obj, obj2);
            }
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) throws Throwable {
            switch (moduleMethod.selector) {
                case 30:
                    return Screen1.lambda2();
                case 31:
                    this.$main.$define();
                    return Values.empty;
                case 32:
                case 33:
                case 49:
                case 52:
                case 93:
                case 100:
                case 104:
                case 109:
                case 122:
                case 128:
                case 133:
                case 136:
                default:
                    return super.apply0(moduleMethod);
                case 34:
                    return Screen1.lambda4();
                case 35:
                    return Screen1.lambda6();
                case 36:
                    return Screen1.lambda8();
                case 37:
                    return Screen1.lambda7();
                case 38:
                    return Screen1.lambda9();
                case 39:
                    return Screen1.lambda11();
                case 40:
                    return Screen1.lambda10();
                case 41:
                    return Screen1.lambda12();
                case 42:
                    return Screen1.lambda14();
                case 43:
                    return Screen1.lambda13();
                case 44:
                    return Screen1.lambda15();
                case 45:
                    return Screen1.lambda17();
                case 46:
                    return Screen1.lambda16();
                case 47:
                    return Screen1.lambda19();
                case 48:
                    return Screen1.lambda20();
                case 50:
                    return Screen1.lambda23();
                case 51:
                    return Screen1.lambda24();
                case 53:
                    return Screen1.lambda21();
                case 54:
                    return Screen1.lambda25();
                case 55:
                    return Screen1.lambda26();
                case 56:
                    return Screen1.lambda27();
                case 57:
                    return Screen1.lambda28();
                case 58:
                    return Screen1.lambda29();
                case 59:
                    return Screen1.lambda30();
                case 60:
                    return Screen1.lambda31();
                case 61:
                    return Screen1.lambda32();
                case 62:
                    return Screen1.lambda33();
                case 63:
                    return Screen1.lambda34();
                case 64:
                    return Screen1.lambda35();
                case 65:
                    return Screen1.lambda36();
                case 66:
                    return Screen1.lambda37();
                case 67:
                    return Screen1.lambda38();
                case 68:
                    return Screen1.lambda39();
                case 69:
                    return Screen1.lambda40();
                case 70:
                    return Screen1.lambda41();
                case 71:
                    return Screen1.lambda42();
                case 72:
                    return Screen1.lambda43();
                case 73:
                    return Screen1.lambda44();
                case 74:
                    return Screen1.lambda45();
                case 75:
                    return Screen1.lambda46();
                case 76:
                    return Screen1.lambda47();
                case 77:
                    return Screen1.lambda48();
                case 78:
                    return Screen1.lambda49();
                case 79:
                    return this.$main.Screen1$Initialize();
                case 80:
                    return Screen1.lambda50();
                case R.styleable.AppCompatTheme_panelBackground /* 81 */:
                    return Screen1.lambda51();
                case 82:
                    return Screen1.lambda52();
                case 83:
                    return Screen1.lambda53();
                case 84:
                    return Screen1.lambda54();
                case 85:
                    return Screen1.lambda55();
                case 86:
                    return Screen1.lambda56();
                case 87:
                    return Screen1.lambda57();
                case 88:
                    return this.$main.Setting_BT$Click();
                case 89:
                    return Screen1.lambda58();
                case 90:
                    return Screen1.lambda59();
                case 91:
                    return Screen1.lambda60();
                case 92:
                    return Screen1.lambda61();
                case 94:
                    return Screen1.lambda62();
                case 95:
                    return Screen1.lambda63();
                case 96:
                    return Screen1.lambda64();
                case 97:
                    return Screen1.lambda65();
                case 98:
                    return this.$main.Button1$LongClick();
                case 99:
                    return this.$main.Button1$Click();
                case 101:
                    return this.$main.Clock1$Timer();
                case 102:
                    return Screen1.lambda66();
                case 103:
                    return Screen1.lambda67();
                case 105:
                    return Screen1.lambda68();
                case 106:
                    return Screen1.lambda69();
                case 107:
                    return frame0.lambda75();
                case 108:
                    return frame0.lambda83();
                case 110:
                    return Screen1.lambda84();
                case 111:
                    return Screen1.lambda85();
                case 112:
                    return Screen1.lambda86();
                case 113:
                    return Screen1.lambda87();
                case 114:
                    return Screen1.lambda88();
                case 115:
                    return Screen1.lambda89();
                case 116:
                    return this.$main.Clock2$Timer();
                case 117:
                    return Screen1.lambda90();
                case 118:
                    return Screen1.lambda91();
                case 119:
                    return Screen1.lambda92();
                case R.styleable.AppCompatTheme_viewInflaterClass /* 120 */:
                    return Screen1.lambda93();
                case 121:
                    return this.$main.ProCamera1$SavedPhoto();
                case 123:
                    return Screen1.lambda94();
                case 124:
                    return Screen1.lambda95();
                case 125:
                    return this.$main.Clock4$Timer();
                case 126:
                    return Screen1.lambda96();
                case 127:
                    return Screen1.lambda97();
                case 129:
                    return Screen1.lambda98();
                case 130:
                    return Screen1.lambda99();
                case 131:
                    return Screen1.lambda100();
                case 132:
                    return Screen1.lambda101();
                case 134:
                    return Screen1.lambda102();
                case 135:
                    return Screen1.lambda103();
                case 137:
                    return this.$main.ProCamera_walk$SavedPhoto();
                case 138:
                    return this.$main.Clock_BT$Timer();
                case 139:
                    return this.$main.Clock_AlertLock$Timer();
            }
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            switch (moduleMethod.selector) {
                case 13:
                    return this.$main.getSimpleName(obj);
                case 14:
                    try {
                        this.$main.onCreate((Bundle) obj);
                        return Values.empty;
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "onCreate", 1, obj);
                    }
                case 15:
                    this.$main.androidLogForm(obj);
                    return Values.empty;
                case 17:
                    try {
                        return this.$main.lookupInFormEnvironment((Symbol) obj);
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "lookup-in-form-environment", 1, obj);
                    }
                case 19:
                    try {
                        return this.$main.isBoundInFormEnvironment((Symbol) obj) ? Boolean.TRUE : Boolean.FALSE;
                    } catch (ClassCastException e3) {
                        throw new WrongType(e3, "is-bound-in-form-environment", 1, obj);
                    }
                case 24:
                    this.$main.addToFormDoAfterCreation(obj);
                    return Values.empty;
                case 25:
                    this.$main.sendError(obj);
                    return Values.empty;
                case 26:
                    return this.$main.processException(obj);
                case 49:
                    return Screen1.lambda18(obj);
                case 52:
                    return Screen1.lambda22(obj);
                case 93:
                    return this.$main.WebViewer1$WebViewStringChange(obj);
                case 100:
                    return this.$main.NimaAI1$GotResponse(obj);
                case 104:
                    return this.$main.ScSpeechRecognizer1$AfterGettingText(obj);
                case 133:
                    return this.$main.File1$GotText(obj);
                case 136:
                    return this.$main.Recy2$TextRecognized(obj);
                default:
                    return super.apply1(moduleMethod, obj);
            }
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            switch (moduleMethod.selector) {
                case 30:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 31:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 32:
                case 33:
                case 49:
                case 52:
                case 93:
                case 100:
                case 104:
                case 109:
                case 122:
                case 128:
                case 133:
                case 136:
                default:
                    return super.match0(moduleMethod, callContext);
                case 34:
                case 35:
                case 36:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 37:
                case 38:
                case 39:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 40:
                case 41:
                case 42:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 43:
                case 44:
                case 45:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 46:
                case 47:
                case 48:
                case 50:
                case 51:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                case 69:
                case 70:
                case 71:
                case 72:
                case 73:
                case 74:
                case 75:
                case 76:
                case 77:
                case 78:
                case 79:
                case 80:
                case R.styleable.AppCompatTheme_panelBackground /* 81 */:
                case 82:
                case 83:
                case 84:
                case 85:
                case 86:
                case 87:
                case 88:
                case 89:
                case 90:
                case 91:
                case 92:
                case 94:
                case 95:
                case 96:
                case 97:
                case 98:
                case 99:
                case 101:
                case 102:
                case 103:
                case 105:
                case 106:
                case 107:
                case 108:
                case 110:
                case 111:
                case 112:
                case 113:
                case 114:
                case 115:
                case 116:
                case 117:
                case 118:
                case 119:
                case R.styleable.AppCompatTheme_viewInflaterClass /* 120 */:
                case 121:
                case 123:
                case 124:
                case 125:
                case 126:
                case 127:
                case 129:
                case 130:
                case 131:
                case 132:
                case 134:
                case 135:
                case 137:
                case 138:
                case 139:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
            }
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            switch (moduleMethod.selector) {
                case 13:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 14:
                    if (!(obj instanceof Screen1)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 15:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 17:
                    if (!(obj instanceof Symbol)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 19:
                    if (!(obj instanceof Symbol)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 24:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 25:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 26:
                    if (!(obj instanceof Screen1)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 49:
                case 52:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 93:
                case 100:
                case 104:
                case 133:
                case 136:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                default:
                    return super.match1(moduleMethod, obj, callContext);
            }
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            switch (moduleMethod.selector) {
                case 16:
                    if (!(obj instanceof Symbol)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 17:
                    if (!(obj instanceof Symbol)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 20:
                    if (!(obj instanceof Symbol)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 21:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 23:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 29:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 32:
                case 33:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 128:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                default:
                    return super.match2(moduleMethod, obj, obj2, callContext);
            }
        }

        @Override // gnu.expr.ModuleBody
        public int match4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4, CallContext callContext) {
            switch (moduleMethod.selector) {
                case 22:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.value3 = obj3;
                    callContext.value4 = obj4;
                    callContext.proc = moduleMethod;
                    callContext.pc = 4;
                    return 0;
                case 27:
                    if (!(obj instanceof Screen1)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    if (!(obj2 instanceof Component)) {
                        return -786430;
                    }
                    callContext.value2 = obj2;
                    if (!(obj3 instanceof String)) {
                        return -786429;
                    }
                    callContext.value3 = obj3;
                    if (!(obj4 instanceof String)) {
                        return -786428;
                    }
                    callContext.value4 = obj4;
                    callContext.proc = moduleMethod;
                    callContext.pc = 4;
                    return 0;
                case 28:
                    if (!(obj instanceof Screen1)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    if (!(obj2 instanceof Component)) {
                        return -786430;
                    }
                    callContext.value2 = obj2;
                    if (!(obj3 instanceof String)) {
                        return -786429;
                    }
                    callContext.value3 = obj3;
                    callContext.value4 = obj4;
                    callContext.proc = moduleMethod;
                    callContext.pc = 4;
                    return 0;
                case 122:
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

        @Override // gnu.expr.ModuleBody
        public Object apply4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4) throws Throwable {
            switch (moduleMethod.selector) {
                case 22:
                    this.$main.addToComponents(obj, obj2, obj3, obj4);
                    return Values.empty;
                case 27:
                    try {
                        try {
                            try {
                                try {
                                    return this.$main.dispatchEvent((Component) obj, (String) obj2, (String) obj3, (Object[]) obj4) ? Boolean.TRUE : Boolean.FALSE;
                                } catch (ClassCastException e) {
                                    throw new WrongType(e, "dispatchEvent", 4, obj4);
                                }
                            } catch (ClassCastException e2) {
                                throw new WrongType(e2, "dispatchEvent", 3, obj3);
                            }
                        } catch (ClassCastException e3) {
                            throw new WrongType(e3, "dispatchEvent", 2, obj2);
                        }
                    } catch (ClassCastException e4) {
                        throw new WrongType(e4, "dispatchEvent", 1, obj);
                    }
                case 28:
                    try {
                        try {
                            try {
                                try {
                                    this.$main.dispatchGenericEvent((Component) obj, (String) obj2, obj3 != Boolean.FALSE, (Object[]) obj4);
                                    return Values.empty;
                                } catch (ClassCastException e5) {
                                    throw new WrongType(e5, "dispatchGenericEvent", 4, obj4);
                                }
                            } catch (ClassCastException e6) {
                                throw new WrongType(e6, "dispatchGenericEvent", 3, obj3);
                            }
                        } catch (ClassCastException e7) {
                            throw new WrongType(e7, "dispatchGenericEvent", 2, obj2);
                        }
                    } catch (ClassCastException e8) {
                        throw new WrongType(e8, "dispatchGenericEvent", 1, obj);
                    }
                case 122:
                    return this.$main.Web1$GotText(obj, obj2, obj3, obj4);
                default:
                    return super.apply4(moduleMethod, obj, obj2, obj3, obj4);
            }
        }
    }

    static Object lambda3(Object $message, Object $vibrateMs) throws Throwable {
        runtime.addGlobalVarToCurrentFormEnvironment(Lit4, Boolean.FALSE);
        runtime.callComponentMethod(Lit5, Lit6, LList.list1($message instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit7), " is not bound in the current context"), "Unbound Variable") : $message), Lit8);
        runtime.callComponentMethod(Lit9, Lit10, LList.list1($vibrateMs instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit11), " is not bound in the current context"), "Unbound Variable") : $vibrateMs), Lit12);
        return runtime.setAndCoerceProperty$Ex(Lit13, Lit14, Boolean.TRUE, Lit15);
    }

    static Procedure lambda4() {
        return lambda$Fn4;
    }

    static Object lambda5(Object $message, Object $vibrateMs) throws Throwable {
        runtime.addGlobalVarToCurrentFormEnvironment(Lit4, Boolean.FALSE);
        runtime.callComponentMethod(Lit5, Lit6, LList.list1($message instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit7), " is not bound in the current context"), "Unbound Variable") : $message), Lit16);
        runtime.callComponentMethod(Lit9, Lit10, LList.list1($vibrateMs instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit11), " is not bound in the current context"), "Unbound Variable") : $vibrateMs), Lit17);
        return runtime.setAndCoerceProperty$Ex(Lit13, Lit14, Boolean.TRUE, Lit15);
    }

    static Object lambda6() {
        runtime.setAndCoerceProperty$Ex(Lit19, Lit20, "http://localhost/AI.html", Lit21);
        runtime.setAndCoerceProperty$Ex(Lit22, Lit23, Boolean.FALSE, Lit15);
        return runtime.setAndCoerceProperty$Ex(Lit19, Lit23, Boolean.TRUE, Lit15);
    }

    static Procedure lambda7() {
        return lambda$Fn7;
    }

    static Object lambda8() {
        runtime.setAndCoerceProperty$Ex(Lit19, Lit20, "http://localhost/AI.html", Lit21);
        runtime.setAndCoerceProperty$Ex(Lit22, Lit23, Boolean.FALSE, Lit15);
        return runtime.setAndCoerceProperty$Ex(Lit19, Lit23, Boolean.TRUE, Lit15);
    }

    static Procedure lambda10() {
        return lambda$Fn10;
    }

    static Object lambda11() throws Throwable {
        runtime.addGlobalVarToCurrentFormEnvironment(Lit25, Boolean.TRUE);
        Scheme.applyToArgs.apply1(runtime.lookupGlobalVarInCurrentFormEnvironment(Lit18, runtime.$Stthe$Mnnull$Mnvalue$St));
        runtime.callComponentMethod(Lit5, Lit6, LList.list1("Đã bật chế độ đi bộ"), Lit28);
        return runtime.setAndCoerceProperty$Ex(Lit27, Lit14, Boolean.TRUE, Lit15);
    }

    static Object lambda9() throws Throwable {
        runtime.addGlobalVarToCurrentFormEnvironment(Lit25, Boolean.TRUE);
        Scheme.applyToArgs.apply1(runtime.lookupGlobalVarInCurrentFormEnvironment(Lit18, runtime.$Stthe$Mnnull$Mnvalue$St));
        runtime.callComponentMethod(Lit5, Lit6, LList.list1("Đã bật chế độ đi bộ"), Lit26);
        return runtime.setAndCoerceProperty$Ex(Lit27, Lit14, Boolean.TRUE, Lit15);
    }

    static Procedure lambda13() {
        return lambda$Fn13;
    }

    static Boolean lambda14() {
        return Boolean.FALSE;
    }

    static Object lambda15() throws Throwable {
        runtime.addGlobalVarToCurrentFormEnvironment(Lit25, Boolean.FALSE);
        runtime.setAndCoerceProperty$Ex(Lit22, Lit23, Boolean.TRUE, Lit15);
        runtime.setAndCoerceProperty$Ex(Lit19, Lit20, "about:blank", Lit21);
        runtime.setAndCoerceProperty$Ex(Lit19, Lit23, Boolean.FALSE, Lit15);
        runtime.callComponentMethod(Lit31, Lit32, LList.Empty, LList.Empty);
        runtime.callComponentMethod(Lit5, Lit6, LList.list1("Đã tắt chế độ đi bộ"), Lit33);
        runtime.callComponentMethod(Lit31, Lit10, LList.list1(Lit34), Lit35);
        return runtime.setAndCoerceProperty$Ex(Lit27, Lit14, Boolean.FALSE, Lit15);
    }

    static Procedure lambda16() {
        return lambda$Fn16;
    }

    static Object lambda17() throws Throwable {
        runtime.addGlobalVarToCurrentFormEnvironment(Lit25, Boolean.FALSE);
        runtime.setAndCoerceProperty$Ex(Lit22, Lit23, Boolean.TRUE, Lit15);
        runtime.setAndCoerceProperty$Ex(Lit19, Lit20, "about:blank", Lit21);
        runtime.setAndCoerceProperty$Ex(Lit19, Lit23, Boolean.FALSE, Lit15);
        runtime.callComponentMethod(Lit31, Lit32, LList.Empty, LList.Empty);
        runtime.callComponentMethod(Lit5, Lit6, LList.list1("Đã tắt chế độ đi bộ"), Lit36);
        runtime.callComponentMethod(Lit31, Lit10, LList.list1(Lit34), Lit37);
        return runtime.setAndCoerceProperty$Ex(Lit27, Lit14, Boolean.FALSE, Lit15);
    }

    static Object lambda18(Object $data) {
        ApplyToArgs applyToArgs;
        Object objLookupGlobalVarInCurrentFormEnvironment;
        String str;
        IntNum intNum;
        if (runtime.processAndDelayed$V(new Object[]{lambda$Fn18, lambda$Fn19}) == Boolean.FALSE) {
            return Values.empty;
        }
        if (runtime.callYailPrimitive(runtime.string$Mncontains, LList.list2($data instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit41), " is not bound in the current context"), "Unbound Variable") : $data, Lit42), Lit43, "string contains") != Boolean.FALSE) {
            applyToArgs = Scheme.applyToArgs;
            objLookupGlobalVarInCurrentFormEnvironment = runtime.lookupGlobalVarInCurrentFormEnvironment(Lit3, runtime.$Stthe$Mnnull$Mnvalue$St);
            str = "Nguy hiểm, phía trước có hố hoặc khoảng trống";
            intNum = Lit44;
        } else {
            if (runtime.callYailPrimitive(runtime.string$Mncontains, LList.list2($data instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit41), " is not bound in the current context"), "Unbound Variable") : $data, Lit45), Lit46, "string contains") != Boolean.FALSE) {
                applyToArgs = Scheme.applyToArgs;
                objLookupGlobalVarInCurrentFormEnvironment = runtime.lookupGlobalVarInCurrentFormEnvironment(Lit3, runtime.$Stthe$Mnnull$Mnvalue$St);
                str = "Cẩn thận, có vật cản phía trước";
                intNum = Lit47;
            } else {
                if (runtime.callYailPrimitive(runtime.string$Mncontains, LList.list2($data instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit41), " is not bound in the current context"), "Unbound Variable") : $data, Lit48), Lit49, "string contains") != Boolean.FALSE) {
                    applyToArgs = Scheme.applyToArgs;
                    objLookupGlobalVarInCurrentFormEnvironment = runtime.lookupGlobalVarInCurrentFormEnvironment(Lit3, runtime.$Stthe$Mnnull$Mnvalue$St);
                    str = "Cẩn thận, có vật cản phía trên";
                    intNum = Lit50;
                } else {
                    if (runtime.callYailPrimitive(runtime.string$Mncontains, LList.list2($data instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit41), " is not bound in the current context"), "Unbound Variable") : $data, Lit51), Lit52, "string contains") == Boolean.FALSE) {
                        return Values.empty;
                    }
                    applyToArgs = Scheme.applyToArgs;
                    objLookupGlobalVarInCurrentFormEnvironment = runtime.lookupGlobalVarInCurrentFormEnvironment(Lit3, runtime.$Stthe$Mnnull$Mnvalue$St);
                    str = "Cẩn thận, có vật cản thấp phía trước";
                    intNum = Lit53;
                }
            }
        }
        return applyToArgs.apply3(objLookupGlobalVarInCurrentFormEnvironment, str, intNum);
    }

    static Object lambda19() {
        return runtime.callYailPrimitive(runtime.yail$Mnequal$Qu, LList.list2(runtime.lookupGlobalVarInCurrentFormEnvironment(Lit25, runtime.$Stthe$Mnnull$Mnvalue$St), Boolean.TRUE), Lit39, "=");
    }

    static Object lambda20() {
        return runtime.callYailPrimitive(runtime.yail$Mnequal$Qu, LList.list2(runtime.lookupGlobalVarInCurrentFormEnvironment(Lit4, runtime.$Stthe$Mnnull$Mnvalue$St), Boolean.TRUE), Lit40, "=");
    }

    static Procedure lambda21() {
        return lambda$Fn21;
    }

    static Object lambda22(Object $data) {
        ApplyToArgs applyToArgs;
        Object objLookupGlobalVarInCurrentFormEnvironment;
        String str;
        IntNum intNum;
        if (runtime.processAndDelayed$V(new Object[]{lambda$Fn22, lambda$Fn23}) == Boolean.FALSE) {
            return Values.empty;
        }
        if (runtime.callYailPrimitive(runtime.string$Mncontains, LList.list2($data instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit41), " is not bound in the current context"), "Unbound Variable") : $data, Lit42), Lit56, "string contains") != Boolean.FALSE) {
            applyToArgs = Scheme.applyToArgs;
            objLookupGlobalVarInCurrentFormEnvironment = runtime.lookupGlobalVarInCurrentFormEnvironment(Lit3, runtime.$Stthe$Mnnull$Mnvalue$St);
            str = "Nguy hiểm, phía trước có hố hoặc khoảng trống";
            intNum = Lit44;
        } else {
            if (runtime.callYailPrimitive(runtime.string$Mncontains, LList.list2($data instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit41), " is not bound in the current context"), "Unbound Variable") : $data, Lit45), Lit57, "string contains") != Boolean.FALSE) {
                applyToArgs = Scheme.applyToArgs;
                objLookupGlobalVarInCurrentFormEnvironment = runtime.lookupGlobalVarInCurrentFormEnvironment(Lit3, runtime.$Stthe$Mnnull$Mnvalue$St);
                str = "Cẩn thận, có vật cản phía trước";
                intNum = Lit47;
            } else {
                if (runtime.callYailPrimitive(runtime.string$Mncontains, LList.list2($data instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit41), " is not bound in the current context"), "Unbound Variable") : $data, Lit48), Lit58, "string contains") != Boolean.FALSE) {
                    applyToArgs = Scheme.applyToArgs;
                    objLookupGlobalVarInCurrentFormEnvironment = runtime.lookupGlobalVarInCurrentFormEnvironment(Lit3, runtime.$Stthe$Mnnull$Mnvalue$St);
                    str = "Cẩn thận, có vật cản phía trên";
                    intNum = Lit50;
                } else {
                    if (runtime.callYailPrimitive(runtime.string$Mncontains, LList.list2($data instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit41), " is not bound in the current context"), "Unbound Variable") : $data, Lit51), Lit59, "string contains") == Boolean.FALSE) {
                        return Values.empty;
                    }
                    applyToArgs = Scheme.applyToArgs;
                    objLookupGlobalVarInCurrentFormEnvironment = runtime.lookupGlobalVarInCurrentFormEnvironment(Lit3, runtime.$Stthe$Mnnull$Mnvalue$St);
                    str = "Cẩn thận, có vật cản thấp phía trước";
                    intNum = Lit53;
                }
            }
        }
        return applyToArgs.apply3(objLookupGlobalVarInCurrentFormEnvironment, str, intNum);
    }

    static Object lambda23() {
        return runtime.callYailPrimitive(runtime.yail$Mnequal$Qu, LList.list2(runtime.lookupGlobalVarInCurrentFormEnvironment(Lit25, runtime.$Stthe$Mnnull$Mnvalue$St), Boolean.TRUE), Lit54, "=");
    }

    static Object lambda24() {
        return runtime.callYailPrimitive(runtime.yail$Mnequal$Qu, LList.list2(runtime.lookupGlobalVarInCurrentFormEnvironment(Lit4, runtime.$Stthe$Mnnull$Mnvalue$St), Boolean.TRUE), Lit55, "=");
    }

    static String lambda28() {
        return "";
    }

    static String lambda29() {
        return "";
    }

    static String lambda30() {
        return "";
    }

    static String lambda31() {
        return "";
    }

    static String lambda32() {
        return "";
    }

    static String lambda33() {
        return "";
    }

    static String lambda34() {
        return "";
    }

    static String lambda35() {
        return "";
    }

    static String lambda36() {
        return "";
    }

    static String lambda37() {
        return "";
    }

    static String lambda38() {
        return "";
    }

    static String lambda39() {
        return "";
    }

    static String lambda40() {
        return "";
    }

    static String lambda41() {
        return "";
    }

    static String lambda42() {
        return "";
    }

    static Object lambda46() {
        return runtime.callYailPrimitive(runtime.make$Mnyail$Mnlist, LList.Empty, LList.Empty, "make a list");
    }

    static IntNum lambda47() {
        return Lit81;
    }

    static IntNum lambda48() {
        return Lit81;
    }

    static Object lambda49() {
        runtime.setAndCoerceProperty$Ex(Lit0, Lit83, Boolean.TRUE, Lit15);
        runtime.setAndCoerceProperty$Ex(Lit0, Lit84, "Artificial Eyes", Lit21);
        runtime.setAndCoerceProperty$Ex(Lit0, Lit85, "Picture1.png", Lit21);
        runtime.setAndCoerceProperty$Ex(Lit0, Lit86, Lit87, Lit88);
        runtime.setAndCoerceProperty$Ex(Lit0, Lit89, Lit90, Lit88);
        runtime.setAndCoerceProperty$Ex(Lit0, Lit91, "unspecified", Lit21);
        runtime.setAndCoerceProperty$Ex(Lit0, Lit92, Boolean.TRUE, Lit15);
        runtime.setAndCoerceProperty$Ex(Lit0, Lit93, "Responsive", Lit21);
        runtime.setAndCoerceProperty$Ex(Lit0, Lit94, "Artificial Eyes", Lit21);
        runtime.setAndCoerceProperty$Ex(Lit0, Lit95, Boolean.FALSE, Lit15);
        return runtime.setAndCoerceProperty$Ex(Lit0, Lit96, Lit51, Lit88);
    }

    public Object Screen1$Initialize() throws Throwable {
        runtime.setThisForm();
        ensureFileExists("SĐT.txt");
        runtime.setAndCoerceProperty$Ex(Lit274, Lit342, readText("SĐT.txt"), Lit21);
        runtime.setAndCoerceProperty$Ex(Lit100, Lit101, Lit102, Lit88);
        runtime.setAndCoerceProperty$Ex(Lit27, Lit103, Lit34, Lit88);
        runtime.setAndCoerceProperty$Ex(Lit27, Lit14, Boolean.FALSE, Lit15);
        runtime.setAndCoerceProperty$Ex(Lit13, Lit14, Boolean.FALSE, Lit15);
        runtime.setAndCoerceProperty$Ex(Lit13, Lit103, Lit104, Lit88);
        runtime.setAndCoerceProperty$Ex(Lit105, Lit103, Lit106, Lit88);
        runtime.setAndCoerceProperty$Ex(Lit105, Lit14, Boolean.TRUE, Lit15);
        runtime.setAndCoerceProperty$Ex(Lit107, Lit14, Boolean.FALSE, Lit15);
        runtime.setAndCoerceProperty$Ex(Lit108, Lit103, Lit109, Lit88);
        runtime.setAndCoerceProperty$Ex(Lit108, Lit14, Boolean.TRUE, Lit15);
        runtime.setAndCoerceProperty$Ex(Lit110, Lit111, Boolean.TRUE, Lit15);
        runtime.setAndCoerceProperty$Ex(Lit112, Lit113, Boolean.TRUE, Lit15);
        runtime.setAndCoerceProperty$Ex(Lit112, Lit114, Boolean.TRUE, Lit15);
        runtime.setAndCoerceProperty$Ex(Lit5, Lit115, "VN", Lit21);
        runtime.setAndCoerceProperty$Ex(Lit5, Lit116, "vi", Lit21);
        runtime.addGlobalVarToCurrentFormEnvironment(Lit77, Boolean.TRUE);
        runtime.addGlobalVarToCurrentFormEnvironment(Lit78, Boolean.TRUE);
        return runtime.callYailPrimitive(runtime.yail$Mnequal$Qu, LList.list2(runtime.lookupGlobalVarInCurrentFormEnvironment(Lit82, runtime.$Stthe$Mnnull$Mnvalue$St), Lit117), Lit118, "=") != Boolean.FALSE ? runtime.callComponentMethod(Lit112, Lit119, LList.Empty, LList.Empty) : Values.empty;
    }

    static Object lambda50() {
        runtime.setAndCoerceProperty$Ex(Lit123, Lit124, Lit125, Lit88);
        return runtime.setAndCoerceProperty$Ex(Lit123, Lit126, Lit127, Lit88);
    }

    static Object lambda51() {
        runtime.setAndCoerceProperty$Ex(Lit123, Lit124, Lit125, Lit88);
        return runtime.setAndCoerceProperty$Ex(Lit123, Lit126, Lit127, Lit88);
    }

    static Object lambda52() {
        return runtime.setAndCoerceProperty$Ex(Lit130, Lit126, Lit102, Lit88);
    }

    static Object lambda53() {
        return runtime.setAndCoerceProperty$Ex(Lit130, Lit126, Lit102, Lit88);
    }

    static Object lambda54() {
        return runtime.setAndCoerceProperty$Ex(Lit136, Lit124, Lit102, Lit88);
    }

    static Object lambda55() {
        return runtime.setAndCoerceProperty$Ex(Lit136, Lit124, Lit102, Lit88);
    }

    static Object lambda56() {
        runtime.setAndCoerceProperty$Ex(Lit139, Lit140, Lit141, Lit88);
        runtime.setAndCoerceProperty$Ex(Lit139, Lit124, Lit142, Lit88);
        runtime.setAndCoerceProperty$Ex(Lit139, Lit143, "settingicon.png", Lit21);
        runtime.setAndCoerceProperty$Ex(Lit139, Lit144, Lit145, Lit88);
        return runtime.setAndCoerceProperty$Ex(Lit139, Lit126, Lit142, Lit88);
    }

    static Object lambda57() {
        runtime.setAndCoerceProperty$Ex(Lit139, Lit140, Lit141, Lit88);
        runtime.setAndCoerceProperty$Ex(Lit139, Lit124, Lit142, Lit88);
        runtime.setAndCoerceProperty$Ex(Lit139, Lit143, "settingicon.png", Lit21);
        runtime.setAndCoerceProperty$Ex(Lit139, Lit144, Lit145, Lit88);
        return runtime.setAndCoerceProperty$Ex(Lit139, Lit126, Lit142, Lit88);
    }

    public Object Setting_BT$Click() {
        runtime.setThisForm();
        return runtime.callYailPrimitive(runtime.open$Mnanother$Mnscreen, LList.list1("Setting_screen"), Lit147, "open another screen");
    }

    static Object lambda58() {
        return runtime.setAndCoerceProperty$Ex(Lit154, Lit23, Boolean.FALSE, Lit15);
    }

    static Object lambda59() {
        return runtime.setAndCoerceProperty$Ex(Lit154, Lit23, Boolean.FALSE, Lit15);
    }

    static Object lambda60() {
        runtime.setAndCoerceProperty$Ex(Lit19, Lit124, Lit47, Lit88);
        runtime.setAndCoerceProperty$Ex(Lit19, Lit20, "http://localhost/AI.html", Lit21);
        runtime.setAndCoerceProperty$Ex(Lit19, Lit157, Boolean.FALSE, Lit15);
        runtime.setAndCoerceProperty$Ex(Lit19, Lit158, Boolean.TRUE, Lit15);
        runtime.setAndCoerceProperty$Ex(Lit19, Lit23, Boolean.FALSE, Lit15);
        return runtime.setAndCoerceProperty$Ex(Lit19, Lit126, Lit47, Lit88);
    }

    static Object lambda61() {
        runtime.setAndCoerceProperty$Ex(Lit19, Lit124, Lit47, Lit88);
        runtime.setAndCoerceProperty$Ex(Lit19, Lit20, "http://localhost/AI.html", Lit21);
        runtime.setAndCoerceProperty$Ex(Lit19, Lit157, Boolean.FALSE, Lit15);
        runtime.setAndCoerceProperty$Ex(Lit19, Lit158, Boolean.TRUE, Lit15);
        runtime.setAndCoerceProperty$Ex(Lit19, Lit23, Boolean.FALSE, Lit15);
        return runtime.setAndCoerceProperty$Ex(Lit19, Lit126, Lit47, Lit88);
    }

    public Object WebViewer1$WebViewStringChange(Object $value) throws Throwable {
        Object $value2 = runtime.sanitizeComponentData($value);
        runtime.setThisForm();
        if (runtime.callYailPrimitive(runtime.yail$Mnequal$Qu, LList.list2(runtime.lookupGlobalVarInCurrentFormEnvironment(Lit25, runtime.$Stthe$Mnnull$Mnvalue$St), Boolean.TRUE), Lit160, "=") == Boolean.FALSE) {
            return Values.empty;
        }
        if (runtime.callYailPrimitive(runtime.yail$Mnequal$Qu, LList.list2(runtime.callYailPrimitive(runtime.string$Mnstarts$Mnat, LList.list2($value2 instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit161), " is not bound in the current context"), "Unbound Variable") : $value2, "ALERT|"), Lit162, "starts at"), Lit117), Lit163, "=") == Boolean.FALSE) {
            return Values.empty;
        }
        runtime.addGlobalVarToCurrentFormEnvironment(Lit79, runtime.callYailPrimitive(runtime.string$Mnsplit, LList.list2($value2 instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit161), " is not bound in the current context"), "Unbound Variable") : $value2, "|"), Lit164, "split"));
        if (runtime.callYailPrimitive(Scheme.numGrt, LList.list2(runtime.callYailPrimitive(runtime.yail$Mnlist$Mnlength, LList.list1(runtime.lookupGlobalVarInCurrentFormEnvironment(Lit79, runtime.$Stthe$Mnnull$Mnvalue$St)), Lit165, "length of list"), Lit42), Lit166, ">") == Boolean.FALSE) {
            return Values.empty;
        }
        runtime.callComponentMethod(Lit5, Lit6, LList.list1(runtime.callYailPrimitive(runtime.yail$Mnlist$Mnget$Mnitem, LList.list2(runtime.lookupGlobalVarInCurrentFormEnvironment(Lit79, runtime.$Stthe$Mnnull$Mnvalue$St), Lit42), Lit167, "select list item")), Lit168);
        return runtime.callComponentMethod(Lit31, Lit10, LList.list1(runtime.callYailPrimitive(runtime.yail$Mnlist$Mnget$Mnitem, LList.list2(runtime.lookupGlobalVarInCurrentFormEnvironment(Lit79, runtime.$Stthe$Mnnull$Mnvalue$St), Lit51), Lit169, "select list item")), Lit170);
    }

    static Object lambda62() {
        return runtime.setAndCoerceProperty$Ex(Lit22, Lit174, "Logotransparent.png", Lit21);
    }

    static Object lambda63() {
        return runtime.setAndCoerceProperty$Ex(Lit22, Lit174, "Logotransparent.png", Lit21);
    }

    static Object lambda64() {
        runtime.setAndCoerceProperty$Ex(Lit177, Lit140, Lit178, Lit88);
        runtime.setAndCoerceProperty$Ex(Lit177, Lit179, Lit180, Lit88);
        runtime.setAndCoerceProperty$Ex(Lit177, Lit124, Lit127, Lit88);
        runtime.setAndCoerceProperty$Ex(Lit177, Lit181, Lit51, Lit88);
        runtime.setAndCoerceProperty$Ex(Lit177, Lit182, "Bấm để bắt đầu", Lit21);
        runtime.setAndCoerceProperty$Ex(Lit177, Lit144, Lit183, Lit88);
        return runtime.setAndCoerceProperty$Ex(Lit177, Lit126, Lit127, Lit88);
    }

    static Object lambda65() {
        runtime.setAndCoerceProperty$Ex(Lit177, Lit140, Lit178, Lit88);
        runtime.setAndCoerceProperty$Ex(Lit177, Lit179, Lit180, Lit88);
        runtime.setAndCoerceProperty$Ex(Lit177, Lit124, Lit127, Lit88);
        runtime.setAndCoerceProperty$Ex(Lit177, Lit181, Lit51, Lit88);
        runtime.setAndCoerceProperty$Ex(Lit177, Lit182, "Bấm để bắt đầu", Lit21);
        runtime.setAndCoerceProperty$Ex(Lit177, Lit144, Lit183, Lit88);
        return runtime.setAndCoerceProperty$Ex(Lit177, Lit126, Lit127, Lit88);
    }

    public Object Button1$LongClick() {
        runtime.setThisForm();
        return runtime.callYailPrimitive(runtime.yail$Mnequal$Qu, LList.list2(runtime.lookupGlobalVarInCurrentFormEnvironment(Lit61, runtime.$Stthe$Mnnull$Mnvalue$St), Boolean.TRUE), Lit185, "=") != Boolean.FALSE ? runtime.callComponentMethod(Lit112, Lit119, LList.Empty, LList.Empty) : Values.empty;
    }

    public Object Button1$Click() {
        runtime.setThisForm();
        runtime.setAndCoerceProperty$Ex(Lit177, Lit182, "Bấm để nói", Lit21);
        return runtime.addGlobalVarToCurrentFormEnvironment(Lit61, Boolean.TRUE);
    }

    public Object NimaAI1$GotResponse(Object $response) {
        Object $response2 = runtime.sanitizeComponentData($response);
        runtime.setThisForm();
        return runtime.callComponentMethod(Lit5, Lit6, LList.list1($response2 instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit194), " is not bound in the current context"), "Unbound Variable") : $response2), Lit195);
    }

    public Object Clock1$Timer() throws Throwable {
        runtime.setThisForm();
        if (runtime.callYailPrimitive(runtime.yail$Mnequal$Qu, LList.list2(runtime.lookupGlobalVarInCurrentFormEnvironment(Lit61, runtime.$Stthe$Mnnull$Mnvalue$St), Boolean.TRUE), Lit200, "=") == Boolean.FALSE) {
            return Values.empty;
        }
        runtime.setAndCoerceProperty$Ex(Lit201, Lit202, runtime.callYailPrimitive(strings.string$Mnappend, LList.list2("Người thân của bạn đang đi bộ ở ", runtime.getProperty$1(Lit110, Lit203)), Lit204, "join"), Lit21);
        runtime.callComponentMethod(Lit201, Lit205, LList.Empty, LList.Empty);
        return runtime.setAndCoerceProperty$Ex(Lit105, Lit103, Lit206, Lit88);
    }

    public Object ScSpeechRecognizer1$AfterGettingText(Object $result) throws Throwable {
        SimpleSymbol simpleSymbol;
        SimpleSymbol simpleSymbol2;
        Object objList1;
        Object obj;
        SimpleSymbol simpleSymbol3;
        SimpleSymbol simpleSymbol4;
        Object objList12;
        Object obj2;
        ApplyToArgs applyToArgs;
        SimpleSymbol simpleSymbol5;
        Object $result2 = runtime.sanitizeComponentData($result);
        runtime.setThisForm();
        if (runtime.callYailPrimitive(runtime.yail$Mnequal$Qu, LList.list2(runtime.lookupGlobalVarInCurrentFormEnvironment(Lit80, runtime.$Stthe$Mnnull$Mnvalue$St), Lit117), Lit211, "=") != Boolean.FALSE) {
            runtime.callComponentMethod(Lit192, Lit212, LList.list1($result2 instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit213), " is not bound in the current context"), "Unbound Variable") : $result2), Lit214);
            return runtime.addGlobalVarToCurrentFormEnvironment(Lit80, Lit81);
        }
        if (runtime.callYailPrimitive(runtime.string$Mncontains, LList.list2($result2 instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit213), " is not bound in the current context"), "Unbound Variable") : $result2, "đi bộ"), Lit215, "string contains") != Boolean.FALSE) {
            if (!switchMode(ModeState.WALKING)) return Values.empty;
            runtime.addGlobalVarToCurrentFormEnvironment(Lit80, Lit81);
            applyToArgs = Scheme.applyToArgs;
            simpleSymbol5 = Lit24;
        } else {
            if (runtime.callYailPrimitive(runtime.string$Mncontains, LList.list2($result2 instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit213), " is not bound in the current context"), "Unbound Variable") : $result2, "tắt đi bộ"), Lit216, "string contains") == Boolean.FALSE) {
                if (runtime.callYailPrimitive(runtime.string$Mncontains$Mnany, LList.list2($result2 instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit213), " is not bound in the current context"), "Unbound Variable") : $result2, runtime.callYailPrimitive(runtime.make$Mnyail$Mnlist, LList.list2("trò chuyện", "nói chuyện"), Lit217, "make a list")), Lit218, "string contains any") != Boolean.FALSE) {
                    runtime.addGlobalVarToCurrentFormEnvironment(Lit80, Lit117);
                    runtime.callComponentMethod(Lit5, Lit6, LList.list1("Đang bật chế độ Trò chuyện"), Lit219);
                    simpleSymbol = Lit112;
                    simpleSymbol2 = Lit119;
                    objList1 = LList.Empty;
                    obj = LList.Empty;
                } else {
                    if (runtime.callYailPrimitive(runtime.string$Mncontains, LList.list2($result2 instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit213), " is not bound in the current context"), "Unbound Variable") : $result2, "đọc"), Lit220, "string contains") != Boolean.FALSE) {
                        if (!switchMode(ModeState.READING)) return Values.empty;
                        runtime.addGlobalVarToCurrentFormEnvironment(Lit80, Lit81);
                        runtime.callComponentMethod(Lit5, Lit6, LList.list1("Đang bật chế độ đọc"), Lit221);
                        runtime.callComponentMethod(Lit222, Lit121, LList.list2(runtime.lookupInCurrentFormEnvironment(Lit123), runtime.getProperty$1(Lit222, Lit223)), Lit224);
                        runtime.setAndCoerceProperty$Ex(Lit108, Lit103, Lit225, Lit88);
                        return runtime.setAndCoerceProperty$Ex(Lit108, Lit14, Boolean.TRUE, Lit15);
                    }
                    if (runtime.callYailPrimitive(runtime.string$Mncontains$Mnany, LList.list2($result2 instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit213), " is not bound in the current context"), "Unbound Variable") : $result2, runtime.callYailPrimitive(runtime.make$Mnyail$Mnlist, LList.list2("thời tiết", "nhiệt"), Lit226, "make a list")), Lit227, "string contains any") != Boolean.FALSE) {
                        runtime.addGlobalVarToCurrentFormEnvironment(Lit80, Lit81);
                        if (runtime.processAndDelayed$V(new Object[]{lambda$Fn65, lambda$Fn66}) != Boolean.FALSE) {
                            SimpleSymbol simpleSymbol6 = Lit232;
                            SimpleSymbol simpleSymbol7 = Lit233;
                            ModuleMethod moduleMethod = strings.string$Mnappend;
                            Pair pairList1 = LList.list1("https://www.meteosource.com/api/v1/free/point?lat=");
                            LList.chain4(pairList1, runtime.getProperty$1(Lit110, Lit230), "&lon=", runtime.getProperty$1(Lit110, Lit228), "&sections=current&key=g35r3lbex6ye403vqxelo4xmvcvt9wnjtlibdi7e");
                            runtime.setAndCoerceProperty$Ex(simpleSymbol6, simpleSymbol7, runtime.callYailPrimitive(moduleMethod, pairList1, Lit234, "join"), Lit21);
                            simpleSymbol3 = Lit232;
                            simpleSymbol4 = Lit235;
                            objList12 = LList.Empty;
                            obj2 = LList.Empty;
                        } else {
                            simpleSymbol3 = Lit5;
                            simpleSymbol4 = Lit6;
                            objList12 = LList.list1("Chưa lấy được vị trí");
                            obj2 = Lit236;
                        }
                        return runtime.callComponentMethod(simpleSymbol3, simpleSymbol4, objList12, obj2);
                    }
                    if (runtime.callYailPrimitive(runtime.string$Mncontains$Mnany, LList.list2($result2 instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit213), " is not bound in the current context"), "Unbound Variable") : $result2, runtime.callYailPrimitive(runtime.make$Mnyail$Mnlist, LList.list3("thời gian", "giờ", "ngày"), Lit237, "make a list")), Lit238, "string contains any") == Boolean.FALSE) {
                        return Values.empty;
                    }
                    runtime.addGlobalVarToCurrentFormEnvironment(Lit80, Lit81);
                    runtime.callComponentMethod(Lit5, Lit6, LList.list1("Đang bật chế độ thời gian"), Lit239);
                    runtime.addGlobalVarToCurrentFormEnvironment(Lit63, runtime.callComponentMethod(Lit240, Lit241, LList.Empty, LList.Empty));
                    runtime.addGlobalVarToCurrentFormEnvironment(Lit71, runtime.callComponentMethod(Lit240, Lit242, LList.list2(runtime.lookupGlobalVarInCurrentFormEnvironment(Lit63, runtime.$Stthe$Mnnull$Mnvalue$St), "dd/MM/yyyy"), Lit243));
                    runtime.addGlobalVarToCurrentFormEnvironment(Lit72, runtime.callComponentMethod(Lit240, Lit242, LList.list2(runtime.lookupGlobalVarInCurrentFormEnvironment(Lit63, runtime.$Stthe$Mnnull$Mnvalue$St), "HH:mm:ss"), Lit244));
                    simpleSymbol = Lit5;
                    simpleSymbol2 = Lit6;
                    objList1 = LList.list1(runtime.callYailPrimitive(strings.string$Mnappend, LList.list4("Hôm nay là ", runtime.lookupGlobalVarInCurrentFormEnvironment(Lit71, runtime.$Stthe$Mnnull$Mnvalue$St), ". Bây giờ là ", runtime.lookupGlobalVarInCurrentFormEnvironment(Lit72, runtime.$Stthe$Mnnull$Mnvalue$St)), Lit245, "join"));
                    obj = Lit246;
                }
                return runtime.callComponentMethod(simpleSymbol, simpleSymbol2, objList1, obj);
            }
            runtime.addGlobalVarToCurrentFormEnvironment(Lit80, Lit81);
            applyToArgs = Scheme.applyToArgs;
            simpleSymbol5 = Lit30;
        }
        return applyToArgs.apply1(runtime.lookupGlobalVarInCurrentFormEnvironment(simpleSymbol5, runtime.$Stthe$Mnnull$Mnvalue$St));
    }

    static Object lambda66() {
        return runtime.callYailPrimitive(runtime.yail$Mnnot$Mnequal$Qu, LList.list2(runtime.getProperty$1(Lit110, Lit228), Lit81), Lit229, "not =");
    }

    static Object lambda67() {
        return runtime.callYailPrimitive(runtime.yail$Mnnot$Mnequal$Qu, LList.list2(runtime.getProperty$1(Lit110, Lit230), Lit81), Lit231, "not =");
    }

    static Object lambda68() {
        return runtime.setAndCoerceProperty$Ex(Lit250, Lit251, Lit117, Lit88);
    }

    static Object lambda69() {
        return runtime.setAndCoerceProperty$Ex(Lit250, Lit251, Lit117, Lit88);
    }

    /* JADX INFO: compiled from: Screen1.yail */
    public class frame0 extends ModuleBody {
        Object $xAccel;
        Object $zAccel;
        final ModuleMethod lambda$Fn70 = new ModuleMethod(this, 1, null, 0);
        final ModuleMethod lambda$Fn71 = new ModuleMethod(this, 2, null, 0);
        final ModuleMethod lambda$Fn72 = new ModuleMethod(this, 3, null, 0);
        final ModuleMethod lambda$Fn73 = new ModuleMethod(this, 4, null, 0);
        final ModuleMethod lambda$Fn69 = new ModuleMethod(this, 5, null, 0);
        final ModuleMethod lambda$Fn77 = new ModuleMethod(this, 6, null, 0);
        final ModuleMethod lambda$Fn78 = new ModuleMethod(this, 7, null, 0);
        final ModuleMethod lambda$Fn76 = new ModuleMethod(this, 8, null, 0);
        final ModuleMethod lambda$Fn80 = new ModuleMethod(this, 9, null, 0);
        final ModuleMethod lambda$Fn81 = new ModuleMethod(this, 10, null, 0);
        final ModuleMethod lambda$Fn79 = new ModuleMethod(this, 11, null, 0);
        final ModuleMethod lambda$Fn75 = new ModuleMethod(this, 12, null, 0);

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            switch (moduleMethod.selector) {
                case 1:
                    return lambda71();
                case 2:
                    return lambda72();
                case 3:
                    return lambda73();
                case 4:
                    return lambda74();
                case 5:
                    return lambda70();
                case 6:
                    return lambda78();
                case 7:
                    return lambda79();
                case 8:
                    return lambda77();
                case 9:
                    return lambda81();
                case 10:
                    return lambda82();
                case 11:
                    return lambda80();
                case 12:
                    return lambda76();
                default:
                    return super.apply0(moduleMethod);
            }
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            switch (moduleMethod.selector) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                default:
                    return super.match0(moduleMethod, callContext);
            }
        }

        static Object lambda75() {
            return runtime.callYailPrimitive(runtime.yail$Mnequal$Qu, LList.list2(runtime.lookupGlobalVarInCurrentFormEnvironment(Screen1.Lit77, runtime.$Stthe$Mnnull$Mnvalue$St), Boolean.TRUE), Screen1.Lit262, "=");
        }

        static Object lambda83() {
            return runtime.callYailPrimitive(runtime.yail$Mnequal$Qu, LList.list2(runtime.lookupGlobalVarInCurrentFormEnvironment(Screen1.Lit77, runtime.$Stthe$Mnnull$Mnvalue$St), Boolean.FALSE), Screen1.Lit270, "=");
        }

        Object lambda70() {
            return runtime.processOrDelayed$V(new Object[]{this.lambda$Fn70, this.lambda$Fn71, this.lambda$Fn72, this.lambda$Fn73});
        }

        Object lambda71() {
            return runtime.callYailPrimitive(Scheme.numGrt, LList.list2(this.$xAccel instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Screen1.Lit254), " is not bound in the current context"), "Unbound Variable") : this.$xAccel, Screen1.Lit255), Screen1.Lit256, ">");
        }

        Object lambda72() {
            return runtime.callYailPrimitive(Scheme.numGrt, LList.list2(this.$zAccel instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Screen1.Lit257), " is not bound in the current context"), "Unbound Variable") : this.$zAccel, Screen1.Lit255), Screen1.Lit258, ">");
        }

        Object lambda73() {
            return runtime.callYailPrimitive(Scheme.numLss, LList.list2(this.$zAccel instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Screen1.Lit257), " is not bound in the current context"), "Unbound Variable") : this.$zAccel, Screen1.Lit259), Screen1.Lit260, "<");
        }

        Object lambda74() {
            return runtime.callYailPrimitive(Scheme.numLss, LList.list2(this.$xAccel instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Screen1.Lit254), " is not bound in the current context"), "Unbound Variable") : this.$xAccel, Screen1.Lit259), Screen1.Lit261, "<");
        }

        Object lambda76() {
            return runtime.processAndDelayed$V(new Object[]{this.lambda$Fn76, this.lambda$Fn79});
        }

        Object lambda77() {
            return runtime.processAndDelayed$V(new Object[]{this.lambda$Fn77, this.lambda$Fn78});
        }

        Object lambda78() {
            return runtime.callYailPrimitive(Scheme.numLss, LList.list2(this.$xAccel instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Screen1.Lit254), " is not bound in the current context"), "Unbound Variable") : this.$xAccel, Screen1.Lit42), Screen1.Lit265, "<");
        }

        Object lambda79() {
            return runtime.callYailPrimitive(Scheme.numLss, LList.list2(this.$zAccel instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Screen1.Lit257), " is not bound in the current context"), "Unbound Variable") : this.$zAccel, Screen1.Lit42), Screen1.Lit266, "<");
        }

        Object lambda80() {
            return runtime.processAndDelayed$V(new Object[]{this.lambda$Fn80, this.lambda$Fn81});
        }

        Object lambda81() {
            return runtime.callYailPrimitive(Scheme.numGrt, LList.list2(this.$xAccel instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Screen1.Lit254), " is not bound in the current context"), "Unbound Variable") : this.$xAccel, Screen1.Lit267), Screen1.Lit268, ">");
        }

        Object lambda82() {
            return runtime.callYailPrimitive(Scheme.numGrt, LList.list2(this.$zAccel instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Screen1.Lit257), " is not bound in the current context"), "Unbound Variable") : this.$zAccel, Screen1.Lit267), Screen1.Lit269, ">");
        }
    }

    public Object AccelerometerSensor1$AccelerationChanged(Object $xAccel, Object $yAccel, Object $zAccel) throws Throwable {
        frame0 frame0Var = new frame0();
        Object objSanitizeComponentData = runtime.sanitizeComponentData($xAccel);
        runtime.sanitizeComponentData($yAccel);
        frame0Var.$zAccel = runtime.sanitizeComponentData($zAccel);
        frame0Var.$xAccel = objSanitizeComponentData;
        runtime.setThisForm();
        if (runtime.callYailPrimitive(runtime.yail$Mnequal$Qu, LList.list2(runtime.lookupGlobalVarInCurrentFormEnvironment(Lit61, runtime.$Stthe$Mnnull$Mnvalue$St), Boolean.TRUE), Lit253, "=") == Boolean.FALSE) {
            return Values.empty;
        }
        if (runtime.processAndDelayed$V(new Object[]{frame0Var.lambda$Fn69, lambda$Fn74}) != Boolean.FALSE) {
            runtime.addGlobalVarToCurrentFormEnvironment(Lit60, Boolean.TRUE);
            runtime.addGlobalVarToCurrentFormEnvironment(Lit77, Boolean.FALSE);
            runtime.callComponentMethod(Lit9, Lit263, LList.Empty, LList.Empty);
            runtime.setAndCoerceProperty$Ex(Lit107, Lit103, Lit264, Lit88);
            runtime.setAndCoerceProperty$Ex(Lit107, Lit14, Boolean.TRUE, Lit15);
        }
        if (runtime.processAndDelayed$V(new Object[]{frame0Var.lambda$Fn75, lambda$Fn82}) == Boolean.FALSE) {
            return Values.empty;
        }
        runtime.addGlobalVarToCurrentFormEnvironment(Lit60, Boolean.FALSE);
        runtime.setAndCoerceProperty$Ex(Lit107, Lit14, Boolean.FALSE, Lit15);
        runtime.callComponentMethod(Lit9, Lit32, LList.Empty, LList.Empty);
        runtime.addGlobalVarToCurrentFormEnvironment(Lit77, Boolean.TRUE);
        return runtime.addGlobalVarToCurrentFormEnvironment(Lit78, Boolean.TRUE);
    }

    static Object lambda84() {
        return runtime.setAndCoerceProperty$Ex(Lit110, Lit277, Lit278, Lit88);
    }

    static Object lambda85() {
        return runtime.setAndCoerceProperty$Ex(Lit110, Lit277, Lit278, Lit88);
    }

    static Object lambda86() {
        return runtime.setAndCoerceProperty$Ex(Lit201, Lit281, Lit117, Lit88);
    }

    static Object lambda87() {
        return runtime.setAndCoerceProperty$Ex(Lit201, Lit281, Lit117, Lit88);
    }

    public Object Clock2$Timer() throws Throwable {
        runtime.setThisForm();
        if (runtime.processAndDelayed$V(new Object[]{lambda$Fn87, lambda$Fn88}) == Boolean.FALSE) {
            return Values.empty;
        }
        runtime.setAndCoerceProperty$Ex(Lit201, Lit202, runtime.callYailPrimitive(strings.string$Mnappend, LList.list2("Người thân của bạn đang ngã ở ", runtime.getProperty$1(Lit110, Lit203)), Lit287, "join"), Lit21);
        runtime.callComponentMethod(Lit274, Lit288, LList.Empty, LList.Empty);
        runtime.callComponentMethod(Lit201, Lit205, LList.Empty, LList.Empty);
        return runtime.addGlobalVarToCurrentFormEnvironment(Lit78, Boolean.FALSE);
    }

    static Object lambda88() {
        return runtime.callYailPrimitive(runtime.yail$Mnequal$Qu, LList.list2(runtime.lookupGlobalVarInCurrentFormEnvironment(Lit78, runtime.$Stthe$Mnnull$Mnvalue$St), Boolean.TRUE), Lit285, "=");
    }

    static Object lambda89() {
        return runtime.callYailPrimitive(runtime.yail$Mnequal$Qu, LList.list2(runtime.lookupGlobalVarInCurrentFormEnvironment(Lit60, runtime.$Stthe$Mnnull$Mnvalue$St), Boolean.TRUE), Lit286, "=");
    }

    static Object lambda90() {
        return runtime.setAndCoerceProperty$Ex(Lit9, Lit291, "tieng_coi_bao_Dong_xe_hoi-www_tiengdong_com.mp3", Lit21);
    }

    static Object lambda91() {
        return runtime.setAndCoerceProperty$Ex(Lit9, Lit291, "tieng_coi_bao_Dong_xe_hoi-www_tiengdong_com.mp3", Lit21);
    }

    static Object lambda92() {
        return runtime.setAndCoerceProperty$Ex(Lit222, Lit297, Boolean.TRUE, Lit15);
    }

    static Object lambda93() {
        return runtime.setAndCoerceProperty$Ex(Lit222, Lit297, Boolean.TRUE, Lit15);
    }

    public Object ProCamera1$SavedPhoto() {
        runtime.setThisForm();
        return runtime.callComponentMethod(Lit299, Lit300, LList.list2("/storage/emulated/0/Android/data/appinventor.ai_quachtanhung124.artificial_eyes/files/pic.jpg", ""), Lit301);
    }

    public Object Web1$GotText(Object $url, Object $responseCode, Object $responseType, Object $responseContent) throws Throwable {
        SimpleSymbol simpleSymbol;
        SimpleSymbol simpleSymbol2;
        Pair pairList1;
        PairWithPosition pairWithPosition;
        runtime.sanitizeComponentData($url);
        Object $responseCode2 = runtime.sanitizeComponentData($responseCode);
        runtime.sanitizeComponentData($responseType);
        Object $responseContent2 = runtime.sanitizeComponentData($responseContent);
        runtime.setThisForm();
        if (runtime.callYailPrimitive(runtime.yail$Mnequal$Qu, LList.list2($responseCode2 instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit306), " is not bound in the current context"), "Unbound Variable") : $responseCode2, Lit307), Lit308, "=") != Boolean.FALSE) {
            runtime.addGlobalVarToCurrentFormEnvironment(Lit75, runtime.callComponentMethod(Lit232, Lit309, LList.list1($responseContent2 instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit310), " is not bound in the current context"), "Unbound Variable") : $responseContent2), Lit311));
            runtime.addGlobalVarToCurrentFormEnvironment(Lit62, runtime.callYailPrimitive(runtime.yail$Mndictionary$Mnlookup, LList.list3("current", runtime.lookupGlobalVarInCurrentFormEnvironment(Lit75, runtime.$Stthe$Mnnull$Mnvalue$St), "not found"), Lit312, "dictionary lookup"));
            runtime.addGlobalVarToCurrentFormEnvironment(Lit73, runtime.callYailPrimitive(runtime.yail$Mndictionary$Mnlookup, LList.list3("temperature", runtime.lookupGlobalVarInCurrentFormEnvironment(Lit62, runtime.$Stthe$Mnnull$Mnvalue$St), "not found"), Lit313, "dictionary lookup"));
            runtime.addGlobalVarToCurrentFormEnvironment(Lit74, runtime.callYailPrimitive(runtime.yail$Mndictionary$Mnlookup, LList.list3("summary", runtime.lookupGlobalVarInCurrentFormEnvironment(Lit62, runtime.$Stthe$Mnnull$Mnvalue$St), "not found"), Lit314, "dictionary lookup"));
            simpleSymbol = Lit315;
            simpleSymbol2 = Lit316;
            pairList1 = LList.list2("vi", runtime.lookupGlobalVarInCurrentFormEnvironment(Lit74, runtime.$Stthe$Mnnull$Mnvalue$St));
            pairWithPosition = Lit317;
        } else {
            simpleSymbol = Lit5;
            simpleSymbol2 = Lit6;
            pairList1 = LList.list1("Lỗi! Không lấy được dữ liệu thời tiết");
            pairWithPosition = Lit318;
        }
        return runtime.callComponentMethod(simpleSymbol, simpleSymbol2, pairList1, pairWithPosition);
    }

    static Object lambda94() {
        return runtime.setAndCoerceProperty$Ex(Lit108, Lit14, Boolean.FALSE, Lit15);
    }

    static Object lambda95() {
        return runtime.setAndCoerceProperty$Ex(Lit108, Lit14, Boolean.FALSE, Lit15);
    }

    public Object Clock4$Timer() throws Throwable {
        runtime.setThisForm();
        runtime.setAndCoerceProperty$Ex(Lit222, Lit323, "/storage/emulated/0/Android/data/appinventor.ai_quachtanhung124.artificial_eyes/files/pic.jpg", Lit21);
        runtime.callComponentMethod(Lit222, Lit324, LList.Empty, LList.Empty);
        return runtime.setAndCoerceProperty$Ex(Lit108, Lit14, Boolean.FALSE, Lit15);
    }

    static Object lambda96() {
        return runtime.setAndCoerceProperty$Ex(Lit315, Lit327, runtime.textDeobfuscate(",Ll&}mIcO\u0015zL^Q\nv\u001afcM\u007f\u007f^L|\u0004KnrSgDTRZDokRyq\u001a0x\n#\u0015h\u0004 *\u00146\u001d\u0000.t\u0017\u00010\u001b\u0006\u000f$9=\u0013$.|\u0006\u0011\u00115:/?\n*\u0012\u001a#4\u000b\r\u0011\u0013<#DT!$\u001a:\u0018L\u001eR\u001b\u0000\u0000\\Q", "vrlvrkgh"), Lit21);
    }

    static Object lambda97() {
        return runtime.setAndCoerceProperty$Ex(Lit315, Lit327, runtime.textDeobfuscate(",Ll&}mIcO\u0015zL^Q\nv\u001afcM\u007f\u007f^L|\u0004KnrSgDTRZDokRyq\u001a0x\n#\u0015h\u0004 *\u00146\u001d\u0000.t\u0017\u00010\u001b\u0006\u000f$9=\u0013$.|\u0006\u0011\u00115:/?\n*\u0012\u001a#4\u000b\r\u0011\u0013<#DT!$\u001a:\u0018L\u001eR\u001b\u0000\u0000\\Q", "vrlvrkgh"), Lit21);
    }

    public Object Translator1$GotTranslation(Object $responseCode, Object $translation) throws Throwable {
        runtime.sanitizeComponentData($responseCode);
        Object $translation2 = runtime.sanitizeComponentData($translation);
        runtime.setThisForm();
        SimpleSymbol simpleSymbol = Lit5;
        SimpleSymbol simpleSymbol2 = Lit6;
        ModuleMethod moduleMethod = strings.string$Mnappend;
        Pair pairList1 = LList.list1("Thời tiết hiện tại là");
        LList.chain4(pairList1, $translation2 instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit329), " is not bound in the current context"), "Unbound Variable") : $translation2, " Và nhiệt độ", runtime.lookupGlobalVarInCurrentFormEnvironment(Lit73, runtime.$Stthe$Mnnull$Mnvalue$St), " Độ c");
        Object $translation3 = runtime.callComponentMethod(simpleSymbol, simpleSymbol2, LList.list1(runtime.callYailPrimitive(moduleMethod, pairList1, Lit330, "join")), Lit331);
        return $translation3;
    }

    static Object lambda98() {
        return runtime.setAndCoerceProperty$Ex(Lit240, Lit14, Boolean.FALSE, Lit15);
    }

    static Object lambda99() {
        return runtime.setAndCoerceProperty$Ex(Lit240, Lit14, Boolean.FALSE, Lit15);
    }

    static Object lambda100() {
        runtime.setAndCoerceProperty$Ex(Lit97, Lit339, Boolean.TRUE, Lit15);
        return runtime.setAndCoerceProperty$Ex(Lit97, Lit340, Boolean.TRUE, Lit15);
    }

    static Object lambda101() {
        runtime.setAndCoerceProperty$Ex(Lit97, Lit339, Boolean.TRUE, Lit15);
        return runtime.setAndCoerceProperty$Ex(Lit97, Lit340, Boolean.TRUE, Lit15);
    }

    public Object File1$GotText(Object $text) {
        Object $text2 = runtime.sanitizeComponentData($text);
        runtime.setThisForm();
        runtime.setAndCoerceProperty$Ex(Lit274, Lit342, $text2 instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit343), " is not bound in the current context"), "Unbound Variable") : $text2, Lit21);
        return runtime.setAndCoerceProperty$Ex(Lit201, Lit342, $text2 instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit343), " is not bound in the current context"), "Unbound Variable") : $text2, Lit21);
    }

    static Object lambda102() {
        return runtime.setAndCoerceProperty$Ex(Lit346, Lit14, Boolean.FALSE, Lit15);
    }

    static Object lambda103() {
        return runtime.setAndCoerceProperty$Ex(Lit346, Lit14, Boolean.FALSE, Lit15);
    }

    public Object Recy2$TextRecognized(Object $text) throws Throwable {
        Object $text2 = runtime.sanitizeComponentData($text);
        runtime.setThisForm();
        runtime.callComponentMethod(Lit5, Lit6, LList.list1($text2 instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit343), " is not bound in the current context"), "Unbound Variable") : $text2), Lit353);
        Object $text3 = runtime.callComponentMethod(Lit97, Lit354, LList.list1("/storage/emulated/0/Android/data/appinventor.ai_quachtanhung124.artificial_eyes/files/pic.jpg"), Lit355);
        return $text3;
    }

    public Object ProCamera_walk$SavedPhoto() throws Throwable {
        runtime.setThisForm();
        runtime.setAndCoerceProperty$Ex(Lit154, Lit174, "/storage/emulated/0/Android/data/appinventor.ai_quachtanhung124.artificial_eyes/files/pic_walk.jpg", Lit21);
        runtime.callComponentMethod(Lit365, Lit373, LList.list1(runtime.lookupInCurrentFormEnvironment(Lit154)), Lit374);
        return runtime.callComponentMethod(Lit97, Lit354, LList.list1("/storage/emulated/0/Android/data/appinventor.ai_quachtanhung124.artificial_eyes/files/pic_walk.jpg"), Lit375);
    }

    public Object Clock_BT$Timer() throws Throwable {
        runtime.setThisForm();
        if (runtime.callYailPrimitive(runtime.yail$Mnequal$Qu, LList.list2(runtime.lookupGlobalVarInCurrentFormEnvironment(Lit25, runtime.$Stthe$Mnnull$Mnvalue$St), Boolean.TRUE), Lit381, "=") != Boolean.FALSE && runtime.getProperty$1(Lit100, Lit382) != Boolean.FALSE && runtime.callYailPrimitive(Scheme.numGrt, LList.list2(runtime.callComponentMethod(Lit100, Lit383, LList.Empty, LList.Empty), Lit81), Lit384, ">") != Boolean.FALSE) {
            runtime.addGlobalVarToCurrentFormEnvironment(Lit76, runtime.callComponentMethod(Lit100, Lit385, LList.list1(Lit267), Lit386));
            return Scheme.applyToArgs.apply2(runtime.lookupGlobalVarInCurrentFormEnvironment(Lit38, runtime.$Stthe$Mnnull$Mnvalue$St), runtime.lookupGlobalVarInCurrentFormEnvironment(Lit76, runtime.$Stthe$Mnnull$Mnvalue$St));
        }
        return Values.empty;
    }

    public Object Clock_AlertLock$Timer() throws Throwable {
        runtime.setThisForm();
        runtime.addGlobalVarToCurrentFormEnvironment(Lit4, Boolean.TRUE);
        return runtime.setAndCoerceProperty$Ex(Lit13, Lit14, Boolean.FALSE, Lit15);
    }

    public String getSimpleName(Object object) {
        return object.getClass().getSimpleName();
    }

    private boolean switchMode(ModeState target) {
        if (modeSwitching) {
            Log.w(TAG, "switchMode ignored while switching: " + target);
            return false;
        }
        modeSwitching = true;
        try {
            stopCurrentMode();
            modeState = target;
            return true;
        } catch (Exception e) {
            Log.e(TAG, "switchMode failed: " + target, e);
            modeState = ModeState.IDLE;
            return false;
        } finally {
            modeSwitching = false;
        }
    }

    private void stopCurrentMode() {
        runtime.setAndCoerceProperty$Ex(Lit27, Lit14, Boolean.FALSE, Lit15);
        runtime.setAndCoerceProperty$Ex(Lit108, Lit14, Boolean.FALSE, Lit15);
        runtime.setAndCoerceProperty$Ex(Lit13, Lit14, Boolean.FALSE, Lit15);
        runtime.callComponentMethod(Lit31, Lit32, LList.Empty, LList.Empty);
        runtime.callComponentMethod(Lit5, Lit6, LList.list1("Đã dừng chế độ hiện tại"), Lit33);
        modeState = ModeState.IDLE;
    }

    private void ensureFileExists(String fileName) {
        try {
            if (!getFileStreamPath(fileName).exists()) {
                openFileOutput(fileName, MODE_PRIVATE).close();
            }
        } catch (Exception e) {
            Log.e(TAG, "ensureFileExists fail: " + fileName, e);
        }
    }

    private String readText(String fileName) {
        try (BufferedReader reader = new BufferedReader(new InputStreamReader(openFileInput(fileName), "UTF-8"))) {
            String line = reader.readLine();
            return line == null ? "" : line.trim();
        } catch (Exception e) {
            Log.e(TAG, "readText fail: " + fileName, e);
            return "";
        }
    }

    @Override // com.google.appinventor.components.runtime.Form, com.google.appinventor.components.runtime.AppInventorCompatActivity, android.app.Activity
    public void onCreate(Bundle icicle) {
        AppInventorCompatActivity.setClassicModeFromYail(false);
        super.onCreate(icicle);
    }

    public void androidLogForm(Object message) {
    }

    public void addToFormEnvironment(Symbol name, Object object) {
        androidLogForm(Format.formatToString(0, "Adding ~A to env ~A with value ~A", name, this.form$Mnenvironment, object));
        this.form$Mnenvironment.put(name, object);
    }

    public Object lookupInFormEnvironment(Symbol name, Object default$Mnvalue) {
        int i = ((this.form$Mnenvironment == null ? 1 : 0) + 1) & 1;
        if (i == 0 ? i == 0 : !this.form$Mnenvironment.isBound(name)) {
            return default$Mnvalue;
        }
        return this.form$Mnenvironment.get(name);
    }

    public boolean isBoundInFormEnvironment(Symbol name) {
        return this.form$Mnenvironment.isBound(name);
    }

    public void addToGlobalVarEnvironment(Symbol name, Object object) {
        androidLogForm(Format.formatToString(0, "Adding ~A to env ~A with value ~A", name, this.global$Mnvar$Mnenvironment, object));
        this.global$Mnvar$Mnenvironment.put(name, object);
    }

    public void addToEvents(Object component$Mnname, Object event$Mnname) {
        this.events$Mnto$Mnregister = lists.cons(lists.cons(component$Mnname, event$Mnname), this.events$Mnto$Mnregister);
    }

    public void addToComponents(Object container$Mnname, Object component$Mntype, Object component$Mnname, Object init$Mnthunk) {
        this.components$Mnto$Mncreate = lists.cons(LList.list4(container$Mnname, component$Mntype, component$Mnname, init$Mnthunk), this.components$Mnto$Mncreate);
    }

    public void addToGlobalVars(Object var, Object val$Mnthunk) {
        this.global$Mnvars$Mnto$Mncreate = lists.cons(LList.list2(var, val$Mnthunk), this.global$Mnvars$Mnto$Mncreate);
    }

    public void addToFormDoAfterCreation(Object thunk) {
        this.form$Mndo$Mnafter$Mncreation = lists.cons(thunk, this.form$Mndo$Mnafter$Mncreation);
    }

    public void sendError(Object error) {
        RetValManager.sendError(error == null ? null : error.toString());
    }

    public Object processException(Object ex) throws Throwable {
        String string;
        ApplyToArgs applyToArgs = Scheme.applyToArgs;
        if (ex instanceof Error) {
            string = ex.toString();
        } else {
            Object objApply1 = Scheme.applyToArgs.apply1(GetNamedPart.getNamedPart.apply2(ex, Lit1));
            string = objApply1 == null ? null : objApply1.toString();
        }
        RuntimeErrorAlert.alert(this, false, string, ex instanceof YailRuntimeError ? ((YailRuntimeError) ex).getErrorType() : "Runtime Error", "End Application");
        return applyToArgs.apply1(Values.empty);
    }

    @Override // com.google.appinventor.components.runtime.Form, com.google.appinventor.components.runtime.HandlesEventDispatching
    public boolean dispatchEvent(Component componentObject, String registeredComponentName, String eventName, Object[] args) throws Throwable {
        Symbol registeredObject = misc.string$To$Symbol(registeredComponentName);
        if (isBoundInFormEnvironment(registeredObject)) {
            if (lookupInFormEnvironment(registeredObject) != componentObject) {
                return false;
            }
            Object handler = lookupHandler(registeredComponentName, eventName);
            try {
                Scheme.apply.apply2(handler, LList.makeList(args, 0));
                return true;
            } catch (PermissionException exception) {
                exception.printStackTrace();
                boolean x = this == componentObject;
                if (!x ? x : IsEqual.apply(eventName, "PermissionNeeded")) {
                    processException(exception);
                    return false;
                }
                PermissionDenied(componentObject, eventName, exception.getPermissionNeeded());
                return false;
            } catch (StopBlocksExecution exception2) {
                return throw_name.throwName.apply1(exception2) != Boolean.FALSE;
            } catch (Throwable exception3) {
                androidLogForm(exception3.getMessage());
                exception3.printStackTrace();
                processException(exception3);
                return false;
            }
        }
        EventDispatcher.unregisterEventForDelegation(this, registeredComponentName, eventName);
        return false;
    }

    @Override // com.google.appinventor.components.runtime.Form, com.google.appinventor.components.runtime.HandlesEventDispatching
    public void dispatchGenericEvent(Component componentObject, String eventName, boolean notAlreadyHandled, Object[] args) throws Throwable {
        boolean x = false;
        Symbol handler$Mnsymbol = misc.string$To$Symbol(strings.stringAppend("any$", getSimpleName(componentObject), "$", eventName));
        Object handler = lookupInFormEnvironment(handler$Mnsymbol);
        if (handler != Boolean.FALSE) {
            try {
                Scheme.apply.apply2(handler, lists.cons(componentObject, lists.cons(notAlreadyHandled ? Boolean.TRUE : Boolean.FALSE, LList.makeList(args, 0))));
            } catch (PermissionException exception) {
                exception.printStackTrace();
                if (this == componentObject) {
                    x = true;
                }
                if (!x ? x : IsEqual.apply(eventName, "PermissionNeeded")) {
                    processException(exception);
                } else {
                    PermissionDenied(componentObject, eventName, exception.getPermissionNeeded());
                }
            } catch (StopBlocksExecution e) {
            } catch (Throwable exception2) {
                androidLogForm(exception2.getMessage());
                exception2.printStackTrace();
                processException(exception2);
            }
        }
    }

    public Object lookupHandler(Object componentName, Object eventName) {
        return lookupInFormEnvironment(misc.string$To$Symbol(EventDispatcher.makeFullEventName(componentName == null ? null : componentName.toString(), eventName != null ? eventName.toString() : null)));
    }

    @Override // com.google.appinventor.components.runtime.Form
    public void $define() throws Throwable {
        int i;
        Language.setDefaults(Scheme.getInstance());
        try {
            run();
        } catch (Exception exception) {
            androidLogForm(exception.getMessage());
            processException(exception);
        }
        Screen1 = this;
        addToFormEnvironment(Lit0, this);
        LList lList = this.events$Mnto$Mnregister;
        LList components = lList;
        Object arg0 = lList;
        while (true) {
            i = -2;
            if (arg0 == LList.Empty) {
                try {
                    break;
                } catch (YailRuntimeError exception2) {
                    processException(exception2);
                    return;
                }
            }
            try {
                Pair arg02 = (Pair) arg0;
                Object event$Mninfo = arg02.getCar();
                Object objApply1 = lists.car.apply1(event$Mninfo);
                String string = null;
                String string2 = objApply1 == null ? null : objApply1.toString();
                Object objApply12 = lists.cdr.apply1(event$Mninfo);
                if (objApply12 != null) {
                    string = objApply12.toString();
                }
                EventDispatcher.registerEventForDelegation(this, string2, string);
                arg0 = arg02.getCdr();
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, arg0);
            }
        }
        components = lists.reverse(this.components$Mnto$Mncreate);
        addToGlobalVars(Lit2, lambda$Fn1);
        Object arg03 = lists.reverse(this.form$Mndo$Mnafter$Mncreation);
        while (arg03 != LList.Empty) {
            try {
                Pair arg04 = (Pair) arg03;
                misc.force(arg04.getCar());
                arg03 = arg04.getCdr();
                i = -2;
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "arg0", -2, arg03);
            }
        }
        Object var$Mnval = null;
        Object arg05 = components;
        while (arg05 != LList.Empty) {
            try {
                Pair arg06 = (Pair) arg05;
                Object component$Mninfo = arg06.getCar();
                Object component$Mnname = lists.caddr.apply1(component$Mninfo);
                lists.cadddr.apply1(component$Mninfo);
                Object component$Mntype = lists.cadr.apply1(component$Mninfo);
                Object objApply13 = lists.car.apply1(component$Mninfo);
                try {
                    Object component$Mncontainer = lookupInFormEnvironment((Symbol) objApply13);
                    Object component$Mnobject = Invoke.make.apply2(component$Mntype, component$Mncontainer);
                    Invoke.invoke.apply3(component$Mnobject, "setComponentName", component$Mnname);
                    SlotSet.set$Mnfield$Ex.apply3(this, component$Mnname, component$Mnobject);
                    try {
                        addToFormEnvironment((Symbol) component$Mnname, component$Mnobject);
                        arg05 = arg06.getCdr();
                        var$Mnval = component$Mninfo;
                        i = -2;
                    } catch (ClassCastException e3) {
                        throw new WrongType(e3, "add-to-form-environment", 0, component$Mnname);
                    }
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "lookup-in-form-environment", 0, objApply13);
                }
            } catch (ClassCastException e5) {
                throw new WrongType(e5, "arg0", -2, arg05);
            }
        }
        Object var$Mnval$Mnpairs = lists.reverse(this.global$Mnvars$Mnto$Mncreate);
        Object arg07 = var$Mnval$Mnpairs;
        while (arg07 != LList.Empty) {
            try {
                Pair arg08 = (Pair) arg07;
                var$Mnval = arg08.getCar();
                Object var = lists.car.apply1(var$Mnval);
                Object val$Mnthunk = lists.cadr.apply1(var$Mnval);
                try {
                    addToGlobalVarEnvironment((Symbol) var, Scheme.applyToArgs.apply1(val$Mnthunk));
                    arg07 = arg08.getCdr();
                } catch (ClassCastException e6) {
                    throw new WrongType(e6, "add-to-global-var-environment", 0, var);
                }
            } catch (ClassCastException e7) {
                throw new WrongType(e7, "arg0", i, arg07);
            }
        }
        Object arg09 = components;
        while (arg09 != LList.Empty) {
            try {
                Pair arg010 = (Pair) arg09;
                Object component$Mninfo2 = arg010.getCar();
                lists.caddr.apply1(component$Mninfo2);
                var$Mnval = lists.cadddr.apply1(component$Mninfo2);
                if (var$Mnval != Boolean.FALSE) {
                    Scheme.applyToArgs.apply1(var$Mnval);
                }
                arg09 = arg010.getCdr();
            } catch (ClassCastException e8) {
                throw new WrongType(e8, "arg0", i, arg09);
            }
        }
        Object arg011 = components;
        while (arg011 != LList.Empty) {
            try {
                Pair arg012 = (Pair) arg011;
                Object component$Mninfo3 = arg012.getCar();
                Object objApply14 = lists.caddr.apply1(component$Mninfo3);
                lists.cadddr.apply1(component$Mninfo3);
                var$Mnval = objApply14;
                callInitialize(SlotGet.field.apply2(this, var$Mnval));
                arg011 = arg012.getCdr();
            } catch (ClassCastException e9) {
                throw new WrongType(e9, "arg0", i, arg011);
            }
        }
    }

    public static SimpleSymbol lambda1symbolAppend$V(Object[] argsArray) throws Throwable {
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

    static Object lambda2() {
        return null;
    }
}
