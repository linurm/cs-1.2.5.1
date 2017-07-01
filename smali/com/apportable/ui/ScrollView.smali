.class Lcom/apportable/ui/ScrollView;
.super Lcom/apportable/ui/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/ui/ScrollView$ScrollContainer;,
        Lcom/apportable/ui/ScrollView$TrackingScrollView;
    }
.end annotation


# instance fields
.field private _contentHeight:I

.field private _contentWidth:I

.field private _insetHeight:I

.field private _insetWidth:I

.field private mFrame:Landroid/graphics/RectF;

.field private mScrollContainer:Lcom/apportable/ui/ScrollView$ScrollContainer;

.field private mScrollView:Lcom/apportable/ui/ScrollView$TrackingScrollView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;I)V

    #@3
    new-instance v0, Landroid/graphics/RectF;

    #@5
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@8
    iput-object v0, p0, Lcom/apportable/ui/ScrollView;->mFrame:Landroid/graphics/RectF;

    #@a
    invoke-direct {p0, p1}, Lcom/apportable/ui/ScrollView;->init(Landroid/content/Context;)V

    #@d
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/graphics/RectF;)V
    .registers 5

    #@0
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@3
    new-instance v0, Landroid/graphics/RectF;

    #@5
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@8
    iput-object v0, p0, Lcom/apportable/ui/ScrollView;->mFrame:Landroid/graphics/RectF;

    #@a
    iput-object p3, p0, Lcom/apportable/ui/ScrollView;->mFrame:Landroid/graphics/RectF;

    #@c
    invoke-direct {p0, p1}, Lcom/apportable/ui/ScrollView;->init(Landroid/content/Context;)V

    #@f
    return-void
.end method

.method static synthetic access$000(I)V
    .registers 1

    #@0
    invoke-static {p0}, Lcom/apportable/ui/ScrollView;->notifyTouchFinish(I)V

    #@3
    return-void
.end method

.method static synthetic access$100(III)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/apportable/ui/ScrollView;->notifyFling(III)V

    #@3
    return-void
.end method

.method static synthetic access$200(III)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/apportable/ui/ScrollView;->notifyScroll(III)V

    #@3
    return-void
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/ScrollView;
    .registers 3

    #@0
    new-instance v0, Lcom/apportable/ui/ScrollView;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/ScrollView;-><init>(Landroid/content/Context;I)V

    #@5
    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/graphics/RectF;)Lcom/apportable/ui/ScrollView;
    .registers 4

    #@0
    new-instance v0, Lcom/apportable/ui/ScrollView;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/ScrollView;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@5
    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .registers 7

    #@0
    const/4 v4, 0x0

    #@1
    const/4 v3, -0x1

    #@2
    new-instance v0, Lcom/apportable/ui/ScrollView$ScrollContainer;

    #@4
    invoke-direct {v0, p1}, Lcom/apportable/ui/ScrollView$ScrollContainer;-><init>(Landroid/content/Context;)V

    #@7
    iput-object v0, p0, Lcom/apportable/ui/ScrollView;->mScrollContainer:Lcom/apportable/ui/ScrollView$ScrollContainer;

    #@9
    iget-object v0, p0, Lcom/apportable/ui/ScrollView;->mScrollContainer:Lcom/apportable/ui/ScrollView$ScrollContainer;

    #@b
    iget-object v1, p0, Lcom/apportable/ui/ScrollView;->mFrame:Landroid/graphics/RectF;

    #@d
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    #@10
    move-result v1

    #@11
    float-to-int v1, v1

    #@12
    iget-object v2, p0, Lcom/apportable/ui/ScrollView;->mFrame:Landroid/graphics/RectF;

    #@14
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    #@17
    move-result v2

    #@18
    float-to-int v2, v2

    #@19
    invoke-virtual {v0, v1, v2}, Lcom/apportable/ui/ScrollView$ScrollContainer;->setSize(II)V

    #@1c
    new-instance v0, Lcom/apportable/ui/ScrollView$TrackingScrollView;

    #@1e
    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/ScrollView$TrackingScrollView;-><init>(Lcom/apportable/ui/ScrollView;Landroid/content/Context;)V

    #@21
    iput-object v0, p0, Lcom/apportable/ui/ScrollView;->mScrollView:Lcom/apportable/ui/ScrollView$TrackingScrollView;

    #@23
    iget-object v0, p0, Lcom/apportable/ui/ScrollView;->mScrollView:Lcom/apportable/ui/ScrollView$TrackingScrollView;

    #@25
    iget-object v1, p0, Lcom/apportable/ui/ScrollView;->mScrollContainer:Lcom/apportable/ui/ScrollView$ScrollContainer;

    #@27
    invoke-virtual {v0, v1}, Lcom/apportable/ui/ScrollView$TrackingScrollView;->addView(Landroid/view/View;)V

    #@2a
    iget-object v0, p0, Lcom/apportable/ui/ScrollView;->mScrollView:Lcom/apportable/ui/ScrollView$TrackingScrollView;

    #@2c
    invoke-virtual {v0, v4}, Lcom/apportable/ui/ScrollView$TrackingScrollView;->setVerticalFadingEdgeEnabled(Z)V

    #@2f
    iget-object v0, p0, Lcom/apportable/ui/ScrollView;->mScrollView:Lcom/apportable/ui/ScrollView$TrackingScrollView;

    #@31
    invoke-virtual {v0, v4}, Lcom/apportable/ui/ScrollView$TrackingScrollView;->setHorizontalFadingEdgeEnabled(Z)V

    #@34
    iget-object v0, p0, Lcom/apportable/ui/ScrollView;->mScrollView:Lcom/apportable/ui/ScrollView$TrackingScrollView;

    #@36
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    #@38
    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@3b
    invoke-virtual {p0, v0, v1}, Lcom/apportable/ui/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@3e
    return-void
.end method

.method private static native notifyAutoScrollFinished(I)V
.end method

.method private static native notifyFling(III)V
.end method

.method private static native notifyScroll(III)V
.end method

.method private static native notifyTouchFinish(I)V
.end method

.method private updateScrollContainerSize()V
    .registers 5

    #@0
    iget v0, p0, Lcom/apportable/ui/ScrollView;->_contentWidth:I

    #@2
    iget-object v1, p0, Lcom/apportable/ui/ScrollView;->mFrame:Landroid/graphics/RectF;

    #@4
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    #@7
    move-result v1

    #@8
    float-to-int v1, v1

    #@9
    if-le v0, v1, :cond_26

    #@b
    iget v0, p0, Lcom/apportable/ui/ScrollView;->_contentWidth:I

    #@d
    :goto_d
    iget v1, p0, Lcom/apportable/ui/ScrollView;->_contentHeight:I

    #@f
    iget-object v2, p0, Lcom/apportable/ui/ScrollView;->mFrame:Landroid/graphics/RectF;

    #@11
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    #@14
    move-result v2

    #@15
    float-to-int v2, v2

    #@16
    if-le v1, v2, :cond_2e

    #@18
    iget v1, p0, Lcom/apportable/ui/ScrollView;->_contentHeight:I

    #@1a
    :goto_1a
    iget-object v2, p0, Lcom/apportable/ui/ScrollView;->mScrollContainer:Lcom/apportable/ui/ScrollView$ScrollContainer;

    #@1c
    iget v3, p0, Lcom/apportable/ui/ScrollView;->_insetWidth:I

    #@1e
    add-int/2addr v0, v3

    #@1f
    iget v3, p0, Lcom/apportable/ui/ScrollView;->_insetHeight:I

    #@21
    add-int/2addr v1, v3

    #@22
    invoke-virtual {v2, v0, v1}, Lcom/apportable/ui/ScrollView$ScrollContainer;->setSize(II)V

    #@25
    return-void

    #@26
    :cond_26
    iget-object v0, p0, Lcom/apportable/ui/ScrollView;->mFrame:Landroid/graphics/RectF;

    #@28
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    #@2b
    move-result v0

    #@2c
    float-to-int v0, v0

    #@2d
    goto :goto_d

    #@2e
    :cond_2e
    iget-object v1, p0, Lcom/apportable/ui/ScrollView;->mFrame:Landroid/graphics/RectF;

    #@30
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    #@33
    move-result v1

    #@34
    float-to-int v1, v1

    #@35
    goto :goto_1a
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    #@0
    iget-object v0, p0, Lcom/apportable/ui/ScrollView;->mScrollView:Lcom/apportable/ui/ScrollView$TrackingScrollView;

    #@2
    invoke-virtual {v0}, Lcom/apportable/ui/ScrollView$TrackingScrollView;->getScrollX()I

    #@5
    move-result v0

    #@6
    int-to-float v0, v0

    #@7
    iget-object v1, p0, Lcom/apportable/ui/ScrollView;->mScrollView:Lcom/apportable/ui/ScrollView$TrackingScrollView;

    #@9
    invoke-virtual {v1}, Lcom/apportable/ui/ScrollView$TrackingScrollView;->getScrollY()I

    #@c
    move-result v1

    #@d
    int-to-float v1, v1

    #@e
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@11
    invoke-super {p0, p1}, Lcom/apportable/ui/View;->notifyTouchEvent(Landroid/view/MotionEvent;)V

    #@14
    iget-object v0, p0, Lcom/apportable/ui/ScrollView;->mScrollView:Lcom/apportable/ui/ScrollView$TrackingScrollView;

    #@16
    invoke-virtual {v0}, Lcom/apportable/ui/ScrollView$TrackingScrollView;->getScrollX()I

    #@19
    move-result v0

    #@1a
    neg-int v0, v0

    #@1b
    int-to-float v0, v0

    #@1c
    iget-object v1, p0, Lcom/apportable/ui/ScrollView;->mScrollView:Lcom/apportable/ui/ScrollView$TrackingScrollView;

    #@1e
    invoke-virtual {v1}, Lcom/apportable/ui/ScrollView$TrackingScrollView;->getScrollY()I

    #@21
    move-result v1

    #@22
    neg-int v1, v1

    #@23
    int-to-float v1, v1

    #@24
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@27
    invoke-super {p0, p1}, Lcom/apportable/ui/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@2a
    move-result v0

    #@2b
    return v0
.end method

.method protected getSubviewsGroup()Landroid/view/ViewGroup;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/ScrollView;->mScrollContainer:Lcom/apportable/ui/ScrollView$ScrollContainer;

    #@2
    return-object v0
.end method

.method protected isDragging()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/ScrollView;->mScrollView:Lcom/apportable/ui/ScrollView$TrackingScrollView;

    #@2
    invoke-virtual {v0}, Lcom/apportable/ui/ScrollView$TrackingScrollView;->isDragging()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected notifyTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    #@0
    return-void
.end method

.method public setContentInset(IIII)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/apportable/ui/ScrollView;->mScrollContainer:Lcom/apportable/ui/ScrollView$ScrollContainer;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/apportable/ui/ScrollView$ScrollContainer;->setPadding(IIII)V

    #@5
    add-int v0, p1, p3

    #@7
    iput v0, p0, Lcom/apportable/ui/ScrollView;->_insetWidth:I

    #@9
    add-int v0, p2, p4

    #@b
    iput v0, p0, Lcom/apportable/ui/ScrollView;->_insetHeight:I

    #@d
    invoke-direct {p0}, Lcom/apportable/ui/ScrollView;->updateScrollContainerSize()V

    #@10
    return-void
.end method

.method public setContentOffset(IIZ)V
    .registers 5

    #@0
    if-eqz p3, :cond_8

    #@2
    iget-object v0, p0, Lcom/apportable/ui/ScrollView;->mScrollView:Lcom/apportable/ui/ScrollView$TrackingScrollView;

    #@4
    invoke-virtual {v0, p1, p2}, Lcom/apportable/ui/ScrollView$TrackingScrollView;->smoothScrollTo(II)V

    #@7
    :goto_7
    return-void

    #@8
    :cond_8
    iget-object v0, p0, Lcom/apportable/ui/ScrollView;->mScrollView:Lcom/apportable/ui/ScrollView$TrackingScrollView;

    #@a
    invoke-virtual {v0, p1, p2}, Lcom/apportable/ui/ScrollView$TrackingScrollView;->scrollTo(II)V

    #@d
    goto :goto_7
.end method

.method public setContentSize(II)V
    .registers 3

    #@0
    iput p1, p0, Lcom/apportable/ui/ScrollView;->_contentWidth:I

    #@2
    iput p2, p0, Lcom/apportable/ui/ScrollView;->_contentHeight:I

    #@4
    invoke-direct {p0}, Lcom/apportable/ui/ScrollView;->updateScrollContainerSize()V

    #@7
    return-void
.end method

.method public setFrame(Landroid/graphics/RectF;)V
    .registers 2

    #@0
    invoke-super {p0, p1}, Lcom/apportable/ui/View;->setFrame(Landroid/graphics/RectF;)V

    #@3
    iput-object p1, p0, Lcom/apportable/ui/ScrollView;->mFrame:Landroid/graphics/RectF;

    #@5
    return-void
.end method

.method public setGestureIntercepting(Z)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/ui/ScrollView;->mScrollView:Lcom/apportable/ui/ScrollView$TrackingScrollView;

    #@2
    invoke-virtual {v0, p1}, Lcom/apportable/ui/ScrollView$TrackingScrollView;->setGestureIntercepting(Z)V

    #@5
    return-void
.end method

.method public setPagingEnabled(Z)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/ui/ScrollView;->mScrollView:Lcom/apportable/ui/ScrollView$TrackingScrollView;

    #@2
    # setter for: Lcom/apportable/ui/ScrollView$TrackingScrollView;->mPagingEnabled:Z
    invoke-static {v0, p1}, Lcom/apportable/ui/ScrollView$TrackingScrollView;->access$302(Lcom/apportable/ui/ScrollView$TrackingScrollView;Z)Z

    #@5
    return-void
.end method

.method public setScrollEnabled(Z)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/ui/ScrollView;->mScrollView:Lcom/apportable/ui/ScrollView$TrackingScrollView;

    #@2
    invoke-virtual {v0, p1}, Lcom/apportable/ui/ScrollView$TrackingScrollView;->setScrollEnabled(Z)V

    #@5
    return-void
.end method
