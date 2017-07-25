.class Lzj/zfenlly/gua/FloatWinService$6;
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
    .line 367
    iput-object p1, p0, Lzj/zfenlly/gua/FloatWinService$6;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 370
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$6;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-virtual {v0}, Lzj/zfenlly/gua/FloatWinService;->setRefresh()V

    .line 371
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$6;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # getter for: Lzj/zfenlly/gua/FloatWinService;->isOnExpandView:Z
    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$200(Lzj/zfenlly/gua/FloatWinService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 372
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$6;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # invokes: Lzj/zfenlly/gua/FloatWinService;->addExpandView()V
    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$300(Lzj/zfenlly/gua/FloatWinService;)V

    .line 382
    :cond_0
    :goto_0
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$6;->this$0:Lzj/zfenlly/gua/FloatWinService;

    const-string v1, "refresh"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 383
    return-void

    .line 374
    :cond_1
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$6;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # invokes: Lzj/zfenlly/gua/FloatWinService;->delExpandView()V
    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$400(Lzj/zfenlly/gua/FloatWinService;)V

    .line 375
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$6;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # getter for: Lzj/zfenlly/gua/FloatWinService;->settings_flag:Z
    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$500(Lzj/zfenlly/gua/FloatWinService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 376
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$6;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # invokes: Lzj/zfenlly/gua/FloatWinService;->delSettingsView()V
    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$600(Lzj/zfenlly/gua/FloatWinService;)V

    .line 377
    :cond_2
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$6;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # getter for: Lzj/zfenlly/gua/FloatWinService;->add_flag:Z
    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$700(Lzj/zfenlly/gua/FloatWinService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$6;->this$0:Lzj/zfenlly/gua/FloatWinService;

    const-string v1, "[ - ]"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 379
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$6;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # invokes: Lzj/zfenlly/gua/FloatWinService;->delCView()V
    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$800(Lzj/zfenlly/gua/FloatWinService;)V

    goto :goto_0
.end method
