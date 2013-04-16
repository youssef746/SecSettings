.class Lcom/android/settings/wifi/WifiSettings$19;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 1716
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1718
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1719
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x25

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1721
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1722
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "enable"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1723
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1725
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 1726
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/16 v3, 0x8

    #calls: Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V
    invoke-static {v2, v3}, Lcom/android/settings/wifi/WifiSettings;->access$1300(Lcom/android/settings/wifi/WifiSettings;I)V

    .line 1727
    return-void
.end method
