.class Lcom/android/settings/wifi/WifiSettings$20;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->showDurationDialog(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1730
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialogRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiSettings;->access$1400(Lcom/android/settings/wifi/WifiSettings;)Ljava/lang/Runnable;

    move-result-object v1

    #calls: Lcom/android/settings/wifi/WifiSettings;->removeDialogTimer(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$1100(Lcom/android/settings/wifi/WifiSettings;Ljava/lang/Runnable;)V

    .line 1733
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$1500(Lcom/android/settings/wifi/WifiSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1734
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$1502(Lcom/android/settings/wifi/WifiSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1735
    :cond_0
    return-void
.end method
