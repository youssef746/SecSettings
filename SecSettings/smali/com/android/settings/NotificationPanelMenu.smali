.class public Lcom/android/settings/NotificationPanelMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NotificationPanelMenu.java"


# instance fields
.field private mActiveNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveNotificationPanelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailableButtonsBarLayout1:Landroid/widget/LinearLayout;

.field private mAvailableButtonsBarLayout2:Landroid/widget/LinearLayout;

.field private mAvailableButtonsLayout1:Landroid/widget/LinearLayout;

.field private mAvailableButtonsLayout2:Landroid/widget/LinearLayout;

.field private mBrightness:Landroid/preference/CheckBoxPreference;

.field private mBrightnessAdjustmentObserver:Landroid/database/ContentObserver;

.field private mCandidateNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCandidateNotificationPanelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mConvertPanelItemstring:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLongClickedView:Landroid/view/View;

.field private mNotificationPanelBarLayout1:Landroid/widget/LinearLayout;

.field private mNotificationPanelBarLayout2:Landroid/widget/LinearLayout;

.field private mNotificationPanelLayout1:Landroid/widget/LinearLayout;

.field private mNotificationPanelLayout2:Landroid/widget/LinearLayout;

.field private mNumOfActiveNotificationPanel:I

.field private mNumOfCandidateNotificationPanel:I

.field private mNumOfCurrentActiveApps:I

.field private mNumOfCurrentCandidateApps:I

.field mPanelBarDragListener:Landroid/view/View$OnDragListener;

.field mfakePanelDragListener:Landroid/view/View$OnDragListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 74
    iput v0, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfActiveNotificationPanel:I

    .line 75
    iput v0, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCandidateNotificationPanel:I

    .line 76
    iput v0, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCurrentActiveApps:I

    .line 77
    iput v0, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCurrentCandidateApps:I

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationPanelList:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Lcom/android/settings/NotificationPanelMenu$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/NotificationPanelMenu$1;-><init>(Lcom/android/settings/NotificationPanelMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightnessAdjustmentObserver:Landroid/database/ContentObserver;

    .line 91
    new-instance v0, Lcom/android/settings/NotificationPanelMenu$2;

    invoke-direct {v0, p0}, Lcom/android/settings/NotificationPanelMenu$2;-><init>(Lcom/android/settings/NotificationPanelMenu;)V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 101
    new-instance v0, Lcom/android/settings/NotificationPanelMenu$3;

    invoke-direct {v0, p0}, Lcom/android/settings/NotificationPanelMenu$3;-><init>(Lcom/android/settings/NotificationPanelMenu;)V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mfakePanelDragListener:Landroid/view/View$OnDragListener;

    .line 152
    new-instance v0, Lcom/android/settings/NotificationPanelMenu$4;

    invoke-direct {v0, p0}, Lcom/android/settings/NotificationPanelMenu$4;-><init>(Lcom/android/settings/NotificationPanelMenu;)V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mPanelBarDragListener:Landroid/view/View$OnDragListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/NotificationPanelMenu;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightness:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/NotificationPanelMenu;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mLongClickedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/NotificationPanelMenu;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/settings/NotificationPanelMenu;->mLongClickedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/NotificationPanelMenu;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/NotificationPanelMenu;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationPanelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/NotificationPanelMenu;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/settings/NotificationPanelMenu;->changeQuickSettingsByPanel(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/NotificationPanelMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->updateQuickSettingsList()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/NotificationPanelMenu;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/settings/NotificationPanelMenu;->changeQuickSettingsByBar(Landroid/view/View;)V

    return-void
.end method

.method private changeQuickSettingsByBar(Landroid/view/View;)V
    .locals 15
    .parameter "dropView"

    .prologue
    .line 399
    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mLongClickedView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 400
    .local v8, longClickedPanelTag:Ljava/lang/String;
    const-string v11, "/"

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 401
    .local v7, longClickedPanelInfo:[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v6, v7, v11

    .line 402
    .local v6, longClickedPanelCategory:Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 405
    .local v4, longClickedIdx:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 406
    .local v3, dropPanelTag:Ljava/lang/String;
    const-string v11, "/"

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, dropPanelInfo:[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v1, v2, v11

    .line 408
    .local v1, dropPanelCategory:Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v11, v2, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 410
    .local v0, dropIdx:I
    const-string v11, "NotificationPanelMenu"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "changeQuickSettingsByBar() - longClickedPanelTag: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " / dropTag : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const-string v11, "active"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "candidate"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 414
    iget v11, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCurrentActiveApps:I

    const/4 v12, 0x5

    if-gt v11, v12, :cond_0

    .line 415
    const v11, 0x7f090e2f

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/android/settings/NotificationPanelMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 416
    .local v9, message:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 459
    .end local v9           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v0, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 420
    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    const-string v12, "notification_panel_empty"

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 421
    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 422
    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    const-string v12, "notification_panel_empty"

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    iget v11, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCurrentCandidateApps:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCurrentCandidateApps:I

    .line 425
    iget v11, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCurrentActiveApps:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCurrentActiveApps:I

    .line 458
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->saveAppslist()V

    goto :goto_0

    .line 428
    :cond_2
    const-string v11, "candidate"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "active"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 429
    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v0, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 430
    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 431
    .local v10, oustedItem:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 432
    const-string v11, "notification_panel_empty"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 433
    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    const-string v12, "notification_panel_empty"

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    iget v11, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCurrentActiveApps:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCurrentActiveApps:I

    .line 435
    iget v11, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCurrentCandidateApps:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCurrentCandidateApps:I

    goto :goto_1

    .line 437
    :cond_3
    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 440
    .end local v10           #oustedItem:Ljava/lang/String;
    :cond_4
    const-string v11, "active"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "active"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 441
    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 442
    .local v5, longClickedPanel:Ljava/lang/String;
    if-ge v4, v0, :cond_5

    .line 443
    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    add-int/lit8 v12, v0, -0x1

    invoke-virtual {v11, v12, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 445
    :cond_5
    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v11, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 448
    .end local v5           #longClickedPanel:Ljava/lang/String;
    :cond_6
    const-string v11, "candidate"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "candidate"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 449
    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 450
    .restart local v5       #longClickedPanel:Ljava/lang/String;
    if-ge v4, v0, :cond_7

    .line 451
    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    add-int/lit8 v12, v0, -0x1

    invoke-virtual {v11, v12, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 453
    :cond_7
    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v11, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private changeQuickSettingsByPanel(Landroid/view/View;)V
    .locals 14
    .parameter "dropView"

    .prologue
    .line 463
    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mLongClickedView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 464
    .local v8, longClickedPanelTag:Ljava/lang/String;
    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 465
    .local v7, longClickedPanelInfo:[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v6, v7, v10

    .line 466
    .local v6, longClickedPanelCategory:Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 469
    .local v4, longClickedIdx:I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 470
    .local v3, dropPanelTag:Ljava/lang/String;
    const-string v10, "/"

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 471
    .local v2, dropPanelInfo:[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v1, v2, v10

    .line 472
    .local v1, dropPanelCategory:Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 474
    .local v0, dropIdx:I
    const-string v10, "NotificationPanelMenu"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "changeQuickSettingsByPanel() - longClickedPanelTag: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " / dropTag : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v10, "active"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "candidate"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 478
    const-string v10, "notification_panel_empty"

    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 479
    iget v10, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCurrentActiveApps:I

    const/4 v11, 0x5

    if-gt v10, v11, :cond_0

    .line 480
    const v10, 0x7f090e2f

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/NotificationPanelMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 481
    .local v9, message:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 526
    .end local v9           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 484
    :cond_0
    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    iget v11, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCurrentCandidateApps:I

    iget-object v12, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 485
    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 486
    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    const-string v11, "notification_panel_empty"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    iget v10, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCurrentCandidateApps:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCurrentCandidateApps:I

    .line 489
    iget v10, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCurrentActiveApps:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCurrentActiveApps:I

    .line 525
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->saveAppslist()V

    goto :goto_0

    .line 492
    :cond_2
    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-direct {p0, v10, v4, v11, v0}, Lcom/android/settings/NotificationPanelMenu;->swapPanels(Ljava/util/ArrayList;ILjava/util/ArrayList;I)V

    goto :goto_1

    .line 495
    :cond_3
    const-string v10, "candidate"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "active"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 496
    const-string v10, "notification_panel_empty"

    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 497
    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    iget v11, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCurrentActiveApps:I

    iget-object v12, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 498
    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 499
    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    const-string v11, "notification_panel_empty"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    iget v10, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCurrentActiveApps:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCurrentActiveApps:I

    .line 502
    iget v10, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCurrentCandidateApps:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCurrentCandidateApps:I

    goto :goto_1

    .line 504
    :cond_4
    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-direct {p0, v10, v4, v11, v0}, Lcom/android/settings/NotificationPanelMenu;->swapPanels(Ljava/util/ArrayList;ILjava/util/ArrayList;I)V

    goto :goto_1

    .line 507
    :cond_5
    const-string v10, "active"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "active"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 508
    const-string v10, "notification_panel_empty"

    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 509
    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 510
    .local v5, longClickedPanel:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    iget v11, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCurrentActiveApps:I

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 512
    .end local v5           #longClickedPanel:Ljava/lang/String;
    :cond_6
    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-direct {p0, v10, v4, v11, v0}, Lcom/android/settings/NotificationPanelMenu;->swapPanels(Ljava/util/ArrayList;ILjava/util/ArrayList;I)V

    goto/16 :goto_1

    .line 515
    :cond_7
    const-string v10, "candidate"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "candidate"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 516
    const-string v10, "notification_panel_empty"

    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 517
    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 518
    .restart local v5       #longClickedPanel:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    iget v11, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCurrentCandidateApps:I

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 520
    .end local v5           #longClickedPanel:Ljava/lang/String;
    :cond_8
    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-direct {p0, v10, v4, v11, v0}, Lcom/android/settings/NotificationPanelMenu;->swapPanels(Ljava/util/ArrayList;ILjava/util/ArrayList;I)V

    goto/16 :goto_1
.end method

.method private displayQuickSettings(IILjava/util/ArrayList;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 14
    .parameter "totalPanelNum"
    .parameter "oneLinePanelNum"
    .parameter
    .parameter "panelLayout1"
    .parameter "panelBarLayout1"
    .parameter "panelLayout2"
    .parameter "panelBarLayout2"
    .parameter
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "Landroid/widget/LinearLayout;",
            "Landroid/widget/LinearLayout;",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 267
    .local p3, notificationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p8, panelList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const-string v12, "layout_inflater"

    invoke-virtual {p0, v12}, Lcom/android/settings/NotificationPanelMenu;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 268
    .local v3, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 270
    .local v5, packageName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 271
    .local v2, idx:I
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    .line 272
    const v12, 0x7f0400d3

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 273
    .local v11, panelView:Landroid/view/View;
    const v12, 0x7f0b024d

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 274
    .local v6, panel:Landroid/widget/LinearLayout;
    const v12, 0x7f0b0186

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 275
    .local v8, panelImageView:Landroid/widget/ImageView;
    const v12, 0x7f0b0188

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 277
    .local v10, panelTextView:Landroid/widget/TextView;
    const v12, 0x7f0400d4

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 278
    .local v4, overlayedPanelView:Landroid/view/View;
    const v12, 0x7f0b024f

    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 279
    .local v7, panelBar:Landroid/widget/ImageView;
    const v12, 0x7f0b0250

    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 282
    .local v1, fakePanel:Landroid/view/View;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p9

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 283
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p9

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 284
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p9

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 286
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 287
    .local v9, panelText:Ljava/lang/String;
    const-string v12, "notification_panel_empty"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 288
    const v12, 0x7f020286

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 296
    :goto_1
    iget-object v12, p0, Lcom/android/settings/NotificationPanelMenu;->mfakePanelDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v1, v12}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 298
    move/from16 v0, p2

    if-ge v2, v0, :cond_1

    .line 299
    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 300
    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 305
    :goto_2
    move-object/from16 v0, p8

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const-string v13, "drawable"

    invoke-virtual {v12, v9, v13, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const-string v13, "string"

    invoke-virtual {v12, v9, v13, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(I)V

    .line 292
    iget-object v12, p0, Lcom/android/settings/NotificationPanelMenu;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 294
    iget-object v12, p0, Lcom/android/settings/NotificationPanelMenu;->mPanelBarDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    goto :goto_1

    .line 302
    :cond_1
    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 303
    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 307
    .end local v1           #fakePanel:Landroid/view/View;
    .end local v4           #overlayedPanelView:Landroid/view/View;
    .end local v6           #panel:Landroid/widget/LinearLayout;
    .end local v7           #panelBar:Landroid/widget/ImageView;
    .end local v8           #panelImageView:Landroid/widget/ImageView;
    .end local v9           #panelText:Ljava/lang/String;
    .end local v10           #panelTextView:Landroid/widget/TextView;
    .end local v11           #panelView:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private loadAppslist()V
    .locals 9

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "notification_panel_active_app_list"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, active_app_list:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "notification_panel_candidate_app_list"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, cadidate_app_list:Ljava/lang/String;
    const-string v6, "NotificationPanelMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadAppslist() - active_app_list : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const-string v6, "NotificationPanelMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadAppslist() - cadidate_app_list : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    if-eqz v1, :cond_0

    if-nez v3, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    const-string v6, ";"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, activeApps:[Ljava/lang/String;
    array-length v6, v0

    iput v6, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfActiveNotificationPanel:I

    .line 362
    const-string v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, cadidateApps:[Ljava/lang/String;
    array-length v6, v2

    iput v6, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCandidateNotificationPanel:I

    .line 366
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    iget v6, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfActiveNotificationPanel:I

    if-ge v5, v6, :cond_3

    .line 367
    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    aget-object v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 368
    .local v4, convertPanelString:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 369
    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    const-string v6, "notification_panel_empty"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 371
    iget v6, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCurrentActiveApps:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCurrentActiveApps:I

    .line 374
    :cond_2
    const-string v6, "NotificationPanelMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadAppslist() - activeApps: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / convertPanelString: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 376
    .end local v4           #convertPanelString:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    :goto_2
    iget v6, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCurrentActiveApps:I

    rsub-int/lit8 v6, v6, 0xa

    if-ge v5, v6, :cond_4

    .line 377
    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    const-string v7, "notification_panel_empty"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 379
    :cond_4
    const-string v6, "NotificationPanelMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadAppslist() - mNumOfCurrentActiveApps: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCurrentActiveApps:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v5, 0x0

    :goto_3
    iget v6, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCandidateNotificationPanel:I

    if-ge v5, v6, :cond_6

    .line 383
    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    aget-object v7, v2, v5

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 384
    .restart local v4       #convertPanelString:Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 385
    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    const-string v6, "notification_panel_empty"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 387
    iget v6, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCurrentCandidateApps:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCurrentCandidateApps:I

    .line 390
    :cond_5
    const-string v6, "NotificationPanelMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadAppslist() - cadidateApps: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / convertPanelString: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 392
    .end local v4           #convertPanelString:Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    :goto_4
    iget v6, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCurrentCandidateApps:I

    rsub-int/lit8 v6, v6, 0xa

    if-ge v5, v6, :cond_7

    .line 393
    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    const-string v7, "notification_panel_empty"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 394
    :cond_7
    const-string v6, "NotificationPanelMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadAppslist() - mNumOfCurrentCandidateApps: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCurrentCandidateApps:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private makeConvertPanelName()V
    .locals 3

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Wifi"

    const-string v2, "notification_panel_wifi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Location"

    const-string v2, "notification_panel_gps"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SilentMode"

    const-string v2, "notification_panel_sound"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "AutoRotate"

    const-string v2, "notification_panel_screen_rotation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Bluetooth"

    const-string v2, "notification_panel_bluetooth"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "MobileData"

    const-string v2, "notification_panel_mobile_data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "DormantMode"

    const-string v2, "notification_panel_blocking_mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "PowerSaving"

    const-string v2, "notification_panel_powersaving"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "AllShareCast"

    const-string v2, "notification_panel_mobile_allshare_cast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "MultiWindow"

    const-string v2, "notification_panel_multiwindows"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "WiFiHotspot"

    const-string v2, "notification_panel_wifihotspot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SBeam"

    const-string v2, "notification_panel_sbeam"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Nfc"

    const-string v2, "notification_panel_nfc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "DrivingMode"

    const-string v2, "notification_panel_driving"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SmartStay"

    const-string v2, "notification_panel_smartstay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Sync"

    const-string v2, "notification_panel_sync"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "AirplaneMode"

    const-string v2, "notification_airplane_mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Empty"

    const-string v2, "notification_panel_empty"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_wifi"

    const-string v2, "Wifi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_gps"

    const-string v2, "Location"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_sound"

    const-string v2, "SilentMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_screen_rotation"

    const-string v2, "AutoRotate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_bluetooth"

    const-string v2, "Bluetooth"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_mobile_data"

    const-string v2, "MobileData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_blocking_mode"

    const-string v2, "DormantMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_powersaving"

    const-string v2, "PowerSaving"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_mobile_allshare_cast"

    const-string v2, "AllShareCast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_multiwindows"

    const-string v2, "MultiWindow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_wifihotspot"

    const-string v2, "WiFiHotspot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_sbeam"

    const-string v2, "SBeam"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_nfc"

    const-string v2, "Nfc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_driving"

    const-string v2, "DrivingMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_smartstay"

    const-string v2, "SmartStay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_sync"

    const-string v2, "Sync"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_airplane_mode"

    const-string v2, "AirplaneMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_empty"

    const-string v2, "Empty"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    return-void
.end method

.method private refreshUI()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 570
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/settings/NotificationPanelMenu;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 572
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f0400d5

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 573
    .local v2, quickSettingsView:Landroid/view/View;
    const v3, 0x7f0b0253

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelLayout1:Landroid/widget/LinearLayout;

    .line 574
    const v3, 0x7f0b0254

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelBarLayout1:Landroid/widget/LinearLayout;

    .line 575
    const v3, 0x7f0b0255

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelLayout2:Landroid/widget/LinearLayout;

    .line 576
    const v3, 0x7f0b0256

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelBarLayout2:Landroid/widget/LinearLayout;

    .line 577
    const v3, 0x7f0b0257

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableButtonsLayout1:Landroid/widget/LinearLayout;

    .line 578
    const v3, 0x7f0b0258

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableButtonsBarLayout1:Landroid/widget/LinearLayout;

    .line 579
    const v3, 0x7f0b0259

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableButtonsLayout2:Landroid/widget/LinearLayout;

    .line 580
    const v3, 0x7f0b025a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableButtonsBarLayout2:Landroid/widget/LinearLayout;

    .line 582
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->updateQuickSettingsList()V

    .line 584
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const v4, 0x7f0b0251

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 585
    .local v0, existingFooterView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 588
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v5, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 589
    return-void
.end method

.method private saveAppslist()V
    .locals 9

    .prologue
    .line 535
    const-string v0, ""

    .line 536
    .local v0, activeApps:Ljava/lang/String;
    const-string v2, ""

    .line 541
    .local v2, candidateApps:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget v6, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfActiveNotificationPanel:I

    if-ge v5, v6, :cond_2

    .line 542
    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 543
    .local v4, convertPanelString:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 544
    .local v1, activeContent:Ljava/lang/String;
    const-string v6, "notification_panel_empty"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 541
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 547
    :cond_1
    if-eqz v1, :cond_0

    .line 548
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 551
    .end local v1           #activeContent:Ljava/lang/String;
    .end local v4           #convertPanelString:Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    :goto_2
    iget v6, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCandidateNotificationPanel:I

    if-ge v5, v6, :cond_5

    .line 552
    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 553
    .restart local v4       #convertPanelString:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 554
    .local v3, candidateContent:Ljava/lang/String;
    const-string v6, "notification_panel_empty"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 551
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 557
    :cond_4
    if-eqz v3, :cond_3

    .line 558
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 561
    .end local v3           #candidateContent:Ljava/lang/String;
    .end local v4           #convertPanelString:Ljava/lang/String;
    :cond_5
    const-string v6, "NotificationPanelMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveAppslist() -  activeApps: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const-string v6, "NotificationPanelMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveAppslist() - candidateApps: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const-string v6, "NotificationPanelMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveAppslist() - mNumOfCurrentActiveApps: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCurrentActiveApps:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / mNumOfCurrentCandidateApps: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/NotificationPanelMenu;->mNumOfCurrentCandidateApps:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "notification_panel_active_app_list"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 566
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "notification_panel_candidate_app_list"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 567
    return-void
.end method

.method private swapPanels(Ljava/util/ArrayList;ILjava/util/ArrayList;I)V
    .locals 2
    .parameter
    .parameter "longClickedIdx"
    .parameter
    .parameter "dropIdx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 529
    .local p1, longClickedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, dropList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 530
    .local v0, temp:Ljava/lang/String;
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 531
    invoke-virtual {p3, p4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 532
    return-void
.end method

.method private updateQuickSettingsList()V
    .locals 10

    .prologue
    const/16 v1, 0xa

    .line 237
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 238
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelBarLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 239
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 240
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelBarLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 241
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableButtonsLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 242
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableButtonsBarLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 243
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableButtonsLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 244
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableButtonsBarLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 246
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 247
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationPanelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 251
    const/4 v2, 0x5

    .line 255
    .local v2, oneLinePanelNum:I
    :goto_0
    const-string v0, "NotificationPanelMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateQuickSettingsList() - oneLinePanelNum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v3, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelLayout1:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelBarLayout1:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelLayout2:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelBarLayout2:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;

    const-string v9, "active"

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/settings/NotificationPanelMenu;->displayQuickSettings(IILjava/util/ArrayList;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 261
    iget-object v3, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableButtonsLayout1:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableButtonsBarLayout1:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableButtonsLayout2:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableButtonsBarLayout2:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationPanelList:Ljava/util/ArrayList;

    const-string v9, "candidate"

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/settings/NotificationPanelMenu;->displayQuickSettings(IILjava/util/ArrayList;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 263
    return-void

    .line 253
    .end local v2           #oneLinePanelNum:I
    :cond_0
    const/16 v2, 0xa

    .restart local v2       #oneLinePanelNum:I
    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->refreshUI()V

    .line 203
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 204
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 230
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 231
    const-string v0, "NotificationPanelMenu"

    const-string v1, "onConfigurationChanged() is called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->refreshUI()V

    .line 233
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 192
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 193
    const v0, 0x7f070044

    invoke-virtual {p0, v0}, Lcom/android/settings/NotificationPanelMenu;->addPreferencesFromResource(I)V

    .line 194
    const-string v0, "brightness_adjustment"

    invoke-virtual {p0, v0}, Lcom/android/settings/NotificationPanelMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightness:Landroid/preference/CheckBoxPreference;

    .line 196
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->makeConvertPanelName()V

    .line 197
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->loadAppslist()V

    .line 198
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 215
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightnessAdjustmentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 217
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 221
    iget-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 223
    .local v0, value:Z
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_panel_brightness_adjustment"

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 225
    .end local v0           #value:Z
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 223
    .restart local v0       #value:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 208
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 209
    iget-object v2, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_panel_brightness_adjustment"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "notification_panel_brightness_adjustment"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightnessAdjustmentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 211
    return-void

    :cond_0
    move v0, v1

    .line 209
    goto :goto_0
.end method
