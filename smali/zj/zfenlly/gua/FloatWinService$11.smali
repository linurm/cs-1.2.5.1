.class Lzj/zfenlly/gua/FloatWinService$11;
.super Ljava/lang/Object;
.source "FloatWinService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzj/zfenlly/gua/FloatWinService;->createView2(Landroid/content/Context;)V
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
    .line 422
    iput-object p1, p0, Lzj/zfenlly/gua/FloatWinService$11;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 425
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$11;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # getter for: Lzj/zfenlly/gua/FloatWinService;->add_flag:Z
    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$600(Lzj/zfenlly/gua/FloatWinService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$11;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # setter for: Lzj/zfenlly/gua/FloatWinService;->add_flag:Z
    invoke-static {v0, v2}, Lzj/zfenlly/gua/FloatWinService;->access$602(Lzj/zfenlly/gua/FloatWinService;Z)Z

    .line 427
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$11;->this$0:Lzj/zfenlly/gua/FloatWinService;

    const-string v1, "[ - ]"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 428
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$11;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # invokes: Lzj/zfenlly/gua/FloatWinService;->delCView()V
    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$700(Lzj/zfenlly/gua/FloatWinService;)V

    .line 430
    :cond_0
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$11;->this$0:Lzj/zfenlly/gua/FloatWinService;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService$11;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # getter for: Lzj/zfenlly/gua/FloatWinService;->CoordinateView:Lzj/zfenlly/gua/MZFloatView;
    invoke-static {v1}, Lzj/zfenlly/gua/FloatWinService;->access$900(Lzj/zfenlly/gua/FloatWinService;)Lzj/zfenlly/gua/MZFloatView;

    move-result-object v1

    # invokes: Lzj/zfenlly/gua/FloatWinService;->StartClick(Lzj/zfenlly/gua/MZFloatView;)V
    invoke-static {v0, v1}, Lzj/zfenlly/gua/FloatWinService;->access$1000(Lzj/zfenlly/gua/FloatWinService;Lzj/zfenlly/gua/MZFloatView;)V

    .line 431
    return-void
.end method
