.class public Landroid/support/v4/widget/DrawerLayout;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;,
        Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;,
        Landroid/support/v4/widget/DrawerLayout$DrawerListener;,
        Landroid/support/v4/widget/DrawerLayout$EdgeGravity;,
        Landroid/support/v4/widget/DrawerLayout$LayoutParams;,
        Landroid/support/v4/widget/DrawerLayout$LockMode;,
        Landroid/support/v4/widget/DrawerLayout$SavedState;,
        Landroid/support/v4/widget/DrawerLayout$SimpleDrawerListener;,
        Landroid/support/v4/widget/DrawerLayout$State;,
        Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;
    }
.end annotation


# static fields
.field private static final ALLOW_EDGE_LOCK:Z = false

.field private static final CHILDREN_DISALLOW_INTERCEPT:Z = true

.field private static final DEFAULT_SCRIM_COLOR:I = -0x67000000

.field private static final LAYOUT_ATTRS:[I

.field public static final LOCK_MODE_LOCKED_CLOSED:I = 0x1

.field public static final LOCK_MODE_LOCKED_OPEN:I = 0x2

.field public static final LOCK_MODE_UNLOCKED:I = 0x0

.field private static final MIN_DRAWER_MARGIN:I = 0x40

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final PEEK_DELAY:I = 0xa0

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DrawerLayout"

.field private static final TOUCH_SLOP_SENSITIVITY:F = 1.0f


# instance fields
.field private final mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

.field private mChildrenCanceledTouch:Z

.field private mDisallowInterceptRequested:Z

.field private mDrawerState:I

.field private mFirstLayout:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private final mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

.field private final mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

.field private mLockModeLeft:I

.field private mLockModeRight:I

.field private mMinDrawerMargin:I

.field private final mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

.field private final mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private mScrimColor:I

.field private mScrimOpacity:F

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mShadowLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowRight:Landroid/graphics/drawable/Drawable;

.field private mTitleLeft:Ljava/lang/CharSequence;

.field private mTitleRight:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [I

    #@3
    const/4 v1, 0x0

    #@4
    const v2, 0x10100b3

    #@7
    aput v2, v0, v1

    #@9
    sput-object v0, Landroid/support/v4/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    #@b
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    #@0
    const/high16 v4, 0x3f800000    # 1.0f

    #@2
    const/4 v3, 0x1

    #@3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    #@8
    invoke-direct {v0, p0}, Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    #@b
    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    #@d
    const/high16 v0, -0x67000000

    #@f
    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    #@11
    new-instance v0, Landroid/graphics/Paint;

    #@13
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@16
    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    #@18
    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    #@1a
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@21
    move-result-object v0

    #@22
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    #@24
    const/high16 v1, 0x42800000    # 64.0f

    #@26
    mul-float/2addr v1, v0

    #@27
    const/high16 v2, 0x3f000000    # 0.5f

    #@29
    add-float/2addr v1, v2

    #@2a
    float-to-int v1, v1

    #@2b
    iput v1, p0, Landroid/support/v4/widget/DrawerLayout;->mMinDrawerMargin:I

    #@2d
    const/high16 v1, 0x43c80000    # 400.0f

    #@2f
    mul-float/2addr v0, v1

    #@30
    new-instance v1, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    #@32
    const/4 v2, 0x3

    #@33
    invoke-direct {v1, p0, v2}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    #@36
    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    #@38
    new-instance v1, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    #@3a
    const/4 v2, 0x5

    #@3b
    invoke-direct {v1, p0, v2}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    #@3e
    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    #@40
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    #@42
    invoke-static {p0, v4, v1}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    #@45
    move-result-object v1

    #@46
    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@48
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@4a
    invoke-virtual {v1, v3}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    #@4d
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@4f
    invoke-virtual {v1, v0}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    #@52
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    #@54
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@56
    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroid/support/v4/widget/ViewDragHelper;)V

    #@59
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    #@5b
    invoke-static {p0, v4, v1}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    #@5e
    move-result-object v1

    #@5f
    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@61
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@63
    const/4 v2, 0x2

    #@64
    invoke-virtual {v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    #@67
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@69
    invoke-virtual {v1, v0}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    #@6c
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    #@6e
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@70
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroid/support/v4/widget/ViewDragHelper;)V

    #@73
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->setFocusableInTouchMode(Z)V

    #@76
    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@79
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;

    #@7b
    invoke-direct {v0, p0}, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    #@7e
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    #@81
    const/4 v0, 0x0

    #@82
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewGroupCompat;->setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V

    #@85
    return-void
.end method

.method static synthetic access$100()[I
    .registers 1

    #@0
    sget-object v0, Landroid/support/v4/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    #@2
    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v4/widget/DrawerLayout;)Landroid/view/View;
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic access$300(Landroid/view/View;)Z
    .registers 2

    #@0
    invoke-static {p0}, Landroid/support/v4/widget/DrawerLayout;->includeChildForAccessibilitiy(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private findVisibleDrawer()Landroid/view/View;
    .registers 5

    #@0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    #@3
    move-result v2

    #@4
    const/4 v0, 0x0

    #@5
    move v1, v0

    #@6
    :goto_6
    if-ge v1, v2, :cond_1d

    #@8
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_19

    #@12
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_19

    #@18
    :goto_18
    return-object v0

    #@19
    :cond_19
    add-int/lit8 v0, v1, 0x1

    #@1b
    move v1, v0

    #@1c
    goto :goto_6

    #@1d
    :cond_1d
    const/4 v0, 0x0

    #@1e
    goto :goto_18
.end method

.method static gravityToString(I)Ljava/lang/String;
    .registers 3

    #@0
    and-int/lit8 v0, p0, 0x3

    #@2
    const/4 v1, 0x3

    #@3
    if-ne v0, v1, :cond_8

    #@5
    const-string v0, "LEFT"

    #@7
    :goto_7
    return-object v0

    #@8
    :cond_8
    and-int/lit8 v0, p0, 0x5

    #@a
    const/4 v1, 0x5

    #@b
    if-ne v0, v1, :cond_10

    #@d
    const-string v0, "RIGHT"

    #@f
    goto :goto_7

    #@10
    :cond_10
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    goto :goto_7
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    #@4
    move-result-object v1

    #@5
    if-eqz v1, :cond_f

    #@7
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@a
    move-result v1

    #@b
    const/4 v2, -0x1

    #@c
    if-ne v1, v2, :cond_f

    #@e
    const/4 v0, 0x1

    #@f
    :cond_f
    return v0
.end method

.method private hasPeekingDrawer()Z
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    #@4
    move-result v3

    #@5
    move v2, v1

    #@6
    :goto_6
    if-ge v2, v3, :cond_1c

    #@8
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@12
    iget-boolean v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    #@14
    if-eqz v0, :cond_18

    #@16
    const/4 v0, 0x1

    #@17
    :goto_17
    return v0

    #@18
    :cond_18
    add-int/lit8 v0, v2, 0x1

    #@1a
    move v2, v0

    #@1b
    goto :goto_6

    #@1c
    :cond_1c
    move v0, v1

    #@1d
    goto :goto_17
.end method

.method private hasVisibleDrawer()Z
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method

.method private static includeChildForAccessibilitiy(Landroid/view/View;)Z
    .registers 3

    #@0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x4

    #@5
    if-eq v0, v1, :cond_10

    #@7
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    #@a
    move-result v0

    #@b
    const/4 v1, 0x2

    #@c
    if-eq v0, v1, :cond_10

    #@e
    const/4 v0, 0x1

    #@f
    :goto_f
    return v0

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    goto :goto_f
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    #@0
    if-gtz p2, :cond_a

    #@2
    if-gez p2, :cond_17

    #@4
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    #@7
    move-result v0

    #@8
    if-lez v0, :cond_17

    #@a
    :cond_a
    const/4 v0, 0x4

    #@b
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@e
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    #@10
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    #@13
    :goto_13
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@16
    return-void

    #@17
    :cond_17
    const/4 v0, 0x1

    #@18
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@1b
    goto :goto_13
.end method

.method cancelChildViewTouch()V
    .registers 9

    #@0
    const/4 v7, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    #@4
    if-nez v0, :cond_27

    #@6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@9
    move-result-wide v0

    #@a
    const/4 v4, 0x3

    #@b
    move-wide v2, v0

    #@c
    move v6, v5

    #@d
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    #@14
    move-result v1

    #@15
    :goto_15
    if-ge v7, v1, :cond_21

    #@17
    invoke-virtual {p0, v7}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@1e
    add-int/lit8 v7, v7, 0x1

    #@20
    goto :goto_15

    #@21
    :cond_21
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    #@24
    const/4 v0, 0x1

    #@25
    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    #@27
    :cond_27
    return-void
.end method

.method checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
    .registers 4

    #@0
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    and-int/2addr v0, p2

    #@5
    if-ne v0, p2, :cond_9

    #@7
    const/4 v0, 0x1

    #@8
    :goto_8
    return v0

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    goto :goto_8
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    #@0
    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    goto :goto_b
.end method

.method public closeDrawer(I)V
    .registers 5

    #@0
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_23

    #@6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string v2, "No drawer view found with gravity "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    :cond_23
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    #@26
    return-void
.end method

.method public closeDrawer(Landroid/view/View;)V
    .registers 5

    #@0
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_25

    #@6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string v2, "View "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string v2, " is not a sliding drawer"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    :cond_25
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    #@27
    if-eqz v0, :cond_39

    #@29
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@2f
    const/4 v1, 0x0

    #@30
    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@32
    const/4 v1, 0x0

    #@33
    iput-boolean v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    #@35
    :goto_35
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    #@38
    return-void

    #@39
    :cond_39
    const/4 v0, 0x3

    #@3a
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@3d
    move-result v0

    #@3e
    if-eqz v0, :cond_4f

    #@40
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@42
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@45
    move-result v1

    #@46
    neg-int v1, v1

    #@47
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@4a
    move-result v2

    #@4b
    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    #@4e
    goto :goto_35

    #@4f
    :cond_4f
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@51
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    #@54
    move-result v1

    #@55
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@58
    move-result v2

    #@59
    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    #@5c
    goto :goto_35
.end method

.method public closeDrawers()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    #@4
    return-void
.end method

.method closeDrawers(Z)V
    .registers 11

    #@0
    const/4 v3, 0x0

    #@1
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    #@4
    move-result v4

    #@5
    move v2, v3

    #@6
    move v1, v3

    #@7
    :goto_7
    if-ge v2, v4, :cond_50

    #@9
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@c
    move-result-object v5

    #@d
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@13
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@16
    move-result v6

    #@17
    if-eqz v6, :cond_60

    #@19
    if-eqz p1, :cond_25

    #@1b
    iget-boolean v6, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    #@1d
    if-nez v6, :cond_25

    #@1f
    move v0, v1

    #@20
    :goto_20
    add-int/lit8 v1, v2, 0x1

    #@22
    move v2, v1

    #@23
    move v1, v0

    #@24
    goto :goto_7

    #@25
    :cond_25
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    #@28
    move-result v6

    #@29
    const/4 v7, 0x3

    #@2a
    invoke-virtual {p0, v5, v7}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@2d
    move-result v7

    #@2e
    if-eqz v7, :cond_40

    #@30
    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@32
    neg-int v6, v6

    #@33
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    #@36
    move-result v8

    #@37
    invoke-virtual {v7, v5, v6, v8}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    #@3a
    move-result v5

    #@3b
    or-int/2addr v1, v5

    #@3c
    :goto_3c
    iput-boolean v3, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    #@3e
    move v0, v1

    #@3f
    goto :goto_20

    #@40
    :cond_40
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@42
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    #@45
    move-result v7

    #@46
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    #@49
    move-result v8

    #@4a
    invoke-virtual {v6, v5, v7, v8}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    #@4d
    move-result v5

    #@4e
    or-int/2addr v1, v5

    #@4f
    goto :goto_3c

    #@50
    :cond_50
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    #@52
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    #@55
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    #@57
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    #@5a
    if-eqz v1, :cond_5f

    #@5c
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    #@5f
    :cond_5f
    return-void

    #@60
    :cond_60
    move v0, v1

    #@61
    goto :goto_20
.end method

.method public computeScroll()V
    .registers 6

    #@0
    const/4 v4, 0x1

    #@1
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    #@4
    move-result v3

    #@5
    const/4 v1, 0x0

    #@6
    const/4 v0, 0x0

    #@7
    move v2, v1

    #@8
    move v1, v0

    #@9
    :goto_9
    if-ge v1, v3, :cond_1f

    #@b
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@15
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@17
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    #@1a
    move-result v2

    #@1b
    add-int/lit8 v0, v1, 0x1

    #@1d
    move v1, v0

    #@1e
    goto :goto_9

    #@1f
    :cond_1f
    iput v2, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    #@21
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@23
    invoke-virtual {v0, v4}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    #@26
    move-result v0

    #@27
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@29
    invoke-virtual {v1, v4}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    #@2c
    move-result v1

    #@2d
    or-int/2addr v0, v1

    #@2e
    if-eqz v0, :cond_33

    #@30
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@33
    :cond_33
    return-void
.end method

.method dispatchOnDrawerClosed(Landroid/view/View;)V
    .registers 5

    #@0
    const/4 v2, 0x0

    #@1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@7
    iget-boolean v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    #@9
    if-eqz v1, :cond_35

    #@b
    iput-boolean v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    #@d
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    #@f
    if-eqz v0, :cond_16

    #@11
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    #@13
    invoke-interface {v0, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerClosed(Landroid/view/View;)V

    #@16
    :cond_16
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@19
    move-result-object v0

    #@1a
    if-eqz v0, :cond_20

    #@1c
    const/4 v1, 0x1

    #@1d
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@20
    :cond_20
    const/4 v0, 0x4

    #@21
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@24
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_35

    #@2a
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getRootView()Landroid/view/View;

    #@2d
    move-result-object v0

    #@2e
    if-eqz v0, :cond_35

    #@30
    const/16 v1, 0x20

    #@32
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    #@35
    :cond_35
    return-void
.end method

.method dispatchOnDrawerOpened(Landroid/view/View;)V
    .registers 5

    #@0
    const/4 v2, 0x1

    #@1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@7
    iget-boolean v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    #@9
    if-nez v1, :cond_2c

    #@b
    iput-boolean v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    #@d
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    #@f
    if-eqz v0, :cond_16

    #@11
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    #@13
    invoke-interface {v0, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerOpened(Landroid/view/View;)V

    #@16
    :cond_16
    const/4 v0, 0x0

    #@17
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@1a
    move-result-object v0

    #@1b
    if-eqz v0, :cond_21

    #@1d
    const/4 v1, 0x4

    #@1e
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@21
    :cond_21
    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@24
    const/16 v0, 0x20

    #@26
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->sendAccessibilityEvent(I)V

    #@29
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    #@2c
    :cond_2c
    return-void
.end method

.method dispatchOnDrawerSlide(Landroid/view/View;F)V
    .registers 4

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    #@6
    invoke-interface {v0, p1, p2}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerSlide(Landroid/view/View;F)V

    #@9
    :cond_9
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 14

    #@0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    #@3
    move-result v4

    #@4
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    #@7
    move-result v5

    #@8
    const/4 v2, 0x0

    #@9
    const/4 v3, 0x0

    #@a
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    #@d
    move-result v0

    #@e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@11
    move-result v6

    #@12
    if-eqz v5, :cond_61

    #@14
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    #@17
    move-result v7

    #@18
    const/4 v1, 0x0

    #@19
    move v2, v3

    #@1a
    move v3, v1

    #@1b
    :goto_1b
    if-ge v3, v7, :cond_59

    #@1d
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@20
    move-result-object v1

    #@21
    if-eq v1, p2, :cond_4e

    #@23
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    #@26
    move-result v8

    #@27
    if-nez v8, :cond_4e

    #@29
    invoke-static {v1}, Landroid/support/v4/widget/DrawerLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    #@2c
    move-result v8

    #@2d
    if-eqz v8, :cond_4e

    #@2f
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@32
    move-result v8

    #@33
    if-eqz v8, :cond_4e

    #@35
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    #@38
    move-result v8

    #@39
    if-ge v8, v4, :cond_41

    #@3b
    move v1, v2

    #@3c
    :cond_3c
    :goto_3c
    add-int/lit8 v2, v3, 0x1

    #@3e
    move v3, v2

    #@3f
    move v2, v1

    #@40
    goto :goto_1b

    #@41
    :cond_41
    const/4 v8, 0x3

    #@42
    invoke-virtual {p0, v1, v8}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@45
    move-result v8

    #@46
    if-eqz v8, :cond_50

    #@48
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    #@4b
    move-result v1

    #@4c
    if-gt v1, v2, :cond_3c

    #@4e
    :cond_4e
    move v1, v2

    #@4f
    goto :goto_3c

    #@50
    :cond_50
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    #@53
    move-result v1

    #@54
    if-ge v1, v0, :cond_4e

    #@56
    move v0, v1

    #@57
    move v1, v2

    #@58
    goto :goto_3c

    #@59
    :cond_59
    const/4 v1, 0x0

    #@5a
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    #@5d
    move-result v3

    #@5e
    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    #@61
    :cond_61
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    #@64
    move-result v7

    #@65
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@68
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    #@6a
    const/4 v3, 0x0

    #@6b
    cmpl-float v1, v1, v3

    #@6d
    if-lez v1, :cond_9a

    #@6f
    if-eqz v5, :cond_9a

    #@71
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    #@73
    const/high16 v3, -0x1000000

    #@75
    and-int/2addr v1, v3

    #@76
    ushr-int/lit8 v1, v1, 0x18

    #@78
    int-to-float v1, v1

    #@79
    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    #@7b
    mul-float/2addr v1, v3

    #@7c
    float-to-int v1, v1

    #@7d
    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    #@7f
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    #@81
    shl-int/lit8 v1, v1, 0x18

    #@83
    const v5, 0xffffff

    #@86
    and-int/2addr v3, v5

    #@87
    or-int/2addr v1, v3

    #@88
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    #@8b
    int-to-float v1, v2

    #@8c
    const/4 v2, 0x0

    #@8d
    int-to-float v3, v0

    #@8e
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    #@91
    move-result v0

    #@92
    int-to-float v4, v0

    #@93
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    #@95
    move-object v0, p1

    #@96
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@99
    :cond_99
    :goto_99
    return v7

    #@9a
    :cond_9a
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    #@9c
    if-eqz v0, :cond_e1

    #@9e
    const/4 v0, 0x3

    #@9f
    invoke-virtual {p0, p2, v0}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@a2
    move-result v0

    #@a3
    if-eqz v0, :cond_e1

    #@a5
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    #@a7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@aa
    move-result v0

    #@ab
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    #@ae
    move-result v1

    #@af
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@b1
    invoke-virtual {v2}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    #@b4
    move-result v2

    #@b5
    const/4 v3, 0x0

    #@b6
    int-to-float v4, v1

    #@b7
    int-to-float v2, v2

    #@b8
    div-float v2, v4, v2

    #@ba
    const/high16 v4, 0x3f800000    # 1.0f

    #@bc
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    #@bf
    move-result v2

    #@c0
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    #@c3
    move-result v2

    #@c4
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    #@c6
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    #@c9
    move-result v4

    #@ca
    add-int/2addr v0, v1

    #@cb
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    #@ce
    move-result v5

    #@cf
    invoke-virtual {v3, v1, v4, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@d2
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    #@d4
    const/high16 v1, 0x437f0000    # 255.0f

    #@d6
    mul-float/2addr v1, v2

    #@d7
    float-to-int v1, v1

    #@d8
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@db
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    #@dd
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@e0
    goto :goto_99

    #@e1
    :cond_e1
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    #@e3
    if-eqz v0, :cond_99

    #@e5
    const/4 v0, 0x5

    #@e6
    invoke-virtual {p0, p2, v0}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@e9
    move-result v0

    #@ea
    if-eqz v0, :cond_99

    #@ec
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    #@ee
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@f1
    move-result v0

    #@f2
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    #@f5
    move-result v1

    #@f6
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    #@f9
    move-result v2

    #@fa
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@fc
    invoke-virtual {v3}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    #@ff
    move-result v3

    #@100
    const/4 v4, 0x0

    #@101
    sub-int/2addr v2, v1

    #@102
    int-to-float v2, v2

    #@103
    int-to-float v3, v3

    #@104
    div-float/2addr v2, v3

    #@105
    const/high16 v3, 0x3f800000    # 1.0f

    #@107
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    #@10a
    move-result v2

    #@10b
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    #@10e
    move-result v2

    #@10f
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    #@111
    sub-int v0, v1, v0

    #@113
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    #@116
    move-result v4

    #@117
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    #@11a
    move-result v5

    #@11b
    invoke-virtual {v3, v0, v4, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@11e
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    #@120
    const/high16 v1, 0x437f0000    # 255.0f

    #@122
    mul-float/2addr v1, v2

    #@123
    float-to-int v1, v1

    #@124
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@127
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    #@129
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@12c
    goto/16 :goto_99
.end method

.method findDrawerWithGravity(I)Landroid/view/View;
    .registers 8

    #@0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    #@7
    move-result v2

    #@8
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    #@b
    move-result v3

    #@c
    const/4 v0, 0x0

    #@d
    move v1, v0

    #@e
    :goto_e
    if-ge v1, v3, :cond_23

    #@10
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    #@17
    move-result v4

    #@18
    and-int/lit8 v4, v4, 0x7

    #@1a
    and-int/lit8 v5, v2, 0x7

    #@1c
    if-ne v4, v5, :cond_1f

    #@1e
    :goto_1e
    return-object v0

    #@1f
    :cond_1f
    add-int/lit8 v0, v1, 0x1

    #@21
    move v1, v0

    #@22
    goto :goto_e

    #@23
    :cond_23
    const/4 v0, 0x0

    #@24
    goto :goto_1e
.end method

.method findOpenDrawer()Landroid/view/View;
    .registers 5

    #@0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    #@3
    move-result v3

    #@4
    const/4 v0, 0x0

    #@5
    move v2, v0

    #@6
    :goto_6
    if-ge v2, v3, :cond_1c

    #@8
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@12
    iget-boolean v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    #@14
    if-eqz v0, :cond_18

    #@16
    move-object v0, v1

    #@17
    :goto_17
    return-object v0

    #@18
    :cond_18
    add-int/lit8 v0, v2, 0x1

    #@1a
    move v2, v0

    #@1b
    goto :goto_6

    #@1c
    :cond_1c
    const/4 v0, 0x0

    #@1d
    goto :goto_17
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    #@0
    const/4 v1, -0x1

    #@1
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@3
    invoke-direct {v0, v1, v1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(II)V

    #@6
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    #@0
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@2
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    #@0
    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@2
    if-eqz v0, :cond_c

    #@4
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@6
    check-cast p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@8
    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)V

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@e
    if-eqz v0, :cond_18

    #@10
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@12
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@14
    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@17
    goto :goto_b

    #@18
    :cond_18
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@1a
    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@1d
    goto :goto_b
.end method

.method public getDrawerLockMode(I)I
    .registers 4

    #@0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x3

    #@9
    if-ne v0, v1, :cond_e

    #@b
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    #@d
    :goto_d
    return v0

    #@e
    :cond_e
    const/4 v1, 0x5

    #@f
    if-ne v0, v1, :cond_14

    #@11
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    #@13
    goto :goto_d

    #@14
    :cond_14
    const/4 v0, 0x0

    #@15
    goto :goto_d
.end method

.method public getDrawerLockMode(Landroid/view/View;)I
    .registers 4

    #@0
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x3

    #@5
    if-ne v0, v1, :cond_a

    #@7
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    const/4 v1, 0x5

    #@b
    if-ne v0, v1, :cond_10

    #@d
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    #@f
    goto :goto_9

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    goto :goto_9
.end method

.method public getDrawerTitle(I)Ljava/lang/CharSequence;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    #@0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x3

    #@9
    if-ne v0, v1, :cond_e

    #@b
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    #@d
    :goto_d
    return-object v0

    #@e
    :cond_e
    const/4 v1, 0x5

    #@f
    if-ne v0, v1, :cond_14

    #@11
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    #@13
    goto :goto_d

    #@14
    :cond_14
    const/4 v0, 0x0

    #@15
    goto :goto_d
.end method

.method getDrawerViewAbsoluteGravity(Landroid/view/View;)I
    .registers 4

    #@0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@6
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    #@8
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@b
    move-result v1

    #@c
    invoke-static {v0, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method getDrawerViewOffset(Landroid/view/View;)F
    .registers 3

    #@0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@6
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@8
    return v0
.end method

.method isContentView(Landroid/view/View;)Z
    .registers 3

    #@0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@6
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    #@8
    if-nez v0, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    goto :goto_b
.end method

.method public isDrawerOpen(I)Z
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_b

    #@6
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    #@9
    move-result v0

    #@a
    :goto_a
    return v0

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    goto :goto_a
.end method

.method public isDrawerOpen(Landroid/view/View;)Z
    .registers 5

    #@0
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_25

    #@6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string v2, "View "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string v2, " is not a drawer"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    :cond_25
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@2b
    iget-boolean v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    #@2d
    return v0
.end method

.method isDrawerView(Landroid/view/View;)Z
    .registers 4

    #@0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@6
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    #@8
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@b
    move-result v1

    #@c
    invoke-static {v0, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    #@f
    move-result v0

    #@10
    and-int/lit8 v0, v0, 0x7

    #@12
    if-eqz v0, :cond_16

    #@14
    const/4 v0, 0x1

    #@15
    :goto_15
    return v0

    #@16
    :cond_16
    const/4 v0, 0x0

    #@17
    goto :goto_15
.end method

.method public isDrawerVisible(I)Z
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_b

    #@6
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    #@9
    move-result v0

    #@a
    :goto_a
    return v0

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    goto :goto_a
.end method

.method public isDrawerVisible(Landroid/view/View;)Z
    .registers 5

    #@0
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_25

    #@6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string v2, "View "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string v2, " is not a drawer"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    :cond_25
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@2b
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@2d
    const/4 v1, 0x0

    #@2e
    cmpl-float v0, v0, v1

    #@30
    if-lez v0, :cond_34

    #@32
    const/4 v0, 0x1

    #@33
    :goto_33
    return v0

    #@34
    :cond_34
    const/4 v0, 0x0

    #@35
    goto :goto_33
.end method

.method moveDrawerToOffset(Landroid/view/View;F)V
    .registers 6

    #@0
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    #@3
    move-result v0

    #@4
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@7
    move-result v1

    #@8
    int-to-float v2, v1

    #@9
    mul-float/2addr v0, v2

    #@a
    float-to-int v0, v0

    #@b
    int-to-float v1, v1

    #@c
    mul-float/2addr v1, p2

    #@d
    float-to-int v1, v1

    #@e
    sub-int v0, v1, v0

    #@10
    const/4 v1, 0x3

    #@11
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1e

    #@17
    :goto_17
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@1a
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    #@1d
    return-void

    #@1e
    :cond_1e
    neg-int v0, v0

    #@1f
    goto :goto_17
.end method

.method protected onAttachedToWindow()V
    .registers 2

    #@0
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    #@3
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    #@6
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    #@0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    #@3
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    #@6
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    #@5
    move-result v2

    #@6
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@8
    invoke-virtual {v3, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    #@b
    move-result v3

    #@c
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@e
    invoke-virtual {v4, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    #@11
    move-result v4

    #@12
    packed-switch v2, :pswitch_data_70

    #@15
    move v2, v0

    #@16
    :goto_16
    or-int/2addr v3, v4

    #@17
    if-nez v3, :cond_25

    #@19
    if-nez v2, :cond_25

    #@1b
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->hasPeekingDrawer()Z

    #@1e
    move-result v2

    #@1f
    if-nez v2, :cond_25

    #@21
    iget-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    #@23
    if-eqz v2, :cond_26

    #@25
    :cond_25
    move v0, v1

    #@26
    :cond_26
    return v0

    #@27
    :pswitch_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@2a
    move-result v2

    #@2b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@2e
    move-result v5

    #@2f
    iput v2, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    #@31
    iput v5, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    #@33
    iget v6, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    #@35
    const/4 v7, 0x0

    #@36
    cmpl-float v6, v6, v7

    #@38
    if-lez v6, :cond_6e

    #@3a
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@3c
    float-to-int v2, v2

    #@3d
    float-to-int v5, v5

    #@3e
    invoke-virtual {v6, v2, v5}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    #@45
    move-result v2

    #@46
    if-eqz v2, :cond_6e

    #@48
    move v2, v1

    #@49
    :goto_49
    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    #@4b
    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    #@4d
    goto :goto_16

    #@4e
    :pswitch_4e
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@50
    const/4 v5, 0x3

    #@51
    invoke-virtual {v2, v5}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(I)Z

    #@54
    move-result v2

    #@55
    if-eqz v2, :cond_6c

    #@57
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    #@59
    invoke-virtual {v2}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    #@5c
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    #@5e
    invoke-virtual {v2}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    #@61
    move v2, v0

    #@62
    goto :goto_16

    #@63
    :pswitch_63
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    #@66
    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    #@68
    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    #@6a
    move v2, v0

    #@6b
    goto :goto_16

    #@6c
    :cond_6c
    move v2, v0

    #@6d
    goto :goto_16

    #@6e
    :cond_6e
    move v2, v0

    #@6f
    goto :goto_49

    #@70
    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_27
        :pswitch_63
        :pswitch_4e
        :pswitch_63
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    #@0
    const/4 v0, 0x4

    #@1
    if-ne p1, v0, :cond_e

    #@3
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->hasVisibleDrawer()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_e

    #@9
    invoke-static {p2}, Landroid/support/v4/view/KeyEventCompat;->startTracking(Landroid/view/KeyEvent;)V

    #@c
    const/4 v0, 0x1

    #@d
    :goto_d
    return v0

    #@e
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@11
    move-result v0

    #@12
    goto :goto_d
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5

    #@0
    const/4 v0, 0x4

    #@1
    if-ne p1, v0, :cond_18

    #@3
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_12

    #@9
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_12

    #@f
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    #@12
    :cond_12
    if-eqz v0, :cond_16

    #@14
    const/4 v0, 0x1

    #@15
    :goto_15
    return v0

    #@16
    :cond_16
    const/4 v0, 0x0

    #@17
    goto :goto_15

    #@18
    :cond_18
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@1b
    move-result v0

    #@1c
    goto :goto_15
.end method

.method protected onLayout(ZIIII)V
    .registers 20

    #@0
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    #@3
    sub-int v6, p4, p2

    #@5
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    #@8
    move-result v7

    #@9
    const/4 v0, 0x0

    #@a
    move v5, v0

    #@b
    :goto_b
    if-ge v5, v7, :cond_cc

    #@d
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v8

    #@11
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    #@14
    move-result v0

    #@15
    const/16 v1, 0x8

    #@17
    if-ne v0, v1, :cond_1d

    #@19
    :cond_19
    :goto_19
    add-int/lit8 v0, v5, 0x1

    #@1b
    move v5, v0

    #@1c
    goto :goto_b

    #@1d
    :cond_1d
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@23
    invoke-virtual {p0, v8}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_3f

    #@29
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    #@2b
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    #@2d
    iget v3, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    #@2f
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    #@32
    move-result v4

    #@33
    add-int/2addr v3, v4

    #@34
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    #@36
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    #@39
    move-result v4

    #@3a
    add-int/2addr v0, v4

    #@3b
    invoke-virtual {v8, v1, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    #@3e
    goto :goto_19

    #@3f
    :cond_3f
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    #@42
    move-result v9

    #@43
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    #@46
    move-result v10

    #@47
    const/4 v1, 0x3

    #@48
    invoke-virtual {p0, v8, v1}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@4b
    move-result v1

    #@4c
    if-eqz v1, :cond_88

    #@4e
    neg-int v1, v9

    #@4f
    int-to-float v2, v9

    #@50
    iget v3, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@52
    mul-float/2addr v2, v3

    #@53
    float-to-int v2, v2

    #@54
    add-int/2addr v1, v2

    #@55
    add-int v2, v9, v1

    #@57
    int-to-float v2, v2

    #@58
    int-to-float v3, v9

    #@59
    div-float/2addr v2, v3

    #@5a
    :goto_5a
    iget v3, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@5c
    cmpl-float v3, v2, v3

    #@5e
    if-eqz v3, :cond_95

    #@60
    const/4 v3, 0x1

    #@61
    :goto_61
    iget v4, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    #@63
    and-int/lit8 v4, v4, 0x70

    #@65
    sparse-switch v4, :sswitch_data_d4

    #@68
    iget v4, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    #@6a
    add-int/2addr v9, v1

    #@6b
    iget v11, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    #@6d
    add-int/2addr v10, v11

    #@6e
    invoke-virtual {v8, v1, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    #@71
    :goto_71
    if-eqz v3, :cond_76

    #@73
    invoke-virtual {p0, v8, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    #@76
    :cond_76
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@78
    const/4 v1, 0x0

    #@79
    cmpl-float v0, v0, v1

    #@7b
    if-lez v0, :cond_ca

    #@7d
    const/4 v0, 0x0

    #@7e
    :goto_7e
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    #@81
    move-result v1

    #@82
    if-eq v1, v0, :cond_19

    #@84
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    #@87
    goto :goto_19

    #@88
    :cond_88
    int-to-float v1, v9

    #@89
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@8b
    mul-float/2addr v1, v2

    #@8c
    float-to-int v1, v1

    #@8d
    sub-int v1, v6, v1

    #@8f
    sub-int v2, v6, v1

    #@91
    int-to-float v2, v2

    #@92
    int-to-float v3, v9

    #@93
    div-float/2addr v2, v3

    #@94
    goto :goto_5a

    #@95
    :cond_95
    const/4 v3, 0x0

    #@96
    goto :goto_61

    #@97
    :sswitch_97
    sub-int v4, p5, p3

    #@99
    iget v10, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    #@9b
    sub-int v10, v4, v10

    #@9d
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    #@a0
    move-result v11

    #@a1
    sub-int/2addr v10, v11

    #@a2
    add-int/2addr v9, v1

    #@a3
    iget v11, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    #@a5
    sub-int/2addr v4, v11

    #@a6
    invoke-virtual {v8, v1, v10, v9, v4}, Landroid/view/View;->layout(IIII)V

    #@a9
    goto :goto_71

    #@aa
    :sswitch_aa
    sub-int v11, p5, p3

    #@ac
    sub-int v4, v11, v10

    #@ae
    div-int/lit8 v4, v4, 0x2

    #@b0
    iget v12, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    #@b2
    if-ge v4, v12, :cond_bc

    #@b4
    iget v4, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    #@b6
    :cond_b6
    :goto_b6
    add-int/2addr v9, v1

    #@b7
    add-int/2addr v10, v4

    #@b8
    invoke-virtual {v8, v1, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    #@bb
    goto :goto_71

    #@bc
    :cond_bc
    add-int v12, v4, v10

    #@be
    iget v13, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    #@c0
    sub-int v13, v11, v13

    #@c2
    if-le v12, v13, :cond_b6

    #@c4
    iget v4, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    #@c6
    sub-int v4, v11, v4

    #@c8
    sub-int/2addr v4, v10

    #@c9
    goto :goto_b6

    #@ca
    :cond_ca
    const/4 v0, 0x4

    #@cb
    goto :goto_7e

    #@cc
    :cond_cc
    const/4 v0, 0x0

    #@cd
    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    #@cf
    const/4 v0, 0x0

    #@d0
    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    #@d2
    return-void

    #@d3
    nop

    #@d4
    :sswitch_data_d4
    .sparse-switch
        0x10 -> :sswitch_aa
        0x50 -> :sswitch_97
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 13

    #@0
    const/16 v1, 0x12c

    #@2
    const/high16 v6, -0x80000000

    #@4
    const/high16 v9, 0x40000000    # 2.0f

    #@6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@9
    move-result v3

    #@a
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@d
    move-result v4

    #@e
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@11
    move-result v2

    #@12
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@15
    move-result v0

    #@16
    if-ne v3, v9, :cond_1a

    #@18
    if-eq v4, v9, :cond_46

    #@1a
    :cond_1a
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->isInEditMode()Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_48

    #@20
    if-ne v3, v6, :cond_40

    #@22
    :cond_22
    :goto_22
    if-ne v4, v6, :cond_44

    #@24
    move v1, v0

    #@25
    :cond_25
    :goto_25
    invoke-virtual {p0, v2, v1}, Landroid/support/v4/widget/DrawerLayout;->setMeasuredDimension(II)V

    #@28
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    #@2b
    move-result v4

    #@2c
    const/4 v0, 0x0

    #@2d
    move v3, v0

    #@2e
    :goto_2e
    if-ge v3, v4, :cond_109

    #@30
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    #@37
    move-result v0

    #@38
    const/16 v6, 0x8

    #@3a
    if-ne v0, v6, :cond_50

    #@3c
    :goto_3c
    add-int/lit8 v0, v3, 0x1

    #@3e
    move v3, v0

    #@3f
    goto :goto_2e

    #@40
    :cond_40
    if-nez v3, :cond_22

    #@42
    move v2, v1

    #@43
    goto :goto_22

    #@44
    :cond_44
    if-eqz v4, :cond_25

    #@46
    :cond_46
    move v1, v0

    #@47
    goto :goto_25

    #@48
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4a
    const-string v1, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    #@4c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v0

    #@50
    :cond_50
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@53
    move-result-object v0

    #@54
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@56
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    #@59
    move-result v6

    #@5a
    if-eqz v6, :cond_77

    #@5c
    iget v6, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    #@5e
    sub-int v6, v2, v6

    #@60
    iget v7, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    #@62
    sub-int/2addr v6, v7

    #@63
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@66
    move-result v6

    #@67
    iget v7, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    #@69
    sub-int v7, v1, v7

    #@6b
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    #@6d
    sub-int v0, v7, v0

    #@6f
    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@72
    move-result v0

    #@73
    invoke-virtual {v5, v6, v0}, Landroid/view/View;->measure(II)V

    #@76
    goto :goto_3c

    #@77
    :cond_77
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@7a
    move-result v6

    #@7b
    if-eqz v6, :cond_da

    #@7d
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    #@80
    move-result v6

    #@81
    and-int/lit8 v6, v6, 0x7

    #@83
    and-int/lit8 v7, v6, 0x0

    #@85
    if-eqz v7, :cond_bc

    #@87
    new-instance v0, Ljava/lang/IllegalStateException;

    #@89
    new-instance v1, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    const-string v2, "Child drawer has absolute gravity "

    #@90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v1

    #@94
    invoke-static {v6}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    #@97
    move-result-object v2

    #@98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v1

    #@9c
    const-string v2, " but this "

    #@9e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v1

    #@a2
    const-string v2, "DrawerLayout"

    #@a4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v1

    #@a8
    const-string v2, " already has a "

    #@aa
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v1

    #@ae
    const-string v2, "drawer view along that edge"

    #@b0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v1

    #@b4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b7
    move-result-object v1

    #@b8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@bb
    throw v0

    #@bc
    :cond_bc
    iget v6, p0, Landroid/support/v4/widget/DrawerLayout;->mMinDrawerMargin:I

    #@be
    iget v7, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    #@c0
    add-int/2addr v6, v7

    #@c1
    iget v7, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    #@c3
    add-int/2addr v6, v7

    #@c4
    iget v7, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->width:I

    #@c6
    invoke-static {p1, v6, v7}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    #@c9
    move-result v6

    #@ca
    iget v7, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    #@cc
    iget v8, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    #@ce
    add-int/2addr v7, v8

    #@cf
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->height:I

    #@d1
    invoke-static {p2, v7, v0}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    #@d4
    move-result v0

    #@d5
    invoke-virtual {v5, v6, v0}, Landroid/view/View;->measure(II)V

    #@d8
    goto/16 :goto_3c

    #@da
    :cond_da
    new-instance v0, Ljava/lang/IllegalStateException;

    #@dc
    new-instance v1, Ljava/lang/StringBuilder;

    #@de
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e1
    const-string v2, "Child "

    #@e3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v1

    #@e7
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v1

    #@eb
    const-string v2, " at index "

    #@ed
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v1

    #@f1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v1

    #@f5
    const-string v2, " does not have a valid layout_gravity - must be Gravity.LEFT, "

    #@f7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v1

    #@fb
    const-string v2, "Gravity.RIGHT or Gravity.NO_GRAVITY"

    #@fd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v1

    #@101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@104
    move-result-object v1

    #@105
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@108
    throw v0

    #@109
    :cond_109
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    #@0
    check-cast p1, Landroid/support/v4/widget/DrawerLayout$SavedState;

    #@2
    invoke-virtual {p1}, Landroid/support/v4/widget/DrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@5
    move-result-object v0

    #@6
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@9
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    #@b
    if-eqz v0, :cond_18

    #@d
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    #@f
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@12
    move-result-object v0

    #@13
    if-eqz v0, :cond_18

    #@15
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    #@18
    :cond_18
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    #@1a
    const/4 v1, 0x3

    #@1b
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    #@1e
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    #@20
    const/4 v1, 0x5

    #@21
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    #@24
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 6

    #@0
    new-instance v2, Landroid/support/v4/widget/DrawerLayout$SavedState;

    #@2
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    #@5
    move-result-object v0

    #@6
    invoke-direct {v2, v0}, Landroid/support/v4/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    #@c
    move-result v3

    #@d
    const/4 v0, 0x0

    #@e
    move v1, v0

    #@f
    :goto_f
    if-ge v1, v3, :cond_2d

    #@11
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@18
    move-result v4

    #@19
    if-nez v4, :cond_1f

    #@1b
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    #@1d
    move v1, v0

    #@1e
    goto :goto_f

    #@1f
    :cond_1f
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@25
    iget-boolean v4, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    #@27
    if-eqz v4, :cond_1b

    #@29
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    #@2b
    iput v0, v2, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    #@2d
    :cond_2d
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    #@2f
    iput v0, v2, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    #@31
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    #@33
    iput v0, v2, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    #@35
    return-object v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@4
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    #@7
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@9
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    #@c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@f
    move-result v0

    #@10
    and-int/lit16 v0, v0, 0xff

    #@12
    packed-switch v0, :pswitch_data_76

    #@15
    :goto_15
    :pswitch_15
    return v1

    #@16
    :pswitch_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@19
    move-result v0

    #@1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@1d
    move-result v3

    #@1e
    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    #@20
    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    #@22
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    #@24
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    #@26
    goto :goto_15

    #@27
    :pswitch_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@2a
    move-result v0

    #@2b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@2e
    move-result v3

    #@2f
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@31
    float-to-int v5, v0

    #@32
    float-to-int v6, v3

    #@33
    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    #@36
    move-result-object v4

    #@37
    if-eqz v4, :cond_73

    #@39
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    #@3c
    move-result v4

    #@3d
    if-eqz v4, :cond_73

    #@3f
    iget v4, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    #@41
    sub-float/2addr v0, v4

    #@42
    iget v4, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    #@44
    sub-float/2addr v3, v4

    #@45
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@47
    invoke-virtual {v4}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    #@4a
    move-result v4

    #@4b
    mul-float/2addr v0, v0

    #@4c
    mul-float/2addr v3, v3

    #@4d
    add-float/2addr v0, v3

    #@4e
    mul-int v3, v4, v4

    #@50
    int-to-float v3, v3

    #@51
    cmpg-float v0, v0, v3

    #@53
    if-gez v0, :cond_73

    #@55
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    #@58
    move-result-object v0

    #@59
    if-eqz v0, :cond_73

    #@5b
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    #@5e
    move-result v0

    #@5f
    const/4 v3, 0x2

    #@60
    if-ne v0, v3, :cond_69

    #@62
    move v0, v1

    #@63
    :goto_63
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    #@66
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    #@68
    goto :goto_15

    #@69
    :cond_69
    move v0, v2

    #@6a
    goto :goto_63

    #@6b
    :pswitch_6b
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    #@6e
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    #@70
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    #@72
    goto :goto_15

    #@73
    :cond_73
    move v0, v1

    #@74
    goto :goto_63

    #@75
    nop

    #@76
    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_16
        :pswitch_27
        :pswitch_15
        :pswitch_6b
    .end packed-switch
.end method

.method public openDrawer(I)V
    .registers 5

    #@0
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_23

    #@6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string v2, "No drawer view found with gravity "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    :cond_23
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    #@26
    return-void
.end method

.method public openDrawer(Landroid/view/View;)V
    .registers 5

    #@0
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_25

    #@6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string v2, "View "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string v2, " is not a sliding drawer"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    :cond_25
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    #@27
    if-eqz v0, :cond_3a

    #@29
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@2f
    const/high16 v1, 0x3f800000    # 1.0f

    #@31
    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@33
    const/4 v1, 0x1

    #@34
    iput-boolean v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    #@36
    :goto_36
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    #@39
    return-void

    #@3a
    :cond_3a
    const/4 v0, 0x3

    #@3b
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@3e
    move-result v0

    #@3f
    if-eqz v0, :cond_4c

    #@41
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@43
    const/4 v1, 0x0

    #@44
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@47
    move-result v2

    #@48
    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    #@4b
    goto :goto_36

    #@4c
    :cond_4c
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@4e
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    #@51
    move-result v1

    #@52
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@55
    move-result v2

    #@56
    sub-int/2addr v1, v2

    #@57
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@5a
    move-result v2

    #@5b
    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    #@5e
    goto :goto_36
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 3

    #@0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    #@3
    iput-boolean p1, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    #@5
    if-eqz p1, :cond_b

    #@7
    const/4 v0, 0x1

    #@8
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    #@b
    :cond_b
    return-void
.end method

.method public requestLayout()V
    .registers 2

    #@0
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    #@2
    if-nez v0, :cond_7

    #@4
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    #@7
    :cond_7
    return-void
.end method

.method public setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
    .registers 2

    #@0
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    #@2
    return-void
.end method

.method public setDrawerLockMode(I)V
    .registers 3

    #@0
    const/4 v0, 0x3

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    #@4
    const/4 v0, 0x5

    #@5
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    #@8
    return-void
.end method

.method public setDrawerLockMode(II)V
    .registers 6

    #@0
    const/4 v2, 0x3

    #@1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@4
    move-result v0

    #@5
    invoke-static {p2, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    #@8
    move-result v1

    #@9
    if-ne v1, v2, :cond_1a

    #@b
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    #@d
    :cond_d
    :goto_d
    if-eqz p1, :cond_16

    #@f
    if-ne v1, v2, :cond_20

    #@11
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@13
    :goto_13
    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    #@16
    :cond_16
    packed-switch p1, :pswitch_data_38

    #@19
    :cond_19
    :goto_19
    return-void

    #@1a
    :cond_1a
    const/4 v0, 0x5

    #@1b
    if-ne v1, v0, :cond_d

    #@1d
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    #@1f
    goto :goto_d

    #@20
    :cond_20
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@22
    goto :goto_13

    #@23
    :pswitch_23
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@26
    move-result-object v0

    #@27
    if-eqz v0, :cond_19

    #@29
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    #@2c
    goto :goto_19

    #@2d
    :pswitch_2d
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@30
    move-result-object v0

    #@31
    if-eqz v0, :cond_19

    #@33
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    #@36
    goto :goto_19

    #@37
    nop

    #@38
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_23
    .end packed-switch
.end method

.method public setDrawerLockMode(ILandroid/view/View;)V
    .registers 6

    #@0
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_2b

    #@6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string v2, "View "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string v2, " is not a "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const-string v2, "drawer with appropriate layout_gravity"

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    :cond_2b
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@31
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    #@33
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    #@36
    return-void
.end method

.method public setDrawerShadow(II)V
    .registers 4

    #@0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V

    #@b
    return-void
.end method

.method public setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V
    .registers 6

    #@0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    invoke-static {p2, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    #@7
    move-result v0

    #@8
    and-int/lit8 v1, v0, 0x3

    #@a
    const/4 v2, 0x3

    #@b
    if-ne v1, v2, :cond_12

    #@d
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    #@f
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    #@12
    :cond_12
    and-int/lit8 v0, v0, 0x5

    #@14
    const/4 v1, 0x5

    #@15
    if-ne v0, v1, :cond_1c

    #@17
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    #@19
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    #@1c
    :cond_1c
    return-void
.end method

.method public setDrawerTitle(ILjava/lang/CharSequence;)V
    .registers 5

    #@0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x3

    #@9
    if-ne v0, v1, :cond_e

    #@b
    iput-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    #@d
    :cond_d
    :goto_d
    return-void

    #@e
    :cond_e
    const/4 v1, 0x5

    #@f
    if-ne v0, v1, :cond_d

    #@11
    iput-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    #@13
    goto :goto_d
.end method

.method setDrawerViewOffset(Landroid/view/View;F)V
    .registers 5

    #@0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@6
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@8
    cmpl-float v1, p2, v1

    #@a
    if-nez v1, :cond_d

    #@c
    :goto_c
    return-void

    #@d
    :cond_d
    iput p2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@f
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerSlide(Landroid/view/View;F)V

    #@12
    goto :goto_c
.end method

.method public setScrimColor(I)V
    .registers 2

    #@0
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    #@2
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    #@5
    return-void
.end method

.method updateDrawerState(IILandroid/view/View;)V
    .registers 8

    #@0
    const/4 v0, 0x2

    #@1
    const/4 v1, 0x1

    #@2
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@4
    invoke-virtual {v2}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    #@7
    move-result v2

    #@8
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@a
    invoke-virtual {v3}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    #@d
    move-result v3

    #@e
    if-eq v2, v1, :cond_12

    #@10
    if-ne v3, v1, :cond_36

    #@12
    :cond_12
    :goto_12
    if-eqz p3, :cond_26

    #@14
    if-nez p2, :cond_26

    #@16
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@1c
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@1e
    const/4 v3, 0x0

    #@1f
    cmpl-float v2, v2, v3

    #@21
    if-nez v2, :cond_3f

    #@23
    invoke-virtual {p0, p3}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerClosed(Landroid/view/View;)V

    #@26
    :cond_26
    :goto_26
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerState:I

    #@28
    if-eq v1, v0, :cond_35

    #@2a
    iput v1, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerState:I

    #@2c
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    #@2e
    if-eqz v0, :cond_35

    #@30
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    #@32
    invoke-interface {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerStateChanged(I)V

    #@35
    :cond_35
    return-void

    #@36
    :cond_36
    if-eq v2, v0, :cond_3a

    #@38
    if-ne v3, v0, :cond_3c

    #@3a
    :cond_3a
    move v1, v0

    #@3b
    goto :goto_12

    #@3c
    :cond_3c
    const/4 v0, 0x0

    #@3d
    move v1, v0

    #@3e
    goto :goto_12

    #@3f
    :cond_3f
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@41
    const/high16 v2, 0x3f800000    # 1.0f

    #@43
    cmpl-float v0, v0, v2

    #@45
    if-nez v0, :cond_26

    #@47
    invoke-virtual {p0, p3}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerOpened(Landroid/view/View;)V

    #@4a
    goto :goto_26
.end method
