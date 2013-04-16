.class Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;
.super Ljava/lang/Object;
.source "LockScreenShortcutSettings.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 785
    iput-object p1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 787
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnDragging:Z
    invoke-static {v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$400(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;
    invoke-static {v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$500(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/DeleteView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_2

    .line 788
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #setter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnDragging:Z
    invoke-static {v0, v7}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$402(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Z)Z

    .line 789
    const/4 v6, 0x0

    .line 790
    .local v6, selectedItem:I
    const/4 v6, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I
    invoke-static {v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$100(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$300(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #setter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I
    invoke-static {v0, v6}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$602(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;I)I

    .line 795
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$700(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 796
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$700(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->releaseSurface()V

    .line 799
    :cond_1
    const-string v0, "dot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dot : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    .line 800
    .local v2, data:Landroid/content/ClipData;
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    new-instance v1, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;

    invoke-direct {v1, p1}, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;-><init>(Landroid/view/View;)V

    #setter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$702(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;)Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;

    .line 801
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$700(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;

    move-result-object v3

    move-object v1, p1

    move-object v4, p1

    #calls: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->startDrag(Landroid/view/View;Landroid/content/ClipData;Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;Ljava/lang/Object;I)Z
    invoke-static/range {v0 .. v5}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$800(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Landroid/view/View;Landroid/content/ClipData;Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;Ljava/lang/Object;I)Z

    .line 802
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 803
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;
    invoke-static {v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$500(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/DeleteView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setVisibility(I)V

    .line 804
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;
    invoke-static {v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$500(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/DeleteView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setNormalTrashIcon()V

    .line 805
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;
    invoke-static {v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$500(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/DeleteView;

    move-result-object v0

    const v1, 0x7f02028e

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setBackgroundResource(I)V

    .line 807
    .end local v2           #data:Landroid/content/ClipData;
    .end local v6           #selectedItem:I
    :cond_2
    return v7

    .line 790
    .restart local v6       #selectedItem:I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method
