.class Lzj/zfenlly/gua/FloatWinService$8;
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
    .line 364
    iput-object p1, p0, Lzj/zfenlly/gua/FloatWinService$8;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 368
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$8;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # getter for: Lzj/zfenlly/gua/FloatWinService;->settings_flag:Z
    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$300(Lzj/zfenlly/gua/FloatWinService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$8;->this$0:Lzj/zfenlly/gua/FloatWinService;

    const/4 v1, 0x0

    # setter for: Lzj/zfenlly/gua/FloatWinService;->settings_flag:Z
    invoke-static {v0, v1}, Lzj/zfenlly/gua/FloatWinService;->access$302(Lzj/zfenlly/gua/FloatWinService;Z)Z

    .line 370
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$8;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # invokes: Lzj/zfenlly/gua/FloatWinService;->delSettingsView()V
    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$400(Lzj/zfenlly/gua/FloatWinService;)V

    .line 376
    :goto_0
    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$8;->this$0:Lzj/zfenlly/gua/FloatWinService;

    const/4 v1, 0x1

    # setter for: Lzj/zfenlly/gua/FloatWinService;->settings_flag:Z
    invoke-static {v0, v1}, Lzj/zfenlly/gua/FloatWinService;->access$302(Lzj/zfenlly/gua/FloatWinService;Z)Z

    .line 374
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$8;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # invokes: Lzj/zfenlly/gua/FloatWinService;->addSettingsView()V
    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$500(Lzj/zfenlly/gua/FloatWinService;)V

    goto :goto_0
.end method
