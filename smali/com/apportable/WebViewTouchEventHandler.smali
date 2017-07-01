.class public Lcom/apportable/WebViewTouchEventHandler;
.super Lcom/apportable/ViewTouchEventHandler;


# direct methods
.method public constructor <init>(J)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/apportable/ViewTouchEventHandler;-><init>(J)V

    #@3
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    #@0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    #@3
    move-result v0

    #@4
    packed-switch v0, :pswitch_data_14

    #@7
    :cond_7
    :goto_7
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_7

    #@f
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    #@12
    goto :goto_7

    #@13
    nop

    #@14
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method
