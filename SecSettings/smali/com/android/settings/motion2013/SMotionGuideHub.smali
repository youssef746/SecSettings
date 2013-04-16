.class public Lcom/android/settings/motion2013/SMotionGuideHub;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SMotionGuideHub.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAdvancedCategory:Landroid/preference/PreferenceCategory;

.field private mAdvancedSetting:Landroid/preference/Preference;

.field private mGuideAniResID:I

.field private mGuideContent:Ljava/lang/String;

.field private mHasAdvancedSettings:Z

.field private mHasSensitivity:Z

.field private mImageView:Landroid/widget/ImageView;

.field private mLearnAboutTitleID:I

.field private mMessageView:Landroid/widget/TextView;

.field private mMotionDBItem:Ljava/lang/String;

.field private mMotionDialog:Landroid/app/AlertDialog;

.field private mMotionType:Ljava/lang/String;

.field private mTryBtnClickListener:Landroid/view/View$OnClickListener;

.field private mUseRingDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 93
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    .line 94
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 95
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 96
    iput v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 97
    iput v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    .line 111
    iput-boolean v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasSensitivity:Z

    .line 112
    iput-boolean v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasAdvancedSettings:Z

    .line 114
    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 115
    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    .line 117
    new-instance v0, Lcom/android/settings/motion2013/SMotionGuideHub$1;

    invoke-direct {v0, p0}, Lcom/android/settings/motion2013/SMotionGuideHub$1;-><init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mTryBtnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/motion2013/SMotionGuideHub;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->showMotionDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion2013/SMotionGuideHub;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->startTryActually(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->startTurnOverTryActually(Z)V

    return-void
.end method

.method private sendGlanceViewCheck(Z)V
    .locals 4
    .parameter

    .prologue
    .line 635
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.GlanceViewChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 636
    const-string v1, "GlanceViewState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 637
    const-string v1, "SMotionGuideHub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GlanceViewState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 639
    return-void
.end method

.method private setArgument(Ljava/lang/String;)V
    .locals 6
    .parameter "key"

    .prologue
    const v5, 0x7f090a8d

    const v4, 0x7f090a8c

    .line 315
    const-string v2, "quick_glance"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    const-string v2, "air_motion_glance_view"

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090b03

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 318
    const v2, 0x7f090b02

    iput v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 319
    const v2, 0x7f020015

    iput v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    .line 419
    :goto_0
    return-void

    .line 320
    :cond_0
    const-string v2, "air_scroll"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 321
    const-string v2, "air_motion_scroll"

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090aea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 323
    const v2, 0x7f090ae9

    iput v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 324
    const v2, 0x7f020016

    iput v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto :goto_0

    .line 325
    :cond_1
    const-string v2, "air_turn"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 326
    const-string v2, "air_motion_turn"

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090aec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 328
    const v2, 0x7f090aeb

    iput v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 329
    const v2, 0x7f020017

    iput v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto :goto_0

    .line 330
    :cond_2
    const-string v2, "air_move"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 331
    const-string v2, "air_motion_item_move"

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090aee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 333
    const v2, 0x7f090aed

    iput v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 334
    const v2, 0x7f020013

    iput v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto :goto_0

    .line 335
    :cond_3
    const-string v2, "air_pin"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 336
    const-string v2, "air_motion_clip"

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 337
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090af0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 338
    const v2, 0x7f090aef

    iput v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 339
    const v2, 0x7f020014

    iput v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 340
    :cond_4
    const-string v2, "air_call_accept"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 341
    const-string v2, "air_motion_call_accept"

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090af2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 343
    const v2, 0x7f090af1

    iput v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 344
    const v2, 0x7f020012

    iput v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 345
    :cond_5
    const-string v2, "tilt"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 346
    const-string v2, "motion_zooming"

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a93

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 348
    iput v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 349
    const v2, 0x7f020224

    iput v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 350
    :cond_6
    const-string v2, "tilt_to_scroll_list"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 351
    const-string v2, "motion_tilt_to_list_scrolling"

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a94

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 353
    iput v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 354
    const v2, 0x7f02021c

    iput v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 355
    :cond_7
    const-string v2, "pan"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 356
    const-string v2, "motion_panning"

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a95

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 358
    iput v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 359
    const v2, 0x7f020206

    iput v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 360
    :cond_8
    const-string v2, "pan_to_browse_image"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 361
    const-string v2, "motion_pan_to_browse_image"

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a96

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 363
    iput v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 364
    const v2, 0x7f020205

    iput v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 365
    :cond_9
    const-string v2, "shake"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 366
    const-string v2, "motion_shake"

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 367
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a97

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 368
    const/4 v1, 0x1

    .line 370
    .local v1, isKiesWiFiInstalled:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.app.kieswifi"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_1
    if-nez v1, :cond_a

    .line 375
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a98

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 377
    :cond_a
    const v2, 0x7f090a8e

    iput v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 378
    const v2, 0x7f02020e

    iput v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_1

    .line 379
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1           #isKiesWiFiInstalled:Z
    :cond_b
    const-string v2, "double_tap"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 380
    const-string v2, "motion_double_tap"

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 381
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a99

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 382
    const v2, 0x7f090a8f

    iput v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 383
    const v2, 0x7f0201f8

    iput v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 384
    :cond_c
    const-string v2, "pick_up"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 385
    const-string v2, "motion_pick_up"

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 386
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a9a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 387
    const v2, 0x7f090a90

    iput v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 388
    const v2, 0x7f02020f

    iput v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 389
    :cond_d
    const-string v2, "pick_up_to_call_out"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 390
    const-string v2, "motion_pick_up_to_call_out"

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090aac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 392
    const v2, 0x7f090a91

    iput v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 393
    const v2, 0x7f0201f5

    iput v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 394
    :cond_e
    const-string v2, "turn_over"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 395
    const-string v2, "motion_overturn"

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a9d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 397
    const v2, 0x7f090a92

    iput v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 398
    const v2, 0x7f020225

    iput v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 399
    :cond_f
    const-string v2, "palm_swipe"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 400
    const-string v2, "surface_palm_swipe"

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090ab9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 402
    const v2, 0x7f090ab8

    iput v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 403
    const v2, 0x7f02007c

    iput v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 404
    :cond_10
    const-string v2, "palm_touch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 405
    const-string v2, "surface_palm_touch"

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 406
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090abb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 407
    const v2, 0x7f090aba

    iput v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 408
    const v2, 0x7f02007d

    iput v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 409
    :cond_11
    const-string v2, "tap_and_twist"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 410
    const-string v2, "surface_tap_and_twist"

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 411
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090abd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 412
    const v2, 0x7f090abc

    iput v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    goto/16 :goto_0

    .line 415
    :cond_12
    const-string v2, "SMotionGuideHub"

    const-string v3, "Cannot get correct motion information"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private showMotionDialog()V
    .locals 3

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->allDialogDismiss()V

    .line 583
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090aa9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 584
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090aa8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090aa7

    new-instance v2, Lcom/android/settings/motion2013/SMotionGuideHub$2;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/SMotionGuideHub$2;-><init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09012e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    .line 596
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/motion2013/SMotionGuideHub$3;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2013/SMotionGuideHub$3;-><init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 602
    return-void
.end method

.method private showUseRingDialog()V
    .locals 3

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->allDialogDismiss()V

    .line 606
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090aa5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090aa4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0905f3

    new-instance v2, Lcom/android/settings/motion2013/SMotionGuideHub$5;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/SMotionGuideHub$5;-><init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090aa6

    new-instance v2, Lcom/android/settings/motion2013/SMotionGuideHub$4;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/SMotionGuideHub$4;-><init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 621
    return-void
.end method

.method private startTryActually(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x2

    const/4 v6, 0x0

    const/16 v3, 0xa

    .line 468
    const-string v0, "quick_glance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 470
    const-string v1, "android.pickuptutorial.GLANCEVIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    .line 472
    const-string v0, "SMotionGuideHub"

    const-string v1, "AIR_MOTION_GLANCE_VIEW"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    const-string v0, "air_scroll"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 474
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 475
    const-class v1, Lcom/android/settings/motion2013/AirScrollTutorial;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f090af3

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 476
    :cond_2
    const-string v0, "air_turn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    const-string v0, "air_move"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    const-string v0, "air_pin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    const-string v0, "air_call_accept"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 483
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 484
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.AirMotionTutorialIncallScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 486
    :cond_3
    const-string v0, "tilt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 495
    invoke-virtual {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->startSensitivityTest(Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :cond_4
    const-string v0, "tilt_to_scroll_list"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 497
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 498
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 499
    const-string v1, "com.android.jcontacts"

    const-string v2, "com.sec.android.app.contacts.activities.TiltToScrollListTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    :goto_1
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 501
    :cond_5
    const-string v1, "com.android.contacts"

    const-string v2, "com.sec.android.app.contacts.activities.TiltToScrollListTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 504
    :cond_6
    const-string v0, "pan"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 511
    invoke-virtual {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->startSensitivityTest(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 512
    :cond_7
    const-string v0, "pan_to_browse_image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 513
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 514
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    const-string v1, "MotionTest"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 517
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 518
    :cond_8
    const-string v0, "shake"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 526
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 527
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.motion.ShakeTutorial"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 529
    :cond_9
    const-string v0, "double_tap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 530
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 531
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 532
    const-string v1, "com.android.jcontacts"

    const-string v2, "com.sec.android.app.contacts.activities.DoubleTapTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    :goto_2
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 534
    :cond_a
    const-string v1, "com.android.contacts"

    const-string v2, "com.sec.android.app.contacts.activities.DoubleTapTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 537
    :cond_b
    const-string v0, "pick_up"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 538
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 539
    const-string v1, "android.pickuptutorial.PICKUPTUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 541
    :cond_c
    const-string v0, "pick_up_to_call_out"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 542
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 543
    const-string v1, "com.android.mms.ui.DirectCallTutorial"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 544
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 545
    :cond_d
    const-string v0, "turn_over"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 546
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 547
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v2, :cond_e

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_e

    .line 548
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->showUseRingDialog()V

    goto/16 :goto_0

    .line 550
    :cond_e
    invoke-direct {p0, v6}, Lcom/android/settings/motion2013/SMotionGuideHub;->startTurnOverTryActually(Z)V

    goto/16 :goto_0

    .line 552
    :cond_f
    const-string v0, "palm_swipe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 554
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 555
    const-string v1, "com.android.pickuptutorial.PALMSWIPETUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    .line 557
    const-string v0, "SMotionGuideHub"

    const-string v1, "MotionTutorialSettings Tutorial Palm swipe to capture"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 558
    :cond_10
    const-string v0, "palm_touch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 561
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 562
    const-string v1, "android.intent.action.PALM_TOUCH_TUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    .line 564
    const-string v0, "SMotionGuideHub"

    const-string v1, "MotionTutorialSettings Tutorial Palm touch to mute/pause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 565
    :cond_11
    const-string v0, "tap_and_twist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0
.end method

.method private startTurnOverTryActually(Z)V
    .locals 3
    .parameter "useRing"

    .prologue
    .line 571
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 572
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "UseRing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 573
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 574
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.callsettings.OverturnTutorialIncallScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivity(Landroid/content/Intent;)V

    .line 579
    return-void

    .line 576
    :cond_0
    const-string v1, "com.sec.android.app.clockpackage"

    const-string v2, "com.sec.android.app.clockpackage.alarm.OverturnTutorialAlarmScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public allDialogDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 624
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 626
    iput-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUseRingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 629
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUseRingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 630
    iput-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 632
    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 219
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion2013/SMotionGuideHub;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 220
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f0400e1

    invoke-virtual {v2, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 221
    .local v1, guideView:Landroid/view/View;
    const v4, 0x7f0b028b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMessageView:Landroid/widget/TextView;

    .line 222
    const v4, 0x7f0b028c

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mImageView:Landroid/widget/ImageView;

    .line 223
    const v4, 0x7f0b028d

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 224
    .local v3, tryBtn:Landroid/widget/Button;
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mTryBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-boolean v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasSensitivity:Z

    if-eqz v4, :cond_0

    .line 226
    const v4, 0x7f090a8b

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 236
    :cond_0
    const-string v4, "default"

    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 237
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMessageView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    :cond_1
    iget v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mImageView:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    .line 241
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mImageView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 242
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 243
    .local v0, ani:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_2

    .line 244
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 248
    .end local v0           #ani:Landroid/graphics/drawable/AnimationDrawable;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getListView()Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 250
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 251
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 285
    const-string v0, "default"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 291
    const-string v0, "air_motion_glance_view"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-direct {p0, p2}, Lcom/android/settings/motion2013/SMotionGuideHub;->sendGlanceViewCheck(Z)V

    .line 295
    :cond_0
    return-void

    .line 286
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 138
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 141
    .local v0, arguments:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 142
    const-string v3, "type"

    const-string v4, "default"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    .line 143
    const-string v3, "hasSensitivity"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasSensitivity:Z

    .line 144
    const-string v3, "hasAdvancedSettings"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasAdvancedSettings:Z

    .line 146
    :cond_0
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->setArgument(Ljava/lang/String;)V

    .line 148
    const v3, 0x7f070050

    invoke-virtual {p0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->addPreferencesFromResource(I)V

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    .line 151
    new-instance v3, Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    .line 152
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    instance-of v3, v3, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    .line 153
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 155
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 156
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 158
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 162
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarLayout:Landroid/view/View;

    .line 165
    .end local v1           #padding:I
    :cond_1
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 180
    const-string v3, "advanced_category"

    invoke-virtual {p0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    .line 181
    const-string v3, "advanced_setting"

    invoke-virtual {p0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    .line 182
    iget-boolean v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasAdvancedSettings:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    if-eqz v3, :cond_2

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 184
    .local v2, ps:Landroid/preference/PreferenceScreen;
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 185
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 188
    .end local v2           #ps:Landroid/preference/PreferenceScreen;
    :cond_2
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->startAdvancedSettings(Ljava/lang/String;)V

    .line 309
    const/4 v0, 0x1

    .line 311
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 258
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 260
    const-string v1, "default"

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 261
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 266
    .local v0, motionEngineState:Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 273
    .end local v0           #motionEngineState:Z
    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 277
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 278
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 281
    :cond_0
    return-void
.end method

.method public startAdvancedSettings(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 422
    const-string v0, "quick_glance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 424
    const-class v1, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f090af4

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    const-string v0, "air_scroll"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 426
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 427
    const-class v1, Lcom/android/settings/motion2013/AirScrollAdvancedSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f090b04

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 428
    :cond_2
    const-string v0, "air_turn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 430
    const-class v1, Lcom/android/settings/motion2013/AirTurnAdvancedSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f090b0d

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method public startSensitivityTest(Ljava/lang/String;)V
    .locals 6
    .parameter "key"

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x5

    .line 437
    const-string v2, "tilt"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 438
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_zooming_sensitivity"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 439
    .local v1, sensitivity:I
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 440
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "image/jpeg"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const-string v2, "com.sec.android.gallery3d"

    const-string v3, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    const-string v2, "MotionTest"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 443
    const-string v2, "Sensitivity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 444
    invoke-virtual {p0, v0, v5}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    .line 465
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #sensitivity:I
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    const-string v2, "tilt_to_scroll_list"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 447
    const-string v2, "SMotionGuideHub"

    const-string v3, "MOTION_TILT_TO_SCROLL_LIST"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 449
    :cond_2
    const-string v2, "pan"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 450
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_panning_sensitivity"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 451
    .restart local v1       #sensitivity:I
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 452
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "com.sec.android.motions.settings.panningtutorial"

    const-string v3, "com.sec.android.motions.settings.panningtutorial.PanningTryActually"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    const-string v2, "Preview"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 454
    const-string v2, "Sensitivity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 455
    invoke-virtual {p0, v0, v5}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 456
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #sensitivity:I
    :cond_3
    const-string v2, "pan_to_browse_image"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_pan_to_browse_image_sensitivity"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 458
    .restart local v1       #sensitivity:I
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 459
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "image/jpeg"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    const-string v2, "com.sec.android.gallery3d"

    const-string v3, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    const-string v2, "MotionTest"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 462
    const-string v2, "Sensitivity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 463
    invoke-virtual {p0, v0, v5}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
