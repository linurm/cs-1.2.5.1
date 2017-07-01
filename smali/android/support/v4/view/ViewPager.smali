.class public Landroid/support/v4/view/ViewPager;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewPager$Decor;,
        Landroid/support/v4/view/ViewPager$ItemInfo;,
        Landroid/support/v4/view/ViewPager$LayoutParams;,
        Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;,
        Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;,
        Landroid/support/v4/view/ViewPager$OnPageChangeListener;,
        Landroid/support/v4/view/ViewPager$PageTransformer;,
        Landroid/support/v4/view/ViewPager$PagerObserver;,
        Landroid/support/v4/view/ViewPager$SavedState;,
        Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;,
        Landroid/support/v4/view/ViewPager$ViewPositionComparator;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/support/v4/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_ATTRS:[I

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Landroid/support/v4/view/ViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mIgnoreGutter:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

.field private final mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


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
    sput-object v0, Landroid/support/v4/view/ViewPager;->LAYOUT_ATTRS:[I

    #@b
    new-instance v0, Landroid/support/v4/view/ViewPager$1;

    #@d
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$1;-><init>()V

    #@10
    sput-object v0, Landroid/support/v4/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    #@12
    new-instance v0, Landroid/support/v4/view/ViewPager$2;

    #@14
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$2;-><init>()V

    #@17
    sput-object v0, Landroid/support/v4/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    #@19
    new-instance v0, Landroid/support/v4/view/ViewPager$ViewPositionComparator;

    #@1b
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ViewPositionComparator;-><init>()V

    #@1e
    sput-object v0, Landroid/support/v4/view/ViewPager;->sPositionComparator:Landroid/support/v4/view/ViewPager$ViewPositionComparator;

    #@20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    #@0
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v1, -0x1

    #@4
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    #@7
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@e
    new-instance v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@10
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    #@13
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

    #@15
    new-instance v0, Landroid/graphics/Rect;

    #@17
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@1a
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    #@1c
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    #@1e
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    #@20
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    #@22
    const v0, -0x800001

    #@25
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    #@27
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    #@2a
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    #@2c
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    #@2e
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #@30
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    #@32
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mNeedCalculatePageOffsets:Z

    #@34
    new-instance v0, Landroid/support/v4/view/ViewPager$3;

    #@36
    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager$3;-><init>(Landroid/support/v4/view/ViewPager;)V

    #@39
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    #@3b
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    #@3d
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->initViewPager()V

    #@40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    #@0
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v1, -0x1

    #@4
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@7
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@e
    new-instance v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@10
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    #@13
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

    #@15
    new-instance v0, Landroid/graphics/Rect;

    #@17
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@1a
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    #@1c
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    #@1e
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    #@20
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    #@22
    const v0, -0x800001

    #@25
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    #@27
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    #@2a
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    #@2c
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    #@2e
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #@30
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    #@32
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mNeedCalculatePageOffsets:Z

    #@34
    new-instance v0, Landroid/support/v4/view/ViewPager$3;

    #@36
    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager$3;-><init>(Landroid/support/v4/view/ViewPager;)V

    #@39
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    #@3b
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    #@3d
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->initViewPager()V

    #@40
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/view/ViewPager;I)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    #@3
    return-void
.end method

.method static synthetic access$200(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@2
    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/view/ViewPager;)I
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@2
    return v0
.end method

.method static synthetic access$400()[I
    .registers 1

    #@0
    sget-object v0, Landroid/support/v4/view/ViewPager;->LAYOUT_ATTRS:[I

    #@2
    return-object v0
.end method

.method private calculatePageOffsets(Landroid/support/v4/view/ViewPager$ItemInfo;ILandroid/support/v4/view/ViewPager$ItemInfo;)V
    .registers 16

    #@0
    const/4 v2, 0x0

    #@1
    const/high16 v10, 0x3f800000    # 1.0f

    #@3
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@5
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    #@8
    move-result v7

    #@9
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    #@c
    move-result v0

    #@d
    if-lez v0, :cond_5d

    #@f
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #@11
    int-to-float v1, v1

    #@12
    int-to-float v0, v0

    #@13
    div-float v0, v1, v0

    #@15
    move v6, v0

    #@16
    :goto_16
    if-eqz p3, :cond_d3

    #@18
    iget v4, p3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@1a
    iget v0, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@1c
    if-ge v4, v0, :cond_7d

    #@1e
    iget v0, p3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@20
    iget v1, p3, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@22
    add-float/2addr v0, v1

    #@23
    add-float v1, v0, v6

    #@25
    add-int/lit8 v0, v4, 0x1

    #@27
    move v3, v0

    #@28
    move v4, v1

    #@29
    move v1, v2

    #@2a
    :goto_2a
    iget v0, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@2c
    if-gt v3, v0, :cond_d3

    #@2e
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@33
    move-result v0

    #@34
    if-ge v1, v0, :cond_d3

    #@36
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v0

    #@3c
    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@3e
    move v11, v1

    #@3f
    move-object v1, v0

    #@40
    move v0, v11

    #@41
    :goto_41
    iget v5, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@43
    if-le v3, v5, :cond_172

    #@45
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@47
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@4a
    move-result v5

    #@4b
    add-int/lit8 v5, v5, -0x1

    #@4d
    if-ge v0, v5, :cond_172

    #@4f
    add-int/lit8 v1, v0, 0x1

    #@51
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@53
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@56
    move-result-object v0

    #@57
    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@59
    move v11, v1

    #@5a
    move-object v1, v0

    #@5b
    move v0, v11

    #@5c
    goto :goto_41

    #@5d
    :cond_5d
    const/4 v0, 0x0

    #@5e
    move v6, v0

    #@5f
    goto :goto_16

    #@60
    :goto_60
    iget v5, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@62
    if-ge v4, v5, :cond_71

    #@64
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@66
    invoke-virtual {v5, v4}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    #@69
    move-result v5

    #@6a
    add-float/2addr v5, v6

    #@6b
    add-float/2addr v5, v3

    #@6c
    add-int/lit8 v3, v4, 0x1

    #@6e
    move v4, v3

    #@6f
    move v3, v5

    #@70
    goto :goto_60

    #@71
    :cond_71
    iput v3, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@73
    iget v1, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@75
    add-float/2addr v1, v6

    #@76
    add-float/2addr v3, v1

    #@77
    add-int/lit8 v1, v4, 0x1

    #@79
    move v4, v3

    #@7a
    move v3, v1

    #@7b
    move v1, v0

    #@7c
    goto :goto_2a

    #@7d
    :cond_7d
    iget v0, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@7f
    if-le v4, v0, :cond_d3

    #@81
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@83
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@86
    move-result v0

    #@87
    add-int/lit8 v0, v0, -0x1

    #@89
    iget v3, p3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@8b
    add-int/lit8 v1, v4, -0x1

    #@8d
    move v4, v3

    #@8e
    move v3, v1

    #@8f
    move v1, v0

    #@90
    :goto_90
    iget v0, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@92
    if-lt v3, v0, :cond_d3

    #@94
    if-ltz v1, :cond_d3

    #@96
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@98
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9b
    move-result-object v0

    #@9c
    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@9e
    move v11, v1

    #@9f
    move-object v1, v0

    #@a0
    move v0, v11

    #@a1
    :goto_a1
    iget v5, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@a3
    if-ge v3, v5, :cond_16d

    #@a5
    if-lez v0, :cond_16d

    #@a7
    add-int/lit8 v1, v0, -0x1

    #@a9
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@ab
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@ae
    move-result-object v0

    #@af
    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@b1
    move v11, v1

    #@b2
    move-object v1, v0

    #@b3
    move v0, v11

    #@b4
    goto :goto_a1

    #@b5
    :goto_b5
    iget v5, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@b7
    if-le v4, v5, :cond_c7

    #@b9
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@bb
    invoke-virtual {v5, v4}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    #@be
    move-result v5

    #@bf
    add-float/2addr v5, v6

    #@c0
    sub-float v5, v3, v5

    #@c2
    add-int/lit8 v3, v4, -0x1

    #@c4
    move v4, v3

    #@c5
    move v3, v5

    #@c6
    goto :goto_b5

    #@c7
    :cond_c7
    iget v5, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@c9
    add-float/2addr v5, v6

    #@ca
    sub-float/2addr v3, v5

    #@cb
    iput v3, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@cd
    add-int/lit8 v1, v4, -0x1

    #@cf
    move v4, v3

    #@d0
    move v3, v1

    #@d1
    move v1, v0

    #@d2
    goto :goto_90

    #@d3
    :cond_d3
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@d5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@d8
    move-result v5

    #@d9
    iget v3, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@db
    iget v0, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@dd
    add-int/lit8 v1, v0, -0x1

    #@df
    iget v0, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@e1
    if-nez v0, :cond_111

    #@e3
    iget v0, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@e5
    :goto_e5
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    #@e7
    iget v0, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@e9
    add-int/lit8 v4, v7, -0x1

    #@eb
    if-ne v0, v4, :cond_115

    #@ed
    iget v0, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@ef
    iget v4, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@f1
    add-float/2addr v0, v4

    #@f2
    sub-float/2addr v0, v10

    #@f3
    :goto_f3
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    #@f5
    add-int/lit8 v0, p2, -0x1

    #@f7
    move v4, v0

    #@f8
    :goto_f8
    if-ltz v4, :cond_12b

    #@fa
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@fc
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@ff
    move-result-object v0

    #@100
    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@102
    :goto_102
    iget v8, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@104
    if-le v1, v8, :cond_119

    #@106
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@108
    invoke-virtual {v8, v1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    #@10b
    move-result v8

    #@10c
    add-float/2addr v8, v6

    #@10d
    sub-float/2addr v3, v8

    #@10e
    add-int/lit8 v1, v1, -0x1

    #@110
    goto :goto_102

    #@111
    :cond_111
    const v0, -0x800001

    #@114
    goto :goto_e5

    #@115
    :cond_115
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    #@118
    goto :goto_f3

    #@119
    :cond_119
    iget v8, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@11b
    add-float/2addr v8, v6

    #@11c
    sub-float/2addr v3, v8

    #@11d
    iput v3, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@11f
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@121
    if-nez v0, :cond_125

    #@123
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    #@125
    :cond_125
    add-int/lit8 v0, v4, -0x1

    #@127
    add-int/lit8 v1, v1, -0x1

    #@129
    move v4, v0

    #@12a
    goto :goto_f8

    #@12b
    :cond_12b
    iget v0, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@12d
    iget v1, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@12f
    add-float/2addr v0, v1

    #@130
    add-float v1, v0, v6

    #@132
    iget v0, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@134
    add-int/lit8 v3, v0, 0x1

    #@136
    add-int/lit8 v0, p2, 0x1

    #@138
    move v4, v0

    #@139
    :goto_139
    if-ge v4, v5, :cond_16a

    #@13b
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@13d
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@140
    move-result-object v0

    #@141
    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@143
    :goto_143
    iget v8, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@145
    if-ge v3, v8, :cond_152

    #@147
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@149
    invoke-virtual {v8, v3}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    #@14c
    move-result v8

    #@14d
    add-float/2addr v8, v6

    #@14e
    add-float/2addr v1, v8

    #@14f
    add-int/lit8 v3, v3, 0x1

    #@151
    goto :goto_143

    #@152
    :cond_152
    iget v8, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@154
    add-int/lit8 v9, v7, -0x1

    #@156
    if-ne v8, v9, :cond_15e

    #@158
    iget v8, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@15a
    add-float/2addr v8, v1

    #@15b
    sub-float/2addr v8, v10

    #@15c
    iput v8, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    #@15e
    :cond_15e
    iput v1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@160
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@162
    add-float/2addr v0, v6

    #@163
    add-float/2addr v1, v0

    #@164
    add-int/lit8 v0, v4, 0x1

    #@166
    add-int/lit8 v3, v3, 0x1

    #@168
    move v4, v0

    #@169
    goto :goto_139

    #@16a
    :cond_16a
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mNeedCalculatePageOffsets:Z

    #@16c
    return-void

    #@16d
    :cond_16d
    move v11, v3

    #@16e
    move v3, v4

    #@16f
    move v4, v11

    #@170
    goto/16 :goto_b5

    #@172
    :cond_172
    move v11, v3

    #@173
    move v3, v4

    #@174
    move v4, v11

    #@175
    goto/16 :goto_60
.end method

.method private completeScroll(Z)V
    .registers 9

    #@0
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    #@4
    const/4 v1, 0x2

    #@5
    if-ne v0, v1, :cond_4d

    #@7
    move v0, v4

    #@8
    :goto_8
    if-eqz v0, :cond_2d

    #@a
    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    #@d
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@f
    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    #@12
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    #@15
    move-result v1

    #@16
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    #@19
    move-result v2

    #@1a
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@1c
    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    #@1f
    move-result v5

    #@20
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@22
    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    #@25
    move-result v6

    #@26
    if-ne v1, v5, :cond_2a

    #@28
    if-eq v2, v6, :cond_2d

    #@2a
    :cond_2a
    invoke-virtual {p0, v5, v6}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    #@2d
    :cond_2d
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    #@2f
    move v1, v0

    #@30
    move v2, v3

    #@31
    :goto_31
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@36
    move-result v0

    #@37
    if-ge v2, v0, :cond_4f

    #@39
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@3b
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@41
    iget-boolean v5, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    #@43
    if-eqz v5, :cond_5f

    #@45
    iput-boolean v3, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    #@47
    move v0, v4

    #@48
    :goto_48
    add-int/lit8 v1, v2, 0x1

    #@4a
    move v2, v1

    #@4b
    move v1, v0

    #@4c
    goto :goto_31

    #@4d
    :cond_4d
    move v0, v3

    #@4e
    goto :goto_8

    #@4f
    :cond_4f
    if-eqz v1, :cond_58

    #@51
    if-eqz p1, :cond_59

    #@53
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    #@55
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    #@58
    :cond_58
    :goto_58
    return-void

    #@59
    :cond_59
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    #@5b
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@5e
    goto :goto_58

    #@5f
    :cond_5f
    move v0, v1

    #@60
    goto :goto_48
.end method

.method private determineTargetPage(IFII)I
    .registers 8

    #@0
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    #@3
    move-result v0

    #@4
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mFlingDistance:I

    #@6
    if-le v0, v1, :cond_43

    #@8
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    #@b
    move-result v0

    #@c
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mMinimumVelocity:I

    #@e
    if-le v0, v1, :cond_43

    #@10
    if-lez p3, :cond_40

    #@12
    :goto_12
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v0

    #@18
    if-lez v0, :cond_3f

    #@1a
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@1c
    const/4 v1, 0x0

    #@1d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@23
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@25
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@2a
    move-result v2

    #@2b
    add-int/lit8 v2, v2, -0x1

    #@2d
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v1

    #@31
    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@33
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@35
    iget v1, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@37
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    #@3a
    move-result v1

    #@3b
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@3e
    move-result p1

    #@3f
    :cond_3f
    return p1

    #@40
    :cond_40
    add-int/lit8 p1, p1, 0x1

    #@42
    goto :goto_12

    #@43
    :cond_43
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@45
    if-lt p1, v0, :cond_4f

    #@47
    const v0, 0x3ecccccd    # 0.4f

    #@4a
    :goto_4a
    int-to-float v1, p1

    #@4b
    add-float/2addr v1, p2

    #@4c
    add-float/2addr v0, v1

    #@4d
    float-to-int p1, v0

    #@4e
    goto :goto_12

    #@4f
    :cond_4f
    const v0, 0x3f19999a    # 0.6f

    #@52
    goto :goto_4a
.end method

.method private enableLayers(Z)V
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    #@4
    move-result v3

    #@5
    move v2, v1

    #@6
    :goto_6
    if-ge v2, v3, :cond_19

    #@8
    if-eqz p1, :cond_17

    #@a
    const/4 v0, 0x2

    #@b
    :goto_b
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    #@e
    move-result-object v4

    #@f
    const/4 v5, 0x0

    #@10
    invoke-static {v4, v0, v5}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    #@13
    add-int/lit8 v0, v2, 0x1

    #@15
    move v2, v0

    #@16
    goto :goto_6

    #@17
    :cond_17
    move v0, v1

    #@18
    goto :goto_b

    #@19
    :cond_19
    return-void
.end method

.method private endDrag()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #@3
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    #@5
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@7
    if-eqz v0, :cond_11

    #@9
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@b
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    #@e
    const/4 v0, 0x0

    #@f
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@11
    :cond_11
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_8

    #@3
    new-instance p1, Landroid/graphics/Rect;

    #@5
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    #@8
    :cond_8
    if-nez p2, :cond_e

    #@a
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    #@d
    :cond_d
    return-object p1

    #@e
    :cond_e
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    #@11
    move-result v0

    #@12
    iput v0, p1, Landroid/graphics/Rect;->left:I

    #@14
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    #@17
    move-result v0

    #@18
    iput v0, p1, Landroid/graphics/Rect;->right:I

    #@1a
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    #@1d
    move-result v0

    #@1e
    iput v0, p1, Landroid/graphics/Rect;->top:I

    #@20
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    #@23
    move-result v0

    #@24
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    #@26
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@29
    move-result-object v0

    #@2a
    :goto_2a
    instance-of v1, v0, Landroid/view/ViewGroup;

    #@2c
    if-eqz v1, :cond_d

    #@2e
    if-eq v0, p0, :cond_d

    #@30
    check-cast v0, Landroid/view/ViewGroup;

    #@32
    iget v1, p1, Landroid/graphics/Rect;->left:I

    #@34
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    #@37
    move-result v2

    #@38
    add-int/2addr v1, v2

    #@39
    iput v1, p1, Landroid/graphics/Rect;->left:I

    #@3b
    iget v1, p1, Landroid/graphics/Rect;->right:I

    #@3d
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    #@40
    move-result v2

    #@41
    add-int/2addr v1, v2

    #@42
    iput v1, p1, Landroid/graphics/Rect;->right:I

    #@44
    iget v1, p1, Landroid/graphics/Rect;->top:I

    #@46
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    #@49
    move-result v2

    #@4a
    add-int/2addr v1, v2

    #@4b
    iput v1, p1, Landroid/graphics/Rect;->top:I

    #@4d
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    #@4f
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    #@52
    move-result v2

    #@53
    add-int/2addr v1, v2

    #@54
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    #@56
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    #@59
    move-result-object v0

    #@5a
    goto :goto_2a
.end method

.method private getClientWidth()I
    .registers 3

    #@0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    #@7
    move-result v1

    #@8
    sub-int/2addr v0, v1

    #@9
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    #@c
    move-result v1

    #@d
    sub-int/2addr v0, v1

    #@e
    return v0
.end method

.method private infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;
    .registers 13

    #@0
    const/4 v5, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    #@5
    move-result v1

    #@6
    if-lez v1, :cond_6b

    #@8
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    #@b
    move-result v0

    #@c
    int-to-float v0, v0

    #@d
    int-to-float v3, v1

    #@e
    div-float/2addr v0, v3

    #@f
    move v9, v0

    #@10
    :goto_10
    if-lez v1, :cond_7c

    #@12
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #@14
    int-to-float v0, v0

    #@15
    int-to-float v1, v1

    #@16
    div-float/2addr v0, v1

    #@17
    move v1, v0

    #@18
    :goto_18
    const/4 v3, -0x1

    #@19
    const/4 v4, 0x1

    #@1a
    const/4 v0, 0x0

    #@1b
    move v6, v5

    #@1c
    move v7, v2

    #@1d
    move v8, v2

    #@1e
    move-object v2, v0

    #@1f
    :goto_1f
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@24
    move-result v0

    #@25
    if-ge v6, v0, :cond_6a

    #@27
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@2f
    if-nez v4, :cond_7a

    #@31
    iget v10, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@33
    add-int/lit8 v11, v3, 0x1

    #@35
    if-eq v10, v11, :cond_7a

    #@37
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

    #@39
    add-float/2addr v7, v8

    #@3a
    add-float/2addr v7, v1

    #@3b
    iput v7, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@3d
    add-int/lit8 v3, v3, 0x1

    #@3f
    iput v3, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@41
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@43
    iget v7, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@45
    invoke-virtual {v3, v7}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    #@48
    move-result v3

    #@49
    iput v3, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@4b
    add-int/lit8 v6, v6, -0x1

    #@4d
    move v3, v6

    #@4e
    :goto_4e
    iget v6, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@50
    iget v7, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@52
    if-nez v4, :cond_58

    #@54
    cmpl-float v4, v9, v6

    #@56
    if-ltz v4, :cond_6a

    #@58
    :cond_58
    add-float v2, v7, v6

    #@5a
    add-float/2addr v2, v1

    #@5b
    cmpg-float v2, v9, v2

    #@5d
    if-ltz v2, :cond_69

    #@5f
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@61
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@64
    move-result v2

    #@65
    add-int/lit8 v2, v2, -0x1

    #@67
    if-ne v3, v2, :cond_6d

    #@69
    :cond_69
    move-object v2, v0

    #@6a
    :cond_6a
    return-object v2

    #@6b
    :cond_6b
    move v9, v2

    #@6c
    goto :goto_10

    #@6d
    :cond_6d
    iget v2, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@6f
    iget v4, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@71
    add-int/lit8 v3, v3, 0x1

    #@73
    move v7, v6

    #@74
    move v8, v4

    #@75
    move v4, v5

    #@76
    move v6, v3

    #@77
    move v3, v2

    #@78
    move-object v2, v0

    #@79
    goto :goto_1f

    #@7a
    :cond_7a
    move v3, v6

    #@7b
    goto :goto_4e

    #@7c
    :cond_7c
    move v1, v2

    #@7d
    goto :goto_18
.end method

.method private isGutterDrag(FF)Z
    .registers 6

    #@0
    const/4 v2, 0x0

    #@1
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mGutterSize:I

    #@3
    int-to-float v0, v0

    #@4
    cmpg-float v0, p1, v0

    #@6
    if-gez v0, :cond_c

    #@8
    cmpl-float v0, p2, v2

    #@a
    if-gtz v0, :cond_1c

    #@c
    :cond_c
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    #@f
    move-result v0

    #@10
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mGutterSize:I

    #@12
    sub-int/2addr v0, v1

    #@13
    int-to-float v0, v0

    #@14
    cmpl-float v0, p1, v0

    #@16
    if-lez v0, :cond_1e

    #@18
    cmpg-float v0, p2, v2

    #@1a
    if-gez v0, :cond_1e

    #@1c
    :cond_1c
    const/4 v0, 0x1

    #@1d
    :goto_1d
    return v0

    #@1e
    :cond_1e
    const/4 v0, 0x0

    #@1f
    goto :goto_1d
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
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #@a
    if-ne v1, v2, :cond_24

    #@c
    if-nez v0, :cond_25

    #@e
    const/4 v0, 0x1

    #@f
    :goto_f
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    #@12
    move-result v1

    #@13
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@15
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #@1b
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1d
    if-eqz v0, :cond_24

    #@1f
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@21
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    #@24
    :cond_24
    return-void

    #@25
    :cond_25
    const/4 v0, 0x0

    #@26
    goto :goto_f
.end method

.method private pageScrolled(I)Z
    .registers 10

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_1b

    #@9
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    #@b
    const/4 v1, 0x0

    #@c
    invoke-virtual {p0, v0, v1, v0}, Landroid/support/v4/view/ViewPager;->onPageScrolled(IFI)V

    #@f
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    #@11
    if-nez v1, :cond_4d

    #@13
    new-instance v0, Ljava/lang/IllegalStateException;

    #@15
    const-string v1, "onPageScrolled did not call superclass implementation"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    :cond_1b
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    #@22
    move-result v2

    #@23
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #@25
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #@27
    int-to-float v4, v4

    #@28
    int-to-float v5, v2

    #@29
    div-float/2addr v4, v5

    #@2a
    iget v5, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@2c
    int-to-float v6, p1

    #@2d
    int-to-float v7, v2

    #@2e
    div-float/2addr v6, v7

    #@2f
    iget v7, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@31
    sub-float/2addr v6, v7

    #@32
    iget v1, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@34
    add-float/2addr v1, v4

    #@35
    div-float v1, v6, v1

    #@37
    add-int/2addr v2, v3

    #@38
    int-to-float v2, v2

    #@39
    mul-float/2addr v2, v1

    #@3a
    float-to-int v2, v2

    #@3b
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    #@3d
    invoke-virtual {p0, v5, v1, v2}, Landroid/support/v4/view/ViewPager;->onPageScrolled(IFI)V

    #@40
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    #@42
    if-nez v0, :cond_4c

    #@44
    new-instance v0, Ljava/lang/IllegalStateException;

    #@46
    const-string v1, "onPageScrolled did not call superclass implementation"

    #@48
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v0

    #@4c
    :cond_4c
    const/4 v0, 0x1

    #@4d
    :cond_4d
    return v0
.end method

.method private performDrag(F)Z
    .registers 12

    #@0
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@4
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@6
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    #@9
    move-result v1

    #@a
    int-to-float v1, v1

    #@b
    sub-float/2addr v0, p1

    #@c
    add-float v5, v1, v0

    #@e
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    #@11
    move-result v7

    #@12
    int-to-float v0, v7

    #@13
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    #@15
    mul-float v4, v0, v1

    #@17
    int-to-float v0, v7

    #@18
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    #@1a
    mul-float v6, v0, v1

    #@1c
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@24
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@26
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@2b
    move-result v8

    #@2c
    add-int/lit8 v8, v8, -0x1

    #@2e
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v1

    #@32
    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@34
    iget v8, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@36
    if-eqz v8, :cond_93

    #@38
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@3a
    int-to-float v4, v7

    #@3b
    mul-float/2addr v0, v4

    #@3c
    move v4, v0

    #@3d
    move v0, v2

    #@3e
    :goto_3e
    iget v8, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@40
    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@42
    invoke-virtual {v9}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    #@45
    move-result v9

    #@46
    add-int/lit8 v9, v9, -0x1

    #@48
    if-eq v8, v9, :cond_91

    #@4a
    iget v1, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@4c
    int-to-float v3, v7

    #@4d
    mul-float/2addr v1, v3

    #@4e
    move v3, v2

    #@4f
    :goto_4f
    cmpg-float v6, v5, v4

    #@51
    if-gez v6, :cond_79

    #@53
    if-eqz v0, :cond_63

    #@55
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #@57
    sub-float v1, v4, v5

    #@59
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    #@5c
    move-result v1

    #@5d
    int-to-float v2, v7

    #@5e
    div-float/2addr v1, v2

    #@5f
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    #@62
    move-result v2

    #@63
    :cond_63
    :goto_63
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@65
    float-to-int v1, v4

    #@66
    int-to-float v1, v1

    #@67
    sub-float v1, v4, v1

    #@69
    add-float/2addr v0, v1

    #@6a
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@6c
    float-to-int v0, v4

    #@6d
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    #@70
    move-result v1

    #@71
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    #@74
    float-to-int v0, v4

    #@75
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    #@78
    return v2

    #@79
    :cond_79
    cmpl-float v0, v5, v1

    #@7b
    if-lez v0, :cond_8f

    #@7d
    if-eqz v3, :cond_8d

    #@7f
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #@81
    sub-float v2, v5, v1

    #@83
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    #@86
    move-result v2

    #@87
    int-to-float v3, v7

    #@88
    div-float/2addr v2, v3

    #@89
    invoke-virtual {v0, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    #@8c
    move-result v2

    #@8d
    :cond_8d
    move v4, v1

    #@8e
    goto :goto_63

    #@8f
    :cond_8f
    move v4, v5

    #@90
    goto :goto_63

    #@91
    :cond_91
    move v1, v6

    #@92
    goto :goto_4f

    #@93
    :cond_93
    move v0, v3

    #@94
    goto :goto_3e
.end method

.method private recomputeScrollPosition(IIII)V
    .registers 12

    #@0
    const/4 v2, 0x0

    #@1
    if-lez p2, :cond_5d

    #@3
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_5d

    #@b
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    #@e
    move-result v0

    #@f
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    #@12
    move-result v1

    #@13
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    #@16
    move-result v3

    #@17
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    #@1a
    move-result v4

    #@1b
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    #@1e
    move-result v5

    #@1f
    int-to-float v5, v5

    #@20
    sub-int v3, p2, v3

    #@22
    sub-int/2addr v3, v4

    #@23
    add-int/2addr v3, p4

    #@24
    int-to-float v3, v3

    #@25
    div-float v3, v5, v3

    #@27
    sub-int v0, p1, v0

    #@29
    sub-int/2addr v0, v1

    #@2a
    add-int/2addr v0, p3

    #@2b
    int-to-float v0, v0

    #@2c
    mul-float/2addr v0, v3

    #@2d
    float-to-int v1, v0

    #@2e
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    #@31
    move-result v0

    #@32
    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    #@35
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@37
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    #@3a
    move-result v0

    #@3b
    if-nez v0, :cond_5c

    #@3d
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@3f
    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    #@42
    move-result v4

    #@43
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@45
    invoke-virtual {v0}, Landroid/widget/Scroller;->timePassed()I

    #@48
    move-result v5

    #@49
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@4b
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    #@4e
    move-result-object v3

    #@4f
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@51
    iget v3, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@53
    int-to-float v6, p1

    #@54
    mul-float/2addr v3, v6

    #@55
    float-to-int v3, v3

    #@56
    sub-int v5, v4, v5

    #@58
    move v4, v2

    #@59
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    #@5c
    :cond_5c
    :goto_5c
    return-void

    #@5d
    :cond_5d
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@5f
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    #@62
    move-result-object v0

    #@63
    if-eqz v0, :cond_8c

    #@65
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@67
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    #@69
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    #@6c
    move-result v0

    #@6d
    :goto_6d
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    #@70
    move-result v1

    #@71
    sub-int v1, p1, v1

    #@73
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    #@76
    move-result v3

    #@77
    sub-int/2addr v1, v3

    #@78
    int-to-float v1, v1

    #@79
    mul-float/2addr v0, v1

    #@7a
    float-to-int v0, v0

    #@7b
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    #@7e
    move-result v1

    #@7f
    if-eq v0, v1, :cond_5c

    #@81
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    #@84
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    #@87
    move-result v1

    #@88
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    #@8b
    goto :goto_5c

    #@8c
    :cond_8c
    const/4 v0, 0x0

    #@8d
    goto :goto_6d
.end method

.method private removeNonDecorViews()V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    move v1, v0

    #@2
    :goto_2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    #@5
    move-result v0

    #@6
    if-ge v1, v0, :cond_1f

    #@8
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    #@12
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    #@14
    if-nez v0, :cond_1b

    #@16
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->removeViewAt(I)V

    #@19
    add-int/lit8 v1, v1, -0x1

    #@1b
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    #@1d
    move v1, v0

    #@1e
    goto :goto_2

    #@1f
    :cond_1f
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .registers 3

    #@0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_9

    #@6
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@9
    :cond_9
    return-void
.end method

.method private scrollToItem(IZIZ)V
    .registers 10

    #@0
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    #@4
    move-result-object v0

    #@5
    if-eqz v0, :cond_58

    #@7
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    #@a
    move-result v2

    #@b
    int-to-float v2, v2

    #@c
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    #@e
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@10
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    #@12
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    #@15
    move-result v0

    #@16
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    #@19
    move-result v0

    #@1a
    mul-float/2addr v0, v2

    #@1b
    float-to-int v0, v0

    #@1c
    :goto_1c
    if-eqz p2, :cond_38

    #@1e
    invoke-virtual {p0, v0, v1, p3}, Landroid/support/v4/view/ViewPager;->smoothScrollTo(III)V

    #@21
    if-eqz p4, :cond_2c

    #@23
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@25
    if-eqz v0, :cond_2c

    #@27
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@29
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    #@2c
    :cond_2c
    if-eqz p4, :cond_37

    #@2e
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@30
    if-eqz v0, :cond_37

    #@32
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@34
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    #@37
    :cond_37
    :goto_37
    return-void

    #@38
    :cond_38
    if-eqz p4, :cond_43

    #@3a
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@3c
    if-eqz v2, :cond_43

    #@3e
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@40
    invoke-interface {v2, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    #@43
    :cond_43
    if-eqz p4, :cond_4e

    #@45
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@47
    if-eqz v2, :cond_4e

    #@49
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@4b
    invoke-interface {v2, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    #@4e
    :cond_4e
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    #@51
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    #@54
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    #@57
    goto :goto_37

    #@58
    :cond_58
    move v0, v1

    #@59
    goto :goto_1c
.end method

.method private setScrollState(I)V
    .registers 3

    #@0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    #@2
    if-ne v0, p1, :cond_5

    #@4
    :cond_4
    :goto_4
    return-void

    #@5
    :cond_5
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    #@7
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    #@9
    if-eqz v0, :cond_11

    #@b
    if-eqz p1, :cond_1b

    #@d
    const/4 v0, 0x1

    #@e
    :goto_e
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->enableLayers(Z)V

    #@11
    :cond_11
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@13
    if-eqz v0, :cond_4

    #@15
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@17
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    #@1a
    goto :goto_4

    #@1b
    :cond_1b
    const/4 v0, 0x0

    #@1c
    goto :goto_e
.end method

.method private setScrollingCacheEnabled(Z)V
    .registers 3

    #@0
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mScrollingCacheEnabled:Z

    #@2
    if-eq v0, p1, :cond_6

    #@4
    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->mScrollingCacheEnabled:Z

    #@6
    :cond_6
    return-void
.end method

.method private sortChildDrawingOrder()V
    .registers 5

    #@0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    #@2
    if-eqz v0, :cond_2f

    #@4
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    #@6
    if-nez v0, :cond_22

    #@8
    new-instance v0, Ljava/util/ArrayList;

    #@a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    #@f
    :goto_f
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    #@12
    move-result v1

    #@13
    const/4 v0, 0x0

    #@14
    :goto_14
    if-ge v0, v1, :cond_28

    #@16
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    #@19
    move-result-object v2

    #@1a
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1f
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_14

    #@22
    :cond_22
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@27
    goto :goto_f

    #@28
    :cond_28
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    #@2a
    sget-object v1, Landroid/support/v4/view/ViewPager;->sPositionComparator:Landroid/support/v4/view/ViewPager$ViewPositionComparator;

    #@2c
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@2f
    :cond_2f
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    #@0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v1

    #@4
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDescendantFocusability()I

    #@7
    move-result v2

    #@8
    const/high16 v0, 0x60000

    #@a
    if-eq v2, v0, :cond_2f

    #@c
    const/4 v0, 0x0

    #@d
    :goto_d
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    #@10
    move-result v3

    #@11
    if-ge v0, v3, :cond_2f

    #@13
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    #@1a
    move-result v4

    #@1b
    if-nez v4, :cond_2c

    #@1d
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    #@20
    move-result-object v4

    #@21
    if-eqz v4, :cond_2c

    #@23
    iget v4, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@25
    iget v5, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@27
    if-ne v4, v5, :cond_2c

    #@29
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    #@2c
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_d

    #@2f
    :cond_2f
    const/high16 v0, 0x40000

    #@31
    if-ne v2, v0, :cond_39

    #@33
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@36
    move-result v0

    #@37
    if-ne v1, v0, :cond_3f

    #@39
    :cond_39
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusable()Z

    #@3c
    move-result v0

    #@3d
    if-nez v0, :cond_40

    #@3f
    :cond_3f
    :goto_3f
    return-void

    #@40
    :cond_40
    and-int/lit8 v0, p3, 0x1

    #@42
    const/4 v1, 0x1

    #@43
    if-ne v0, v1, :cond_51

    #@45
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isInTouchMode()Z

    #@48
    move-result v0

    #@49
    if-eqz v0, :cond_51

    #@4b
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusableInTouchMode()Z

    #@4e
    move-result v0

    #@4f
    if-eqz v0, :cond_3f

    #@51
    :cond_51
    if-eqz p1, :cond_3f

    #@53
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@56
    goto :goto_3f
.end method

.method addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;
    .registers 5

    #@0
    new-instance v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@2
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    #@5
    iput p1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@7
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@9
    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    iput-object v1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #@f
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@11
    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    #@14
    move-result v1

    #@15
    iput v1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@17
    if-ltz p2, :cond_21

    #@19
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@1e
    move-result v1

    #@1f
    if-lt p2, v1, :cond_27

    #@21
    :cond_21
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@26
    :goto_26
    return-object v0

    #@27
    :cond_27
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@2c
    goto :goto_26
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    #@4
    move-result v1

    #@5
    if-ge v0, v1, :cond_23

    #@7
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_20

    #@11
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    #@14
    move-result-object v2

    #@15
    if-eqz v2, :cond_20

    #@17
    iget v2, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@19
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@1b
    if-ne v2, v3, :cond_20

    #@1d
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    #@20
    :cond_20
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_1

    #@23
    :cond_23
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 8

    #@0
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_31

    #@6
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    #@9
    move-result-object v1

    #@a
    :goto_a
    move-object v0, v1

    #@b
    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    #@d
    iget-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    #@f
    instance-of v3, p1, Landroid/support/v4/view/ViewPager$Decor;

    #@11
    or-int/2addr v2, v3

    #@12
    iput-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    #@14
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    #@16
    if-eqz v2, :cond_2d

    #@18
    if-eqz v0, :cond_26

    #@1a
    iget-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    #@1c
    if-eqz v2, :cond_26

    #@1e
    new-instance v0, Ljava/lang/IllegalStateException;

    #@20
    const-string v1, "Cannot add pager decor view during layout"

    #@22
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    :cond_26
    const/4 v2, 0x1

    #@27
    iput-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->needsMeasure:Z

    #@29
    invoke-virtual {p0, p1, p2, v1}, Landroid/support/v4/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    #@2c
    :goto_2c
    return-void

    #@2d
    :cond_2d
    invoke-super {p0, p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@30
    goto :goto_2c

    #@31
    :cond_31
    move-object v1, p3

    #@32
    goto :goto_a
.end method

.method public arrowScroll(I)Z
    .registers 11

    #@0
    const/4 v0, 0x0

    #@1
    const/16 v8, 0x42

    #@3
    const/16 v7, 0x11

    #@5
    const/4 v4, 0x1

    #@6
    const/4 v3, 0x0

    #@7
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    #@a
    move-result-object v1

    #@b
    if-ne v1, p0, :cond_3d

    #@d
    :goto_d
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    #@14
    move-result-object v1

    #@15
    if-eqz v1, :cond_c4

    #@17
    if-eq v1, v0, :cond_c4

    #@19
    if-ne p1, v7, :cond_a2

    #@1b
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    #@1d
    invoke-direct {p0, v2, v1}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    #@20
    move-result-object v2

    #@21
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@23
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    #@25
    invoke-direct {p0, v3, v0}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    #@28
    move-result-object v3

    #@29
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@2b
    if-eqz v0, :cond_9d

    #@2d
    if-lt v2, v3, :cond_9d

    #@2f
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageLeft()Z

    #@32
    move-result v0

    #@33
    :goto_33
    if-eqz v0, :cond_3c

    #@35
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    #@38
    move-result v1

    #@39
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->playSoundEffect(I)V

    #@3c
    :cond_3c
    return v0

    #@3d
    :cond_3d
    if-eqz v1, :cond_dc

    #@3f
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@42
    move-result-object v2

    #@43
    :goto_43
    instance-of v5, v2, Landroid/view/ViewGroup;

    #@45
    if-eqz v5, :cond_df

    #@47
    if-ne v2, p0, :cond_7a

    #@49
    move v2, v4

    #@4a
    :goto_4a
    if-nez v2, :cond_dc

    #@4c
    new-instance v2, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@54
    move-result-object v5

    #@55
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@58
    move-result-object v5

    #@59
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@5f
    move-result-object v1

    #@60
    :goto_60
    instance-of v5, v1, Landroid/view/ViewGroup;

    #@62
    if-eqz v5, :cond_7f

    #@64
    const-string v5, " => "

    #@66
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v5

    #@6a
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6d
    move-result-object v6

    #@6e
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@71
    move-result-object v6

    #@72
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    #@78
    move-result-object v1

    #@79
    goto :goto_60

    #@7a
    :cond_7a
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    #@7d
    move-result-object v2

    #@7e
    goto :goto_43

    #@7f
    :cond_7f
    const-string v1, "ViewPager"

    #@81
    new-instance v5, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string v6, "arrowScroll tried to find focus based on non-child current focused view "

    #@88
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v5

    #@8c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v2

    #@90
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v2

    #@94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v2

    #@98
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9b
    goto/16 :goto_d

    #@9d
    :cond_9d
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    #@a0
    move-result v0

    #@a1
    goto :goto_33

    #@a2
    :cond_a2
    if-ne p1, v8, :cond_d9

    #@a4
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    #@a6
    invoke-direct {p0, v2, v1}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    #@a9
    move-result-object v2

    #@aa
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@ac
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    #@ae
    invoke-direct {p0, v3, v0}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    #@b1
    move-result-object v3

    #@b2
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@b4
    if-eqz v0, :cond_be

    #@b6
    if-gt v2, v3, :cond_be

    #@b8
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageRight()Z

    #@bb
    move-result v0

    #@bc
    goto/16 :goto_33

    #@be
    :cond_be
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    #@c1
    move-result v0

    #@c2
    goto/16 :goto_33

    #@c4
    :cond_c4
    if-eq p1, v7, :cond_c8

    #@c6
    if-ne p1, v4, :cond_ce

    #@c8
    :cond_c8
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageLeft()Z

    #@cb
    move-result v0

    #@cc
    goto/16 :goto_33

    #@ce
    :cond_ce
    if-eq p1, v8, :cond_d3

    #@d0
    const/4 v0, 0x2

    #@d1
    if-ne p1, v0, :cond_d9

    #@d3
    :cond_d3
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageRight()Z

    #@d6
    move-result v0

    #@d7
    goto/16 :goto_33

    #@d9
    :cond_d9
    move v0, v3

    #@da
    goto/16 :goto_33

    #@dc
    :cond_dc
    move-object v0, v1

    #@dd
    goto/16 :goto_d

    #@df
    :cond_df
    move v2, v3

    #@e0
    goto/16 :goto_4a
.end method

.method public beginFakeDrag()Z
    .registers 10

    #@0
    const/4 v8, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #@5
    if-eqz v0, :cond_8

    #@7
    :goto_7
    return v4

    #@8
    :cond_8
    iput-boolean v8, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    #@a
    invoke-direct {p0, v8}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    #@d
    iput v5, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@f
    iput v5, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    #@11
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@13
    if-nez v0, :cond_32

    #@15
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1b
    :goto_1b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1e
    move-result-wide v0

    #@1f
    move-wide v2, v0

    #@20
    move v6, v5

    #@21
    move v7, v4

    #@22
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@25
    move-result-object v2

    #@26
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@28
    invoke-virtual {v3, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@2b
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    #@2e
    iput-wide v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragBeginTime:J

    #@30
    move v4, v8

    #@31
    goto :goto_7

    #@32
    :cond_32
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@34
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    #@37
    goto :goto_1b
.end method

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
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

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
    if-eqz p2, :cond_63

    #@5c
    neg-int v0, p3

    #@5d
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    #@60
    move-result v0

    #@61
    if-nez v0, :cond_55

    #@63
    :cond_63
    const/4 v2, 0x0

    #@64
    goto :goto_55
.end method

.method public canScrollHorizontally(I)Z
    .registers 7

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@4
    if-nez v2, :cond_7

    #@6
    :cond_6
    :goto_6
    return v0

    #@7
    :cond_7
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    #@a
    move-result v2

    #@b
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    #@e
    move-result v3

    #@f
    if-gez p1, :cond_1a

    #@11
    int-to-float v2, v2

    #@12
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    #@14
    mul-float/2addr v2, v4

    #@15
    float-to-int v2, v2

    #@16
    if-le v3, v2, :cond_6

    #@18
    move v0, v1

    #@19
    goto :goto_6

    #@1a
    :cond_1a
    if-lez p1, :cond_6

    #@1c
    int-to-float v2, v2

    #@1d
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    #@1f
    mul-float/2addr v2, v4

    #@20
    float-to-int v2, v2

    #@21
    if-ge v3, v2, :cond_6

    #@23
    move v0, v1

    #@24
    goto :goto_6
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    #@0
    instance-of v0, p1, Landroid/support/v4/view/ViewPager$LayoutParams;

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

.method public computeScroll()V
    .registers 5

    #@0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@2
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_3e

    #@8
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@a
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_3e

    #@10
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    #@13
    move-result v0

    #@14
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    #@17
    move-result v1

    #@18
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@1a
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    #@1d
    move-result v2

    #@1e
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@20
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    #@23
    move-result v3

    #@24
    if-ne v0, v2, :cond_28

    #@26
    if-eq v1, v3, :cond_3a

    #@28
    :cond_28
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    #@2b
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    #@2e
    move-result v0

    #@2f
    if-nez v0, :cond_3a

    #@31
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@33
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    #@36
    const/4 v0, 0x0

    #@37
    invoke-virtual {p0, v0, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    #@3a
    :cond_3a
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@3d
    :goto_3d
    return-void

    #@3e
    :cond_3e
    const/4 v0, 0x1

    #@3f
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    #@42
    goto :goto_3d
.end method

.method dataSetChanged()V
    .registers 11

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@4
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    #@7
    move-result v8

    #@8
    iput v8, p0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    #@a
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v0

    #@10
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    #@12
    mul-int/lit8 v3, v3, 0x2

    #@14
    add-int/lit8 v3, v3, 0x1

    #@16
    if-ge v0, v3, :cond_4d

    #@18
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1d
    move-result v0

    #@1e
    if-ge v0, v8, :cond_4d

    #@20
    move v0, v1

    #@21
    :goto_21
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@23
    move v4, v2

    #@24
    move v5, v3

    #@25
    move v6, v0

    #@26
    move v3, v2

    #@27
    :goto_27
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@2c
    move-result v0

    #@2d
    if-ge v3, v0, :cond_93

    #@2f
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@37
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@39
    iget-object v9, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #@3b
    invoke-virtual {v7, v9}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    #@3e
    move-result v7

    #@3f
    const/4 v9, -0x1

    #@40
    if-ne v7, v9, :cond_4f

    #@42
    move v0, v3

    #@43
    move v3, v4

    #@44
    move v4, v5

    #@45
    move v5, v6

    #@46
    :goto_46
    add-int/lit8 v0, v0, 0x1

    #@48
    move v6, v5

    #@49
    move v5, v4

    #@4a
    move v4, v3

    #@4b
    move v3, v0

    #@4c
    goto :goto_27

    #@4d
    :cond_4d
    move v0, v2

    #@4e
    goto :goto_21

    #@4f
    :cond_4f
    const/4 v9, -0x2

    #@50
    if-ne v7, v9, :cond_81

    #@52
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@54
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@57
    add-int/lit8 v3, v3, -0x1

    #@59
    if-nez v4, :cond_61

    #@5b
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@5d
    invoke-virtual {v4, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    #@60
    move v4, v1

    #@61
    :cond_61
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@63
    iget v7, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@65
    iget-object v9, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #@67
    invoke-virtual {v6, p0, v7, v9}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    #@6a
    iget v6, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@6c
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@6e
    if-ne v6, v0, :cond_cc

    #@70
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@72
    add-int/lit8 v5, v8, -0x1

    #@74
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    #@77
    move-result v0

    #@78
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    #@7b
    move-result v5

    #@7c
    move v0, v3

    #@7d
    move v3, v4

    #@7e
    move v4, v5

    #@7f
    move v5, v1

    #@80
    goto :goto_46

    #@81
    :cond_81
    iget v9, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@83
    if-eq v9, v7, :cond_c6

    #@85
    iget v6, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@87
    iget v9, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@89
    if-ne v6, v9, :cond_8c

    #@8b
    move v5, v7

    #@8c
    :cond_8c
    iput v7, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@8e
    move v0, v3

    #@8f
    move v3, v4

    #@90
    move v4, v5

    #@91
    move v5, v1

    #@92
    goto :goto_46

    #@93
    :cond_93
    if-eqz v4, :cond_9a

    #@95
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@97
    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    #@9a
    :cond_9a
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@9c
    sget-object v3, Landroid/support/v4/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    #@9e
    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@a1
    if-eqz v6, :cond_c5

    #@a3
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    #@a6
    move-result v4

    #@a7
    move v3, v2

    #@a8
    :goto_a8
    if-ge v3, v4, :cond_bf

    #@aa
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    #@ad
    move-result-object v0

    #@ae
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@b1
    move-result-object v0

    #@b2
    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    #@b4
    iget-boolean v6, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    #@b6
    if-nez v6, :cond_bb

    #@b8
    const/4 v6, 0x0

    #@b9
    iput v6, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    #@bb
    :cond_bb
    add-int/lit8 v0, v3, 0x1

    #@bd
    move v3, v0

    #@be
    goto :goto_a8

    #@bf
    :cond_bf
    invoke-virtual {p0, v5, v2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    #@c2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    #@c5
    :cond_c5
    return-void

    #@c6
    :cond_c6
    move v0, v3

    #@c7
    move v3, v4

    #@c8
    move v4, v5

    #@c9
    move v5, v6

    #@ca
    goto/16 :goto_46

    #@cc
    :cond_cc
    move v0, v3

    #@cd
    move v3, v4

    #@ce
    move v4, v5

    #@cf
    move v5, v1

    #@d0
    goto/16 :goto_46
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    #@0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_c

    #@6
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_e

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

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    #@4
    move-result v1

    #@5
    const/16 v2, 0x1000

    #@7
    if-ne v1, v2, :cond_e

    #@9
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    #@c
    move-result v0

    #@d
    :cond_d
    :goto_d
    return v0

    #@e
    :cond_e
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    #@11
    move-result v2

    #@12
    move v1, v0

    #@13
    :goto_13
    if-ge v1, v2, :cond_d

    #@15
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    #@1c
    move-result v4

    #@1d
    if-nez v4, :cond_33

    #@1f
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    #@22
    move-result-object v4

    #@23
    if-eqz v4, :cond_33

    #@25
    iget v4, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@27
    iget v5, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@29
    if-ne v4, v5, :cond_33

    #@2b
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_33

    #@31
    const/4 v0, 0x1

    #@32
    goto :goto_d

    #@33
    :cond_33
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_13
.end method

.method distanceInfluenceForSnapDuration(F)F
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

.method public draw(Landroid/graphics/Canvas;)V
    .registers 11

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    #@5
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_19

    #@b
    if-ne v1, v2, :cond_a3

    #@d
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@f
    if-eqz v1, :cond_a3

    #@11
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@13
    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    #@16
    move-result v1

    #@17
    if-le v1, v2, :cond_a3

    #@19
    :cond_19
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #@1b
    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    #@1e
    move-result v1

    #@1f
    if-nez v1, :cond_5a

    #@21
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@24
    move-result v1

    #@25
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    #@28
    move-result v0

    #@29
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    #@2c
    move-result v2

    #@2d
    sub-int/2addr v0, v2

    #@2e
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    #@31
    move-result v2

    #@32
    sub-int/2addr v0, v2

    #@33
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    #@36
    move-result v2

    #@37
    const/high16 v3, 0x43870000    # 270.0f

    #@39
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    #@3c
    neg-int v3, v0

    #@3d
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    #@40
    move-result v4

    #@41
    add-int/2addr v3, v4

    #@42
    int-to-float v3, v3

    #@43
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    #@45
    int-to-float v5, v2

    #@46
    mul-float/2addr v4, v5

    #@47
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    #@4a
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #@4c
    invoke-virtual {v3, v0, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    #@4f
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #@51
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    #@54
    move-result v0

    #@55
    or-int/lit8 v0, v0, 0x0

    #@57
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@5a
    :cond_5a
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #@5c
    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    #@5f
    move-result v1

    #@60
    if-nez v1, :cond_9d

    #@62
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@65
    move-result v1

    #@66
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    #@69
    move-result v2

    #@6a
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    #@6d
    move-result v3

    #@6e
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    #@71
    move-result v4

    #@72
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    #@75
    move-result v5

    #@76
    const/high16 v6, 0x42b40000    # 90.0f

    #@78
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    #@7b
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    #@7e
    move-result v6

    #@7f
    neg-int v6, v6

    #@80
    int-to-float v6, v6

    #@81
    iget v7, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    #@83
    const/high16 v8, 0x3f800000    # 1.0f

    #@85
    add-float/2addr v7, v8

    #@86
    neg-float v7, v7

    #@87
    int-to-float v8, v2

    #@88
    mul-float/2addr v7, v8

    #@89
    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    #@8c
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #@8e
    sub-int/2addr v3, v4

    #@8f
    sub-int/2addr v3, v5

    #@90
    invoke-virtual {v6, v3, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    #@93
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #@95
    invoke-virtual {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    #@98
    move-result v2

    #@99
    or-int/2addr v0, v2

    #@9a
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@9d
    :cond_9d
    :goto_9d
    if-eqz v0, :cond_a2

    #@9f
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@a2
    :cond_a2
    return-void

    #@a3
    :cond_a3
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #@a5
    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    #@a8
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #@aa
    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    #@ad
    goto :goto_9d
.end method

.method protected drawableStateChanged()V
    .registers 3

    #@0
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    #@3
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_14

    #@7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_14

    #@d
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDrawableState()[I

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@14
    :cond_14
    return-void
.end method

.method public endFakeDrag()V
    .registers 7

    #@0
    const/4 v5, 0x1

    #@1
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    #@3
    if-nez v0, :cond_d

    #@5
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string v1, "No fake drag in progress. Call beginFakeDrag first."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@f
    const/16 v1, 0x3e8

    #@11
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    #@13
    int-to-float v2, v2

    #@14
    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@17
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #@19
    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    #@1c
    move-result v0

    #@1d
    float-to-int v0, v0

    #@1e
    iput-boolean v5, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    #@20
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    #@23
    move-result v1

    #@24
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    #@27
    move-result v2

    #@28
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;

    #@2b
    move-result-object v3

    #@2c
    iget v4, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@2e
    int-to-float v2, v2

    #@2f
    int-to-float v1, v1

    #@30
    div-float v1, v2, v1

    #@32
    iget v2, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@34
    sub-float/2addr v1, v2

    #@35
    iget v2, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@37
    div-float/2addr v1, v2

    #@38
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@3a
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    #@3c
    sub-float/2addr v2, v3

    #@3d
    float-to-int v2, v2

    #@3e
    invoke-direct {p0, v4, v1, v0, v2}, Landroid/support/v4/view/ViewPager;->determineTargetPage(IFII)I

    #@41
    move-result v1

    #@42
    invoke-virtual {p0, v1, v5, v5, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    #@45
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->endDrag()V

    #@48
    const/4 v0, 0x0

    #@49
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    #@4b
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6

    #@0
    const/4 v3, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_f

    #@8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@b
    move-result v1

    #@c
    sparse-switch v1, :sswitch_data_3c

    #@f
    :cond_f
    :goto_f
    return v0

    #@10
    :sswitch_10
    const/16 v0, 0x11

    #@12
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    #@15
    move-result v0

    #@16
    goto :goto_f

    #@17
    :sswitch_17
    const/16 v0, 0x42

    #@19
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    #@1c
    move-result v0

    #@1d
    goto :goto_f

    #@1e
    :sswitch_1e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@20
    const/16 v2, 0xb

    #@22
    if-lt v1, v2, :cond_f

    #@24
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_30

    #@2a
    const/4 v0, 0x2

    #@2b
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    #@2e
    move-result v0

    #@2f
    goto :goto_f

    #@30
    :cond_30
    invoke-static {p1, v3}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_f

    #@36
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    #@39
    move-result v0

    #@3a
    goto :goto_f

    #@3b
    nop

    #@3c
    :sswitch_data_3c
    .sparse-switch
        0x15 -> :sswitch_10
        0x16 -> :sswitch_17
        0x3d -> :sswitch_1e
    .end sparse-switch
.end method

.method public fakeDragBy(F)V
    .registers 10

    #@0
    const/4 v7, 0x0

    #@1
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    #@3
    if-nez v0, :cond_d

    #@5
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string v1, "No fake drag in progress. Call beginFakeDrag first."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@f
    add-float/2addr v0, p1

    #@10
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@12
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    #@15
    move-result v0

    #@16
    int-to-float v0, v0

    #@17
    sub-float v3, v0, p1

    #@19
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    #@1c
    move-result v5

    #@1d
    int-to-float v0, v5

    #@1e
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    #@20
    mul-float v2, v0, v1

    #@22
    int-to-float v0, v5

    #@23
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    #@25
    mul-float v4, v0, v1

    #@27
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@2f
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@31
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@33
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@36
    move-result v6

    #@37
    add-int/lit8 v6, v6, -0x1

    #@39
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v1

    #@3d
    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@3f
    iget v6, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@41
    if-eqz v6, :cond_91

    #@43
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@45
    int-to-float v2, v5

    #@46
    mul-float/2addr v0, v2

    #@47
    :goto_47
    iget v2, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@49
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@4b
    invoke-virtual {v6}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    #@4e
    move-result v6

    #@4f
    add-int/lit8 v6, v6, -0x1

    #@51
    if-eq v2, v6, :cond_8f

    #@53
    iget v1, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@55
    int-to-float v2, v5

    #@56
    mul-float/2addr v1, v2

    #@57
    :goto_57
    cmpg-float v2, v3, v0

    #@59
    if-gez v2, :cond_87

    #@5b
    :goto_5b
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@5d
    float-to-int v2, v0

    #@5e
    int-to-float v2, v2

    #@5f
    sub-float v2, v0, v2

    #@61
    add-float/2addr v1, v2

    #@62
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@64
    float-to-int v1, v0

    #@65
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    #@68
    move-result v2

    #@69
    invoke-virtual {p0, v1, v2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    #@6c
    float-to-int v0, v0

    #@6d
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    #@70
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@73
    move-result-wide v2

    #@74
    iget-wide v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragBeginTime:J

    #@76
    const/4 v4, 0x2

    #@77
    iget v5, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@79
    const/4 v6, 0x0

    #@7a
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@7d
    move-result-object v0

    #@7e
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@80
    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@83
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    #@86
    return-void

    #@87
    :cond_87
    cmpl-float v0, v3, v1

    #@89
    if-lez v0, :cond_8d

    #@8b
    move v0, v1

    #@8c
    goto :goto_5b

    #@8d
    :cond_8d
    move v0, v3

    #@8e
    goto :goto_5b

    #@8f
    :cond_8f
    move v1, v4

    #@90
    goto :goto_57

    #@91
    :cond_91
    move v0, v2

    #@92
    goto :goto_47
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    #@0
    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    #@2
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>()V

    #@5
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    #@0
    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    #@2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    #@0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getAdapter()Landroid/support/v4/view/PagerAdapter;
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@2
    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 5

    #@0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_9

    #@5
    add-int/lit8 v0, p1, -0x1

    #@7
    sub-int p2, v0, p2

    #@9
    :cond_9
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/view/View;

    #@11
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    #@17
    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->childIndex:I

    #@19
    return v0
.end method

.method public getCurrentItem()I
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@2
    return v0
.end method

.method public getOffscreenPageLimit()I
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    #@2
    return v0
.end method

.method public getPageMargin()I
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #@2
    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
    .registers 4

    #@0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    if-eq v0, p0, :cond_12

    #@6
    if-eqz v0, :cond_c

    #@8
    instance-of v1, v0, Landroid/view/View;

    #@a
    if-nez v1, :cond_e

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return-object v0

    #@e
    :cond_e
    check-cast v0, Landroid/view/View;

    #@10
    move-object p1, v0

    #@11
    goto :goto_0

    #@12
    :cond_12
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    #@15
    move-result-object v0

    #@16
    goto :goto_d
.end method

.method infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    move v1, v0

    #@2
    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    if-ge v1, v0, :cond_21

    #@a
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@12
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@14
    iget-object v3, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #@16
    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_1d

    #@1c
    :goto_1c
    return-object v0

    #@1d
    :cond_1d
    add-int/lit8 v0, v1, 0x1

    #@1f
    move v1, v0

    #@20
    goto :goto_2

    #@21
    :cond_21
    const/4 v0, 0x0

    #@22
    goto :goto_1c
.end method

.method infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    move v1, v0

    #@2
    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    if-ge v1, v0, :cond_1b

    #@a
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@12
    iget v2, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@14
    if-ne v2, p1, :cond_17

    #@16
    :goto_16
    return-object v0

    #@17
    :cond_17
    add-int/lit8 v0, v1, 0x1

    #@19
    move v1, v0

    #@1a
    goto :goto_2

    #@1b
    :cond_1b
    const/4 v0, 0x0

    #@1c
    goto :goto_16
.end method

.method initViewPager()V
    .registers 6

    #@0
    const/4 v4, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    #@5
    const/high16 v0, 0x40000

    #@7
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setDescendantFocusability(I)V

    #@a
    invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->setFocusable(Z)V

    #@d
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    #@10
    move-result-object v0

    #@11
    new-instance v1, Landroid/widget/Scroller;

    #@13
    sget-object v2, Landroid/support/v4/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    #@15
    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    #@18
    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@1a
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@25
    move-result-object v2

    #@26
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    #@28
    invoke-static {v1}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    #@2b
    move-result v3

    #@2c
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    #@2e
    const/high16 v3, 0x43c80000    # 400.0f

    #@30
    mul-float/2addr v3, v2

    #@31
    float-to-int v3, v3

    #@32
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mMinimumVelocity:I

    #@34
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    #@37
    move-result v1

    #@38
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    #@3a
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    #@3c
    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    #@3f
    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #@41
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    #@43
    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    #@46
    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #@48
    const/high16 v0, 0x41c80000    # 25.0f

    #@4a
    mul-float/2addr v0, v2

    #@4b
    float-to-int v0, v0

    #@4c
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mFlingDistance:I

    #@4e
    const/high16 v0, 0x40000000    # 2.0f

    #@50
    mul-float/2addr v0, v2

    #@51
    float-to-int v0, v0

    #@52
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mCloseEnough:I

    #@54
    const/high16 v0, 0x41800000    # 16.0f

    #@56
    mul-float/2addr v0, v2

    #@57
    float-to-int v0, v0

    #@58
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mDefaultGutterSize:I

    #@5a
    new-instance v0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;

    #@5c
    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;-><init>(Landroid/support/v4/view/ViewPager;)V

    #@5f
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    #@62
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    #@65
    move-result v0

    #@66
    if-nez v0, :cond_6b

    #@68
    invoke-static {p0, v4}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@6b
    :cond_6b
    return-void
.end method

.method public isFakeDragging()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

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
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    #@6
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    #@2
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@5
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    #@8
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19

    #@0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    #@3
    move-object/from16 v0, p0

    #@5
    iget v1, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #@7
    if-lez v1, :cond_b6

    #@9
    move-object/from16 v0, p0

    #@b
    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    #@d
    if-eqz v1, :cond_b6

    #@f
    move-object/from16 v0, p0

    #@11
    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v1

    #@17
    if-lez v1, :cond_b6

    #@19
    move-object/from16 v0, p0

    #@1b
    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@1d
    if-eqz v1, :cond_b6

    #@1f
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    #@22
    move-result v6

    #@23
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    #@26
    move-result v7

    #@27
    move-object/from16 v0, p0

    #@29
    iget v1, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #@2b
    int-to-float v1, v1

    #@2c
    int-to-float v2, v7

    #@2d
    div-float v8, v1, v2

    #@2f
    const/4 v3, 0x0

    #@30
    move-object/from16 v0, p0

    #@32
    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@34
    const/4 v2, 0x0

    #@35
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@38
    move-result-object v1

    #@39
    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@3b
    iget v5, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@3d
    move-object/from16 v0, p0

    #@3f
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@41
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@44
    move-result v9

    #@45
    iget v4, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@47
    move-object/from16 v0, p0

    #@49
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@4b
    add-int/lit8 v10, v9, -0x1

    #@4d
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@50
    move-result-object v2

    #@51
    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@53
    iget v10, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@55
    move v2, v3

    #@56
    move/from16 v16, v4

    #@58
    move v4, v5

    #@59
    move/from16 v5, v16

    #@5b
    :goto_5b
    if-ge v5, v10, :cond_b6

    #@5d
    :goto_5d
    iget v3, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@5f
    if-le v5, v3, :cond_70

    #@61
    if-ge v2, v9, :cond_70

    #@63
    move-object/from16 v0, p0

    #@65
    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@67
    add-int/lit8 v2, v2, 0x1

    #@69
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6c
    move-result-object v1

    #@6d
    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@6f
    goto :goto_5d

    #@70
    :cond_70
    iget v3, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@72
    if-ne v5, v3, :cond_b7

    #@74
    iget v3, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@76
    iget v4, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@78
    add-float/2addr v3, v4

    #@79
    int-to-float v4, v7

    #@7a
    mul-float/2addr v3, v4

    #@7b
    iget v4, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@7d
    iget v11, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@7f
    add-float/2addr v4, v11

    #@80
    add-float/2addr v4, v8

    #@81
    :goto_81
    move-object/from16 v0, p0

    #@83
    iget v11, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #@85
    int-to-float v11, v11

    #@86
    add-float/2addr v11, v3

    #@87
    int-to-float v12, v6

    #@88
    cmpl-float v11, v11, v12

    #@8a
    if-lez v11, :cond_af

    #@8c
    move-object/from16 v0, p0

    #@8e
    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    #@90
    float-to-int v12, v3

    #@91
    move-object/from16 v0, p0

    #@93
    iget v13, v0, Landroid/support/v4/view/ViewPager;->mTopPageBounds:I

    #@95
    move-object/from16 v0, p0

    #@97
    iget v14, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #@99
    int-to-float v14, v14

    #@9a
    add-float/2addr v14, v3

    #@9b
    const/high16 v15, 0x3f000000    # 0.5f

    #@9d
    add-float/2addr v14, v15

    #@9e
    float-to-int v14, v14

    #@9f
    move-object/from16 v0, p0

    #@a1
    iget v15, v0, Landroid/support/v4/view/ViewPager;->mBottomPageBounds:I

    #@a3
    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@a6
    move-object/from16 v0, p0

    #@a8
    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    #@aa
    move-object/from16 v0, p1

    #@ac
    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@af
    :cond_af
    add-int v11, v6, v7

    #@b1
    int-to-float v11, v11

    #@b2
    cmpl-float v3, v3, v11

    #@b4
    if-lez v3, :cond_c6

    #@b6
    :cond_b6
    return-void

    #@b7
    :cond_b7
    move-object/from16 v0, p0

    #@b9
    iget-object v3, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@bb
    invoke-virtual {v3, v5}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    #@be
    move-result v11

    #@bf
    add-float v3, v4, v11

    #@c1
    int-to-float v12, v7

    #@c2
    mul-float/2addr v3, v12

    #@c3
    add-float/2addr v11, v8

    #@c4
    add-float/2addr v4, v11

    #@c5
    goto :goto_81

    #@c6
    :cond_c6
    add-int/lit8 v3, v5, 0x1

    #@c8
    move v5, v3

    #@c9
    goto :goto_5b
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15

    #@0
    const/4 v3, -0x1

    #@1
    const/4 v12, 0x0

    #@2
    const/4 v6, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@7
    move-result v0

    #@8
    and-int/lit16 v0, v0, 0xff

    #@a
    const/4 v1, 0x3

    #@b
    if-eq v0, v1, :cond_f

    #@d
    if-ne v0, v6, :cond_22

    #@f
    :cond_f
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #@11
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    #@13
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #@15
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@17
    if-eqz v0, :cond_21

    #@19
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1b
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    #@1e
    const/4 v0, 0x0

    #@1f
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@21
    :cond_21
    :goto_21
    return v2

    #@22
    :cond_22
    if-eqz v0, :cond_2e

    #@24
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #@26
    if-eqz v1, :cond_2a

    #@28
    move v2, v6

    #@29
    goto :goto_21

    #@2a
    :cond_2a
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    #@2c
    if-nez v1, :cond_21

    #@2e
    :cond_2e
    sparse-switch v0, :sswitch_data_120

    #@31
    :cond_31
    :goto_31
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@33
    if-nez v0, :cond_3b

    #@35
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@3b
    :cond_3b
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@3d
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@40
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #@42
    goto :goto_21

    #@43
    :sswitch_43
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #@45
    if-eq v0, v3, :cond_31

    #@47
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    #@4a
    move-result v0

    #@4b
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    #@4e
    move-result v7

    #@4f
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@51
    sub-float v8, v7, v1

    #@53
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    #@56
    move-result v9

    #@57
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    #@5a
    move-result v10

    #@5b
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionY:F

    #@5d
    sub-float v0, v10, v0

    #@5f
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@62
    move-result v11

    #@63
    cmpl-float v0, v8, v12

    #@65
    if-eqz v0, :cond_81

    #@67
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@69
    invoke-direct {p0, v0, v8}, Landroid/support/v4/view/ViewPager;->isGutterDrag(FF)Z

    #@6c
    move-result v0

    #@6d
    if-nez v0, :cond_81

    #@6f
    float-to-int v3, v8

    #@70
    float-to-int v4, v7

    #@71
    float-to-int v5, v10

    #@72
    move-object v0, p0

    #@73
    move-object v1, p0

    #@74
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    #@77
    move-result v0

    #@78
    if-eqz v0, :cond_81

    #@7a
    iput v7, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@7c
    iput v10, p0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    #@7e
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    #@80
    goto :goto_21

    #@81
    :cond_81
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    #@83
    int-to-float v0, v0

    #@84
    cmpl-float v0, v9, v0

    #@86
    if-lez v0, :cond_be

    #@88
    const/high16 v0, 0x3f000000    # 0.5f

    #@8a
    mul-float/2addr v0, v9

    #@8b
    cmpl-float v0, v0, v11

    #@8d
    if-lez v0, :cond_be

    #@8f
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #@91
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    #@94
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    #@97
    cmpl-float v0, v8, v12

    #@99
    if-lez v0, :cond_b7

    #@9b
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    #@9d
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    #@9f
    int-to-float v1, v1

    #@a0
    add-float/2addr v0, v1

    #@a1
    :goto_a1
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@a3
    iput v10, p0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    #@a5
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    #@a8
    :cond_a8
    :goto_a8
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #@aa
    if-eqz v0, :cond_31

    #@ac
    invoke-direct {p0, v7}, Landroid/support/v4/view/ViewPager;->performDrag(F)Z

    #@af
    move-result v0

    #@b0
    if-eqz v0, :cond_31

    #@b2
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@b5
    goto/16 :goto_31

    #@b7
    :cond_b7
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    #@b9
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    #@bb
    int-to-float v1, v1

    #@bc
    sub-float/2addr v0, v1

    #@bd
    goto :goto_a1

    #@be
    :cond_be
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    #@c0
    int-to-float v0, v0

    #@c1
    cmpl-float v0, v11, v0

    #@c3
    if-lez v0, :cond_a8

    #@c5
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    #@c7
    goto :goto_a8

    #@c8
    :sswitch_c8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@cb
    move-result v0

    #@cc
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    #@ce
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@d0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@d3
    move-result v0

    #@d4
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionY:F

    #@d6
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    #@d8
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@db
    move-result v0

    #@dc
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #@de
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    #@e0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@e2
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    #@e5
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    #@e7
    const/4 v1, 0x2

    #@e8
    if-ne v0, v1, :cond_113

    #@ea
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@ec
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    #@ef
    move-result v0

    #@f0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@f2
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    #@f5
    move-result v1

    #@f6
    sub-int/2addr v0, v1

    #@f7
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    #@fa
    move-result v0

    #@fb
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mCloseEnough:I

    #@fd
    if-le v0, v1, :cond_113

    #@ff
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@101
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    #@104
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    #@106
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    #@109
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #@10b
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    #@10e
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    #@111
    goto/16 :goto_31

    #@113
    :cond_113
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    #@116
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #@118
    goto/16 :goto_31

    #@11a
    :sswitch_11a
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    #@11d
    goto/16 :goto_31

    #@11f
    nop

    #@120
    :sswitch_data_120
    .sparse-switch
        0x0 -> :sswitch_c8
        0x2 -> :sswitch_43
        0x6 -> :sswitch_11a
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 23

    #@0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    #@3
    move-result v10

    #@4
    sub-int v11, p4, p2

    #@6
    sub-int v12, p5, p3

    #@8
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    #@b
    move-result v6

    #@c
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    #@f
    move-result v3

    #@10
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    #@13
    move-result v4

    #@14
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    #@17
    move-result v2

    #@18
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    #@1b
    move-result v13

    #@1c
    const/4 v5, 0x0

    #@1d
    const/4 v1, 0x0

    #@1e
    move v9, v1

    #@1f
    :goto_1f
    if-ge v9, v10, :cond_c3

    #@21
    move-object/from16 v0, p0

    #@23
    invoke-virtual {v0, v9}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    #@26
    move-result-object v14

    #@27
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    #@2a
    move-result v1

    #@2b
    const/16 v7, 0x8

    #@2d
    if-eq v1, v7, :cond_146

    #@2f
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@32
    move-result-object v1

    #@33
    check-cast v1, Landroid/support/v4/view/ViewPager$LayoutParams;

    #@35
    iget-boolean v7, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    #@37
    if-eqz v7, :cond_146

    #@39
    iget v7, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    #@3b
    iget v15, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    #@3d
    and-int/lit8 v1, v7, 0x7

    #@3f
    packed-switch v1, :pswitch_data_14c

    #@42
    :pswitch_42
    move v7, v6

    #@43
    move v8, v6

    #@44
    move v6, v4

    #@45
    :goto_45
    and-int/lit8 v1, v15, 0x70

    #@47
    sparse-switch v1, :sswitch_data_15a

    #@4a
    move v1, v2

    #@4b
    move v2, v3

    #@4c
    :goto_4c
    add-int v4, v8, v13

    #@4e
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    #@51
    move-result v8

    #@52
    add-int/2addr v8, v4

    #@53
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    #@56
    move-result v15

    #@57
    add-int/2addr v15, v2

    #@58
    invoke-virtual {v14, v4, v2, v8, v15}, Landroid/view/View;->layout(IIII)V

    #@5b
    add-int/lit8 v2, v5, 0x1

    #@5d
    move v4, v7

    #@5e
    move v5, v3

    #@5f
    move v3, v6

    #@60
    move/from16 v16, v2

    #@62
    move v2, v1

    #@63
    move/from16 v1, v16

    #@65
    :goto_65
    add-int/lit8 v6, v9, 0x1

    #@67
    move v9, v6

    #@68
    move v6, v4

    #@69
    move v4, v3

    #@6a
    move v3, v5

    #@6b
    move v5, v1

    #@6c
    goto :goto_1f

    #@6d
    :pswitch_6d
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    #@70
    move-result v1

    #@71
    add-int v7, v6, v1

    #@73
    move v8, v6

    #@74
    move v6, v4

    #@75
    goto :goto_45

    #@76
    :pswitch_76
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    #@79
    move-result v1

    #@7a
    sub-int v1, v11, v1

    #@7c
    div-int/lit8 v1, v1, 0x2

    #@7e
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    #@81
    move-result v1

    #@82
    move v7, v6

    #@83
    move v8, v1

    #@84
    move v6, v4

    #@85
    goto :goto_45

    #@86
    :pswitch_86
    sub-int v1, v11, v4

    #@88
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    #@8b
    move-result v7

    #@8c
    sub-int/2addr v1, v7

    #@8d
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    #@90
    move-result v7

    #@91
    add-int/2addr v4, v7

    #@92
    move v7, v6

    #@93
    move v8, v1

    #@94
    move v6, v4

    #@95
    goto :goto_45

    #@96
    :sswitch_96
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    #@99
    move-result v1

    #@9a
    add-int/2addr v1, v3

    #@9b
    move/from16 v16, v2

    #@9d
    move v2, v3

    #@9e
    move v3, v1

    #@9f
    move/from16 v1, v16

    #@a1
    goto :goto_4c

    #@a2
    :sswitch_a2
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    #@a5
    move-result v1

    #@a6
    sub-int v1, v12, v1

    #@a8
    div-int/lit8 v1, v1, 0x2

    #@aa
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    #@ad
    move-result v1

    #@ae
    move/from16 v16, v2

    #@b0
    move v2, v1

    #@b1
    move/from16 v1, v16

    #@b3
    goto :goto_4c

    #@b4
    :sswitch_b4
    sub-int v1, v12, v2

    #@b6
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    #@b9
    move-result v4

    #@ba
    sub-int v4, v1, v4

    #@bc
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    #@bf
    move-result v1

    #@c0
    add-int/2addr v1, v2

    #@c1
    move v2, v4

    #@c2
    goto :goto_4c

    #@c3
    :cond_c3
    sub-int v1, v11, v6

    #@c5
    sub-int v7, v1, v4

    #@c7
    const/4 v1, 0x0

    #@c8
    move v4, v1

    #@c9
    :goto_c9
    if-ge v4, v10, :cond_120

    #@cb
    move-object/from16 v0, p0

    #@cd
    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    #@d0
    move-result-object v8

    #@d1
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    #@d4
    move-result v1

    #@d5
    const/16 v9, 0x8

    #@d7
    if-eq v1, v9, :cond_11c

    #@d9
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@dc
    move-result-object v1

    #@dd
    check-cast v1, Landroid/support/v4/view/ViewPager$LayoutParams;

    #@df
    iget-boolean v9, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    #@e1
    if-nez v9, :cond_11c

    #@e3
    move-object/from16 v0, p0

    #@e5
    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    #@e8
    move-result-object v9

    #@e9
    if-eqz v9, :cond_11c

    #@eb
    int-to-float v11, v7

    #@ec
    iget v9, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@ee
    mul-float/2addr v9, v11

    #@ef
    float-to-int v9, v9

    #@f0
    add-int/2addr v9, v6

    #@f1
    iget-boolean v11, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->needsMeasure:Z

    #@f3
    if-eqz v11, :cond_10f

    #@f5
    const/4 v11, 0x0

    #@f6
    iput-boolean v11, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->needsMeasure:Z

    #@f8
    int-to-float v11, v7

    #@f9
    iget v1, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    #@fb
    mul-float/2addr v1, v11

    #@fc
    float-to-int v1, v1

    #@fd
    const/high16 v11, 0x40000000    # 2.0f

    #@ff
    invoke-static {v1, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@102
    move-result v1

    #@103
    sub-int v11, v12, v3

    #@105
    sub-int/2addr v11, v2

    #@106
    const/high16 v13, 0x40000000    # 2.0f

    #@108
    invoke-static {v11, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@10b
    move-result v11

    #@10c
    invoke-virtual {v8, v1, v11}, Landroid/view/View;->measure(II)V

    #@10f
    :cond_10f
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    #@112
    move-result v1

    #@113
    add-int/2addr v1, v9

    #@114
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    #@117
    move-result v11

    #@118
    add-int/2addr v11, v3

    #@119
    invoke-virtual {v8, v9, v3, v1, v11}, Landroid/view/View;->layout(IIII)V

    #@11c
    :cond_11c
    add-int/lit8 v1, v4, 0x1

    #@11e
    move v4, v1

    #@11f
    goto :goto_c9

    #@120
    :cond_120
    move-object/from16 v0, p0

    #@122
    iput v3, v0, Landroid/support/v4/view/ViewPager;->mTopPageBounds:I

    #@124
    sub-int v1, v12, v2

    #@126
    move-object/from16 v0, p0

    #@128
    iput v1, v0, Landroid/support/v4/view/ViewPager;->mBottomPageBounds:I

    #@12a
    move-object/from16 v0, p0

    #@12c
    iput v5, v0, Landroid/support/v4/view/ViewPager;->mDecorChildCount:I

    #@12e
    move-object/from16 v0, p0

    #@130
    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    #@132
    if-eqz v1, :cond_140

    #@134
    move-object/from16 v0, p0

    #@136
    iget v1, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@138
    const/4 v2, 0x0

    #@139
    const/4 v3, 0x0

    #@13a
    const/4 v4, 0x0

    #@13b
    move-object/from16 v0, p0

    #@13d
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/view/ViewPager;->scrollToItem(IZIZ)V

    #@140
    :cond_140
    const/4 v1, 0x0

    #@141
    move-object/from16 v0, p0

    #@143
    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    #@145
    return-void

    #@146
    :cond_146
    move v1, v5

    #@147
    move v5, v3

    #@148
    move v3, v4

    #@149
    move v4, v6

    #@14a
    goto/16 :goto_65

    #@14c
    :pswitch_data_14c
    .packed-switch 0x1
        :pswitch_76
        :pswitch_42
        :pswitch_6d
        :pswitch_42
        :pswitch_86
    .end packed-switch

    #@15a
    :sswitch_data_15a
    .sparse-switch
        0x10 -> :sswitch_a2
        0x30 -> :sswitch_96
        0x50 -> :sswitch_b4
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 16

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p1}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    #@4
    move-result v0

    #@5
    const/4 v1, 0x0

    #@6
    invoke-static {v1, p2}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    #@9
    move-result v1

    #@a
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->setMeasuredDimension(II)V

    #@d
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    #@10
    move-result v0

    #@11
    div-int/lit8 v1, v0, 0xa

    #@13
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mDefaultGutterSize:I

    #@15
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@18
    move-result v1

    #@19
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mGutterSize:I

    #@1b
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    #@1e
    move-result v1

    #@1f
    sub-int/2addr v0, v1

    #@20
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    #@23
    move-result v1

    #@24
    sub-int v4, v0, v1

    #@26
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I

    #@29
    move-result v0

    #@2a
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    #@2d
    move-result v1

    #@2e
    sub-int/2addr v0, v1

    #@2f
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    #@32
    move-result v1

    #@33
    sub-int v5, v0, v1

    #@35
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    #@38
    move-result v9

    #@39
    const/4 v0, 0x0

    #@3a
    move v8, v0

    #@3b
    :goto_3b
    if-ge v8, v9, :cond_bc

    #@3d
    invoke-virtual {p0, v8}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    #@40
    move-result-object v10

    #@41
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    #@44
    move-result v0

    #@45
    const/16 v1, 0x8

    #@47
    if-eq v0, v1, :cond_a5

    #@49
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4c
    move-result-object v0

    #@4d
    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    #@4f
    if-eqz v0, :cond_a5

    #@51
    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    #@53
    if-eqz v1, :cond_a5

    #@55
    iget v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    #@57
    and-int/lit8 v6, v1, 0x7

    #@59
    iget v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    #@5b
    and-int/lit8 v3, v1, 0x70

    #@5d
    const/high16 v1, -0x80000000

    #@5f
    const/high16 v2, -0x80000000

    #@61
    const/16 v7, 0x30

    #@63
    if-eq v3, v7, :cond_69

    #@65
    const/16 v7, 0x50

    #@67
    if-ne v3, v7, :cond_a9

    #@69
    :cond_69
    const/4 v3, 0x1

    #@6a
    move v7, v3

    #@6b
    :goto_6b
    const/4 v3, 0x3

    #@6c
    if-eq v6, v3, :cond_71

    #@6e
    const/4 v3, 0x5

    #@6f
    if-ne v6, v3, :cond_ac

    #@71
    :cond_71
    const/4 v3, 0x1

    #@72
    move v6, v3

    #@73
    :goto_73
    if-eqz v7, :cond_af

    #@75
    const/high16 v1, 0x40000000    # 2.0f

    #@77
    :cond_77
    :goto_77
    iget v3, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    #@79
    const/4 v11, -0x2

    #@7a
    if-eq v3, v11, :cond_10c

    #@7c
    const/high16 v1, 0x40000000    # 2.0f

    #@7e
    iget v3, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    #@80
    const/4 v11, -0x1

    #@81
    if-eq v3, v11, :cond_10c

    #@83
    iget v3, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    #@85
    :goto_85
    iget v11, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    #@87
    const/4 v12, -0x2

    #@88
    if-eq v11, v12, :cond_10a

    #@8a
    const/high16 v2, 0x40000000    # 2.0f

    #@8c
    iget v11, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    #@8e
    const/4 v12, -0x1

    #@8f
    if-eq v11, v12, :cond_10a

    #@91
    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    #@93
    :goto_93
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@96
    move-result v1

    #@97
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@9a
    move-result v0

    #@9b
    invoke-virtual {v10, v1, v0}, Landroid/view/View;->measure(II)V

    #@9e
    if-eqz v7, :cond_b4

    #@a0
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    #@a3
    move-result v0

    #@a4
    sub-int/2addr v5, v0

    #@a5
    :cond_a5
    :goto_a5
    add-int/lit8 v0, v8, 0x1

    #@a7
    move v8, v0

    #@a8
    goto :goto_3b

    #@a9
    :cond_a9
    const/4 v3, 0x0

    #@aa
    move v7, v3

    #@ab
    goto :goto_6b

    #@ac
    :cond_ac
    const/4 v3, 0x0

    #@ad
    move v6, v3

    #@ae
    goto :goto_73

    #@af
    :cond_af
    if-eqz v6, :cond_77

    #@b1
    const/high16 v2, 0x40000000    # 2.0f

    #@b3
    goto :goto_77

    #@b4
    :cond_b4
    if-eqz v6, :cond_a5

    #@b6
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    #@b9
    move-result v0

    #@ba
    sub-int/2addr v4, v0

    #@bb
    goto :goto_a5

    #@bc
    :cond_bc
    const/high16 v0, 0x40000000    # 2.0f

    #@be
    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@c1
    move-result v0

    #@c2
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mChildWidthMeasureSpec:I

    #@c4
    const/high16 v0, 0x40000000    # 2.0f

    #@c6
    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@c9
    move-result v0

    #@ca
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mChildHeightMeasureSpec:I

    #@cc
    const/4 v0, 0x1

    #@cd
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    #@cf
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    #@d2
    const/4 v0, 0x0

    #@d3
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    #@d5
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    #@d8
    move-result v2

    #@d9
    const/4 v0, 0x0

    #@da
    move v1, v0

    #@db
    :goto_db
    if-ge v1, v2, :cond_109

    #@dd
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    #@e0
    move-result-object v3

    #@e1
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    #@e4
    move-result v0

    #@e5
    const/16 v5, 0x8

    #@e7
    if-eq v0, v5, :cond_105

    #@e9
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@ec
    move-result-object v0

    #@ed
    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    #@ef
    if-eqz v0, :cond_f5

    #@f1
    iget-boolean v5, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    #@f3
    if-nez v5, :cond_105

    #@f5
    :cond_f5
    int-to-float v5, v4

    #@f6
    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    #@f8
    mul-float/2addr v0, v5

    #@f9
    float-to-int v0, v0

    #@fa
    const/high16 v5, 0x40000000    # 2.0f

    #@fc
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@ff
    move-result v0

    #@100
    iget v5, p0, Landroid/support/v4/view/ViewPager;->mChildHeightMeasureSpec:I

    #@102
    invoke-virtual {v3, v0, v5}, Landroid/view/View;->measure(II)V

    #@105
    :cond_105
    add-int/lit8 v0, v1, 0x1

    #@107
    move v1, v0

    #@108
    goto :goto_db

    #@109
    :cond_109
    return-void

    #@10a
    :cond_10a
    move v0, v5

    #@10b
    goto :goto_93

    #@10c
    :cond_10c
    move v3, v4

    #@10d
    goto/16 :goto_85
.end method

.method protected onPageScrolled(IFI)V
    .registers 15

    #@0
    const/4 v3, 0x0

    #@1
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mDecorChildCount:I

    #@3
    if-lez v0, :cond_74

    #@5
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    #@8
    move-result v5

    #@9
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    #@c
    move-result v1

    #@d
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    #@10
    move-result v2

    #@11
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    #@14
    move-result v6

    #@15
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    #@18
    move-result v7

    #@19
    move v4, v3

    #@1a
    :goto_1a
    if-ge v4, v7, :cond_74

    #@1c
    invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    #@1f
    move-result-object v8

    #@20
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    #@26
    iget-boolean v9, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    #@28
    if-nez v9, :cond_32

    #@2a
    move v0, v1

    #@2b
    move v1, v2

    #@2c
    :cond_2c
    :goto_2c
    add-int/lit8 v2, v4, 0x1

    #@2e
    move v4, v2

    #@2f
    move v2, v1

    #@30
    move v1, v0

    #@31
    goto :goto_1a

    #@32
    :cond_32
    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    #@34
    and-int/lit8 v0, v0, 0x7

    #@36
    packed-switch v0, :pswitch_data_be

    #@39
    :pswitch_39
    move v0, v1

    #@3a
    move v10, v1

    #@3b
    move v1, v2

    #@3c
    move v2, v10

    #@3d
    :goto_3d
    add-int/2addr v2, v5

    #@3e
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    #@41
    move-result v9

    #@42
    sub-int/2addr v2, v9

    #@43
    if-eqz v2, :cond_2c

    #@45
    invoke-virtual {v8, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@48
    goto :goto_2c

    #@49
    :pswitch_49
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    #@4c
    move-result v0

    #@4d
    add-int/2addr v0, v1

    #@4e
    move v10, v2

    #@4f
    move v2, v1

    #@50
    move v1, v10

    #@51
    goto :goto_3d

    #@52
    :pswitch_52
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    #@55
    move-result v0

    #@56
    sub-int v0, v6, v0

    #@58
    div-int/lit8 v0, v0, 0x2

    #@5a
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@5d
    move-result v0

    #@5e
    move v10, v2

    #@5f
    move v2, v0

    #@60
    move v0, v1

    #@61
    move v1, v10

    #@62
    goto :goto_3d

    #@63
    :pswitch_63
    sub-int v0, v6, v2

    #@65
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    #@68
    move-result v9

    #@69
    sub-int/2addr v0, v9

    #@6a
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    #@6d
    move-result v9

    #@6e
    add-int/2addr v2, v9

    #@6f
    move v10, v2

    #@70
    move v2, v0

    #@71
    move v0, v1

    #@72
    move v1, v10

    #@73
    goto :goto_3d

    #@74
    :cond_74
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@76
    if-eqz v0, :cond_7d

    #@78
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@7a
    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    #@7d
    :cond_7d
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@7f
    if-eqz v0, :cond_86

    #@81
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@83
    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    #@86
    :cond_86
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    #@88
    if-eqz v0, :cond_b9

    #@8a
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    #@8d
    move-result v2

    #@8e
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    #@91
    move-result v4

    #@92
    move v1, v3

    #@93
    :goto_93
    if-ge v1, v4, :cond_b9

    #@95
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    #@98
    move-result-object v3

    #@99
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@9c
    move-result-object v0

    #@9d
    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    #@9f
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    #@a1
    if-eqz v0, :cond_a7

    #@a3
    :goto_a3
    add-int/lit8 v0, v1, 0x1

    #@a5
    move v1, v0

    #@a6
    goto :goto_93

    #@a7
    :cond_a7
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    #@aa
    move-result v0

    #@ab
    sub-int/2addr v0, v2

    #@ac
    int-to-float v0, v0

    #@ad
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    #@b0
    move-result v5

    #@b1
    int-to-float v5, v5

    #@b2
    div-float/2addr v0, v5

    #@b3
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    #@b5
    invoke-interface {v5, v3, v0}, Landroid/support/v4/view/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    #@b8
    goto :goto_a3

    #@b9
    :cond_b9
    const/4 v0, 0x1

    #@ba
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    #@bc
    return-void

    #@bd
    nop

    #@be
    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_52
        :pswitch_39
        :pswitch_49
        :pswitch_39
        :pswitch_63
    .end packed-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 11

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v3, -0x1

    #@3
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    #@6
    move-result v2

    #@7
    and-int/lit8 v4, p1, 0x2

    #@9
    if-eqz v4, :cond_2c

    #@b
    move v3, v0

    #@c
    move v4, v1

    #@d
    :goto_d
    if-eq v4, v2, :cond_33

    #@f
    invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    #@12
    move-result-object v5

    #@13
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    #@16
    move-result v6

    #@17
    if-nez v6, :cond_31

    #@19
    invoke-virtual {p0, v5}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    #@1c
    move-result-object v6

    #@1d
    if-eqz v6, :cond_31

    #@1f
    iget v6, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@21
    iget v7, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@23
    if-ne v6, v7, :cond_31

    #@25
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    #@28
    move-result v5

    #@29
    if-eqz v5, :cond_31

    #@2b
    :goto_2b
    return v0

    #@2c
    :cond_2c
    add-int/lit8 v2, v2, -0x1

    #@2e
    move v4, v2

    #@2f
    move v2, v3

    #@30
    goto :goto_d

    #@31
    :cond_31
    add-int/2addr v4, v3

    #@32
    goto :goto_d

    #@33
    :cond_33
    move v0, v1

    #@34
    goto :goto_2b
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    #@0
    instance-of v0, p1, Landroid/support/v4/view/ViewPager$SavedState;

    #@2
    if-nez v0, :cond_8

    #@4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@7
    :goto_7
    return-void

    #@8
    :cond_8
    check-cast p1, Landroid/support/v4/view/ViewPager$SavedState;

    #@a
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@d
    move-result-object v0

    #@e
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@11
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@13
    if-eqz v0, :cond_26

    #@15
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@17
    iget-object v1, p1, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    #@19
    iget-object v2, p1, Landroid/support/v4/view/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    #@1b
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    #@1e
    iget v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    #@20
    const/4 v1, 0x0

    #@21
    const/4 v2, 0x1

    #@22
    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    #@25
    goto :goto_7

    #@26
    :cond_26
    iget v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    #@28
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    #@2a
    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    #@2c
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    #@2e
    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    #@30
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    #@32
    goto :goto_7
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    #@0
    new-instance v0, Landroid/support/v4/view/ViewPager$SavedState;

    #@2
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@b
    iput v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    #@d
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@f
    if-eqz v1, :cond_19

    #@11
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@13
    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    #@16
    move-result-object v1

    #@17
    iput-object v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    #@19
    :cond_19
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 7

    #@0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    #@3
    if-eq p1, p3, :cond_c

    #@5
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #@7
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #@9
    invoke-direct {p0, p1, p3, v0, v1}, Landroid/support/v4/view/ViewPager;->recomputeScrollPosition(IIII)V

    #@c
    :cond_c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    #@0
    const/4 v6, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v0, 0x1

    #@3
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    #@5
    if-eqz v2, :cond_8

    #@7
    :cond_7
    :goto_7
    return v0

    #@8
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_16

    #@e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_16

    #@14
    move v0, v1

    #@15
    goto :goto_7

    #@16
    :cond_16
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@18
    if-eqz v2, :cond_22

    #@1a
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@1c
    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    #@1f
    move-result v2

    #@20
    if-nez v2, :cond_24

    #@22
    :cond_22
    move v0, v1

    #@23
    goto :goto_7

    #@24
    :cond_24
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@26
    if-nez v2, :cond_2e

    #@28
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@2b
    move-result-object v2

    #@2c
    iput-object v2, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@2e
    :cond_2e
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@30
    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@36
    move-result v2

    #@37
    and-int/lit16 v2, v2, 0xff

    #@39
    packed-switch v2, :pswitch_data_16c

    #@3c
    :cond_3c
    :goto_3c
    :pswitch_3c
    if-eqz v1, :cond_7

    #@3e
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@41
    goto :goto_7

    #@42
    :pswitch_42
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@44
    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    #@47
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    #@49
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    #@4c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@4f
    move-result v2

    #@50
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    #@52
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@57
    move-result v2

    #@58
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionY:F

    #@5a
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    #@5c
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@5f
    move-result v2

    #@60
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #@62
    goto :goto_3c

    #@63
    :pswitch_63
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #@65
    if-nez v2, :cond_b7

    #@67
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #@69
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    #@6c
    move-result v2

    #@6d
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    #@70
    move-result v3

    #@71
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@73
    sub-float v4, v3, v4

    #@75
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    #@78
    move-result v4

    #@79
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    #@7c
    move-result v5

    #@7d
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    #@7f
    sub-float v2, v5, v2

    #@81
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    #@84
    move-result v2

    #@85
    iget v6, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    #@87
    int-to-float v6, v6

    #@88
    cmpl-float v6, v4, v6

    #@8a
    if-lez v6, :cond_b7

    #@8c
    cmpl-float v2, v4, v2

    #@8e
    if-lez v2, :cond_b7

    #@90
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #@92
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    #@95
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    #@97
    sub-float v2, v3, v2

    #@99
    const/4 v3, 0x0

    #@9a
    cmpl-float v2, v2, v3

    #@9c
    if-lez v2, :cond_cd

    #@9e
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    #@a0
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    #@a2
    int-to-float v3, v3

    #@a3
    add-float/2addr v2, v3

    #@a4
    :goto_a4
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@a6
    iput v5, p0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    #@a8
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    #@ab
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    #@ae
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    #@b1
    move-result-object v2

    #@b2
    if-eqz v2, :cond_b7

    #@b4
    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@b7
    :cond_b7
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #@b9
    if-eqz v2, :cond_3c

    #@bb
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #@bd
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    #@c0
    move-result v1

    #@c1
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    #@c4
    move-result v1

    #@c5
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->performDrag(F)Z

    #@c8
    move-result v1

    #@c9
    or-int/lit8 v1, v1, 0x0

    #@cb
    goto/16 :goto_3c

    #@cd
    :cond_cd
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    #@cf
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    #@d1
    int-to-float v3, v3

    #@d2
    sub-float/2addr v2, v3

    #@d3
    goto :goto_a4

    #@d4
    :pswitch_d4
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #@d6
    if-eqz v2, :cond_3c

    #@d8
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@da
    const/16 v2, 0x3e8

    #@dc
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    #@de
    int-to-float v3, v3

    #@df
    invoke-virtual {v1, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@e2
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #@e4
    invoke-static {v1, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    #@e7
    move-result v1

    #@e8
    float-to-int v1, v1

    #@e9
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    #@eb
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    #@ee
    move-result v2

    #@ef
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    #@f2
    move-result v3

    #@f3
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;

    #@f6
    move-result-object v4

    #@f7
    iget v5, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@f9
    int-to-float v3, v3

    #@fa
    int-to-float v2, v2

    #@fb
    div-float v2, v3, v2

    #@fd
    iget v3, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@ff
    sub-float/2addr v2, v3

    #@100
    iget v3, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@102
    div-float/2addr v2, v3

    #@103
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #@105
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    #@108
    move-result v3

    #@109
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    #@10c
    move-result v3

    #@10d
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    #@10f
    sub-float/2addr v3, v4

    #@110
    float-to-int v3, v3

    #@111
    invoke-direct {p0, v5, v2, v1, v3}, Landroid/support/v4/view/ViewPager;->determineTargetPage(IFII)I

    #@114
    move-result v2

    #@115
    invoke-virtual {p0, v2, v0, v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    #@118
    iput v6, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #@11a
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->endDrag()V

    #@11d
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #@11f
    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    #@122
    move-result v1

    #@123
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #@125
    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    #@128
    move-result v2

    #@129
    or-int/2addr v1, v2

    #@12a
    goto/16 :goto_3c

    #@12c
    :pswitch_12c
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #@12e
    if-eqz v2, :cond_3c

    #@130
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@132
    invoke-direct {p0, v2, v0, v1, v1}, Landroid/support/v4/view/ViewPager;->scrollToItem(IZIZ)V

    #@135
    iput v6, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #@137
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->endDrag()V

    #@13a
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #@13c
    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    #@13f
    move-result v1

    #@140
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #@142
    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    #@145
    move-result v2

    #@146
    or-int/2addr v1, v2

    #@147
    goto/16 :goto_3c

    #@149
    :pswitch_149
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    #@14c
    move-result v2

    #@14d
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    #@150
    move-result v3

    #@151
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@153
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@156
    move-result v2

    #@157
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #@159
    goto/16 :goto_3c

    #@15b
    :pswitch_15b
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    #@15e
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #@160
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    #@163
    move-result v2

    #@164
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    #@167
    move-result v2

    #@168
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@16a
    goto/16 :goto_3c

    #@16c
    :pswitch_data_16c
    .packed-switch 0x0
        :pswitch_42
        :pswitch_d4
        :pswitch_63
        :pswitch_12c
        :pswitch_3c
        :pswitch_149
        :pswitch_15b
    .end packed-switch
.end method

.method pageLeft()Z
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@3
    if-lez v1, :cond_d

    #@5
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@7
    add-int/lit8 v1, v1, -0x1

    #@9
    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    #@c
    :goto_c
    return v0

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    goto :goto_c
.end method

.method pageRight()Z
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@3
    if-eqz v1, :cond_19

    #@5
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@7
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@9
    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    #@c
    move-result v2

    #@d
    add-int/lit8 v2, v2, -0x1

    #@f
    if-ge v1, v2, :cond_19

    #@11
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@13
    add-int/lit8 v1, v1, 0x1

    #@15
    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    #@18
    :goto_18
    return v0

    #@19
    :cond_19
    const/4 v0, 0x0

    #@1a
    goto :goto_18
.end method

.method populate()V
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@2
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->populate(I)V

    #@5
    return-void
.end method

.method populate(I)V
    .registers 19

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x2

    #@2
    move-object/from16 v0, p0

    #@4
    iget v4, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@6
    move/from16 v0, p1

    #@8
    if-eq v4, v0, :cond_320

    #@a
    move-object/from16 v0, p0

    #@c
    iget v2, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@e
    move/from16 v0, p1

    #@10
    if-ge v2, v0, :cond_2f

    #@12
    const/16 v2, 0x42

    #@14
    :goto_14
    move-object/from16 v0, p0

    #@16
    iget v3, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@18
    move-object/from16 v0, p0

    #@1a
    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    #@1d
    move-result-object v3

    #@1e
    move/from16 v0, p1

    #@20
    move-object/from16 v1, p0

    #@22
    iput v0, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@24
    move v4, v2

    #@25
    :goto_25
    move-object/from16 v0, p0

    #@27
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@29
    if-nez v2, :cond_32

    #@2b
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->sortChildDrawingOrder()V

    #@2e
    :cond_2e
    :goto_2e
    return-void

    #@2f
    :cond_2f
    const/16 v2, 0x11

    #@31
    goto :goto_14

    #@32
    :cond_32
    move-object/from16 v0, p0

    #@34
    iget-boolean v2, v0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    #@36
    if-eqz v2, :cond_3c

    #@38
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->sortChildDrawingOrder()V

    #@3b
    goto :goto_2e

    #@3c
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    #@3f
    move-result-object v2

    #@40
    if-eqz v2, :cond_2e

    #@42
    move-object/from16 v0, p0

    #@44
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@46
    move-object/from16 v0, p0

    #@48
    invoke-virtual {v2, v0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    #@4b
    move-object/from16 v0, p0

    #@4d
    iget v2, v0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    #@4f
    const/4 v5, 0x0

    #@50
    move-object/from16 v0, p0

    #@52
    iget v6, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@54
    sub-int/2addr v6, v2

    #@55
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    #@58
    move-result v11

    #@59
    move-object/from16 v0, p0

    #@5b
    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@5d
    invoke-virtual {v5}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    #@60
    move-result v12

    #@61
    add-int/lit8 v5, v12, -0x1

    #@63
    move-object/from16 v0, p0

    #@65
    iget v6, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@67
    add-int/2addr v2, v6

    #@68
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    #@6b
    move-result v13

    #@6c
    move-object/from16 v0, p0

    #@6e
    iget v2, v0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    #@70
    if-eq v12, v2, :cond_d9

    #@72
    :try_start_72
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getResources()Landroid/content/res/Resources;

    #@75
    move-result-object v2

    #@76
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getId()I

    #@79
    move-result v3

    #@7a
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_7d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_72 .. :try_end_7d} :catch_cf

    #@7d
    move-result-object v2

    #@7e
    :goto_7e
    new-instance v3, Ljava/lang/IllegalStateException;

    #@80
    new-instance v4, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string v5, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    #@87
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v4

    #@8b
    move-object/from16 v0, p0

    #@8d
    iget v5, v0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    #@8f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@92
    move-result-object v4

    #@93
    const-string v5, ", found: "

    #@95
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v4

    #@99
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v4

    #@9d
    const-string v5, " Pager id: "

    #@9f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v4

    #@a3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v2

    #@a7
    const-string v4, " Pager class: "

    #@a9
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v2

    #@ad
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b0
    move-result-object v4

    #@b1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v2

    #@b5
    const-string v4, " Problematic adapter: "

    #@b7
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v2

    #@bb
    move-object/from16 v0, p0

    #@bd
    iget-object v4, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@bf
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@c2
    move-result-object v4

    #@c3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v2

    #@c7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ca
    move-result-object v2

    #@cb
    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@ce
    throw v3

    #@cf
    :catch_cf
    move-exception v2

    #@d0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getId()I

    #@d3
    move-result v2

    #@d4
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@d7
    move-result-object v2

    #@d8
    goto :goto_7e

    #@d9
    :cond_d9
    const/4 v6, 0x0

    #@da
    const/4 v2, 0x0

    #@db
    move v5, v2

    #@dc
    :goto_dc
    move-object/from16 v0, p0

    #@de
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@e0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@e3
    move-result v2

    #@e4
    if-ge v5, v2, :cond_31d

    #@e6
    move-object/from16 v0, p0

    #@e8
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@ea
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@ed
    move-result-object v2

    #@ee
    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@f0
    iget v7, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@f2
    move-object/from16 v0, p0

    #@f4
    iget v8, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@f6
    if-lt v7, v8, :cond_1cb

    #@f8
    iget v7, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@fa
    move-object/from16 v0, p0

    #@fc
    iget v8, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@fe
    if-ne v7, v8, :cond_31d

    #@100
    :goto_100
    if-nez v2, :cond_31a

    #@102
    if-lez v12, :cond_31a

    #@104
    move-object/from16 v0, p0

    #@106
    iget v2, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@108
    move-object/from16 v0, p0

    #@10a
    invoke-virtual {v0, v2, v5}, Landroid/support/v4/view/ViewPager;->addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;

    #@10d
    move-result-object v2

    #@10e
    move-object v10, v2

    #@10f
    :goto_10f
    if-eqz v10, :cond_17c

    #@111
    const/4 v9, 0x0

    #@112
    add-int/lit8 v7, v5, -0x1

    #@114
    if-ltz v7, :cond_1d0

    #@116
    move-object/from16 v0, p0

    #@118
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@11a
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11d
    move-result-object v2

    #@11e
    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@120
    :goto_120
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    #@123
    move-result v14

    #@124
    if-gtz v14, :cond_1d3

    #@126
    const/4 v6, 0x0

    #@127
    :goto_127
    move-object/from16 v0, p0

    #@129
    iget v8, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@12b
    add-int/lit8 v8, v8, -0x1

    #@12d
    move/from16 v16, v7

    #@12f
    move v7, v9

    #@130
    move v9, v8

    #@131
    move v8, v5

    #@132
    move/from16 v5, v16

    #@134
    :goto_134
    if-ltz v9, :cond_13e

    #@136
    cmpl-float v15, v7, v6

    #@138
    if-ltz v15, :cond_212

    #@13a
    if-ge v9, v11, :cond_212

    #@13c
    if-nez v2, :cond_1e2

    #@13e
    :cond_13e
    iget v9, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@140
    add-int/lit8 v7, v8, 0x1

    #@142
    const/high16 v2, 0x40000000    # 2.0f

    #@144
    cmpg-float v2, v9, v2

    #@146
    if-gez v2, :cond_177

    #@148
    move-object/from16 v0, p0

    #@14a
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@14c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@14f
    move-result v2

    #@150
    if-ge v7, v2, :cond_248

    #@152
    move-object/from16 v0, p0

    #@154
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@156
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@159
    move-result-object v2

    #@15a
    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@15c
    move-object v6, v2

    #@15d
    :goto_15d
    if-gtz v14, :cond_24b

    #@15f
    const/4 v2, 0x0

    #@160
    move v5, v2

    #@161
    :goto_161
    move-object/from16 v0, p0

    #@163
    iget v2, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@165
    add-int/lit8 v2, v2, 0x1

    #@167
    move-object/from16 v16, v6

    #@169
    move v6, v9

    #@16a
    move v9, v2

    #@16b
    move-object/from16 v2, v16

    #@16d
    :goto_16d
    if-ge v9, v12, :cond_177

    #@16f
    cmpl-float v11, v6, v5

    #@171
    if-ltz v11, :cond_28c

    #@173
    if-le v9, v13, :cond_28c

    #@175
    if-nez v2, :cond_258

    #@177
    :cond_177
    move-object/from16 v0, p0

    #@179
    invoke-direct {v0, v10, v8, v3}, Landroid/support/v4/view/ViewPager;->calculatePageOffsets(Landroid/support/v4/view/ViewPager$ItemInfo;ILandroid/support/v4/view/ViewPager$ItemInfo;)V

    #@17c
    :cond_17c
    move-object/from16 v0, p0

    #@17e
    iget-object v3, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@180
    move-object/from16 v0, p0

    #@182
    iget v5, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@184
    if-eqz v10, :cond_2d0

    #@186
    iget-object v2, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #@188
    :goto_188
    move-object/from16 v0, p0

    #@18a
    invoke-virtual {v3, v0, v5, v2}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    #@18d
    move-object/from16 v0, p0

    #@18f
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@191
    move-object/from16 v0, p0

    #@193
    invoke-virtual {v2, v0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    #@196
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    #@199
    move-result v5

    #@19a
    const/4 v2, 0x0

    #@19b
    move v3, v2

    #@19c
    :goto_19c
    if-ge v3, v5, :cond_2d3

    #@19e
    move-object/from16 v0, p0

    #@1a0
    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    #@1a3
    move-result-object v6

    #@1a4
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1a7
    move-result-object v2

    #@1a8
    check-cast v2, Landroid/support/v4/view/ViewPager$LayoutParams;

    #@1aa
    iput v3, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->childIndex:I

    #@1ac
    iget-boolean v7, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    #@1ae
    if-nez v7, :cond_1c7

    #@1b0
    iget v7, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    #@1b2
    const/4 v8, 0x0

    #@1b3
    cmpl-float v7, v7, v8

    #@1b5
    if-nez v7, :cond_1c7

    #@1b7
    move-object/from16 v0, p0

    #@1b9
    invoke-virtual {v0, v6}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    #@1bc
    move-result-object v6

    #@1bd
    if-eqz v6, :cond_1c7

    #@1bf
    iget v7, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@1c1
    iput v7, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    #@1c3
    iget v6, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@1c5
    iput v6, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->position:I

    #@1c7
    :cond_1c7
    add-int/lit8 v2, v3, 0x1

    #@1c9
    move v3, v2

    #@1ca
    goto :goto_19c

    #@1cb
    :cond_1cb
    add-int/lit8 v2, v5, 0x1

    #@1cd
    move v5, v2

    #@1ce
    goto/16 :goto_dc

    #@1d0
    :cond_1d0
    const/4 v2, 0x0

    #@1d1
    goto/16 :goto_120

    #@1d3
    :cond_1d3
    const/high16 v6, 0x40000000    # 2.0f

    #@1d5
    iget v8, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@1d7
    sub-float/2addr v6, v8

    #@1d8
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    #@1db
    move-result v8

    #@1dc
    int-to-float v8, v8

    #@1dd
    int-to-float v15, v14

    #@1de
    div-float/2addr v8, v15

    #@1df
    add-float/2addr v6, v8

    #@1e0
    goto/16 :goto_127

    #@1e2
    :cond_1e2
    iget v15, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@1e4
    if-ne v9, v15, :cond_20c

    #@1e6
    iget-boolean v15, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    #@1e8
    if-nez v15, :cond_20c

    #@1ea
    move-object/from16 v0, p0

    #@1ec
    iget-object v15, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@1ee
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@1f1
    move-object/from16 v0, p0

    #@1f3
    iget-object v15, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@1f5
    iget-object v2, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #@1f7
    move-object/from16 v0, p0

    #@1f9
    invoke-virtual {v15, v0, v9, v2}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    #@1fc
    add-int/lit8 v5, v5, -0x1

    #@1fe
    add-int/lit8 v8, v8, -0x1

    #@200
    if-ltz v5, :cond_210

    #@202
    move-object/from16 v0, p0

    #@204
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@206
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@209
    move-result-object v2

    #@20a
    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@20c
    :cond_20c
    :goto_20c
    add-int/lit8 v9, v9, -0x1

    #@20e
    goto/16 :goto_134

    #@210
    :cond_210
    const/4 v2, 0x0

    #@211
    goto :goto_20c

    #@212
    :cond_212
    if-eqz v2, :cond_22c

    #@214
    iget v15, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@216
    if-ne v9, v15, :cond_22c

    #@218
    iget v2, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@21a
    add-float/2addr v7, v2

    #@21b
    add-int/lit8 v5, v5, -0x1

    #@21d
    if-ltz v5, :cond_22a

    #@21f
    move-object/from16 v0, p0

    #@221
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@223
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@226
    move-result-object v2

    #@227
    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@229
    goto :goto_20c

    #@22a
    :cond_22a
    const/4 v2, 0x0

    #@22b
    goto :goto_20c

    #@22c
    :cond_22c
    add-int/lit8 v2, v5, 0x1

    #@22e
    move-object/from16 v0, p0

    #@230
    invoke-virtual {v0, v9, v2}, Landroid/support/v4/view/ViewPager;->addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;

    #@233
    move-result-object v2

    #@234
    iget v2, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@236
    add-float/2addr v7, v2

    #@237
    add-int/lit8 v8, v8, 0x1

    #@239
    if-ltz v5, :cond_246

    #@23b
    move-object/from16 v0, p0

    #@23d
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@23f
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@242
    move-result-object v2

    #@243
    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@245
    goto :goto_20c

    #@246
    :cond_246
    const/4 v2, 0x0

    #@247
    goto :goto_20c

    #@248
    :cond_248
    const/4 v6, 0x0

    #@249
    goto/16 :goto_15d

    #@24b
    :cond_24b
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    #@24e
    move-result v2

    #@24f
    int-to-float v2, v2

    #@250
    int-to-float v5, v14

    #@251
    div-float/2addr v2, v5

    #@252
    const/high16 v5, 0x40000000    # 2.0f

    #@254
    add-float/2addr v2, v5

    #@255
    move v5, v2

    #@256
    goto/16 :goto_161

    #@258
    :cond_258
    iget v11, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@25a
    if-ne v9, v11, :cond_286

    #@25c
    iget-boolean v11, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    #@25e
    if-nez v11, :cond_286

    #@260
    move-object/from16 v0, p0

    #@262
    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@264
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@267
    move-object/from16 v0, p0

    #@269
    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@26b
    iget-object v2, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #@26d
    move-object/from16 v0, p0

    #@26f
    invoke-virtual {v11, v0, v9, v2}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    #@272
    move-object/from16 v0, p0

    #@274
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@276
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@279
    move-result v2

    #@27a
    if-ge v7, v2, :cond_28a

    #@27c
    move-object/from16 v0, p0

    #@27e
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@280
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@283
    move-result-object v2

    #@284
    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@286
    :cond_286
    :goto_286
    add-int/lit8 v9, v9, 0x1

    #@288
    goto/16 :goto_16d

    #@28a
    :cond_28a
    const/4 v2, 0x0

    #@28b
    goto :goto_286

    #@28c
    :cond_28c
    if-eqz v2, :cond_2ae

    #@28e
    iget v11, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@290
    if-ne v9, v11, :cond_2ae

    #@292
    iget v2, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@294
    add-float/2addr v6, v2

    #@295
    add-int/lit8 v7, v7, 0x1

    #@297
    move-object/from16 v0, p0

    #@299
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@29b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@29e
    move-result v2

    #@29f
    if-ge v7, v2, :cond_2ac

    #@2a1
    move-object/from16 v0, p0

    #@2a3
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@2a5
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2a8
    move-result-object v2

    #@2a9
    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@2ab
    goto :goto_286

    #@2ac
    :cond_2ac
    const/4 v2, 0x0

    #@2ad
    goto :goto_286

    #@2ae
    :cond_2ae
    move-object/from16 v0, p0

    #@2b0
    invoke-virtual {v0, v9, v7}, Landroid/support/v4/view/ViewPager;->addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;

    #@2b3
    move-result-object v2

    #@2b4
    add-int/lit8 v7, v7, 0x1

    #@2b6
    iget v2, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@2b8
    add-float/2addr v6, v2

    #@2b9
    move-object/from16 v0, p0

    #@2bb
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@2bd
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@2c0
    move-result v2

    #@2c1
    if-ge v7, v2, :cond_2ce

    #@2c3
    move-object/from16 v0, p0

    #@2c5
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@2c7
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2ca
    move-result-object v2

    #@2cb
    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@2cd
    goto :goto_286

    #@2ce
    :cond_2ce
    const/4 v2, 0x0

    #@2cf
    goto :goto_286

    #@2d0
    :cond_2d0
    const/4 v2, 0x0

    #@2d1
    goto/16 :goto_188

    #@2d3
    :cond_2d3
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->sortChildDrawingOrder()V

    #@2d6
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->hasFocus()Z

    #@2d9
    move-result v2

    #@2da
    if-eqz v2, :cond_2e

    #@2dc
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    #@2df
    move-result-object v2

    #@2e0
    if-eqz v2, :cond_318

    #@2e2
    move-object/from16 v0, p0

    #@2e4
    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->infoForAnyChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    #@2e7
    move-result-object v2

    #@2e8
    :goto_2e8
    if-eqz v2, :cond_2f2

    #@2ea
    iget v2, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@2ec
    move-object/from16 v0, p0

    #@2ee
    iget v3, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@2f0
    if-eq v2, v3, :cond_2e

    #@2f2
    :cond_2f2
    const/4 v2, 0x0

    #@2f3
    :goto_2f3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    #@2f6
    move-result v3

    #@2f7
    if-ge v2, v3, :cond_2e

    #@2f9
    move-object/from16 v0, p0

    #@2fb
    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    #@2fe
    move-result-object v3

    #@2ff
    move-object/from16 v0, p0

    #@301
    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    #@304
    move-result-object v5

    #@305
    if-eqz v5, :cond_315

    #@307
    iget v5, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@309
    move-object/from16 v0, p0

    #@30b
    iget v6, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@30d
    if-ne v5, v6, :cond_315

    #@30f
    invoke-virtual {v3, v4}, Landroid/view/View;->requestFocus(I)Z

    #@312
    move-result v3

    #@313
    if-nez v3, :cond_2e

    #@315
    :cond_315
    add-int/lit8 v2, v2, 0x1

    #@317
    goto :goto_2f3

    #@318
    :cond_318
    const/4 v2, 0x0

    #@319
    goto :goto_2e8

    #@31a
    :cond_31a
    move-object v10, v2

    #@31b
    goto/16 :goto_10f

    #@31d
    :cond_31d
    move-object v2, v6

    #@31e
    goto/16 :goto_100

    #@320
    :cond_320
    move v4, v3

    #@321
    move-object v3, v2

    #@322
    goto/16 :goto_25
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3

    #@0
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    #@7
    :goto_7
    return-void

    #@8
    :cond_8
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@b
    goto :goto_7
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .registers 9

    #@0
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@5
    if-eqz v0, :cond_43

    #@7
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@9
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    #@b
    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    #@e
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@10
    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    #@13
    move v1, v2

    #@14
    :goto_14
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v0

    #@1a
    if-ge v1, v0, :cond_31

    #@1c
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@24
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@26
    iget v4, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@28
    iget-object v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #@2a
    invoke-virtual {v3, p0, v4, v0}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    #@2d
    add-int/lit8 v0, v1, 0x1

    #@2f
    move v1, v0

    #@30
    goto :goto_14

    #@31
    :cond_31
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@33
    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    #@36
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@38
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@3b
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->removeNonDecorViews()V

    #@3e
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@40
    invoke-virtual {p0, v2, v2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    #@43
    :cond_43
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@45
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@47
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    #@49
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@4b
    if-eqz v1, :cond_86

    #@4d
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    #@4f
    if-nez v1, :cond_58

    #@51
    new-instance v1, Landroid/support/v4/view/ViewPager$PagerObserver;

    #@53
    invoke-direct {v1, p0, v5}, Landroid/support/v4/view/ViewPager$PagerObserver;-><init>(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/ViewPager$1;)V

    #@56
    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    #@58
    :cond_58
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@5a
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    #@5c
    invoke-virtual {v1, v3}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@5f
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    #@61
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    #@63
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    #@65
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@67
    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    #@6a
    move-result v3

    #@6b
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    #@6d
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    #@6f
    if-ltz v3, :cond_92

    #@71
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@73
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    #@75
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    #@77
    invoke-virtual {v1, v3, v4}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    #@7a
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    #@7c
    invoke-virtual {p0, v1, v2, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    #@7f
    const/4 v1, -0x1

    #@80
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    #@82
    iput-object v5, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    #@84
    iput-object v5, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    #@86
    :cond_86
    :goto_86
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    #@88
    if-eqz v1, :cond_91

    #@8a
    if-eq v0, p1, :cond_91

    #@8c
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    #@8e
    invoke-interface {v1, v0, p1}, Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    #@91
    :cond_91
    return-void

    #@92
    :cond_92
    if-nez v1, :cond_98

    #@94
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    #@97
    goto :goto_86

    #@98
    :cond_98
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    #@9b
    goto :goto_86
.end method

.method setChildrenDrawingOrderEnabledCompat(Z)V
    .registers 7

    #@0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/4 v1, 0x7

    #@3
    if-lt v0, v1, :cond_2a

    #@5
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    #@7
    if-nez v0, :cond_1b

    #@9
    :try_start_9
    const-class v0, Landroid/view/ViewGroup;

    #@b
    const-string v1, "setChildrenDrawingOrderEnabled"

    #@d
    const/4 v2, 0x1

    #@e
    new-array v2, v2, [Ljava/lang/Class;

    #@10
    const/4 v3, 0x0

    #@11
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@13
    aput-object v4, v2, v3

    #@15
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_1b} :catch_2b

    #@1b
    :cond_1b
    :goto_1b
    :try_start_1b
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    #@1d
    const/4 v1, 0x1

    #@1e
    new-array v1, v1, [Ljava/lang/Object;

    #@20
    const/4 v2, 0x0

    #@21
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@24
    move-result-object v3

    #@25
    aput-object v3, v1, v2

    #@27
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2a} :catch_34

    #@2a
    :cond_2a
    :goto_2a
    return-void

    #@2b
    :catch_2b
    move-exception v0

    #@2c
    const-string v1, "ViewPager"

    #@2e
    const-string v2, "Can\'t find setChildrenDrawingOrderEnabled"

    #@30
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@33
    goto :goto_1b

    #@34
    :catch_34
    move-exception v0

    #@35
    const-string v1, "ViewPager"

    #@37
    const-string v2, "Error changing children drawing order"

    #@39
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3c
    goto :goto_2a
.end method

.method public setCurrentItem(I)V
    .registers 4

    #@0
    const/4 v1, 0x0

    #@1
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    #@3
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    #@5
    if-nez v0, :cond_c

    #@7
    const/4 v0, 0x1

    #@8
    :goto_8
    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    #@b
    return-void

    #@c
    :cond_c
    move v0, v1

    #@d
    goto :goto_8
.end method

.method public setCurrentItem(IZ)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    #@3
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    #@6
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    #@4
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .registers 9

    #@0
    const/4 v3, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@4
    if-eqz v0, :cond_e

    #@6
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@8
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    #@b
    move-result v0

    #@c
    if-gtz v0, :cond_12

    #@e
    :cond_e
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    #@11
    :goto_11
    return-void

    #@12
    :cond_12
    if-nez p3, :cond_24

    #@14
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@16
    if-ne v0, p1, :cond_24

    #@18
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_24

    #@20
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    #@23
    goto :goto_11

    #@24
    :cond_24
    if-gez p1, :cond_4b

    #@26
    move p1, v1

    #@27
    :cond_27
    :goto_27
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    #@29
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@2b
    add-int/2addr v2, v0

    #@2c
    if-gt p1, v2, :cond_34

    #@2e
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@30
    sub-int v0, v2, v0

    #@32
    if-ge p1, v0, :cond_5c

    #@34
    :cond_34
    move v2, v1

    #@35
    :goto_35
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@3a
    move-result v0

    #@3b
    if-ge v2, v0, :cond_5c

    #@3d
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@3f
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v0

    #@43
    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@45
    iput-boolean v3, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    #@47
    add-int/lit8 v0, v2, 0x1

    #@49
    move v2, v0

    #@4a
    goto :goto_35

    #@4b
    :cond_4b
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@4d
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    #@50
    move-result v0

    #@51
    if-lt p1, v0, :cond_27

    #@53
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@55
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    #@58
    move-result v0

    #@59
    add-int/lit8 p1, v0, -0x1

    #@5b
    goto :goto_27

    #@5c
    :cond_5c
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@5e
    if-eq v0, p1, :cond_61

    #@60
    move v1, v3

    #@61
    :cond_61
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    #@63
    if-eqz v0, :cond_81

    #@65
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@67
    if-eqz v1, :cond_72

    #@69
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@6b
    if-eqz v0, :cond_72

    #@6d
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@6f
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    #@72
    :cond_72
    if-eqz v1, :cond_7d

    #@74
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@76
    if-eqz v0, :cond_7d

    #@78
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@7a
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    #@7d
    :cond_7d
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    #@80
    goto :goto_11

    #@81
    :cond_81
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->populate(I)V

    #@84
    invoke-direct {p0, p1, p2, p4, v1}, Landroid/support/v4/view/ViewPager;->scrollToItem(IZIZ)V

    #@87
    goto :goto_11
.end method

.method setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@2
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@4
    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    if-ge p1, v0, :cond_26

    #@3
    const-string v1, "ViewPager"

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string v3, "Requested offscreen page limit "

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    const-string v3, " too small; defaulting to "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    move p1, v0

    #@26
    :cond_26
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    #@28
    if-eq p1, v0, :cond_2f

    #@2a
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    #@2c
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    #@2f
    :cond_2f
    return-void
.end method

.method setOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V
    .registers 2

    #@0
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    #@2
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .registers 2

    #@0
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@2
    return-void
.end method

.method public setPageMargin(I)V
    .registers 4

    #@0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #@2
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #@4
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    #@7
    move-result v1

    #@8
    invoke-direct {p0, v1, v1, p1, v0}, Landroid/support/v4/view/ViewPager;->recomputeScrollPosition(IIII)V

    #@b
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    #@e
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .registers 3

    #@0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    #@f
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz p1, :cond_7

    #@4
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->refreshDrawableState()V

    #@7
    :cond_7
    if-nez p1, :cond_11

    #@9
    const/4 v0, 0x1

    #@a
    :goto_a
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    #@d
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    #@10
    return-void

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    goto :goto_a
.end method

.method public setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V
    .registers 7

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@4
    const/16 v3, 0xb

    #@6
    if-lt v0, v3, :cond_24

    #@8
    if-eqz p2, :cond_25

    #@a
    move v0, v1

    #@b
    :goto_b
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    #@d
    if-eqz v3, :cond_27

    #@f
    move v3, v1

    #@10
    :goto_10
    if-eq v0, v3, :cond_29

    #@12
    move v3, v1

    #@13
    :goto_13
    iput-object p2, p0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    #@15
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setChildrenDrawingOrderEnabledCompat(Z)V

    #@18
    if-eqz v0, :cond_2b

    #@1a
    if-eqz p1, :cond_1d

    #@1c
    const/4 v1, 0x2

    #@1d
    :cond_1d
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    #@1f
    :goto_1f
    if-eqz v3, :cond_24

    #@21
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    #@24
    :cond_24
    return-void

    #@25
    :cond_25
    move v0, v2

    #@26
    goto :goto_b

    #@27
    :cond_27
    move v3, v2

    #@28
    goto :goto_10

    #@29
    :cond_29
    move v3, v2

    #@2a
    goto :goto_13

    #@2b
    :cond_2b
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    #@2d
    goto :goto_1f
.end method

.method smoothScrollTo(II)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->smoothScrollTo(III)V

    #@4
    return-void
.end method

.method smoothScrollTo(III)V
    .registers 14

    #@0
    const/4 v5, 0x0

    #@1
    const/high16 v9, 0x3f800000    # 1.0f

    #@3
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_d

    #@9
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    #@c
    :goto_c
    return-void

    #@d
    :cond_d
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    #@10
    move-result v1

    #@11
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    #@14
    move-result v2

    #@15
    sub-int v3, p1, v1

    #@17
    sub-int v4, p2, v2

    #@19
    if-nez v3, :cond_27

    #@1b
    if-nez v4, :cond_27

    #@1d
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    #@20
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    #@23
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    #@26
    goto :goto_c

    #@27
    :cond_27
    const/4 v0, 0x1

    #@28
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    #@2b
    const/4 v0, 0x2

    #@2c
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    #@2f
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    #@32
    move-result v0

    #@33
    div-int/lit8 v5, v0, 0x2

    #@35
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    #@38
    move-result v6

    #@39
    int-to-float v6, v6

    #@3a
    mul-float/2addr v6, v9

    #@3b
    int-to-float v7, v0

    #@3c
    div-float/2addr v6, v7

    #@3d
    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    #@40
    move-result v6

    #@41
    int-to-float v7, v5

    #@42
    int-to-float v5, v5

    #@43
    invoke-virtual {p0, v6}, Landroid/support/v4/view/ViewPager;->distanceInfluenceForSnapDuration(F)F

    #@46
    move-result v6

    #@47
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    #@4a
    move-result v8

    #@4b
    if-lez v8, :cond_6d

    #@4d
    const/high16 v0, 0x447a0000    # 1000.0f

    #@4f
    mul-float/2addr v5, v6

    #@50
    add-float/2addr v5, v7

    #@51
    int-to-float v6, v8

    #@52
    div-float/2addr v5, v6

    #@53
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    #@56
    move-result v5

    #@57
    mul-float/2addr v0, v5

    #@58
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@5b
    move-result v0

    #@5c
    mul-int/lit8 v0, v0, 0x4

    #@5e
    :goto_5e
    const/16 v5, 0x258

    #@60
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    #@63
    move-result v5

    #@64
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@66
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    #@69
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@6c
    goto :goto_c

    #@6d
    :cond_6d
    int-to-float v0, v0

    #@6e
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@70
    iget v6, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@72
    invoke-virtual {v5, v6}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    #@75
    move-result v5

    #@76
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    #@79
    move-result v6

    #@7a
    int-to-float v6, v6

    #@7b
    iget v7, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #@7d
    int-to-float v7, v7

    #@7e
    mul-float/2addr v0, v5

    #@7f
    add-float/2addr v0, v7

    #@80
    div-float v0, v6, v0

    #@82
    add-float/2addr v0, v9

    #@83
    const/high16 v5, 0x42c80000    # 100.0f

    #@85
    mul-float/2addr v0, v5

    #@86
    float-to-int v0, v0

    #@87
    goto :goto_5e
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    #@0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_a

    #@6
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    #@8
    if-ne p1, v0, :cond_c

    #@a
    :cond_a
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
