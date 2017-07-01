.class public Lpandemic/android/view/TwoDScrollView;
.super Landroid/widget/FrameLayout;


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field static final MAX_SCROLL_FACTOR:F = 0.5f


# instance fields
.field private mGestureIntercepting:Z

.field private mIsBeingDragged:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastScroll:J

.field private mMinimumVelocity:I

.field private mScrollEnabled:Z

.field private mScroller:Landroid/widget/Scroller;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@4
    iput-boolean v0, p0, Lpandemic/android/view/TwoDScrollView;->mIsBeingDragged:Z

    #@6
    iput-boolean v0, p0, Lpandemic/android/view/TwoDScrollView;->mGestureIntercepting:Z

    #@8
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lpandemic/android/view/TwoDScrollView;->mScrollEnabled:Z

    #@b
    invoke-direct {p0}, Lpandemic/android/view/TwoDScrollView;->initTwoDScrollView()V

    #@e
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    iput-boolean v0, p0, Lpandemic/android/view/TwoDScrollView;->mIsBeingDragged:Z

    #@6
    iput-boolean v0, p0, Lpandemic/android/view/TwoDScrollView;->mGestureIntercepting:Z

    #@8
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lpandemic/android/view/TwoDScrollView;->mScrollEnabled:Z

    #@b
    invoke-direct {p0}, Lpandemic/android/view/TwoDScrollView;->initTwoDScrollView()V

    #@e
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    iput-boolean v0, p0, Lpandemic/android/view/TwoDScrollView;->mIsBeingDragged:Z

    #@6
    iput-boolean v0, p0, Lpandemic/android/view/TwoDScrollView;->mGestureIntercepting:Z

    #@8
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lpandemic/android/view/TwoDScrollView;->mScrollEnabled:Z

    #@b
    invoke-direct {p0}, Lpandemic/android/view/TwoDScrollView;->initTwoDScrollView()V

    #@e
    return-void
.end method

.method private canScroll()Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lpandemic/android/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    #@4
    move-result-object v1

    #@5
    if-eqz v1, :cond_30

    #@7
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    #@a
    move-result v2

    #@b
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    #@e
    move-result v1

    #@f
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getHeight()I

    #@12
    move-result v3

    #@13
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingTop()I

    #@16
    move-result v4

    #@17
    add-int/2addr v2, v4

    #@18
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingBottom()I

    #@1b
    move-result v4

    #@1c
    add-int/2addr v2, v4

    #@1d
    if-lt v3, v2, :cond_2f

    #@1f
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getWidth()I

    #@22
    move-result v2

    #@23
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingLeft()I

    #@26
    move-result v3

    #@27
    add-int/2addr v1, v3

    #@28
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingRight()I

    #@2b
    move-result v3

    #@2c
    add-int/2addr v1, v3

    #@2d
    if-ge v2, v1, :cond_30

    #@2f
    :cond_2f
    const/4 v0, 0x1

    #@30
    :cond_30
    return v0
.end method

.method private clamp(III)I
    .registers 5

    #@0
    if-ge p2, p3, :cond_4

    #@2
    if-gez p1, :cond_6

    #@4
    :cond_4
    const/4 p1, 0x0

    #@5
    :cond_5
    :goto_5
    return p1

    #@6
    :cond_6
    add-int v0, p2, p1

    #@8
    if-le v0, p3, :cond_5

    #@a
    sub-int p1, p3, p2

    #@c
    goto :goto_5
.end method

.method private doScroll(II)V
    .registers 3

    #@0
    if-nez p1, :cond_4

    #@2
    if-eqz p2, :cond_7

    #@4
    :cond_4
    invoke-virtual {p0, p1, p2}, Lpandemic/android/view/TwoDScrollView;->smoothScrollBy(II)V

    #@7
    :cond_7
    return-void
.end method

.method private initTwoDScrollView()V
    .registers 3

    #@0
    new-instance v0, Landroid/widget/Scroller;

    #@2
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    #@9
    iput-object v0, p0, Lpandemic/android/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    #@b
    const/4 v0, 0x1

    #@c
    invoke-virtual {p0, v0}, Lpandemic/android/view/TwoDScrollView;->setFocusable(Z)V

    #@f
    const/high16 v0, 0x40000

    #@11
    invoke-virtual {p0, v0}, Lpandemic/android/view/TwoDScrollView;->setDescendantFocusability(I)V

    #@14
    const/4 v0, 0x0

    #@15
    invoke-virtual {p0, v0}, Lpandemic/android/view/TwoDScrollView;->setWillNotDraw(Z)V

    #@18
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getContext()Landroid/content/Context;

    #@1b
    move-result-object v0

    #@1c
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@23
    move-result v1

    #@24
    iput v1, p0, Lpandemic/android/view/TwoDScrollView;->mTouchSlop:I

    #@26
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    #@29
    move-result v0

    #@2a
    iput v0, p0, Lpandemic/android/view/TwoDScrollView;->mMinimumVelocity:I

    #@2c
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 4

    #@0
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-lez v0, :cond_e

    #@6
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string v1, "TwoDScrollView can host only one direct child"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    #@11
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 5

    #@0
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-lez v0, :cond_e

    #@6
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string v1, "TwoDScrollView can host only one direct child"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    #@11
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6

    #@0
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-lez v0, :cond_e

    #@6
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string v1, "TwoDScrollView can host only one direct child"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@11
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    #@0
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-lez v0, :cond_e

    #@6
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string v1, "TwoDScrollView can host only one direct child"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@11
    return-void
.end method

.method protected computeHorizontalScrollRange()I
    .registers 2

    #@0
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_b

    #@6
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getWidth()I

    #@9
    move-result v0

    #@a
    :goto_a
    return v0

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    invoke-virtual {p0, v0}, Lpandemic/android/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    #@13
    move-result v0

    #@14
    goto :goto_a
.end method

.method public computeScroll()V
    .registers 8

    #@0
    iget-object v0, p0, Lpandemic/android/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    #@2
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_70

    #@8
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollX()I

    #@b
    move-result v0

    #@c
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollY()I

    #@f
    move-result v1

    #@10
    iget-object v2, p0, Lpandemic/android/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    #@12
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    #@15
    move-result v2

    #@16
    iget-object v3, p0, Lpandemic/android/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    #@18
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    #@1b
    move-result v3

    #@1c
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getChildCount()I

    #@1f
    move-result v4

    #@20
    if-lez v4, :cond_71

    #@22
    const/4 v4, 0x0

    #@23
    invoke-virtual {p0, v4}, Lpandemic/android/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getWidth()I

    #@2a
    move-result v5

    #@2b
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingRight()I

    #@2e
    move-result v6

    #@2f
    sub-int/2addr v5, v6

    #@30
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingLeft()I

    #@33
    move-result v6

    #@34
    sub-int/2addr v5, v6

    #@35
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    #@38
    move-result v6

    #@39
    invoke-direct {p0, v2, v5, v6}, Lpandemic/android/view/TwoDScrollView;->clamp(III)I

    #@3c
    move-result v2

    #@3d
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getHeight()I

    #@40
    move-result v5

    #@41
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingBottom()I

    #@44
    move-result v6

    #@45
    sub-int/2addr v5, v6

    #@46
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingTop()I

    #@49
    move-result v6

    #@4a
    sub-int/2addr v5, v6

    #@4b
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    #@4e
    move-result v4

    #@4f
    invoke-direct {p0, v3, v5, v4}, Lpandemic/android/view/TwoDScrollView;->clamp(III)I

    #@52
    move-result v3

    #@53
    invoke-virtual {p0, v2, v3}, Lpandemic/android/view/TwoDScrollView;->scrollTo(II)V

    #@56
    :goto_56
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollX()I

    #@59
    move-result v2

    #@5a
    if-ne v0, v2, :cond_62

    #@5c
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollY()I

    #@5f
    move-result v2

    #@60
    if-eq v1, v2, :cond_6d

    #@62
    :cond_62
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollX()I

    #@65
    move-result v2

    #@66
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollY()I

    #@69
    move-result v3

    #@6a
    invoke-virtual {p0, v2, v3, v0, v1}, Lpandemic/android/view/TwoDScrollView;->onScrollChanged(IIII)V

    #@6d
    :cond_6d
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->postInvalidate()V

    #@70
    :cond_70
    return-void

    #@71
    :cond_71
    invoke-virtual {p0, v2, v3}, Lpandemic/android/view/TwoDScrollView;->scrollTo(II)V

    #@74
    goto :goto_56
.end method

.method protected computeVerticalScrollRange()I
    .registers 2

    #@0
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_b

    #@6
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getHeight()I

    #@9
    move-result v0

    #@a
    :goto_a
    return v0

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    invoke-virtual {p0, v0}, Lpandemic/android/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    #@13
    move-result v0

    #@14
    goto :goto_a
.end method

.method public fling(II)V
    .registers 15

    #@0
    const/4 v5, 0x0

    #@1
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getChildCount()I

    #@4
    move-result v0

    #@5
    if-lez v0, :cond_52

    #@7
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getHeight()I

    #@a
    move-result v3

    #@b
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingBottom()I

    #@e
    move-result v4

    #@f
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingTop()I

    #@12
    move-result v7

    #@13
    invoke-virtual {p0, v5}, Lpandemic/android/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@1a
    move-result v8

    #@1b
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getWidth()I

    #@1e
    move-result v6

    #@1f
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingRight()I

    #@22
    move-result v9

    #@23
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingLeft()I

    #@26
    move-result v10

    #@27
    invoke-virtual {p0, v5}, Lpandemic/android/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@2e
    move-result v11

    #@2f
    iget-object v0, p0, Lpandemic/android/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    #@31
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollX()I

    #@34
    move-result v1

    #@35
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollY()I

    #@38
    move-result v2

    #@39
    sub-int/2addr v6, v9

    #@3a
    sub-int/2addr v6, v10

    #@3b
    sub-int v6, v11, v6

    #@3d
    sub-int/2addr v3, v4

    #@3e
    sub-int/2addr v3, v7

    #@3f
    sub-int/2addr v8, v3

    #@40
    move v3, p1

    #@41
    move v4, p2

    #@42
    move v7, v5

    #@43
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    #@46
    iget-object v0, p0, Lpandemic/android/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    #@48
    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    #@4b
    move-result v0

    #@4c
    invoke-virtual {p0, v0}, Lpandemic/android/view/TwoDScrollView;->awakenScrollBars(I)Z

    #@4f
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->invalidate()V

    #@52
    :cond_52
    return-void
.end method

.method public fullScroll(II)Z
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    sparse-switch p1, :sswitch_data_58

    #@4
    :cond_4
    move v2, v0

    #@5
    :goto_5
    sparse-switch p2, :sswitch_data_62

    #@8
    :cond_8
    move v1, v0

    #@9
    :goto_9
    if-nez v1, :cond_d

    #@b
    if-eqz v2, :cond_e

    #@d
    :cond_d
    const/4 v0, 0x1

    #@e
    :cond_e
    if-eqz v0, :cond_13

    #@10
    invoke-direct {p0, v1, v2}, Lpandemic/android/view/TwoDScrollView;->doScroll(II)V

    #@13
    :cond_13
    return v0

    #@14
    :sswitch_14
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollY()I

    #@17
    move-result v1

    #@18
    neg-int v1, v1

    #@19
    move v2, v1

    #@1a
    goto :goto_5

    #@1b
    :sswitch_1b
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getChildCount()I

    #@1e
    move-result v1

    #@1f
    if-lez v1, :cond_4

    #@21
    add-int/lit8 v1, v1, -0x1

    #@23
    invoke-virtual {p0, v1}, Lpandemic/android/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    #@2a
    move-result v1

    #@2b
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getHeight()I

    #@2e
    move-result v2

    #@2f
    sub-int/2addr v1, v2

    #@30
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollY()I

    #@33
    move-result v2

    #@34
    sub-int/2addr v1, v2

    #@35
    move v2, v1

    #@36
    goto :goto_5

    #@37
    :sswitch_37
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollX()I

    #@3a
    move-result v1

    #@3b
    neg-int v1, v1

    #@3c
    goto :goto_9

    #@3d
    :sswitch_3d
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getChildCount()I

    #@40
    move-result v1

    #@41
    if-lez v1, :cond_8

    #@43
    add-int/lit8 v1, v1, -0x1

    #@45
    invoke-virtual {p0, v1}, Lpandemic/android/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    #@4c
    move-result v1

    #@4d
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getWidth()I

    #@50
    move-result v3

    #@51
    sub-int/2addr v1, v3

    #@52
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollX()I

    #@55
    move-result v3

    #@56
    sub-int/2addr v1, v3

    #@57
    goto :goto_9

    #@58
    :sswitch_data_58
    .sparse-switch
        0x21 -> :sswitch_14
        0x82 -> :sswitch_1b
    .end sparse-switch

    #@62
    :sswitch_data_62
    .sparse-switch
        0x11 -> :sswitch_37
        0x42 -> :sswitch_3d
    .end sparse-switch
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 6

    #@0
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getVerticalFadingEdgeLength()I

    #@b
    move-result v0

    #@c
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getHeight()I

    #@f
    move-result v1

    #@10
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingBottom()I

    #@13
    move-result v2

    #@14
    const/4 v3, 0x0

    #@15
    invoke-virtual {p0, v3}, Lpandemic/android/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    #@1c
    move-result v3

    #@1d
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollY()I

    #@20
    move-result v4

    #@21
    sub-int/2addr v3, v4

    #@22
    sub-int/2addr v1, v2

    #@23
    sub-int v1, v3, v1

    #@25
    if-ge v1, v0, :cond_2c

    #@27
    int-to-float v1, v1

    #@28
    int-to-float v0, v0

    #@29
    div-float v0, v1, v0

    #@2b
    goto :goto_7

    #@2c
    :cond_2c
    const/high16 v0, 0x3f800000    # 1.0f

    #@2e
    goto :goto_7
.end method

.method protected getLeftFadingEdgeStrength()F
    .registers 3

    #@0
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getHorizontalFadingEdgeLength()I

    #@b
    move-result v0

    #@c
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollX()I

    #@f
    move-result v1

    #@10
    if-ge v1, v0, :cond_1b

    #@12
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollX()I

    #@15
    move-result v1

    #@16
    int-to-float v1, v1

    #@17
    int-to-float v0, v0

    #@18
    div-float v0, v1, v0

    #@1a
    goto :goto_7

    #@1b
    :cond_1b
    const/high16 v0, 0x3f800000    # 1.0f

    #@1d
    goto :goto_7
.end method

.method protected getRightFadingEdgeStrength()F
    .registers 6

    #@0
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getHorizontalFadingEdgeLength()I

    #@b
    move-result v0

    #@c
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getWidth()I

    #@f
    move-result v1

    #@10
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingRight()I

    #@13
    move-result v2

    #@14
    const/4 v3, 0x0

    #@15
    invoke-virtual {p0, v3}, Lpandemic/android/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    #@1c
    move-result v3

    #@1d
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollX()I

    #@20
    move-result v4

    #@21
    sub-int/2addr v3, v4

    #@22
    sub-int/2addr v1, v2

    #@23
    sub-int v1, v3, v1

    #@25
    if-ge v1, v0, :cond_2c

    #@27
    int-to-float v1, v1

    #@28
    int-to-float v0, v0

    #@29
    div-float v0, v1, v0

    #@2b
    goto :goto_7

    #@2c
    :cond_2c
    const/high16 v0, 0x3f800000    # 1.0f

    #@2e
    goto :goto_7
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 3

    #@0
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getVerticalFadingEdgeLength()I

    #@b
    move-result v0

    #@c
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollY()I

    #@f
    move-result v1

    #@10
    if-ge v1, v0, :cond_1b

    #@12
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollY()I

    #@15
    move-result v1

    #@16
    int-to-float v1, v1

    #@17
    int-to-float v0, v0

    #@18
    div-float v0, v1, v0

    #@1a
    goto :goto_7

    #@1b
    :cond_1b
    const/high16 v0, 0x3f800000    # 1.0f

    #@1d
    goto :goto_7
.end method

.method protected measureChild(Landroid/view/View;II)V
    .registers 8

    #@0
    const/4 v3, 0x0

    #@1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingLeft()I

    #@8
    move-result v1

    #@9
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingRight()I

    #@c
    move-result v2

    #@d
    add-int/2addr v1, v2

    #@e
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@10
    invoke-static {p2, v1, v0}, Lpandemic/android/view/TwoDScrollView;->getChildMeasureSpec(III)I

    #@13
    move-result v0

    #@14
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@17
    move-result v1

    #@18
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    #@1b
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 9

    #@0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@6
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingLeft()I

    #@9
    move-result v1

    #@a
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingRight()I

    #@d
    move-result v2

    #@e
    add-int/2addr v1, v2

    #@f
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@11
    add-int/2addr v1, v2

    #@12
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@14
    add-int/2addr v1, v2

    #@15
    add-int/2addr v1, p3

    #@16
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    #@18
    invoke-static {p2, v1, v2}, Lpandemic/android/view/TwoDScrollView;->getChildMeasureSpec(III)I

    #@1b
    move-result v1

    #@1c
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@1e
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@20
    add-int/2addr v0, v2

    #@21
    const/4 v2, 0x0

    #@22
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@25
    move-result v0

    #@26
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    #@29
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    iget-boolean v2, p0, Lpandemic/android/view/TwoDScrollView;->mScrollEnabled:Z

    #@4
    if-nez v2, :cond_7

    #@6
    :cond_6
    :goto_6
    return v0

    #@7
    :cond_7
    iget-boolean v2, p0, Lpandemic/android/view/TwoDScrollView;->mGestureIntercepting:Z

    #@9
    if-nez v2, :cond_6

    #@b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@e
    move-result v2

    #@f
    const/4 v3, 0x2

    #@10
    if-ne v2, v3, :cond_18

    #@12
    iget-boolean v3, p0, Lpandemic/android/view/TwoDScrollView;->mIsBeingDragged:Z

    #@14
    if-eqz v3, :cond_18

    #@16
    move v0, v1

    #@17
    goto :goto_6

    #@18
    :cond_18
    invoke-direct {p0}, Lpandemic/android/view/TwoDScrollView;->canScroll()Z

    #@1b
    move-result v3

    #@1c
    if-nez v3, :cond_21

    #@1e
    iput-boolean v0, p0, Lpandemic/android/view/TwoDScrollView;->mIsBeingDragged:Z

    #@20
    goto :goto_6

    #@21
    :cond_21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@24
    move-result v3

    #@25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@28
    move-result v4

    #@29
    packed-switch v2, :pswitch_data_60

    #@2c
    :cond_2c
    :goto_2c
    iget-boolean v0, p0, Lpandemic/android/view/TwoDScrollView;->mIsBeingDragged:Z

    #@2e
    goto :goto_6

    #@2f
    :pswitch_2f
    iget v0, p0, Lpandemic/android/view/TwoDScrollView;->mLastMotionY:F

    #@31
    sub-float v0, v3, v0

    #@33
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@36
    move-result v0

    #@37
    float-to-int v0, v0

    #@38
    iget v2, p0, Lpandemic/android/view/TwoDScrollView;->mLastMotionX:F

    #@3a
    sub-float v2, v4, v2

    #@3c
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    #@3f
    move-result v2

    #@40
    float-to-int v2, v2

    #@41
    iget v3, p0, Lpandemic/android/view/TwoDScrollView;->mTouchSlop:I

    #@43
    if-gt v0, v3, :cond_49

    #@45
    iget v0, p0, Lpandemic/android/view/TwoDScrollView;->mTouchSlop:I

    #@47
    if-le v2, v0, :cond_2c

    #@49
    :cond_49
    iput-boolean v1, p0, Lpandemic/android/view/TwoDScrollView;->mIsBeingDragged:Z

    #@4b
    goto :goto_2c

    #@4c
    :pswitch_4c
    iput v3, p0, Lpandemic/android/view/TwoDScrollView;->mLastMotionY:F

    #@4e
    iput v4, p0, Lpandemic/android/view/TwoDScrollView;->mLastMotionX:F

    #@50
    iget-object v2, p0, Lpandemic/android/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    #@52
    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    #@55
    move-result v2

    #@56
    if-nez v2, :cond_5b

    #@58
    :goto_58
    iput-boolean v1, p0, Lpandemic/android/view/TwoDScrollView;->mIsBeingDragged:Z

    #@5a
    goto :goto_2c

    #@5b
    :cond_5b
    move v1, v0

    #@5c
    goto :goto_58

    #@5d
    :pswitch_5d
    iput-boolean v0, p0, Lpandemic/android/view/TwoDScrollView;->mIsBeingDragged:Z

    #@5f
    goto :goto_2c

    #@60
    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_5d
        :pswitch_2f
        :pswitch_5d
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    #@0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    #@3
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollX()I

    #@6
    move-result v0

    #@7
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollY()I

    #@a
    move-result v1

    #@b
    invoke-virtual {p0, v0, v1}, Lpandemic/android/view/TwoDScrollView;->scrollTo(II)V

    #@e
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    iget-boolean v1, p0, Lpandemic/android/view/TwoDScrollView;->mScrollEnabled:Z

    #@3
    if-nez v1, :cond_6

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_12

    #@c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_5

    #@12
    :cond_12
    invoke-direct {p0}, Lpandemic/android/view/TwoDScrollView;->canScroll()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_5

    #@18
    iget-object v1, p0, Lpandemic/android/view/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1a
    if-nez v1, :cond_22

    #@1c
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@1f
    move-result-object v1

    #@20
    iput-object v1, p0, Lpandemic/android/view/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@22
    :cond_22
    iget-object v1, p0, Lpandemic/android/view/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@24
    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@2a
    move-result v1

    #@2b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@2e
    move-result v3

    #@2f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@32
    move-result v4

    #@33
    packed-switch v1, :pswitch_data_ee

    #@36
    :cond_36
    :goto_36
    const/4 v0, 0x1

    #@37
    goto :goto_5

    #@38
    :pswitch_38
    iget-object v0, p0, Lpandemic/android/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    #@3a
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    #@3d
    move-result v0

    #@3e
    if-nez v0, :cond_45

    #@40
    iget-object v0, p0, Lpandemic/android/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    #@42
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    #@45
    :cond_45
    iput v3, p0, Lpandemic/android/view/TwoDScrollView;->mLastMotionY:F

    #@47
    iput v4, p0, Lpandemic/android/view/TwoDScrollView;->mLastMotionX:F

    #@49
    goto :goto_36

    #@4a
    :pswitch_4a
    iget v1, p0, Lpandemic/android/view/TwoDScrollView;->mLastMotionX:F

    #@4c
    sub-float/2addr v1, v4

    #@4d
    float-to-int v2, v1

    #@4e
    iget v1, p0, Lpandemic/android/view/TwoDScrollView;->mLastMotionY:F

    #@50
    sub-float/2addr v1, v3

    #@51
    float-to-int v1, v1

    #@52
    iput v4, p0, Lpandemic/android/view/TwoDScrollView;->mLastMotionX:F

    #@54
    iput v3, p0, Lpandemic/android/view/TwoDScrollView;->mLastMotionY:F

    #@56
    if-gez v2, :cond_6f

    #@58
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollX()I

    #@5b
    move-result v3

    #@5c
    if-gez v3, :cond_5f

    #@5e
    move v2, v0

    #@5f
    :cond_5f
    :goto_5f
    if-gez v1, :cond_92

    #@61
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollY()I

    #@64
    move-result v3

    #@65
    if-gez v3, :cond_ea

    #@67
    :cond_67
    :goto_67
    if-nez v0, :cond_6b

    #@69
    if-eqz v2, :cond_36

    #@6b
    :cond_6b
    invoke-virtual {p0, v2, v0}, Lpandemic/android/view/TwoDScrollView;->scrollBy(II)V

    #@6e
    goto :goto_36

    #@6f
    :cond_6f
    if-lez v2, :cond_5f

    #@71
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getWidth()I

    #@74
    move-result v3

    #@75
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingRight()I

    #@78
    move-result v4

    #@79
    invoke-virtual {p0, v0}, Lpandemic/android/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    #@7c
    move-result-object v5

    #@7d
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    #@80
    move-result v5

    #@81
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollX()I

    #@84
    move-result v6

    #@85
    sub-int/2addr v5, v6

    #@86
    sub-int/2addr v3, v4

    #@87
    sub-int v3, v5, v3

    #@89
    if-lez v3, :cond_90

    #@8b
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    #@8e
    move-result v2

    #@8f
    goto :goto_5f

    #@90
    :cond_90
    move v2, v0

    #@91
    goto :goto_5f

    #@92
    :cond_92
    if-lez v1, :cond_ea

    #@94
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getHeight()I

    #@97
    move-result v3

    #@98
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingBottom()I

    #@9b
    move-result v4

    #@9c
    invoke-virtual {p0, v0}, Lpandemic/android/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    #@9f
    move-result-object v5

    #@a0
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    #@a3
    move-result v5

    #@a4
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollY()I

    #@a7
    move-result v6

    #@a8
    sub-int/2addr v5, v6

    #@a9
    sub-int/2addr v3, v4

    #@aa
    sub-int v3, v5, v3

    #@ac
    if-lez v3, :cond_67

    #@ae
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    #@b1
    move-result v0

    #@b2
    goto :goto_67

    #@b3
    :pswitch_b3
    iget-object v0, p0, Lpandemic/android/view/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@b5
    const/16 v1, 0x3e8

    #@b7
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    #@ba
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    #@bd
    move-result v1

    #@be
    float-to-int v1, v1

    #@bf
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    #@c2
    move-result v0

    #@c3
    float-to-int v0, v0

    #@c4
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    #@c7
    move-result v2

    #@c8
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    #@cb
    move-result v3

    #@cc
    add-int/2addr v2, v3

    #@cd
    iget v3, p0, Lpandemic/android/view/TwoDScrollView;->mMinimumVelocity:I

    #@cf
    if-le v2, v3, :cond_dc

    #@d1
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getChildCount()I

    #@d4
    move-result v2

    #@d5
    if-lez v2, :cond_dc

    #@d7
    neg-int v1, v1

    #@d8
    neg-int v0, v0

    #@d9
    invoke-virtual {p0, v1, v0}, Lpandemic/android/view/TwoDScrollView;->fling(II)V

    #@dc
    :cond_dc
    iget-object v0, p0, Lpandemic/android/view/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@de
    if-eqz v0, :cond_36

    #@e0
    iget-object v0, p0, Lpandemic/android/view/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@e2
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    #@e5
    const/4 v0, 0x0

    #@e6
    iput-object v0, p0, Lpandemic/android/view/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@e8
    goto/16 :goto_36

    #@ea
    :cond_ea
    move v0, v1

    #@eb
    goto/16 :goto_67

    #@ed
    nop

    #@ee
    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_38
        :pswitch_b3
        :pswitch_4a
    .end packed-switch
.end method

.method public scrollTo(II)V
    .registers 7

    #@0
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-lez v0, :cond_46

    #@6
    const/4 v0, 0x0

    #@7
    invoke-virtual {p0, v0}, Lpandemic/android/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getWidth()I

    #@e
    move-result v1

    #@f
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingRight()I

    #@12
    move-result v2

    #@13
    sub-int/2addr v1, v2

    #@14
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingLeft()I

    #@17
    move-result v2

    #@18
    sub-int/2addr v1, v2

    #@19
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@1c
    move-result v2

    #@1d
    invoke-direct {p0, p1, v1, v2}, Lpandemic/android/view/TwoDScrollView;->clamp(III)I

    #@20
    move-result v1

    #@21
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getHeight()I

    #@24
    move-result v2

    #@25
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingBottom()I

    #@28
    move-result v3

    #@29
    sub-int/2addr v2, v3

    #@2a
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingTop()I

    #@2d
    move-result v3

    #@2e
    sub-int/2addr v2, v3

    #@2f
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@32
    move-result v0

    #@33
    invoke-direct {p0, p2, v2, v0}, Lpandemic/android/view/TwoDScrollView;->clamp(III)I

    #@36
    move-result v0

    #@37
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollX()I

    #@3a
    move-result v2

    #@3b
    if-ne v1, v2, :cond_43

    #@3d
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollY()I

    #@40
    move-result v2

    #@41
    if-eq v0, v2, :cond_46

    #@43
    :cond_43
    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->scrollTo(II)V

    #@46
    :cond_46
    return-void
.end method

.method public setGestureIntercepting(Z)V
    .registers 2

    #@0
    iput-boolean p1, p0, Lpandemic/android/view/TwoDScrollView;->mGestureIntercepting:Z

    #@2
    return-void
.end method

.method public setScrollEnabled(Z)V
    .registers 2

    #@0
    iput-boolean p1, p0, Lpandemic/android/view/TwoDScrollView;->mScrollEnabled:Z

    #@2
    return-void
.end method

.method public final smoothScrollBy(II)V
    .registers 7

    #@0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    iget-wide v2, p0, Lpandemic/android/view/TwoDScrollView;->mLastScroll:J

    #@6
    sub-long/2addr v0, v2

    #@7
    const-wide/16 v2, 0xfa

    #@9
    cmp-long v0, v0, v2

    #@b
    if-lez v0, :cond_2d

    #@d
    iget-object v0, p0, Lpandemic/android/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    #@f
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollX()I

    #@12
    move-result v1

    #@13
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollY()I

    #@16
    move-result v2

    #@17
    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    #@1a
    iget-object v0, p0, Lpandemic/android/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    #@1c
    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    #@1f
    move-result v0

    #@20
    invoke-virtual {p0, v0}, Lpandemic/android/view/TwoDScrollView;->awakenScrollBars(I)Z

    #@23
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->invalidate()V

    #@26
    :goto_26
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@29
    move-result-wide v0

    #@2a
    iput-wide v0, p0, Lpandemic/android/view/TwoDScrollView;->mLastScroll:J

    #@2c
    return-void

    #@2d
    :cond_2d
    iget-object v0, p0, Lpandemic/android/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    #@2f
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    #@32
    move-result v0

    #@33
    if-nez v0, :cond_3a

    #@35
    iget-object v0, p0, Lpandemic/android/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    #@37
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    #@3a
    :cond_3a
    invoke-virtual {p0, p1, p2}, Lpandemic/android/view/TwoDScrollView;->scrollBy(II)V

    #@3d
    goto :goto_26
.end method

.method public final smoothScrollTo(II)V
    .registers 5

    #@0
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollX()I

    #@3
    move-result v0

    #@4
    sub-int v0, p1, v0

    #@6
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollY()I

    #@9
    move-result v1

    #@a
    sub-int v1, p2, v1

    #@c
    invoke-virtual {p0, v0, v1}, Lpandemic/android/view/TwoDScrollView;->smoothScrollBy(II)V

    #@f
    return-void
.end method
