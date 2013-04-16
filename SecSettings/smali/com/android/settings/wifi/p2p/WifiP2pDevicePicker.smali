.class public Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiP2pDevicePicker.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# static fields
.field private static mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;


# instance fields
.field private customActionBarView:Landroid/view/View;

.field private mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mConnectInProgress:Z

.field private mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

.field private mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsLandscape:Z

.field private mIsTablet:Z

.field private mMultiConnect:Z

.field private mMultiConnectClicked:Z

.field private mMultiConnectFooter:Landroid/widget/TextView;

.field private mNoDevicePref:Landroid/preference/PreferenceGroup;

.field private mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

.field private mP2pMenu:Landroid/view/MenuItem;

.field private mP2pMultiConnect:Landroid/view/MenuItem;

.field private mPeersBusy:Landroid/preference/PreferenceGroup;

.field private mPeersConnected:Landroid/preference/PreferenceGroup;

.field private mPeersGroup:Lcom/android/settings/ProgressCategory;

.field private mReceivedStickyEnabled:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanClicked:Z

.field private mScanDialog:Landroid/app/AlertDialog;

.field private mScanTimer:Landroid/os/CountDownTimer;

.field private mSelectAll:Landroid/preference/CheckBoxPreference;

.field private mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mThisDevicePref:Landroid/preference/PreferenceGroup;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field protected revertMenuItem:Landroid/view/View;

.field protected revertMenuItemIcon:Landroid/view/View;

.field protected revertMenuItemText:Landroid/view/View;

.field protected saveMenuItem:Landroid/view/View;

.field protected saveMenuItemIcon:Landroid/view/View;

.field protected saveMenuItemText:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    .line 140
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 141
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 143
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnect:Z

    .line 145
    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 146
    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 152
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    .line 155
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mConnectInProgress:Z

    .line 157
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    .line 158
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mReceivedStickyEnabled:Z

    .line 165
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    .line 166
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    .line 177
    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanDialog:Landroid/app/AlertDialog;

    .line 180
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mReceivedStickyEnabled:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mReceivedStickyEnabled:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pInfo;)Landroid/net/wifi/p2p/WifiP2pInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnect:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnect:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectFooter:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->send()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->useCustomActionBar(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/preference/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/preference/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/preference/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Lcom/android/settings/ProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->addThisDevicePreference()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$900()Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method private addThisDevicePreference()V
    .locals 3

    .prologue
    .line 1083
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1084
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1085
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1093
    :cond_0
    :goto_0
    const v1, 0x7f0201a2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 1094
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1096
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1097
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1098
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1099
    return-void

    .line 1087
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_p2p_device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1089
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1090
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private convertDevAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "addr"

    .prologue
    const/16 v8, 0xe

    const/16 v7, 0xc

    const/4 v6, 0x0

    .line 798
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    .line 799
    .local v1, partialMacAddr:Ljava/util/Formatter;
    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 800
    .local v2, subString:Ljava/lang/String;
    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 802
    .local v0, enable:I
    xor-int/lit16 v0, v0, 0x80

    .line 803
    const-string v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 805
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 3
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 843
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 844
    .local v0, config:Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 846
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 847
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 855
    :goto_0
    return-object v0

    .line 848
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 849
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x2

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 850
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 851
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x1

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 853
    :cond_2
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0
.end method

.method private getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "mac"

    .prologue
    const/16 v3, 0x11

    .line 809
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0xe

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 812
    .end local p1
    :cond_0
    return-object p1
.end method

.method private isP2pConnected()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 829
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 830
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 832
    .local v2, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_0

    .line 833
    const/4 v3, 0x1

    .line 839
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #netInfo:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v3

    .line 836
    :catch_0
    move-exception v1

    .line 837
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "WifiP2pDevicePicker"

    const-string v5, "isP2pConnected - NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isP2pEnabled()Z
    .locals 5

    .prologue
    .line 817
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 818
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 820
    .local v2, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 824
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #netInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 821
    :catch_0
    move-exception v1

    .line 822
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiP2pDevicePicker"

    const-string v4, "isP2pEnabled - NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private send()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, -0x1

    const/4 v1, 0x1

    .line 1026
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1027
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0903ba

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1079
    :goto_0
    return v0

    .line 1031
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1034
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1035
    const-string v2, "com.android.settings.wifi.p2p.WifiP2pDeviceList"

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1036
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    invoke-virtual {v2, v6, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1038
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->finish()V

    :goto_1
    move v0, v1

    .line 1079
    goto :goto_0

    .line 1044
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 1045
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1046
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    .line 1047
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v3, :cond_2

    .line 1048
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v5, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$8;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$8;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v3, v4, v0, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_2

    .line 1059
    :cond_3
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mConnectInProgress:Z

    .line 1061
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1062
    const-string v2, "com.android.settings.wifi.p2p.WifiP2pDeviceList"

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1063
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    invoke-virtual {v2, v6, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1065
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->finish()V

    goto :goto_1

    .line 1067
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$9;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$9;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_1
.end method

.method private setP2pMenu(I)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x5

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 968
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 969
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->useCustomActionBar(Z)V

    .line 971
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-eqz v0, :cond_4

    .line 972
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->saveMenuItemIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 973
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->revertMenuItemIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 979
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 1023
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v1

    .line 969
    goto :goto_0

    .line 975
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->saveMenuItemIcon:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 976
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->revertMenuItemIcon:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 981
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const v2, 0x7f090392

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 984
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-eqz v0, :cond_6

    .line 985
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const v1, 0x7f02008d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 986
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 991
    :goto_3
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const v1, 0x7f090392

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 988
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 989
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_3

    .line 994
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-eqz v0, :cond_8

    .line 995
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const v1, 0x7f02008f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 996
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1001
    :goto_4
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const v1, 0x7f09062e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 998
    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 999
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_4

    .line 1004
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-eqz v0, :cond_a

    .line 1005
    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    const v1, 0x7f02008c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1006
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1012
    :goto_5
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1013
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    const v1, 0x7f0903b1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 1009
    :cond_a
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1010
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_5

    .line 1016
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1017
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 979
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setScanTimer(ZZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 859
    if-eqz p1, :cond_1

    .line 860
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 861
    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 862
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 863
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 864
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 865
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 866
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 868
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 869
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 870
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 871
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 872
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 877
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    .line 878
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 880
    const-string v0, "WifiP2pDevicePicker"

    const-string v1, "setScanTimer - true ===> discoverPeersWithFlush one time for 30 sec"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$7;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$7;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeersWithFlush(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 904
    :cond_0
    :goto_0
    return-void

    .line 892
    :cond_1
    const-string v0, "WifiP2pDevicePicker"

    const-string v1, "setScanTimer - false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    .line 894
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v3}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 896
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    .line 897
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 900
    if-eqz p2, :cond_0

    .line 901
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestP2pListen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0
.end method

.method private showMultiConnectDevices()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 907
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->useCustomActionBar(Z)V

    .line 908
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    .line 910
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Landroid/preference/CheckBoxPreference;

    .line 911
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0903b9

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 912
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    .line 913
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 914
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 917
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 918
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isInvitationProcedureCapable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 919
    new-instance v4, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 920
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v5

    .line 921
    invoke-interface {v5, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    invoke-virtual {v4, v6}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setChecked(Z)V

    .line 924
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .line 925
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v4}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    :goto_1
    move v1, v0

    .line 926
    goto :goto_0

    .line 929
    :cond_1
    if-lez v1, :cond_2

    .line 930
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 932
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectFooter:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 933
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private useCustomActionBar(Z)V
    .locals 7
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 936
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 938
    if-eqz p1, :cond_3

    .line 939
    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-eqz v1, :cond_1

    .line 940
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->saveMenuItemIcon:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 941
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->revertMenuItemIcon:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 947
    :goto_0
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 950
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v5, v5, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 953
    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-eqz v1, :cond_2

    .line 954
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 965
    :goto_1
    return-void

    .line 944
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->saveMenuItemIcon:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 945
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->revertMenuItemIcon:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 956
    :cond_2
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto :goto_1

    .line 959
    :cond_3
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 961
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 962
    const v1, 0x7f0903ae

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 963
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f0b003b

    const/4 v3, 0x1

    .line 312
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    .line 317
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v4, "layout_inflater"

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 324
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04012a

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    .line 326
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    const v4, 0x7f0b03b0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->saveMenuItem:Landroid/view/View;

    .line 327
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    const v4, 0x7f0b03ae

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->revertMenuItem:Landroid/view/View;

    .line 328
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    const v4, 0x7f0b03b1

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->saveMenuItemText:Landroid/view/View;

    .line 329
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->saveMenuItem:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->saveMenuItemIcon:Landroid/view/View;

    .line 330
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    const v4, 0x7f0b03af

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->revertMenuItemText:Landroid/view/View;

    .line 331
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->revertMenuItem:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->revertMenuItemIcon:Landroid/view/View;

    .line 333
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->saveMenuItem:Landroid/view/View;

    new-instance v4, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$2;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$2;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->revertMenuItem:Landroid/view/View;

    new-instance v4, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$3;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$3;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->useCustomActionBar(Z)V

    .line 356
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->addThisDevicePreference()V

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setForcedClick(Z)V

    .line 359
    return-void

    .line 317
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "WifiP2pDevicePicker"

    const-string v4, "Fragment not attached to Activity"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x2

    .line 532
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    .line 534
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    .line 535
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x5

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    .line 537
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 538
    return-void

    .line 532
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 534
    goto :goto_1

    .line 535
    :cond_3
    const/4 v0, 0x4

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 373
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 375
    const v0, 0x7f070086

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->addPreferencesFromResource(I)V

    .line 377
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 384
    .local v6, activity:Landroid/app/Activity;
    const-string v0, "available"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ProgressCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    .line 385
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v7}, Lcom/android/settings/ProgressCategory;->setIgnoreNoDevice(Z)V

    .line 386
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v7}, Lcom/android/settings/ProgressCategory;->setIgnoreMessage(Z)V

    .line 387
    const-string v0, "connected"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    .line 388
    const-string v0, "busy"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    .line 389
    const-string v0, "this_device"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevicePref:Landroid/preference/PreferenceGroup;

    .line 390
    const-string v0, "no_device"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 394
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;JJ)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanTimer:Landroid/os/CountDownTimer;

    .line 412
    const-string v0, "wifip2p"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 413
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_2

    .line 414
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v6, v1, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 415
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_1

    .line 417
    const-string v0, "WifiP2pDevicePicker"

    const-string v1, "Failed to set up connection with wifi p2p service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iput-object v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 428
    :cond_0
    :goto_0
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$5;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$5;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 446
    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setHasOptionsMenu(Z)V

    .line 449
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 450
    return-void

    .line 420
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_0

    .line 424
    :cond_2
    const-string v0, "WifiP2pDevicePicker"

    const-string v1, "mWifiP2pManager is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    const v7, 0x7f0905f3

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 639
    if-ne p1, v4, :cond_1

    .line 640
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090392

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0903b3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0905f4

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 646
    .local v0, dialog:Landroid/app/AlertDialog;
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanDialog:Landroid/app/AlertDialog;

    .line 656
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_0
    :goto_0
    return-object v0

    .line 648
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 649
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090377

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903a9

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget v6, Landroid/net/wifi/p2p/WifiP2pManager;->MAX_CLIENT_SUPPORT:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 654
    .restart local v0       #dialog:Landroid/app/AlertDialog;
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v4, 0x5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 510
    const v2, 0x7f090392

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    .line 513
    const/4 v2, 0x2

    const v3, 0x7f0903b1

    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    .line 515
    iget-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-eqz v2, :cond_2

    .line 516
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const v3, 0x7f02008d

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 517
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 519
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    const v3, 0x7f02008c

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 520
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 528
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 520
    goto :goto_0

    .line 524
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 525
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v0

    :cond_3
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 364
    const v1, 0x7f04012b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 367
    .local v0, v:Landroid/view/View;
    const v1, 0x7f0b0301

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectFooter:Landroid/widget/TextView;

    .line 368
    return-object v0
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 502
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    .line 503
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mConnectInProgress:Z

    if-nez v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 506
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 542
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 565
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_1
    return v0

    .line 544
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->finish()V

    goto :goto_0

    .line 547
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 548
    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    if-nez v1, :cond_1

    .line 549
    invoke-direct {p0, v0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V

    goto :goto_1

    .line 550
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    if-eqz v1, :cond_0

    .line 551
    invoke-direct {p0, v2, v2}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V

    goto :goto_1

    .line 554
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->showDialog(I)V

    goto :goto_1

    .line 558
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v1, :cond_0

    .line 559
    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    .line 560
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 561
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->showMultiConnectDevices()V

    goto :goto_1

    .line 542
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 485
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 487
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 489
    invoke-direct {p0, v1, v1}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V

    .line 494
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 497
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 498
    return-void

    .line 491
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mConnectInProgress:Z

    if-nez v0, :cond_0

    .line 492
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V

    goto :goto_0
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 18
    .parameter "peers"

    .prologue
    .line 660
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    .line 662
    .local v10, preferenceScreen:Landroid/preference/PreferenceScreen;
    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 664
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v15}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 665
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v15}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 666
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v15}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 667
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v15}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 669
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v15

    if-nez v15, :cond_0

    .line 670
    const-string v15, "WifiP2pDevicePicker"

    const-string v16, "return, P2P is not enabled..."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :goto_0
    return-void

    .line 674
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v15}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v7

    .line 676
    .local v7, devices:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v15

    if-nez v15, :cond_b

    .line 677
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const v16, 0x7f090384

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/ProgressCategory;->setTitle(I)V

    .line 678
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/ProgressCategory;->setEnabled(Z)V

    .line 679
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 681
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 683
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 684
    :cond_1
    const-string v15, "WifiP2pDevicePicker"

    const-string v16, "no devices found"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 792
    :cond_2
    :goto_1
    sput-object p1, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    goto :goto_0

    .line 689
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 691
    const/4 v2, 0x0

    .local v2, av_cnt:I
    const/4 v3, 0x0

    .line 693
    .local v3, busy_cnt:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const v16, 0x7f090384

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/ProgressCategory;->setTitle(I)V

    .line 694
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/ProgressCategory;->setEnabled(Z)V

    .line 695
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 697
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    const v16, 0x7f090386

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 698
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 699
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 701
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 702
    .local v9, peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v15, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v15, :cond_5

    invoke-virtual {v9}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_6

    :cond_5
    invoke-virtual {v9}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v15

    if-nez v15, :cond_6

    .line 704
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v15, v15, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v0, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 705
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    new-instance v16, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v9}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 706
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 711
    :cond_6
    new-instance v11, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v11, v15, v9}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 716
    .local v11, temp:Lcom/android/settings/wifi/p2p/WifiP2pPeer;
    add-int/lit8 v2, v2, 0x1

    .line 717
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v15, v11}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 718
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v0, v11, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_2

    .line 722
    .end local v9           #peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v11           #temp:Lcom/android/settings/wifi/p2p/WifiP2pPeer;
    :cond_7
    if-gtz v2, :cond_8

    .line 723
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 725
    :cond_8
    if-lez v3, :cond_9

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-eqz v15, :cond_a

    .line 726
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 728
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-eqz v15, :cond_2

    .line 729
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->showMultiConnectDevices()V

    goto/16 :goto_1

    .line 734
    .end local v2           #av_cnt:I
    .end local v3           #busy_cnt:I
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 735
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 736
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 738
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    const v16, 0x7f090385

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 739
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 740
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 742
    const/4 v6, 0x0

    .line 743
    .local v6, devCount:I
    const/4 v15, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    .line 745
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v15, :cond_2

    .line 746
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v15}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 747
    const-string v15, "WifiP2pDevicePicker"

    const-string v16, "I am GO"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v15}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 750
    .local v4, client:Landroid/net/wifi/p2p/WifiP2pDevice;
    const/4 v15, 0x0

    iput v15, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 751
    new-instance v12, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v12, v15, v4}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 752
    .local v12, temp_c:Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;
    invoke-interface {v7, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 753
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setChecked(Z)V

    .line 755
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v15, v12}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 756
    add-int/lit8 v6, v6, 0x1

    .line 757
    goto :goto_3

    .line 759
    .end local v4           #client:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v12           #temp_c:Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v15}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 760
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v15, v15, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->convertDevAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 761
    .local v5, convertedAddr:Ljava/lang/String;
    const-string v15, "WifiP2pDevicePicker"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "I am GC, my GO addr : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", converted : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_e
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 765
    .restart local v9       #peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v15, v15, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v0, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f

    iget-object v15, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 767
    :cond_f
    const/4 v15, 0x0

    iput v15, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 768
    new-instance v14, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v14, v15, v9}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 769
    .local v14, temp_go:Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;
    invoke-interface {v7, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 770
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setChecked(Z)V

    .line 772
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v15, v14}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 773
    add-int/lit8 v6, v6, 0x1

    .line 774
    goto :goto_4

    .line 776
    .end local v14           #temp_go:Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;
    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v15, v15, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v0, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v15, v15, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v0, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_e

    .line 778
    const/4 v15, 0x0

    iput v15, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 779
    new-instance v13, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v13, v15, v9}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 780
    .local v13, temp_gc:Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;
    invoke-interface {v7, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 781
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setChecked(Z)V

    .line 783
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v15, v13}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 784
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 570
    instance-of v3, p2, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-eqz v3, :cond_0

    move-object v3, p2

    .line 571
    check-cast v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iput-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 572
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v3, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 573
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->send()Z

    .line 575
    :cond_0
    instance-of v3, p2, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    if-eqz v3, :cond_2

    move-object v1, p2

    .line 576
    check-cast v1, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    .line 577
    .local v1, peer:Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 578
    invoke-virtual {v1}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 579
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    sget v4, Landroid/net/wifi/p2p/WifiP2pManager;->MAX_CLIENT_SUPPORT:I

    if-lt v3, v4, :cond_4

    .line 580
    invoke-virtual {v1, v6}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setChecked(Z)V

    .line 581
    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->showDialog(I)V

    .line 609
    :cond_1
    :goto_0
    const-string v3, "WifiP2pDevicePicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# of Selected Peers : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    .end local v1           #peer:Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_3

    .line 612
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v3}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sget v4, Landroid/net/wifi/p2p/WifiP2pManager;->MAX_CLIENT_SUPPORT:I

    if-le v3, v4, :cond_a

    .line 613
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 614
    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->showDialog(I)V

    .line 634
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    .line 584
    .restart local v1       #peer:Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;
    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v4, v1, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v3, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_0

    .line 587
    :cond_5
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v4, v1, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v3, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    goto :goto_0

    .line 590
    :cond_6
    invoke-virtual {v1}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 591
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    sget v4, Landroid/net/wifi/p2p/WifiP2pManager;->MAX_CLIENT_SUPPORT:I

    if-lt v3, v4, :cond_7

    .line 592
    invoke-virtual {v1, v6}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setChecked(Z)V

    .line 593
    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->showDialog(I)V

    goto :goto_0

    .line 596
    :cond_7
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v4, v1, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v3, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 597
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v3}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 599
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 604
    :cond_8
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 605
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 606
    :cond_9
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v4, v1, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v3, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    goto/16 :goto_0

    .line 617
    .end local v1           #peer:Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;
    :cond_a
    const/4 v0, 0x1

    .local v0, i:I
    :goto_2
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v3}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_d

    .line 618
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v3, v0}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 619
    .local v2, temp:Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    if-eqz v3, :cond_b

    move-object v1, v2

    .line 620
    check-cast v1, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    .line 621
    .restart local v1       #peer:Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setChecked(Z)V

    .line 622
    invoke-virtual {v1}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 623
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v4, v1, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v3, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 617
    .end local v1           #peer:Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;
    :cond_b
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 626
    .restart local v1       #peer:Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;
    :cond_c
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v4, v1, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v3, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    goto :goto_3

    .line 630
    .end local v1           #peer:Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;
    .end local v2           #temp:Landroid/preference/Preference;
    :cond_d
    const-string v3, "WifiP2pDevicePicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SelectAll, # of Selected Peers : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 454
    const-string v0, "WifiP2pDevicePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume(), p2p enabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", p2p connected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 458
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$6;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$6;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 479
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 480
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 481
    return-void
.end method
