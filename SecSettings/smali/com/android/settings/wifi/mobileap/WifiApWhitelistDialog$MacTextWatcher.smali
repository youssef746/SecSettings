.class Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;
.super Ljava/lang/Object;
.source "WifiApWhitelistDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MacTextWatcher"
.end annotation


# instance fields
.field private mIndex:I

.field private mTempMac:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;I)V
    .locals 0
    .parameter
    .parameter "index"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput p2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mIndex:I

    .line 188
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTextNoChange:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$000(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    #calls: Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->validate()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$100(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)V

    .line 203
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTextNoChange:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$002(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 208
    if-eqz p1, :cond_0

    .line 209
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mTempMac:Ljava/lang/String;

    .line 210
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 215
    return-void
.end method
