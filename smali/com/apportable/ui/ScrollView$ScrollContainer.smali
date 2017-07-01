.class Lcom/apportable/ui/ScrollView$ScrollContainer;
.super Landroid/widget/AbsoluteLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/ScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollContainer"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    #@3
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 5

    #@0
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onMeasure(II)V

    #@3
    invoke-virtual {p0}, Lcom/apportable/ui/ScrollView$ScrollContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_10

    #@9
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@b
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@d
    invoke-virtual {p0, v1, v0}, Lcom/apportable/ui/ScrollView$ScrollContainer;->setMeasuredDimension(II)V

    #@10
    :cond_10
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    #@0
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v0, 0x2

    #@3
    new-array v0, v0, [I

    #@5
    invoke-virtual {p0, v0}, Lcom/apportable/ui/ScrollView$ScrollContainer;->getLocationInWindow([I)V

    #@8
    aget v1, v0, v4

    #@a
    int-to-float v1, v1

    #@b
    aget v2, v0, v3

    #@d
    int-to-float v2, v2

    #@e
    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@11
    invoke-static {p1}, Lcom/apportable/ui/Window;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    #@14
    aget v1, v0, v4

    #@16
    neg-int v1, v1

    #@17
    int-to-float v1, v1

    #@18
    aget v0, v0, v3

    #@1a
    neg-int v0, v0

    #@1b
    int-to-float v0, v0

    #@1c
    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@1f
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@22
    return v3
.end method

.method public setSize(II)V
    .registers 5

    #@0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    #@2
    const/16 v1, 0x33

    #@4
    invoke-direct {v0, p1, p2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    #@7
    invoke-virtual {p0, v0}, Lcom/apportable/ui/ScrollView$ScrollContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@a
    return-void
.end method
