.class public Lcom/android/settings/EasyModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "EasyModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/EasyModeSettings$EasySettingsStateChanger;
    }
.end annotation


# static fields
.field private static mModeItem:[Ljava/lang/String;


# instance fields
.field private mHelptext:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field mMenuApply:Landroid/view/MenuItem;

.field mMenuCancel:Landroid/view/MenuItem;

.field private mModeState:I

.field private mOkDialog:Landroid/app/Dialog;

.field private mPm:Landroid/content/pm/PackageManager;

.field resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 284
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/EasyModeSettings;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 382
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 381
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 5
    .parameter "showIcon"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 173
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 174
    if-eqz p1, :cond_2

    .line 175
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f020094

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 176
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 182
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 183
    if-eqz p1, :cond_3

    .line 184
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    const v1, 0x7f020098

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 185
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 191
    :cond_1
    :goto_1
    return-void

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 179
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 188
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method

.method private updateState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 349
    const-string v2, "EasyModeSettings"

    const-string v3, "updateState()"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v3, "easy_mode_switch"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v5, v2, :cond_0

    .line 355
    const/4 v0, 0x0

    .line 360
    .local v0, saved_value:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    .line 361
    .local v1, selected_value:I
    const-string v2, "EasyModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saved_value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , selected_value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mListView:Landroid/widget/ListView;

    if-ne v0, v1, :cond_1

    .end local v0           #saved_value:I
    :goto_1
    invoke-virtual {v2, v0, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 364
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    iput v2, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    .line 371
    return-void

    .line 358
    .end local v1           #selected_value:I
    :cond_0
    const/4 v0, 0x1

    .restart local v0       #saved_value:I
    goto :goto_0

    .restart local v1       #selected_value:I
    :cond_1
    move v0, v1

    .line 363
    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 133
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/EasyModeSettings;->setHasOptionsMenu(Z)V

    .line 134
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 135
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/EasyModeSettings;->updateOptionsMenuIcon(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/EasyModeSettings;->dismissDialog()V

    .line 125
    :cond_1
    return-void

    .line 121
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/EasyModeSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 65
    const-string v0, "EasyModeSettings"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    .line 141
    .local v0, isTablet:Z
    const v4, 0x7f09012e

    invoke-interface {p1, v3, v6, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/EasyModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    .line 142
    iget-object v4, p0, Lcom/android/settings/EasyModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 143
    iget-object v4, p0, Lcom/android/settings/EasyModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 147
    const/4 v4, 0x3

    const v5, 0x7f090983

    invoke-interface {p1, v3, v4, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    .line 148
    iget-object v4, p0, Lcom/android/settings/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 149
    iget-object v4, p0, Lcom/android/settings/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 153
    if-nez v0, :cond_2

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v6, :cond_1

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/settings/EasyModeSettings;->updateOptionsMenuIcon(Z)V

    .line 160
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v1

    .line 161
    .local v1, kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 164
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 169
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 170
    return-void

    .end local v1           #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_1
    move v2, v3

    .line 154
    goto :goto_0

    .line 156
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/settings/EasyModeSettings;->updateOptionsMenuIcon(Z)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 69
    const v2, 0x7f04005f

    invoke-virtual {p1, v2, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 70
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b00cf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/settings/EasyModeSettings;->mListView:Landroid/widget/ListView;

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    .line 73
    const v2, 0x7f0b00f0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/EasyModeSettings;->mImageView:Landroid/widget/ImageView;

    .line 74
    const v2, 0x7f0b00f1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/EasyModeSettings;->mHelptext:Landroid/widget/TextView;

    .line 76
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    sput-object v2, Lcom/android/settings/EasyModeSettings;->mModeItem:[Ljava/lang/String;

    .line 77
    sget-object v2, Lcom/android/settings/EasyModeSettings;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090d73

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 78
    sget-object v2, Lcom/android/settings/EasyModeSettings;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090d66

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 80
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f040091

    sget-object v6, Lcom/android/settings/EasyModeSettings;->mModeItem:[Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "is_onConfigurationChange"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 84
    .local v0, isOnConfigurationChanged:Z
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "easymode_spinner_value"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    .line 100
    :goto_0
    iget v2, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    if-nez v2, :cond_3

    .line 101
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v7, v8}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 102
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mHelptext:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090d74

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mImageView:Landroid/widget/ImageView;

    const v3, 0x7f0201bf

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 113
    :goto_1
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 114
    return-object v1

    .line 86
    :cond_0
    if-nez p3, :cond_2

    .line 89
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v3, "easy_mode_switch"

    invoke-static {v2, v3, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v8, v2, :cond_1

    .line 90
    iput v7, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    goto :goto_0

    .line 93
    :cond_1
    iput v8, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    goto :goto_0

    .line 97
    :cond_2
    const-string v2, "easymode_spinner_value"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    goto :goto_0

    .line 109
    :cond_3
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v8, v8}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 110
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mHelptext:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090d77

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mImageView:Landroid/widget/ImageView;

    const v3, 0x7f0201c1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 387
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 311
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 324
    :goto_0
    iput p3, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    .line 325
    return-void

    .line 313
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mHelptext:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090d74

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f0201bf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 320
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mHelptext:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090d77

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f0201c1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 311
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const v6, 0x104000a

    const/high16 v5, 0x104

    const/4 v1, 0x1

    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 279
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_1
    return v1

    .line 197
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 200
    :pswitch_1
    const-string v2, "EasyModeSettings"

    const-string v3, "onOptionsItemSelected"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v3, "easy_mode_switch"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    const/4 v0, 0x0

    .line 203
    .local v0, saved_value:I
    :goto_2
    const-string v2, "EasyModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saved_value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,  mListView.getCheckedItemPosition() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/EasyModeSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 205
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x1020

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/EasyModeSettings;->startActivity(Landroid/content/Intent;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->finish()V

    goto :goto_1

    .end local v0           #saved_value:I
    :cond_0
    move v0, v1

    .line 202
    goto :goto_2

    .line 211
    .restart local v0       #saved_value:I
    :cond_1
    iget v1, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    if-nez v1, :cond_3

    .line 212
    const-string v1, "EasyModeSettings"

    const-string v2, "onClick 0"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/EasyModeSettings;->dismissDialog()V

    .line 214
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090d79

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090d78

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/EasyModeSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/EasyModeSettings$2;-><init>(Lcom/android/settings/EasyModeSettings;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/EasyModeSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/EasyModeSettings$1;-><init>(Lcom/android/settings/EasyModeSettings;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    .line 242
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 245
    :cond_3
    const-string v1, "EasyModeSettings"

    const-string v2, "onClick 1"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/settings/EasyModeSettings;->dismissDialog()V

    .line 247
    :cond_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090d76

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090d75

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/EasyModeSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/EasyModeSettings$4;-><init>(Lcom/android/settings/EasyModeSettings;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/EasyModeSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/EasyModeSettings$3;-><init>(Lcom/android/settings/EasyModeSettings;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    .line 275
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 375
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 376
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 336
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    .line 339
    .local v0, kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 345
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/EasyModeSettings;->updateState()V

    .line 346
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 128
    const-string v0, "easymode_spinner_value"

    iget v1, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    return-void
.end method
