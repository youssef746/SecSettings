.class public Lcom/android/settings/flipfont/FontListPreference;
.super Landroid/preference/ListPreference;
.source "FontListPreference.java"


# instance fields
.field private context:Landroid/content/Context;

.field private isWidget:Ljava/lang/Boolean;

.field private mBuyButtonClicked:Z

.field private mClickedItem:I

.field private mDefaultUseHelvetica:Z

.field private mDialogBottomPadding:I

.field private mDialogLeftPadding:I

.field private mDialogRightPadding:I

.field private mDialogTopPadding:I

.field private mDisplaySettings:Lcom/android/settings/DisplaySettings;

.field private mFileCopying:Z

.field private mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

.field private mPreviousFont:I

.field private mQuestionDialogFontSize:I

.field private mSavedClickedItem:I

.field private mSelectDialogIsActive:Z

.field mSetFontToAlert:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/flipfont/FontListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xa

    const/16 v2, 0x14

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    iput-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    .line 68
    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mDefaultUseHelvetica:Z

    .line 71
    iput-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 75
    iput v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    .line 78
    iput v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    .line 81
    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    .line 84
    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFileCopying:Z

    .line 87
    iput v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mQuestionDialogFontSize:I

    .line 90
    iput v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mDialogLeftPadding:I

    .line 92
    iput v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mDialogTopPadding:I

    .line 94
    iput v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mDialogRightPadding:I

    .line 96
    iput v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mDialogBottomPadding:I

    .line 101
    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 103
    iput v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 109
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->isWidget:Ljava/lang/Boolean;

    .line 117
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    .line 118
    const-string v0, "MONOTYPE"

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setKey(Ljava/lang/String;)V

    .line 119
    const v0, 0x7f090894

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setTitle(I)V

    .line 120
    const v0, 0x7f090895

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setSummary(I)V

    .line 121
    const v0, 0x7f090896

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setDialogTitle(I)V

    .line 122
    const/high16 v0, 0x104

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setNegativeButtonText(I)V

    .line 124
    const v0, 0x7f020079

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setDialogIcon(I)V

    .line 125
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/flipfont/FontListPreference;Lcom/android/settings/flipfont/FontListAdapter;)Lcom/android/settings/flipfont/FontListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/flipfont/FontListPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/settings/flipfont/FontListPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    return p1
.end method


# virtual methods
.method public directFontList()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Landroid/preference/ListPreference;->onClick()V

    .line 137
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->isWidget:Ljava/lang/Boolean;

    .line 138
    return-void
.end method

.method public loadPreferences()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 556
    const/4 v0, 0x0

    .line 557
    .local v0, mode:I
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v3, "prefs"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 560
    .local v1, mySharedPreference:Landroid/content/SharedPreferences;
    const-string v2, "SelectDialogIsActive"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 561
    const-string v2, "SavedClickedItem"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 562
    return-void
.end method

.method public onCancelButtonPressed()V
    .locals 4

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 359
    .local v0, d:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 361
    .local v1, v:Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 362
    iget v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 365
    .end local v1           #v:Landroid/widget/ListView;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 375
    invoke-super {p0, p1, p2}, Landroid/preference/ListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 377
    iget v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    if-ne p2, v4, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    const/4 v4, -0x2

    if-ne p2, v4, :cond_3

    .line 382
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    if-eqz v4, :cond_2

    .line 383
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 384
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->cancel()V

    .line 385
    iput-object v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 388
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 394
    :cond_3
    const/4 v2, 0x0

    .line 395
    .local v2, question:Ljava/lang/String;
    const/4 v1, 0x0

    .line 396
    .local v1, fontName:Ljava/lang/String;
    iput-object v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 397
    iput p2, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    .line 399
    if-ge p2, v7, :cond_4

    .line 400
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09089a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 402
    .local v3, s:Ljava/lang/String;
    move-object v2, v3

    .line 413
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 414
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f09003c

    new-instance v5, Lcom/android/settings/flipfont/FontListPreference$3;

    invoke-direct {v5, p0}, Lcom/android/settings/flipfont/FontListPreference$3;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f09003d

    new-instance v6, Lcom/android/settings/flipfont/FontListPreference$2;

    invoke-direct {v6, p0}, Lcom/android/settings/flipfont/FontListPreference$2;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 427
    new-instance v4, Lcom/android/settings/flipfont/FontListPreference$4;

    invoke-direct {v4, p0}, Lcom/android/settings/flipfont/FontListPreference$4;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 434
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 435
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 437
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 438
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 440
    iget v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    iput v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 441
    iput-boolean v7, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    goto :goto_0

    .line 404
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v3           #s:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090899

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 406
    .restart local v3       #s:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v4, :cond_5

    .line 407
    new-instance v4, Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v5, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 408
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v4}, Lcom/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 410
    :cond_5
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v4, v5}, Lcom/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v1

    .line 411
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public onDialogClosed(Z)V
    .locals 5
    .parameter "positiveResult"

    .prologue
    const/4 v4, 0x0

    .line 498
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 501
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->isWidget:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 502
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->isWidget:Ljava/lang/Boolean;

    .line 503
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mDisplaySettings:Lcom/android/settings/DisplaySettings;

    if-eqz v2, :cond_0

    .line 504
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mDisplaySettings:Lcom/android/settings/DisplaySettings;

    invoke-virtual {v2}, Lcom/android/settings/DisplaySettings;->finish()V

    .line 509
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    if-eqz v2, :cond_2

    .line 511
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "CHN"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "CU"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "CHU"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 515
    :cond_1
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09089c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 517
    .local v1, uri:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 518
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 519
    const v2, 0x14000020

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 520
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 521
    iput-boolean v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    .line 530
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uri:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 523
    :cond_3
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09089b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 525
    .restart local v1       #uri:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 526
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 527
    iput-boolean v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    goto :goto_0
.end method

.method public onOkButtonPressed()V
    .locals 30

    .prologue
    .line 253
    const-string v27, "FontListPreference"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "onOkButtonPressed : mClickedItem : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    .line 255
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    .line 259
    :goto_0
    const-string v27, "FontListPreference"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "onOkButtonPressed : mSavedClickedItem : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v27, v0

    if-nez v27, :cond_0

    .line 263
    new-instance v27, Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Lcom/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 267
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 268
    .local v25, selectedFont:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/flipfont/FontListPreference;->persistString(Ljava/lang/String;)Z

    .line 270
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    .line 272
    new-instance v14, Lcom/android/settings/flipfont/FontWriter;

    invoke-direct {v14}, Lcom/android/settings/flipfont/FontWriter;-><init>()V

    .line 273
    .local v14, fontWriter:Lcom/android/settings/flipfont/FontWriter;
    if-eqz v25, :cond_1

    const-string v27, "default"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 275
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v28, "sans.loc"

    const-string v29, "default"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v14, v0, v1, v2}, Lcom/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    if-nez v25, :cond_3

    .line 278
    const-string v27, "FontListPreference"

    const-string v28, "onOkButtonPressed() : selectedFont == null "

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :goto_1
    return-void

    .line 257
    .end local v14           #fontWriter:Lcom/android/settings/flipfont/FontWriter;
    .end local v25           #selectedFont:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    goto/16 :goto_0

    .line 283
    .restart local v14       #fontWriter:Lcom/android/settings/flipfont/FontWriter;
    .restart local v25       #selectedFont:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/flipfont/TypefaceFinder;->findMatchingTypeface(Ljava/lang/String;)Lcom/android/settings/flipfont/Typeface;

    move-result-object v24

    .line 285
    .local v24, sansTypeface:Lcom/android/settings/flipfont/Typeface;
    const-string v27, ".xml"

    const-string v28, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 286
    .local v15, fontdir:Ljava/lang/String;
    const-string v27, " "

    const-string v28, "-"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v14, v0, v15}, Lcom/android/settings/flipfont/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .line 289
    .local v13, fontDir:Ljava/io/File;
    const/16 v26, 0x0

    .line 290
    .local v26, tpf:Lcom/android/settings/flipfont/TypefaceFile;
    if-eqz v24, :cond_4

    .line 291
    const/16 v16, 0x0

    .local v16, i:I
    :goto_2
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v16

    move/from16 v1, v27

    if-ge v0, v1, :cond_4

    .line 292
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26           #tpf:Lcom/android/settings/flipfont/TypefaceFile;
    check-cast v26, Lcom/android/settings/flipfont/TypefaceFile;

    .line 295
    .restart local v26       #tpf:Lcom/android/settings/flipfont/TypefaceFile;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 297
    .local v7, apkname:Ljava/lang/String;
    const-string v27, "FontListPreference"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "onOkButtonPressed : Application name, "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v27, v0

    const/16 v28, 0x80

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 299
    .local v8, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iput-object v0, v8, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v22

    .line 302
    .local v22, res:Landroid/content/res/Resources;
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    .line 303
    .local v9, assetManager:Landroid/content/res/AssetManager;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "fonts/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v26 .. v26}, Lcom/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    .line 305
    .local v18, in:Ljava/io/InputStream;
    invoke-virtual/range {v26 .. v26}, Lcom/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v14, v13, v0, v1}, Lcom/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v7           #apkname:Ljava/lang/String;
    .end local v8           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v9           #assetManager:Landroid/content/res/AssetManager;
    .end local v18           #in:Ljava/io/InputStream;
    .end local v22           #res:Landroid/content/res/Resources;
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 306
    :catch_0
    move-exception v12

    .line 307
    .local v12, ex:Ljava/lang/Exception;
    const-string v27, "FontListPreference"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Exception in file operation, "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 312
    .end local v12           #ex:Ljava/lang/Exception;
    .end local v16           #i:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v28, "sans.loc"

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v14, v0, v1, v2}, Lcom/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    .line 316
    .local v6, am:Landroid/app/IActivityManager;
    invoke-interface {v6}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    .line 317
    .local v10, config:Landroid/content/res/Configuration;
    new-instance v21, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    move-object/from16 v0, v21

    move-wide/from16 v1, v27

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 318
    .local v21, randomizer:Ljava/util/Random;
    const/16 v20, 0x0

    .line 319
    .local v20, min:I
    const/16 v19, 0x2710

    .line 320
    .local v19, max:I
    const/16 v27, 0x2711

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v27

    add-int v27, v27, v20

    move/from16 v0, v27

    iput v0, v10, Landroid/content/res/Configuration;->FlipFont:I

    .line 321
    invoke-interface {v6, v10}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 329
    .end local v6           #am:Landroid/app/IActivityManager;
    .end local v10           #config:Landroid/content/res/Configuration;
    .end local v19           #max:I
    .end local v20           #min:I
    .end local v21           #randomizer:Ljava/util/Random;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v28, "activity"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 331
    .local v4, activityManager:Landroid/app/ActivityManager;
    const/16 v27, 0x32

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    .line 332
    .local v5, allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v16, 0x1

    .line 333
    .restart local v16       #i:I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_5
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 334
    .local v3, aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v0, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    .line 336
    .local v23, s:Ljava/lang/String;
    const-string v27, "com.android.settings"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v27

    if-eqz v27, :cond_5

    const-string v27, "com.samsung.music"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v27

    if-eqz v27, :cond_5

    const-string v27, "com.sec.android.app.music"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v27

    if-eqz v27, :cond_5

    .line 337
    const-string v27, "com.infraware.polarisoffice"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v27

    if-eqz v27, :cond_6

    const-string v27, "com.infraware.polarisoffice4"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v27

    if-eqz v27, :cond_6

    const-string v27, "com.infraware.polarisviewer4"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v27

    if-eqz v27, :cond_6

    const-string v27, "com.infraware.PolarisOfficeStdForTablet"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v27

    if-nez v27, :cond_7

    .line 339
    :cond_6
    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_5

    .line 324
    .end local v3           #aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v4           #activityManager:Landroid/app/ActivityManager;
    .end local v5           #allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v16           #i:I
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v23           #s:Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 326
    .local v11, e:Landroid/os/RemoteException;
    const-string v27, "FontListPreference"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Intentionally left blank, "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 342
    .end local v11           #e:Landroid/os/RemoteException;
    .restart local v3       #aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v4       #activityManager:Landroid/app/ActivityManager;
    .restart local v5       #allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v16       #i:I
    .restart local v17       #i$:Ljava/util/Iterator;
    .restart local v23       #s:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 348
    .end local v3           #aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v23           #s:Ljava/lang/String;
    :cond_8
    const-string v27, "com.android.settings"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 350
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/System;->exit(I)V

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListPreference;->restartLater()V

    goto/16 :goto_1
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 5
    .parameter "builder"

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 153
    const-string v2, "MONOTYPE"

    invoke-virtual {p0, v2}, Lcom/android/settings/flipfont/FontListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, selectedFont:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 156
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090898

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 162
    .local v0, okButton:Ljava/lang/String;
    :goto_0
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v2, "FontListPreference"

    const-string v3, "onPrepareDialogBuilder : KEY_PREFERENCE : MONOTYPE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v2, "MONOTYPE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 168
    const-string v2, "FontListPreference"

    const-string v3, "onPrepareDialogBuilder : selectedFont == KEY_PREFERENCE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-boolean v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mDefaultUseHelvetica:Z

    if-eqz v2, :cond_3

    .line 171
    const-string v1, "HelveticaNeueRegular.xml"

    .line 172
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    .line 173
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : Use Helvetica by default. selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : Helvetica index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_1
    iget v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    if-gez v2, :cond_0

    .line 193
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    .line 195
    :cond_0
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {p1, v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 196
    const-string v2, "CHM"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "CMCC"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 198
    new-instance v2, Lcom/android/settings/flipfont/FontListPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/flipfont/FontListPreference$1;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 214
    :cond_1
    return-void

    .line 159
    .end local v0           #okButton:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090897

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .restart local v0       #okButton:Ljava/lang/String;
    goto/16 :goto_0

    .line 178
    :cond_3
    const-string v1, "default"

    .line 179
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    .line 180
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : Use Android DroidSans by default. selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : Android DroidSans index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 186
    :cond_4
    const-string v2, "FontListPreference"

    const-string v3, "onPrepareDialogBuilder : selectedFont != KEY_PREFERENCE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    .line 188
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : selectedFont index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public restartLater()V
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 245
    :cond_0
    return-void
.end method

.method protected savePreferences()V
    .locals 5

    .prologue
    .line 542
    const/4 v1, 0x0

    .line 543
    .local v1, mode:I
    iget-object v3, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 546
    .local v2, mySharedPreference:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 548
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "SelectDialogIsActive"

    iget-boolean v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 549
    const-string v3, "SavedClickedItem"

    iget v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 551
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 552
    return-void
.end method

.method public selectDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 447
    const/4 v3, 0x0

    .line 448
    .local v3, question:Ljava/lang/String;
    const/4 v2, 0x0

    .line 449
    .local v2, fontName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->loadPreferences()V

    .line 450
    iget v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    iput v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    .line 451
    iget v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    if-ge v5, v8, :cond_0

    .line 452
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09089a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 454
    .local v4, s:Ljava/lang/String;
    move-object v3, v4

    .line 461
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 462
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f09003c

    new-instance v6, Lcom/android/settings/flipfont/FontListPreference$6;

    invoke-direct {v6, p0}, Lcom/android/settings/flipfont/FontListPreference$6;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f09003d

    new-instance v7, Lcom/android/settings/flipfont/FontListPreference$5;

    invoke-direct {v7, p0}, Lcom/android/settings/flipfont/FontListPreference$5;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 476
    new-instance v5, Lcom/android/settings/flipfont/FontListPreference$7;

    invoke-direct {v5, p0}, Lcom/android/settings/flipfont/FontListPreference$7;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 483
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 484
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 485
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 486
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 487
    iget v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    iput v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 488
    iput-boolean v8, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 489
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 490
    return-void

    .line 456
    .end local v0           #alert:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v4           #s:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090899

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 458
    .restart local v4       #s:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget v6, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v5, v6}, Lcom/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v2

    .line 459
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public setObject(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .parameter "displaySettings"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference;->mDisplaySettings:Lcom/android/settings/DisplaySettings;

    .line 142
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 219
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 227
    const v0, 0x7f09089d

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setDialogTitle(I)V

    .line 229
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->loadPreferences()V

    .line 231
    iget-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->selectDialog()V

    .line 236
    :cond_2
    return-void
.end method
