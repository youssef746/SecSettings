.class Lcom/android/settings/DisplaySettings$7;
.super Landroid/os/Handler;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/settings/DisplaySettings$7;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 288
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 293
    :goto_0
    return-void

    .line 290
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$7;->this$0:Lcom/android/settings/DisplaySettings;

    #calls: Lcom/android/settings/DisplaySettings;->updateAnimation()V
    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->access$600(Lcom/android/settings/DisplaySettings;)V

    goto :goto_0

    .line 288
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method
