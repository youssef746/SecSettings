.class Lcom/android/settings/wifi/mobileap/WifiApWarning$5;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApWarning;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

.field final synthetic val$av:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;->val$av:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 159
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    .line 160
    return-void
.end method
