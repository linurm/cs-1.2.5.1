.class Lzj/zfenlly/gua/FloatWinService$10;
.super Ljava/lang/Object;
.source "FloatWinService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzj/zfenlly/gua/FloatWinService;->addExpandView()V
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
    .line 429
    iput-object p1, p0, Lzj/zfenlly/gua/FloatWinService$10;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 432
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$10;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # getter for: Lzj/zfenlly/gua/FloatWinService;->add_flag:Z
    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$700(Lzj/zfenlly/gua/FloatWinService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$10;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # setter for: Lzj/zfenlly/gua/FloatWinService;->add_flag:Z
    invoke-static {v0, v2}, Lzj/zfenlly/gua/FloatWinService;->access$702(Lzj/zfenlly/gua/FloatWinService;Z)Z

    .line 434
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$10;->this$0:Lzj/zfenlly/gua/FloatWinService;

    const-string v1, "start"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 435
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$10;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # invokes: Lzj/zfenlly/gua/FloatWinService;->delCView()V
    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$800(Lzj/zfenlly/gua/FloatWinService;)V

    .line 437
    :cond_0
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$10;->this$0:Lzj/zfenlly/gua/FloatWinService;

    const/4 v1, 0x6

    # invokes: Lzj/zfenlly/gua/FloatWinService;->StartClick(I)V
    invoke-static {v0, v1}, Lzj/zfenlly/gua/FloatWinService;->access$1200(Lzj/zfenlly/gua/FloatWinService;I)V

    .line 438
    return-void
.end method
