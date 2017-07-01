.class Lcom/apportable/ui/Button$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/Button;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/Button;


# direct methods
.method constructor <init>(Lcom/apportable/ui/Button;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/Button$3;->this$0:Lcom/apportable/ui/Button;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11

    #@0
    const-wide/16 v6, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    #@6
    move-result v0

    #@7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    #@a
    move-result v1

    #@b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    #@e
    move-result v2

    #@f
    and-int/lit16 v2, v2, 0xff

    #@11
    packed-switch v2, :pswitch_data_82

    #@14
    :goto_14
    :pswitch_14
    const/4 v0, 0x0

    #@15
    return v0

    #@16
    :pswitch_16
    iget-object v0, p0, Lcom/apportable/ui/Button$3;->this$0:Lcom/apportable/ui/Button;

    #@18
    const/4 v1, 0x1

    #@19
    invoke-virtual {v0, v1}, Lcom/apportable/ui/Button;->sendEvent(I)V

    #@1c
    goto :goto_14

    #@1d
    :pswitch_1d
    iget-object v2, p0, Lcom/apportable/ui/Button$3;->this$0:Lcom/apportable/ui/Button;

    #@1f
    # getter for: Lcom/apportable/ui/Button;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/apportable/ui/Button;->access$100(Lcom/apportable/ui/Button;)Landroid/os/Handler;

    #@22
    move-result-object v2

    #@23
    iget-object v3, p0, Lcom/apportable/ui/Button$3;->this$0:Lcom/apportable/ui/Button;

    #@25
    # getter for: Lcom/apportable/ui/Button;->touchUpOutsideEvent:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/apportable/ui/Button;->access$000(Lcom/apportable/ui/Button;)Ljava/lang/Runnable;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@2c
    iget-object v2, p0, Lcom/apportable/ui/Button$3;->this$0:Lcom/apportable/ui/Button;

    #@2e
    # getter for: Lcom/apportable/ui/Button;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/apportable/ui/Button;->access$100(Lcom/apportable/ui/Button;)Landroid/os/Handler;

    #@31
    move-result-object v2

    #@32
    iget-object v3, p0, Lcom/apportable/ui/Button$3;->this$0:Lcom/apportable/ui/Button;

    #@34
    # getter for: Lcom/apportable/ui/Button;->touchUpInsideEvent:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/apportable/ui/Button;->access$200(Lcom/apportable/ui/Button;)Ljava/lang/Runnable;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@3b
    cmpg-float v2, v4, v0

    #@3d
    if-gtz v2, :cond_69

    #@3f
    iget-object v2, p0, Lcom/apportable/ui/Button$3;->this$0:Lcom/apportable/ui/Button;

    #@41
    invoke-virtual {v2}, Lcom/apportable/ui/Button;->getWidth()I

    #@44
    move-result v2

    #@45
    int-to-float v2, v2

    #@46
    cmpg-float v0, v0, v2

    #@48
    if-gtz v0, :cond_69

    #@4a
    cmpg-float v0, v4, v1

    #@4c
    if-gtz v0, :cond_69

    #@4e
    iget-object v0, p0, Lcom/apportable/ui/Button$3;->this$0:Lcom/apportable/ui/Button;

    #@50
    invoke-virtual {v0}, Lcom/apportable/ui/Button;->getHeight()I

    #@53
    move-result v0

    #@54
    int-to-float v0, v0

    #@55
    cmpg-float v0, v1, v0

    #@57
    if-gtz v0, :cond_69

    #@59
    iget-object v0, p0, Lcom/apportable/ui/Button$3;->this$0:Lcom/apportable/ui/Button;

    #@5b
    # getter for: Lcom/apportable/ui/Button;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/apportable/ui/Button;->access$100(Lcom/apportable/ui/Button;)Landroid/os/Handler;

    #@5e
    move-result-object v0

    #@5f
    iget-object v1, p0, Lcom/apportable/ui/Button$3;->this$0:Lcom/apportable/ui/Button;

    #@61
    # getter for: Lcom/apportable/ui/Button;->touchUpInsideEvent:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/apportable/ui/Button;->access$200(Lcom/apportable/ui/Button;)Ljava/lang/Runnable;

    #@64
    move-result-object v1

    #@65
    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@68
    goto :goto_14

    #@69
    :cond_69
    iget-object v0, p0, Lcom/apportable/ui/Button$3;->this$0:Lcom/apportable/ui/Button;

    #@6b
    # getter for: Lcom/apportable/ui/Button;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/apportable/ui/Button;->access$100(Lcom/apportable/ui/Button;)Landroid/os/Handler;

    #@6e
    move-result-object v0

    #@6f
    iget-object v1, p0, Lcom/apportable/ui/Button$3;->this$0:Lcom/apportable/ui/Button;

    #@71
    # getter for: Lcom/apportable/ui/Button;->touchUpOutsideEvent:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/apportable/ui/Button;->access$000(Lcom/apportable/ui/Button;)Ljava/lang/Runnable;

    #@74
    move-result-object v1

    #@75
    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@78
    goto :goto_14

    #@79
    :pswitch_79
    iget-object v0, p0, Lcom/apportable/ui/Button$3;->this$0:Lcom/apportable/ui/Button;

    #@7b
    const/16 v1, 0x100

    #@7d
    invoke-virtual {v0, v1}, Lcom/apportable/ui/Button;->sendEvent(I)V

    #@80
    goto :goto_14

    #@81
    nop

    #@82
    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_16
        :pswitch_1d
        :pswitch_14
        :pswitch_79
        :pswitch_14
        :pswitch_16
        :pswitch_1d
    .end packed-switch
.end method
