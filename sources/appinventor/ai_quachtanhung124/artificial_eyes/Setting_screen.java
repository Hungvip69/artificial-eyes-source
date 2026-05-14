package appinventor.ai_quachtanhung124.artificial_eyes;

import android.os.Bundle;
import android.util.Log;
import androidx.fragment.app.FragmentTransaction;
import com.google.appinventor.components.common.Permission;
import com.google.appinventor.components.common.PropertyTypeConstants;
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
import com.google.appinventor.components.runtime.Label;
import com.google.appinventor.components.runtime.ListPicker;
import com.google.appinventor.components.runtime.Notifier;
import com.google.appinventor.components.runtime.PhoneCall;
import com.google.appinventor.components.runtime.TextBox;
import com.google.appinventor.components.runtime.Texting;
import com.google.appinventor.components.runtime.VerticalArrangement;
import com.google.appinventor.components.runtime.errors.PermissionException;
import com.google.appinventor.components.runtime.errors.StopBlocksExecution;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import com.google.appinventor.components.runtime.util.RetValManager;
import com.google.appinventor.components.runtime.util.RuntimeErrorAlert;
import com.google.youngandroid.runtime;
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
import kawa.standard.throw_name;
import java.io.BufferedReader;
import java.io.FileOutputStream;
import java.io.InputStreamReader;

/* JADX INFO: compiled from: Setting_screen.yail */
/* JADX INFO: loaded from: classes2.dex */
public class Setting_screen extends Form implements Runnable {
    private static final String TAG = "ArtificialEyesSetting";
    static final SimpleSymbol Lit0;
    static final SimpleSymbol Lit1;
    static final SimpleSymbol Lit10;
    static final IntNum Lit100;
    static final SimpleSymbol Lit101;
    static final SimpleSymbol Lit102;
    static final IntNum Lit103;
    static final FString Lit104;
    static final FString Lit105;
    static final SimpleSymbol Lit106;
    static final IntNum Lit107;
    static final IntNum Lit108;
    static final FString Lit109;
    static final SimpleSymbol Lit11;
    static final SimpleSymbol Lit110;
    static final PairWithPosition Lit111;
    static final PairWithPosition Lit112;
    static final PairWithPosition Lit113;
    static final PairWithPosition Lit114;
    static final PairWithPosition Lit115;
    static final PairWithPosition Lit116;
    static final SimpleSymbol Lit117;
    static final SimpleSymbol Lit118;
    static final SimpleSymbol Lit119;
    static final IntNum Lit12;
    static final SimpleSymbol Lit120;
    static final SimpleSymbol Lit121;
    static final FString Lit122;
    static final SimpleSymbol Lit123;
    static final IntNum Lit124;
    static final SimpleSymbol Lit125;
    static final FString Lit126;
    static final FString Lit127;
    static final SimpleSymbol Lit128;
    static final FString Lit129;
    static final SimpleSymbol Lit13;
    static final FString Lit130;
    static final SimpleSymbol Lit131;
    static final IntNum Lit132;
    static final FString Lit133;
    static final FString Lit134;
    static final SimpleSymbol Lit135;
    static final IntNum Lit136;
    static final DFloNum Lit137;
    static final IntNum Lit138;
    static final IntNum Lit139;
    static final SimpleSymbol Lit14;
    static final FString Lit140;
    static final PairWithPosition Lit141;
    static final PairWithPosition Lit142;
    static final SimpleSymbol Lit143;
    static final SimpleSymbol Lit144;
    static final PairWithPosition Lit145;
    static final PairWithPosition Lit146;
    static final PairWithPosition Lit147;
    static final PairWithPosition Lit148;
    static final PairWithPosition Lit149;
    static final SimpleSymbol Lit15;
    static final PairWithPosition Lit150;
    static final PairWithPosition Lit151;
    static final PairWithPosition Lit152;
    static final PairWithPosition Lit153;
    static final SimpleSymbol Lit154;
    static final PairWithPosition Lit155;
    static final SimpleSymbol Lit156;
    static final FString Lit157;
    static final SimpleSymbol Lit158;
    static final FString Lit159;
    static final SimpleSymbol Lit16;
    static final FString Lit160;
    static final IntNum Lit161;
    static final FString Lit162;
    static final SimpleSymbol Lit163;
    static final PairWithPosition Lit164;
    static final PairWithPosition Lit165;
    static final PairWithPosition Lit166;
    static final PairWithPosition Lit167;
    static final SimpleSymbol Lit168;
    static final SimpleSymbol Lit169;
    static final SimpleSymbol Lit17;
    static final FString Lit170;
    static final SimpleSymbol Lit171;
    static final SimpleSymbol Lit172;
    static final FString Lit173;
    static final SimpleSymbol Lit174;
    static final PairWithPosition Lit175;
    static final IntNum Lit176;
    static final PairWithPosition Lit177;
    static final PairWithPosition Lit178;
    static final SimpleSymbol Lit179;
    static final SimpleSymbol Lit18;
    static final SimpleSymbol Lit180;
    static final FString Lit181;
    static final FString Lit182;
    static final FString Lit183;
    static final FString Lit184;
    static final PairWithPosition Lit185;
    static final PairWithPosition Lit186;
    static final PairWithPosition Lit187;
    static final SimpleSymbol Lit19;
    static final SimpleSymbol Lit2;
    static final PairWithPosition Lit20;
    static final SimpleSymbol Lit21;
    static final PairWithPosition Lit22;
    static final SimpleSymbol Lit23;
    static final SimpleSymbol Lit24;
    static final SimpleSymbol Lit25;
    static final PairWithPosition Lit26;
    static final SimpleSymbol Lit27;
    static final SimpleSymbol Lit28;
    static final FString Lit29;
    static final SimpleSymbol Lit3;
    static final SimpleSymbol Lit30;
    static final FString Lit31;
    static final FString Lit32;
    static final SimpleSymbol Lit33;
    static final SimpleSymbol Lit34;
    static final IntNum Lit35;
    static final SimpleSymbol Lit36;
    static final IntNum Lit37;
    static final FString Lit38;
    static final FString Lit39;
    static final SimpleSymbol Lit4;
    static final SimpleSymbol Lit40;
    static final FString Lit41;
    static final FString Lit42;
    static final SimpleSymbol Lit43;
    static final FString Lit44;
    static final FString Lit45;
    static final SimpleSymbol Lit46;
    static final IntNum Lit47;
    static final SimpleSymbol Lit48;
    static final FString Lit49;
    static final SimpleSymbol Lit5;
    static final PairWithPosition Lit50;
    static final SimpleSymbol Lit51;
    static final SimpleSymbol Lit52;
    static final FString Lit53;
    static final SimpleSymbol Lit54;
    static final FString Lit55;
    static final FString Lit56;
    static final SimpleSymbol Lit57;
    static final FString Lit58;
    static final FString Lit59;
    static final SimpleSymbol Lit6;
    static final SimpleSymbol Lit60;
    static final FString Lit61;
    static final FString Lit62;
    static final SimpleSymbol Lit63;
    static final FString Lit64;
    static final FString Lit65;
    static final SimpleSymbol Lit66;
    static final SimpleSymbol Lit67;
    static final IntNum Lit68;
    static final SimpleSymbol Lit69;
    static final SimpleSymbol Lit7;
    static final FString Lit70;
    static final FString Lit71;
    static final SimpleSymbol Lit72;
    static final SimpleSymbol Lit73;
    static final IntNum Lit74;
    static final DFloNum Lit75;
    static final SimpleSymbol Lit76;
    static final IntNum Lit77;
    static final FString Lit78;
    static final SimpleSymbol Lit79;
    static final SimpleSymbol Lit8;
    static final SimpleSymbol Lit80;
    static final SimpleSymbol Lit81;
    static final SimpleSymbol Lit82;
    static final SimpleSymbol Lit83;
    static final SimpleSymbol Lit84;
    static final SimpleSymbol Lit85;
    static final SimpleSymbol Lit86;
    static final PairWithPosition Lit87;
    static final SimpleSymbol Lit88;
    static final PairWithPosition Lit89;
    static final IntNum Lit9;
    static final SimpleSymbol Lit90;
    static final SimpleSymbol Lit91;
    static final FString Lit92;
    static final SimpleSymbol Lit93;
    static final FString Lit94;
    static final FString Lit95;
    static final SimpleSymbol Lit96;
    static final FString Lit97;
    static final FString Lit98;
    static final SimpleSymbol Lit99;
    public static Setting_screen Setting_screen;
    static final ModuleMethod lambda$Fn1 = null;
    static final ModuleMethod lambda$Fn10 = null;
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
    static final ModuleMethod lambda$Fn6 = null;
    static final ModuleMethod lambda$Fn7 = null;
    static final ModuleMethod lambda$Fn8 = null;
    static final ModuleMethod lambda$Fn9 = null;
    public Boolean $Stdebug$Mnform$St;
    public final ModuleMethod $define;
    public Button Back_BT;
    public final ModuleMethod Back_BT$Click;
    public BluetoothClient BluetoothClient1;
    public Button Button1;
    public final ModuleMethod Button1$Click;

    /* JADX INFO: renamed from: Chọn_phần_cứng_BT, reason: contains not printable characters */
    public ListPicker f1Chn_phn_cng_BT;

    /* JADX INFO: renamed from: Chọn_phần_cứng_BT$AfterPicking, reason: contains not printable characters */
    public final ModuleMethod f2Chn_phn_cng_BT$AfterPicking;

    /* JADX INFO: renamed from: Chọn_phần_cứng_BT$BeforePicking, reason: contains not printable characters */
    public final ModuleMethod f3Chn_phn_cng_BT$BeforePicking;
    public Clock Clock1;
    public File Device_DATA;
    public final ModuleMethod Device_DATA$GotText;
    public HorizontalArrangement HorizontalArrangement1;
    public HorizontalArrangement HorizontalArrangement2;
    public HorizontalArrangement HorizontalArrangement3;
    public HorizontalArrangement HorizontalArrangement4;
    public HorizontalArrangement HorizontalArrangement5;
    public HorizontalArrangement HorizontalArrangement6;
    public HorizontalArrangement HorizontalArrangement7;
    public Image Logo_transparent;

    /* JADX INFO: renamed from: Lưu_cài_đặt_BT, reason: contains not printable characters */
    public Button f4Lu_ci_t_BT;

    /* JADX INFO: renamed from: Lưu_cài_đặt_BT$Click, reason: contains not printable characters */
    public final ModuleMethod f5Lu_ci_t_BT$Click;

    /* JADX INFO: renamed from: Nhập_số_dt_TB, reason: contains not printable characters */
    public TextBox f6Nhp_s_dt_TB;
    public Notifier Notifier1;
    public final ModuleMethod Notifier1$AfterChoosing;
    public PhoneCall PhoneCall1;

    /* JADX INFO: renamed from: Phần_cứng_hiện_tại, reason: contains not printable characters */
    public Label f7Phn_cng_hin_ti;
    public final ModuleMethod Setting_screen$Initialize;
    public final ModuleMethod Setting_screen$PermissionGranted;

    /* JADX INFO: renamed from: SĐT_DATA, reason: contains not printable characters */
    public File f8ST_DATA;

    /* JADX INFO: renamed from: SĐT_DATA$GotText, reason: contains not printable characters */
    public final ModuleMethod f9ST_DATA$GotText;
    public Texting Texting1;
    public VerticalArrangement VerticalArrangement1;
    public VerticalArrangement VerticalArrangement2;
    public VerticalArrangement VerticalArrangement3;
    public VerticalArrangement VerticalArrangement4;
    public VerticalArrangement VerticalArrangement5;
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

    /* JADX INFO: renamed from: sđt_hiện_tại, reason: contains not printable characters */
    public Label f10st_hin_ti;
    static final SimpleSymbol Lit215 = (SimpleSymbol) new SimpleSymbol("any").readResolve();
    static final SimpleSymbol Lit214 = (SimpleSymbol) new SimpleSymbol("lookup-handler").readResolve();
    static final SimpleSymbol Lit213 = (SimpleSymbol) new SimpleSymbol("dispatchGenericEvent").readResolve();
    static final SimpleSymbol Lit212 = (SimpleSymbol) new SimpleSymbol("dispatchEvent").readResolve();
    static final SimpleSymbol Lit211 = (SimpleSymbol) new SimpleSymbol("send-error").readResolve();
    static final SimpleSymbol Lit210 = (SimpleSymbol) new SimpleSymbol("add-to-form-do-after-creation").readResolve();
    static final SimpleSymbol Lit209 = (SimpleSymbol) new SimpleSymbol("add-to-global-vars").readResolve();
    static final SimpleSymbol Lit208 = (SimpleSymbol) new SimpleSymbol("add-to-components").readResolve();
    static final SimpleSymbol Lit207 = (SimpleSymbol) new SimpleSymbol("add-to-events").readResolve();
    static final SimpleSymbol Lit206 = (SimpleSymbol) new SimpleSymbol("add-to-global-var-environment").readResolve();
    static final SimpleSymbol Lit205 = (SimpleSymbol) new SimpleSymbol("is-bound-in-form-environment").readResolve();
    static final SimpleSymbol Lit204 = (SimpleSymbol) new SimpleSymbol("lookup-in-form-environment").readResolve();
    static final SimpleSymbol Lit203 = (SimpleSymbol) new SimpleSymbol("add-to-form-environment").readResolve();
    static final SimpleSymbol Lit202 = (SimpleSymbol) new SimpleSymbol("android-log-form").readResolve();
    static final SimpleSymbol Lit201 = (SimpleSymbol) new SimpleSymbol("get-simple-name").readResolve();
    static final FString Lit200 = new FString("com.google.appinventor.components.runtime.Clock");
    static final SimpleSymbol Lit199 = (SimpleSymbol) new SimpleSymbol("TimerInterval").readResolve();
    static final SimpleSymbol Lit198 = (SimpleSymbol) new SimpleSymbol("TimerEnabled").readResolve();
    static final SimpleSymbol Lit197 = (SimpleSymbol) new SimpleSymbol("TimerAlwaysFires").readResolve();
    static final SimpleSymbol Lit196 = (SimpleSymbol) new SimpleSymbol("Clock1").readResolve();
    static final FString Lit195 = new FString("com.google.appinventor.components.runtime.Clock");
    static final FString Lit194 = new FString("com.google.appinventor.components.runtime.Texting");
    static final IntNum Lit193 = IntNum.make(1);
    static final SimpleSymbol Lit192 = (SimpleSymbol) new SimpleSymbol("ReceivingEnabled").readResolve();
    static final FString Lit191 = new FString("com.google.appinventor.components.runtime.Texting");
    static final FString Lit190 = new FString("com.google.appinventor.components.runtime.PhoneCall");
    static final FString Lit189 = new FString("com.google.appinventor.components.runtime.PhoneCall");
    static final SimpleSymbol Lit188 = (SimpleSymbol) new SimpleSymbol("Device_DATA$GotText").readResolve();

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) new SimpleSymbol(PropertyTypeConstants.PROPERTY_TYPE_TEXT).readResolve();
        Lit7 = simpleSymbol;
        Lit187 = PairWithPosition.make(simpleSymbol, PairWithPosition.make(Lit7, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 995691), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 995685);
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) new SimpleSymbol("number").readResolve();
        Lit10 = simpleSymbol2;
        Lit186 = PairWithPosition.make(simpleSymbol2, PairWithPosition.make(Lit10, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 995488), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 995480);
        Lit185 = PairWithPosition.make(Lit7, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 995459);
        Lit184 = new FString("com.google.appinventor.components.runtime.File");
        Lit183 = new FString("com.google.appinventor.components.runtime.File");
        Lit182 = new FString("com.google.appinventor.components.runtime.BluetoothClient");
        Lit181 = new FString("com.google.appinventor.components.runtime.BluetoothClient");
        Lit180 = (SimpleSymbol) new SimpleSymbol("GotText").readResolve();
        Lit179 = (SimpleSymbol) new SimpleSymbol("SĐT_DATA$GotText").readResolve();
        Lit178 = PairWithPosition.make(Lit7, PairWithPosition.make(Lit7, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 930238), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 930232);
        Lit177 = PairWithPosition.make(Lit10, PairWithPosition.make(Lit10, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 929952), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 929944);
        Lit176 = IntNum.make(0);
        Lit175 = PairWithPosition.make(Lit7, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 929923);
        Lit174 = (SimpleSymbol) new SimpleSymbol("$text").readResolve();
        Lit173 = new FString("com.google.appinventor.components.runtime.File");
        Lit172 = (SimpleSymbol) new SimpleSymbol("WritePermission").readResolve();
        Lit171 = (SimpleSymbol) new SimpleSymbol("ReadPermission").readResolve();
        Lit170 = new FString("com.google.appinventor.components.runtime.File");
        Lit169 = (SimpleSymbol) new SimpleSymbol("AfterChoosing").readResolve();
        Lit168 = (SimpleSymbol) new SimpleSymbol("Notifier1$AfterChoosing").readResolve();
        Lit167 = PairWithPosition.make(Lit7, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 885372);
        Lit166 = PairWithPosition.make(Lit7, PairWithPosition.make(Lit7, PairWithPosition.make(Lit7, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 885286), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 885281), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 885275);
        Lit165 = PairWithPosition.make(Lit7, PairWithPosition.make(Lit7, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 885053), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 885047);
        Lit164 = PairWithPosition.make(Lit215, PairWithPosition.make(Lit215, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 884880), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 884875);
        Lit163 = (SimpleSymbol) new SimpleSymbol("$choice").readResolve();
        Lit162 = new FString("com.google.appinventor.components.runtime.Notifier");
        Lit161 = IntNum.make(new int[]{-65536, 0});
        Lit160 = new FString("com.google.appinventor.components.runtime.Notifier");
        Lit159 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        Lit158 = (SimpleSymbol) new SimpleSymbol("HorizontalArrangement3").readResolve();
        Lit157 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        Lit156 = (SimpleSymbol) new SimpleSymbol("Lưu_cài_đặt_BT$Click").readResolve();
        SimpleSymbol simpleSymbol3 = Lit7;
        SimpleSymbol simpleSymbol4 = Lit7;
        SimpleSymbol simpleSymbol5 = Lit7;
        SimpleSymbol simpleSymbol6 = Lit7;
        SimpleSymbol simpleSymbol7 = (SimpleSymbol) new SimpleSymbol(PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN).readResolve();
        Lit5 = simpleSymbol7;
        Lit155 = PairWithPosition.make(simpleSymbol3, PairWithPosition.make(simpleSymbol4, PairWithPosition.make(simpleSymbol5, PairWithPosition.make(simpleSymbol6, PairWithPosition.make(simpleSymbol7, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 820983), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 820978), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 820973), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 820968), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 820962);
        Lit154 = (SimpleSymbol) new SimpleSymbol("ShowChooseDialog").readResolve();
        Lit153 = PairWithPosition.make(Lit215, PairWithPosition.make(Lit215, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 820666), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 820661);
        Lit152 = PairWithPosition.make(Lit7, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 820555);
        Lit151 = PairWithPosition.make(Lit7, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 820467);
        Lit150 = PairWithPosition.make(Lit7, PairWithPosition.make(Lit7, PairWithPosition.make(Lit7, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 820381), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 820376), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 820370);
        Lit149 = PairWithPosition.make(Lit7, PairWithPosition.make(Lit7, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 820148), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 820142);
        Lit148 = PairWithPosition.make(Lit215, PairWithPosition.make(Lit215, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 820005), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 820000);
        Lit147 = PairWithPosition.make(Lit215, PairWithPosition.make(Lit215, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 819904), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 819899);
        Lit146 = PairWithPosition.make(Lit7, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 819877);
        Lit145 = PairWithPosition.make(Lit7, PairWithPosition.make(Lit7, PairWithPosition.make(Lit7, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 819699), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 819694), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 819688);
        Lit144 = (SimpleSymbol) new SimpleSymbol("ShowMessageDialog").readResolve();
        Lit143 = (SimpleSymbol) new SimpleSymbol("Notifier1").readResolve();
        Lit142 = PairWithPosition.make(Lit215, PairWithPosition.make(Lit215, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 819386), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 819381);
        Lit141 = PairWithPosition.make(Lit7, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 819359);
        Lit140 = new FString("com.google.appinventor.components.runtime.Button");
        Lit139 = IntNum.make(new int[]{-1, 0});
        Lit138 = IntNum.make(50);
        Lit137 = DFloNum.make(25);
        Lit136 = IntNum.make(new int[]{-16502434, 0});
        Lit135 = (SimpleSymbol) new SimpleSymbol("Lưu_cài_đặt_BT").readResolve();
        Lit134 = new FString("com.google.appinventor.components.runtime.Button");
        Lit133 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        Lit132 = IntNum.make(185);
        Lit131 = (SimpleSymbol) new SimpleSymbol("HorizontalArrangement2").readResolve();
        Lit130 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        Lit129 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        Lit128 = (SimpleSymbol) new SimpleSymbol("HorizontalArrangement1").readResolve();
        Lit127 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        Lit126 = new FString("com.google.appinventor.components.runtime.Image");
        Lit125 = (SimpleSymbol) new SimpleSymbol("Picture").readResolve();
        Lit124 = IntNum.make(700);
        Lit123 = (SimpleSymbol) new SimpleSymbol("Logo_transparent").readResolve();
        Lit122 = new FString("com.google.appinventor.components.runtime.Image");
        Lit121 = (SimpleSymbol) new SimpleSymbol("Button1$Click").readResolve();
        Lit120 = (SimpleSymbol) new SimpleSymbol("SendMessageDirect").readResolve();
        Lit119 = (SimpleSymbol) new SimpleSymbol("Texting1").readResolve();
        Lit118 = (SimpleSymbol) new SimpleSymbol("MakePhoneCallDirect").readResolve();
        Lit117 = (SimpleSymbol) new SimpleSymbol("PhoneCall1").readResolve();
        Lit116 = PairWithPosition.make(Lit7, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 648191);
        Lit115 = PairWithPosition.make(Lit7, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 648022);
        Lit114 = PairWithPosition.make(Lit7, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 647850);
        Lit113 = PairWithPosition.make(Lit7, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 647674);
        Lit112 = PairWithPosition.make(Lit7, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 647499);
        Lit111 = PairWithPosition.make(Lit7, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 647328);
        Lit110 = (SimpleSymbol) new SimpleSymbol("AskForPermission").readResolve();
        Lit109 = new FString("com.google.appinventor.components.runtime.Button");
        Lit108 = IntNum.make(new int[]{-1, 0});
        Lit107 = IntNum.make(new int[]{-16560488, 0});
        Lit106 = (SimpleSymbol) new SimpleSymbol("Button1").readResolve();
        Lit105 = new FString("com.google.appinventor.components.runtime.Button");
        Lit104 = new FString("com.google.appinventor.components.runtime.TextBox");
        Lit103 = IntNum.make(200);
        Lit102 = (SimpleSymbol) new SimpleSymbol("NumbersOnly").readResolve();
        Lit101 = (SimpleSymbol) new SimpleSymbol("Hint").readResolve();
        Lit100 = IntNum.make(22);
        Lit99 = (SimpleSymbol) new SimpleSymbol("Nhập_số_dt_TB").readResolve();
        Lit98 = new FString("com.google.appinventor.components.runtime.TextBox");
        Lit97 = new FString("com.google.appinventor.components.runtime.Label");
        Lit96 = (SimpleSymbol) new SimpleSymbol("sđt_hiện_tại").readResolve();
        Lit95 = new FString("com.google.appinventor.components.runtime.Label");
        Lit94 = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
        Lit93 = (SimpleSymbol) new SimpleSymbol("VerticalArrangement3").readResolve();
        Lit92 = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
        Lit91 = (SimpleSymbol) new SimpleSymbol("AfterPicking").readResolve();
        Lit90 = (SimpleSymbol) new SimpleSymbol("Chọn_phần_cứng_BT$AfterPicking").readResolve();
        Lit89 = PairWithPosition.make(Lit7, PairWithPosition.make(Lit7, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 475412), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 475406);
        Lit88 = (SimpleSymbol) new SimpleSymbol("SaveFile").readResolve();
        Lit87 = PairWithPosition.make(Lit7, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 475262);
        Lit86 = (SimpleSymbol) new SimpleSymbol("Selection").readResolve();
        Lit85 = (SimpleSymbol) new SimpleSymbol("Connect").readResolve();
        Lit84 = (SimpleSymbol) new SimpleSymbol("BeforePicking").readResolve();
        Lit83 = (SimpleSymbol) new SimpleSymbol("Chọn_phần_cứng_BT$BeforePicking").readResolve();
        Lit82 = (SimpleSymbol) new SimpleSymbol("list").readResolve();
        Lit81 = (SimpleSymbol) new SimpleSymbol("AddressesAndNames").readResolve();
        Lit80 = (SimpleSymbol) new SimpleSymbol("BluetoothClient1").readResolve();
        Lit79 = (SimpleSymbol) new SimpleSymbol("Elements").readResolve();
        Lit78 = new FString("com.google.appinventor.components.runtime.ListPicker");
        Lit77 = IntNum.make(new int[]{-1, 0});
        Lit76 = (SimpleSymbol) new SimpleSymbol("TextColor").readResolve();
        Lit75 = DFloNum.make(20);
        Lit74 = IntNum.make(new int[]{-16560488, 0});
        Lit73 = (SimpleSymbol) new SimpleSymbol("BackgroundColor").readResolve();
        Lit72 = (SimpleSymbol) new SimpleSymbol("Chọn_phần_cứng_BT").readResolve();
        Lit71 = new FString("com.google.appinventor.components.runtime.ListPicker");
        Lit70 = new FString("com.google.appinventor.components.runtime.Label");
        Lit69 = (SimpleSymbol) new SimpleSymbol("Text").readResolve();
        Lit68 = IntNum.make(20);
        Lit67 = (SimpleSymbol) new SimpleSymbol("FontSize").readResolve();
        Lit66 = (SimpleSymbol) new SimpleSymbol("Phần_cứng_hiện_tại").readResolve();
        Lit65 = new FString("com.google.appinventor.components.runtime.Label");
        Lit64 = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
        Lit63 = (SimpleSymbol) new SimpleSymbol("VerticalArrangement2").readResolve();
        Lit62 = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
        Lit61 = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
        Lit60 = (SimpleSymbol) new SimpleSymbol("VerticalArrangement1").readResolve();
        Lit59 = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
        Lit58 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        Lit57 = (SimpleSymbol) new SimpleSymbol("HorizontalArrangement4").readResolve();
        Lit56 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        Lit55 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        Lit54 = (SimpleSymbol) new SimpleSymbol("HorizontalArrangement5").readResolve();
        Lit53 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        Lit52 = (SimpleSymbol) new SimpleSymbol("Click").readResolve();
        Lit51 = (SimpleSymbol) new SimpleSymbol("Back_BT$Click").readResolve();
        Lit50 = PairWithPosition.make(Lit7, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 262222);
        Lit49 = new FString("com.google.appinventor.components.runtime.Button");
        Lit48 = (SimpleSymbol) new SimpleSymbol(Component.LISTVIEW_KEY_IMAGE).readResolve();
        Lit47 = IntNum.make(30);
        Lit46 = (SimpleSymbol) new SimpleSymbol("Back_BT").readResolve();
        Lit45 = new FString("com.google.appinventor.components.runtime.Button");
        Lit44 = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
        Lit43 = (SimpleSymbol) new SimpleSymbol("VerticalArrangement5").readResolve();
        Lit42 = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
        Lit41 = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
        Lit40 = (SimpleSymbol) new SimpleSymbol("VerticalArrangement4").readResolve();
        Lit39 = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
        Lit38 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        Lit37 = IntNum.make(10);
        Lit36 = (SimpleSymbol) new SimpleSymbol("Width").readResolve();
        Lit35 = IntNum.make(-2);
        Lit34 = (SimpleSymbol) new SimpleSymbol("Height").readResolve();
        Lit33 = (SimpleSymbol) new SimpleSymbol("HorizontalArrangement6").readResolve();
        Lit32 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        Lit31 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        Lit30 = (SimpleSymbol) new SimpleSymbol("HorizontalArrangement7").readResolve();
        Lit29 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        Lit28 = (SimpleSymbol) new SimpleSymbol("PermissionGranted").readResolve();
        Lit27 = (SimpleSymbol) new SimpleSymbol("Setting_screen$PermissionGranted").readResolve();
        Lit26 = PairWithPosition.make(Lit215, PairWithPosition.make(Lit215, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 102512), "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 102507);
        Lit25 = (SimpleSymbol) new SimpleSymbol("$permissionName").readResolve();
        Lit24 = (SimpleSymbol) new SimpleSymbol("Initialize").readResolve();
        Lit23 = (SimpleSymbol) new SimpleSymbol("Setting_screen$Initialize").readResolve();
        Lit22 = PairWithPosition.make(Lit7, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 94381);
        Lit21 = (SimpleSymbol) new SimpleSymbol("Device_DATA").readResolve();
        Lit20 = PairWithPosition.make(Lit7, LList.Empty, "/tmp/1778769672862_7755082056089496576-0/youngandroidproject/../src/appinventor/ai_quachtanhung124/artificial_eyes/Setting_screen.yail", 94293);
        Lit19 = (SimpleSymbol) new SimpleSymbol("ReadFrom").readResolve();
        Lit18 = (SimpleSymbol) new SimpleSymbol("SĐT_DATA").readResolve();
        Lit17 = (SimpleSymbol) new SimpleSymbol("TitleVisible").readResolve();
        Lit16 = (SimpleSymbol) new SimpleSymbol("Title").readResolve();
        Lit15 = (SimpleSymbol) new SimpleSymbol("Sizing").readResolve();
        Lit14 = (SimpleSymbol) new SimpleSymbol("ShowListsAsJson").readResolve();
        Lit13 = (SimpleSymbol) new SimpleSymbol("ScreenOrientation").readResolve();
        Lit12 = IntNum.make(new int[]{-16502434, 0});
        Lit11 = (SimpleSymbol) new SimpleSymbol("PrimaryColorDark").readResolve();
        Lit9 = IntNum.make(new int[]{-16560488, 0});
        Lit8 = (SimpleSymbol) new SimpleSymbol("PrimaryColor").readResolve();
        Lit6 = (SimpleSymbol) new SimpleSymbol("AppName").readResolve();
        Lit4 = (SimpleSymbol) new SimpleSymbol("ActionBar").readResolve();
        Lit3 = (SimpleSymbol) new SimpleSymbol("g$Device_selected").readResolve();
        Lit2 = (SimpleSymbol) new SimpleSymbol("*the-null-value*").readResolve();
        Lit1 = (SimpleSymbol) new SimpleSymbol("getMessage").readResolve();
        Lit0 = (SimpleSymbol) new SimpleSymbol("Setting_screen").readResolve();
    }

    public Setting_screen() {
        ModuleInfo.register(this);
        frame frameVar = new frame();
        frameVar.$main = this;
        this.get$Mnsimple$Mnname = new ModuleMethod(frameVar, 1, Lit201, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.onCreate = new ModuleMethod(frameVar, 2, "onCreate", FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.android$Mnlog$Mnform = new ModuleMethod(frameVar, 3, Lit202, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.add$Mnto$Mnform$Mnenvironment = new ModuleMethod(frameVar, 4, Lit203, 8194);
        this.lookup$Mnin$Mnform$Mnenvironment = new ModuleMethod(frameVar, 5, Lit204, 8193);
        this.is$Mnbound$Mnin$Mnform$Mnenvironment = new ModuleMethod(frameVar, 7, Lit205, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.add$Mnto$Mnglobal$Mnvar$Mnenvironment = new ModuleMethod(frameVar, 8, Lit206, 8194);
        this.add$Mnto$Mnevents = new ModuleMethod(frameVar, 9, Lit207, 8194);
        this.add$Mnto$Mncomponents = new ModuleMethod(frameVar, 10, Lit208, 16388);
        this.add$Mnto$Mnglobal$Mnvars = new ModuleMethod(frameVar, 11, Lit209, 8194);
        this.add$Mnto$Mnform$Mndo$Mnafter$Mncreation = new ModuleMethod(frameVar, 12, Lit210, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.send$Mnerror = new ModuleMethod(frameVar, 13, Lit211, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.process$Mnexception = new ModuleMethod(frameVar, 14, "process-exception", FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.dispatchEvent = new ModuleMethod(frameVar, 15, Lit212, 16388);
        this.dispatchGenericEvent = new ModuleMethod(frameVar, 16, Lit213, 16388);
        this.lookup$Mnhandler = new ModuleMethod(frameVar, 17, Lit214, 8194);
        ModuleMethod moduleMethod = new ModuleMethod(frameVar, 18, null, 0);
        moduleMethod.setProperty("source-location", "/tmp/runtime3808032275111475787.scm:658");
        lambda$Fn1 = moduleMethod;
        this.$define = new ModuleMethod(frameVar, 19, "$define", 0);
        lambda$Fn2 = new ModuleMethod(frameVar, 20, null, 0);
        lambda$Fn3 = new ModuleMethod(frameVar, 21, null, 0);
        this.Setting_screen$Initialize = new ModuleMethod(frameVar, 22, Lit23, 0);
        this.Setting_screen$PermissionGranted = new ModuleMethod(frameVar, 23, Lit27, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        lambda$Fn4 = new ModuleMethod(frameVar, 24, null, 0);
        lambda$Fn5 = new ModuleMethod(frameVar, 25, null, 0);
        lambda$Fn6 = new ModuleMethod(frameVar, 26, null, 0);
        lambda$Fn7 = new ModuleMethod(frameVar, 27, null, 0);
        lambda$Fn8 = new ModuleMethod(frameVar, 28, null, 0);
        lambda$Fn9 = new ModuleMethod(frameVar, 29, null, 0);
        this.Back_BT$Click = new ModuleMethod(frameVar, 30, Lit51, 0);
        lambda$Fn10 = new ModuleMethod(frameVar, 31, null, 0);
        lambda$Fn11 = new ModuleMethod(frameVar, 32, null, 0);
        lambda$Fn12 = new ModuleMethod(frameVar, 33, null, 0);
        lambda$Fn13 = new ModuleMethod(frameVar, 34, null, 0);
        lambda$Fn14 = new ModuleMethod(frameVar, 35, null, 0);
        lambda$Fn15 = new ModuleMethod(frameVar, 36, null, 0);
        lambda$Fn16 = new ModuleMethod(frameVar, 37, null, 0);
        lambda$Fn17 = new ModuleMethod(frameVar, 38, null, 0);
        lambda$Fn18 = new ModuleMethod(frameVar, 39, null, 0);
        lambda$Fn19 = new ModuleMethod(frameVar, 40, null, 0);
        this.f3Chn_phn_cng_BT$BeforePicking = new ModuleMethod(frameVar, 41, Lit83, 0);
        this.f2Chn_phn_cng_BT$AfterPicking = new ModuleMethod(frameVar, 42, Lit90, 0);
        lambda$Fn20 = new ModuleMethod(frameVar, 43, null, 0);
        lambda$Fn21 = new ModuleMethod(frameVar, 44, null, 0);
        lambda$Fn22 = new ModuleMethod(frameVar, 45, null, 0);
        lambda$Fn23 = new ModuleMethod(frameVar, 46, null, 0);
        lambda$Fn24 = new ModuleMethod(frameVar, 47, null, 0);
        lambda$Fn25 = new ModuleMethod(frameVar, 48, null, 0);
        lambda$Fn26 = new ModuleMethod(frameVar, 49, null, 0);
        lambda$Fn27 = new ModuleMethod(frameVar, 50, null, 0);
        this.Button1$Click = new ModuleMethod(frameVar, 51, Lit121, 0);
        lambda$Fn28 = new ModuleMethod(frameVar, 52, null, 0);
        lambda$Fn29 = new ModuleMethod(frameVar, 53, null, 0);
        lambda$Fn30 = new ModuleMethod(frameVar, 54, null, 0);
        lambda$Fn31 = new ModuleMethod(frameVar, 55, null, 0);
        lambda$Fn32 = new ModuleMethod(frameVar, 56, null, 0);
        lambda$Fn33 = new ModuleMethod(frameVar, 57, null, 0);
        lambda$Fn34 = new ModuleMethod(frameVar, 58, null, 0);
        lambda$Fn35 = new ModuleMethod(frameVar, 59, null, 0);
        lambda$Fn36 = new ModuleMethod(frameVar, 60, null, 0);
        lambda$Fn37 = new ModuleMethod(frameVar, 61, null, 0);
        this.f5Lu_ci_t_BT$Click = new ModuleMethod(frameVar, 62, Lit156, 0);
        lambda$Fn38 = new ModuleMethod(frameVar, 63, null, 0);
        lambda$Fn39 = new ModuleMethod(frameVar, 64, null, 0);
        lambda$Fn40 = new ModuleMethod(frameVar, 65, null, 0);
        lambda$Fn41 = new ModuleMethod(frameVar, 66, null, 0);
        this.Notifier1$AfterChoosing = new ModuleMethod(frameVar, 67, Lit168, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        lambda$Fn42 = new ModuleMethod(frameVar, 68, null, 0);
        lambda$Fn43 = new ModuleMethod(frameVar, 69, null, 0);
        this.f9ST_DATA$GotText = new ModuleMethod(frameVar, 70, Lit179, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        lambda$Fn44 = new ModuleMethod(frameVar, 71, null, 0);
        lambda$Fn45 = new ModuleMethod(frameVar, 72, null, 0);
        this.Device_DATA$GotText = new ModuleMethod(frameVar, 73, Lit188, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        lambda$Fn46 = new ModuleMethod(frameVar, 74, null, 0);
        lambda$Fn47 = new ModuleMethod(frameVar, 75, null, 0);
        lambda$Fn48 = new ModuleMethod(frameVar, 76, null, 0);
        lambda$Fn49 = new ModuleMethod(frameVar, 77, null, 0);
    }

    static Boolean lambda3() {
        return Boolean.FALSE;
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
        runtime.$instance.run();
        this.$Stdebug$Mnform$St = Boolean.FALSE;
        this.form$Mnenvironment = Environment.make(Lit0.toString());
        FString fStringStringAppend = strings.stringAppend(Lit0.toString(), "-global-vars");
        this.global$Mnvar$Mnenvironment = Environment.make(fStringStringAppend == null ? null : fStringStringAppend.toString());
        Setting_screen = null;
        this.form$Mnname$Mnsymbol = Lit0;
        this.events$Mnto$Mnregister = LList.Empty;
        this.components$Mnto$Mncreate = LList.Empty;
        this.global$Mnvars$Mnto$Mncreate = LList.Empty;
        this.form$Mndo$Mnafter$Mncreation = LList.Empty;
        runtime.$instance.run();
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(Lit3, Boolean.FALSE), $result);
        } else {
            addToGlobalVars(Lit3, lambda$Fn2);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            runtime.setAndCoerceProperty$Ex(Lit0, Lit4, Boolean.TRUE, Lit5);
            runtime.setAndCoerceProperty$Ex(Lit0, Lit6, "artificial_eyes_1_2", Lit7);
            runtime.setAndCoerceProperty$Ex(Lit0, Lit8, Lit9, Lit10);
            runtime.setAndCoerceProperty$Ex(Lit0, Lit11, Lit12, Lit10);
            runtime.setAndCoerceProperty$Ex(Lit0, Lit13, "unspecified", Lit7);
            runtime.setAndCoerceProperty$Ex(Lit0, Lit14, Boolean.TRUE, Lit5);
            runtime.setAndCoerceProperty$Ex(Lit0, Lit15, "Responsive", Lit7);
            runtime.setAndCoerceProperty$Ex(Lit0, Lit16, "Setting_screen", Lit7);
            Values.writeValues(runtime.setAndCoerceProperty$Ex(Lit0, Lit17, Boolean.FALSE, Lit5), $result);
        } else {
            addToFormDoAfterCreation(new Promise(lambda$Fn3));
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            runtime.addToCurrentFormEnvironment(Lit23, this.Setting_screen$Initialize);
        } else {
            addToFormEnvironment(Lit23, this.Setting_screen$Initialize);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Setting_screen", "Initialize");
        } else {
            addToEvents(Lit0, Lit24);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            runtime.addToCurrentFormEnvironment(Lit27, this.Setting_screen$PermissionGranted);
        } else {
            addToFormEnvironment(Lit27, this.Setting_screen$PermissionGranted);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Setting_screen", "PermissionGranted");
        } else {
            addToEvents(Lit0, Lit28);
        }
        this.HorizontalArrangement7 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit29, Lit30, Boolean.FALSE), $result);
        } else {
            addToComponents(Lit0, Lit31, Lit30, Boolean.FALSE);
        }
        this.HorizontalArrangement6 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            Values.writeValues(runtime.addComponentWithinRepl(Lit30, Lit32, Lit33, lambda$Fn4), $result);
        } else {
            addToComponents(Lit30, Lit38, Lit33, lambda$Fn5);
        }
        this.VerticalArrangement4 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            Values.writeValues(runtime.addComponentWithinRepl(Lit30, Lit39, Lit40, Boolean.FALSE), $result);
        } else {
            addToComponents(Lit30, Lit41, Lit40, Boolean.FALSE);
        }
        this.VerticalArrangement5 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            Values.writeValues(runtime.addComponentWithinRepl(Lit40, Lit42, Lit43, lambda$Fn6), $result);
        } else {
            addToComponents(Lit40, Lit44, Lit43, lambda$Fn7);
        }
        this.Back_BT = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            Values.writeValues(runtime.addComponentWithinRepl(Lit40, Lit45, Lit46, lambda$Fn8), $result);
        } else {
            addToComponents(Lit40, Lit49, Lit46, lambda$Fn9);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            runtime.addToCurrentFormEnvironment(Lit51, this.Back_BT$Click);
        } else {
            addToFormEnvironment(Lit51, this.Back_BT$Click);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Back_BT", "Click");
        } else {
            addToEvents(Lit46, Lit52);
        }
        this.HorizontalArrangement5 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit53, Lit54, lambda$Fn10), $result);
        } else {
            addToComponents(Lit0, Lit55, Lit54, lambda$Fn11);
        }
        this.HorizontalArrangement4 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            Values.writeValues(runtime.addComponentWithinRepl(Lit54, Lit56, Lit57, lambda$Fn12), $result);
        } else {
            addToComponents(Lit54, Lit58, Lit57, lambda$Fn13);
        }
        this.VerticalArrangement1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            Values.writeValues(runtime.addComponentWithinRepl(Lit54, Lit59, Lit60, Boolean.FALSE), $result);
        } else {
            addToComponents(Lit54, Lit61, Lit60, Boolean.FALSE);
        }
        this.VerticalArrangement2 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            Values.writeValues(runtime.addComponentWithinRepl(Lit60, Lit62, Lit63, lambda$Fn14), $result);
        } else {
            addToComponents(Lit60, Lit64, Lit63, lambda$Fn15);
        }
        this.f7Phn_cng_hin_ti = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            Values.writeValues(runtime.addComponentWithinRepl(Lit60, Lit65, Lit66, lambda$Fn16), $result);
        } else {
            addToComponents(Lit60, Lit70, Lit66, lambda$Fn17);
        }
        this.f1Chn_phn_cng_BT = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            Values.writeValues(runtime.addComponentWithinRepl(Lit60, Lit71, Lit72, lambda$Fn18), $result);
        } else {
            addToComponents(Lit60, Lit78, Lit72, lambda$Fn19);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            runtime.addToCurrentFormEnvironment(Lit83, this.f3Chn_phn_cng_BT$BeforePicking);
        } else {
            addToFormEnvironment(Lit83, this.f3Chn_phn_cng_BT$BeforePicking);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Chọn_phần_cứng_BT", "BeforePicking");
        } else {
            addToEvents(Lit72, Lit84);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            runtime.addToCurrentFormEnvironment(Lit90, this.f2Chn_phn_cng_BT$AfterPicking);
        } else {
            addToFormEnvironment(Lit90, this.f2Chn_phn_cng_BT$AfterPicking);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Chọn_phần_cứng_BT", "AfterPicking");
        } else {
            addToEvents(Lit72, Lit91);
        }
        this.VerticalArrangement3 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            Values.writeValues(runtime.addComponentWithinRepl(Lit60, Lit92, Lit93, lambda$Fn20), $result);
        } else {
            addToComponents(Lit60, Lit94, Lit93, lambda$Fn21);
        }
        this.f10st_hin_ti = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            Values.writeValues(runtime.addComponentWithinRepl(Lit60, Lit95, Lit96, lambda$Fn22), $result);
        } else {
            addToComponents(Lit60, Lit97, Lit96, lambda$Fn23);
        }
        this.f6Nhp_s_dt_TB = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            Values.writeValues(runtime.addComponentWithinRepl(Lit60, Lit98, Lit99, lambda$Fn24), $result);
        } else {
            addToComponents(Lit60, Lit104, Lit99, lambda$Fn25);
        }
        this.Button1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            Values.writeValues(runtime.addComponentWithinRepl(Lit60, Lit105, Lit106, lambda$Fn26), $result);
        } else {
            addToComponents(Lit60, Lit109, Lit106, lambda$Fn27);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            runtime.addToCurrentFormEnvironment(Lit121, this.Button1$Click);
        } else {
            addToFormEnvironment(Lit121, this.Button1$Click);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Button1", "Click");
        } else {
            addToEvents(Lit106, Lit52);
        }
        this.Logo_transparent = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            Values.writeValues(runtime.addComponentWithinRepl(Lit60, Lit122, Lit123, lambda$Fn28), $result);
        } else {
            addToComponents(Lit60, Lit126, Lit123, lambda$Fn29);
        }
        this.HorizontalArrangement1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit127, Lit128, lambda$Fn30), $result);
        } else {
            addToComponents(Lit0, Lit129, Lit128, lambda$Fn31);
        }
        this.HorizontalArrangement2 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            Values.writeValues(runtime.addComponentWithinRepl(Lit128, Lit130, Lit131, lambda$Fn32), $result);
        } else {
            addToComponents(Lit128, Lit133, Lit131, lambda$Fn33);
        }
        this.f4Lu_ci_t_BT = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            Values.writeValues(runtime.addComponentWithinRepl(Lit128, Lit134, Lit135, lambda$Fn34), $result);
        } else {
            addToComponents(Lit128, Lit140, Lit135, lambda$Fn35);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            runtime.addToCurrentFormEnvironment(Lit156, this.f5Lu_ci_t_BT$Click);
        } else {
            addToFormEnvironment(Lit156, this.f5Lu_ci_t_BT$Click);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Lưu_cài_đặt_BT", "Click");
        } else {
            addToEvents(Lit135, Lit52);
        }
        this.HorizontalArrangement3 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit157, Lit158, lambda$Fn38), $result);
        } else {
            addToComponents(Lit0, Lit159, Lit158, lambda$Fn39);
        }
        this.Notifier1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit160, Lit143, lambda$Fn40), $result);
        } else {
            addToComponents(Lit0, Lit162, Lit143, lambda$Fn41);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            runtime.addToCurrentFormEnvironment(Lit168, this.Notifier1$AfterChoosing);
        } else {
            addToFormEnvironment(Lit168, this.Notifier1$AfterChoosing);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Notifier1", "AfterChoosing");
        } else {
            addToEvents(Lit143, Lit169);
        }
        this.f8ST_DATA = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit170, Lit18, lambda$Fn42), $result);
        } else {
            addToComponents(Lit0, Lit173, Lit18, lambda$Fn43);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            runtime.addToCurrentFormEnvironment(Lit179, this.f9ST_DATA$GotText);
        } else {
            addToFormEnvironment(Lit179, this.f9ST_DATA$GotText);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "SĐT_DATA", "GotText");
        } else {
            addToEvents(Lit18, Lit180);
        }
        this.BluetoothClient1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit181, Lit80, Boolean.FALSE), $result);
        } else {
            addToComponents(Lit0, Lit182, Lit80, Boolean.FALSE);
        }
        this.Device_DATA = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit183, Lit21, lambda$Fn44), $result);
        } else {
            addToComponents(Lit0, Lit184, Lit21, lambda$Fn45);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            runtime.addToCurrentFormEnvironment(Lit188, this.Device_DATA$GotText);
        } else {
            addToFormEnvironment(Lit188, this.Device_DATA$GotText);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Device_DATA", "GotText");
        } else {
            addToEvents(Lit21, Lit180);
        }
        this.PhoneCall1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit189, Lit117, Boolean.FALSE), $result);
        } else {
            addToComponents(Lit0, Lit190, Lit117, Boolean.FALSE);
        }
        this.Texting1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit191, Lit119, lambda$Fn46), $result);
        } else {
            addToComponents(Lit0, Lit194, Lit119, lambda$Fn47);
        }
        this.Clock1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != Boolean.FALSE) {
            Values.writeValues(runtime.addComponentWithinRepl(Lit0, Lit195, Lit196, lambda$Fn48), $result);
        } else {
            addToComponents(Lit0, Lit200, Lit196, lambda$Fn49);
        }
        runtime.initRuntime();
    }

    static Object lambda4() {
        runtime.setAndCoerceProperty$Ex(Lit0, Lit4, Boolean.TRUE, Lit5);
        runtime.setAndCoerceProperty$Ex(Lit0, Lit6, "artificial_eyes_1_2", Lit7);
        runtime.setAndCoerceProperty$Ex(Lit0, Lit8, Lit9, Lit10);
        runtime.setAndCoerceProperty$Ex(Lit0, Lit11, Lit12, Lit10);
        runtime.setAndCoerceProperty$Ex(Lit0, Lit13, "unspecified", Lit7);
        runtime.setAndCoerceProperty$Ex(Lit0, Lit14, Boolean.TRUE, Lit5);
        runtime.setAndCoerceProperty$Ex(Lit0, Lit15, "Responsive", Lit7);
        runtime.setAndCoerceProperty$Ex(Lit0, Lit16, "Setting_screen", Lit7);
        return runtime.setAndCoerceProperty$Ex(Lit0, Lit17, Boolean.FALSE, Lit5);
    }

    public Object Setting_screen$Initialize() throws Throwable {
        runtime.setThisForm();
        ensureFileExists("SĐT.txt");
        ensureFileExists("DEVICE.txt");
        String phone = readText("SĐT.txt");
        String device = readText("DEVICE.txt");
        runtime.setAndCoerceProperty$Ex(Lit99, Lit69, phone, Lit7);
        runtime.setAndCoerceProperty$Ex(Lit96, Lit69, "Số điện thoại khẩn cấp: " + phone, Lit7);
        runtime.setAndCoerceProperty$Ex(Lit66, Lit69, "Phần cứng hiện tại: " + device, Lit7);
        return runtime.addGlobalVarToCurrentFormEnvironment(Lit3, Boolean.valueOf(isValidDevice(device)));
    }

    public Object Setting_screen$PermissionGranted(Object $permissionName) {
        Object $permissionName2 = runtime.sanitizeComponentData($permissionName);
        runtime.setThisForm();
        return runtime.callYailPrimitive(runtime.yail$Mnequal$Qu, LList.list2($permissionName2 instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit25), " is not bound in the current context"), "Unbound Variable") : $permissionName2, "SEND_SMS"), Lit26, "=") != Boolean.FALSE ? runtime.callYailPrimitive(runtime.close$Mnapplication, LList.Empty, LList.Empty, "close application") : Values.empty;
    }

    static Object lambda5() {
        runtime.setAndCoerceProperty$Ex(Lit33, Lit34, Lit35, Lit10);
        return runtime.setAndCoerceProperty$Ex(Lit33, Lit36, Lit37, Lit10);
    }

    static Object lambda6() {
        runtime.setAndCoerceProperty$Ex(Lit33, Lit34, Lit35, Lit10);
        return runtime.setAndCoerceProperty$Ex(Lit33, Lit36, Lit37, Lit10);
    }

    static Object lambda7() {
        return runtime.setAndCoerceProperty$Ex(Lit43, Lit34, Lit37, Lit10);
    }

    static Object lambda8() {
        return runtime.setAndCoerceProperty$Ex(Lit43, Lit34, Lit37, Lit10);
    }

    static Object lambda10() {
        runtime.setAndCoerceProperty$Ex(Lit46, Lit34, Lit47, Lit10);
        runtime.setAndCoerceProperty$Ex(Lit46, Lit48, "back_BT.png", Lit7);
        return runtime.setAndCoerceProperty$Ex(Lit46, Lit36, Lit47, Lit10);
    }

    static Object lambda9() {
        runtime.setAndCoerceProperty$Ex(Lit46, Lit34, Lit47, Lit10);
        runtime.setAndCoerceProperty$Ex(Lit46, Lit48, "back_BT.png", Lit7);
        return runtime.setAndCoerceProperty$Ex(Lit46, Lit36, Lit47, Lit10);
    }

    public Object Back_BT$Click() {
        runtime.setThisForm();
        return runtime.callYailPrimitive(runtime.open$Mnanother$Mnscreen, LList.list1("Screen1"), Lit50, "open another screen");
    }

    static Object lambda11() {
        return runtime.setAndCoerceProperty$Ex(Lit54, Lit34, Lit35, Lit10);
    }

    static Object lambda12() {
        return runtime.setAndCoerceProperty$Ex(Lit54, Lit34, Lit35, Lit10);
    }

    static Object lambda13() {
        return runtime.setAndCoerceProperty$Ex(Lit57, Lit36, Lit37, Lit10);
    }

    static Object lambda14() {
        return runtime.setAndCoerceProperty$Ex(Lit57, Lit36, Lit37, Lit10);
    }

    static Object lambda15() {
        return runtime.setAndCoerceProperty$Ex(Lit63, Lit34, Lit37, Lit10);
    }

    static Object lambda16() {
        return runtime.setAndCoerceProperty$Ex(Lit63, Lit34, Lit37, Lit10);
    }

    static Object lambda17() {
        runtime.setAndCoerceProperty$Ex(Lit66, Lit67, Lit68, Lit10);
        return runtime.setAndCoerceProperty$Ex(Lit66, Lit69, "Phần cứng hiện tại: ", Lit7);
    }

    static Object lambda18() {
        runtime.setAndCoerceProperty$Ex(Lit66, Lit67, Lit68, Lit10);
        return runtime.setAndCoerceProperty$Ex(Lit66, Lit69, "Phần cứng hiện tại: ", Lit7);
    }

    static Object lambda19() {
        runtime.setAndCoerceProperty$Ex(Lit72, Lit73, Lit74, Lit10);
        runtime.setAndCoerceProperty$Ex(Lit72, Lit67, Lit75, Lit10);
        runtime.setAndCoerceProperty$Ex(Lit72, Lit69, "Chọn phần cứng", Lit7);
        return runtime.setAndCoerceProperty$Ex(Lit72, Lit76, Lit77, Lit10);
    }

    static Object lambda20() {
        runtime.setAndCoerceProperty$Ex(Lit72, Lit73, Lit74, Lit10);
        runtime.setAndCoerceProperty$Ex(Lit72, Lit67, Lit75, Lit10);
        runtime.setAndCoerceProperty$Ex(Lit72, Lit69, "Chọn phần cứng", Lit7);
        return runtime.setAndCoerceProperty$Ex(Lit72, Lit76, Lit77, Lit10);
    }

    /* JADX INFO: renamed from: Chọn_phần_cứng_BT$BeforePicking, reason: contains not printable characters */
    public Object m30Chn_phn_cng_BT$BeforePicking() {
        runtime.setThisForm();
        return runtime.setAndCoerceProperty$Ex(Lit72, Lit79, runtime.get$Mnproperty.apply2(Lit80, Lit81), Lit82);
    }

    /* JADX INFO: renamed from: Chọn_phần_cứng_BT$AfterPicking, reason: contains not printable characters */
    public Object m29Chn_phn_cng_BT$AfterPicking() throws Throwable {
        runtime.setThisForm();
        String selectedDevice = String.valueOf(runtime.get$Mnproperty.apply2(Lit72, Lit86));
        if (!isValidDevice(selectedDevice)) {
            return Values.empty;
        }
        writeText("DEVICE.txt", selectedDevice);
        return runtime.addGlobalVarToCurrentFormEnvironment(Lit3, Boolean.TRUE);
    }

    static Object lambda21() {
        return runtime.setAndCoerceProperty$Ex(Lit93, Lit34, Lit68, Lit10);
    }

    static Object lambda22() {
        return runtime.setAndCoerceProperty$Ex(Lit93, Lit34, Lit68, Lit10);
    }

    static Object lambda23() {
        runtime.setAndCoerceProperty$Ex(Lit96, Lit67, Lit68, Lit10);
        return runtime.setAndCoerceProperty$Ex(Lit96, Lit69, "Số điện thoại khẩn cấp: ", Lit7);
    }

    static Object lambda24() {
        runtime.setAndCoerceProperty$Ex(Lit96, Lit67, Lit68, Lit10);
        return runtime.setAndCoerceProperty$Ex(Lit96, Lit69, "Số điện thoại khẩn cấp: ", Lit7);
    }

    static Object lambda25() {
        runtime.setAndCoerceProperty$Ex(Lit99, Lit67, Lit100, Lit10);
        runtime.setAndCoerceProperty$Ex(Lit99, Lit101, "Nhập số điện thoại", Lit7);
        runtime.setAndCoerceProperty$Ex(Lit99, Lit102, Boolean.TRUE, Lit5);
        return runtime.setAndCoerceProperty$Ex(Lit99, Lit36, Lit103, Lit10);
    }

    static Object lambda26() {
        runtime.setAndCoerceProperty$Ex(Lit99, Lit67, Lit100, Lit10);
        runtime.setAndCoerceProperty$Ex(Lit99, Lit101, "Nhập số điện thoại", Lit7);
        runtime.setAndCoerceProperty$Ex(Lit99, Lit102, Boolean.TRUE, Lit5);
        return runtime.setAndCoerceProperty$Ex(Lit99, Lit36, Lit103, Lit10);
    }

    static Object lambda27() {
        runtime.setAndCoerceProperty$Ex(Lit106, Lit73, Lit107, Lit10);
        runtime.setAndCoerceProperty$Ex(Lit106, Lit69, "Bấm vào đây để cho phép quyền", Lit7);
        return runtime.setAndCoerceProperty$Ex(Lit106, Lit76, Lit108, Lit10);
    }

    static Object lambda28() {
        runtime.setAndCoerceProperty$Ex(Lit106, Lit73, Lit107, Lit10);
        runtime.setAndCoerceProperty$Ex(Lit106, Lit69, "Bấm vào đây để cho phép quyền", Lit7);
        return runtime.setAndCoerceProperty$Ex(Lit106, Lit76, Lit108, Lit10);
    }

    public Object Button1$Click() throws Throwable {
        runtime.setThisForm();
        runtime.callComponentMethod(Lit0, Lit110, LList.list1(Permission.Camera), Lit111);
        runtime.callComponentMethod(Lit0, Lit110, LList.list1(Permission.ReadMediaImages), Lit112);
        runtime.callComponentMethod(Lit0, Lit110, LList.list1(Permission.ReadExternalStorage), Lit113);
        runtime.callComponentMethod(Lit0, Lit110, LList.list1(Permission.WriteExternalStorage), Lit114);
        runtime.callComponentMethod(Lit0, Lit110, LList.list1(Permission.BluetoothConnect), Lit115);
        runtime.callComponentMethod(Lit0, Lit110, LList.list1(Permission.BluetoothScan), Lit116);
        runtime.callComponentMethod(Lit117, Lit118, LList.Empty, LList.Empty);
        return runtime.callComponentMethod(Lit119, Lit120, LList.Empty, LList.Empty);
    }

    static Object lambda29() {
        runtime.setAndCoerceProperty$Ex(Lit123, Lit34, Lit124, Lit10);
        return runtime.setAndCoerceProperty$Ex(Lit123, Lit125, "Logotransparent.png", Lit7);
    }

    static Object lambda30() {
        runtime.setAndCoerceProperty$Ex(Lit123, Lit34, Lit124, Lit10);
        return runtime.setAndCoerceProperty$Ex(Lit123, Lit125, "Logotransparent.png", Lit7);
    }

    static Object lambda31() {
        return runtime.setAndCoerceProperty$Ex(Lit128, Lit36, Lit35, Lit10);
    }

    static Object lambda32() {
        return runtime.setAndCoerceProperty$Ex(Lit128, Lit36, Lit35, Lit10);
    }

    static Object lambda33() {
        runtime.setAndCoerceProperty$Ex(Lit131, Lit34, Lit35, Lit10);
        return runtime.setAndCoerceProperty$Ex(Lit131, Lit36, Lit132, Lit10);
    }

    static Object lambda34() {
        runtime.setAndCoerceProperty$Ex(Lit131, Lit34, Lit35, Lit10);
        return runtime.setAndCoerceProperty$Ex(Lit131, Lit36, Lit132, Lit10);
    }

    static Object lambda35() {
        runtime.setAndCoerceProperty$Ex(Lit135, Lit73, Lit136, Lit10);
        runtime.setAndCoerceProperty$Ex(Lit135, Lit67, Lit137, Lit10);
        runtime.setAndCoerceProperty$Ex(Lit135, Lit34, Lit138, Lit10);
        runtime.setAndCoerceProperty$Ex(Lit135, Lit69, "Lưu cài đặt", Lit7);
        return runtime.setAndCoerceProperty$Ex(Lit135, Lit76, Lit139, Lit10);
    }

    static Object lambda36() {
        runtime.setAndCoerceProperty$Ex(Lit135, Lit73, Lit136, Lit10);
        runtime.setAndCoerceProperty$Ex(Lit135, Lit67, Lit137, Lit10);
        runtime.setAndCoerceProperty$Ex(Lit135, Lit34, Lit138, Lit10);
        runtime.setAndCoerceProperty$Ex(Lit135, Lit69, "Lưu cài đặt", Lit7);
        return runtime.setAndCoerceProperty$Ex(Lit135, Lit76, Lit139, Lit10);
    }

    /* JADX INFO: renamed from: Lưu_cài_đặt_BT$Click, reason: contains not printable characters */
    public Object m31Lu_ci_t_BT$Click() throws Throwable {
        SimpleSymbol simpleSymbol;
        SimpleSymbol simpleSymbol2;
        Pair pairList1;
        PairWithPosition pairWithPosition;
        runtime.setThisForm();
        String phone = String.valueOf(runtime.get$Mnproperty.apply2(Lit99, Lit69));
        if (!isValidPhone(phone)) {
            simpleSymbol = Lit143;
            simpleSymbol2 = Lit144;
            pairList1 = LList.list3("Vui lòng nhập số điện thoại hợp lệ", "Chưa nhập số điện thoại!", "Tôi sẽ nhập lại số điện thoại");
            pairWithPosition = Lit145;
        } else if (runtime.processAndDelayed$V(new Object[]{lambda$Fn36, lambda$Fn37}) != Boolean.FALSE) {
            writeText("SĐT.txt", phone);
            runtime.callComponentMethod(Lit143, Lit144, LList.list3("Cài đặt của bạn đã được lưu", "Đã lưu cài đặt!", "OK!"), Lit150);
            runtime.callComponentMethod(Lit18, Lit19, LList.list1("SĐT.txt"), Lit151);
            simpleSymbol = Lit21;
            simpleSymbol2 = Lit19;
            pairList1 = LList.list1("Device.txt");
            pairWithPosition = Lit152;
        } else {
            if (runtime.callYailPrimitive(runtime.yail$Mnequal$Qu, LList.list2(runtime.lookupGlobalVarInCurrentFormEnvironment(Lit3, runtime.$Stthe$Mnnull$Mnvalue$St), Boolean.FALSE), Lit153, "=") == Boolean.FALSE) {
                return Values.empty;
            }
            simpleSymbol = Lit143;
            simpleSymbol2 = Lit154;
            pairList1 = LList.list1("Bạn chưa chọn phần cứng!");
            LList.chain4(pairList1, "Chưa chọn phần cứng!", "Tôi sẽ chọn phần cứng.", "Sử dụng không phần cứng", Boolean.FALSE);
            pairWithPosition = Lit155;
        }
        return runtime.callComponentMethod(simpleSymbol, simpleSymbol2, pairList1, pairWithPosition);
    }

    static Object lambda37() {
        return runtime.callYailPrimitive(runtime.yail$Mnequal$Qu, LList.list2(runtime.callYailPrimitive(strings.string$Mnlength, LList.list1(runtime.get$Mnproperty.apply2(Lit99, Lit69)), Lit146, PropertyTypeConstants.PROPERTY_TYPE_LENGTH), Lit37), Lit147, "=");
    }

    static Object lambda38() {
        return runtime.callYailPrimitive(runtime.yail$Mnequal$Qu, LList.list2(runtime.lookupGlobalVarInCurrentFormEnvironment(Lit3, runtime.$Stthe$Mnnull$Mnvalue$St), Boolean.TRUE), Lit148, "=");
    }

    static Object lambda39() {
        return runtime.setAndCoerceProperty$Ex(Lit158, Lit34, Lit37, Lit10);
    }

    static Object lambda40() {
        return runtime.setAndCoerceProperty$Ex(Lit158, Lit34, Lit37, Lit10);
    }

    static Object lambda41() {
        return runtime.setAndCoerceProperty$Ex(Lit143, Lit73, Lit161, Lit10);
    }

    static Object lambda42() {
        return runtime.setAndCoerceProperty$Ex(Lit143, Lit73, Lit161, Lit10);
    }

    public Object Notifier1$AfterChoosing(Object $choice) throws Throwable {
        Object $choice2 = runtime.sanitizeComponentData($choice);
        runtime.setThisForm();
        if (runtime.callYailPrimitive(runtime.yail$Mnequal$Qu, LList.list2($choice2 instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit163), " is not bound in the current context"), "Unbound Variable") : $choice2, "Sử dụng không phần cứng"), Lit164, "=") == Boolean.FALSE) {
            return Values.empty;
        }
        runtime.addGlobalVarToCurrentFormEnvironment(Lit3, Boolean.FALSE);
        String phone = String.valueOf(runtime.get$Mnproperty.apply2(Lit99, Lit69));
        if (isValidPhone(phone)) {
            writeText("SĐT.txt", phone);
        }
        runtime.callComponentMethod(Lit143, Lit144, LList.list3("Cài đặt của bạn đã được lưu", "Đã lưu cài đặt!", "OK!"), Lit166);
        return Values.empty;
    }

    private void ensureFileExists(String fileName) {
        try {
            if (!getFileStreamPath(fileName).exists()) {
                writeText(fileName, "");
            }
        } catch (Exception e) {
            Log.e(TAG, "ensureFileExists fail: " + fileName, e);
        }
    }

    private void writeText(String fileName, String value) {
        try (FileOutputStream fos = openFileOutput(fileName, MODE_PRIVATE)) {
            fos.write((value == null ? "" : value.trim()).getBytes("UTF-8"));
        } catch (Exception e) {
            Log.e(TAG, "writeText fail: " + fileName, e);
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

    private boolean isValidPhone(String phone) {
        return phone != null && phone.trim().matches("^\\+?[0-9]{9,15}$");
    }

    private boolean isValidDevice(String device) {
        return device != null && device.trim().matches("^[A-Za-z0-9 _\\-.]{3,}$");
    }

    static Object lambda43() {
        runtime.setAndCoerceProperty$Ex(Lit18, Lit171, Boolean.TRUE, Lit5);
        return runtime.setAndCoerceProperty$Ex(Lit18, Lit172, Boolean.TRUE, Lit5);
    }

    static Object lambda44() {
        runtime.setAndCoerceProperty$Ex(Lit18, Lit171, Boolean.TRUE, Lit5);
        return runtime.setAndCoerceProperty$Ex(Lit18, Lit172, Boolean.TRUE, Lit5);
    }

    /* JADX INFO: renamed from: SĐT_DATA$GotText, reason: contains not printable characters */
    public Object m32ST_DATA$GotText(Object $text) {
        Object $text2 = runtime.sanitizeComponentData($text);
        runtime.setThisForm();
        if (runtime.callYailPrimitive(Scheme.numGrt, LList.list2(runtime.callYailPrimitive(strings.string$Mnlength, LList.list1($text2 instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit174), " is not bound in the current context"), "Unbound Variable") : $text2), Lit175, PropertyTypeConstants.PROPERTY_TYPE_LENGTH), Lit176), Lit177, ">") == Boolean.FALSE) {
            return Values.empty;
        }
        runtime.setAndCoerceProperty$Ex(Lit99, Lit69, $text2 instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit174), " is not bound in the current context"), "Unbound Variable") : $text2, Lit7);
        return runtime.setAndCoerceProperty$Ex(Lit96, Lit69, runtime.callYailPrimitive(strings.string$Mnappend, LList.list2("Số điện thoại khẩn cấp: ", $text2 instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit174), " is not bound in the current context"), "Unbound Variable") : $text2), Lit178, "join"), Lit7);
    }

    static Object lambda45() {
        runtime.setAndCoerceProperty$Ex(Lit21, Lit171, Boolean.TRUE, Lit5);
        return runtime.setAndCoerceProperty$Ex(Lit21, Lit172, Boolean.TRUE, Lit5);
    }

    static Object lambda46() {
        runtime.setAndCoerceProperty$Ex(Lit21, Lit171, Boolean.TRUE, Lit5);
        return runtime.setAndCoerceProperty$Ex(Lit21, Lit172, Boolean.TRUE, Lit5);
    }

    public Object Device_DATA$GotText(Object $text) {
        SimpleSymbol simpleSymbol;
        Boolean bool;
        Object $text2 = runtime.sanitizeComponentData($text);
        runtime.setThisForm();
        if (runtime.callYailPrimitive(Scheme.numGrt, LList.list2(runtime.callYailPrimitive(strings.string$Mnlength, LList.list1($text2 instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit174), " is not bound in the current context"), "Unbound Variable") : $text2), Lit185, PropertyTypeConstants.PROPERTY_TYPE_LENGTH), Lit176), Lit186, ">") != Boolean.FALSE) {
            runtime.setAndCoerceProperty$Ex(Lit66, Lit69, runtime.callYailPrimitive(strings.string$Mnappend, LList.list2("Phần cứng hiện tại: ", $text2 instanceof Package ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Lit174), " is not bound in the current context"), "Unbound Variable") : $text2), Lit187, "join"), Lit7);
            simpleSymbol = Lit3;
            bool = Boolean.TRUE;
        } else {
            simpleSymbol = Lit3;
            bool = Boolean.FALSE;
        }
        return runtime.addGlobalVarToCurrentFormEnvironment(simpleSymbol, bool);
    }

    static Object lambda47() {
        return runtime.setAndCoerceProperty$Ex(Lit119, Lit192, Lit193, Lit10);
    }

    static Object lambda48() {
        return runtime.setAndCoerceProperty$Ex(Lit119, Lit192, Lit193, Lit10);
    }

    static Object lambda49() {
        runtime.setAndCoerceProperty$Ex(Lit196, Lit197, Boolean.FALSE, Lit5);
        runtime.setAndCoerceProperty$Ex(Lit196, Lit198, Boolean.FALSE, Lit5);
        return runtime.setAndCoerceProperty$Ex(Lit196, Lit199, Lit176, Lit10);
    }

    static Object lambda50() {
        runtime.setAndCoerceProperty$Ex(Lit196, Lit197, Boolean.FALSE, Lit5);
        runtime.setAndCoerceProperty$Ex(Lit196, Lit198, Boolean.FALSE, Lit5);
        return runtime.setAndCoerceProperty$Ex(Lit196, Lit199, Lit176, Lit10);
    }

    /* JADX INFO: compiled from: Setting_screen.yail */
    public class frame extends ModuleBody {
        Setting_screen $main;

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            switch (moduleMethod.selector) {
                case 1:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 2:
                    if (!(obj instanceof Setting_screen)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 3:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 5:
                    if (!(obj instanceof Symbol)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 7:
                    if (!(obj instanceof Symbol)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
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
                case 14:
                    if (!(obj instanceof Setting_screen)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 23:
                case 67:
                case 70:
                case 73:
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
                case 4:
                    if (!(obj instanceof Symbol)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 5:
                    if (!(obj instanceof Symbol)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 8:
                    if (!(obj instanceof Symbol)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 9:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 11:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 17:
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
                case 10:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.value3 = obj3;
                    callContext.value4 = obj4;
                    callContext.proc = moduleMethod;
                    callContext.pc = 4;
                    return 0;
                case 15:
                    if (!(obj instanceof Setting_screen)) {
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
                case 16:
                    if (!(obj instanceof Setting_screen)) {
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
                default:
                    return super.match4(moduleMethod, obj, obj2, obj3, obj4, callContext);
            }
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            switch (moduleMethod.selector) {
                case 1:
                    return this.$main.getSimpleName(obj);
                case 2:
                    try {
                        this.$main.onCreate((Bundle) obj);
                        return Values.empty;
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "onCreate", 1, obj);
                    }
                case 3:
                    this.$main.androidLogForm(obj);
                    return Values.empty;
                case 5:
                    try {
                        return this.$main.lookupInFormEnvironment((Symbol) obj);
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "lookup-in-form-environment", 1, obj);
                    }
                case 7:
                    try {
                        return this.$main.isBoundInFormEnvironment((Symbol) obj) ? Boolean.TRUE : Boolean.FALSE;
                    } catch (ClassCastException e3) {
                        throw new WrongType(e3, "is-bound-in-form-environment", 1, obj);
                    }
                case 12:
                    this.$main.addToFormDoAfterCreation(obj);
                    return Values.empty;
                case 13:
                    this.$main.sendError(obj);
                    return Values.empty;
                case 14:
                    return this.$main.processException(obj);
                case 23:
                    return this.$main.Setting_screen$PermissionGranted(obj);
                case 67:
                    return this.$main.Notifier1$AfterChoosing(obj);
                case 70:
                    return this.$main.m32ST_DATA$GotText(obj);
                case 73:
                    return this.$main.Device_DATA$GotText(obj);
                default:
                    return super.apply1(moduleMethod, obj);
            }
        }

        @Override // gnu.expr.ModuleBody
        public Object apply4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4) throws Throwable {
            switch (moduleMethod.selector) {
                case 10:
                    this.$main.addToComponents(obj, obj2, obj3, obj4);
                    return Values.empty;
                case 15:
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
                case 16:
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
                default:
                    return super.apply4(moduleMethod, obj, obj2, obj3, obj4);
            }
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            switch (moduleMethod.selector) {
                case 4:
                    try {
                        this.$main.addToFormEnvironment((Symbol) obj, obj2);
                        return Values.empty;
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "add-to-form-environment", 1, obj);
                    }
                case 5:
                    try {
                        return this.$main.lookupInFormEnvironment((Symbol) obj, obj2);
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "lookup-in-form-environment", 1, obj);
                    }
                case 8:
                    try {
                        this.$main.addToGlobalVarEnvironment((Symbol) obj, obj2);
                        return Values.empty;
                    } catch (ClassCastException e3) {
                        throw new WrongType(e3, "add-to-global-var-environment", 1, obj);
                    }
                case 9:
                    this.$main.addToEvents(obj, obj2);
                    return Values.empty;
                case 11:
                    this.$main.addToGlobalVars(obj, obj2);
                    return Values.empty;
                case 17:
                    return this.$main.lookupHandler(obj, obj2);
                default:
                    return super.apply2(moduleMethod, obj, obj2);
            }
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) throws Throwable {
            switch (moduleMethod.selector) {
                case 18:
                    return Setting_screen.lambda2();
                case 19:
                    this.$main.$define();
                    return Values.empty;
                case 20:
                    return Setting_screen.lambda3();
                case 21:
                    return Setting_screen.lambda4();
                case 22:
                    return this.$main.Setting_screen$Initialize();
                case 23:
                case 67:
                case 70:
                case 73:
                default:
                    return super.apply0(moduleMethod);
                case 24:
                    return Setting_screen.lambda5();
                case 25:
                    return Setting_screen.lambda6();
                case 26:
                    return Setting_screen.lambda7();
                case 27:
                    return Setting_screen.lambda8();
                case 28:
                    return Setting_screen.lambda9();
                case 29:
                    return Setting_screen.lambda10();
                case 30:
                    return this.$main.Back_BT$Click();
                case 31:
                    return Setting_screen.lambda11();
                case 32:
                    return Setting_screen.lambda12();
                case 33:
                    return Setting_screen.lambda13();
                case 34:
                    return Setting_screen.lambda14();
                case 35:
                    return Setting_screen.lambda15();
                case 36:
                    return Setting_screen.lambda16();
                case 37:
                    return Setting_screen.lambda17();
                case 38:
                    return Setting_screen.lambda18();
                case 39:
                    return Setting_screen.lambda19();
                case 40:
                    return Setting_screen.lambda20();
                case 41:
                    return this.$main.m30Chn_phn_cng_BT$BeforePicking();
                case 42:
                    return this.$main.m29Chn_phn_cng_BT$AfterPicking();
                case 43:
                    return Setting_screen.lambda21();
                case 44:
                    return Setting_screen.lambda22();
                case 45:
                    return Setting_screen.lambda23();
                case 46:
                    return Setting_screen.lambda24();
                case 47:
                    return Setting_screen.lambda25();
                case 48:
                    return Setting_screen.lambda26();
                case 49:
                    return Setting_screen.lambda27();
                case 50:
                    return Setting_screen.lambda28();
                case 51:
                    return this.$main.Button1$Click();
                case 52:
                    return Setting_screen.lambda29();
                case 53:
                    return Setting_screen.lambda30();
                case 54:
                    return Setting_screen.lambda31();
                case 55:
                    return Setting_screen.lambda32();
                case 56:
                    return Setting_screen.lambda33();
                case 57:
                    return Setting_screen.lambda34();
                case 58:
                    return Setting_screen.lambda35();
                case 59:
                    return Setting_screen.lambda36();
                case 60:
                    return Setting_screen.lambda37();
                case 61:
                    return Setting_screen.lambda38();
                case 62:
                    return this.$main.m31Lu_ci_t_BT$Click();
                case 63:
                    return Setting_screen.lambda39();
                case 64:
                    return Setting_screen.lambda40();
                case 65:
                    return Setting_screen.lambda41();
                case 66:
                    return Setting_screen.lambda42();
                case 68:
                    return Setting_screen.lambda43();
                case 69:
                    return Setting_screen.lambda44();
                case 71:
                    return Setting_screen.lambda45();
                case 72:
                    return Setting_screen.lambda46();
                case 74:
                    return Setting_screen.lambda47();
                case 75:
                    return Setting_screen.lambda48();
                case 76:
                    return Setting_screen.lambda49();
                case 77:
                    return Setting_screen.lambda50();
            }
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            switch (moduleMethod.selector) {
                case 18:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 19:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 20:
                case 21:
                case 22:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                case 50:
                case 51:
                case 52:
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
                case 68:
                case 69:
                case 71:
                case 72:
                case 74:
                case 75:
                case 76:
                case 77:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 23:
                case 67:
                case 70:
                case 73:
                default:
                    return super.match0(moduleMethod, callContext);
            }
        }
    }

    public String getSimpleName(Object object) {
        return object.getClass().getSimpleName();
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
        Setting_screen = this;
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
