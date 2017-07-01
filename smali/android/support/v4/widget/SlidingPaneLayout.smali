.class public Landroid/support/v4/widget/SlidingPaneLayout;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;,
        Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;,
        Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;,
        Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;,
        Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;,
        Landroid/support/v4/widget/SlidingPaneLayout$SavedState;,
        Landroid/support/v4/widget/SlidingPaneLayout$SimplePanelSlideListener;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;
    }
.end annotation


# static fields
.field private static final DEFAULT_FADE_COLOR:I = -0x33333334

.field private static final DEFAULT_OVERHANG_SIZE:I = 0x20

.field static final IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final TAG:Ljava/lang/String; = "SlidingPaneLayout"


# instance fields
.field private mCanSlide:Z

.field private mCoveredFadeColor:I

.field private final mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field private mFirstLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsUnableToDrag:Z

.field private final mOverhangSize:I

.field private mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

.field private mParallaxBy:I

.field private mParallaxOffset:F

.field private final mPostedRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPreservedOpenState:Z

.field private mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

.field private mSlideOffset:F

.field private mSlideRange:I

.field private mSlideableView:Landroid/view/View;

.field private mSliderFadeColor:I

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x11

    #@4
    if-lt v0, v1, :cond_e

    #@6
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;

    #@8
    invoke-direct {v0}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;-><init>()V

    #@b
    sput-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    #@d
    :goto_d
    return-void

    #@e
    :cond_e
    const/16 v1, 0x10

    #@10
    if-lt v0, v1, :cond_1a

    #@12
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;

    #@14
    invoke-direct {v0}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;-><init>()V

    #@17
    sput-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    #@19
    goto :goto_d

    #@1a
    :cond_1a
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;

    #@1c
    invoke-direct {v0}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;-><init>()V

    #@1f
    sput-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    #@21
    goto :goto_d
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    #@0
    const/4 v2, 0x1

    #@1
    const/high16 v3, 0x3f000000    # 0.5f

    #@3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    const v0, -0x33333334

    #@9
    iput v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    #@b
    iput-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    #@d
    new-instance v0, Landroid/graphics/Rect;

    #@f
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@12
    iput-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    #@14
    new-instance v0, Ljava/util/ArrayList;

    #@16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@19
    iput-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@22
    move-result-object v0

    #@23
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    #@25
    const/high16 v1, 0x42000000    # 32.0f

    #@27
    mul-float/2addr v1, v0

    #@28
    add-float/2addr v1, v3

    #@29
    float-to-int v1, v1

    #@2a
    iput v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    #@2c
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@2f
    const/4 v1, 0x0

    #@30
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->setWillNotDraw(Z)V

    #@33
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;

    #@35
    invoke-direct {v1, p0}, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;)V

    #@38
    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    #@3b
    invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@3e
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;

    #@40
    const/4 v2, 0x0

    #@41
    invoke-direct {v1, p0, v2}, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/support/v4/widget/SlidingPaneLayout$1;)V

    #@44
    invoke-static {p0, v3, v1}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    #@47
    move-result-object v1

    #@48
    iput-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@4a
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@4c
    const/high16 v2, 0x43c80000    # 400.0f

    #@4e
    mul-float/2addr v0, v2

    #@4f
    invoke-virtual {v1, v0}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    #@52
    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/widget/SlidingPaneLayout;)Z
    .registers 2

    #@0
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    #@2
    return v0
.end method

.method static synthetic access$1000(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V

    #@3
    return-void
.end method

.method static synthetic access$1100(Landroid/support/v4/widget/SlidingPaneLayout;)Ljava/util/ArrayList;
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/support/v4/widget/ViewDragHelper;
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@2
    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/widget/SlidingPaneLayout;)F
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #@2
    return v0
.end method

.method static synthetic access$400(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/view/View;
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method static synthetic access$502(Landroid/support/v4/widget/SlidingPaneLayout;Z)Z
    .registers 2

    #@0
    iput-boolean p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    #@2
    return p1
.end method

.method static synthetic access$600(Landroid/support/v4/widget/SlidingPaneLayout;I)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->onPanelDragged(I)V

    #@3
    return-void
.end method

.method static synthetic access$700(Landroid/support/v4/widget/SlidingPaneLayout;)Z
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$800(Landroid/support/v4/widget/SlidingPaneLayout;)I
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    #@2
    return v0
.end method

.method private closePane(Landroid/view/View;I)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    #@3
    if-nez v1, :cond_c

    #@5
    const/4 v1, 0x0

    #@6
    invoke-virtual {p0, v1, p2}, Landroid/support/v4/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_f

    #@c
    :cond_c
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    #@e
    const/4 v0, 0x1

    #@f
    :cond_f
    return v0
.end method

.method private dimChildView(Landroid/view/View;FI)V
    .registers 10

    #@0
    const/4 v5, 0x2

    #@1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    #@7
    const/4 v1, 0x0

    #@8
    cmpl-float v1, p2, v1

    #@a
    if-lez v1, :cond_43

    #@c
    if-eqz p3, :cond_43

    #@e
    const/high16 v1, -0x1000000

    #@10
    and-int/2addr v1, p3

    #@11
    ushr-int/lit8 v1, v1, 0x18

    #@13
    int-to-float v1, v1

    #@14
    mul-float/2addr v1, p2

    #@15
    float-to-int v1, v1

    #@16
    iget-object v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    #@18
    if-nez v2, :cond_21

    #@1a
    new-instance v2, Landroid/graphics/Paint;

    #@1c
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    #@1f
    iput-object v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    #@21
    :cond_21
    iget-object v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    #@23
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    #@25
    shl-int/lit8 v1, v1, 0x18

    #@27
    const v4, 0xffffff

    #@2a
    and-int/2addr v4, p3

    #@2b
    or-int/2addr v1, v4

    #@2c
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    #@2e
    invoke-direct {v3, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    #@31
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@34
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayerType(Landroid/view/View;)I

    #@37
    move-result v1

    #@38
    if-eq v1, v5, :cond_3f

    #@3a
    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    #@3c
    invoke-static {p1, v5, v0}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    #@3f
    :cond_3f
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V

    #@42
    :cond_42
    :goto_42
    return-void

    #@43
    :cond_43
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayerType(Landroid/view/View;)I

    #@46
    move-result v1

    #@47
    if-eqz v1, :cond_42

    #@49
    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    #@4b
    if-eqz v1, :cond_53

    #@4d
    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    #@4f
    const/4 v1, 0x0

    #@50
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@53
    :cond_53
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;

    #@55
    invoke-direct {v0, p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    #@58
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    #@5a
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5d
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    #@60
    goto :goto_42
.end method

.method private invalidateChildRegion(Landroid/view/View;)V
    .registers 3

    #@0
    sget-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    #@2
    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;->invalidateChildRegion(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    #@5
    return-void
.end method

.method private isLayoutRtlSupport()Z
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@4
    move-result v1

    #@5
    if-ne v1, v0, :cond_8

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method

.method private onPanelDragged(I)V
    .registers 6

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@2
    if-nez v0, :cond_8

    #@4
    const/4 v0, 0x0

    #@5
    iput v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #@7
    :goto_7
    return-void

    #@8
    :cond_8
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    #@b
    move-result v3

    #@c
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@e
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    #@14
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@16
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    #@19
    move-result v1

    #@1a
    if-eqz v3, :cond_23

    #@1c
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    #@1f
    move-result v2

    #@20
    sub-int/2addr v2, p1

    #@21
    sub-int p1, v2, v1

    #@23
    :cond_23
    if-eqz v3, :cond_54

    #@25
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    #@28
    move-result v1

    #@29
    move v2, v1

    #@2a
    :goto_2a
    if-eqz v3, :cond_5a

    #@2c
    iget v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    #@2e
    :goto_2e
    add-int/2addr v1, v2

    #@2f
    sub-int v1, p1, v1

    #@31
    int-to-float v1, v1

    #@32
    iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    #@34
    int-to-float v2, v2

    #@35
    div-float/2addr v1, v2

    #@36
    iput v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #@38
    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    #@3a
    if-eqz v1, :cond_41

    #@3c
    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #@3e
    invoke-direct {p0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    #@41
    :cond_41
    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    #@43
    if-eqz v0, :cond_4e

    #@45
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@47
    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #@49
    iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    #@4b
    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    #@4e
    :cond_4e
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@50
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->dispatchOnPanelSlide(Landroid/view/View;)V

    #@53
    goto :goto_7

    #@54
    :cond_54
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    #@57
    move-result v1

    #@58
    move v2, v1

    #@59
    goto :goto_2a

    #@5a
    :cond_5a
    iget v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    #@5c
    goto :goto_2e
.end method

.method private openPane(Landroid/view/View;I)Z
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    #@3
    if-nez v1, :cond_d

    #@5
    const/high16 v1, 0x3f800000    # 1.0f

    #@7
    invoke-virtual {p0, v1, p2}, Landroid/support/v4/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_10

    #@d
    :cond_d
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    #@f
    :goto_f
    return v0

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    goto :goto_f
.end method

.method private parallaxOtherViews(F)V
    .registers 11

    #@0
    const/4 v1, 0x0

    #@1
    const/high16 v8, 0x3f800000    # 1.0f

    #@3
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    #@6
    move-result v3

    #@7
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    #@f
    iget-boolean v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    #@11
    if-eqz v2, :cond_30

    #@13
    if-eqz v3, :cond_2d

    #@15
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    #@17
    :goto_17
    if-gtz v0, :cond_30

    #@19
    const/4 v0, 0x1

    #@1a
    :goto_1a
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    #@1d
    move-result v4

    #@1e
    move v2, v1

    #@1f
    :goto_1f
    if-ge v2, v4, :cond_5d

    #@21
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    #@24
    move-result-object v5

    #@25
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@27
    if-ne v5, v1, :cond_32

    #@29
    :cond_29
    :goto_29
    add-int/lit8 v1, v2, 0x1

    #@2b
    move v2, v1

    #@2c
    goto :goto_1f

    #@2d
    :cond_2d
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    #@2f
    goto :goto_17

    #@30
    :cond_30
    move v0, v1

    #@31
    goto :goto_1a

    #@32
    :cond_32
    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    #@34
    sub-float v1, v8, v1

    #@36
    iget v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    #@38
    int-to-float v6, v6

    #@39
    mul-float/2addr v1, v6

    #@3a
    float-to-int v1, v1

    #@3b
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    #@3d
    sub-float v6, v8, p1

    #@3f
    iget v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    #@41
    int-to-float v7, v7

    #@42
    mul-float/2addr v6, v7

    #@43
    float-to-int v6, v6

    #@44
    sub-int/2addr v1, v6

    #@45
    if-eqz v3, :cond_48

    #@47
    neg-int v1, v1

    #@48
    :cond_48
    invoke-virtual {v5, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@4b
    if-eqz v0, :cond_29

    #@4d
    if-eqz v3, :cond_58

    #@4f
    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    #@51
    sub-float/2addr v1, v8

    #@52
    :goto_52
    iget v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    #@54
    invoke-direct {p0, v5, v1, v6}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    #@57
    goto :goto_29

    #@58
    :cond_58
    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    #@5a
    sub-float v1, v8, v1

    #@5c
    goto :goto_52

    #@5d
    :cond_5d
    return-void
.end method

.method private static viewIsOpaque(Landroid/view/View;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isOpaque(Landroid/view/View;)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_a

    #@8
    :cond_8
    move v0, v1

    #@9
    :cond_9
    :goto_9
    return v0

    #@a
    :cond_a
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    #@c
    const/16 v3, 0x12

    #@e
    if-ge v2, v3, :cond_9

    #@10
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object v2

    #@14
    if-eqz v2, :cond_9

    #@16
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@19
    move-result v2

    #@1a
    const/4 v3, -0x1

    #@1b
    if-eq v2, v3, :cond_8

    #@1d
    goto :goto_9
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .registers 16

    #@0
    const/4 v2, 0x1

    #@1
    instance-of v0, p1, Landroid/view/ViewGroup;

    #@3
    if-eqz v0, :cond_5a

    #@5
    move-object v6, p1

    #@6
    check-cast v6, Landroid/view/ViewGroup;

    #@8
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    #@b
    move-result v8

    #@c
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    #@f
    move-result v9

    #@10
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    #@13
    move-result v0

    #@14
    add-int/lit8 v0, v0, -0x1

    #@16
    move v7, v0

    #@17
    :goto_17
    if-ltz v7, :cond_5a

    #@19
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@1c
    move-result-object v1

    #@1d
    add-int v0, p4, v8

    #@1f
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    #@22
    move-result v3

    #@23
    if-lt v0, v3, :cond_56

    #@25
    add-int v0, p4, v8

    #@27
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    #@2a
    move-result v3

    #@2b
    if-ge v0, v3, :cond_56

    #@2d
    add-int v0, p5, v9

    #@2f
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@32
    move-result v3

    #@33
    if-lt v0, v3, :cond_56

    #@35
    add-int v0, p5, v9

    #@37
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    #@3a
    move-result v3

    #@3b
    if-ge v0, v3, :cond_56

    #@3d
    add-int v0, p4, v8

    #@3f
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    #@42
    move-result v3

    #@43
    sub-int v4, v0, v3

    #@45
    add-int v0, p5, v9

    #@47
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@4a
    move-result v3

    #@4b
    sub-int v5, v0, v3

    #@4d
    move-object v0, p0

    #@4e
    move v3, p3

    #@4f
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/SlidingPaneLayout;->canScroll(Landroid/view/View;ZIII)Z

    #@52
    move-result v0

    #@53
    if-eqz v0, :cond_56

    #@55
    :cond_55
    :goto_55
    return v2

    #@56
    :cond_56
    add-int/lit8 v0, v7, -0x1

    #@58
    move v7, v0

    #@59
    goto :goto_17

    #@5a
    :cond_5a
    if-eqz p2, :cond_68

    #@5c
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    #@5f
    move-result v0

    #@60
    if-eqz v0, :cond_6a

    #@62
    :goto_62
    invoke-static {p1, p3}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    #@65
    move-result v0

    #@66
    if-nez v0, :cond_55

    #@68
    :cond_68
    const/4 v2, 0x0

    #@69
    goto :goto_55

    #@6a
    :cond_6a
    neg-int p3, p3

    #@6b
    goto :goto_62
.end method

.method public canSlide()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #@2
    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    #@0
    instance-of v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

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

.method public closePane()Z
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public computeScroll()V
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_12

    #@9
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #@b
    if-nez v0, :cond_13

    #@d
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@f
    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    #@12
    :cond_12
    :goto_12
    return-void

    #@13
    :cond_13
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@16
    goto :goto_12
.end method

.method dispatchOnPanelClosed(Landroid/view/View;)V
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    #@6
    invoke-interface {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelClosed(Landroid/view/View;)V

    #@9
    :cond_9
    const/16 v0, 0x20

    #@b
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    #@e
    return-void
.end method

.method dispatchOnPanelOpened(Landroid/view/View;)V
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    #@6
    invoke-interface {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelOpened(Landroid/view/View;)V

    #@9
    :cond_9
    const/16 v0, 0x20

    #@b
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    #@e
    return-void
.end method

.method dispatchOnPanelSlide(Landroid/view/View;)V
    .registers 4

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    #@2
    if-eqz v0, :cond_b

    #@4
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    #@6
    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #@8
    invoke-interface {v0, p1, v1}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelSlide(Landroid/view/View;F)V

    #@b
    :cond_b
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    #@0
    const/4 v2, 0x1

    #@1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    #@4
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1b

    #@a
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

    #@c
    :goto_c
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    #@f
    move-result v1

    #@10
    if-le v1, v2, :cond_1e

    #@12
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    #@15
    move-result-object v1

    #@16
    :goto_16
    if-eqz v1, :cond_1a

    #@18
    if-nez v0, :cond_20

    #@1a
    :cond_1a
    :goto_1a
    return-void

    #@1b
    :cond_1b
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

    #@1d
    goto :goto_c

    #@1e
    :cond_1e
    const/4 v1, 0x0

    #@1f
    goto :goto_16

    #@20
    :cond_20
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@23
    move-result v3

    #@24
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    #@27
    move-result v4

    #@28
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@2b
    move-result v5

    #@2c
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    #@2f
    move-result v2

    #@30
    if-eqz v2, :cond_3f

    #@32
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    #@35
    move-result v2

    #@36
    add-int v1, v2, v5

    #@38
    :goto_38
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@3b
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@3e
    goto :goto_1a

    #@3f
    :cond_3f
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    #@42
    move-result v1

    #@43
    sub-int v2, v1, v5

    #@45
    goto :goto_38
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 12

    #@0
    const/4 v1, 0x0

    #@1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    #@7
    const/4 v2, 0x2

    #@8
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I

    #@b
    move-result v2

    #@c
    iget-boolean v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #@e
    if-eqz v3, :cond_3a

    #@10
    iget-boolean v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    #@12
    if-nez v3, :cond_3a

    #@14
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@16
    if-eqz v3, :cond_3a

    #@18
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    #@1a
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    #@1d
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_48

    #@23
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    #@25
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    #@27
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@29
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@2b
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    #@2e
    move-result v5

    #@2f
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    #@32
    move-result v4

    #@33
    iput v4, v3, Landroid/graphics/Rect;->left:I

    #@35
    :goto_35
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    #@37
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    #@3a
    :cond_3a
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    #@3c
    const/16 v4, 0xb

    #@3e
    if-lt v3, v4, :cond_5b

    #@40
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    #@43
    move-result v0

    #@44
    :goto_44
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@47
    return v0

    #@48
    :cond_48
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    #@4a
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    #@4c
    iget v4, v4, Landroid/graphics/Rect;->right:I

    #@4e
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@50
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    #@53
    move-result v5

    #@54
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    #@57
    move-result v4

    #@58
    iput v4, v3, Landroid/graphics/Rect;->right:I

    #@5a
    goto :goto_35

    #@5b
    :cond_5b
    iget-boolean v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    #@5d
    if-eqz v3, :cond_aa

    #@5f
    iget v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #@61
    const/4 v4, 0x0

    #@62
    cmpl-float v3, v3, v4

    #@64
    if-lez v3, :cond_aa

    #@66
    invoke-virtual {p2}, Landroid/view/View;->isDrawingCacheEnabled()Z

    #@69
    move-result v3

    #@6a
    if-nez v3, :cond_70

    #@6c
    const/4 v3, 0x1

    #@6d
    invoke-virtual {p2, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    #@70
    :cond_70
    invoke-virtual {p2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    #@73
    move-result-object v3

    #@74
    if-eqz v3, :cond_87

    #@76
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    #@79
    move-result v4

    #@7a
    int-to-float v4, v4

    #@7b
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    #@7e
    move-result v5

    #@7f
    int-to-float v5, v5

    #@80
    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    #@82
    invoke-virtual {p1, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@85
    move v0, v1

    #@86
    goto :goto_44

    #@87
    :cond_87
    const-string v0, "SlidingPaneLayout"

    #@89
    new-instance v1, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    const-string v3, "drawChild: child view "

    #@90
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v1

    #@94
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v1

    #@98
    const-string v3, " returned null drawing cache"

    #@9a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v1

    #@9e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v1

    #@a2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    #@a8
    move-result v0

    #@a9
    goto :goto_44

    #@aa
    :cond_aa
    invoke-virtual {p2}, Landroid/view/View;->isDrawingCacheEnabled()Z

    #@ad
    move-result v0

    #@ae
    if-eqz v0, :cond_b3

    #@b0
    invoke-virtual {p2, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    #@b3
    :cond_b3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    #@b6
    move-result v0

    #@b7
    goto :goto_44
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    #@0
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    #@2
    invoke-direct {v0}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>()V

    #@5
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    #@0
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    #@2
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    #@0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@2
    if-eqz v0, :cond_c

    #@4
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    #@6
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@8
    invoke-direct {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    #@e
    invoke-direct {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@11
    goto :goto_b
.end method

.method public getCoveredFadeColor()I
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    #@2
    return v0
.end method

.method public getParallaxDistance()I
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    #@2
    return v0
.end method

.method public getSliderFadeColor()I
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    #@2
    return v0
.end method

.method isDimmed(Landroid/view/View;)Z
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    if-nez p1, :cond_5

    #@3
    move v0, v1

    #@4
    :goto_4
    return v0

    #@5
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    #@b
    iget-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #@d
    if-eqz v2, :cond_1c

    #@f
    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    #@11
    if-eqz v0, :cond_1c

    #@13
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #@15
    const/4 v2, 0x0

    #@16
    cmpl-float v0, v0, v2

    #@18
    if-lez v0, :cond_1c

    #@1a
    const/4 v0, 0x1

    #@1b
    goto :goto_4

    #@1c
    :cond_1c
    move v0, v1

    #@1d
    goto :goto_4
.end method

.method public isOpen()Z
    .registers 3

    #@0
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #@2
    if-eqz v0, :cond_c

    #@4
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #@6
    const/high16 v1, 0x3f800000    # 1.0f

    #@8
    cmpl-float v0, v0, v1

    #@a
    if-nez v0, :cond_e

    #@c
    :cond_c
    const/4 v0, 0x1

    #@d
    :goto_d
    return v0

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    goto :goto_d
.end method

.method public isSlideable()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #@2
    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    #@0
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    #@3
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    #@6
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    #@0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    #@3
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    #@6
    const/4 v0, 0x0

    #@7
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v2

    #@d
    move v1, v0

    #@e
    :goto_e
    if-ge v1, v2, :cond_1f

    #@10
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;

    #@18
    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;->run()V

    #@1b
    add-int/lit8 v0, v1, 0x1

    #@1d
    move v1, v0

    #@1e
    goto :goto_e

    #@1f
    :cond_1f
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@24
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    #@5
    move-result v3

    #@6
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #@8
    if-nez v0, :cond_2d

    #@a
    if-nez v3, :cond_2d

    #@c
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    #@f
    move-result v0

    #@10
    if-le v0, v1, :cond_2d

    #@12
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    #@15
    move-result-object v0

    #@16
    if-eqz v0, :cond_2d

    #@18
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@1d
    move-result v5

    #@1e
    float-to-int v5, v5

    #@1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@22
    move-result v6

    #@23
    float-to-int v6, v6

    #@24
    invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    #@27
    move-result v0

    #@28
    if-nez v0, :cond_41

    #@2a
    move v0, v1

    #@2b
    :goto_2b
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    #@2d
    :cond_2d
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #@2f
    if-eqz v0, :cond_37

    #@31
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    #@33
    if-eqz v0, :cond_43

    #@35
    if-eqz v3, :cond_43

    #@37
    :cond_37
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@39
    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    #@3c
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    #@3f
    move-result v2

    #@40
    :cond_40
    :goto_40
    return v2

    #@41
    :cond_41
    move v0, v2

    #@42
    goto :goto_2b

    #@43
    :cond_43
    const/4 v0, 0x3

    #@44
    if-eq v3, v0, :cond_48

    #@46
    if-ne v3, v1, :cond_4e

    #@48
    :cond_48
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@4a
    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    #@4d
    goto :goto_40

    #@4e
    :cond_4e
    packed-switch v3, :pswitch_data_b2

    #@51
    move v0, v2

    #@52
    :goto_52
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@54
    invoke-virtual {v3, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    #@57
    move-result v3

    #@58
    if-nez v3, :cond_5c

    #@5a
    if-eqz v0, :cond_40

    #@5c
    :cond_5c
    move v2, v1

    #@5d
    goto :goto_40

    #@5e
    :pswitch_5e
    iput-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    #@60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@63
    move-result v0

    #@64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@67
    move-result v3

    #@68
    iput v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    #@6a
    iput v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    #@6c
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@6e
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@70
    float-to-int v0, v0

    #@71
    float-to-int v3, v3

    #@72
    invoke-virtual {v4, v5, v0, v3}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    #@75
    move-result v0

    #@76
    if-eqz v0, :cond_af

    #@78
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@7a
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    #@7d
    move-result v0

    #@7e
    if-eqz v0, :cond_af

    #@80
    move v0, v1

    #@81
    goto :goto_52

    #@82
    :pswitch_82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@85
    move-result v0

    #@86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@89
    move-result v3

    #@8a
    iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    #@8c
    sub-float/2addr v0, v4

    #@8d
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@90
    move-result v0

    #@91
    iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    #@93
    sub-float/2addr v3, v4

    #@94
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    #@97
    move-result v3

    #@98
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@9a
    invoke-virtual {v4}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    #@9d
    move-result v4

    #@9e
    int-to-float v4, v4

    #@9f
    cmpl-float v4, v0, v4

    #@a1
    if-lez v4, :cond_af

    #@a3
    cmpl-float v0, v3, v0

    #@a5
    if-lez v0, :cond_af

    #@a7
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@a9
    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    #@ac
    iput-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    #@ae
    goto :goto_40

    #@af
    :cond_af
    :pswitch_af
    move v0, v2

    #@b0
    goto :goto_52

    #@b1
    nop

    #@b2
    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_af
        :pswitch_82
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 23

    #@0
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    #@3
    move-result v9

    #@4
    if-eqz v9, :cond_58

    #@6
    move-object/from16 v0, p0

    #@8
    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@a
    const/4 v2, 0x2

    #@b
    invoke-virtual {v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    #@e
    :goto_e
    sub-int v10, p4, p2

    #@10
    if-eqz v9, :cond_61

    #@12
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    #@15
    move-result v3

    #@16
    :goto_16
    if-eqz v9, :cond_66

    #@18
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    #@1b
    move-result v1

    #@1c
    move v2, v1

    #@1d
    :goto_1d
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    #@20
    move-result v11

    #@21
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    #@24
    move-result v12

    #@25
    move-object/from16 v0, p0

    #@27
    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    #@29
    if-eqz v1, :cond_3d

    #@2b
    move-object/from16 v0, p0

    #@2d
    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #@2f
    if-eqz v1, :cond_6c

    #@31
    move-object/from16 v0, p0

    #@33
    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    #@35
    if-eqz v1, :cond_6c

    #@37
    const/high16 v1, 0x3f800000    # 1.0f

    #@39
    :goto_39
    move-object/from16 v0, p0

    #@3b
    iput v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #@3d
    :cond_3d
    const/4 v1, 0x0

    #@3e
    move v8, v1

    #@3f
    move v4, v3

    #@40
    :goto_40
    if-ge v8, v12, :cond_100

    #@42
    move-object/from16 v0, p0

    #@44
    invoke-virtual {v0, v8}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    #@47
    move-result-object v13

    #@48
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    #@4b
    move-result v1

    #@4c
    const/16 v5, 0x8

    #@4e
    if-ne v1, v5, :cond_6e

    #@50
    move v1, v3

    #@51
    move v3, v4

    #@52
    :goto_52
    add-int/lit8 v4, v8, 0x1

    #@54
    move v8, v4

    #@55
    move v4, v3

    #@56
    move v3, v1

    #@57
    goto :goto_40

    #@58
    :cond_58
    move-object/from16 v0, p0

    #@5a
    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@5c
    const/4 v2, 0x1

    #@5d
    invoke-virtual {v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    #@60
    goto :goto_e

    #@61
    :cond_61
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    #@64
    move-result v3

    #@65
    goto :goto_16

    #@66
    :cond_66
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    #@69
    move-result v1

    #@6a
    move v2, v1

    #@6b
    goto :goto_1d

    #@6c
    :cond_6c
    const/4 v1, 0x0

    #@6d
    goto :goto_39

    #@6e
    :cond_6e
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@71
    move-result-object v1

    #@72
    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    #@74
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    #@77
    move-result v14

    #@78
    const/4 v7, 0x0

    #@79
    iget-boolean v5, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    #@7b
    if-eqz v5, :cond_db

    #@7d
    iget v5, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    #@7f
    iget v6, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    #@81
    sub-int v15, v10, v2

    #@83
    move-object/from16 v0, p0

    #@85
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    #@87
    move/from16 v16, v0

    #@89
    sub-int v15, v15, v16

    #@8b
    invoke-static {v4, v15}, Ljava/lang/Math;->min(II)I

    #@8e
    move-result v15

    #@8f
    sub-int/2addr v15, v3

    #@90
    add-int/2addr v5, v6

    #@91
    sub-int/2addr v15, v5

    #@92
    move-object/from16 v0, p0

    #@94
    iput v15, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    #@96
    if-eqz v9, :cond_d6

    #@98
    iget v5, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    #@9a
    :goto_9a
    add-int v6, v3, v5

    #@9c
    add-int/2addr v6, v15

    #@9d
    div-int/lit8 v16, v14, 0x2

    #@9f
    add-int v6, v6, v16

    #@a1
    sub-int v16, v10, v2

    #@a3
    move/from16 v0, v16

    #@a5
    if-le v6, v0, :cond_d9

    #@a7
    const/4 v6, 0x1

    #@a8
    :goto_a8
    iput-boolean v6, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    #@aa
    int-to-float v1, v15

    #@ab
    move-object/from16 v0, p0

    #@ad
    iget v6, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #@af
    mul-float/2addr v1, v6

    #@b0
    float-to-int v6, v1

    #@b1
    add-int v1, v6, v5

    #@b3
    add-int/2addr v1, v3

    #@b4
    int-to-float v3, v6

    #@b5
    move-object/from16 v0, p0

    #@b7
    iget v5, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    #@b9
    int-to-float v5, v5

    #@ba
    div-float/2addr v3, v5

    #@bb
    move-object/from16 v0, p0

    #@bd
    iput v3, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #@bf
    move v3, v7

    #@c0
    :goto_c0
    if-eqz v9, :cond_fb

    #@c2
    sub-int v5, v10, v1

    #@c4
    add-int/2addr v5, v3

    #@c5
    sub-int v3, v5, v14

    #@c7
    :goto_c7
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    #@ca
    move-result v6

    #@cb
    add-int/2addr v6, v11

    #@cc
    invoke-virtual {v13, v3, v11, v5, v6}, Landroid/view/View;->layout(IIII)V

    #@cf
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    #@d2
    move-result v3

    #@d3
    add-int/2addr v3, v4

    #@d4
    goto/16 :goto_52

    #@d6
    :cond_d6
    iget v5, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    #@d8
    goto :goto_9a

    #@d9
    :cond_d9
    const/4 v6, 0x0

    #@da
    goto :goto_a8

    #@db
    :cond_db
    move-object/from16 v0, p0

    #@dd
    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #@df
    if-eqz v1, :cond_f8

    #@e1
    move-object/from16 v0, p0

    #@e3
    iget v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    #@e5
    if-eqz v1, :cond_f8

    #@e7
    const/high16 v1, 0x3f800000    # 1.0f

    #@e9
    move-object/from16 v0, p0

    #@eb
    iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #@ed
    sub-float/2addr v1, v3

    #@ee
    move-object/from16 v0, p0

    #@f0
    iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    #@f2
    int-to-float v3, v3

    #@f3
    mul-float/2addr v1, v3

    #@f4
    float-to-int v1, v1

    #@f5
    move v3, v1

    #@f6
    move v1, v4

    #@f7
    goto :goto_c0

    #@f8
    :cond_f8
    move v3, v7

    #@f9
    move v1, v4

    #@fa
    goto :goto_c0

    #@fb
    :cond_fb
    sub-int v3, v1, v3

    #@fd
    add-int v5, v3, v14

    #@ff
    goto :goto_c7

    #@100
    :cond_100
    move-object/from16 v0, p0

    #@102
    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    #@104
    if-eqz v1, :cond_143

    #@106
    move-object/from16 v0, p0

    #@108
    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #@10a
    if-eqz v1, :cond_149

    #@10c
    move-object/from16 v0, p0

    #@10e
    iget v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    #@110
    if-eqz v1, :cond_11b

    #@112
    move-object/from16 v0, p0

    #@114
    iget v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #@116
    move-object/from16 v0, p0

    #@118
    invoke-direct {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    #@11b
    :cond_11b
    move-object/from16 v0, p0

    #@11d
    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@11f
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@122
    move-result-object v1

    #@123
    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    #@125
    iget-boolean v1, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    #@127
    if-eqz v1, :cond_13a

    #@129
    move-object/from16 v0, p0

    #@12b
    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@12d
    move-object/from16 v0, p0

    #@12f
    iget v2, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #@131
    move-object/from16 v0, p0

    #@133
    iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    #@135
    move-object/from16 v0, p0

    #@137
    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    #@13a
    :cond_13a
    move-object/from16 v0, p0

    #@13c
    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@13e
    move-object/from16 v0, p0

    #@140
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    #@143
    :cond_143
    const/4 v1, 0x0

    #@144
    move-object/from16 v0, p0

    #@146
    iput-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    #@148
    return-void

    #@149
    :cond_149
    const/4 v1, 0x0

    #@14a
    :goto_14a
    if-ge v1, v12, :cond_13a

    #@14c
    move-object/from16 v0, p0

    #@14e
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    #@151
    move-result-object v2

    #@152
    const/4 v3, 0x0

    #@153
    move-object/from16 v0, p0

    #@155
    iget v4, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    #@157
    move-object/from16 v0, p0

    #@159
    invoke-direct {v0, v2, v3, v4}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    #@15c
    add-int/lit8 v1, v1, 0x1

    #@15e
    goto :goto_14a
.end method

.method protected onMeasure(II)V
    .registers 18

    #@0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@3
    move-result v3

    #@4
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@7
    move-result v1

    #@8
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@b
    move-result v0

    #@c
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@f
    move-result v2

    #@10
    const/high16 v4, 0x40000000    # 2.0f

    #@12
    if-eq v3, v4, :cond_7a

    #@14
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInEditMode()Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_72

    #@1a
    const/high16 v4, -0x80000000

    #@1c
    if-ne v3, v4, :cond_6b

    #@1e
    move v9, v0

    #@1f
    move v11, v1

    #@20
    :goto_20
    const/4 v0, 0x0

    #@21
    const/4 v1, -0x1

    #@22
    sparse-switch v9, :sswitch_data_24c

    #@25
    :goto_25
    const/4 v5, 0x0

    #@26
    const/4 v2, 0x0

    #@27
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    #@2a
    move-result v3

    #@2b
    sub-int v3, v11, v3

    #@2d
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    #@30
    move-result v4

    #@31
    sub-int v10, v3, v4

    #@33
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    #@36
    move-result v12

    #@37
    const/4 v3, 0x2

    #@38
    if-le v12, v3, :cond_41

    #@3a
    const-string v3, "SlidingPaneLayout"

    #@3c
    const-string v4, "onMeasure: More than two child views are not supported."

    #@3e
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    :cond_41
    const/4 v3, 0x0

    #@42
    iput-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@44
    const/4 v3, 0x0

    #@45
    move v8, v3

    #@46
    move v4, v0

    #@47
    move v3, v10

    #@48
    :goto_48
    if-ge v8, v12, :cond_12e

    #@4a
    invoke-virtual {p0, v8}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    #@4d
    move-result-object v13

    #@4e
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@51
    move-result-object v0

    #@52
    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    #@54
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    #@57
    move-result v6

    #@58
    const/16 v7, 0x8

    #@5a
    if-ne v6, v7, :cond_ad

    #@5c
    const/4 v6, 0x0

    #@5d
    iput-boolean v6, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    #@5f
    move v0, v2

    #@60
    move v2, v3

    #@61
    move v3, v4

    #@62
    move v4, v5

    #@63
    :goto_63
    add-int/lit8 v5, v8, 0x1

    #@65
    move v8, v5

    #@66
    move v5, v4

    #@67
    move v4, v3

    #@68
    move v3, v2

    #@69
    move v2, v0

    #@6a
    goto :goto_48

    #@6b
    :cond_6b
    if-nez v3, :cond_247

    #@6d
    const/16 v1, 0x12c

    #@6f
    move v9, v0

    #@70
    move v11, v1

    #@71
    goto :goto_20

    #@72
    :cond_72
    new-instance v0, Ljava/lang/IllegalStateException;

    #@74
    const-string v1, "Width must have an exact value or MATCH_PARENT"

    #@76
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@79
    throw v0

    #@7a
    :cond_7a
    if-nez v0, :cond_247

    #@7c
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInEditMode()Z

    #@7f
    move-result v3

    #@80
    if-eqz v3, :cond_8b

    #@82
    if-nez v0, :cond_247

    #@84
    const/high16 v0, -0x80000000

    #@86
    const/16 v2, 0x12c

    #@88
    move v9, v0

    #@89
    move v11, v1

    #@8a
    goto :goto_20

    #@8b
    :cond_8b
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8d
    const-string v1, "Height must not be UNSPECIFIED"

    #@8f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@92
    throw v0

    #@93
    :sswitch_93
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    #@96
    move-result v0

    #@97
    sub-int v0, v2, v0

    #@99
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    #@9c
    move-result v1

    #@9d
    sub-int/2addr v0, v1

    #@9e
    move v1, v0

    #@9f
    goto :goto_25

    #@a0
    :sswitch_a0
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    #@a3
    move-result v1

    #@a4
    sub-int v1, v2, v1

    #@a6
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    #@a9
    move-result v2

    #@aa
    sub-int/2addr v1, v2

    #@ab
    goto/16 :goto_25

    #@ad
    :cond_ad
    iget v6, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    #@af
    const/4 v7, 0x0

    #@b0
    cmpl-float v6, v6, v7

    #@b2
    if-lez v6, :cond_bb

    #@b4
    iget v6, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    #@b6
    add-float/2addr v5, v6

    #@b7
    iget v6, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    #@b9
    if-eqz v6, :cond_241

    #@bb
    :cond_bb
    iget v6, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    #@bd
    iget v7, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    #@bf
    add-int/2addr v6, v7

    #@c0
    iget v7, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    #@c2
    const/4 v14, -0x2

    #@c3
    if-ne v7, v14, :cond_100

    #@c5
    sub-int v6, v10, v6

    #@c7
    const/high16 v7, -0x80000000

    #@c9
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@cc
    move-result v6

    #@cd
    :goto_cd
    iget v7, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    #@cf
    const/4 v14, -0x2

    #@d0
    if-ne v7, v14, :cond_117

    #@d2
    const/high16 v7, -0x80000000

    #@d4
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@d7
    move-result v7

    #@d8
    :goto_d8
    invoke-virtual {v13, v6, v7}, Landroid/view/View;->measure(II)V

    #@db
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    #@de
    move-result v6

    #@df
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    #@e2
    move-result v7

    #@e3
    const/high16 v14, -0x80000000

    #@e5
    if-ne v9, v14, :cond_ed

    #@e7
    if-le v7, v4, :cond_ed

    #@e9
    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    #@ec
    move-result v4

    #@ed
    :cond_ed
    sub-int/2addr v3, v6

    #@ee
    if-gez v3, :cond_12c

    #@f0
    const/4 v6, 0x1

    #@f1
    :goto_f1
    iput-boolean v6, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    #@f3
    or-int/2addr v2, v6

    #@f4
    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    #@f6
    if-eqz v0, :cond_241

    #@f8
    iput-object v13, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@fa
    move v0, v2

    #@fb
    move v2, v3

    #@fc
    move v3, v4

    #@fd
    move v4, v5

    #@fe
    goto/16 :goto_63

    #@100
    :cond_100
    iget v7, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    #@102
    const/4 v14, -0x1

    #@103
    if-ne v7, v14, :cond_10e

    #@105
    sub-int v6, v10, v6

    #@107
    const/high16 v7, 0x40000000    # 2.0f

    #@109
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@10c
    move-result v6

    #@10d
    goto :goto_cd

    #@10e
    :cond_10e
    iget v6, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    #@110
    const/high16 v7, 0x40000000    # 2.0f

    #@112
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@115
    move-result v6

    #@116
    goto :goto_cd

    #@117
    :cond_117
    iget v7, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    #@119
    const/4 v14, -0x1

    #@11a
    if-ne v7, v14, :cond_123

    #@11c
    const/high16 v7, 0x40000000    # 2.0f

    #@11e
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@121
    move-result v7

    #@122
    goto :goto_d8

    #@123
    :cond_123
    iget v7, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    #@125
    const/high16 v14, 0x40000000    # 2.0f

    #@127
    invoke-static {v7, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@12a
    move-result v7

    #@12b
    goto :goto_d8

    #@12c
    :cond_12c
    const/4 v6, 0x0

    #@12d
    goto :goto_f1

    #@12e
    :cond_12e
    if-nez v2, :cond_135

    #@130
    const/4 v0, 0x0

    #@131
    cmpl-float v0, v5, v0

    #@133
    if-lez v0, :cond_222

    #@135
    :cond_135
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    #@137
    sub-int v13, v10, v0

    #@139
    const/4 v0, 0x0

    #@13a
    move v9, v0

    #@13b
    :goto_13b
    if-ge v9, v12, :cond_222

    #@13d
    invoke-virtual {p0, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    #@140
    move-result-object v14

    #@141
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    #@144
    move-result v0

    #@145
    const/16 v6, 0x8

    #@147
    if-ne v0, v6, :cond_14d

    #@149
    :cond_149
    :goto_149
    add-int/lit8 v0, v9, 0x1

    #@14b
    move v9, v0

    #@14c
    goto :goto_13b

    #@14d
    :cond_14d
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@150
    move-result-object v0

    #@151
    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    #@153
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    #@156
    move-result v6

    #@157
    const/16 v7, 0x8

    #@159
    if-eq v6, v7, :cond_149

    #@15b
    iget v6, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    #@15d
    if-nez v6, :cond_196

    #@15f
    iget v6, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    #@161
    const/4 v7, 0x0

    #@162
    cmpl-float v6, v6, v7

    #@164
    if-lez v6, :cond_196

    #@166
    const/4 v6, 0x1

    #@167
    move v8, v6

    #@168
    :goto_168
    if-eqz v8, :cond_199

    #@16a
    const/4 v6, 0x0

    #@16b
    move v7, v6

    #@16c
    :goto_16c
    if-eqz v2, :cond_1bf

    #@16e
    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@170
    if-eq v14, v6, :cond_1bf

    #@172
    iget v6, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    #@174
    if-gez v6, :cond_149

    #@176
    if-gt v7, v13, :cond_17f

    #@178
    iget v6, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    #@17a
    const/4 v7, 0x0

    #@17b
    cmpl-float v6, v6, v7

    #@17d
    if-lez v6, :cond_149

    #@17f
    :cond_17f
    if-eqz v8, :cond_1b4

    #@181
    iget v6, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    #@183
    const/4 v7, -0x2

    #@184
    if-ne v6, v7, :cond_19f

    #@186
    const/high16 v0, -0x80000000

    #@188
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@18b
    move-result v0

    #@18c
    :goto_18c
    const/high16 v6, 0x40000000    # 2.0f

    #@18e
    invoke-static {v13, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@191
    move-result v6

    #@192
    invoke-virtual {v14, v6, v0}, Landroid/view/View;->measure(II)V

    #@195
    goto :goto_149

    #@196
    :cond_196
    const/4 v6, 0x0

    #@197
    move v8, v6

    #@198
    goto :goto_168

    #@199
    :cond_199
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    #@19c
    move-result v6

    #@19d
    move v7, v6

    #@19e
    goto :goto_16c

    #@19f
    :cond_19f
    iget v6, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    #@1a1
    const/4 v7, -0x1

    #@1a2
    if-ne v6, v7, :cond_1ab

    #@1a4
    const/high16 v0, 0x40000000    # 2.0f

    #@1a6
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1a9
    move-result v0

    #@1aa
    goto :goto_18c

    #@1ab
    :cond_1ab
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    #@1ad
    const/high16 v6, 0x40000000    # 2.0f

    #@1af
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1b2
    move-result v0

    #@1b3
    goto :goto_18c

    #@1b4
    :cond_1b4
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    #@1b7
    move-result v0

    #@1b8
    const/high16 v6, 0x40000000    # 2.0f

    #@1ba
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1bd
    move-result v0

    #@1be
    goto :goto_18c

    #@1bf
    :cond_1bf
    iget v6, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    #@1c1
    const/4 v8, 0x0

    #@1c2
    cmpl-float v6, v6, v8

    #@1c4
    if-lez v6, :cond_149

    #@1c6
    iget v6, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    #@1c8
    if-nez v6, :cond_200

    #@1ca
    iget v6, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    #@1cc
    const/4 v8, -0x2

    #@1cd
    if-ne v6, v8, :cond_1eb

    #@1cf
    const/high16 v6, -0x80000000

    #@1d1
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1d4
    move-result v6

    #@1d5
    :goto_1d5
    if-eqz v2, :cond_20b

    #@1d7
    iget v8, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    #@1d9
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    #@1db
    add-int/2addr v0, v8

    #@1dc
    sub-int v0, v10, v0

    #@1de
    const/high16 v8, 0x40000000    # 2.0f

    #@1e0
    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1e3
    move-result v8

    #@1e4
    if-eq v7, v0, :cond_149

    #@1e6
    invoke-virtual {v14, v8, v6}, Landroid/view/View;->measure(II)V

    #@1e9
    goto/16 :goto_149

    #@1eb
    :cond_1eb
    iget v6, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    #@1ed
    const/4 v8, -0x1

    #@1ee
    if-ne v6, v8, :cond_1f7

    #@1f0
    const/high16 v6, 0x40000000    # 2.0f

    #@1f2
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1f5
    move-result v6

    #@1f6
    goto :goto_1d5

    #@1f7
    :cond_1f7
    iget v6, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    #@1f9
    const/high16 v8, 0x40000000    # 2.0f

    #@1fb
    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1fe
    move-result v6

    #@1ff
    goto :goto_1d5

    #@200
    :cond_200
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    #@203
    move-result v6

    #@204
    const/high16 v8, 0x40000000    # 2.0f

    #@206
    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@209
    move-result v6

    #@20a
    goto :goto_1d5

    #@20b
    :cond_20b
    const/4 v8, 0x0

    #@20c
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    #@20f
    move-result v8

    #@210
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    #@212
    int-to-float v8, v8

    #@213
    mul-float/2addr v0, v8

    #@214
    div-float/2addr v0, v5

    #@215
    float-to-int v0, v0

    #@216
    add-int/2addr v0, v7

    #@217
    const/high16 v7, 0x40000000    # 2.0f

    #@219
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@21c
    move-result v0

    #@21d
    invoke-virtual {v14, v0, v6}, Landroid/view/View;->measure(II)V

    #@220
    goto/16 :goto_149

    #@222
    :cond_222
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    #@225
    move-result v0

    #@226
    add-int/2addr v0, v4

    #@227
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    #@22a
    move-result v1

    #@22b
    add-int/2addr v0, v1

    #@22c
    invoke-virtual {p0, v11, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->setMeasuredDimension(II)V

    #@22f
    iput-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #@231
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@233
    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    #@236
    move-result v0

    #@237
    if-eqz v0, :cond_240

    #@239
    if-nez v2, :cond_240

    #@23b
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@23d
    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    #@240
    :cond_240
    return-void

    #@241
    :cond_241
    move v0, v2

    #@242
    move v2, v3

    #@243
    move v3, v4

    #@244
    move v4, v5

    #@245
    goto/16 :goto_63

    #@247
    :cond_247
    move v9, v0

    #@248
    move v11, v1

    #@249
    goto/16 :goto_20

    #@24b
    nop

    #@24c
    :sswitch_data_24c
    .sparse-switch
        -0x80000000 -> :sswitch_a0
        0x40000000 -> :sswitch_93
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    #@0
    check-cast p1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    #@2
    invoke-virtual {p1}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@5
    move-result-object v0

    #@6
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@9
    iget-boolean v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    #@b
    if-eqz v0, :cond_15

    #@d
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane()Z

    #@10
    :goto_10
    iget-boolean v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    #@12
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    #@14
    return-void

    #@15
    :cond_15
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane()Z

    #@18
    goto :goto_10
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    #@0
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    #@2
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    #@5
    move-result-object v0

    #@6
    invoke-direct {v1, v0}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isSlideable()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_16

    #@f
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isOpen()Z

    #@12
    move-result v0

    #@13
    :goto_13
    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    #@15
    return-object v1

    #@16
    :cond_16
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    #@18
    goto :goto_13
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    #@0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    #@3
    if-eq p1, p3, :cond_8

    #@5
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    #@8
    :cond_8
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    #@0
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #@2
    if-nez v0, :cond_9

    #@4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@7
    move-result v0

    #@8
    :cond_8
    :goto_8
    return v0

    #@9
    :cond_9
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@b
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    #@e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@11
    move-result v1

    #@12
    const/4 v0, 0x1

    #@13
    and-int/lit16 v1, v1, 0xff

    #@15
    packed-switch v1, :pswitch_data_62

    #@18
    goto :goto_8

    #@19
    :pswitch_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@1c
    move-result v1

    #@1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@20
    move-result v2

    #@21
    iput v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    #@23
    iput v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    #@25
    goto :goto_8

    #@26
    :pswitch_26
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@28
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_8

    #@2e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@31
    move-result v1

    #@32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@35
    move-result v2

    #@36
    iget v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    #@38
    sub-float v3, v1, v3

    #@3a
    iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    #@3c
    sub-float v4, v2, v4

    #@3e
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@40
    invoke-virtual {v5}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    #@43
    move-result v5

    #@44
    mul-float/2addr v3, v3

    #@45
    mul-float/2addr v4, v4

    #@46
    add-float/2addr v3, v4

    #@47
    mul-int v4, v5, v5

    #@49
    int-to-float v4, v4

    #@4a
    cmpg-float v3, v3, v4

    #@4c
    if-gez v3, :cond_8

    #@4e
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@50
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@52
    float-to-int v1, v1

    #@53
    float-to-int v2, v2

    #@54
    invoke-virtual {v3, v4, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    #@57
    move-result v1

    #@58
    if-eqz v1, :cond_8

    #@5a
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@5c
    const/4 v2, 0x0

    #@5d
    invoke-direct {p0, v1, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    #@60
    goto :goto_8

    #@61
    nop

    #@62
    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_19
        :pswitch_26
    .end packed-switch
.end method

.method public openPane()Z
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane(Landroid/view/View;I)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    #@0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    #@3
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInTouchMode()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_14

    #@9
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #@b
    if-nez v0, :cond_14

    #@d
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@f
    if-ne p1, v0, :cond_15

    #@11
    const/4 v0, 0x1

    #@12
    :goto_12
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    #@14
    :cond_14
    return-void

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    goto :goto_12
.end method

.method setAllChildrenVisible()V
    .registers 7

    #@0
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    #@4
    move-result v2

    #@5
    move v0, v1

    #@6
    :goto_6
    if-ge v0, v2, :cond_19

    #@8
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    #@f
    move-result v4

    #@10
    const/4 v5, 0x4

    #@11
    if-ne v4, v5, :cond_16

    #@13
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    #@16
    :cond_16
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_6

    #@19
    :cond_19
    return-void
.end method

.method public setCoveredFadeColor(I)V
    .registers 2

    #@0
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    #@2
    return-void
.end method

.method public setPanelSlideListener(Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;)V
    .registers 2

    #@0
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    #@2
    return-void
.end method

.method public setParallaxDistance(I)V
    .registers 2

    #@0
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    #@2
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->requestLayout()V

    #@5
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    #@3
    return-void
.end method

.method public setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

    #@2
    return-void
.end method

.method public setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

    #@2
    return-void
.end method

.method public setShadowResource(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    #@b
    return-void
.end method

.method public setShadowResourceLeft(I)V
    .registers 3

    #@0
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    #@b
    return-void
.end method

.method public setShadowResourceRight(I)V
    .registers 3

    #@0
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V

    #@b
    return-void
.end method

.method public setSliderFadeColor(I)V
    .registers 2

    #@0
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    #@2
    return-void
.end method

.method public smoothSlideClosed()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane()Z

    #@3
    return-void
.end method

.method public smoothSlideOpen()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane()Z

    #@3
    return-void
.end method

.method smoothSlideTo(FI)Z
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #@3
    if-nez v0, :cond_7

    #@5
    :cond_5
    move v0, v1

    #@6
    :goto_6
    return v0

    #@7
    :cond_7
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    #@a
    move-result v2

    #@b
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@d
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    #@13
    if-eqz v2, :cond_4a

    #@15
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    #@18
    move-result v2

    #@19
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    #@1b
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@1d
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    #@20
    move-result v3

    #@21
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    #@24
    move-result v4

    #@25
    int-to-float v4, v4

    #@26
    add-int/2addr v0, v2

    #@27
    int-to-float v0, v0

    #@28
    iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    #@2a
    int-to-float v2, v2

    #@2b
    mul-float/2addr v2, p1

    #@2c
    add-float/2addr v0, v2

    #@2d
    int-to-float v2, v3

    #@2e
    add-float/2addr v0, v2

    #@2f
    sub-float v0, v4, v0

    #@31
    float-to-int v0, v0

    #@32
    :goto_32
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@34
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@36
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@38
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    #@3b
    move-result v4

    #@3c
    invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    #@3f
    move-result v0

    #@40
    if-eqz v0, :cond_5

    #@42
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->setAllChildrenVisible()V

    #@45
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@48
    const/4 v0, 0x1

    #@49
    goto :goto_6

    #@4a
    :cond_4a
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    #@4d
    move-result v2

    #@4e
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    #@50
    add-int/2addr v0, v2

    #@51
    int-to-float v0, v0

    #@52
    iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    #@54
    int-to-float v2, v2

    #@55
    mul-float/2addr v2, p1

    #@56
    add-float/2addr v0, v2

    #@57
    float-to-int v0, v0

    #@58
    goto :goto_32
.end method

.method updateObscuredViewsVisibility(Landroid/view/View;)V
    .registers 21

    #@0
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    #@3
    move-result v9

    #@4
    if-eqz v9, :cond_4d

    #@6
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    #@9
    move-result v1

    #@a
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    #@d
    move-result v2

    #@e
    sub-int v7, v1, v2

    #@10
    :goto_10
    if-eqz v9, :cond_52

    #@12
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    #@15
    move-result v1

    #@16
    :goto_16
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    #@19
    move-result v10

    #@1a
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getHeight()I

    #@1d
    move-result v11

    #@1e
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    #@21
    move-result v12

    #@22
    if-eqz p1, :cond_5c

    #@24
    invoke-static/range {p1 .. p1}, Landroid/support/v4/widget/SlidingPaneLayout;->viewIsOpaque(Landroid/view/View;)Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_5c

    #@2a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    #@2d
    move-result v2

    #@2e
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    #@31
    move-result v4

    #@32
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    #@35
    move-result v5

    #@36
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    #@39
    move-result v3

    #@3a
    :goto_3a
    const/4 v6, 0x0

    #@3b
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    #@3e
    move-result v13

    #@3f
    move v8, v6

    #@40
    :goto_40
    if-ge v8, v13, :cond_4c

    #@42
    move-object/from16 v0, p0

    #@44
    invoke-virtual {v0, v8}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    #@47
    move-result-object v14

    #@48
    move-object/from16 v0, p1

    #@4a
    if-ne v14, v0, :cond_61

    #@4c
    :cond_4c
    return-void

    #@4d
    :cond_4d
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    #@50
    move-result v7

    #@51
    goto :goto_10

    #@52
    :cond_52
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    #@55
    move-result v1

    #@56
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    #@59
    move-result v2

    #@5a
    sub-int/2addr v1, v2

    #@5b
    goto :goto_16

    #@5c
    :cond_5c
    const/4 v3, 0x0

    #@5d
    const/4 v5, 0x0

    #@5e
    const/4 v4, 0x0

    #@5f
    const/4 v2, 0x0

    #@60
    goto :goto_3a

    #@61
    :cond_61
    if-eqz v9, :cond_9f

    #@63
    move v6, v1

    #@64
    :goto_64
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    #@67
    move-result v15

    #@68
    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    #@6b
    move-result v15

    #@6c
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    #@6f
    move-result v6

    #@70
    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    #@73
    move-result v16

    #@74
    if-eqz v9, :cond_a1

    #@76
    move v6, v7

    #@77
    :goto_77
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    #@7a
    move-result v17

    #@7b
    move/from16 v0, v17

    #@7d
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    #@80
    move-result v6

    #@81
    sub-int v17, v11, v12

    #@83
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    #@86
    move-result v18

    #@87
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    #@8a
    move-result v17

    #@8b
    if-lt v15, v2, :cond_a3

    #@8d
    move/from16 v0, v16

    #@8f
    if-lt v0, v5, :cond_a3

    #@91
    if-gt v6, v4, :cond_a3

    #@93
    move/from16 v0, v17

    #@95
    if-gt v0, v3, :cond_a3

    #@97
    const/4 v6, 0x4

    #@98
    :goto_98
    invoke-virtual {v14, v6}, Landroid/view/View;->setVisibility(I)V

    #@9b
    add-int/lit8 v6, v8, 0x1

    #@9d
    move v8, v6

    #@9e
    goto :goto_40

    #@9f
    :cond_9f
    move v6, v7

    #@a0
    goto :goto_64

    #@a1
    :cond_a1
    move v6, v1

    #@a2
    goto :goto_77

    #@a3
    :cond_a3
    const/4 v6, 0x0

    #@a4
    goto :goto_98
.end method
