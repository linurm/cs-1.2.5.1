.class Lzj/zfenlly/gua/FloatWinService$1;
.super Landroid/os/Handler;
.source "FloatWinService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzj/zfenlly/gua/FloatWinService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzj/zfenlly/gua/FloatWinService;


# direct methods
.method constructor <init>(Lzj/zfenlly/gua/FloatWinService;)V
    .locals 0
    .param p1, "this$0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 64
    iput-object p1, p0, Lzj/zfenlly/gua/FloatWinService$1;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 68
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 70
    :pswitch_0
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$1;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # getter for: Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;
    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$000(Lzj/zfenlly/gua/FloatWinService;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "START"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 73
    :pswitch_1
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$1;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # getter for: Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;
    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$000(Lzj/zfenlly/gua/FloatWinService;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "STOP"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
