.class public Lcom/android/settings/LockScreenSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LockScreenSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private isWeatherEnabled:Z

.field private mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

.field private mClock:Landroid/preference/CheckBoxPreference;

.field private mDualclock:Landroid/preference/SwitchPreferenceScreen;

.field private mHelpText:Landroid/preference/CheckBoxPreference;

.field private mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

.field private mInkEffect:Landroid/preference/PreferenceScreen;

.field mInkEffectSummary:[I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

.field private mMotionDialog:Landroid/app/AlertDialog;

.field private mRippleEffect:Landroid/preference/CheckBoxPreference;

.field private mSayCommand:Landroid/preference/CheckBoxPreference;

.field private mWeather:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/LockScreenSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 126
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/LockScreenSettings;->mInkEffectSummary:[I

    return-void

    :array_0
    .array-data 0x4
        0x54t 0xdt 0x9t 0x7ft
        0x55t 0xdt 0x9t 0x7ft
        0x56t 0xdt 0x9t 0x7ft
        0x57t 0xdt 0x9t 0x7ft
        0x58t 0xdt 0x9t 0x7ft
        0x59t 0xdt 0x9t 0x7ft
        0x5at 0xdt 0x9t 0x7ft
        0x5bt 0xdt 0x9t 0x7ft
    .end array-data
.end method

.method private static AppServiceOff(I)I
    .locals 0
    .parameter "value"

    .prologue
    .line 592
    xor-int/lit8 p0, p0, 0x1

    .line 593
    return p0
.end method

.method private static AppServiceOn(I)I
    .locals 0
    .parameter "value"

    .prologue
    .line 587
    or-int/lit8 p0, p0, 0x1

    .line 588
    return p0
.end method

.method static synthetic access$000(Lcom/android/settings/LockScreenSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/LockScreenSettings;->broadcastMotionChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/LockScreenSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private broadcastMotionChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 557
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 558
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 559
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 560
    return-void
.end method

.method private updateState()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 285
    iget-object v7, p0, Lcom/android/settings/LockScreenSettings;->mClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "show_clock"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_9

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "aw_daemon_service_key_app_service_status"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    and-int/lit8 v2, v4, 0x1

    .line 289
    .local v2, mAppLockScreen:I
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "pen_hovering_ink_effect"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 291
    .local v3, mInkEffectColor:I
    const-string v4, "LockScreenSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mInkEffectColor : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v4, :cond_0

    .line 294
    if-ne v2, v5, :cond_a

    .line 295
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 300
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "dualclock_menu_settings"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_b

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 301
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v4, :cond_1

    .line 302
    iget-object v7, p0, Lcom/android/settings/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "information_ticker"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_c

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 304
    :cond_1
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v4, :cond_2

    .line 305
    iget-object v7, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "motion_unlock_camera_short_cut"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_d

    move v4, v5

    :goto_4
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 308
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "lockscreen_wallpaper"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_e

    move v0, v6

    .line 309
    .local v0, isLiveWallpaper:Z
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "lock_motion_tilt_to_unlock"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 311
    .local v1, isMotionLock:I
    if-nez v0, :cond_3

    if-lez v1, :cond_f

    .line 312
    :cond_3
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 315
    :goto_6
    iget-object v7, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "lockscreen_ripple_effect"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_10

    move v4, v5

    :goto_7
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 316
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 317
    if-nez v0, :cond_4

    if-lez v1, :cond_5

    .line 318
    :cond_4
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 320
    :cond_5
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/LockScreenSettings;->mInkEffectSummary:[I

    aget v8, v8, v3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_6

    .line 323
    iget-object v7, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "unlock_text"

    invoke-static {v4, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_11

    move v4, v5

    :goto_8
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 325
    :cond_6
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_7

    .line 326
    iget-object v7, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "wake_up_lock_screen"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_12

    move v4, v5

    :goto_9
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 329
    :cond_7
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v4, :cond_8

    .line 330
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_screen_shortcut"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_13

    :goto_a
    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 333
    :cond_8
    return-void

    .end local v0           #isLiveWallpaper:Z
    .end local v1           #isMotionLock:I
    .end local v2           #mAppLockScreen:I
    .end local v3           #mInkEffectColor:I
    :cond_9
    move v4, v6

    .line 285
    goto/16 :goto_0

    .line 297
    .restart local v2       #mAppLockScreen:I
    .restart local v3       #mInkEffectColor:I
    :cond_a
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto/16 :goto_1

    :cond_b
    move v4, v6

    .line 300
    goto/16 :goto_2

    :cond_c
    move v4, v6

    .line 302
    goto/16 :goto_3

    :cond_d
    move v4, v6

    .line 305
    goto/16 :goto_4

    :cond_e
    move v0, v5

    .line 308
    goto/16 :goto_5

    .line 314
    .restart local v0       #isLiveWallpaper:Z
    .restart local v1       #isMotionLock:I
    :cond_f
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_6

    :cond_10
    move v4, v6

    .line 315
    goto/16 :goto_7

    :cond_11
    move v4, v6

    .line 323
    goto :goto_8

    :cond_12
    move v4, v6

    .line 326
    goto :goto_9

    :cond_13
    move v5, v6

    .line 330
    goto :goto_a
.end method


# virtual methods
.method public checkNetwork()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 565
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockScreenSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 566
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 567
    .local v3, ni:Landroid/net/NetworkInfo;
    if-nez v3, :cond_1

    .line 568
    const-string v5, "LockScreenSettings"

    const-string v6, "checkNetwork() : NetworkInfo is null. return false"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_0
    :goto_0
    return v4

    .line 571
    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 572
    .local v2, isWifiAvail:Z
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 574
    if-nez v3, :cond_2

    .line 575
    const-string v4, "LockScreenSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkNetwork() : ConnectivityManager.TYPE_MOBILE return : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    .line 576
    goto :goto_0

    .line 579
    :cond_2
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 581
    .local v1, isMobileAvail:Z
    const-string v6, "LockScreenSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isWifiAvail : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isConnected : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    if-nez v2, :cond_3

    if-eqz v1, :cond_0

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 143
    .local v6, resolver:Landroid/content/ContentResolver;
    new-instance v9, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 145
    const v9, 0x7f07003a

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->addPreferencesFromResource(I)V

    .line 148
    const-string v9, "lock_screen_shortcut"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    .line 149
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 150
    iget-object v10, p0, Lcom/android/settings/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    const-string v9, "lock_screen_shortcut"

    const/4 v11, 0x0

    invoke-static {v6, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_16

    const/4 v9, 0x1

    :goto_0
    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 151
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v9, :cond_1

    .line 152
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "Germany"

    const-string v10, "ro.csc.country_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 161
    :cond_1
    const-string v9, "clock"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClock:Landroid/preference/CheckBoxPreference;

    .line 162
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClock:Landroid/preference/CheckBoxPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 164
    const-string v9, "weather"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    .line 165
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1110049

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/LockScreenSettings;->isWeatherEnabled:Z

    .line 167
    iget-boolean v9, p0, Lcom/android/settings/LockScreenSettings;->isWeatherEnabled:Z

    if-nez v9, :cond_2

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 172
    :cond_2
    const-string v9, "dualclock_settings"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    .line 173
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 175
    const-string v9, "information_ticker"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    .line 176
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 178
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v9

    if-eqz v9, :cond_18

    .line 179
    const-string v9, "CHM"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "CMCC"

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 181
    :cond_3
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0909f5

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 194
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Setting_RemoveMenuInLockScreenTicker"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, ContentsTypeFeature:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1110047

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "-1"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    :cond_5
    const-string v9, "Germany"

    const-string v10, "ro.csc.country_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 203
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 207
    :cond_7
    const-string v9, "camera_short_cut"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    .line 208
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v9, :cond_9

    .line 209
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 212
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 213
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    .line 218
    :cond_9
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 220
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 221
    const-string v9, "LockScreenSettings"

    const-string v10, " remove Dualclock menu"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_b
    const-string v9, "ripple_effect"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    .line 225
    const-string v9, "ja"

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v10, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    const-string v1, ""

    .line 226
    .local v1, dot:Ljava/lang/String;
    :goto_2
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090d52

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090d9c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "pen_hovering_ink_effect"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 229
    .local v3, mInkEffectColor:I
    const-string v9, "ink_effect"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    .line 230
    const-string v9, "help_text"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    .line 231
    const-string v9, "say_your_wakeup"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 234
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090d88

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 238
    :cond_c
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x111004a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_e

    :cond_d
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 240
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 243
    :cond_f
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_10

    .line 248
    :cond_10
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 249
    .local v5, ps:Landroid/preference/PreferenceScreen;
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 253
    const-string v9, "set_wakeup_command"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    .line 254
    .local v7, setWakeupCommand:Landroid/preference/PreferenceScreen;
    if-eqz v7, :cond_15

    .line 255
    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 256
    .local v8, set_wakeup_commant_intent:Landroid/content/Intent;
    if-eqz v8, :cond_15

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 258
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 259
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_15

    .line 260
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_11

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 262
    :cond_11
    if-eqz v7, :cond_12

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 265
    :cond_12
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_13

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_14

    if-eqz v7, :cond_14

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    if-nez v9, :cond_14

    .line 266
    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v9, "feature_category"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 268
    :cond_14
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    if-nez v9, :cond_15

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-nez v9, :cond_15

    if-nez v7, :cond_15

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v9, "feature_category"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 275
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v8           #set_wakeup_commant_intent:Landroid/content/Intent;
    :cond_15
    return-void

    .line 150
    .end local v0           #ContentsTypeFeature:Ljava/lang/String;
    .end local v1           #dot:Ljava/lang/String;
    .end local v3           #mInkEffectColor:I
    .end local v5           #ps:Landroid/preference/PreferenceScreen;
    .end local v7           #setWakeupCommand:Landroid/preference/PreferenceScreen;
    :cond_16
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 183
    :cond_17
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0909f4

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 190
    :cond_18
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0909f2

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 225
    .restart local v0       #ContentsTypeFeature:Ljava/lang/String;
    :cond_19
    const-string v1, ". "

    goto/16 :goto_2
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 369
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 370
    .local v4, key:Ljava/lang/String;
    const-string v10, "dualclock_settings"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 371
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v9, 0x1

    .line 372
    .local v9, value:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "dualclock_menu_settings"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 517
    .end local v9           #value:I
    :cond_0
    :goto_1
    const/4 v10, 0x1

    :goto_2
    return v10

    .line 371
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 373
    .restart local p2
    :cond_2
    const-string v10, "information_ticker"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    move-object v9, p2

    .line 374
    check-cast v9, Ljava/lang/Boolean;

    .line 380
    .local v9, value:Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 381
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "sn_daemon_service_key_app_service_status"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/settings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    .line 386
    .local v5, mAppServiceStatus:I
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "sn_daemon_service_key_app_service_status"

    invoke-static {v10, v11, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 388
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 389
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "stockclock_daemon_service_key_app_service_status"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/settings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    .line 393
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v10, v11, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 395
    new-instance v2, Landroid/content/Intent;

    const-string v10, "com.sec.android.daemonapp.ap.sinanews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 396
    .local v2, intent_nw:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 397
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 398
    .local v3, intent_st:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 457
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "information_ticker"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v10, 0x1

    :goto_6
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 458
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->updateState()V

    goto :goto_1

    .line 384
    .end local v2           #intent_nw:Landroid/content/Intent;
    .end local v3           #intent_st:Landroid/content/Intent;
    .end local v5           #mAppServiceStatus:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "sn_daemon_service_key_app_service_status"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/settings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    .restart local v5       #mAppServiceStatus:I
    goto :goto_3

    .line 391
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "stockclock_daemon_service_key_app_service_status"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/settings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    goto :goto_4

    .line 399
    .end local v5           #mAppServiceStatus:I
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 400
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "yonhap_daemon_service_key_app_service_status"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/settings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    .line 405
    .restart local v5       #mAppServiceStatus:I
    :goto_7
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "yonhap_daemon_service_key_app_service_status"

    invoke-static {v10, v11, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 407
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 408
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "stockclock_daemon_service_key_app_service_status"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/settings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    .line 412
    :goto_8
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v10, v11, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 414
    new-instance v2, Landroid/content/Intent;

    const-string v10, "com.sec.android.daemonapp.ap.yonhapnews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    .restart local v2       #intent_nw:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v10, "com.sec.android.daemonapp.ap.yonhapnews"

    const-string v11, "com.sec.android.daemonapp.ap.yonhapnews.DaemonReceiver"

    invoke-direct {v0, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 420
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    .restart local v3       #intent_st:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 403
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v2           #intent_nw:Landroid/content/Intent;
    .end local v3           #intent_st:Landroid/content/Intent;
    .end local v5           #mAppServiceStatus:I
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "yonhap_daemon_service_key_app_service_status"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/settings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    .restart local v5       #mAppServiceStatus:I
    goto :goto_7

    .line 410
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "stockclock_daemon_service_key_app_service_status"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/settings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    goto :goto_8

    .line 436
    .end local v5           #mAppServiceStatus:I
    :cond_8
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "yh_daemon_service_key_app_service_status"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/settings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    .line 441
    .restart local v5       #mAppServiceStatus:I
    :goto_9
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "yh_daemon_service_key_app_service_status"

    invoke-static {v10, v11, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 443
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 444
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "stockclock_daemon_service_key_app_service_status"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/settings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    .line 448
    :goto_a
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v10, v11, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 450
    new-instance v2, Landroid/content/Intent;

    const-string v10, "com.sec.android.daemonapp.ap.yahoonews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 451
    .restart local v2       #intent_nw:Landroid/content/Intent;
    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 452
    .local v8, salesCode:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 453
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    .restart local v3       #intent_st:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 439
    .end local v2           #intent_nw:Landroid/content/Intent;
    .end local v3           #intent_st:Landroid/content/Intent;
    .end local v5           #mAppServiceStatus:I
    .end local v8           #salesCode:Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "yh_daemon_service_key_app_service_status"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/settings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    .restart local v5       #mAppServiceStatus:I
    goto :goto_9

    .line 446
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "stockclock_daemon_service_key_app_service_status"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/settings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    goto :goto_a

    .line 457
    .restart local v2       #intent_nw:Landroid/content/Intent;
    .restart local v3       #intent_st:Landroid/content/Intent;
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 460
    .end local v2           #intent_nw:Landroid/content/Intent;
    .end local v3           #intent_st:Landroid/content/Intent;
    .end local v5           #mAppServiceStatus:I
    .end local v9           #value:Ljava/lang/Boolean;
    :cond_c
    const-string v10, "weather"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    move-object v9, p2

    .line 461
    check-cast v9, Ljava/lang/Boolean;

    .line 462
    .restart local v9       #value:Ljava/lang/Boolean;
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->checkNetwork()Z

    move-result v10

    if-nez v10, :cond_d

    .line 463
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f09094c

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 465
    :cond_d
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v10

    if-nez v10, :cond_e

    .line 466
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "network"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 467
    iget-object v10, p0, Lcom/android/settings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 468
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "network"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 469
    new-instance v1, Landroid/content/Intent;

    const-string v10, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 470
    .local v1, gpsOptionIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/settings/LockScreenSettings;->startActivity(Landroid/content/Intent;)V

    .line 471
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 476
    .end local v1           #gpsOptionIntent:Landroid/content/Intent;
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "aw_daemon_service_key_app_service_status"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 477
    .local v6, mCurrentAppServiceStatus:I
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 478
    invoke-static {v6}, Lcom/android/settings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    .line 479
    .restart local v5       #mAppServiceStatus:I
    const/4 v7, 0x1

    .line 484
    .local v7, mNewValue:I
    :goto_b
    if-ne v6, v7, :cond_10

    .line 485
    const-string v10, "LockScreenSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onPreferenceChange, mCurrentAppServiceStatus:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/mNewValue:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " same"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 481
    .end local v5           #mAppServiceStatus:I
    .end local v7           #mNewValue:I
    :cond_f
    invoke-static {v6}, Lcom/android/settings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    .line 482
    .restart local v5       #mAppServiceStatus:I
    const/4 v7, 0x0

    .restart local v7       #mNewValue:I
    goto :goto_b

    .line 488
    :cond_10
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "aw_daemon_service_key_app_service_status"

    invoke-static {v10, v11, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 490
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 491
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.sec.android.widgetapp.ap.sinaweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 503
    :goto_c
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->updateState()V

    goto/16 :goto_1

    .line 492
    :cond_11
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_c

    .line 501
    :cond_12
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_c

    .line 506
    .end local v5           #mAppServiceStatus:I
    .end local v6           #mCurrentAppServiceStatus:I
    .end local v7           #mNewValue:I
    .end local v9           #value:Ljava/lang/Boolean;
    :cond_13
    const-string v10, "lock_screen_shortcut"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 507
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_14

    const/4 v9, 0x1

    .line 508
    .local v9, value:I
    :goto_d
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_screen_shortcut"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 507
    .end local v9           #value:I
    :cond_14
    const/4 v9, 0x0

    goto :goto_d

    .line 512
    .restart local p2
    :cond_15
    iget-object v10, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v10, :cond_0

    .line 513
    const-string v10, "LockScreenSettings"

    const-string v11, "onPreferenceChange, mCameraShortCut"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/settings/LockScreenSettings;->setCameraShortCut(Z)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 337
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "show_clock"

    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 339
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->updateState()V

    .line 365
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_1
    move v2, v3

    .line 338
    goto :goto_0

    .line 340
    :cond_2
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 341
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 342
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const-string v3, "SETTING_MODE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 345
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 346
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.ap.sinaweather"

    const-string v3, "com.sec.android.daemonapp.ap.sinaweather.MenuSettings"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .local v0, cn:Landroid/content/ComponentName;
    :goto_2
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 355
    invoke-virtual {p0, v1}, Lcom/android/settings/LockScreenSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 347
    .end local v0           #cn:Landroid/content/ComponentName;
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 348
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.ap.kweather"

    const-string v3, "com.sec.android.daemonapp.ap.kweather.MenuSettings"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #cn:Landroid/content/ComponentName;
    goto :goto_2

    .line 352
    .end local v0           #cn:Landroid/content/ComponentName;
    :cond_4
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.ap.accuweather"

    const-string v3, "com.sec.android.daemonapp.ap.accuweather.MenuSettings"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #cn:Landroid/content/ComponentName;
    goto :goto_2

    .line 356
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_ripple_effect"

    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_6

    :goto_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 359
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    move v2, v3

    .line 357
    goto :goto_3

    .line 360
    :cond_7
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 361
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "unlock_text"

    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_8

    :goto_4
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_8
    move v2, v3

    goto :goto_4

    .line 362
    :cond_9
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wake_up_lock_screen"

    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_a

    :goto_5
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_a
    move v2, v3

    goto :goto_5
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 279
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 280
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->updateState()V

    .line 281
    return-void
.end method

.method public setCameraShortCut(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 522
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 523
    .local v0, int_value:I
    :goto_0
    if-eqz p1, :cond_3

    .line 524
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_engine"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 525
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_unlock_camera_short_cut"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 554
    :goto_1
    return-void

    .end local v0           #int_value:I
    :cond_0
    move v0, v1

    .line 522
    goto :goto_0

    .line 527
    .restart local v0       #int_value:I
    :cond_1
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    .line 528
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 529
    iput-object v4, p0, Lcom/android/settings/LockScreenSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 532
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090ac7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090a70

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0905f3

    new-instance v3, Lcom/android/settings/LockScreenSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/LockScreenSettings$1;-><init>(Lcom/android/settings/LockScreenSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09012e

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LockScreenSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 545
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mMotionDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/LockScreenSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/LockScreenSettings$2;-><init>(Lcom/android/settings/LockScreenSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1

    .line 552
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_unlock_camera_short_cut"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method
