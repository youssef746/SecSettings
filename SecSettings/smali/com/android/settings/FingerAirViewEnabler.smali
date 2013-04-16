.class public final Lcom/android/settings/FingerAirViewEnabler;
.super Ljava/lang/Object;
.source "FingerAirViewEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFingerAirViewObserver:Landroid/database/ContentObserver;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    .line 36
    new-instance v0, Lcom/android/settings/FingerAirViewEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/FingerAirViewEnabler$1;-><init>(Lcom/android/settings/FingerAirViewEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mFingerAirViewObserver:Landroid/database/ContentObserver;

    .line 44
    iput-object p1, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    .line 46
    return-void
.end method

.method private broadcastFingerAirViewChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, finger_air_view_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 106
    return-void
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 93
    iget-object v7, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "finger_air_view_highlight"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 94
    .local v1, highlight:I
    iget-object v7, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "finger_air_view_magnifier"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 95
    .local v3, magnifier:I
    iget-object v7, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "finger_air_view_show_up_indicator"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 96
    .local v4, showUpIndicator:I
    iget-object v7, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "finger_air_view_information_preview"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 97
    .local v2, informationPreview:I
    iget-object v7, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "finger_air_view_full_text"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 99
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
    .line 71
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_air_view"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 72
    invoke-direct {p0, p2}, Lcom/android/settings/FingerAirViewEnabler;->broadcastFingerAirViewChanged(Z)V

    .line 73
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mFingerAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 56
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 57
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewEnabler;->updateSwitch()V

    .line 50
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 51
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/FingerAirViewEnabler;->mFingerAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 52
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .parameter "switch_"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 64
    iput-object p1, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewEnabler;->updateSwitch()V

    .line 66
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public updateSwitch()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 76
    iget-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_air_view"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 78
    .local v0, state:I
    if-ne v0, v3, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 80
    iget-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 90
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewEnabler;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0
.end method
