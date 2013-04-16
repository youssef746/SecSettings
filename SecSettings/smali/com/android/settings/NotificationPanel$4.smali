.class Lcom/android/settings/NotificationPanel$4;
.super Ljava/lang/Object;
.source "NotificationPanel.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NotificationPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NotificationPanel;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 685
    iput-object p1, p0, Lcom/android/settings/NotificationPanel$4;->this$0:Lcom/android/settings/NotificationPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 689
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    .line 691
    .local v0, iv:Landroid/widget/ImageView;
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 712
    const/4 v1, 0x1

    .line 715
    .local v1, res:Z
    :goto_0
    return v1

    .line 693
    .end local v1           #res:Z
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/NotificationPanel$4;->this$0:Lcom/android/settings/NotificationPanel;

    const/16 v3, 0x3e8

    #calls: Lcom/android/settings/NotificationPanel;->changeNotificationPanel(Landroid/view/View;I)V
    invoke-static {v2, p1, v3}, Lcom/android/settings/NotificationPanel;->access$700(Lcom/android/settings/NotificationPanel;Landroid/view/View;I)V

    .line 694
    iget-object v2, p0, Lcom/android/settings/NotificationPanel$4;->this$0:Lcom/android/settings/NotificationPanel;

    const/4 v3, 0x0

    #setter for: Lcom/android/settings/NotificationPanel;->mIsOnDragging:Z
    invoke-static {v2, v3}, Lcom/android/settings/NotificationPanel;->access$102(Lcom/android/settings/NotificationPanel;Z)Z

    .line 695
    iget-object v2, p0, Lcom/android/settings/NotificationPanel$4;->this$0:Lcom/android/settings/NotificationPanel;

    #calls: Lcom/android/settings/NotificationPanel;->SaveAppslist()V
    invoke-static {v2}, Lcom/android/settings/NotificationPanel;->access$800(Lcom/android/settings/NotificationPanel;)V

    .line 696
    const/4 v1, 0x1

    .line 697
    .restart local v1       #res:Z
    goto :goto_0

    .line 700
    .end local v1           #res:Z
    :pswitch_1
    const v2, 0x7f020290

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 701
    iget-object v2, p0, Lcom/android/settings/NotificationPanel$4;->this$0:Lcom/android/settings/NotificationPanel;

    #getter for: Lcom/android/settings/NotificationPanel;->mNotificationPanel:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings/NotificationPanel;->access$200(Lcom/android/settings/NotificationPanel;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/NotificationPanel$4;->this$0:Lcom/android/settings/NotificationPanel;

    #getter for: Lcom/android/settings/NotificationPanel;->mOldItemPosition:I
    invoke-static {v3}, Lcom/android/settings/NotificationPanel;->access$1000(Lcom/android/settings/NotificationPanel;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const v3, 0x7f02034a

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 702
    const/4 v1, 0x0

    .line 703
    .restart local v1       #res:Z
    goto :goto_0

    .line 707
    .end local v1           #res:Z
    :pswitch_2
    const v2, 0x7f0203b5

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 708
    const/4 v1, 0x1

    .line 709
    .restart local v1       #res:Z
    goto :goto_0

    .line 691
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
