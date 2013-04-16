.class public Lcom/android/settings/wifi/WifiSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSettings$Scanner;,
        Lcom/android/settings/wifi/WifiSettings$Multimap;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final WIFI_CONNECT_THRESHOLD:I

.field private static final WIFI_ERRORCODE:Z

.field private static final WIFI_HIGHMOBILITY:I

.field public static cancel_network:I

.field public static edit_network:I

.field public static forget_network:I

.field public static mInOffloadDialog:Z

.field public static mManageNetworkConnected:I

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field public static mStartWith:I

.field public static mWpsInProgress:Z

.field public static manageNetwork:Z

.field public static vzwEditFlag:Z

.field public static vzwViewFlag:Z


# instance fields
.field private final ERROR_DIALOG_DURATION_TIME:I

.field private WIFISCAN_OUTDATED_TIME_THRESHOLD:I

.field private isOOBE:Z

.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mActivity:Landroid/app/Activity;

.field private mAddNetworkItem:Landroid/preference/Preference;

.field mAddNetworkMenuItem:Landroid/view/MenuItem;

.field mAdvancedMenuItem:Landroid/view/MenuItem;

.field private mAutoFinishOnConnection:Z

.field private mCWConnectToNw:I

.field private mCWPendingOperation:I

.field private mChannel:Landroid/net/wifi/WifiManager$Channel;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field public mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mDlgEdit:Z

.field private mDurationDialogHandler:Landroid/os/Handler;

.field mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEapMethod:Ljava/lang/String;

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableNextOnConnection:Z

.field private mErrorApInfo:Landroid/net/wifi/WifiInfo;

.field private mErrorDialog:Landroid/app/AlertDialog;

.field private mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

.field private mErrorDialogRunnable:Ljava/lang/Runnable;

.field private mErrorDialogStopScan:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mFirst5GScanFlag:Z

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mIgnoreConnectedMsg:Z

.field private mInManageNetwork:Z

.field private mInPickerActivity:Z

.field private mInPickerDialog:Z

.field private mInSetupWizardWifiScreen:Z

.field private mKeyStoreNetworkId:I

.field private mLastCWErrorReason:I

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field public mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

.field mP2pMenuItem:Landroid/view/MenuItem;

.field private mP2pSupported:Z

.field private mProgressCategory:Lcom/android/settings/ProgressCategory;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRetryPopupFlag:Z

.field private mRetryPopupRequestId:I

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field mScanMenuItem:Landroid/view/MenuItem;

.field private final mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

.field private mSccDiffDialog:Landroid/app/AlertDialog;

.field private mSccDiffDialogRunnable:Ljava/lang/Runnable;

.field private mScrollTimer:J

.field private mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mSetupWizardMode:Z

.field private mSetupWizardWifiScreen:Lcom/android/settings/wifi/SetupWizardWifiScreen;

.field private mWatchdogDialog:Landroid/app/AlertDialog;

.field private mWifiDialogStyle:I

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsDialog:Landroid/app/AlertDialog;

.field rememberedAccessPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 158
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    .line 292
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 350
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableThresholdDuringConnection"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings/wifi/WifiSettings;->WIFI_CONNECT_THRESHOLD:I

    .line 351
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableHighMobilityDisabled"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings/wifi/WifiSettings;->WIFI_HIGHMOBILITY:I

    .line 352
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableDetailEapErrorCodesAndState"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->WIFI_ERRORCODE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 367
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 223
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 225
    iput v3, p0, Lcom/android/settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 230
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    .line 251
    const v0, 0x493e0

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->WIFISCAN_OUTDATED_TIME_THRESHOLD:I

    .line 255
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    .line 256
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mActivity:Landroid/app/Activity;

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->rememberedAccessPoints:Ljava/util/List;

    .line 289
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EapMethodSetting"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEapMethod:Ljava/lang/String;

    .line 293
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 299
    const/16 v0, 0x7530

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->ERROR_DIALOG_DURATION_TIME:I

    .line 308
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 334
    iput v3, p0, Lcom/android/settings/wifi/WifiSettings;->mCWPendingOperation:I

    .line 335
    iput v3, p0, Lcom/android/settings/wifi/WifiSettings;->mCWConnectToNw:I

    .line 346
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    .line 355
    iput v3, p0, Lcom/android/settings/wifi/WifiSettings;->mRetryPopupRequestId:I

    .line 2730
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$23;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$23;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 2768
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$24;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$24;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 368
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 369
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEapMethod:Ljava/lang/String;

    const-string v1, "AKA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SHOW_EAP_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$1;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 408
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/wifi/WifiSettings$Scanner;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    .line 410
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    .line 417
    return-void
.end method

.method private CWHandleCommand(II)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2986
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2987
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2988
    packed-switch p1, :pswitch_data_0

    .line 3010
    :cond_0
    :goto_0
    :pswitch_0
    iput p1, v0, Landroid/os/Message;->what:I

    .line 3011
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3012
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 3014
    return v0

    .line 2990
    :pswitch_1
    const-string v2, "netId"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2991
    const-string v2, "disableOthers"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2995
    :pswitch_2
    const-string v2, "bEnable"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2999
    :pswitch_3
    iget v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLastCWErrorReason:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    .line 3000
    const-string v2, "nRetryMethod"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 3001
    :cond_1
    iget v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLastCWErrorReason:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 3002
    const-string v2, "nRetryMethod"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2988
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiSettings;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/WifiSettings;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->removeDialogTimer(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/WifiSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/WifiSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/WifiSettings;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialogRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/WifiSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/settings/wifi/WifiSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/WifiSettings;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/ProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/WifiSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 154
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiNewDialog;)Lcom/android/settings/wifi/WifiNewDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->showNewDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 154
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiSettings;->showNewDialog(Lcom/android/settings/wifi/AccessPoint;ZZ)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 154
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->getNewNetworkId(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/settings/wifi/WifiSettings;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiSettings$Scanner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$Channel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 154
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method private addMessagePreference(I)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 2047
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2050
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 2061
    return-void
.end method

.method private changeNextButtonState(Z)V
    .locals 1
    .parameter "connected"

    .prologue
    .line 2725
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2726
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2728
    :cond_0
    return-void
.end method

.method private connectNetwork(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 3115
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectNetwork nid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3118
    :cond_0
    sget v0, Lcom/android/settings/wifi/WifiSettings;->WIFI_CONNECT_THRESHOLD:I

    if-ne v0, v3, :cond_1

    sget v0, Lcom/android/settings/wifi/WifiSettings;->WIFI_HIGHMOBILITY:I

    if-eq v0, v3, :cond_2

    .line 3120
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3121
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3122
    const/16 v2, 0x1d

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3123
    const-string v2, "netId"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3124
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3125
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 3129
    :cond_2
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->WIFI_ERRORCODE:Z

    if-eqz v0, :cond_5

    .line 3130
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 3131
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 3132
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v2, p2, :cond_3

    .line 3133
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_4

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_4

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_5

    .line 3134
    :cond_4
    const/4 v1, 0x0

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 3140
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    .line 3141
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 3142
    return-void
.end method

.method private connectNetwork(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 3077
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    const-string v1, "connectNetwork"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3080
    :cond_0
    sget v0, Lcom/android/settings/wifi/WifiSettings;->WIFI_CONNECT_THRESHOLD:I

    if-ne v0, v2, :cond_1

    sget v0, Lcom/android/settings/wifi/WifiSettings;->WIFI_HIGHMOBILITY:I

    if-eq v0, v2, :cond_2

    .line 3082
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3083
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3084
    const/16 v2, 0x1d

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3085
    const-string v2, "netId"

    iget v3, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3086
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3087
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 3091
    :cond_2
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->WIFI_ERRORCODE:Z

    if-eqz v0, :cond_4

    .line 3092
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_4

    .line 3093
    :cond_3
    const/4 v0, 0x0

    iput v0, p2, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 3096
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    .line 3097
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 3098
    return-void
.end method

.method private constructAccessPoints()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2065
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2068
    new-instance v4, Lcom/android/settings/wifi/WifiSettings$Multimap;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/android/settings/wifi/WifiSettings$Multimap;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiSettings$1;)V

    .line 2070
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 2071
    if-eqz v0, :cond_0

    .line 2075
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2076
    new-instance v2, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 2089
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2, v0, v5}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 2091
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2092
    iget-object v0, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Lcom/android/settings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 2099
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 2100
    if-eqz v0, :cond_3

    .line 2101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 2103
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "[IBSS]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2108
    const/4 v1, 0x0

    .line 2109
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/android/settings/wifi/WifiSettings$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v1

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    .line 2110
    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2111
    const/4 v1, 0x1

    :goto_3
    move v2, v1

    goto :goto_2

    .line 2113
    :cond_2
    if-nez v2, :cond_1

    .line 2114
    new-instance v1, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 2115
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2116
    iget-object v0, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lcom/android/settings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 2123
    :cond_3
    :try_start_0
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2127
    :goto_4
    return-object v3

    .line 2124
    :catch_0
    move-exception v0

    goto :goto_4

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method private dismissDialog(I)V
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 1456
    packed-switch p1, :pswitch_data_0

    .line 1495
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1458
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1459
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    .line 1460
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V

    .line 1461
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_0

    .line 1465
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1466
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V

    .line 1467
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_0

    .line 1471
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1472
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1473
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1477
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

    if-eqz v0, :cond_0

    .line 1478
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiNewDialog;->dismiss()V

    .line 1479
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

    goto :goto_0

    .line 1483
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1484
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1485
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1489
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1490
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1491
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1456
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method private getErrorAnimationView(II)Landroid/view/View;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1762
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1764
    const v1, 0x7f040125

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1765
    const v0, 0x7f0b002e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1766
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 1767
    const v0, 0x7f0b039f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1768
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1769
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

    .line 1770
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$22;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$22;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    const-wide/16 v3, 0x5f

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1776
    return-object v1
.end method

.method private getNewNetworkId(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .parameter "config"

    .prologue
    .line 3158
    const/4 v1, 0x0

    .line 3159
    .local v1, found:Z
    const/4 v3, -0x1

    .line 3160
    .local v3, newNetId:I
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->rememberedAccessPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 3161
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/AccessPoint;->checkIfSame(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3162
    const/4 v1, 0x1

    .line 3163
    iget v3, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 3167
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_1
    if-eqz v1, :cond_2

    move v4, v3

    .line 3170
    .end local v3           #newNetId:I
    .local v4, newNetId:I
    :goto_0
    return v4

    .end local v4           #newNetId:I
    .restart local v3       #newNetId:I
    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    move v4, v3

    .end local v3           #newNetId:I
    .restart local v4       #newNetId:I
    goto :goto_0
.end method

.method private getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .parameter "networkId"

    .prologue
    .line 1562
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 1563
    .local v1, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_1

    .line 1564
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1565
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, p1, :cond_0

    .line 1570
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x7530

    const/4 v5, 0x6

    const/4 v2, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2150
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2152
    const-string v0, "android.net.wifi.supplicant.WAPI_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2153
    const-string v0, "wapi_string"

    .line 2155
    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2156
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SUPPLICANT_WAPI_EVENT received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    packed-switch v0, :pswitch_data_0

    .line 2293
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEapMethod:Ljava/lang/String;

    const-string v2, "AKA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2294
    const-string v0, "android.net.wifi.SHOW_EAP_MESSAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2295
    const-string v0, "message"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2298
    if-nez v0, :cond_12

    .line 2344
    :cond_1
    :goto_1
    return-void

    .line 2159
    :pswitch_1
    const v0, 0x7f090230

    invoke-static {p1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2163
    :pswitch_2
    const v0, 0x7f090231

    invoke-static {p1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2167
    :cond_2
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2168
    const-string v0, "wifi_state"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->updateWifiState(I)V

    goto :goto_0

    .line 2170
    :cond_3
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2171
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "WifiSettings"

    const-string v2, ">>> SCAN_RESULTS_AVAILABLE_ACTION RECEIVED"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 2180
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFirst5GScanFlag:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v0, :cond_0

    .line 2181
    iput-boolean v6, p0, Lcom/android/settings/wifi/WifiSettings;->mFirst5GScanFlag:Z

    .line 2182
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->forceScan()V

    .line 2183
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    const-string v2, "Force scan for 5G APs"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2185
    :cond_5
    const-string v0, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2186
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 2188
    const-string v0, "wifiConfiguration"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2189
    if-eqz v0, :cond_6

    .line 2190
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mRetryPopupRequestId:I

    .line 2191
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> CONFIGURED_NETWORKS_CHANGED_ACTION nid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/wifi/WifiSettings;->mRetryPopupRequestId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    :cond_6
    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mRetryPopupRequestId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 2194
    iput-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mRetryPopupFlag:Z

    .line 2195
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 2198
    :cond_7
    const-string v0, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2199
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    goto/16 :goto_0

    .line 2200
    :cond_8
    const-string v0, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2207
    const-string v0, "newState"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SupplicantState;

    .line 2209
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    if-eq v0, v2, :cond_0

    .line 2210
    sget-boolean v2, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v2, :cond_9

    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> SUPPLICANT_STATE_CHANGED_ACTION state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    :cond_9
    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 2217
    :cond_a
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2218
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 2220
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 2221
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v3, :cond_b

    if-eqz v2, :cond_b

    .line 2222
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->finish()V

    .line 2224
    :cond_b
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2225
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 2226
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 2227
    sget-boolean v3, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v3, :cond_c

    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>> NETWORK_STATE_CHANGED_ACTION state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    :cond_c
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 2239
    if-eqz v2, :cond_d

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    if-eqz v2, :cond_d

    .line 2240
    const-string v2, "WifiSettings"

    const-string v3, " Wifi Connection Established --> Launch The Next Activity "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardWifiScreen:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    iget-object v3, v3, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mForwardIntent:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2242
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardWifiScreen:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "setup_wizard_bundle"

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardWifiScreen:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    iget-object v4, v4, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mBundleExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2243
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2244
    iput-boolean v6, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    .line 2245
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 2250
    :cond_d
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2251
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 2254
    :cond_e
    const-string v0, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2255
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 2256
    :cond_f
    const-string v0, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2257
    const-string v0, "launch_with"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2261
    if-ne v0, v2, :cond_0

    .line 2263
    const/16 v0, 0x8

    invoke-direct {p0, v0, v8, v6}, Lcom/android/settings/wifi/WifiSettings;->showDurationDialog(IIZ)V

    goto/16 :goto_0

    .line 2265
    :cond_10
    const-string v0, "android.net.wifi.ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2266
    const-string v0, "errorCode"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2267
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> ERROR_ACTION RECEIVED code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 2270
    :pswitch_3
    const-string v0, "wifiInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;

    .line 2271
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 2272
    invoke-direct {p0, v5, v8, v7}, Lcom/android/settings/wifi/WifiSettings;->showDurationDialog(IIZ)V

    goto/16 :goto_0

    .line 2275
    :cond_11
    const-string v0, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2276
    const-string v0, "info_type"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2277
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> SHOW_INFO_MESSAGE RECEIVED code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    .line 2309
    :cond_12
    invoke-static {p1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 2157
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 2268
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
    .end packed-switch

    .line 2278
    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private isUsimUseable()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3214
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3215
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    .line 3216
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "airplane_mode_on"

    invoke-static {v3, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    .line 3218
    :goto_0
    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    if-nez v3, :cond_1

    .line 3219
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f090293

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 3239
    :goto_1
    return v0

    :cond_0
    move v3, v1

    .line 3216
    goto :goto_0

    .line 3223
    :cond_1
    const-string v3, "TMO"

    const-string v4, "SKT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3224
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 3226
    if-eqz v0, :cond_3

    const-string v3, "45005"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "45000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3227
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f090295

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 3228
    goto :goto_1

    .line 3230
    :cond_2
    const-string v3, "TMO"

    const-string v4, "KTT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3231
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 3233
    if-eqz v0, :cond_3

    const-string v3, "45008"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "45002"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3234
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f090294

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 3235
    goto :goto_1

    :cond_3
    move v0, v2

    .line 3239
    goto :goto_1
.end method

.method private onAdvancedMenuPressed()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 1158
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerActivity:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v0, :cond_1

    .line 1159
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->hideNavigationButton:Z

    .line 1163
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_2

    .line 1164
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090245

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1172
    :goto_1
    return-void

    .line 1161
    :cond_1
    sput-boolean v6, Lcom/android/settings/wifi/AdvancedWifiSettings;->hideNavigationButton:Z

    goto :goto_0

    .line 1170
    :cond_2
    const-class v0, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1
.end method

.method private removeDialogTimer(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 1753
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1754
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1755
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    if-eqz v0, :cond_1

    .line 1756
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    .line 1757
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 1759
    :cond_1
    return-void
.end method

.method private requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    .line 1829
    invoke-static {p1}, Lcom/android/settings/wifi/WifiConfigController;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_0

    .line 1831
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 1832
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 1833
    const/4 v0, 0x1

    .line 1835
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .parameter "config"

    .prologue
    .line 3151
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, p1, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 3152
    const/4 v0, 0x1

    return v0
.end method

.method private setupAddNetworkPreference()V
    .locals 2

    .prologue
    .line 2032
    const-string v0, "wifi_picker_dialog_add_network"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    .line 2033
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    const v1, 0x7f020395

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 2041
    return-void
.end method

.method private showConfigUi(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 0
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 1409
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    .line 1411
    return-void
.end method

.method private showConnectingMessge(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2442
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    if-nez v0, :cond_1

    .line 2467
    :cond_0
    :goto_0
    return-void

    .line 2444
    :cond_1
    if-nez p1, :cond_2

    .line 2445
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 2446
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    .line 2447
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    goto :goto_0

    .line 2449
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_3

    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->mWpsInProgress:Z

    if-nez v0, :cond_3

    .line 2451
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    const v1, 0x7f0903bc

    invoke-virtual {v0, v3, v1}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    .line 2452
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v3}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 2453
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    goto :goto_0

    .line 2454
    :cond_3
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_4

    .line 2455
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    if-nez v0, :cond_0

    .line 2456
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    .line 2457
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 2458
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    goto :goto_0

    .line 2460
    :cond_4
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_5

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_0

    .line 2461
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    .line 2462
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 2463
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    .line 2464
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    goto/16 :goto_0
.end method

.method private showConnectionFailDialog(Lcom/android/settings/wifi/AccessPoint;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2471
    invoke-virtual {p1}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2472
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v1, v2, :cond_0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2475
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2476
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AP Dialog is aleady showing. Ignore request id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    :cond_0
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mRetryPopupRequestId:I

    .line 2488
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mRetryPopupFlag:Z

    .line 2489
    return-void

    .line 2478
    :cond_1
    const-string v0, "WifiSettings"

    const-string v1, "Show retry popup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    iget v0, p1, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_2

    .line 2481
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09075a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2484
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/android/settings/wifi/WifiSettings;->showRetryDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0
.end method

.method private showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 2
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    const/4 v1, 0x1

    .line 1429
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 1431
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1432
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V

    .line 1433
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 1437
    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1438
    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    .line 1440
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    .line 1441
    return-void
.end method

.method private showDurationDialog(IIZ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x1040014

    const/high16 v4, 0x104

    const v3, 0x1010355

    const/4 v2, 0x0

    .line 1574
    iput-boolean p3, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    .line 1575
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    if-eqz v0, :cond_0

    .line 1576
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 1578
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1750
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 1637
    :pswitch_1
    const-string v0, "TMO"

    const-string v1, "KTT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1638
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090283

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1639
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1640
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    .line 1641
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_0

    .line 1647
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1648
    const v1, 0x7f0203a1

    const v2, 0x7f090284

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->getErrorAnimationView(II)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1649
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1650
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1652
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1653
    const v1, 0x7f090360

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$13;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$13;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1663
    :cond_3
    const v1, 0x7f0905a3

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$14;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$14;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1672
    new-instance v1, Lcom/android/settings/wifi/WifiSettings$15;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$15;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1676
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    .line 1677
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/wifi/WifiSettings$16;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$16;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1682
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$17;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$17;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogRunnable:Ljava/lang/Runnable;

    .line 1689
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogRunnable:Ljava/lang/Runnable;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1690
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1694
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    .line 1698
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1699
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1700
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1701
    const v1, 0x7f090351

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1703
    const v1, 0x7f090302

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$18;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$18;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1716
    new-instance v1, Lcom/android/settings/wifi/WifiSettings$19;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$19;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1729
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    .line 1730
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/wifi/WifiSettings$20;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$20;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1737
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$21;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$21;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialogRunnable:Ljava/lang/Runnable;

    .line 1744
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialogRunnable:Ljava/lang/Runnable;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1745
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1578
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private showNewDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 6
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

    if-eqz v0, :cond_0

    .line 1782
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiNewDialog;->dismiss()V

    .line 1785
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiNewDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDialogStyle:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiNewDialog;-><init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

    .line 1786
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiNewDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1805
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiNewDialog;->show()V

    .line 1806
    return-void
.end method

.method private showNewDialog(Lcom/android/settings/wifi/AccessPoint;ZZ)V
    .locals 7
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "details"

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

    if-eqz v0, :cond_0

    .line 1810
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiNewDialog;->dismiss()V

    .line 1812
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiNewDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDialogStyle:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/WifiNewDialog;-><init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

    .line 1813
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiNewDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1814
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiNewDialog;->show()V

    .line 1816
    return-void
.end method

.method private showRetryDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 1
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    const/4 v0, 0x5

    .line 1445
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 1448
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1449
    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    .line 1451
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    .line 1452
    return-void
.end method

.method private startWith(I)V
    .locals 7
    .parameter "id"

    .prologue
    const/16 v6, 0x7530

    const/4 v5, 0x0

    .line 917
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiSettings activity start with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    packed-switch p1, :pswitch_data_0

    .line 940
    :goto_0
    return-void

    .line 920
    :pswitch_0
    const/4 v2, 0x4

    invoke-direct {p0, v2, v6, v5}, Lcom/android/settings/wifi/WifiSettings;->showDurationDialog(IIZ)V

    goto :goto_0

    .line 924
    :pswitch_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 925
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/android/settings/wifi/WifiSettings$7;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$7;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    .line 930
    .local v1, runnable:Ljava/lang/Runnable;
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 934
    .end local v0           #handler:Landroid/os/Handler;
    .end local v1           #runnable:Ljava/lang/Runnable;
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->onAdvancedMenuPressed()V

    goto :goto_0

    .line 937
    :pswitch_3
    const/16 v2, 0x8

    invoke-direct {p0, v2, v6, v5}, Lcom/android/settings/wifi/WifiSettings;->showDurationDialog(IIZ)V

    goto :goto_0

    .line 918
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateAccessPoints()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1844
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2008
    :cond_0
    :goto_0
    return-void

    .line 1846
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 1847
    const-string v1, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateAccessPoints] wifiState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    packed-switch v0, :pswitch_data_0

    .line 1999
    :cond_2
    :goto_1
    iget-wide v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 2000
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1f4

    cmp-long v0, v0, v4

    if-lez v0, :cond_c

    .line 2001
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "WifiSettings"

    const-string v1, "scroll end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    :cond_3
    iput-wide v6, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    goto :goto_0

    .line 1851
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiNewDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1853
    :cond_5
    const-string v0, "WifiSettings"

    const-string v1, "Skip updateAccessPoints"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1857
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->constructAccessPoints()Ljava/util/List;

    move-result-object v4

    .line 1858
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1869
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1870
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    if-eqz v1, :cond_e

    .line 1871
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v3}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 1872
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 1878
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1879
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    move-object v1, v0

    .line 1881
    :goto_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v0, :cond_7

    .line 1943
    :cond_7
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 1945
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 1946
    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/enterprise/WifiPolicy;->getAllowUserProfiles(Z)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    .line 1947
    :goto_3
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1949
    const v0, 0x7f09024a

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 1951
    :cond_8
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 1964
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    :cond_9
    move v0, v3

    .line 1946
    goto :goto_3

    .line 1968
    :cond_a
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkMenuItem:Landroid/view/MenuItem;

    if-nez v0, :cond_2

    .line 1975
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 1976
    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/enterprise/WifiPolicy;->getAllowUserProfiles(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1977
    :goto_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1979
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_b
    move v2, v3

    .line 1976
    goto :goto_5

    .line 1986
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto/16 :goto_1

    .line 1990
    :pswitch_2
    const v0, 0x7f09022c

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto/16 :goto_1

    .line 1995
    :pswitch_3
    const v0, 0x7f090249

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto/16 :goto_1

    .line 2003
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2004
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "WifiSettings"

    const-string v1, "force scroll up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_0

    :cond_e
    move-object v1, v0

    goto/16 :goto_2

    .line 1849
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2366
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2367
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 2439
    :cond_0
    :goto_0
    return-void

    .line 2371
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 2372
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    if-eqz v1, :cond_8

    .line 2373
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    .line 2375
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->showConnectingMessge(Landroid/net/NetworkInfo$DetailedState;)V

    move-object v1, v0

    .line 2379
    :goto_1
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    if-eqz v0, :cond_5

    .line 2380
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 2385
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 2386
    if-eqz p1, :cond_3

    .line 2387
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 2390
    :cond_3
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_3
    if-ltz v4, :cond_6

    .line 2392
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 2393
    instance-of v5, v0, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v5, :cond_4

    .line 2394
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 2395
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v5, v6}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 2397
    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mRetryPopupFlag:Z

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/android/settings/wifi/WifiSettings;->mRetryPopupRequestId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    iget v5, p0, Lcom/android/settings/wifi/WifiSettings;->mRetryPopupRequestId:I

    iget v6, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v5, v6, :cond_4

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2402
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showConnectionFailDialog(Lcom/android/settings/wifi/AccessPoint;)V

    .line 2390
    :cond_4
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_3

    .line 2382
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_2

    .line 2413
    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->isOOBE:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_0

    .line 2415
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->isOOBE:Z

    .line 2416
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2417
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f090120

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 2423
    :cond_7
    :try_start_0
    const-string v0, "com.movial.ipphone.IPUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "DIALOG_OOBE_WIFI_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2425
    const-string v0, "com.movial.ipphone.IPUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "DIALOG_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2426
    :try_start_1
    const-string v1, "com.movial.ipphone.IPUtils"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v4, "DIALOG_OTHERS"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const-class v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v3

    .line 2431
    :goto_4
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2432
    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2433
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2434
    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2435
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2436
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2427
    :catch_0
    move-exception v0

    move v1, v3

    move-object v3, v0

    move-object v0, v2

    .line 2428
    :goto_5
    const-string v4, "WifiSettings"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v2

    move v2, v1

    move-object v1, v7

    goto :goto_4

    .line 2427
    :catch_1
    move-exception v1

    move-object v7, v1

    move v1, v3

    move-object v3, v7

    goto :goto_5

    :cond_8
    move-object v1, v0

    goto/16 :goto_1
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 1054
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1055
    if-eqz p1, :cond_2

    .line 1056
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f02008d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1057
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1063
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pSupported:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v0, :cond_4

    .line 1064
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 1065
    if-eqz p1, :cond_3

    .line 1066
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f020091

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1067
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1084
    :cond_1
    :goto_1
    return-void

    .line 1059
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1060
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 1069
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1070
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 1074
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 1075
    if-eqz p1, :cond_5

    .line 1076
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f020085

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1077
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 1079
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1080
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method

.method private updateWifiState(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2492
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2494
    packed-switch p1, :pswitch_data_0

    .line 2544
    :goto_0
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 2545
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 2546
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 2547
    :goto_1
    return-void

    .line 2496
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_1

    .line 2501
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mFirst5GScanFlag:Z

    .line 2511
    const v0, 0x7f09022b

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 2515
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->closeContextMenu()V

    .line 2516
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 2517
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->dismissKeypad()V

    .line 2519
    :cond_0
    const v0, 0x7f090249

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 2528
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v0, :cond_1

    .line 2529
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->finish()V

    .line 2531
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 2533
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 2539
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    goto :goto_0

    .line 2494
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method forget()V
    .locals 4

    .prologue
    .line 3186
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3188
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3210
    :goto_0
    return-void

    .line 3196
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiManager;->forget(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 3203
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3204
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 3206
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 3209
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.wifi.direct"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pSupported:Z

    .line 499
    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 500
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/wifi/WifiManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/WifiManager$ChannelListener;)Landroid/net/wifi/WifiManager$Channel;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    .line 502
    new-instance v7, Lcom/android/settings/wifi/WifiSettings$2;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiSettings$2;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 514
    new-instance v7, Lcom/android/settings/wifi/WifiSettings$3;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiSettings$3;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 526
    new-instance v7, Lcom/android/settings/wifi/WifiSettings$4;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiSettings$4;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 538
    if-eqz p1, :cond_0

    const-string v7, "wifi_ap_state"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 540
    const-string v7, "edit_mode"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    .line 541
    const-string v7, "wifi_ap_state"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 545
    :cond_0
    const-string v7, "motion_recognition"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v7, Lcom/android/settings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 546
    new-instance v7, Lcom/android/settings/wifi/WifiSettings$5;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiSettings$5;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 560
    const-string v7, "enterprise_policy"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 563
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 564
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 567
    .local v4, intent:Landroid/content/Intent;
    const-string v7, "wifi_auto_finish_on_connect"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    .line 569
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    if-eqz v7, :cond_2

    .line 571
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 572
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 575
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 577
    .local v2, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_2

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 579
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 727
    .end local v2           #connectivity:Landroid/net/ConnectivityManager;
    :goto_0
    return-void

    .line 586
    :cond_2
    const-string v7, "wifi_enable_next_on_connect"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    .line 591
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v7, :cond_3

    .line 592
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 593
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 595
    .restart local v2       #connectivity:Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_3

    .line 596
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 598
    .local v3, info:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 604
    .end local v2           #connectivity:Landroid/net/ConnectivityManager;
    .end local v3           #info:Landroid/net/NetworkInfo;
    :cond_3
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v7, :cond_e

    .line 605
    const-string v7, "WifiSettings"

    const-string v8, "onCreate:only_access_points"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/4 v7, 0x1

    sput v7, Lcom/android/settings/wifi/WifiSettings;->mManageNetworkConnected:I

    .line 607
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/settings/wifi/WifiSettings;->manageNetwork:Z

    .line 608
    const v7, 0x7f07007f

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 609
    const-string v7, "access_points"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/ProgressCategory;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    .line 610
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    if-eqz v7, :cond_4

    .line 611
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/settings/ProgressCategory;->setIgnoreMessage(Z)V

    .line 626
    :cond_4
    :goto_1
    const-string v7, "wifi_progress_category"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/ProgressCategory;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    .line 627
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    if-eqz v7, :cond_5

    .line 628
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/settings/ProgressCategory;->setIgnoreMessage(Z)V

    .line 629
    :cond_5
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v7, :cond_6

    .line 630
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setupAddNetworkPreference()V

    .line 633
    :cond_6
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v7, :cond_7

    .line 634
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v7

    const/high16 v8, 0x1e4

    invoke-virtual {v7, v8}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 643
    :cond_7
    const-string v7, "extra_prefs_oobe"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->isOOBE:Z

    .line 645
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->isOOBE:Z

    if-nez v7, :cond_8

    .line 646
    const v7, 0x7f07008a

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 667
    :cond_8
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 669
    .local v0, actionBarSwitch:Landroid/widget/Switch;
    instance-of v7, v1, Landroid/preference/PreferenceActivity;

    if-eqz v7, :cond_b

    move-object v6, v1

    .line 670
    check-cast v6, Landroid/preference/PreferenceActivity;

    .line 671
    .local v6, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v7

    if-nez v7, :cond_b

    .line 672
    :cond_9
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 674
    .local v5, padding:I
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v8, v5, v9}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 676
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 677
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v7, :cond_a

    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerActivity:Z

    if-eqz v7, :cond_10

    .line 678
    :cond_a
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/16 v8, 0x10

    const/16 v9, 0x14

    invoke-virtual {v7, v8, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 680
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 686
    :goto_2
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    const/16 v11, 0x15

    invoke-direct {v8, v9, v10, v11}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v7, v0, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 691
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const v8, 0x7f090228

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setTitle(I)V

    .line 692
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/high16 v8, 0x7f03

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setIcon(I)V

    .line 697
    .end local v5           #padding:I
    .end local v6           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_b
    new-instance v7, Lcom/android/settings/wifi/WifiEnabler;

    invoke-direct {v7, v1, v0}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 702
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x1020004

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    .line 704
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const/high16 v8, 0x4190

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 705
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0015

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 706
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const/16 v8, 0x30

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 708
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 711
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v7, :cond_c

    .line 713
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 716
    :cond_c
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v7, :cond_d

    .line 717
    const v7, 0x7f07008a

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 718
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const v8, 0x7f0201ac

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setLogo(I)V

    .line 719
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const v8, 0x7f090c0c

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setTitle(I)V

    .line 720
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 723
    :cond_d
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    .line 726
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 612
    .end local v0           #actionBarSwitch:Landroid/widget/Switch;
    :cond_e
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v7, :cond_f

    .line 613
    const v7, 0x7f070089

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 619
    :cond_f
    const v7, 0x7f07008a

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 682
    .restart local v0       #actionBarSwitch:Landroid/widget/Switch;
    .restart local v5       #padding:I
    .restart local v6       #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_10
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/16 v8, 0x10

    const/16 v9, 0x10

    invoke-virtual {v7, v8, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    goto/16 :goto_2
.end method

.method onAddNetworkPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3274
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 3278
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 3279
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiSettings;->showConfigUi(Lcom/android/settings/wifi/AccessPoint;Z)V

    .line 3280
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 447
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 465
    instance-of v0, p1, Lcom/android/settings/wifi/SetupWizardWifiScreen;

    if-eqz v0, :cond_0

    .line 466
    const-string v0, "WifiSettings"

    const-string v1, " SetupWizard Wifi Screen Instance Creation Goes Here !!! in onAttach of Fragment "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    .line 468
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardWifiScreen:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    if-nez v0, :cond_0

    .line 469
    check-cast p1, Lcom/android/settings/wifi/SetupWizardWifiScreen;

    .end local p1
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardWifiScreen:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    .line 472
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2958
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 2959
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->forget()V

    .line 2982
    :cond_0
    :goto_0
    return-void

    .line 2965
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 2975
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-nez v0, :cond_2

    .line 2976
    const-string v0, "WifiSettings"

    const-string v1, "onClick SUBMIT button but, mDialog is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2978
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->submit(Lcom/android/settings/wifi/WifiConfigController;)V

    goto :goto_0

    .line 2979
    :cond_3
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 2980
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 1048
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1049
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->updateOptionsMenuIcon(Z)V

    .line 1050
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1051
    return-void

    .line 1049
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1234
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v1, :cond_1

    .line 1235
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 1285
    :cond_0
    :goto_0
    return v0

    .line 1238
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1285
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 1240
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 1241
    const-string v1, "T wifi zone_secure"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1242
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1259
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1260
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1245
    :cond_3
    const-string v1, "ollehWiFi"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1246
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 1262
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v1, :cond_5

    .line 1264
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 1265
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1267
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->showConfigUi(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 1272
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/WifiManager;->forget(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1281
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiSettings;->showConfigUi(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto/16 :goto_0

    .line 1238
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "firstRun"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    .line 423
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/wifi/WifiPickerDialog;

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    .line 424
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/wifi/WifiPickerActivity;

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerActivity:Z

    .line 426
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 438
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 1176
    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_0

    .line 1177
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 1180
    instance-of v2, v0, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_0

    .line 1181
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1200
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v0

    .line 1201
    if-nez v0, :cond_1

    .line 1230
    :cond_0
    :goto_0
    return-void

    .line 1203
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1204
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1207
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v3, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1210
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    const/4 v0, 0x1

    .line 1213
    :goto_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v2

    .line 1214
    if-eqz v0, :cond_4

    if-nez v2, :cond_4

    .line 1217
    const/16 v0, 0x8

    const v3, 0x7f090247

    invoke-interface {p1, v1, v0, v1, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1221
    :cond_4
    if-nez v2, :cond_0

    .line 1224
    const/16 v0, 0x9

    const v2, 0x7f090248

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 1205
    :cond_5
    const/4 v0, 0x7

    const v2, 0x7f090246

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    :cond_6
    move v0, v1

    .line 1210
    goto :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "dialogId"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1499
    packed-switch p1, :pswitch_data_0

    .line 1558
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1502
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1503
    .local v3, ap:Lcom/android/settings/wifi/AccessPoint;
    if-nez v3, :cond_0

    .line 1504
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1505
    new-instance v3, Lcom/android/settings/wifi/AccessPoint;

    .end local v3           #ap:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v3, v0, v1}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 1507
    .restart local v3       #ap:Lcom/android/settings/wifi/AccessPoint;
    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1511
    :cond_0
    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1515
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 1519
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 1542
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_0

    .line 1522
    :cond_1
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    move-object v2, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_1

    .line 1545
    .end local v3           #ap:Lcom/android/settings/wifi/AccessPoint;
    :pswitch_2
    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/AlertDialog;

    .line 1546
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1552
    :pswitch_3
    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/AlertDialog;

    .line 1553
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1499
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const v8, 0x7f020085

    const/4 v7, 0x2

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 944
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    if-nez v3, :cond_1

    .line 945
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    .line 946
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    .line 950
    const/4 v5, 0x6

    const v6, 0x7f090244

    invoke-interface {p1, v2, v5, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    .line 951
    if-eqz v4, :cond_2

    .line 952
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    const v6, 0x7f02008d

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 953
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 957
    :goto_0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 959
    const v5, 0x7f090245

    invoke-interface {p1, v2, v0, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    .line 961
    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pSupported:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v5, :cond_4

    .line 962
    const/4 v5, 0x3

    const v6, 0x7f090243

    invoke-interface {p1, v2, v5, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    .line 963
    if-eqz v4, :cond_3

    .line 964
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    const v6, 0x7f020091

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 970
    :goto_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 971
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move v0, v2

    .line 978
    :goto_2
    if-eqz v4, :cond_0

    .line 979
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 981
    :cond_0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 982
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1027
    const v0, 0x7f090241

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v5, 0x7f020092

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1031
    const v0, 0x7f090242

    invoke-interface {p1, v2, v7, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v5, 0x7f020093

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1038
    if-nez v4, :cond_1

    .line 1039
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v7, :cond_5

    :goto_3
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->updateOptionsMenuIcon(Z)V

    .line 1043
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1044
    return-void

    .line 955
    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0

    .line 968
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v0, v1

    goto :goto_1

    .line 974
    :cond_4
    if-nez v4, :cond_6

    move v0, v1

    .line 975
    goto :goto_2

    :cond_5
    move v1, v2

    .line 1039
    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 443
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 1106
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1154
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1108
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    move v0, v7

    .line 1109
    goto :goto_0

    .line 1111
    :pswitch_2
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 1112
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    .line 1113
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090377

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    move v0, v7

    .line 1121
    goto :goto_0

    .line 1119
    :cond_0
    const-class v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 1123
    :pswitch_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    move v0, v7

    .line 1124
    goto :goto_0

    .line 1126
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1127
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->forceScan()V

    :goto_2
    move v0, v7

    .line 1133
    goto :goto_0

    .line 1129
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090363

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1138
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1140
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onAddNetworkPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_3
    move v0, v7

    .line 1145
    goto :goto_0

    .line 1141
    :catch_0
    move-exception v0

    .line 1142
    const-string v1, "WifiSettings"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1147
    :pswitch_6
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->onAdvancedMenuPressed()V

    move v0, v7

    .line 1148
    goto :goto_0

    .line 1150
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_MANAGE_NETWORK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v7

    .line 1151
    goto/16 :goto_0

    .line 1106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 865
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 870
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v2, :cond_0

    .line 871
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 873
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 874
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 876
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v2, :cond_1

    .line 877
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    .line 880
    :cond_1
    sget-object v2, Lcom/android/settings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v2, :cond_2

    .line 882
    sget-object v2, Lcom/android/settings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v2, v3}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 884
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_3

    .line 885
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 886
    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    .line 889
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_4

    .line 890
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 891
    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    .line 894
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_5

    .line 895
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 896
    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    .line 899
    :cond_5
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 900
    .local v1, pm:Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 901
    .local v0, isScreenOn:Z
    sget-boolean v2, Lcom/android/settings/wifi/WifiSettings;->mWpsInProgress:Z

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    .line 902
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_6

    .line 903
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 904
    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/AlertDialog;

    .line 908
    :cond_6
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 1297
    instance-of v1, p2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_5

    .line 1298
    check-cast p2, Lcom/android/settings/wifi/AccessPoint;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1303
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1304
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_2

    .line 1306
    const-string v1, "T wifi zone_secure"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1307
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1349
    :cond_0
    :goto_0
    return v0

    .line 1310
    :cond_1
    const-string v1, "ollehWiFi"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_2

    .line 1311
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1318
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v1

    .line 1319
    if-eqz v1, :cond_0

    .line 1329
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 1331
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 1333
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 1336
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1337
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090364

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1340
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 1343
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1344
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1345
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onAddNetworkPressed()V

    goto :goto_0

    .line 1347
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 736
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 738
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 739
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 740
    .local v2, msg:Landroid/os/Message;
    const/16 v3, 0x1a

    iput v3, v2, Landroid/os/Message;->what:I

    .line 742
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 743
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "enable"

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 744
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 746
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v3

    if-nez v3, :cond_0

    .line 747
    const-string v3, "WifiSettings"

    const-string v4, "Start scan, start assoc !!!!!!!!!!!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    const-string v3, "sys.edm.keystore_netid"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 754
    .local v1, auxNetId:I
    if-eq v1, v7, :cond_1

    .line 755
    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 756
    const-string v3, "sys.edm.keystore_netid"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 794
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 795
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->finish()V

    .line 800
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v3, :cond_3

    .line 801
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    .line 804
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 805
    iget v3, p0, Lcom/android/settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    if-eq v3, v7, :cond_4

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v3

    sget-object v4, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v3, v4, :cond_4

    .line 807
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget v5, p0, Lcom/android/settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v3, v4, v5, v6}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 809
    :cond_4
    iput v7, p0, Lcom/android/settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 811
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v3, :cond_5

    .line 812
    sput-boolean v9, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    .line 819
    :cond_5
    sget-object v3, Lcom/android/settings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v3, :cond_6

    .line 821
    sget-object v3, Lcom/android/settings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;I)V

    .line 834
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings/wifi/SetupWizardWifiScreen;

    if-eqz v3, :cond_7

    .line 835
    const-string v3, "WifiSettings"

    const-string v4, " SetupWizard Wifi Screen Instance Creation Goes Here !!! in OnResume"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    iput-boolean v9, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    .line 837
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardWifiScreen:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    if-nez v3, :cond_7

    .line 838
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settings/wifi/SetupWizardWifiScreen;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardWifiScreen:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    .line 842
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 844
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 845
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiDialog;->dismissSpinnerPopup()V

    .line 848
    :cond_8
    sget v3, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    if-eqz v3, :cond_9

    .line 849
    sget v3, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->startWith(I)V

    .line 850
    sput v8, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    .line 852
    :cond_9
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 1088
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1091
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1092
    const-string v0, "edit_mode"

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1093
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 1094
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 1095
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 1096
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1098
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    const v1, 0x7f0b02fb

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    const v1, 0x7f0b0341

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1099
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiDialog;->setSoftKeyboardVisible(Z)V

    .line 1102
    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 912
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 913
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

    .line 914
    return-void
.end method

.method refreshAccessPoints()V
    .locals 1

    .prologue
    .line 3262
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3263
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 3266
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 3267
    return-void
.end method

.method resumeWifiScan()V
    .locals 1

    .prologue
    .line 3308
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3309
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 3311
    :cond_0
    return-void
.end method

.method submit(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 3020
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 3022
    if-nez v0, :cond_4

    .line 3024
    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastCWErrorReason:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastCWErrorReason:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->checkCTCSsid(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3027
    const/16 v0, 0xa

    invoke-direct {p0, v0, v3}, Lcom/android/settings/wifi/WifiSettings;->CWHandleCommand(II)I

    .line 3030
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v2, :cond_2

    .line 3033
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 3069
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3070
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 3072
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 3073
    return-void

    .line 3035
    :cond_4
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v1, v2, :cond_7

    .line 3036
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isRetryDialog()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3037
    sget-boolean v1, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Re-connect ap id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 3039
    :cond_6
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_2

    .line 3040
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 3041
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 3044
    :cond_7
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isEdit()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3059
    :cond_8
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 3061
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isEdit()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3062
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 3065
    :cond_9
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0
.end method
