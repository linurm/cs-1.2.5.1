.class public abstract Landroid/support/v4/widget/AutoScrollHelper;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;,
        Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACTIVATION_DELAY:I

.field private static final DEFAULT_EDGE_TYPE:I = 0x1

.field private static final DEFAULT_MAXIMUM_EDGE:F = 3.4028235E38f

.field private static final DEFAULT_MAXIMUM_VELOCITY_DIPS:I = 0x627

.field private static final DEFAULT_MINIMUM_VELOCITY_DIPS:I = 0x13b

.field private static final DEFAULT_RAMP_DOWN_DURATION:I = 0x1f4

.field private static final DEFAULT_RAMP_UP_DURATION:I = 0x1f4

.field private static final DEFAULT_RELATIVE_EDGE:F = 0.2f

.field private static final DEFAULT_RELATIVE_VELOCITY:F = 1.0f

.field public static final EDGE_TYPE_INSIDE:I = 0x0

.field public static final EDGE_TYPE_INSIDE_EXTEND:I = 0x1

.field public static final EDGE_TYPE_OUTSIDE:I = 0x2

.field private static final HORIZONTAL:I = 0x0

.field public static final NO_MAX:F = 3.4028235E38f

.field public static final NO_MIN:F = 0.0f

.field public static final RELATIVE_UNSPECIFIED:F = 0.0f

.field private static final VERTICAL:I = 0x1


# instance fields
.field private mActivationDelay:I

.field private mAlreadyDelayed:Z

.field private mAnimating:Z

.field private final mEdgeInterpolator:Landroid/view/animation/Interpolator;

.field private mEdgeType:I

.field private mEnabled:Z

.field private mExclusive:Z

.field private mMaximumEdges:[F

.field private mMaximumVelocity:[F

.field private mMinimumVelocity:[F

.field private mNeedsCancel:Z

.field private mNeedsReset:Z

.field private mRelativeEdges:[F

.field private mRelativeVelocity:[F

.field private mRunnable:Ljava/lang/Runnable;

.field private final mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

.field private final mTarget:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    #@3
    move-result v0

    #@4
    sput v0, Landroid/support/v4/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    #@6
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 9

    #@0
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    #@3
    const/high16 v5, 0x3f800000    # 1.0f

    #@5
    const/high16 v4, 0x3f000000    # 0.5f

    #@7
    const v3, 0x3e4ccccd    # 0.2f

    #@a
    const/4 v1, 0x2

    #@b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@e
    new-instance v0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    #@10
    invoke-direct {v0}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;-><init>()V

    #@13
    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    #@15
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    #@17
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    #@1a
    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    #@1c
    new-array v0, v1, [F

    #@1e
    fill-array-data v0, :array_80

    #@21
    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    #@23
    new-array v0, v1, [F

    #@25
    fill-array-data v0, :array_88

    #@28
    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    #@2a
    new-array v0, v1, [F

    #@2c
    fill-array-data v0, :array_90

    #@2f
    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    #@31
    new-array v0, v1, [F

    #@33
    fill-array-data v0, :array_98

    #@36
    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    #@38
    new-array v0, v1, [F

    #@3a
    fill-array-data v0, :array_a0

    #@3d
    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    #@3f
    iput-object p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    #@41
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@48
    move-result-object v0

    #@49
    const v1, 0x44c4e000    # 1575.0f

    #@4c
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    #@4e
    mul-float/2addr v1, v2

    #@4f
    add-float/2addr v1, v4

    #@50
    float-to-int v1, v1

    #@51
    const v2, 0x439d8000    # 315.0f

    #@54
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    #@56
    mul-float/2addr v0, v2

    #@57
    add-float/2addr v0, v4

    #@58
    float-to-int v0, v0

    #@59
    int-to-float v2, v1

    #@5a
    int-to-float v1, v1

    #@5b
    invoke-virtual {p0, v2, v1}, Landroid/support/v4/widget/AutoScrollHelper;->setMaximumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;

    #@5e
    int-to-float v1, v0

    #@5f
    int-to-float v0, v0

    #@60
    invoke-virtual {p0, v1, v0}, Landroid/support/v4/widget/AutoScrollHelper;->setMinimumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;

    #@63
    const/4 v0, 0x1

    #@64
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/AutoScrollHelper;->setEdgeType(I)Landroid/support/v4/widget/AutoScrollHelper;

    #@67
    invoke-virtual {p0, v6, v6}, Landroid/support/v4/widget/AutoScrollHelper;->setMaximumEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;

    #@6a
    invoke-virtual {p0, v3, v3}, Landroid/support/v4/widget/AutoScrollHelper;->setRelativeEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;

    #@6d
    invoke-virtual {p0, v5, v5}, Landroid/support/v4/widget/AutoScrollHelper;->setRelativeVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;

    #@70
    sget v0, Landroid/support/v4/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    #@72
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/AutoScrollHelper;->setActivationDelay(I)Landroid/support/v4/widget/AutoScrollHelper;

    #@75
    const/16 v0, 0x1f4

    #@77
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/AutoScrollHelper;->setRampUpDuration(I)Landroid/support/v4/widget/AutoScrollHelper;

    #@7a
    const/16 v0, 0x1f4

    #@7c
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/AutoScrollHelper;->setRampDownDuration(I)Landroid/support/v4/widget/AutoScrollHelper;

    #@7f
    return-void

    #@80
    :array_80
    .array-data 4
        0x0
        0x0
    .end array-data

    #@88
    :array_88
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    #@90
    :array_90
    .array-data 4
        0x0
        0x0
    .end array-data

    #@98
    :array_98
    .array-data 4
        0x0
        0x0
    .end array-data

    #@a0
    :array_a0
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method static synthetic access$100(Landroid/support/v4/widget/AutoScrollHelper;)Z
    .registers 2

    #@0
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    #@2
    return v0
.end method

.method static synthetic access$102(Landroid/support/v4/widget/AutoScrollHelper;Z)Z
    .registers 2

    #@0
    iput-boolean p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    #@2
    return p1
.end method

.method static synthetic access$200(Landroid/support/v4/widget/AutoScrollHelper;)Z
    .registers 2

    #@0
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    #@2
    return v0
.end method

.method static synthetic access$202(Landroid/support/v4/widget/AutoScrollHelper;Z)Z
    .registers 2

    #@0
    iput-boolean p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    #@2
    return p1
.end method

.method static synthetic access$300(Landroid/support/v4/widget/AutoScrollHelper;)Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    #@2
    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v4/widget/AutoScrollHelper;)Z
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->shouldAnimate()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$500(Landroid/support/v4/widget/AutoScrollHelper;)Z
    .registers 2

    #@0
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsCancel:Z

    #@2
    return v0
.end method

.method static synthetic access$502(Landroid/support/v4/widget/AutoScrollHelper;Z)Z
    .registers 2

    #@0
    iput-boolean p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsCancel:Z

    #@2
    return p1
.end method

.method static synthetic access$600(Landroid/support/v4/widget/AutoScrollHelper;)V
    .registers 1

    #@0
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->cancelTargetTouch()V

    #@3
    return-void
.end method

.method static synthetic access$700(Landroid/support/v4/widget/AutoScrollHelper;)Landroid/view/View;
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    #@2
    return-object v0
.end method

.method static synthetic access$800(III)I
    .registers 4

    #@0
    invoke-static {p0, p1, p2}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(III)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$900(FFF)F
    .registers 4

    #@0
    invoke-static {p0, p1, p2}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private cancelTargetTouch()V
    .registers 9

    #@0
    const/4 v5, 0x0

    #@1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@4
    move-result-wide v0

    #@5
    const/4 v4, 0x3

    #@6
    const/4 v7, 0x0

    #@7
    move-wide v2, v0

    #@8
    move v6, v5

    #@9
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@c
    move-result-object v0

    #@d
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    #@f
    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@12
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    #@15
    return-void
.end method

.method private computeTargetVelocity(IFFF)F
    .registers 10

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    #@3
    aget v1, v1, p1

    #@5
    iget-object v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    #@7
    aget v2, v2, p1

    #@9
    invoke-direct {p0, v1, p3, v2, p2}, Landroid/support/v4/widget/AutoScrollHelper;->getEdgeValue(FFFF)F

    #@c
    move-result v1

    #@d
    cmpl-float v2, v1, v0

    #@f
    if-nez v2, :cond_12

    #@11
    :goto_11
    return v0

    #@12
    :cond_12
    iget-object v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    #@14
    aget v2, v2, p1

    #@16
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    #@18
    aget v3, v3, p1

    #@1a
    iget-object v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    #@1c
    aget v4, v4, p1

    #@1e
    mul-float/2addr v2, p4

    #@1f
    cmpl-float v0, v1, v0

    #@21
    if-lez v0, :cond_2a

    #@23
    mul-float v0, v1, v2

    #@25
    invoke-static {v0, v3, v4}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    #@28
    move-result v0

    #@29
    goto :goto_11

    #@2a
    :cond_2a
    neg-float v0, v1

    #@2b
    mul-float/2addr v0, v2

    #@2c
    invoke-static {v0, v3, v4}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    #@2f
    move-result v0

    #@30
    neg-float v0, v0

    #@31
    goto :goto_11
.end method

.method private static constrain(FFF)F
    .registers 4

    #@0
    cmpl-float v0, p0, p2

    #@2
    if-lez v0, :cond_6

    #@4
    move p1, p2

    #@5
    :cond_5
    :goto_5
    return p1

    #@6
    :cond_6
    cmpg-float v0, p0, p1

    #@8
    if-ltz v0, :cond_5

    #@a
    move p1, p0

    #@b
    goto :goto_5
.end method

.method private static constrain(III)I
    .registers 3

    #@0
    if-le p0, p2, :cond_4

    #@2
    move p1, p2

    #@3
    :cond_3
    :goto_3
    return p1

    #@4
    :cond_4
    if-lt p0, p1, :cond_3

    #@6
    move p1, p0

    #@7
    goto :goto_3
.end method

.method private constrainEdgeValue(FF)F
    .registers 7

    #@0
    const/high16 v1, 0x3f800000    # 1.0f

    #@2
    const/4 v0, 0x0

    #@3
    cmpl-float v2, p2, v0

    #@5
    if-nez v2, :cond_8

    #@7
    :cond_7
    :goto_7
    return v0

    #@8
    :cond_8
    iget v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeType:I

    #@a
    packed-switch v2, :pswitch_data_2e

    #@d
    goto :goto_7

    #@e
    :pswitch_e
    cmpg-float v2, p1, p2

    #@10
    if-gez v2, :cond_7

    #@12
    cmpl-float v2, p1, v0

    #@14
    if-ltz v2, :cond_1b

    #@16
    div-float v0, p1, p2

    #@18
    sub-float v0, v1, v0

    #@1a
    goto :goto_7

    #@1b
    :cond_1b
    iget-boolean v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    #@1d
    if-eqz v2, :cond_7

    #@1f
    iget v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeType:I

    #@21
    const/4 v3, 0x1

    #@22
    if-ne v2, v3, :cond_7

    #@24
    move v0, v1

    #@25
    goto :goto_7

    #@26
    :pswitch_26
    cmpg-float v1, p1, v0

    #@28
    if-gez v1, :cond_7

    #@2a
    neg-float v0, p2

    #@2b
    div-float v0, p1, v0

    #@2d
    goto :goto_7

    #@2e
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_e
        :pswitch_e
        :pswitch_26
    .end packed-switch
.end method

.method private getEdgeValue(FFFF)F
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    mul-float v1, p1, p2

    #@3
    invoke-static {v1, v0, p3}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    #@6
    move-result v1

    #@7
    invoke-direct {p0, p4, v1}, Landroid/support/v4/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    #@a
    move-result v2

    #@b
    sub-float v3, p2, p4

    #@d
    invoke-direct {p0, v3, v1}, Landroid/support/v4/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    #@10
    move-result v1

    #@11
    sub-float/2addr v1, v2

    #@12
    cmpg-float v2, v1, v0

    #@14
    if-gez v2, :cond_27

    #@16
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    #@18
    neg-float v1, v1

    #@19
    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@1c
    move-result v0

    #@1d
    neg-float v0, v0

    #@1e
    :goto_1e
    const/high16 v1, -0x40800000    # -1.0f

    #@20
    const/high16 v2, 0x3f800000    # 1.0f

    #@22
    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    #@25
    move-result v0

    #@26
    :cond_26
    return v0

    #@27
    :cond_27
    cmpl-float v2, v1, v0

    #@29
    if-lez v2, :cond_26

    #@2b
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    #@2d
    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@30
    move-result v0

    #@31
    goto :goto_1e
.end method

.method private requestStop()V
    .registers 2

    #@0
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    #@7
    :goto_7
    return-void

    #@8
    :cond_8
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    #@a
    invoke-virtual {v0}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->requestStop()V

    #@d
    goto :goto_7
.end method

.method private shouldAnimate()Z
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getVerticalDirection()I

    #@5
    move-result v1

    #@6
    invoke-virtual {v0}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getHorizontalDirection()I

    #@9
    move-result v0

    #@a
    if-eqz v1, :cond_12

    #@c
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/AutoScrollHelper;->canTargetScrollVertically(I)Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_1a

    #@12
    :cond_12
    if-eqz v0, :cond_1c

    #@14
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/AutoScrollHelper;->canTargetScrollHorizontally(I)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1c

    #@1a
    :cond_1a
    const/4 v0, 0x1

    #@1b
    :goto_1b
    return v0

    #@1c
    :cond_1c
    const/4 v0, 0x0

    #@1d
    goto :goto_1b
.end method

.method private startAnimating()V
    .registers 6

    #@0
    const/4 v4, 0x1

    #@1
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    #@3
    if-nez v0, :cond_d

    #@5
    new-instance v0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-direct {v0, p0, v1}, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Landroid/support/v4/widget/AutoScrollHelper;Landroid/support/v4/widget/AutoScrollHelper$1;)V

    #@b
    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    #@d
    :cond_d
    iput-boolean v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    #@f
    iput-boolean v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    #@11
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    #@13
    if-nez v0, :cond_26

    #@15
    iget v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mActivationDelay:I

    #@17
    if-lez v0, :cond_26

    #@19
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    #@1b
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    #@1d
    iget v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mActivationDelay:I

    #@1f
    int-to-long v2, v2

    #@20
    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    #@23
    :goto_23
    iput-boolean v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    #@25
    return-void

    #@26
    :cond_26
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    #@28
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@2b
    goto :goto_23
.end method


# virtual methods
.method public abstract canTargetScrollHorizontally(I)Z
.end method

.method public abstract canTargetScrollVertically(I)Z
.end method

.method public isEnabled()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    #@2
    return v0
.end method

.method public isExclusive()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mExclusive:Z

    #@2
    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    iget-boolean v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    #@4
    if-nez v2, :cond_7

    #@6
    :cond_6
    :goto_6
    return v0

    #@7
    :cond_7
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    #@a
    move-result v2

    #@b
    packed-switch v2, :pswitch_data_5c

    #@e
    :cond_e
    :goto_e
    iget-boolean v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mExclusive:Z

    #@10
    if-eqz v2, :cond_6

    #@12
    iget-boolean v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    #@14
    if-eqz v2, :cond_6

    #@16
    move v0, v1

    #@17
    goto :goto_6

    #@18
    :pswitch_18
    iput-boolean v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsCancel:Z

    #@1a
    iput-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    #@1c
    :pswitch_1c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    #@1f
    move-result v2

    #@20
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@23
    move-result v3

    #@24
    int-to-float v3, v3

    #@25
    iget-object v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    #@27
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    #@2a
    move-result v4

    #@2b
    int-to-float v4, v4

    #@2c
    invoke-direct {p0, v0, v2, v3, v4}, Landroid/support/v4/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    #@2f
    move-result v2

    #@30
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    #@33
    move-result v3

    #@34
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@37
    move-result v4

    #@38
    int-to-float v4, v4

    #@39
    iget-object v5, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    #@3b
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    #@3e
    move-result v5

    #@3f
    int-to-float v5, v5

    #@40
    invoke-direct {p0, v1, v3, v4, v5}, Landroid/support/v4/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    #@43
    move-result v3

    #@44
    iget-object v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    #@46
    invoke-virtual {v4, v2, v3}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->setTargetVelocity(FF)V

    #@49
    iget-boolean v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    #@4b
    if-nez v2, :cond_e

    #@4d
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->shouldAnimate()Z

    #@50
    move-result v2

    #@51
    if-eqz v2, :cond_e

    #@53
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->startAnimating()V

    #@56
    goto :goto_e

    #@57
    :pswitch_57
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->requestStop()V

    #@5a
    goto :goto_e

    #@5b
    nop

    #@5c
    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_18
        :pswitch_57
        :pswitch_1c
        :pswitch_57
    .end packed-switch
.end method

.method public abstract scrollTargetBy(II)V
.end method

.method public setActivationDelay(I)Landroid/support/v4/widget/AutoScrollHelper;
    .registers 2

    #@0
    iput p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mActivationDelay:I

    #@2
    return-object p0
.end method

.method public setEdgeType(I)Landroid/support/v4/widget/AutoScrollHelper;
    .registers 2

    #@0
    iput p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeType:I

    #@2
    return-object p0
.end method

.method public setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;
    .registers 3

    #@0
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    #@2
    if-eqz v0, :cond_9

    #@4
    if-nez p1, :cond_9

    #@6
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->requestStop()V

    #@9
    :cond_9
    iput-boolean p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    #@b
    return-object p0
.end method

.method public setExclusive(Z)Landroid/support/v4/widget/AutoScrollHelper;
    .registers 2

    #@0
    iput-boolean p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mExclusive:Z

    #@2
    return-object p0
.end method

.method public setMaximumEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .registers 5

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    #@2
    const/4 v1, 0x0

    #@3
    aput p1, v0, v1

    #@5
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    #@7
    const/4 v1, 0x1

    #@8
    aput p2, v0, v1

    #@a
    return-object p0
.end method

.method public setMaximumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .registers 7

    #@0
    const/high16 v3, 0x447a0000    # 1000.0f

    #@2
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    #@4
    const/4 v1, 0x0

    #@5
    div-float v2, p1, v3

    #@7
    aput v2, v0, v1

    #@9
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    #@b
    const/4 v1, 0x1

    #@c
    div-float v2, p2, v3

    #@e
    aput v2, v0, v1

    #@10
    return-object p0
.end method

.method public setMinimumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .registers 7

    #@0
    const/high16 v3, 0x447a0000    # 1000.0f

    #@2
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    #@4
    const/4 v1, 0x0

    #@5
    div-float v2, p1, v3

    #@7
    aput v2, v0, v1

    #@9
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    #@b
    const/4 v1, 0x1

    #@c
    div-float v2, p2, v3

    #@e
    aput v2, v0, v1

    #@10
    return-object p0
.end method

.method public setRampDownDuration(I)Landroid/support/v4/widget/AutoScrollHelper;
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    #@2
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->setRampDownDuration(I)V

    #@5
    return-object p0
.end method

.method public setRampUpDuration(I)Landroid/support/v4/widget/AutoScrollHelper;
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    #@2
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->setRampUpDuration(I)V

    #@5
    return-object p0
.end method

.method public setRelativeEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .registers 5

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    #@2
    const/4 v1, 0x0

    #@3
    aput p1, v0, v1

    #@5
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    #@7
    const/4 v1, 0x1

    #@8
    aput p2, v0, v1

    #@a
    return-object p0
.end method

.method public setRelativeVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .registers 7

    #@0
    const/high16 v3, 0x447a0000    # 1000.0f

    #@2
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    #@4
    const/4 v1, 0x0

    #@5
    div-float v2, p1, v3

    #@7
    aput v2, v0, v1

    #@9
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    #@b
    const/4 v1, 0x1

    #@c
    div-float v2, p2, v3

    #@e
    aput v2, v0, v1

    #@10
    return-object p0
.end method
