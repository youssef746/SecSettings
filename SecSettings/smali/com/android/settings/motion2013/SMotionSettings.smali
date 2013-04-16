.class public Lcom/android/settings/motion2013/SMotionSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SMotionSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAirMotion:Landroid/preference/SwitchPreferenceScreen;

.field private mMotion:Landroid/preference/SwitchPreferenceScreen;

.field private mMotionUnlockDialog:Landroid/app/AlertDialog;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSurface:Landroid/preference/SwitchPreferenceScreen;

.field protected mSwitchUncheckHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 44
    new-instance v0, Lcom/android/settings/motion2013/SMotionSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/motion2013/SMotionSettings$1;-><init>(Lcom/android/settings/motion2013/SMotionSettings;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSwitchUncheckHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mMotion:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSurface:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/motion2013/SMotionSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/SMotionSettings;->broadcastMotionChanged(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private broadcastAirMotionChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 257
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 260
    return-void
.end method

.method private broadcastMotionChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 251
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 254
    return-void
.end method

.method private showMotionUnlockDialog(I)V
    .locals 4
    .parameter "message_res_id"

    .prologue
    const/4 v3, 0x0

    .line 167
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 169
    iput-object v3, p0, Lcom/android/settings/motion2013/SMotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 172
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090a70

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0905f3

    new-instance v2, Lcom/android/settings/motion2013/SMotionSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/SMotionSettings$2;-><init>(Lcom/android/settings/motion2013/SMotionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09012e

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 186
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/motion2013/SMotionSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2013/SMotionSettings$3;-><init>(Lcom/android/settings/motion2013/SMotionSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 191
    return-void
.end method

.method private showToast(I)V
    .locals 2
    .parameter "strResID"

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 248
    return-void
.end method


# virtual methods
.method public isAllAirMotionDisabled()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 195
    iget-object v8, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_glance_view"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 196
    .local v5, quickGlance:I
    iget-object v8, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 197
    .local v2, airScroll:I
    iget-object v8, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_turn"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 198
    .local v3, airTurn:I
    iget-object v8, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_item_move"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 199
    .local v0, airMove:I
    iget-object v8, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_clip"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 200
    .local v1, airPin:I
    iget-object v8, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_call_accept"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 202
    .local v4, callAccept:I
    or-int v8, v5, v2

    or-int/2addr v8, v3

    or-int/2addr v8, v0

    or-int/2addr v8, v1

    or-int/2addr v8, v4

    if-ge v8, v6, :cond_0

    :goto_0
    return v6

    :cond_0
    move v6, v7

    goto :goto_0
.end method

.method public isAllHandMotionDisabled()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 235
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "surface_tap_and_twist"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 236
    const/4 v0, 0x0

    .line 238
    .local v0, palmSwipe:I
    const/4 v1, 0x0

    .line 240
    .local v1, palmTouch:I
    const/4 v2, 0x0

    .line 243
    .local v2, tapAndTwist:I
    const/4 v3, 0x1

    return v3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v1, 0x7f070051

    invoke-virtual {p0, v1}, Lcom/android/settings/motion2013/SMotionSettings;->addPreferencesFromResource(I)V

    .line 67
    const-string v1, "air_motion"

    invoke-virtual {p0, v1}, Lcom/android/settings/motion2013/SMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    .line 68
    const-string v1, "motion"

    invoke-virtual {p0, v1}, Lcom/android/settings/motion2013/SMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings;->mMotion:Landroid/preference/SwitchPreferenceScreen;

    .line 69
    const-string v1, "surface"

    invoke-virtual {p0, v1}, Lcom/android/settings/motion2013/SMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSurface:Landroid/preference/SwitchPreferenceScreen;

    .line 70
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 71
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings;->mMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 72
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSurface:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 77
    .local v0, ps:Landroid/preference/PreferenceScreen;
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 85
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSurface:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 88
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 104
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .local v1, key:Ljava/lang/String;
    move-object v5, p2

    .line 105
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v6

    .line 106
    .local v4, value:I
    :goto_0
    const-string v5, "air_motion"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->isAllAirMotionDisabled()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 108
    const v5, 0x7f090acf

    invoke-direct {p0, v5}, Lcom/android/settings/motion2013/SMotionSettings;->showToast(I)V

    .line 110
    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSwitchUncheckHandler:Landroid/os/Handler;

    const-wide/16 v8, 0xa

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 162
    .end local p2
    :cond_0
    :goto_1
    return v6

    .end local v4           #value:I
    .restart local p2
    :cond_1
    move v4, v7

    .line 105
    goto :goto_0

    .line 112
    .restart local v4       #value:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "air_motion_engine"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 113
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/settings/motion2013/SMotionSettings;->broadcastAirMotionChanged(Z)V

    goto :goto_1

    .line 115
    .restart local p2
    :cond_3
    const-string v5, "motion"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move-object v5, p2

    .line 116
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_9

    .line 117
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 118
    .local v2, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const/4 v3, 0x0

    .line 119
    .local v3, motion_unlock:Z
    const/4 v0, 0x0

    .line 120
    .local v0, camera_short_cut:Z
    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v5

    if-nez v5, :cond_4

    .line 121
    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v5

    if-nez v5, :cond_4

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "lock_motion_tilt_to_unlock"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    .line 123
    const/4 v3, 0x1

    .line 127
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "motion_unlock_camera_short_cut"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_5

    .line 128
    const/4 v0, 0x1

    .line 130
    :cond_5
    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    .line 131
    const v5, 0x7f090ac4

    invoke-direct {p0, v5}, Lcom/android/settings/motion2013/SMotionSettings;->showMotionUnlockDialog(I)V

    goto :goto_1

    .line 132
    :cond_6
    if-nez v3, :cond_7

    if-eqz v0, :cond_7

    .line 133
    const v5, 0x7f090ac3

    invoke-direct {p0, v5}, Lcom/android/settings/motion2013/SMotionSettings;->showMotionUnlockDialog(I)V

    goto :goto_1

    .line 134
    :cond_7
    if-eqz v3, :cond_8

    if-nez v0, :cond_8

    .line 135
    const v5, 0x7f090ac2

    invoke-direct {p0, v5}, Lcom/android/settings/motion2013/SMotionSettings;->showMotionUnlockDialog(I)V

    goto :goto_1

    .line 137
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "motion_engine"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/settings/motion2013/SMotionSettings;->broadcastMotionChanged(Z)V

    goto/16 :goto_1

    .line 147
    .end local v0           #camera_short_cut:Z
    .end local v2           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .end local v3           #motion_unlock:Z
    .restart local p2
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "motion_engine"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 148
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/settings/motion2013/SMotionSettings;->broadcastMotionChanged(Z)V

    goto/16 :goto_1

    .line 150
    .restart local p2
    :cond_a
    const-string v5, "surface"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->isAllHandMotionDisabled()Z

    move-result v5

    if-eqz v5, :cond_b

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 152
    const v5, 0x7f090aaf

    invoke-direct {p0, v5}, Lcom/android/settings/motion2013/SMotionSettings;->showToast(I)V

    .line 156
    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSwitchUncheckHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 158
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "surface_motion_engine"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 93
    const-string v0, "SMotionSettings"

    const-string v3, "onResume()"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 97
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_motion_engine"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 98
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionSettings;->mMotion:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_engine"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSurface:Landroid/preference/SwitchPreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "surface_motion_engine"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 101
    return-void

    :cond_0
    move v0, v2

    .line 97
    goto :goto_0

    :cond_1
    move v0, v2

    .line 98
    goto :goto_1

    :cond_2
    move v1, v2

    .line 99
    goto :goto_2
.end method
