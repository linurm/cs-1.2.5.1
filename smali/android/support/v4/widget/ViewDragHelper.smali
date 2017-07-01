.class public Landroid/support/v4/widget/ViewDragHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/ViewDragHelper$Callback;
    }
.end annotation


# static fields
.field private static final BASE_SETTLE_DURATION:I = 0x100

.field public static final DIRECTION_ALL:I = 0x3

.field public static final DIRECTION_HORIZONTAL:I = 0x1

.field public static final DIRECTION_VERTICAL:I = 0x2

.field public static final EDGE_ALL:I = 0xf

.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field private static final EDGE_SIZE:I = 0x14

.field public static final EDGE_TOP:I = 0x4

.field public static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewDragHelper"

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private final mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

.field private mCapturedView:Landroid/view/View;

.field private mDragState:I

.field private mEdgeDragsInProgress:[I

.field private mEdgeDragsLocked:[I

.field private mEdgeSize:I

.field private mInitialEdgesTouched:[I

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private mMaxVelocity:F

.field private mMinVelocity:F

.field private final mParentView:Landroid/view/ViewGroup;

.field private mPointersDown:I

.field private mReleaseInProgress:Z

.field private mScroller:Landroid/support/v4/widget/ScrollerCompat;

.field private final mSetIdleRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTrackingEdges:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Landroid/support/v4/widget/ViewDragHelper$1;

    #@2
    invoke-direct {v0}, Landroid/support/v4/widget/ViewDragHelper$1;-><init>()V

    #@5
    sput-object v0, Landroid/support/v4/widget/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    #@7
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)V
    .registers 7

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@6
    new-instance v0, Landroid/support/v4/widget/ViewDragHelper$2;

    #@8
    invoke-direct {v0, p0}, Landroid/support/v4/widget/ViewDragHelper$2;-><init>(Landroid/support/v4/widget/ViewDragHelper;)V

    #@b
    iput-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    #@d
    if-nez p2, :cond_17

    #@f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string v1, "Parent view may not be null"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    :cond_17
    if-nez p3, :cond_21

    #@19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string v1, "Callback may not be null"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    :cond_21
    iput-object p2, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@23
    iput-object p3, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@25
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@28
    move-result-object v0

    #@29
    const/high16 v1, 0x41a00000    # 20.0f

    #@2b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@32
    move-result-object v2

    #@33
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    #@35
    mul-float/2addr v1, v2

    #@36
    const/high16 v2, 0x3f000000    # 0.5f

    #@38
    add-float/2addr v1, v2

    #@39
    float-to-int v1, v1

    #@3a
    iput v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    #@3c
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@3f
    move-result v1

    #@40
    iput v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    #@42
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    #@45
    move-result v1

    #@46
    int-to-float v1, v1

    #@47
    iput v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    #@49
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    #@4c
    move-result v0

    #@4d
    int-to-float v0, v0

    #@4e
    iput v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    #@50
    sget-object v0, Landroid/support/v4/widget/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    #@52
    invoke-static {p1, v0}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    #@55
    move-result-object v0

    #@56
    iput-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@58
    return-void
.end method

.method private checkNewEdgeDrag(FFII)Z
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    #@4
    move-result v1

    #@5
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    #@8
    move-result v2

    #@9
    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@b
    aget v3, v3, p3

    #@d
    and-int/2addr v3, p4

    #@e
    if-ne v3, p4, :cond_31

    #@10
    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    #@12
    and-int/2addr v3, p4

    #@13
    if-eqz v3, :cond_31

    #@15
    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    #@17
    aget v3, v3, p3

    #@19
    and-int/2addr v3, p4

    #@1a
    if-eq v3, p4, :cond_31

    #@1c
    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    #@1e
    aget v3, v3, p3

    #@20
    and-int/2addr v3, p4

    #@21
    if-eq v3, p4, :cond_31

    #@23
    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    #@25
    int-to-float v3, v3

    #@26
    cmpg-float v3, v1, v3

    #@28
    if-gtz v3, :cond_32

    #@2a
    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    #@2c
    int-to-float v3, v3

    #@2d
    cmpg-float v3, v2, v3

    #@2f
    if-gtz v3, :cond_32

    #@31
    :cond_31
    :goto_31
    return v0

    #@32
    :cond_32
    const/high16 v3, 0x3f000000    # 0.5f

    #@34
    mul-float/2addr v2, v3

    #@35
    cmpg-float v2, v1, v2

    #@37
    if-gez v2, :cond_49

    #@39
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@3b
    invoke-virtual {v2, p4}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeLock(I)Z

    #@3e
    move-result v2

    #@3f
    if-eqz v2, :cond_49

    #@41
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    #@43
    aget v2, v1, p3

    #@45
    or-int/2addr v2, p4

    #@46
    aput v2, v1, p3

    #@48
    goto :goto_31

    #@49
    :cond_49
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    #@4b
    aget v2, v2, p3

    #@4d
    and-int/2addr v2, p4

    #@4e
    if-nez v2, :cond_31

    #@50
    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    #@52
    int-to-float v2, v2

    #@53
    cmpl-float v1, v1, v2

    #@55
    if-lez v1, :cond_31

    #@57
    const/4 v0, 0x1

    #@58
    goto :goto_31
.end method

.method private checkTouchSlop(Landroid/view/View;FF)Z
    .registers 9

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    if-nez p1, :cond_5

    #@4
    :cond_4
    :goto_4
    return v0

    #@5
    :cond_5
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@7
    invoke-virtual {v2, p1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    #@a
    move-result v2

    #@b
    if-lez v2, :cond_2c

    #@d
    move v2, v1

    #@e
    :goto_e
    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@10
    invoke-virtual {v3, p1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    #@13
    move-result v3

    #@14
    if-lez v3, :cond_2e

    #@16
    move v3, v1

    #@17
    :goto_17
    if-eqz v2, :cond_30

    #@19
    if-eqz v3, :cond_30

    #@1b
    mul-float v2, p2, p2

    #@1d
    mul-float v3, p3, p3

    #@1f
    add-float/2addr v2, v3

    #@20
    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    #@22
    iget v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    #@24
    mul-int/2addr v3, v4

    #@25
    int-to-float v3, v3

    #@26
    cmpl-float v2, v2, v3

    #@28
    if-lez v2, :cond_4

    #@2a
    :cond_2a
    move v0, v1

    #@2b
    goto :goto_4

    #@2c
    :cond_2c
    move v2, v0

    #@2d
    goto :goto_e

    #@2e
    :cond_2e
    move v3, v0

    #@2f
    goto :goto_17

    #@30
    :cond_30
    if-eqz v2, :cond_3e

    #@32
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    #@35
    move-result v2

    #@36
    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    #@38
    int-to-float v3, v3

    #@39
    cmpl-float v2, v2, v3

    #@3b
    if-gtz v2, :cond_2a

    #@3d
    goto :goto_4

    #@3e
    :cond_3e
    if-eqz v3, :cond_4

    #@40
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    #@43
    move-result v2

    #@44
    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    #@46
    int-to-float v3, v3

    #@47
    cmpl-float v2, v2, v3

    #@49
    if-gtz v2, :cond_2a

    #@4b
    goto :goto_4
.end method

.method private clampMag(FFF)F
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    #@4
    move-result v1

    #@5
    cmpg-float v2, v1, p2

    #@7
    if-gez v2, :cond_b

    #@9
    move p3, v0

    #@a
    :cond_a
    :goto_a
    return p3

    #@b
    :cond_b
    cmpl-float v1, v1, p3

    #@d
    if-lez v1, :cond_15

    #@f
    cmpl-float v0, p1, v0

    #@11
    if-gtz v0, :cond_a

    #@13
    neg-float p3, p3

    #@14
    goto :goto_a

    #@15
    :cond_15
    move p3, p1

    #@16
    goto :goto_a
.end method

.method private clampMag(III)I
    .registers 5

    #@0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    #@3
    move-result v0

    #@4
    if-ge v0, p2, :cond_8

    #@6
    const/4 p3, 0x0

    #@7
    :cond_7
    :goto_7
    return p3

    #@8
    :cond_8
    if-le v0, p3, :cond_e

    #@a
    if-gtz p1, :cond_7

    #@c
    neg-int p3, p3

    #@d
    goto :goto_7

    #@e
    :cond_e
    move p3, p1

    #@f
    goto :goto_7
.end method

.method private clearMotionHistory()V
    .registers 4

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    #@4
    if-nez v0, :cond_7

    #@6
    :goto_6
    return-void

    #@7
    :cond_7
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    #@9
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    #@c
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    #@e
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    #@11
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    #@13
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    #@16
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    #@18
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    #@1b
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@1d
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    #@20
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    #@22
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    #@25
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    #@27
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    #@2a
    iput v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I

    #@2c
    goto :goto_6
.end method

.method private clearMotionHistory(I)V
    .registers 5

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    #@4
    if-nez v0, :cond_7

    #@6
    :goto_6
    return-void

    #@7
    :cond_7
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    #@9
    aput v1, v0, p1

    #@b
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    #@d
    aput v1, v0, p1

    #@f
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    #@11
    aput v1, v0, p1

    #@13
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    #@15
    aput v1, v0, p1

    #@17
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@19
    aput v2, v0, p1

    #@1b
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    #@1d
    aput v2, v0, p1

    #@1f
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    #@21
    aput v2, v0, p1

    #@23
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I

    #@25
    const/4 v1, 0x1

    #@26
    shl-int/2addr v1, p1

    #@27
    xor-int/lit8 v1, v1, -0x1

    #@29
    and-int/2addr v0, v1

    #@2a
    iput v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I

    #@2c
    goto :goto_6
.end method

.method private computeAxisDuration(III)I
    .registers 9

    #@0
    const/high16 v4, 0x3f800000    # 1.0f

    #@2
    if-nez p1, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    #@b
    move-result v0

    #@c
    div-int/lit8 v1, v0, 0x2

    #@e
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    #@11
    move-result v2

    #@12
    int-to-float v2, v2

    #@13
    int-to-float v0, v0

    #@14
    div-float v0, v2, v0

    #@16
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    #@19
    move-result v0

    #@1a
    int-to-float v2, v1

    #@1b
    int-to-float v1, v1

    #@1c
    invoke-direct {p0, v0}, Landroid/support/v4/widget/ViewDragHelper;->distanceInfluenceForSnapDuration(F)F

    #@1f
    move-result v0

    #@20
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    #@23
    move-result v3

    #@24
    if-lez v3, :cond_3e

    #@26
    const/high16 v4, 0x447a0000    # 1000.0f

    #@28
    mul-float/2addr v0, v1

    #@29
    add-float/2addr v0, v2

    #@2a
    int-to-float v1, v3

    #@2b
    div-float/2addr v0, v1

    #@2c
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@2f
    move-result v0

    #@30
    mul-float/2addr v0, v4

    #@31
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@34
    move-result v0

    #@35
    mul-int/lit8 v0, v0, 0x4

    #@37
    :goto_37
    const/16 v1, 0x258

    #@39
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@3c
    move-result v0

    #@3d
    goto :goto_5

    #@3e
    :cond_3e
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    #@41
    move-result v0

    #@42
    int-to-float v0, v0

    #@43
    int-to-float v1, p3

    #@44
    div-float/2addr v0, v1

    #@45
    add-float/2addr v0, v4

    #@46
    const/high16 v1, 0x43800000    # 256.0f

    #@48
    mul-float/2addr v0, v1

    #@49
    float-to-int v0, v0

    #@4a
    goto :goto_37
.end method

.method private computeSettleDuration(Landroid/view/View;IIII)I
    .registers 14

    #@0
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    #@2
    float-to-int v0, v0

    #@3
    iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    #@5
    float-to-int v1, v1

    #@6
    invoke-direct {p0, p4, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->clampMag(III)I

    #@9
    move-result v2

    #@a
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    #@c
    float-to-int v0, v0

    #@d
    iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    #@f
    float-to-int v1, v1

    #@10
    invoke-direct {p0, p5, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->clampMag(III)I

    #@13
    move-result v3

    #@14
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    #@17
    move-result v0

    #@18
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    #@1b
    move-result v4

    #@1c
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    #@1f
    move-result v1

    #@20
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    #@23
    move-result v5

    #@24
    add-int v6, v1, v5

    #@26
    add-int v7, v0, v4

    #@28
    if-eqz v2, :cond_4e

    #@2a
    int-to-float v0, v1

    #@2b
    int-to-float v1, v6

    #@2c
    div-float/2addr v0, v1

    #@2d
    move v1, v0

    #@2e
    :goto_2e
    if-eqz v3, :cond_53

    #@30
    int-to-float v0, v5

    #@31
    int-to-float v4, v6

    #@32
    div-float/2addr v0, v4

    #@33
    :goto_33
    iget-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@35
    invoke-virtual {v4, p1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    #@38
    move-result v4

    #@39
    invoke-direct {p0, p2, v2, v4}, Landroid/support/v4/widget/ViewDragHelper;->computeAxisDuration(III)I

    #@3c
    move-result v2

    #@3d
    iget-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@3f
    invoke-virtual {v4, p1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    #@42
    move-result v4

    #@43
    invoke-direct {p0, p3, v3, v4}, Landroid/support/v4/widget/ViewDragHelper;->computeAxisDuration(III)I

    #@46
    move-result v3

    #@47
    int-to-float v2, v2

    #@48
    mul-float/2addr v1, v2

    #@49
    int-to-float v2, v3

    #@4a
    mul-float/2addr v0, v2

    #@4b
    add-float/2addr v0, v1

    #@4c
    float-to-int v0, v0

    #@4d
    return v0

    #@4e
    :cond_4e
    int-to-float v0, v0

    #@4f
    int-to-float v1, v7

    #@50
    div-float/2addr v0, v1

    #@51
    move v1, v0

    #@52
    goto :goto_2e

    #@53
    :cond_53
    int-to-float v0, v4

    #@54
    int-to-float v4, v7

    #@55
    div-float/2addr v0, v4

    #@56
    goto :goto_33
.end method

.method public static create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;
    .registers 6

    #@0
    invoke-static {p0, p2}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    #@3
    move-result-object v0

    #@4
    iget v1, v0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    #@6
    int-to-float v1, v1

    #@7
    const/high16 v2, 0x3f800000    # 1.0f

    #@9
    div-float/2addr v2, p1

    #@a
    mul-float/2addr v1, v2

    #@b
    float-to-int v1, v1

    #@c
    iput v1, v0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    #@e
    return-object v0
.end method

.method public static create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;
    .registers 4

    #@0
    new-instance v0, Landroid/support/v4/widget/ViewDragHelper;

    #@2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p0, p1}, Landroid/support/v4/widget/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)V

    #@9
    return-object v0
.end method

.method private dispatchViewReleased(FF)V
    .registers 7

    #@0
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    iput-boolean v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mReleaseInProgress:Z

    #@4
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@6
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@8
    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    #@b
    iput-boolean v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mReleaseInProgress:Z

    #@d
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@f
    if-ne v0, v3, :cond_14

    #@11
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    #@14
    :cond_14
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .registers 6

    #@0
    const/high16 v0, 0x3f000000    # 0.5f

    #@2
    sub-float v0, p1, v0

    #@4
    float-to-double v0, v0

    #@5
    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    #@a
    mul-double/2addr v0, v2

    #@b
    double-to-float v0, v0

    #@c
    float-to-double v0, v0

    #@d
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    #@10
    move-result-wide v0

    #@11
    double-to-float v0, v0

    #@12
    return v0
.end method

.method private dragTo(IIII)V
    .registers 11

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@5
    move-result v4

    #@6
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@8
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@b
    move-result v5

    #@c
    if-eqz p3, :cond_40

    #@e
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@10
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@12
    invoke-virtual {v0, v1, p1, p3}, Landroid/support/v4/widget/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    #@15
    move-result v2

    #@16
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@18
    sub-int v1, v2, v4

    #@1a
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@1d
    :goto_1d
    if-eqz p4, :cond_3e

    #@1f
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@21
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@23
    invoke-virtual {v0, v1, p2, p4}, Landroid/support/v4/widget/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    #@26
    move-result v3

    #@27
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@29
    sub-int v1, v3, v5

    #@2b
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@2e
    :goto_2e
    if-nez p3, :cond_32

    #@30
    if-eqz p4, :cond_3d

    #@32
    :cond_32
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@34
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@36
    sub-int v4, v2, v4

    #@38
    sub-int v5, v3, v5

    #@3a
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    #@3d
    :cond_3d
    return-void

    #@3e
    :cond_3e
    move v3, p2

    #@3f
    goto :goto_2e

    #@40
    :cond_40
    move v2, p1

    #@41
    goto :goto_1d
.end method

.method private ensureMotionHistorySizeForId(I)V
    .registers 12

    #@0
    const/4 v9, 0x0

    #@1
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    #@3
    if-eqz v0, :cond_a

    #@5
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    #@7
    array-length v0, v0

    #@8
    if-gt v0, p1, :cond_70

    #@a
    :cond_a
    add-int/lit8 v0, p1, 0x1

    #@c
    new-array v0, v0, [F

    #@e
    add-int/lit8 v1, p1, 0x1

    #@10
    new-array v1, v1, [F

    #@12
    add-int/lit8 v2, p1, 0x1

    #@14
    new-array v2, v2, [F

    #@16
    add-int/lit8 v3, p1, 0x1

    #@18
    new-array v3, v3, [F

    #@1a
    add-int/lit8 v4, p1, 0x1

    #@1c
    new-array v4, v4, [I

    #@1e
    add-int/lit8 v5, p1, 0x1

    #@20
    new-array v5, v5, [I

    #@22
    add-int/lit8 v6, p1, 0x1

    #@24
    new-array v6, v6, [I

    #@26
    iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    #@28
    if-eqz v7, :cond_62

    #@2a
    iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    #@2c
    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    #@2e
    array-length v8, v8

    #@2f
    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@32
    iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    #@34
    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    #@36
    array-length v8, v8

    #@37
    invoke-static {v7, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3a
    iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    #@3c
    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    #@3e
    array-length v8, v8

    #@3f
    invoke-static {v7, v9, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@42
    iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    #@44
    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    #@46
    array-length v8, v8

    #@47
    invoke-static {v7, v9, v3, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@4a
    iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@4c
    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@4e
    array-length v8, v8

    #@4f
    invoke-static {v7, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@52
    iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    #@54
    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    #@56
    array-length v8, v8

    #@57
    invoke-static {v7, v9, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@5a
    iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    #@5c
    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    #@5e
    array-length v8, v8

    #@5f
    invoke-static {v7, v9, v6, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@62
    :cond_62
    iput-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    #@64
    iput-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    #@66
    iput-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    #@68
    iput-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    #@6a
    iput-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@6c
    iput-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    #@6e
    iput-object v6, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    #@70
    :cond_70
    return-void
.end method

.method private forceSettleCapturedViewAt(IIII)Z
    .registers 15

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@3
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    #@6
    move-result v7

    #@7
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@9
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@c
    move-result v6

    #@d
    sub-int v2, p1, v7

    #@f
    sub-int v3, p2, v6

    #@11
    if-nez v2, :cond_1e

    #@13
    if-nez v3, :cond_1e

    #@15
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@17
    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    #@1a
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    #@1d
    :goto_1d
    return v0

    #@1e
    :cond_1e
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@20
    move-object v0, p0

    #@21
    move v4, p3

    #@22
    move v5, p4

    #@23
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/widget/ViewDragHelper;->computeSettleDuration(Landroid/view/View;IIII)I

    #@26
    move-result v9

    #@27
    iget-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@29
    move v5, v7

    #@2a
    move v7, v2

    #@2b
    move v8, v3

    #@2c
    invoke-virtual/range {v4 .. v9}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    #@2f
    const/4 v0, 0x2

    #@30
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    #@33
    const/4 v0, 0x1

    #@34
    goto :goto_1d
.end method

.method private getEdgesTouched(II)I
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@3
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    #@6
    move-result v1

    #@7
    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    #@9
    add-int/2addr v1, v2

    #@a
    if-ge p1, v1, :cond_d

    #@c
    const/4 v0, 0x1

    #@d
    :cond_d
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@f
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    #@12
    move-result v1

    #@13
    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    #@15
    add-int/2addr v1, v2

    #@16
    if-ge p2, v1, :cond_1a

    #@18
    or-int/lit8 v0, v0, 0x4

    #@1a
    :cond_1a
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@1c
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    #@1f
    move-result v1

    #@20
    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    #@22
    sub-int/2addr v1, v2

    #@23
    if-le p1, v1, :cond_27

    #@25
    or-int/lit8 v0, v0, 0x2

    #@27
    :cond_27
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@29
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    #@2c
    move-result v1

    #@2d
    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    #@2f
    sub-int/2addr v1, v2

    #@30
    if-le p2, v1, :cond_34

    #@32
    or-int/lit8 v0, v0, 0x8

    #@34
    :cond_34
    return v0
.end method

.method private releaseViewForPointerUp()V
    .registers 5

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@2
    const/16 v1, 0x3e8

    #@4
    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@9
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@b
    iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@d
    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    #@10
    move-result v0

    #@11
    iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    #@13
    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    #@15
    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->clampMag(FFF)F

    #@18
    move-result v0

    #@19
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1b
    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@1d
    invoke-static {v1, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    #@20
    move-result v1

    #@21
    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    #@23
    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    #@25
    invoke-direct {p0, v1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->clampMag(FFF)F

    #@28
    move-result v1

    #@29
    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->dispatchViewReleased(FF)V

    #@2c
    return-void
.end method

.method private reportNewEdgeDrags(FFI)V
    .registers 7

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_33

    #@8
    :goto_8
    const/4 v1, 0x4

    #@9
    invoke-direct {p0, p2, p1, p3, v1}, Landroid/support/v4/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_11

    #@f
    or-int/lit8 v0, v0, 0x4

    #@11
    :cond_11
    const/4 v1, 0x2

    #@12
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/support/v4/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1a

    #@18
    or-int/lit8 v0, v0, 0x2

    #@1a
    :cond_1a
    const/16 v1, 0x8

    #@1c
    invoke-direct {p0, p2, p1, p3, v1}, Landroid/support/v4/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_24

    #@22
    or-int/lit8 v0, v0, 0x8

    #@24
    :cond_24
    if-eqz v0, :cond_32

    #@26
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    #@28
    aget v2, v1, p3

    #@2a
    or-int/2addr v2, v0

    #@2b
    aput v2, v1, p3

    #@2d
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@2f
    invoke-virtual {v1, v0, p3}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    #@32
    :cond_32
    return-void

    #@33
    :cond_33
    move v0, v1

    #@34
    goto :goto_8
.end method

.method private saveInitialMotion(FFI)V
    .registers 7

    #@0
    invoke-direct {p0, p3}, Landroid/support/v4/widget/ViewDragHelper;->ensureMotionHistorySizeForId(I)V

    #@3
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    #@5
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    #@7
    aput p1, v1, p3

    #@9
    aput p1, v0, p3

    #@b
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    #@d
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    #@f
    aput p2, v1, p3

    #@11
    aput p2, v0, p3

    #@13
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@15
    float-to-int v1, p1

    #@16
    float-to-int v2, p2

    #@17
    invoke-direct {p0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->getEdgesTouched(II)I

    #@1a
    move-result v1

    #@1b
    aput v1, v0, p3

    #@1d
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I

    #@1f
    const/4 v1, 0x1

    #@20
    shl-int/2addr v1, p3

    #@21
    or-int/2addr v0, v1

    #@22
    iput v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I

    #@24
    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .registers 8

    #@0
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    #@3
    move-result v1

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    if-ge v0, v1, :cond_1e

    #@7
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@a
    move-result v2

    #@b
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    #@e
    move-result v3

    #@f
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    #@12
    move-result v4

    #@13
    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    #@15
    aput v3, v5, v2

    #@17
    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    #@19
    aput v4, v3, v2

    #@1b
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_5

    #@1e
    :cond_1e
    return-void
.end method


# virtual methods
.method public abort()V
    .registers 7

    #@0
    invoke-virtual {p0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    #@3
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@5
    const/4 v1, 0x2

    #@6
    if-ne v0, v1, :cond_30

    #@8
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@a
    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    #@d
    move-result v4

    #@e
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@10
    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    #@13
    move-result v5

    #@14
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@16
    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    #@19
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@1b
    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    #@1e
    move-result v2

    #@1f
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@21
    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    #@24
    move-result v3

    #@25
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@27
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@29
    sub-int v4, v2, v4

    #@2b
    sub-int v5, v3, v5

    #@2d
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    #@30
    :cond_30
    const/4 v0, 0x0

    #@31
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    #@34
    return-void
.end method

.method protected canScroll(Landroid/view/View;ZIIII)Z
    .registers 18

    #@0
    instance-of v0, p1, Landroid/view/ViewGroup;

    #@2
    if-eqz v0, :cond_5c

    #@4
    move-object v7, p1

    #@5
    check-cast v7, Landroid/view/ViewGroup;

    #@7
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    #@a
    move-result v9

    #@b
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    #@e
    move-result v10

    #@f
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    #@12
    move-result v0

    #@13
    add-int/lit8 v0, v0, -0x1

    #@15
    move v8, v0

    #@16
    :goto_16
    if-ltz v8, :cond_5c

    #@18
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@1b
    move-result-object v1

    #@1c
    add-int v0, p5, v9

    #@1e
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    #@21
    move-result v2

    #@22
    if-lt v0, v2, :cond_58

    #@24
    add-int v0, p5, v9

    #@26
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    #@29
    move-result v2

    #@2a
    if-ge v0, v2, :cond_58

    #@2c
    add-int v0, p6, v10

    #@2e
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@31
    move-result v2

    #@32
    if-lt v0, v2, :cond_58

    #@34
    add-int v0, p6, v10

    #@36
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    #@39
    move-result v2

    #@3a
    if-ge v0, v2, :cond_58

    #@3c
    const/4 v2, 0x1

    #@3d
    add-int v0, p5, v9

    #@3f
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    #@42
    move-result v3

    #@43
    sub-int v5, v0, v3

    #@45
    add-int v0, p6, v10

    #@47
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@4a
    move-result v3

    #@4b
    sub-int v6, v0, v3

    #@4d
    move-object v0, p0

    #@4e
    move v3, p3

    #@4f
    move v4, p4

    #@50
    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/widget/ViewDragHelper;->canScroll(Landroid/view/View;ZIIII)Z

    #@53
    move-result v0

    #@54
    if-eqz v0, :cond_58

    #@56
    const/4 v0, 0x1

    #@57
    :goto_57
    return v0

    #@58
    :cond_58
    add-int/lit8 v0, v8, -0x1

    #@5a
    move v8, v0

    #@5b
    goto :goto_16

    #@5c
    :cond_5c
    if-eqz p2, :cond_6e

    #@5e
    neg-int v0, p3

    #@5f
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    #@62
    move-result v0

    #@63
    if-nez v0, :cond_6c

    #@65
    neg-int v0, p4

    #@66
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    #@69
    move-result v0

    #@6a
    if-eqz v0, :cond_6e

    #@6c
    :cond_6c
    const/4 v0, 0x1

    #@6d
    goto :goto_57

    #@6e
    :cond_6e
    const/4 v0, 0x0

    #@6f
    goto :goto_57
.end method

.method public cancel()V
    .registers 2

    #@0
    const/4 v0, -0x1

    #@1
    iput v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@3
    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper;->clearMotionHistory()V

    #@6
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@8
    if-eqz v0, :cond_12

    #@a
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@c
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    #@f
    const/4 v0, 0x0

    #@10
    iput-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@12
    :cond_12
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .registers 6

    #@0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@6
    if-eq v0, v1, :cond_29

    #@8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string v2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string v2, ")"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    :cond_29
    iput-object p1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@2b
    iput p2, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@2d
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@2f
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    #@32
    const/4 v0, 0x1

    #@33
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    #@36
    return-void
.end method

.method public checkTouchSlop(I)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    #@3
    array-length v2, v1

    #@4
    move v1, v0

    #@5
    :goto_5
    if-ge v1, v2, :cond_e

    #@7
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(II)Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_f

    #@d
    const/4 v0, 0x1

    #@e
    :cond_e
    return v0

    #@f
    :cond_f
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_5
.end method

.method public checkTouchSlop(II)Z
    .registers 10

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/ViewDragHelper;->isPointerDown(I)Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_9

    #@8
    :cond_8
    :goto_8
    return v0

    #@9
    :cond_9
    and-int/lit8 v2, p1, 0x1

    #@b
    if-ne v2, v1, :cond_3b

    #@d
    move v3, v1

    #@e
    :goto_e
    and-int/lit8 v2, p1, 0x2

    #@10
    const/4 v4, 0x2

    #@11
    if-ne v2, v4, :cond_3d

    #@13
    move v2, v1

    #@14
    :goto_14
    iget-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    #@16
    aget v4, v4, p2

    #@18
    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    #@1a
    aget v5, v5, p2

    #@1c
    sub-float/2addr v4, v5

    #@1d
    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    #@1f
    aget v5, v5, p2

    #@21
    iget-object v6, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    #@23
    aget v6, v6, p2

    #@25
    sub-float/2addr v5, v6

    #@26
    if-eqz v3, :cond_3f

    #@28
    if-eqz v2, :cond_3f

    #@2a
    mul-float v2, v4, v4

    #@2c
    mul-float v3, v5, v5

    #@2e
    add-float/2addr v2, v3

    #@2f
    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    #@31
    iget v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    #@33
    mul-int/2addr v3, v4

    #@34
    int-to-float v3, v3

    #@35
    cmpl-float v2, v2, v3

    #@37
    if-lez v2, :cond_8

    #@39
    :cond_39
    move v0, v1

    #@3a
    goto :goto_8

    #@3b
    :cond_3b
    move v3, v0

    #@3c
    goto :goto_e

    #@3d
    :cond_3d
    move v2, v0

    #@3e
    goto :goto_14

    #@3f
    :cond_3f
    if-eqz v3, :cond_4d

    #@41
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    #@44
    move-result v2

    #@45
    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    #@47
    int-to-float v3, v3

    #@48
    cmpl-float v2, v2, v3

    #@4a
    if-gtz v2, :cond_39

    #@4c
    goto :goto_8

    #@4d
    :cond_4d
    if-eqz v2, :cond_8

    #@4f
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    #@52
    move-result v2

    #@53
    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    #@55
    int-to-float v3, v3

    #@56
    cmpl-float v2, v2, v3

    #@58
    if-gtz v2, :cond_39

    #@5a
    goto :goto_8
.end method

.method public continueSettling(Z)Z
    .registers 11

    #@0
    const/4 v8, 0x2

    #@1
    const/4 v6, 0x0

    #@2
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@4
    if-ne v0, v8, :cond_69

    #@6
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@8
    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    #@b
    move-result v7

    #@c
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@e
    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    #@11
    move-result v2

    #@12
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@14
    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    #@17
    move-result v3

    #@18
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@1a
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@1d
    move-result v0

    #@1e
    sub-int v4, v2, v0

    #@20
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@22
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@25
    move-result v0

    #@26
    sub-int v5, v3, v0

    #@28
    if-eqz v4, :cond_2f

    #@2a
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@2c
    invoke-virtual {v0, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@2f
    :cond_2f
    if-eqz v5, :cond_36

    #@31
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@33
    invoke-virtual {v0, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@36
    :cond_36
    if-nez v4, :cond_3a

    #@38
    if-eqz v5, :cond_41

    #@3a
    :cond_3a
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@3c
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@3e
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    #@41
    :cond_41
    if-eqz v7, :cond_75

    #@43
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@45
    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getFinalX()I

    #@48
    move-result v0

    #@49
    if-ne v2, v0, :cond_75

    #@4b
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@4d
    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getFinalY()I

    #@50
    move-result v0

    #@51
    if-ne v3, v0, :cond_75

    #@53
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@55
    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    #@58
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@5a
    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    #@5d
    move-result v0

    #@5e
    :goto_5e
    if-nez v0, :cond_69

    #@60
    if-eqz p1, :cond_6f

    #@62
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@64
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    #@66
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    #@69
    :cond_69
    :goto_69
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@6b
    if-ne v0, v8, :cond_73

    #@6d
    const/4 v0, 0x1

    #@6e
    :goto_6e
    return v0

    #@6f
    :cond_6f
    invoke-virtual {p0, v6}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    #@72
    goto :goto_69

    #@73
    :cond_73
    move v0, v6

    #@74
    goto :goto_6e

    #@75
    :cond_75
    move v0, v7

    #@76
    goto :goto_5e
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .registers 6

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    #@5
    move-result v0

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    move v1, v0

    #@9
    :goto_9
    if-ltz v1, :cond_34

    #@b
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@d
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@f
    invoke-virtual {v2, v1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getOrderedChildIndex(I)I

    #@12
    move-result v2

    #@13
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@1a
    move-result v2

    #@1b
    if-lt p1, v2, :cond_30

    #@1d
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    #@20
    move-result v2

    #@21
    if-ge p1, v2, :cond_30

    #@23
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@26
    move-result v2

    #@27
    if-lt p2, v2, :cond_30

    #@29
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    #@2c
    move-result v2

    #@2d
    if-ge p2, v2, :cond_30

    #@2f
    :goto_2f
    return-object v0

    #@30
    :cond_30
    add-int/lit8 v0, v1, -0x1

    #@32
    move v1, v0

    #@33
    goto :goto_9

    #@34
    :cond_34
    const/4 v0, 0x0

    #@35
    goto :goto_2f
.end method

.method public flingCapturedView(IIII)V
    .registers 14

    #@0
    iget-boolean v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mReleaseInProgress:Z

    #@2
    if-nez v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string v1, "Cannot flingCapturedView outside of a call to Callback#onViewReleased"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@e
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@10
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    #@13
    move-result v1

    #@14
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@16
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    #@19
    move-result v2

    #@1a
    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1c
    iget v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@1e
    invoke-static {v3, v4}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    #@21
    move-result v3

    #@22
    float-to-int v3, v3

    #@23
    iget-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@25
    iget v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@27
    invoke-static {v4, v5}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    #@2a
    move-result v4

    #@2b
    float-to-int v4, v4

    #@2c
    move v5, p1

    #@2d
    move v6, p3

    #@2e
    move v7, p2

    #@2f
    move v8, p4

    #@30
    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    #@33
    const/4 v0, 0x2

    #@34
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    #@37
    return-void
.end method

.method public getActivePointerId()I
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@2
    return v0
.end method

.method public getCapturedView()Landroid/view/View;
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getEdgeSize()I
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    #@2
    return v0
.end method

.method public getMinVelocity()F
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    #@2
    return v0
.end method

.method public getTouchSlop()I
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    #@2
    return v0
.end method

.method public getViewDragState()I
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@2
    return v0
.end method

.method public isCapturedViewUnder(II)Z
    .registers 4

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@2
    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEdgeTouched(I)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@3
    array-length v2, v1

    #@4
    move v1, v0

    #@5
    :goto_5
    if-ge v1, v2, :cond_e

    #@7
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/ViewDragHelper;->isEdgeTouched(II)Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_f

    #@d
    const/4 v0, 0x1

    #@e
    :cond_e
    return v0

    #@f
    :cond_f
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_5
.end method

.method public isEdgeTouched(II)Z
    .registers 4

    #@0
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/ViewDragHelper;->isPointerDown(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_f

    #@6
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@8
    aget v0, v0, p2

    #@a
    and-int/2addr v0, p1

    #@b
    if-eqz v0, :cond_f

    #@d
    const/4 v0, 0x1

    #@e
    :goto_e
    return v0

    #@f
    :cond_f
    const/4 v0, 0x0

    #@10
    goto :goto_e
.end method

.method public isPointerDown(I)Z
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I

    #@3
    shl-int v2, v0, p1

    #@5
    and-int/2addr v1, v2

    #@6
    if-eqz v1, :cond_9

    #@8
    :goto_8
    return v0

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    goto :goto_8
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    :cond_3
    :goto_3
    return v0

    #@4
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@7
    move-result v1

    #@8
    if-lt p2, v1, :cond_3

    #@a
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    #@d
    move-result v1

    #@e
    if-ge p2, v1, :cond_3

    #@10
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@13
    move-result v1

    #@14
    if-lt p3, v1, :cond_3

    #@16
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    #@19
    move-result v1

    #@1a
    if-ge p3, v1, :cond_3

    #@1c
    const/4 v0, 0x1

    #@1d
    goto :goto_3
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .registers 11

    #@0
    const/4 v1, -0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v0, 0x0

    #@3
    const/4 v8, 0x1

    #@4
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    #@7
    move-result v2

    #@8
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    #@b
    move-result v3

    #@c
    if-nez v2, :cond_11

    #@e
    invoke-virtual {p0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    #@11
    :cond_11
    iget-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@13
    if-nez v4, :cond_1b

    #@15
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@18
    move-result-object v4

    #@19
    iput-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1b
    :cond_1b
    iget-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1d
    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@20
    packed-switch v2, :pswitch_data_15e

    #@23
    :cond_23
    :goto_23
    :pswitch_23
    return-void

    #@24
    :pswitch_24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@27
    move-result v1

    #@28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@2b
    move-result v2

    #@2c
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@2f
    move-result v0

    #@30
    float-to-int v3, v1

    #@31
    float-to-int v4, v2

    #@32
    invoke-virtual {p0, v3, v4}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    #@35
    move-result-object v3

    #@36
    invoke-direct {p0, v1, v2, v0}, Landroid/support/v4/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    #@39
    invoke-virtual {p0, v3, v0}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    #@3c
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@3e
    aget v1, v1, v0

    #@40
    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    #@42
    and-int/2addr v2, v1

    #@43
    if-eqz v2, :cond_23

    #@45
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@47
    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    #@49
    and-int/2addr v1, v3

    #@4a
    invoke-virtual {v2, v1, v0}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    #@4d
    goto :goto_23

    #@4e
    :pswitch_4e
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@51
    move-result v0

    #@52
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    #@55
    move-result v1

    #@56
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    #@59
    move-result v2

    #@5a
    invoke-direct {p0, v1, v2, v0}, Landroid/support/v4/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    #@5d
    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@5f
    if-nez v3, :cond_7c

    #@61
    float-to-int v1, v1

    #@62
    float-to-int v2, v2

    #@63
    invoke-virtual {p0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    #@66
    move-result-object v1

    #@67
    invoke-virtual {p0, v1, v0}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    #@6a
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@6c
    aget v1, v1, v0

    #@6e
    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    #@70
    and-int/2addr v2, v1

    #@71
    if-eqz v2, :cond_23

    #@73
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@75
    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    #@77
    and-int/2addr v1, v3

    #@78
    invoke-virtual {v2, v1, v0}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    #@7b
    goto :goto_23

    #@7c
    :cond_7c
    float-to-int v1, v1

    #@7d
    float-to-int v2, v2

    #@7e
    invoke-virtual {p0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->isCapturedViewUnder(II)Z

    #@81
    move-result v1

    #@82
    if-eqz v1, :cond_23

    #@84
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@86
    invoke-virtual {p0, v1, v0}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    #@89
    goto :goto_23

    #@8a
    :pswitch_8a
    iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@8c
    if-ne v1, v8, :cond_c2

    #@8e
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@90
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    #@93
    move-result v0

    #@94
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    #@97
    move-result v1

    #@98
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    #@9b
    move-result v0

    #@9c
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    #@9e
    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@a0
    aget v2, v2, v3

    #@a2
    sub-float/2addr v1, v2

    #@a3
    float-to-int v1, v1

    #@a4
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    #@a6
    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@a8
    aget v2, v2, v3

    #@aa
    sub-float/2addr v0, v2

    #@ab
    float-to-int v0, v0

    #@ac
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@ae
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    #@b1
    move-result v2

    #@b2
    add-int/2addr v2, v1

    #@b3
    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@b5
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    #@b8
    move-result v3

    #@b9
    add-int/2addr v3, v0

    #@ba
    invoke-direct {p0, v2, v3, v1, v0}, Landroid/support/v4/widget/ViewDragHelper;->dragTo(IIII)V

    #@bd
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    #@c0
    goto/16 :goto_23

    #@c2
    :cond_c2
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    #@c5
    move-result v1

    #@c6
    :goto_c6
    if-ge v0, v1, :cond_e7

    #@c8
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@cb
    move-result v2

    #@cc
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    #@cf
    move-result v3

    #@d0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    #@d3
    move-result v4

    #@d4
    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    #@d6
    aget v5, v5, v2

    #@d8
    sub-float v5, v3, v5

    #@da
    iget-object v6, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    #@dc
    aget v6, v6, v2

    #@de
    sub-float v6, v4, v6

    #@e0
    invoke-direct {p0, v5, v6, v2}, Landroid/support/v4/widget/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    #@e3
    iget v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@e5
    if-ne v7, v8, :cond_ec

    #@e7
    :cond_e7
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    #@ea
    goto/16 :goto_23

    #@ec
    :cond_ec
    float-to-int v3, v3

    #@ed
    float-to-int v4, v4

    #@ee
    invoke-virtual {p0, v3, v4}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    #@f1
    move-result-object v3

    #@f2
    invoke-direct {p0, v3, v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    #@f5
    move-result v4

    #@f6
    if-eqz v4, :cond_fe

    #@f8
    invoke-virtual {p0, v3, v2}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    #@fb
    move-result v2

    #@fc
    if-nez v2, :cond_e7

    #@fe
    :cond_fe
    add-int/lit8 v0, v0, 0x1

    #@100
    goto :goto_c6

    #@101
    :pswitch_101
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@104
    move-result v2

    #@105
    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@107
    if-ne v3, v8, :cond_13f

    #@109
    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@10b
    if-ne v2, v3, :cond_13f

    #@10d
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    #@110
    move-result v3

    #@111
    :goto_111
    if-ge v0, v3, :cond_15c

    #@113
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@116
    move-result v4

    #@117
    iget v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@119
    if-ne v4, v5, :cond_11e

    #@11b
    :cond_11b
    add-int/lit8 v0, v0, 0x1

    #@11d
    goto :goto_111

    #@11e
    :cond_11e
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    #@121
    move-result v5

    #@122
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    #@125
    move-result v6

    #@126
    float-to-int v5, v5

    #@127
    float-to-int v6, v6

    #@128
    invoke-virtual {p0, v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    #@12b
    move-result-object v5

    #@12c
    iget-object v6, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@12e
    if-ne v5, v6, :cond_11b

    #@130
    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@132
    invoke-virtual {p0, v5, v4}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    #@135
    move-result v4

    #@136
    if-eqz v4, :cond_11b

    #@138
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@13a
    :goto_13a
    if-ne v0, v1, :cond_13f

    #@13c
    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper;->releaseViewForPointerUp()V

    #@13f
    :cond_13f
    invoke-direct {p0, v2}, Landroid/support/v4/widget/ViewDragHelper;->clearMotionHistory(I)V

    #@142
    goto/16 :goto_23

    #@144
    :pswitch_144
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@146
    if-ne v0, v8, :cond_14b

    #@148
    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper;->releaseViewForPointerUp()V

    #@14b
    :cond_14b
    invoke-virtual {p0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    #@14e
    goto/16 :goto_23

    #@150
    :pswitch_150
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@152
    if-ne v0, v8, :cond_157

    #@154
    invoke-direct {p0, v5, v5}, Landroid/support/v4/widget/ViewDragHelper;->dispatchViewReleased(FF)V

    #@157
    :cond_157
    invoke-virtual {p0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    #@15a
    goto/16 :goto_23

    #@15c
    :cond_15c
    move v0, v1

    #@15d
    goto :goto_13a

    #@15e
    :pswitch_data_15e
    .packed-switch 0x0
        :pswitch_24
        :pswitch_144
        :pswitch_8a
        :pswitch_150
        :pswitch_23
        :pswitch_4e
        :pswitch_101
    .end packed-switch
.end method

.method setDragState(I)V
    .registers 3

    #@0
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@2
    if-eq v0, p1, :cond_10

    #@4
    iput p1, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@6
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@8
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    #@b
    if-nez p1, :cond_10

    #@d
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@10
    :cond_10
    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .registers 2

    #@0
    iput p1, p0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    #@2
    return-void
.end method

.method public setMinVelocity(F)V
    .registers 2

    #@0
    iput p1, p0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    #@2
    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .registers 6

    #@0
    iget-boolean v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mReleaseInProgress:Z

    #@2
    if-nez v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@e
    iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@10
    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    #@13
    move-result v0

    #@14
    float-to-int v0, v0

    #@15
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@17
    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@19
    invoke-static {v1, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    #@1c
    move-result v1

    #@1d
    float-to-int v1, v1

    #@1e
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    #@21
    move-result v0

    #@22
    return v0
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    #@0
    const/4 v6, 0x2

    #@1
    const/4 v0, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    #@6
    move-result v2

    #@7
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    #@a
    move-result v3

    #@b
    if-nez v2, :cond_10

    #@d
    invoke-virtual {p0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    #@10
    :cond_10
    iget-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@12
    if-nez v4, :cond_1a

    #@14
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@17
    move-result-object v4

    #@18
    iput-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1a
    :cond_1a
    iget-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1c
    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@1f
    packed-switch v2, :pswitch_data_e4

    #@22
    :cond_22
    :goto_22
    :pswitch_22
    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@24
    if-ne v2, v0, :cond_e0

    #@26
    :goto_26
    return v0

    #@27
    :pswitch_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@2a
    move-result v2

    #@2b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@2e
    move-result v3

    #@2f
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@32
    move-result v4

    #@33
    invoke-direct {p0, v2, v3, v4}, Landroid/support/v4/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    #@36
    float-to-int v2, v2

    #@37
    float-to-int v3, v3

    #@38
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    #@3b
    move-result-object v2

    #@3c
    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@3e
    if-ne v2, v3, :cond_47

    #@40
    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@42
    if-ne v3, v6, :cond_47

    #@44
    invoke-virtual {p0, v2, v4}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    #@47
    :cond_47
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@49
    aget v2, v2, v4

    #@4b
    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    #@4d
    and-int/2addr v3, v2

    #@4e
    if-eqz v3, :cond_22

    #@50
    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@52
    iget v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    #@54
    and-int/2addr v2, v5

    #@55
    invoke-virtual {v3, v2, v4}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    #@58
    goto :goto_22

    #@59
    :pswitch_59
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@5c
    move-result v2

    #@5d
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    #@60
    move-result v4

    #@61
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    #@64
    move-result v3

    #@65
    invoke-direct {p0, v4, v3, v2}, Landroid/support/v4/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    #@68
    iget v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@6a
    if-nez v5, :cond_7e

    #@6c
    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@6e
    aget v3, v3, v2

    #@70
    iget v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    #@72
    and-int/2addr v4, v3

    #@73
    if-eqz v4, :cond_22

    #@75
    iget-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@77
    iget v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    #@79
    and-int/2addr v3, v5

    #@7a
    invoke-virtual {v4, v3, v2}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    #@7d
    goto :goto_22

    #@7e
    :cond_7e
    iget v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@80
    if-ne v5, v6, :cond_22

    #@82
    float-to-int v4, v4

    #@83
    float-to-int v3, v3

    #@84
    invoke-virtual {p0, v4, v3}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    #@87
    move-result-object v3

    #@88
    iget-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@8a
    if-ne v3, v4, :cond_22

    #@8c
    invoke-virtual {p0, v3, v2}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    #@8f
    goto :goto_22

    #@90
    :pswitch_90
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    #@93
    move-result v3

    #@94
    move v2, v1

    #@95
    :goto_95
    if-ge v2, v3, :cond_b6

    #@97
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@9a
    move-result v4

    #@9b
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    #@9e
    move-result v5

    #@9f
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    #@a2
    move-result v6

    #@a3
    iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    #@a5
    aget v7, v7, v4

    #@a7
    sub-float v7, v5, v7

    #@a9
    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    #@ab
    aget v8, v8, v4

    #@ad
    sub-float v8, v6, v8

    #@af
    invoke-direct {p0, v7, v8, v4}, Landroid/support/v4/widget/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    #@b2
    iget v9, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@b4
    if-ne v9, v0, :cond_bb

    #@b6
    :cond_b6
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    #@b9
    goto/16 :goto_22

    #@bb
    :cond_bb
    float-to-int v5, v5

    #@bc
    float-to-int v6, v6

    #@bd
    invoke-virtual {p0, v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    #@c0
    move-result-object v5

    #@c1
    if-eqz v5, :cond_cf

    #@c3
    invoke-direct {p0, v5, v7, v8}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    #@c6
    move-result v6

    #@c7
    if-eqz v6, :cond_cf

    #@c9
    invoke-virtual {p0, v5, v4}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    #@cc
    move-result v4

    #@cd
    if-nez v4, :cond_b6

    #@cf
    :cond_cf
    add-int/lit8 v2, v2, 0x1

    #@d1
    goto :goto_95

    #@d2
    :pswitch_d2
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@d5
    move-result v2

    #@d6
    invoke-direct {p0, v2}, Landroid/support/v4/widget/ViewDragHelper;->clearMotionHistory(I)V

    #@d9
    goto/16 :goto_22

    #@db
    :pswitch_db
    invoke-virtual {p0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    #@de
    goto/16 :goto_22

    #@e0
    :cond_e0
    move v0, v1

    #@e1
    goto/16 :goto_26

    #@e3
    nop

    #@e4
    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_27
        :pswitch_db
        :pswitch_90
        :pswitch_db
        :pswitch_22
        :pswitch_59
        :pswitch_d2
    .end packed-switch
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    iput-object p1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@3
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@6
    invoke-direct {p0, p2, p3, v1, v1}, Landroid/support/v4/widget/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method tryCaptureViewForDrag(Landroid/view/View;I)Z
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@3
    if-ne p1, v1, :cond_a

    #@5
    iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@7
    if-ne v1, p2, :cond_a

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    if-eqz p1, :cond_1a

    #@c
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@e
    invoke-virtual {v1, p1, p2}, Landroid/support/v4/widget/ViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1a

    #@14
    iput p2, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@16
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    #@19
    goto :goto_9

    #@1a
    :cond_1a
    const/4 v0, 0x0

    #@1b
    goto :goto_9
.end method
