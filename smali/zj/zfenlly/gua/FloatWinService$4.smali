.class Lzj/zfenlly/gua/FloatWinService$4;
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
    .line 330
    iput-object p1, p0, Lzj/zfenlly/gua/FloatWinService$4;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 333
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DATE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 335
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService$4;->this$0:Lzj/zfenlly/gua/FloatWinService;

    iget-object v1, v1, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 337
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService$4;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # invokes: Lzj/zfenlly/gua/FloatWinService;->delExpandView()V
    invoke-static {v1}, Lzj/zfenlly/gua/FloatWinService;->access$400(Lzj/zfenlly/gua/FloatWinService;)V

    .line 338
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService$4;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # getter for: Lzj/zfenlly/gua/FloatWinService;->settings_flag:Z
    invoke-static {v1}, Lzj/zfenlly/gua/FloatWinService;->access$500(Lzj/zfenlly/gua/FloatWinService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService$4;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # invokes: Lzj/zfenlly/gua/FloatWinService;->delSettingsView()V
    invoke-static {v1}, Lzj/zfenlly/gua/FloatWinService;->access$600(Lzj/zfenlly/gua/FloatWinService;)V

    .line 340
    :cond_0
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService$4;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # getter for: Lzj/zfenlly/gua/FloatWinService;->add_flag:Z
    invoke-static {v1}, Lzj/zfenlly/gua/FloatWinService;->access$700(Lzj/zfenlly/gua/FloatWinService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService$4;->this$0:Lzj/zfenlly/gua/FloatWinService;

    const-string v2, "[ - ]"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 342
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService$4;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # invokes: Lzj/zfenlly/gua/FloatWinService;->delCView()V
    invoke-static {v1}, Lzj/zfenlly/gua/FloatWinService;->access$800(Lzj/zfenlly/gua/FloatWinService;)V

    .line 344
    :cond_1
    return-void
.end method
