.class public Lcom/android/settings/wifi/WifiApDialog;
.super Landroid/app/AlertDialog;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private customView:Landroid/view/View;

.field private hideSsidDoNotShowAgain:Z

.field private isShowPassword:Z

.field private mChannel:Landroid/widget/Spinner;

.field private mContext:Landroid/content/Context;

.field public mDismissIfOpen:Z

.field private mHideSsid:Landroid/widget/CheckBox;

.field private mHideSsidDoNotShowAgain:Landroid/widget/CheckBox;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMacaddrAcl:I

.field private mPassword:Landroid/widget/EditText;

.field private mSecurity:Landroid/widget/Spinner;

.field private mSecurityMsg:Landroid/widget/TextView;

.field private mSecurityTypeIndex:I

.field private mSelectedChannel:I

.field private mSelectedMaxClient:I

.field private mSelectedTimeoutValue:I

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSsid:Landroid/widget/EditText;

.field private mTempPassworld:Ljava/lang/String;

.field private mTempSecurityTypeIndex:I

.field private mTempSsid:Ljava/lang/String;

.field private mUserSelectOpenSecurity:Z

.field private mView:Landroid/view/View;

.field mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private maxClientSpinner:Landroid/widget/Spinner;

.field passwordWatcher:Landroid/text/TextWatcher;

.field ssidWatcher:Landroid/text/TextWatcher;

.field private timeoutSettingsSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .parameter "context"
    .parameter "listener"
    .parameter "wifiConfig"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 129
    const v0, 0x7f10002b

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 83
    iput v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 84
    iput v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSecurityTypeIndex:I

    .line 88
    iput v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mMacaddrAcl:I

    .line 102
    iput-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSsid:Ljava/lang/String;

    .line 103
    iput-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;

    .line 107
    iput v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    .line 108
    iput v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxClient:I

    .line 113
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApDialog;->hideSsidDoNotShowAgain:Z

    .line 119
    iput v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedTimeoutValue:I

    .line 122
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    .line 123
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mDismissIfOpen:Z

    .line 125
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApDialog;->isShowPassword:Z

    .line 488
    new-instance v0, Lcom/android/settings/wifi/WifiApDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApDialog$1;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->ssidWatcher:Landroid/text/TextWatcher;

    .line 512
    new-instance v0, Lcom/android/settings/wifi/WifiApDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApDialog$2;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->passwordWatcher:Landroid/text/TextWatcher;

    .line 131
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 132
    iput-object p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 133
    if-eqz p3, :cond_0

    .line 134
    invoke-static {p3}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 136
    iget v0, p3, Landroid/net/wifi/WifiConfiguration;->channel:I

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    .line 137
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mMacaddrAcl:I

    .line 139
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxClient:I

    .line 141
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApDialog;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiApDialog;->getTimeoutIndexFromValue(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedTimeoutValue:I

    .line 144
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiApDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/WifiApDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiApDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiApDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiApDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/wifi/WifiApDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiApDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->restartFocusedViewInput()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsidDoNotShowAgain:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/wifi/WifiApDialog;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsidDoNotShowAgain:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiApDialog;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->customView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiApDialog;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/settings/wifi/WifiApDialog;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method public static getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .parameter "wifiConfig"

    .prologue
    const/4 v0, 0x1

    .line 179
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    :goto_0
    return v0

    .line 181
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    const/4 v0, 0x2

    goto :goto_0

    .line 184
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTimeoutIndexFromValue(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 807
    sparse-switch p1, :sswitch_data_0

    .line 821
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 809
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 811
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 813
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 815
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 817
    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 819
    :sswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 807
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12c -> :sswitch_1
        0x258 -> :sswitch_2
        0x4b0 -> :sswitch_3
        0x708 -> :sswitch_4
        0xe10 -> :sswitch_5
    .end sparse-switch
.end method

.method private getTimeoutValueFromIndex(I)I
    .locals 1
    .parameter "index"

    .prologue
    const/16 v0, 0x4b0

    .line 825
    packed-switch p1, :pswitch_data_0

    .line 839
    :goto_0
    :pswitch_0
    return v0

    .line 827
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 829
    :pswitch_2
    const/16 v0, 0x12c

    goto :goto_0

    .line 831
    :pswitch_3
    const/16 v0, 0x258

    goto :goto_0

    .line 835
    :pswitch_4
    const/16 v0, 0x708

    goto :goto_0

    .line 837
    :pswitch_5
    const/16 v0, 0xe10

    goto :goto_0

    .line 825
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getTimeoutValueFromSheredPreference(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 801
    const-string v0, "SAMSUNG_HOTSPOT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    .line 802
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CONNECTION_TIMEOUT"

    const-string v2, "600"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private restartFocusedViewInput()V
    .locals 2

    .prologue
    .line 741
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 742
    .local v0, focusedView:Landroid/view/View;
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 743
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 744
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 745
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 746
    :cond_2
    if-eqz v0, :cond_0

    .line 747
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 749
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiApDialog;->restartViewInput(Landroid/view/View;)V

    goto :goto_0
.end method

.method private restartViewInput(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 755
    if-eqz p1, :cond_0

    .line 756
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 757
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 758
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 761
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private setTimeout(I)V
    .locals 4
    .parameter "timeout"

    .prologue
    .line 792
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 793
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const-string v2, "SAMSUNG_HOTSPOT"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    .line 794
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 796
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "CONNECTION_TIMEOUT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 797
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 798
    return-void
.end method

.method private showSecurityFields()V
    .locals 6

    .prologue
    const v5, 0x7f0b0345

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 659
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0344

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityMsg:Landroid/widget/TextView;

    .line 660
    iget v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-nez v1, :cond_1

    .line 661
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 662
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 663
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 665
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 666
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 672
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 673
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 674
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 677
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 679
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0346

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x90

    :goto_1
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 684
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, password:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 686
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->invalidate()V

    goto :goto_0

    .line 679
    .end local v0           #password:Ljava/lang/String;
    :cond_3
    const/16 v1, 0x80

    goto :goto_1
.end method

.method private validate()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 538
    const/4 v2, 0x0

    .line 539
    .local v2, trimedSsidLength:I
    const/4 v1, 0x0

    .line 540
    .local v1, trimedPasswordLength:I
    const/4 v0, 0x1

    .line 542
    .local v0, enabled:Z
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v3, :cond_1

    .line 543
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 545
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 546
    :cond_0
    const/4 v0, 0x0

    .line 550
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    if-eqz v3, :cond_2

    .line 551
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 554
    :cond_2
    iget v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v3, v5, :cond_4

    :cond_3
    if-eqz v1, :cond_6

    :cond_4
    iget v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-eq v3, v4, :cond_5

    iget v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v3, v5, :cond_7

    :cond_5
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_7

    .line 556
    :cond_6
    const/4 v0, 0x0

    .line 559
    :cond_7
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 560
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 603
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    .line 604
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 600
    return-void
.end method

.method public dismissSpinnerPopup()V
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 694
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 695
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 696
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 697
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 698
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 699
    :cond_3
    return-void
.end method

.method public getCheckShowPassword()Z
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0346

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 189
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 197
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 200
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 203
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 204
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mMacaddrAcl:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 206
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxClient:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 209
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    packed-switch v2, :pswitch_data_0

    .line 232
    const/4 v0, 0x0

    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_1
    return-object v0

    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    move v2, v4

    .line 200
    goto :goto_0

    .line 211
    :pswitch_0
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    .line 215
    :pswitch_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 216
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 217
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, password:Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1

    .line 224
    .end local v1           #password:Ljava/lang/String;
    :pswitch_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 225
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 226
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    .restart local v1       #password:Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getOpenWarningFlag()Z
    .locals 1

    .prologue
    .line 732
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0343

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    .line 469
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    packed-switch v0, :pswitch_data_0

    .line 485
    :cond_2
    :goto_0
    return-void

    .line 471
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 474
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 475
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 478
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 479
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 469
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 564
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 594
    .end local p1
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 566
    .restart local p1
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x90

    :goto_1
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 571
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, password:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 573
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->invalidate()V

    goto :goto_0

    .line 566
    .end local v0           #password:Ljava/lang/String;
    :cond_1
    const/16 v1, 0x80

    goto :goto_1

    .line 576
    .restart local p1
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0348

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    goto :goto_2

    .line 582
    .restart local p1
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 583
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const v4, 0x7f090340

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 585
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const-string v4, "SAMSUNG_HOTSPOT"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    .line 586
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v4, "HIDE_SSID_DO_NOTSHOW_AGAIN"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_4

    move v1, v2

    :cond_4
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApDialog;->hideSsidDoNotShowAgain:Z

    .line 587
    const-string v1, "WifiApDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideSsidDoNotShowAgain = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiApDialog;->hideSsidDoNotShowAgain:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiApDialog;->hideSsidDoNotShowAgain:Z

    if-nez v1, :cond_0

    .line 589
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->showHideSsidWarningDialog()V

    goto/16 :goto_0

    .line 564
    :pswitch_data_0
    .packed-switch 0x7f0b0342
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const v11, 0x7f0b0346

    const/4 v10, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v8, 0x7f040115

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    .line 291
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b0343

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    .line 293
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiApDialog;->setView(Landroid/view/View;)V

    .line 294
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiApDialog;->setInverseBackgroundForced(Z)V

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 297
    .local v2, context:Landroid/content/Context;
    iput-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    .line 298
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/settings/wifi/WifiApDialog;->sSalesCode:Ljava/lang/String;

    .line 300
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b018f

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b0341

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    .line 303
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b02fb

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    .line 304
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 307
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b0342

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    .line 308
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 309
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v8, v8, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 310
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b0347

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 313
    .local v0, advanced:Landroid/widget/CheckBox;
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 314
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b0349

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    .line 317
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v5, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 318
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    iget v8, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    invoke-virtual {v5, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 321
    const v5, 0x7f090361

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v10, v5, v8}, Lcom/android/settings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 322
    const/4 v5, -0x2

    const v8, 0x7f090362

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v8, v9}, Lcom/android/settings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 325
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v5, :cond_1

    .line 326
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v8, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 328
    const v5, 0x7f09034a

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiApDialog;->setTitle(I)V

    .line 333
    :goto_0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v8, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v8, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v5, v5, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-nez v5, :cond_6

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 342
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    iget v8, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-virtual {v5, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 343
    iget v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_1

    .line 345
    :cond_0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v8, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 346
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 356
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiApDialog;->ssidWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 357
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiApDialog;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 359
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 362
    .local v3, cr:Landroid/content/ContentResolver;
    const/4 v4, 0x1

    .line 363
    .local v4, defaultValue:I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v8, "CscFeature_Wifi_EnableShowPasswordAsDefault"

    invoke-virtual {v5, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "USC"

    sget-object v8, Lcom/android/settings/wifi/WifiApDialog;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 365
    :cond_2
    const/4 v4, 0x1

    .line 367
    :cond_3
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    const-string v8, "wifi_ap_show_passwd"

    invoke-static {v3, v8, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_8

    :goto_3
    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 371
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v5, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 373
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v6, 0x7f0b034b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    .line 375
    const/4 v1, 0x0

    .line 414
    .local v1, changeableMaxvalue:I
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v5, :cond_4

    .line 415
    if-eqz v1, :cond_9

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v5, v5, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-ge v1, v5, :cond_9

    .line 416
    iput v10, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxClient:I

    .line 420
    :cond_4
    :goto_4
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 421
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    iget v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxClient:I

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 427
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v6, 0x7f0b034d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    .line 429
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 430
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    iget v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedTimeoutValue:I

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 436
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 438
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->showSecurityFields()V

    .line 439
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    .line 440
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v5, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 441
    return-void

    .line 330
    .end local v1           #changeableMaxvalue:I
    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v4           #defaultValue:I
    :cond_5
    const v5, 0x7f0903e8

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiApDialog;->setTitle(I)V

    goto/16 :goto_0

    :cond_6
    move v5, v7

    .line 337
    goto/16 :goto_1

    .line 348
    :cond_7
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v8, v8, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .restart local v3       #cr:Landroid/content/ContentResolver;
    .restart local v4       #defaultValue:I
    :cond_8
    move v6, v7

    .line 367
    goto :goto_3

    .line 418
    .restart local v1       #changeableMaxvalue:I
    :cond_9
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v5, v5, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxClient:I

    goto :goto_4
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 609
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 645
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 646
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    new-instance v2, Lcom/android/settings/wifi/WifiApDialog$3;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApDialog$3;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 652
    :cond_0
    return-void

    .line 611
    :sswitch_0
    iget v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    iput v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSecurityTypeIndex:I

    .line 612
    iput p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 615
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 617
    .local v0, context:Landroid/content/Context;
    iget v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-nez v1, :cond_1

    .line 618
    const v1, 0x7f0903ed

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 621
    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    .line 630
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->showSecurityFields()V

    .line 631
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    goto :goto_0

    .line 634
    .end local v0           #context:Landroid/content/Context;
    :sswitch_1
    iput p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    goto :goto_0

    .line 638
    :sswitch_2
    iput p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxClient:I

    goto :goto_0

    .line 641
    :sswitch_3
    iput p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedTimeoutValue:I

    .line 642
    iget v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedTimeoutValue:I

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiApDialog;->getTimeoutValueFromIndex(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setTimeout(I)V

    goto :goto_0

    .line 609
    :sswitch_data_0
    .sparse-switch
        0x7f0b0343 -> :sswitch_0
        0x7f0b0349 -> :sswitch_1
        0x7f0b034b -> :sswitch_2
        0x7f0b034d -> :sswitch_3
    .end sparse-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 656
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 597
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 7
    .parameter "hasFocus"

    .prologue
    const v6, 0x7f0b0346

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 708
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 710
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0343

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 711
    .local v1, mSecurity:Landroid/widget/Spinner;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/WifiPolicy;->isWifiApSettingUserModificationAllowed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 712
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 713
    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 714
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 715
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 722
    :goto_0
    return-void

    .line 717
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 718
    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 719
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 720
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setCheckShowPassword(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 703
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiApDialog;->isShowPassword:Z

    .line 704
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 445
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 446
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0348

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0347

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 456
    :cond_1
    return-void

    .line 453
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showHideSsidWarningDialog()V
    .locals 4

    .prologue
    .line 765
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 766
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040119

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->customView:Landroid/view/View;

    .line 767
    const v1, 0x7f090346

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 768
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->customView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 769
    const v1, 0x7f0905f3

    new-instance v2, Lcom/android/settings/wifi/WifiApDialog$4;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApDialog$4;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 782
    new-instance v1, Lcom/android/settings/wifi/WifiApDialog$5;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiApDialog$5;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 787
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 788
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 789
    return-void
.end method
