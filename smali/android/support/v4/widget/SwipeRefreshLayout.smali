.class public Landroid/support/v4/widget/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SwipeRefreshLayout$BaseAnimationListener;,
        Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
    }
.end annotation


# static fields
.field private static final ACCELERATE_INTERPOLATION_FACTOR:F = 1.5f

.field private static final DECELERATE_INTERPOLATION_FACTOR:F = 2.0f

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_ATTRS:[I

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_SWIPE_DISTANCE_FACTOR:F = 0.6f

.field private static final PROGRESS_BAR_HEIGHT:F = 4.0f

.field private static final REFRESH_TRIGGER_DISTANCE:I = 0x78

.field private static final RETURN_TO_ORIGINAL_POSITION_TIMEOUT:J = 0x12cL


# instance fields
.field private final mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mActivePointerId:I

.field private final mAnimateToStartPosition:Landroid/view/animation/Animation;

.field private final mCancel:Ljava/lang/Runnable;

.field private mCurrPercentage:F

.field private mCurrentTargetOffsetTop:I

.field private final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mDistanceToTriggerSync:F

.field private mFrom:I

.field private mFromPercentage:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mLastMotionY:F

.field private mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

.field private mMediumAnimationDuration:I

.field private mOriginalOffsetTop:I

.field private mProgressBar:Landroid/support/v4/widget/SwipeProgressBar;

.field private mProgressBarHeight:I

.field private mRefreshing:Z

.field private final mReturnToStartPosition:Ljava/lang/Runnable;

.field private final mReturnToStartPositionListener:Landroid/view/animation/Animation$AnimationListener;

.field private mReturningToStart:Z

.field private final mShrinkAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mShrinkTrigger:Landroid/view/animation/Animation;

.field private mTarget:Landroid/view/View;

.field private mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const-class v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    #@8
    const/4 v0, 0x1

    #@9
    new-array v0, v0, [I

    #@b
    const/4 v1, 0x0

    #@c
    const v2, 0x101000e

    #@f
    aput v2, v0, v1

    #@11
    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    #@13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    #@7
    const/high16 v0, -0x40800000    # -1.0f

    #@9
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDistanceToTriggerSync:F

    #@b
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFromPercentage:F

    #@d
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrPercentage:F

    #@f
    const/4 v0, -0x1

    #@10
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    #@12
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$1;

    #@14
    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$1;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    #@17
    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    #@19
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$2;

    #@1b
    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$2;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    #@1e
    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mShrinkTrigger:Landroid/view/animation/Animation;

    #@20
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$3;

    #@22
    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$3;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    #@25
    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturnToStartPositionListener:Landroid/view/animation/Animation$AnimationListener;

    #@27
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$4;

    #@29
    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$4;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    #@2c
    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mShrinkAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    #@2e
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$5;

    #@30
    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$5;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    #@33
    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturnToStartPosition:Ljava/lang/Runnable;

    #@35
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$6;

    #@37
    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$6;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    #@3a
    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCancel:Ljava/lang/Runnable;

    #@3c
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@43
    move-result v0

    #@44
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    #@46
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    #@49
    move-result-object v0

    #@4a
    const v1, 0x10e0001

    #@4d
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@50
    move-result v0

    #@51
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

    #@53
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setWillNotDraw(Z)V

    #@56
    new-instance v0, Landroid/support/v4/widget/SwipeProgressBar;

    #@58
    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeProgressBar;-><init>(Landroid/view/View;)V

    #@5b
    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgressBar:Landroid/support/v4/widget/SwipeProgressBar;

    #@5d
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    #@60
    move-result-object v0

    #@61
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@64
    move-result-object v0

    #@65
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    #@67
    const/high16 v1, 0x40800000    # 4.0f

    #@69
    mul-float/2addr v0, v1

    #@6a
    float-to-int v0, v0

    #@6b
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgressBarHeight:I

    #@6d
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    #@6f
    const/high16 v1, 0x40000000    # 2.0f

    #@71
    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    #@74
    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    #@76
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    #@78
    const/high16 v1, 0x3fc00000    # 1.5f

    #@7a
    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    #@7d
    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    #@7f
    sget-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    #@81
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@84
    move-result-object v0

    #@85
    const/4 v1, 0x1

    #@86
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@89
    move-result v1

    #@8a
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    #@8d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@90
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/widget/SwipeRefreshLayout;)I
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    #@2
    return v0
.end method

.method static synthetic access$100(Landroid/support/v4/widget/SwipeRefreshLayout;)I
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    #@2
    return v0
.end method

.method static synthetic access$1000(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/view/animation/Animation$AnimationListener;
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturnToStartPositionListener:Landroid/view/animation/Animation$AnimationListener;

    #@2
    return-object v0
.end method

.method static synthetic access$1100(Landroid/support/v4/widget/SwipeRefreshLayout;ILandroid/view/animation/Animation$AnimationListener;)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    #@3
    return-void
.end method

.method static synthetic access$1200(Landroid/support/v4/widget/SwipeRefreshLayout;)I
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

    #@2
    return v0
.end method

.method static synthetic access$1300(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/view/animation/Animation;
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mShrinkTrigger:Landroid/view/animation/Animation;

    #@2
    return-object v0
.end method

.method static synthetic access$1400(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/view/animation/Animation$AnimationListener;
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mShrinkAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    #@2
    return-object v0
.end method

.method static synthetic access$1500(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/view/animation/DecelerateInterpolator;
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    #@2
    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/view/View;
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    #@2
    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/widget/SwipeRefreshLayout;I)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    #@3
    return-void
.end method

.method static synthetic access$400(Landroid/support/v4/widget/SwipeRefreshLayout;)F
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFromPercentage:F

    #@2
    return v0
.end method

.method static synthetic access$402(Landroid/support/v4/widget/SwipeRefreshLayout;F)F
    .registers 2

    #@0
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFromPercentage:F

    #@2
    return p1
.end method

.method static synthetic access$500(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/SwipeProgressBar;
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgressBar:Landroid/support/v4/widget/SwipeProgressBar;

    #@2
    return-object v0
.end method

.method static synthetic access$700(Landroid/support/v4/widget/SwipeRefreshLayout;)I
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    #@2
    return v0
.end method

.method static synthetic access$702(Landroid/support/v4/widget/SwipeRefreshLayout;I)I
    .registers 2

    #@0
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    #@2
    return p1
.end method

.method static synthetic access$800(Landroid/support/v4/widget/SwipeRefreshLayout;)F
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrPercentage:F

    #@2
    return v0
.end method

.method static synthetic access$802(Landroid/support/v4/widget/SwipeRefreshLayout;F)F
    .registers 2

    #@0
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrPercentage:F

    #@2
    return p1
.end method

.method static synthetic access$902(Landroid/support/v4/widget/SwipeRefreshLayout;Z)Z
    .registers 2

    #@0
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    #@2
    return p1
.end method

.method private animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .registers 7

    #@0
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    #@2
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    #@4
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    #@7
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    #@9
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

    #@b
    int-to-long v2, v1

    #@c
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    #@f
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    #@11
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    #@14
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    #@16
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    #@18
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@1b
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    #@1d
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    #@1f
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    #@22
    return-void
.end method

.method private ensureTarget()V
    .registers 4

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    #@2
    if-nez v0, :cond_2d

    #@4
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x1

    #@9
    if-le v0, v1, :cond_19

    #@b
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isInEditMode()Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_19

    #@11
    new-instance v0, Ljava/lang/IllegalStateException;

    #@13
    const-string v1, "SwipeRefreshLayout can host only one direct child"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    :cond_19
    const/4 v0, 0x0

    #@1a
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    #@20
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    #@22
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@25
    move-result v0

    #@26
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    #@29
    move-result v1

    #@2a
    add-int/2addr v0, v1

    #@2b
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    #@2d
    :cond_2d
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDistanceToTriggerSync:F

    #@2f
    const/high16 v1, -0x40800000    # -1.0f

    #@31
    cmpl-float v0, v0, v1

    #@33
    if-nez v0, :cond_6b

    #@35
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getParent()Landroid/view/ViewParent;

    #@38
    move-result-object v0

    #@39
    if-eqz v0, :cond_6b

    #@3b
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getParent()Landroid/view/ViewParent;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Landroid/view/View;

    #@41
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@44
    move-result v0

    #@45
    if-lez v0, :cond_6b

    #@47
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getParent()Landroid/view/ViewParent;

    #@52
    move-result-object v0

    #@53
    check-cast v0, Landroid/view/View;

    #@55
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@58
    move-result v0

    #@59
    int-to-float v0, v0

    #@5a
    const v2, 0x3f19999a    # 0.6f

    #@5d
    mul-float/2addr v0, v2

    #@5e
    const/high16 v2, 0x42f00000    # 120.0f

    #@60
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    #@62
    mul-float/2addr v1, v2

    #@63
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    #@66
    move-result v0

    #@67
    float-to-int v0, v0

    #@68
    int-to-float v0, v0

    #@69
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDistanceToTriggerSync:F

    #@6b
    :cond_6b
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 5

    #@0
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    #@3
    move-result v0

    #@4
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@7
    move-result v1

    #@8
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    #@a
    if-ne v1, v2, :cond_1b

    #@c
    if-nez v0, :cond_1c

    #@e
    const/4 v0, 0x1

    #@f
    :goto_f
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    #@12
    move-result v1

    #@13
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mLastMotionY:F

    #@15
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    #@1b
    :cond_1b
    return-void

    #@1c
    :cond_1c
    const/4 v0, 0x0

    #@1d
    goto :goto_f
.end method

.method private setTargetOffsetTopAndBottom(I)V
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@5
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    #@7
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@a
    move-result v0

    #@b
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    #@d
    return-void
.end method

.method private setTriggerPercentage(F)V
    .registers 4

    #@0
    const/4 v1, 0x0

    #@1
    cmpl-float v0, p1, v1

    #@3
    if-nez v0, :cond_8

    #@5
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrPercentage:F

    #@7
    :goto_7
    return-void

    #@8
    :cond_8
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrPercentage:F

    #@a
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgressBar:Landroid/support/v4/widget/SwipeProgressBar;

    #@c
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SwipeProgressBar;->setTriggerPercentage(F)V

    #@f
    goto :goto_7
.end method

.method private startRefresh()V
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCancel:Ljava/lang/Runnable;

    #@2
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@5
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturnToStartPosition:Ljava/lang/Runnable;

    #@7
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@a
    const/4 v0, 0x1

    #@b
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    #@e
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    #@10
    invoke-interface {v0}, Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;->onRefresh()V

    #@13
    return-void
.end method

.method private updateContentOffsetTop(I)V
    .registers 5

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@5
    move-result v0

    #@6
    int-to-float v1, p1

    #@7
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDistanceToTriggerSync:F

    #@9
    cmpl-float v1, v1, v2

    #@b
    if-lez v1, :cond_16

    #@d
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDistanceToTriggerSync:F

    #@f
    float-to-int p1, v1

    #@10
    :cond_10
    :goto_10
    sub-int v0, p1, v0

    #@12
    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    #@15
    return-void

    #@16
    :cond_16
    if-gez p1, :cond_10

    #@18
    const/4 p1, 0x0

    #@19
    goto :goto_10
.end method

.method private updatePositionTimeout()V
    .registers 5

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCancel:Ljava/lang/Runnable;

    #@2
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@5
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCancel:Ljava/lang/Runnable;

    #@7
    const-wide/16 v2, 0x12c

    #@9
    invoke-virtual {p0, v0, v2, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    #@c
    return-void
.end method


# virtual methods
.method public canChildScrollUp()Z
    .registers 5

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@4
    const/16 v3, 0xe

    #@6
    if-ge v0, v3, :cond_3a

    #@8
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    #@a
    instance-of v0, v0, Landroid/widget/AbsListView;

    #@c
    if-eqz v0, :cond_30

    #@e
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    #@10
    check-cast v0, Landroid/widget/AbsListView;

    #@12
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    #@15
    move-result v3

    #@16
    if-lez v3, :cond_2e

    #@18
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    #@1b
    move-result v3

    #@1c
    if-gtz v3, :cond_42

    #@1e
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    #@25
    move-result v3

    #@26
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    #@29
    move-result v0

    #@2a
    if-ge v3, v0, :cond_2e

    #@2c
    move v0, v1

    #@2d
    :goto_2d
    return v0

    #@2e
    :cond_2e
    move v0, v2

    #@2f
    goto :goto_2d

    #@30
    :cond_30
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    #@32
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    #@35
    move-result v0

    #@36
    if-gtz v0, :cond_42

    #@38
    move v0, v2

    #@39
    goto :goto_2d

    #@3a
    :cond_3a
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    #@3c
    const/4 v1, -0x1

    #@3d
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    #@40
    move-result v0

    #@41
    goto :goto_2d

    #@42
    :cond_42
    move v0, v1

    #@43
    goto :goto_2d
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    #@0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    #@3
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgressBar:Landroid/support/v4/widget/SwipeProgressBar;

    #@5
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SwipeProgressBar;->draw(Landroid/graphics/Canvas;)V

    #@8
    return-void
.end method

.method public isRefreshing()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    #@2
    return v0
.end method

.method public onAttachedToWindow()V
    .registers 2

    #@0
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    #@3
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCancel:Ljava/lang/Runnable;

    #@5
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@8
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturnToStartPosition:Ljava/lang/Runnable;

    #@a
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@d
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    #@0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    #@3
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturnToStartPosition:Ljava/lang/Runnable;

    #@5
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@8
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCancel:Ljava/lang/Runnable;

    #@a
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@d
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    #@0
    const/4 v4, -0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    #@6
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    #@9
    move-result v1

    #@a
    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    #@c
    if-eqz v2, :cond_12

    #@e
    if-nez v1, :cond_12

    #@10
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    #@12
    :cond_12
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_22

    #@18
    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    #@1a
    if-nez v2, :cond_22

    #@1c
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_23

    #@22
    :cond_22
    :goto_22
    return v0

    #@23
    :cond_23
    packed-switch v1, :pswitch_data_78

    #@26
    :cond_26
    :goto_26
    :pswitch_26
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    #@28
    goto :goto_22

    #@29
    :pswitch_29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@2c
    move-result v1

    #@2d
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialMotionY:F

    #@2f
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mLastMotionY:F

    #@31
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@34
    move-result v1

    #@35
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    #@37
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    #@39
    iput v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrPercentage:F

    #@3b
    goto :goto_26

    #@3c
    :pswitch_3c
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    #@3e
    if-ne v1, v4, :cond_48

    #@40
    sget-object v1, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    #@42
    const-string v2, "Got ACTION_MOVE event but don\'t have an active pointer id."

    #@44
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    goto :goto_22

    #@48
    :cond_48
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    #@4a
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    #@4d
    move-result v1

    #@4e
    if-gez v1, :cond_58

    #@50
    sget-object v1, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    #@52
    const-string v2, "Got ACTION_MOVE event but have an invalid active pointer id."

    #@54
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    goto :goto_22

    #@58
    :cond_58
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    #@5b
    move-result v0

    #@5c
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialMotionY:F

    #@5e
    sub-float v1, v0, v1

    #@60
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    #@62
    int-to-float v2, v2

    #@63
    cmpl-float v1, v1, v2

    #@65
    if-lez v1, :cond_26

    #@67
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mLastMotionY:F

    #@69
    const/4 v0, 0x1

    #@6a
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    #@6c
    goto :goto_26

    #@6d
    :pswitch_6d
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    #@70
    goto :goto_26

    #@71
    :pswitch_71
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    #@73
    iput v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrPercentage:F

    #@75
    iput v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    #@77
    goto :goto_26

    #@78
    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_29
        :pswitch_71
        :pswitch_3c
        :pswitch_71
        :pswitch_26
        :pswitch_26
        :pswitch_6d
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 12

    #@0
    const/4 v4, 0x0

    #@1
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    #@4
    move-result v0

    #@5
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    #@8
    move-result v1

    #@9
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgressBar:Landroid/support/v4/widget/SwipeProgressBar;

    #@b
    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgressBarHeight:I

    #@d
    invoke-virtual {v2, v4, v4, v0, v3}, Landroid/support/v4/widget/SwipeProgressBar;->setBounds(IIII)V

    #@10
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    #@13
    move-result v2

    #@14
    if-nez v2, :cond_17

    #@16
    :goto_16
    return-void

    #@17
    :cond_17
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    #@1e
    move-result v3

    #@1f
    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    #@21
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    #@24
    move-result v5

    #@25
    add-int/2addr v4, v5

    #@26
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    #@29
    move-result v5

    #@2a
    sub-int/2addr v0, v5

    #@2b
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    #@2e
    move-result v5

    #@2f
    sub-int/2addr v0, v5

    #@30
    add-int/2addr v0, v3

    #@31
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    #@34
    move-result v5

    #@35
    sub-int/2addr v1, v5

    #@36
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    #@39
    move-result v5

    #@3a
    sub-int/2addr v1, v5

    #@3b
    add-int/2addr v1, v4

    #@3c
    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    #@3f
    goto :goto_16
.end method

.method public onMeasure(II)V
    .registers 8

    #@0
    const/high16 v4, 0x40000000    # 2.0f

    #@2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    #@5
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    #@8
    move-result v0

    #@9
    const/4 v1, 0x1

    #@a
    if-le v0, v1, :cond_1a

    #@c
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isInEditMode()Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_1a

    #@12
    new-instance v0, Ljava/lang/IllegalStateException;

    #@14
    const-string v1, "SwipeRefreshLayout can host only one direct child"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    :cond_1a
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    #@1d
    move-result v0

    #@1e
    if-lez v0, :cond_4c

    #@20
    const/4 v0, 0x0

    #@21
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    #@28
    move-result v1

    #@29
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    #@2c
    move-result v2

    #@2d
    sub-int/2addr v1, v2

    #@2e
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    #@31
    move-result v2

    #@32
    sub-int/2addr v1, v2

    #@33
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@36
    move-result v1

    #@37
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    #@3a
    move-result v2

    #@3b
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    #@3e
    move-result v3

    #@3f
    sub-int/2addr v2, v3

    #@40
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    #@43
    move-result v3

    #@44
    sub-int/2addr v2, v3

    #@45
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@48
    move-result v2

    #@49
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    #@4c
    :cond_4c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v0, 0x0

    #@3
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    #@6
    move-result v2

    #@7
    iget-boolean v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    #@9
    if-eqz v3, :cond_f

    #@b
    if-nez v2, :cond_f

    #@d
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    #@f
    :cond_f
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_1f

    #@15
    iget-boolean v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    #@17
    if-nez v3, :cond_1f

    #@19
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_20

    #@1f
    :cond_1f
    :goto_1f
    return v0

    #@20
    :cond_20
    packed-switch v2, :pswitch_data_ba

    #@23
    :cond_23
    :goto_23
    :pswitch_23
    move v0, v1

    #@24
    goto :goto_1f

    #@25
    :pswitch_25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@28
    move-result v2

    #@29
    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialMotionY:F

    #@2b
    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mLastMotionY:F

    #@2d
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@30
    move-result v2

    #@31
    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    #@33
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    #@35
    iput v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrPercentage:F

    #@37
    goto :goto_23

    #@38
    :pswitch_38
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    #@3a
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    #@3d
    move-result v2

    #@3e
    if-gez v2, :cond_48

    #@40
    sget-object v1, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    #@42
    const-string v2, "Got ACTION_MOVE event but have an invalid active pointer id."

    #@44
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    goto :goto_1f

    #@48
    :cond_48
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    #@4b
    move-result v0

    #@4c
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialMotionY:F

    #@4e
    sub-float v2, v0, v2

    #@50
    iget-boolean v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    #@52
    if-nez v3, :cond_5d

    #@54
    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    #@56
    int-to-float v3, v3

    #@57
    cmpl-float v3, v2, v3

    #@59
    if-lez v3, :cond_5d

    #@5b
    iput-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    #@5d
    :cond_5d
    iget-boolean v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    #@5f
    if-eqz v3, :cond_23

    #@61
    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDistanceToTriggerSync:F

    #@63
    cmpl-float v3, v2, v3

    #@65
    if-lez v3, :cond_6d

    #@67
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startRefresh()V

    #@6a
    :goto_6a
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mLastMotionY:F

    #@6c
    goto :goto_23

    #@6d
    :cond_6d
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    #@6f
    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDistanceToTriggerSync:F

    #@71
    div-float v4, v2, v4

    #@73
    invoke-virtual {v3, v4}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    #@76
    move-result v3

    #@77
    invoke-direct {p0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTriggerPercentage(F)V

    #@7a
    float-to-int v2, v2

    #@7b
    invoke-direct {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->updateContentOffsetTop(I)V

    #@7e
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mLastMotionY:F

    #@80
    cmpl-float v2, v2, v0

    #@82
    if-lez v2, :cond_96

    #@84
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    #@86
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    #@89
    move-result v2

    #@8a
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    #@8d
    move-result v3

    #@8e
    if-ne v2, v3, :cond_96

    #@90
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCancel:Ljava/lang/Runnable;

    #@92
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@95
    goto :goto_6a

    #@96
    :cond_96
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->updatePositionTimeout()V

    #@99
    goto :goto_6a

    #@9a
    :pswitch_9a
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    #@9d
    move-result v0

    #@9e
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    #@a1
    move-result v2

    #@a2
    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mLastMotionY:F

    #@a4
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@a7
    move-result v0

    #@a8
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    #@aa
    goto/16 :goto_23

    #@ac
    :pswitch_ac
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    #@af
    goto/16 :goto_23

    #@b1
    :pswitch_b1
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    #@b3
    iput v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrPercentage:F

    #@b5
    const/4 v1, -0x1

    #@b6
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    #@b8
    goto/16 :goto_1f

    #@ba
    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_25
        :pswitch_b1
        :pswitch_38
        :pswitch_b1
        :pswitch_23
        :pswitch_9a
        :pswitch_ac
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2

    #@0
    return-void
.end method

.method public setColorScheme(IIII)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources(IIII)V

    #@3
    return-void
.end method

.method public setColorSchemeColors(IIII)V
    .registers 6

    #@0
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    #@3
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgressBar:Landroid/support/v4/widget/SwipeProgressBar;

    #@5
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/widget/SwipeProgressBar;->setColorScheme(IIII)V

    #@8
    return-void
.end method

.method public setColorSchemeResources(IIII)V
    .registers 9

    #@0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    #@7
    move-result v1

    #@8
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    #@b
    move-result v2

    #@c
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColor(I)I

    #@f
    move-result v3

    #@10
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getColor(I)I

    #@13
    move-result v0

    #@14
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors(IIII)V

    #@17
    return-void
.end method

.method public setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V
    .registers 2

    #@0
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    #@2
    return-void
.end method

.method public setRefreshing(Z)V
    .registers 3

    #@0
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    #@2
    if-eq v0, p1, :cond_15

    #@4
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    #@7
    const/4 v0, 0x0

    #@8
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrPercentage:F

    #@a
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    #@c
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    #@e
    if-eqz v0, :cond_16

    #@10
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgressBar:Landroid/support/v4/widget/SwipeProgressBar;

    #@12
    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeProgressBar;->start()V

    #@15
    :cond_15
    :goto_15
    return-void

    #@16
    :cond_16
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgressBar:Landroid/support/v4/widget/SwipeProgressBar;

    #@18
    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeProgressBar;->stop()V

    #@1b
    goto :goto_15
.end method
