.class public Lcom/android/settings/FingerAirViewSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FingerAirViewSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mFingerAirViewObserver:Landroid/database/ContentObserver;

.field private mFullText:Landroid/preference/CheckBoxPreference;

.field private mHighlight:Landroid/preference/CheckBoxPreference;

.field private mInforamtionPreview:Landroid/preference/CheckBoxPreference;

.field private mMagnifier:Landroid/preference/CheckBoxPreference;

.field private mResolver:Landroid/content/ContentResolver;

.field private mShowUpIndicator:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 45
    new-instance v0, Lcom/android/settings/FingerAirViewSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/FingerAirViewSettings$1;-><init>(Lcom/android/settings/FingerAirViewSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mFingerAirViewObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/FingerAirViewSettings;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/FingerAirViewSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mHighlight:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/FingerAirViewSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/FingerAirViewSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mShowUpIndicator:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/FingerAirViewSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/FingerAirViewSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mFullText:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private broadcastFingerAirViewChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, finger_air_view_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 179
    return-void
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    .line 166
    iget-object v7, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "finger_air_view_highlight"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 167
    .local v1, highlight:I
    iget-object v7, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "finger_air_view_magnifier"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 168
    .local v3, magnifier:I
    iget-object v7, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "finger_air_view_show_up_indicator"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 169
    .local v4, showUpIndicator:I
    iget-object v7, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "finger_air_view_information_preview"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 170
    .local v2, informationPreview:I
    iget-object v7, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "finger_air_view_full_text"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 172
    .local v0, fullText:I
    or-int v7, v1, v3

    or-int/2addr v7, v4

    or-int/2addr v7, v2

    or-int/2addr v7, v0

    if-ge v7, v5, :cond_0

    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_air_view"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    invoke-direct {p0, p2}, Lcom/android/settings/FingerAirViewSettings;->broadcastFingerAirViewChanged(Z)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mHighlight:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mShowUpIndicator:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mFullText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 140
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v5, 0x10

    const/4 v6, -0x2

    const/4 v4, 0x0

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v2, 0x7f07002e

    invoke-virtual {p0, v2}, Lcom/android/settings/FingerAirViewSettings;->addPreferencesFromResource(I)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    .line 65
    new-instance v2, Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 66
    iget-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    instance-of v2, v2, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_1

    .line 67
    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 68
    .local v1, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v2

    if-nez v2, :cond_1

    .line 69
    :cond_0
    iget-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 71
    .local v0, padding:I
    iget-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v0, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 72
    iget-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 74
    iget-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 78
    iget-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarLayout:Landroid/view/View;

    .line 82
    .end local v0           #padding:I
    .end local v1           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    .line 86
    const-string v2, "highlight"

    invoke-virtual {p0, v2}, Lcom/android/settings/FingerAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mHighlight:Landroid/preference/CheckBoxPreference;

    .line 87
    const-string v2, "magnifier"

    invoke-virtual {p0, v2}, Lcom/android/settings/FingerAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/CheckBoxPreference;

    .line 88
    const-string v2, "show_up_indicator"

    invoke-virtual {p0, v2}, Lcom/android/settings/FingerAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mShowUpIndicator:Landroid/preference/CheckBoxPreference;

    .line 89
    const-string v2, "information_preview"

    invoke-virtual {p0, v2}, Lcom/android/settings/FingerAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/CheckBoxPreference;

    .line 90
    const-string v2, "full_text"

    invoke-virtual {p0, v2}, Lcom/android/settings/FingerAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mFullText:Landroid/preference/CheckBoxPreference;

    .line 91
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mHighlight:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_highlight"

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mHighlight:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "finger_air_view"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 158
    invoke-direct {p0, v2}, Lcom/android/settings/FingerAirViewSettings;->broadcastFingerAirViewChanged(Z)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 161
    :cond_1
    return v1

    :cond_2
    move v0, v2

    .line 145
    goto :goto_0

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_5

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_magnifier"

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    .line 148
    :cond_5
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mShowUpIndicator:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_7

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_show_up_indicator"

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mShowUpIndicator:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_3

    .line 150
    :cond_7
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_9

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_information_preview"

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_4
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_4

    .line 152
    :cond_9
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mFullText:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_full_text"

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mFullText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_5
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_a
    move v0, v2

    goto :goto_5
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 96
    const-string v3, "FingerAirViewSettings"

    const-string v4, "onResume()"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 99
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    .line 103
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "finger_air_view"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 104
    .local v0, fingerAirViewState:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 106
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mHighlight:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 107
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 108
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mShowUpIndicator:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 109
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 110
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mFullText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 112
    iget-object v4, p0, Lcom/android/settings/FingerAirViewSettings;->mHighlight:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view_highlight"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 113
    iget-object v4, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view_magnifier"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 114
    iget-object v4, p0, Lcom/android/settings/FingerAirViewSettings;->mShowUpIndicator:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view_show_up_indicator"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 115
    iget-object v4, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view_information_preview"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v1

    :goto_4
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 116
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mFullText:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view_full_text"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 118
    iget-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "finger_air_view"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/FingerAirViewSettings;->mFingerAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 120
    return-void

    .end local v0           #fingerAirViewState:Z
    :cond_2
    move v0, v2

    .line 103
    goto :goto_0

    .restart local v0       #fingerAirViewState:Z
    :cond_3
    move v3, v2

    .line 112
    goto :goto_1

    :cond_4
    move v3, v2

    .line 113
    goto :goto_2

    :cond_5
    move v3, v2

    .line 114
    goto :goto_3

    :cond_6
    move v3, v2

    .line 115
    goto :goto_4
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 125
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettings;->mFingerAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 128
    return-void
.end method
