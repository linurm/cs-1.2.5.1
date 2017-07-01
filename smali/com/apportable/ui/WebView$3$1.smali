.class Lcom/apportable/ui/WebView$3$1;
.super Landroid/webkit/WebView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/WebView$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/ui/WebView$3;


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebView$3;Landroid/content/Context;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/ui/WebView$3$1;->this$1:Lcom/apportable/ui/WebView$3;

    #@2
    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    #@5
    return-void
.end method

.method static synthetic access$1500(Lcom/apportable/ui/WebView$3$1;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/apportable/ui/WebView$3$1;->superRequestLayout()V

    #@3
    return-void
.end method

.method static synthetic access$1700(Lcom/apportable/ui/WebView$3$1;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/apportable/ui/WebView$3$1;->superInvalidate()V

    #@3
    return-void
.end method

.method static synthetic access$1800(Lcom/apportable/ui/WebView$3$1;ILandroid/graphics/Rect;)Z
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/WebView$3$1;->superRequestFocus(ILandroid/graphics/Rect;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$1900(Lcom/apportable/ui/WebView$3$1;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/apportable/ui/WebView$3$1;->superSetLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@3
    return-void
.end method

.method static synthetic access$2000(Lcom/apportable/ui/WebView$3$1;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/apportable/ui/WebView$3$1;->superOnAttachedToWindow()V

    #@3
    return-void
.end method

.method static synthetic access$2100(Lcom/apportable/ui/WebView$3$1;Lcom/apportable/ui/View;I)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/WebView$3$1;->superOnVisibilityChanged(Lcom/apportable/ui/View;I)V

    #@3
    return-void
.end method

.method private superInvalidate()V
    .registers 1

    #@0
    invoke-super {p0}, Landroid/webkit/WebView;->invalidate()V

    #@3
    return-void
.end method

.method private superOnAttachedToWindow()V
    .registers 1

    #@0
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    #@3
    return-void
.end method

.method private superOnVisibilityChanged(Lcom/apportable/ui/View;I)V
    .registers 3

    #@0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onVisibilityChanged(Landroid/view/View;I)V

    #@3
    return-void
.end method

.method private superRequestFocus(ILandroid/graphics/Rect;)Z
    .registers 4

    #@0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->requestFocus(ILandroid/graphics/Rect;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private superRequestLayout()V
    .registers 1

    #@0
    invoke-super {p0}, Landroid/webkit/WebView;->requestLayout()V

    #@3
    return-void
.end method

.method private superSetLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    #@0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@3
    return-void
.end method


# virtual methods
.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 6

    #@0
    invoke-super {p0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_7

    #@6
    :goto_6
    return-object v0

    #@7
    :cond_7
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    #@9
    iget-object v1, p0, Lcom/apportable/ui/WebView$3$1;->this$1:Lcom/apportable/ui/WebView$3;

    #@b
    iget-object v1, v1, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    #@d
    # getter for: Lcom/apportable/ui/WebView;->mFrame:Landroid/graphics/RectF;
    invoke-static {v1}, Lcom/apportable/ui/WebView;->access$2200(Lcom/apportable/ui/WebView;)Landroid/graphics/RectF;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    #@14
    move-result v1

    #@15
    float-to-int v1, v1

    #@16
    iget-object v2, p0, Lcom/apportable/ui/WebView$3$1;->this$1:Lcom/apportable/ui/WebView$3;

    #@18
    iget-object v2, v2, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    #@1a
    # getter for: Lcom/apportable/ui/WebView;->mFrame:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/apportable/ui/WebView;->access$2200(Lcom/apportable/ui/WebView;)Landroid/graphics/RectF;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    #@21
    move-result v2

    #@22
    float-to-int v2, v2

    #@23
    iget-object v3, p0, Lcom/apportable/ui/WebView$3$1;->this$1:Lcom/apportable/ui/WebView$3;

    #@25
    iget-object v3, v3, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    #@27
    # getter for: Lcom/apportable/ui/WebView;->mFrame:Landroid/graphics/RectF;
    invoke-static {v3}, Lcom/apportable/ui/WebView;->access$2200(Lcom/apportable/ui/WebView;)Landroid/graphics/RectF;

    #@2a
    move-result-object v3

    #@2b
    iget v3, v3, Landroid/graphics/RectF;->left:F

    #@2d
    float-to-int v3, v3

    #@2e
    iget-object v4, p0, Lcom/apportable/ui/WebView$3$1;->this$1:Lcom/apportable/ui/WebView$3;

    #@30
    iget-object v4, v4, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    #@32
    # getter for: Lcom/apportable/ui/WebView;->mFrame:Landroid/graphics/RectF;
    invoke-static {v4}, Lcom/apportable/ui/WebView;->access$2200(Lcom/apportable/ui/WebView;)Landroid/graphics/RectF;

    #@35
    move-result-object v4

    #@36
    iget v4, v4, Landroid/graphics/RectF;->top:F

    #@38
    float-to-int v4, v4

    #@39
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    #@3c
    goto :goto_6
.end method

.method public invalidate()V
    .registers 3

    #@0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/apportable/ui/WebView$3$1;->this$1:Lcom/apportable/ui/WebView$3;

    #@6
    iget-object v1, v1, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    #@8
    # getter for: Lcom/apportable/ui/WebView;->apportableMainThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/apportable/ui/WebView;->access$300(Lcom/apportable/ui/WebView;)Ljava/lang/Thread;

    #@b
    move-result-object v1

    #@c
    if-eq v0, v1, :cond_1f

    #@e
    iget-object v0, p0, Lcom/apportable/ui/WebView$3$1;->this$1:Lcom/apportable/ui/WebView$3;

    #@10
    iget-object v0, v0, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    #@12
    # getter for: Lcom/apportable/ui/WebView;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$1600(Lcom/apportable/ui/WebView;)Landroid/os/Handler;

    #@15
    move-result-object v0

    #@16
    new-instance v1, Lcom/apportable/ui/WebView$3$1$2;

    #@18
    invoke-direct {v1, p0}, Lcom/apportable/ui/WebView$3$1$2;-><init>(Lcom/apportable/ui/WebView$3$1;)V

    #@1b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1e
    :goto_1e
    return-void

    #@1f
    :cond_1f
    invoke-direct {p0}, Lcom/apportable/ui/WebView$3$1;->superInvalidate()V

    #@22
    goto :goto_1e
.end method

.method public onAttachedToWindow()V
    .registers 3

    #@0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/apportable/ui/WebView$3$1;->this$1:Lcom/apportable/ui/WebView$3;

    #@6
    iget-object v1, v1, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    #@8
    # getter for: Lcom/apportable/ui/WebView;->apportableMainThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/apportable/ui/WebView;->access$300(Lcom/apportable/ui/WebView;)Ljava/lang/Thread;

    #@b
    move-result-object v1

    #@c
    if-ne v0, v1, :cond_1b

    #@e
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@11
    move-result-object v0

    #@12
    new-instance v1, Lcom/apportable/ui/WebView$3$1$5;

    #@14
    invoke-direct {v1, p0}, Lcom/apportable/ui/WebView$3$1$5;-><init>(Lcom/apportable/ui/WebView$3$1;)V

    #@17
    invoke-virtual {v0, v1}, Lcom/apportable/activity/VerdeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    #@1a
    :goto_1a
    return-void

    #@1b
    :cond_1b
    invoke-direct {p0}, Lcom/apportable/ui/WebView$3$1;->superOnAttachedToWindow()V

    #@1e
    goto :goto_1a
.end method

.method protected onVisibilityChanged(Lcom/apportable/ui/View;I)V
    .registers 5

    #@0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/apportable/ui/WebView$3$1;->this$1:Lcom/apportable/ui/WebView$3;

    #@6
    iget-object v1, v1, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    #@8
    # getter for: Lcom/apportable/ui/WebView;->apportableMainThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/apportable/ui/WebView;->access$300(Lcom/apportable/ui/WebView;)Ljava/lang/Thread;

    #@b
    move-result-object v1

    #@c
    if-ne v0, v1, :cond_1b

    #@e
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@11
    move-result-object v0

    #@12
    new-instance v1, Lcom/apportable/ui/WebView$3$1$6;

    #@14
    invoke-direct {v1, p0, p1, p2}, Lcom/apportable/ui/WebView$3$1$6;-><init>(Lcom/apportable/ui/WebView$3$1;Lcom/apportable/ui/View;I)V

    #@17
    invoke-virtual {v0, v1}, Lcom/apportable/activity/VerdeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    #@1a
    :goto_1a
    return-void

    #@1b
    :cond_1b
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/WebView$3$1;->superOnVisibilityChanged(Lcom/apportable/ui/View;I)V

    #@1e
    goto :goto_1a
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .registers 5

    #@0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/apportable/ui/WebView$3$1;->this$1:Lcom/apportable/ui/WebView$3;

    #@6
    iget-object v1, v1, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    #@8
    # getter for: Lcom/apportable/ui/WebView;->apportableMainThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/apportable/ui/WebView;->access$300(Lcom/apportable/ui/WebView;)Ljava/lang/Thread;

    #@b
    move-result-object v1

    #@c
    if-eq v0, v1, :cond_1f

    #@e
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@11
    move-result-object v0

    #@12
    new-instance v1, Lcom/apportable/ui/WebView$3$1$3;

    #@14
    invoke-direct {v1, p0, p1, p2}, Lcom/apportable/ui/WebView$3$1$3;-><init>(Lcom/apportable/ui/WebView$3$1;ILandroid/graphics/Rect;)V

    #@17
    invoke-virtual {v0, v1}, Lcom/apportable/activity/VerdeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    #@1a
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/WebView$3$1;->superRequestFocus(ILandroid/graphics/Rect;)Z

    #@1d
    move-result v0

    #@1e
    :goto_1e
    return v0

    #@1f
    :cond_1f
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/WebView$3$1;->superRequestFocus(ILandroid/graphics/Rect;)Z

    #@22
    move-result v0

    #@23
    goto :goto_1e
.end method

.method public requestLayout()V
    .registers 3

    #@0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/apportable/ui/WebView$3$1;->this$1:Lcom/apportable/ui/WebView$3;

    #@6
    iget-object v1, v1, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    #@8
    # getter for: Lcom/apportable/ui/WebView;->apportableMainThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/apportable/ui/WebView;->access$300(Lcom/apportable/ui/WebView;)Ljava/lang/Thread;

    #@b
    move-result-object v1

    #@c
    if-eq v0, v1, :cond_1f

    #@e
    iget-object v0, p0, Lcom/apportable/ui/WebView$3$1;->this$1:Lcom/apportable/ui/WebView$3;

    #@10
    iget-object v0, v0, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    #@12
    # getter for: Lcom/apportable/ui/WebView;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$1600(Lcom/apportable/ui/WebView;)Landroid/os/Handler;

    #@15
    move-result-object v0

    #@16
    new-instance v1, Lcom/apportable/ui/WebView$3$1$1;

    #@18
    invoke-direct {v1, p0}, Lcom/apportable/ui/WebView$3$1$1;-><init>(Lcom/apportable/ui/WebView$3$1;)V

    #@1b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1e
    :goto_1e
    return-void

    #@1f
    :cond_1f
    invoke-super {p0}, Landroid/webkit/WebView;->requestLayout()V

    #@22
    goto :goto_1e
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    #@0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/apportable/ui/WebView$3$1;->this$1:Lcom/apportable/ui/WebView$3;

    #@6
    iget-object v1, v1, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    #@8
    # getter for: Lcom/apportable/ui/WebView;->apportableMainThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/apportable/ui/WebView;->access$300(Lcom/apportable/ui/WebView;)Ljava/lang/Thread;

    #@b
    move-result-object v1

    #@c
    if-ne v0, v1, :cond_1b

    #@e
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@11
    move-result-object v0

    #@12
    new-instance v1, Lcom/apportable/ui/WebView$3$1$4;

    #@14
    invoke-direct {v1, p0, p1}, Lcom/apportable/ui/WebView$3$1$4;-><init>(Lcom/apportable/ui/WebView$3$1;Landroid/view/ViewGroup$LayoutParams;)V

    #@17
    invoke-virtual {v0, v1}, Lcom/apportable/activity/VerdeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    #@1a
    :goto_1a
    return-void

    #@1b
    :cond_1b
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@1e
    goto :goto_1a
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method
