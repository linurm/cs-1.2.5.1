.class Lzj/zfenlly/gua/FloatWinService$2;
.super Ljava/lang/Object;
.source "FloatWinService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzj/zfenlly/gua/FloatWinService;->createView(Landroid/content/Context;)V
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
    .line 241
    iput-object p1, p0, Lzj/zfenlly/gua/FloatWinService$2;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "var1"    # Landroid/view/View;

    .prologue
    .line 244
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$2;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # getter for: Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;
    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$100(Lzj/zfenlly/gua/FloatWinService;)Lzj/zfenlly/gua/FloatView;

    move-result-object v0

    invoke-virtual {v0}, Lzj/zfenlly/gua/FloatView;->isbClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    const-string v0, "click"

    const-string v1, "click"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$2;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # getter for: Lzj/zfenlly/gua/FloatWinService;->isOnExpandView:Z
    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$200(Lzj/zfenlly/gua/FloatWinService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$2;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # invokes: Lzj/zfenlly/gua/FloatWinService;->addExpandView()V
    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$300(Lzj/zfenlly/gua/FloatWinService;)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$2;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # invokes: Lzj/zfenlly/gua/FloatWinService;->delExpandView()V
    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$400(Lzj/zfenlly/gua/FloatWinService;)V

    .line 251
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$2;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # getter for: Lzj/zfenlly/gua/FloatWinService;->settings_flag:Z
    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$500(Lzj/zfenlly/gua/FloatWinService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$2;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # invokes: Lzj/zfenlly/gua/FloatWinService;->delSettingsView()V
    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$600(Lzj/zfenlly/gua/FloatWinService;)V

    .line 253
    :cond_2
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$2;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # getter for: Lzj/zfenlly/gua/FloatWinService;->add_flag:Z
    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$700(Lzj/zfenlly/gua/FloatWinService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$2;->this$0:Lzj/zfenlly/gua/FloatWinService;

    const-string v1, "[ - ]"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 255
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$2;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # invokes: Lzj/zfenlly/gua/FloatWinService;->delCView()V
    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$800(Lzj/zfenlly/gua/FloatWinService;)V

    goto :goto_0
.end method
