.class public Landroid/support/v4/view/PagerTitleStrip;
.super Landroid/view/ViewGroup;

# interfaces
.implements Landroid/support/v4/view/ViewPager$Decor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/PagerTitleStrip$PageListener;,
        Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;,
        Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplBase;,
        Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplIcs;
    }
.end annotation


# static fields
.field private static final ATTRS:[I

.field private static final IMPL:Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;

.field private static final SIDE_ALPHA:F = 0.6f

.field private static final TAG:Ljava/lang/String; = "PagerTitleStrip"

.field private static final TEXT_ATTRS:[I

.field private static final TEXT_SPACING:I = 0x10


# instance fields
.field mCurrText:Landroid/widget/TextView;

.field private mGravity:I

.field private mLastKnownCurrentPage:I

.field private mLastKnownPositionOffset:F

.field mNextText:Landroid/widget/TextView;

.field private mNonPrimaryAlpha:I

.field private final mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

.field mPager:Landroid/support/v4/view/ViewPager;

.field mPrevText:Landroid/widget/TextView;

.field private mScaledTextSpacing:I

.field mTextColor:I

.field private mUpdatingPositions:Z

.field private mUpdatingText:Z

.field private mWatchingAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/view/PagerAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [I

    #@3
    fill-array-data v0, :array_2a

    #@6
    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->ATTRS:[I

    #@8
    const/4 v0, 0x1

    #@9
    new-array v0, v0, [I

    #@b
    const/4 v1, 0x0

    #@c
    const v2, 0x101038c

    #@f
    aput v2, v0, v1

    #@11
    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->TEXT_ATTRS:[I

    #@13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@15
    const/16 v1, 0xe

    #@17
    if-lt v0, v1, :cond_21

    #@19
    new-instance v0, Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplIcs;

    #@1b
    invoke-direct {v0}, Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplIcs;-><init>()V

    #@1e
    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->IMPL:Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;

    #@20
    :goto_20
    return-void

    #@21
    :cond_21
    new-instance v0, Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplBase;

    #@23
    invoke-direct {v0}, Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplBase;-><init>()V

    #@26
    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->IMPL:Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;

    #@28
    goto :goto_20

    #@29
    nop

    #@2a
    :array_2a
    .array-data 4
        0x1010034
        0x1010095
        0x1010098
        0x10100af
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/support/v4/view/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    #@0
    const/4 v4, 0x2

    #@1
    const/4 v0, 0x0

    #@2
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    const/4 v1, -0x1

    #@6
    iput v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    #@8
    const/high16 v1, -0x40800000    # -1.0f

    #@a
    iput v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    #@c
    new-instance v1, Landroid/support/v4/view/PagerTitleStrip$PageListener;

    #@e
    const/4 v2, 0x0

    #@f
    invoke-direct {v1, p0, v2}, Landroid/support/v4/view/PagerTitleStrip$PageListener;-><init>(Landroid/support/v4/view/PagerTitleStrip;Landroid/support/v4/view/PagerTitleStrip$1;)V

    #@12
    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    #@14
    new-instance v1, Landroid/widget/TextView;

    #@16
    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@19
    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@1b
    invoke-virtual {p0, v1}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    #@1e
    new-instance v1, Landroid/widget/TextView;

    #@20
    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@23
    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@25
    invoke-virtual {p0, v1}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    #@28
    new-instance v1, Landroid/widget/TextView;

    #@2a
    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@2d
    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@2f
    invoke-virtual {p0, v1}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    #@32
    sget-object v1, Landroid/support/v4/view/PagerTitleStrip;->ATTRS:[I

    #@34
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@3b
    move-result v2

    #@3c
    if-eqz v2, :cond_4d

    #@3e
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@40
    invoke-virtual {v3, p1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    #@43
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@45
    invoke-virtual {v3, p1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    #@48
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@4a
    invoke-virtual {v3, p1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    #@4d
    :cond_4d
    const/4 v3, 0x1

    #@4e
    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@51
    move-result v3

    #@52
    if-eqz v3, :cond_58

    #@54
    int-to-float v3, v3

    #@55
    invoke-virtual {p0, v0, v3}, Landroid/support/v4/view/PagerTitleStrip;->setTextSize(IF)V

    #@58
    :cond_58
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@5b
    move-result v3

    #@5c
    if-eqz v3, :cond_71

    #@5e
    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    #@61
    move-result v3

    #@62
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@64
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    #@67
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@69
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    #@6c
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@6e
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    #@71
    :cond_71
    const/4 v3, 0x3

    #@72
    const/16 v4, 0x50

    #@74
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@77
    move-result v3

    #@78
    iput v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mGravity:I

    #@7a
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@7d
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@7f
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    #@82
    move-result-object v1

    #@83
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@86
    move-result v1

    #@87
    iput v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    #@89
    const v1, 0x3f19999a    # 0.6f

    #@8c
    invoke-virtual {p0, v1}, Landroid/support/v4/view/PagerTitleStrip;->setNonPrimaryAlpha(F)V

    #@8f
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@91
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@93
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@96
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@98
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@9a
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@9d
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@9f
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@a1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@a4
    if-eqz v2, :cond_b3

    #@a6
    sget-object v1, Landroid/support/v4/view/PagerTitleStrip;->TEXT_ATTRS:[I

    #@a8
    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    #@ab
    move-result-object v1

    #@ac
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@af
    move-result v0

    #@b0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@b3
    :cond_b3
    if-eqz v0, :cond_d5

    #@b5
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@b7
    invoke-static {v0}, Landroid/support/v4/view/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    #@ba
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@bc
    invoke-static {v0}, Landroid/support/v4/view/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    #@bf
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@c1
    invoke-static {v0}, Landroid/support/v4/view/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    #@c4
    :goto_c4
    const/high16 v0, 0x41800000    # 16.0f

    #@c6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@c9
    move-result-object v1

    #@ca
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@cd
    move-result-object v1

    #@ce
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    #@d0
    mul-float/2addr v0, v1

    #@d1
    float-to-int v0, v0

    #@d2
    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    #@d4
    return-void

    #@d5
    :cond_d5
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@d7
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    #@da
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@dc
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    #@df
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@e1
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    #@e4
    goto :goto_c4
.end method

.method static synthetic access$100(Landroid/support/v4/view/PagerTitleStrip;)F
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    #@2
    return v0
.end method

.method private static setSingleLineAllCaps(Landroid/widget/TextView;)V
    .registers 2

    #@0
    sget-object v0, Landroid/support/v4/view/PagerTitleStrip;->IMPL:Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;

    #@2
    invoke-interface {v0, p0}, Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    #@5
    return-void
.end method


# virtual methods
.method getMinHeight()I
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    #@4
    move-result-object v1

    #@5
    if-eqz v1, :cond_b

    #@7
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@a
    move-result v0

    #@b
    :cond_b
    return v0
.end method

.method public getTextSpacing()I
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    #@2
    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    #@0
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    #@3
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getParent()Landroid/view/ViewParent;

    #@6
    move-result-object v0

    #@7
    instance-of v1, v0, Landroid/support/v4/view/ViewPager;

    #@9
    if-nez v1, :cond_13

    #@b
    new-instance v0, Ljava/lang/IllegalStateException;

    #@d
    const-string v1, "PagerTitleStrip must be a direct child of a ViewPager."

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    :cond_13
    check-cast v0, Landroid/support/v4/view/ViewPager;

    #@15
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    #@18
    move-result-object v1

    #@19
    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    #@1b
    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@1e
    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    #@20
    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    #@23
    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    #@25
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    #@27
    if-eqz v0, :cond_35

    #@29
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    #@2b
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Landroid/support/v4/view/PagerAdapter;

    #@31
    :goto_31
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/PagerTitleStrip;->updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    #@34
    return-void

    #@35
    :cond_35
    const/4 v0, 0x0

    #@36
    goto :goto_31
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    #@0
    const/4 v1, 0x0

    #@1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    #@4
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    #@6
    if-eqz v0, :cond_1d

    #@8
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    #@a
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/PagerTitleStrip;->updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    #@11
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    #@13
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@16
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    #@18
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    #@1b
    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    #@1d
    :cond_1d
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    #@3
    if-eqz v1, :cond_13

    #@5
    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    #@7
    cmpl-float v1, v1, v0

    #@9
    if-ltz v1, :cond_d

    #@b
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    #@d
    :cond_d
    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    #@f
    const/4 v2, 0x1

    #@10
    invoke-virtual {p0, v1, v0, v2}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    #@13
    :cond_13
    return-void
.end method

.method protected onMeasure(II)V
    .registers 12

    #@0
    const/high16 v8, 0x40000000    # 2.0f

    #@2
    const/high16 v7, -0x80000000

    #@4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@7
    move-result v0

    #@8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@b
    move-result v1

    #@c
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@f
    move-result v2

    #@10
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@13
    move-result v3

    #@14
    if-eq v0, v8, :cond_1e

    #@16
    new-instance v0, Ljava/lang/IllegalStateException;

    #@18
    const-string v1, "Must measure with an exact width"

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    :cond_1e
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getMinHeight()I

    #@21
    move-result v0

    #@22
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    #@25
    move-result v4

    #@26
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    #@29
    move-result v5

    #@2a
    add-int/2addr v4, v5

    #@2b
    int-to-float v5, v2

    #@2c
    const v6, 0x3f4ccccd    # 0.8f

    #@2f
    mul-float/2addr v5, v6

    #@30
    float-to-int v5, v5

    #@31
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@34
    move-result v5

    #@35
    sub-int v6, v3, v4

    #@37
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@3a
    move-result v6

    #@3b
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@3d
    invoke-virtual {v7, v5, v6}, Landroid/widget/TextView;->measure(II)V

    #@40
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@42
    invoke-virtual {v7, v5, v6}, Landroid/widget/TextView;->measure(II)V

    #@45
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@47
    invoke-virtual {v7, v5, v6}, Landroid/widget/TextView;->measure(II)V

    #@4a
    if-ne v1, v8, :cond_50

    #@4c
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/PagerTitleStrip;->setMeasuredDimension(II)V

    #@4f
    :goto_4f
    return-void

    #@50
    :cond_50
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@52
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@55
    move-result v1

    #@56
    add-int/2addr v1, v4

    #@57
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@5a
    move-result v0

    #@5b
    invoke-virtual {p0, v2, v0}, Landroid/support/v4/view/PagerTitleStrip;->setMeasuredDimension(II)V

    #@5e
    goto :goto_4f
.end method

.method public requestLayout()V
    .registers 2

    #@0
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    #@2
    if-nez v0, :cond_7

    #@4
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    #@7
    :cond_7
    return-void
.end method

.method public setGravity(I)V
    .registers 2

    #@0
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mGravity:I

    #@2
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    #@5
    return-void
.end method

.method public setNonPrimaryAlpha(F)V
    .registers 5

    #@0
    const/high16 v0, 0x437f0000    # 255.0f

    #@2
    mul-float/2addr v0, p1

    #@3
    float-to-int v0, v0

    #@4
    and-int/lit16 v0, v0, 0xff

    #@6
    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mNonPrimaryAlpha:I

    #@8
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mNonPrimaryAlpha:I

    #@a
    shl-int/lit8 v0, v0, 0x18

    #@c
    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    #@e
    const v2, 0xffffff

    #@11
    and-int/2addr v1, v2

    #@12
    or-int/2addr v0, v1

    #@13
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@15
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    #@18
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@1a
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    #@1d
    return-void
.end method

.method public setTextColor(I)V
    .registers 5

    #@0
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    #@2
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    #@7
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mNonPrimaryAlpha:I

    #@9
    shl-int/lit8 v0, v0, 0x18

    #@b
    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    #@d
    const v2, 0xffffff

    #@10
    and-int/2addr v1, v2

    #@11
    or-int/2addr v0, v1

    #@12
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@14
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    #@17
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@19
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    #@1c
    return-void
.end method

.method public setTextSize(IF)V
    .registers 4

    #@0
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    #@5
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@7
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    #@a
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@c
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    #@f
    return-void
.end method

.method public setTextSpacing(I)V
    .registers 2

    #@0
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    #@2
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    #@5
    return-void
.end method

.method updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
    .registers 4

    #@0
    if-eqz p1, :cond_a

    #@2
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    #@4
    invoke-virtual {p1, v0}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    #@7
    const/4 v0, 0x0

    #@8
    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    #@a
    :cond_a
    if-eqz p2, :cond_18

    #@c
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    #@e
    invoke-virtual {p2, v0}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@11
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@13
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@16
    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    #@18
    :cond_18
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    #@1a
    if-eqz v0, :cond_2f

    #@1c
    const/4 v0, -0x1

    #@1d
    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    #@1f
    const/high16 v0, -0x40800000    # -1.0f

    #@21
    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    #@23
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    #@25
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    #@28
    move-result v0

    #@29
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/view/PagerTitleStrip;->updateText(ILandroid/support/v4/view/PagerAdapter;)V

    #@2c
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    #@2f
    :cond_2f
    return-void
.end method

.method updateText(ILandroid/support/v4/view/PagerAdapter;)V
    .registers 11

    #@0
    const/4 v2, 0x1

    #@1
    const/high16 v7, -0x80000000

    #@3
    const/4 v3, 0x0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz p2, :cond_82

    #@7
    invoke-virtual {p2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    #@a
    move-result v0

    #@b
    :goto_b
    iput-boolean v2, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    #@d
    if-lt p1, v2, :cond_86

    #@f
    if-eqz p2, :cond_86

    #@11
    add-int/lit8 v2, p1, -0x1

    #@13
    invoke-virtual {p2, v2}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    #@16
    move-result-object v2

    #@17
    :goto_17
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@19
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@1c
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@1e
    if-eqz p2, :cond_84

    #@20
    if-ge p1, v0, :cond_84

    #@22
    invoke-virtual {p2, p1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    #@25
    move-result-object v2

    #@26
    :goto_26
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@29
    add-int/lit8 v2, p1, 0x1

    #@2b
    if-ge v2, v0, :cond_35

    #@2d
    if-eqz p2, :cond_35

    #@2f
    add-int/lit8 v0, p1, 0x1

    #@31
    invoke-virtual {p2, v0}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    #@34
    move-result-object v3

    #@35
    :cond_35
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@37
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@3a
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getWidth()I

    #@3d
    move-result v0

    #@3e
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingLeft()I

    #@41
    move-result v2

    #@42
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingRight()I

    #@45
    move-result v3

    #@46
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getHeight()I

    #@49
    move-result v4

    #@4a
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    #@4d
    move-result v5

    #@4e
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    #@51
    move-result v6

    #@52
    sub-int/2addr v0, v2

    #@53
    sub-int/2addr v0, v3

    #@54
    int-to-float v0, v0

    #@55
    const v2, 0x3f4ccccd    # 0.8f

    #@58
    mul-float/2addr v0, v2

    #@59
    float-to-int v0, v0

    #@5a
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@5d
    move-result v0

    #@5e
    sub-int v2, v4, v5

    #@60
    sub-int/2addr v2, v6

    #@61
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@64
    move-result v2

    #@65
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@67
    invoke-virtual {v3, v0, v2}, Landroid/widget/TextView;->measure(II)V

    #@6a
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@6c
    invoke-virtual {v3, v0, v2}, Landroid/widget/TextView;->measure(II)V

    #@6f
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@71
    invoke-virtual {v3, v0, v2}, Landroid/widget/TextView;->measure(II)V

    #@74
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    #@76
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    #@78
    if-nez v0, :cond_7f

    #@7a
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    #@7c
    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    #@7f
    :cond_7f
    iput-boolean v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    #@81
    return-void

    #@82
    :cond_82
    move v0, v1

    #@83
    goto :goto_b

    #@84
    :cond_84
    move-object v2, v3

    #@85
    goto :goto_26

    #@86
    :cond_86
    move-object v2, v3

    #@87
    goto :goto_17
.end method

.method updateTextPositions(IFZ)V
    .registers 22

    #@0
    move-object/from16 v0, p0

    #@2
    iget v2, v0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    #@4
    move/from16 v0, p1

    #@6
    if-eq v0, v2, :cond_121

    #@8
    move-object/from16 v0, p0

    #@a
    iget-object v2, v0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    #@c
    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    #@f
    move-result-object v2

    #@10
    move-object/from16 v0, p0

    #@12
    move/from16 v1, p1

    #@14
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerTitleStrip;->updateText(ILandroid/support/v4/view/PagerAdapter;)V

    #@17
    :cond_17
    const/4 v2, 0x1

    #@18
    move-object/from16 v0, p0

    #@1a
    iput-boolean v2, v0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v2, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@20
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@23
    move-result v5

    #@24
    move-object/from16 v0, p0

    #@26
    iget-object v2, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@28
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@2b
    move-result v3

    #@2c
    move-object/from16 v0, p0

    #@2e
    iget-object v2, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@30
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@33
    move-result v6

    #@34
    div-int/lit8 v4, v3, 0x2

    #@36
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getWidth()I

    #@39
    move-result v7

    #@3a
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getHeight()I

    #@3d
    move-result v8

    #@3e
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingLeft()I

    #@41
    move-result v9

    #@42
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingRight()I

    #@45
    move-result v10

    #@46
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    #@49
    move-result v11

    #@4a
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    #@4d
    move-result v12

    #@4e
    add-int v13, v10, v4

    #@50
    const/high16 v2, 0x3f000000    # 0.5f

    #@52
    add-float v2, v2, p2

    #@54
    const/high16 v14, 0x3f800000    # 1.0f

    #@56
    cmpl-float v14, v2, v14

    #@58
    if-lez v14, :cond_5d

    #@5a
    const/high16 v14, 0x3f800000    # 1.0f

    #@5c
    sub-float/2addr v2, v14

    #@5d
    :cond_5d
    sub-int v14, v7, v13

    #@5f
    add-int/2addr v4, v9

    #@60
    sub-int v4, v7, v4

    #@62
    sub-int/2addr v4, v13

    #@63
    int-to-float v4, v4

    #@64
    mul-float/2addr v2, v4

    #@65
    float-to-int v2, v2

    #@66
    sub-int v2, v14, v2

    #@68
    div-int/lit8 v4, v3, 0x2

    #@6a
    sub-int v13, v2, v4

    #@6c
    add-int v14, v13, v3

    #@6e
    move-object/from16 v0, p0

    #@70
    iget-object v2, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@72
    invoke-virtual {v2}, Landroid/widget/TextView;->getBaseline()I

    #@75
    move-result v2

    #@76
    move-object/from16 v0, p0

    #@78
    iget-object v3, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@7a
    invoke-virtual {v3}, Landroid/widget/TextView;->getBaseline()I

    #@7d
    move-result v3

    #@7e
    move-object/from16 v0, p0

    #@80
    iget-object v4, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@82
    invoke-virtual {v4}, Landroid/widget/TextView;->getBaseline()I

    #@85
    move-result v4

    #@86
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@89
    move-result v15

    #@8a
    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    #@8d
    move-result v15

    #@8e
    sub-int v2, v15, v2

    #@90
    sub-int v3, v15, v3

    #@92
    sub-int v4, v15, v4

    #@94
    move-object/from16 v0, p0

    #@96
    iget-object v15, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@98
    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@9b
    move-result v15

    #@9c
    move-object/from16 v0, p0

    #@9e
    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@a0
    move-object/from16 v16, v0

    #@a2
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@a5
    move-result v16

    #@a6
    move-object/from16 v0, p0

    #@a8
    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@aa
    move-object/from16 v17, v0

    #@ac
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@af
    move-result v17

    #@b0
    add-int/2addr v15, v2

    #@b1
    add-int v16, v16, v3

    #@b3
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    #@b6
    move-result v15

    #@b7
    add-int v16, v4, v17

    #@b9
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    #@bc
    move-result v15

    #@bd
    move-object/from16 v0, p0

    #@bf
    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mGravity:I

    #@c1
    move/from16 v16, v0

    #@c3
    and-int/lit8 v16, v16, 0x70

    #@c5
    sparse-switch v16, :sswitch_data_13c

    #@c8
    add-int/2addr v2, v11

    #@c9
    add-int/2addr v3, v11

    #@ca
    add-int/2addr v4, v11

    #@cb
    :goto_cb
    move-object/from16 v0, p0

    #@cd
    iget-object v8, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@cf
    move-object/from16 v0, p0

    #@d1
    iget-object v11, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@d3
    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@d6
    move-result v11

    #@d7
    add-int/2addr v11, v3

    #@d8
    invoke-virtual {v8, v13, v3, v14, v11}, Landroid/widget/TextView;->layout(IIII)V

    #@db
    move-object/from16 v0, p0

    #@dd
    iget v3, v0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    #@df
    sub-int v3, v13, v3

    #@e1
    sub-int/2addr v3, v5

    #@e2
    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    #@e5
    move-result v3

    #@e6
    move-object/from16 v0, p0

    #@e8
    iget-object v8, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@ea
    add-int/2addr v5, v3

    #@eb
    move-object/from16 v0, p0

    #@ed
    iget-object v9, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@ef
    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@f2
    move-result v9

    #@f3
    add-int/2addr v9, v2

    #@f4
    invoke-virtual {v8, v3, v2, v5, v9}, Landroid/widget/TextView;->layout(IIII)V

    #@f7
    sub-int v2, v7, v10

    #@f9
    sub-int/2addr v2, v6

    #@fa
    move-object/from16 v0, p0

    #@fc
    iget v3, v0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    #@fe
    add-int/2addr v3, v14

    #@ff
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@102
    move-result v2

    #@103
    move-object/from16 v0, p0

    #@105
    iget-object v3, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@107
    add-int v5, v2, v6

    #@109
    move-object/from16 v0, p0

    #@10b
    iget-object v6, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@10d
    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@110
    move-result v6

    #@111
    add-int/2addr v6, v4

    #@112
    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    #@115
    move/from16 v0, p2

    #@117
    move-object/from16 v1, p0

    #@119
    iput v0, v1, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    #@11b
    const/4 v2, 0x0

    #@11c
    move-object/from16 v0, p0

    #@11e
    iput-boolean v2, v0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    #@120
    :goto_120
    return-void

    #@121
    :cond_121
    if-nez p3, :cond_17

    #@123
    move-object/from16 v0, p0

    #@125
    iget v2, v0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    #@127
    cmpl-float v2, p2, v2

    #@129
    if-nez v2, :cond_17

    #@12b
    goto :goto_120

    #@12c
    :sswitch_12c
    sub-int/2addr v8, v11

    #@12d
    sub-int/2addr v8, v12

    #@12e
    sub-int/2addr v8, v15

    #@12f
    div-int/lit8 v8, v8, 0x2

    #@131
    add-int/2addr v2, v8

    #@132
    add-int/2addr v3, v8

    #@133
    add-int/2addr v4, v8

    #@134
    goto :goto_cb

    #@135
    :sswitch_135
    sub-int/2addr v8, v12

    #@136
    sub-int/2addr v8, v15

    #@137
    add-int/2addr v2, v8

    #@138
    add-int/2addr v3, v8

    #@139
    add-int/2addr v4, v8

    #@13a
    goto :goto_cb

    #@13b
    nop

    #@13c
    :sswitch_data_13c
    .sparse-switch
        0x10 -> :sswitch_12c
        0x50 -> :sswitch_135
    .end sparse-switch
.end method
