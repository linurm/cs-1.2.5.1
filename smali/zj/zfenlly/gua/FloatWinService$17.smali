.class Lzj/zfenlly/gua/FloatWinService$17;
.super Ljava/lang/Object;
.source "FloatWinService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzj/zfenlly/gua/FloatWinService;->addSettingsView()V
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
    .line 657
    iput-object p1, p0, Lzj/zfenlly/gua/FloatWinService$17;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 660
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$17;->this$0:Lzj/zfenlly/gua/FloatWinService;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService$17;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # getter for: Lzj/zfenlly/gua/FloatWinService;->click_times:I
    invoke-static {v1}, Lzj/zfenlly/gua/FloatWinService;->access$1300(Lzj/zfenlly/gua/FloatWinService;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    # setter for: Lzj/zfenlly/gua/FloatWinService;->click_times:I
    invoke-static {v0, v1}, Lzj/zfenlly/gua/FloatWinService;->access$1302(Lzj/zfenlly/gua/FloatWinService;I)I

    .line 661
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$17;->this$0:Lzj/zfenlly/gua/FloatWinService;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService$17;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # getter for: Lzj/zfenlly/gua/FloatWinService;->click_times:I
    invoke-static {v1}, Lzj/zfenlly/gua/FloatWinService;->access$1300(Lzj/zfenlly/gua/FloatWinService;)I

    move-result v1

    # invokes: Lzj/zfenlly/gua/FloatWinService;->setTimes(I)V
    invoke-static {v0, v1}, Lzj/zfenlly/gua/FloatWinService;->access$1400(Lzj/zfenlly/gua/FloatWinService;I)V

    .line 662
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$17;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # getter for: Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;
    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$1500(Lzj/zfenlly/gua/FloatWinService;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService$17;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # getter for: Lzj/zfenlly/gua/FloatWinService;->click_times:I
    invoke-static {v2}, Lzj/zfenlly/gua/FloatWinService;->access$1300(Lzj/zfenlly/gua/FloatWinService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 663
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$17;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # getter for: Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;
    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$1600(Lzj/zfenlly/gua/FloatWinService;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService$17;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # getter for: Lzj/zfenlly/gua/FloatWinService;->click_times:I
    invoke-static {v2}, Lzj/zfenlly/gua/FloatWinService;->access$1300(Lzj/zfenlly/gua/FloatWinService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 664
    return-void
.end method
