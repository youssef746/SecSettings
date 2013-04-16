.class Lcom/android/settings/wifi/WifiApDialog$5;
.super Ljava/lang/Object;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApDialog;->showHideSsidWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 782
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog$5;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog$5;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    #getter for: Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApDialog;->access$1000(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 785
    return-void
.end method
