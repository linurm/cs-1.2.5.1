.class public Landroid/support/v4/view/PagerTabStrip;
.super Landroid/support/v4/view/PagerTitleStrip;


# static fields
.field private static final FULL_UNDERLINE_HEIGHT:I = 0x1

.field private static final INDICATOR_HEIGHT:I = 0x3

.field private static final MIN_PADDING_BOTTOM:I = 0x6

.field private static final MIN_STRIP_HEIGHT:I = 0x20

.field private static final MIN_TEXT_SPACING:I = 0x40

.field private static final TAB_PADDING:I = 0x10

.field private static final TAB_SPACING:I = 0x20

.field private static final TAG:Ljava/lang/String; = "PagerTabStrip"


# instance fields
.field private mDrawFullUnderline:Z

.field private mDrawFullUnderlineSet:Z

.field private mFullUnderlineHeight:I

.field private mIgnoreTap:Z

.field private mIndicatorColor:I

.field private mIndicatorHeight:I

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mMinPaddingBottom:I

.field private mMinStripHeight:I

.field private mMinTextSpacing:I

.field private mTabAlpha:I

.field private mTabPadding:I

.field private final mTabPaint:Landroid/graphics/Paint;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/support/v4/view/PagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    #@0
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/high16 v2, 0x3f000000    # 0.5f

    #@4
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@7
    new-instance v0, Landroid/graphics/Paint;

    #@9
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@c
    iput-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    #@e
    new-instance v0, Landroid/graphics/Rect;

    #@10
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@13
    iput-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mTempRect:Landroid/graphics/Rect;

    #@15
    const/16 v0, 0xff

    #@17
    iput v0, p0, Landroid/support/v4/view/PagerTabStrip;->mTabAlpha:I

    #@19
    iput-boolean v4, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z

    #@1b
    iput-boolean v4, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderlineSet:Z

    #@1d
    iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->mTextColor:I

    #@1f
    iput v0, p0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I

    #@21
    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    #@23
    iget v1, p0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I

    #@25
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    #@28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@2f
    move-result-object v0

    #@30
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    #@32
    const/high16 v1, 0x40400000    # 3.0f

    #@34
    mul-float/2addr v1, v0

    #@35
    add-float/2addr v1, v2

    #@36
    float-to-int v1, v1

    #@37
    iput v1, p0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorHeight:I

    #@39
    const/high16 v1, 0x40c00000    # 6.0f

    #@3b
    mul-float/2addr v1, v0

    #@3c
    add-float/2addr v1, v2

    #@3d
    float-to-int v1, v1

    #@3e
    iput v1, p0, Landroid/support/v4/view/PagerTabStrip;->mMinPaddingBottom:I

    #@40
    const/high16 v1, 0x42800000    # 64.0f

    #@42
    mul-float/2addr v1, v0

    #@43
    float-to-int v1, v1

    #@44
    iput v1, p0, Landroid/support/v4/view/PagerTabStrip;->mMinTextSpacing:I

    #@46
    const/high16 v1, 0x41800000    # 16.0f

    #@48
    mul-float/2addr v1, v0

    #@49
    add-float/2addr v1, v2

    #@4a
    float-to-int v1, v1

    #@4b
    iput v1, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    #@4d
    const/high16 v1, 0x3f800000    # 1.0f

    #@4f
    mul-float/2addr v1, v0

    #@50
    add-float/2addr v1, v2

    #@51
    float-to-int v1, v1

    #@52
    iput v1, p0, Landroid/support/v4/view/PagerTabStrip;->mFullUnderlineHeight:I

    #@54
    const/high16 v1, 0x42000000    # 32.0f

    #@56
    mul-float/2addr v0, v1

    #@57
    add-float/2addr v0, v2

    #@58
    float-to-int v0, v0

    #@59
    iput v0, p0, Landroid/support/v4/view/PagerTabStrip;->mMinStripHeight:I

    #@5b
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@5e
    move-result-object v0

    #@5f
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@62
    move-result v0

    #@63
    iput v0, p0, Landroid/support/v4/view/PagerTabStrip;->mTouchSlop:I

    #@65
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getPaddingLeft()I

    #@68
    move-result v0

    #@69
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getPaddingTop()I

    #@6c
    move-result v1

    #@6d
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getPaddingRight()I

    #@70
    move-result v2

    #@71
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getPaddingBottom()I

    #@74
    move-result v3

    #@75
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/support/v4/view/PagerTabStrip;->setPadding(IIII)V

    #@78
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getTextSpacing()I

    #@7b
    move-result v0

    #@7c
    invoke-virtual {p0, v0}, Landroid/support/v4/view/PagerTabStrip;->setTextSpacing(I)V

    #@7f
    invoke-virtual {p0, v4}, Landroid/support/v4/view/PagerTabStrip;->setWillNotDraw(Z)V

    #@82
    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mPrevText:Landroid/widget/TextView;

    #@84
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    #@87
    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mPrevText:Landroid/widget/TextView;

    #@89
    new-instance v1, Landroid/support/v4/view/PagerTabStrip$1;

    #@8b
    invoke-direct {v1, p0}, Landroid/support/v4/view/PagerTabStrip$1;-><init>(Landroid/support/v4/view/PagerTabStrip;)V

    #@8e
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@91
    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mNextText:Landroid/widget/TextView;

    #@93
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    #@96
    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mNextText:Landroid/widget/TextView;

    #@98
    new-instance v1, Landroid/support/v4/view/PagerTabStrip$2;

    #@9a
    invoke-direct {v1, p0}, Landroid/support/v4/view/PagerTabStrip$2;-><init>(Landroid/support/v4/view/PagerTabStrip;)V

    #@9d
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@a0
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    #@a3
    move-result-object v0

    #@a4
    if-nez v0, :cond_a8

    #@a6
    iput-boolean v5, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z

    #@a8
    :cond_a8
    return-void
.end method


# virtual methods
.method public getDrawFullUnderline()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z

    #@2
    return v0
.end method

.method getMinHeight()I
    .registers 3

    #@0
    invoke-super {p0}, Landroid/support/v4/view/PagerTitleStrip;->getMinHeight()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Landroid/support/v4/view/PagerTabStrip;->mMinStripHeight:I

    #@6
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getTabIndicatorColor()I
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I

    #@2
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12

    #@0
    const v9, 0xffffff

    #@3
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerTitleStrip;->onDraw(Landroid/graphics/Canvas;)V

    #@6
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getHeight()I

    #@9
    move-result v6

    #@a
    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    #@c
    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    #@f
    move-result v0

    #@10
    iget v1, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    #@12
    iget-object v2, p0, Landroid/support/v4/view/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    #@14
    invoke-virtual {v2}, Landroid/widget/TextView;->getRight()I

    #@17
    move-result v3

    #@18
    iget v4, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    #@1a
    iget v2, p0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorHeight:I

    #@1c
    iget-object v5, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    #@1e
    iget v7, p0, Landroid/support/v4/view/PagerTabStrip;->mTabAlpha:I

    #@20
    shl-int/lit8 v7, v7, 0x18

    #@22
    iget v8, p0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I

    #@24
    and-int/2addr v8, v9

    #@25
    or-int/2addr v7, v8

    #@26
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    #@29
    sub-int/2addr v0, v1

    #@2a
    int-to-float v1, v0

    #@2b
    sub-int v0, v6, v2

    #@2d
    int-to-float v2, v0

    #@2e
    add-int v0, v3, v4

    #@30
    int-to-float v3, v0

    #@31
    int-to-float v4, v6

    #@32
    iget-object v5, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    #@34
    move-object v0, p1

    #@35
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@38
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z

    #@3a
    if-eqz v0, :cond_62

    #@3c
    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    #@3e
    const/high16 v1, -0x1000000

    #@40
    iget v2, p0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I

    #@42
    and-int/2addr v2, v9

    #@43
    or-int/2addr v1, v2

    #@44
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    #@47
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getPaddingLeft()I

    #@4a
    move-result v0

    #@4b
    int-to-float v1, v0

    #@4c
    iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->mFullUnderlineHeight:I

    #@4e
    sub-int v0, v6, v0

    #@50
    int-to-float v2, v0

    #@51
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getWidth()I

    #@54
    move-result v0

    #@55
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getPaddingRight()I

    #@58
    move-result v3

    #@59
    sub-int/2addr v0, v3

    #@5a
    int-to-float v3, v0

    #@5b
    int-to-float v4, v6

    #@5c
    iget-object v5, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    #@5e
    move-object v0, p1

    #@5f
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@62
    :cond_62
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_d

    #@8
    iget-boolean v3, p0, Landroid/support/v4/view/PagerTabStrip;->mIgnoreTap:Z

    #@a
    if-eqz v3, :cond_d

    #@c
    :goto_c
    return v0

    #@d
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@10
    move-result v3

    #@11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@14
    move-result v4

    #@15
    packed-switch v2, :pswitch_data_7a

    #@18
    :cond_18
    :goto_18
    move v0, v1

    #@19
    goto :goto_c

    #@1a
    :pswitch_1a
    iput v3, p0, Landroid/support/v4/view/PagerTabStrip;->mInitialMotionX:F

    #@1c
    iput v4, p0, Landroid/support/v4/view/PagerTabStrip;->mInitialMotionY:F

    #@1e
    iput-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mIgnoreTap:Z

    #@20
    goto :goto_18

    #@21
    :pswitch_21
    iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->mInitialMotionX:F

    #@23
    sub-float v0, v3, v0

    #@25
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@28
    move-result v0

    #@29
    iget v2, p0, Landroid/support/v4/view/PagerTabStrip;->mTouchSlop:I

    #@2b
    int-to-float v2, v2

    #@2c
    cmpl-float v0, v0, v2

    #@2e
    if-gtz v0, :cond_3f

    #@30
    iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->mInitialMotionY:F

    #@32
    sub-float v0, v4, v0

    #@34
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@37
    move-result v0

    #@38
    iget v2, p0, Landroid/support/v4/view/PagerTabStrip;->mTouchSlop:I

    #@3a
    int-to-float v2, v2

    #@3b
    cmpl-float v0, v0, v2

    #@3d
    if-lez v0, :cond_18

    #@3f
    :cond_3f
    iput-boolean v1, p0, Landroid/support/v4/view/PagerTabStrip;->mIgnoreTap:Z

    #@41
    goto :goto_18

    #@42
    :pswitch_42
    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    #@44
    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    #@47
    move-result v0

    #@48
    iget v2, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    #@4a
    sub-int/2addr v0, v2

    #@4b
    int-to-float v0, v0

    #@4c
    cmpg-float v0, v3, v0

    #@4e
    if-gez v0, :cond_5e

    #@50
    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    #@52
    iget-object v2, p0, Landroid/support/v4/view/PagerTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    #@54
    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    #@57
    move-result v2

    #@58
    add-int/lit8 v2, v2, -0x1

    #@5a
    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    #@5d
    goto :goto_18

    #@5e
    :cond_5e
    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    #@60
    invoke-virtual {v0}, Landroid/widget/TextView;->getRight()I

    #@63
    move-result v0

    #@64
    iget v2, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    #@66
    add-int/2addr v0, v2

    #@67
    int-to-float v0, v0

    #@68
    cmpl-float v0, v3, v0

    #@6a
    if-lez v0, :cond_18

    #@6c
    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    #@6e
    iget-object v2, p0, Landroid/support/v4/view/PagerTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    #@70
    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    #@73
    move-result v2

    #@74
    add-int/lit8 v2, v2, 0x1

    #@76
    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    #@79
    goto :goto_18

    #@7a
    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_42
        :pswitch_21
    .end packed-switch
.end method

.method public setBackgroundColor(I)V
    .registers 3

    #@0
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerTitleStrip;->setBackgroundColor(I)V

    #@3
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderlineSet:Z

    #@5
    if-nez v0, :cond_f

    #@7
    const/high16 v0, -0x1000000

    #@9
    and-int/2addr v0, p1

    #@a
    if-nez v0, :cond_10

    #@c
    const/4 v0, 0x1

    #@d
    :goto_d
    iput-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z

    #@f
    :cond_f
    return-void

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    goto :goto_d
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerTitleStrip;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@3
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderlineSet:Z

    #@5
    if-nez v0, :cond_c

    #@7
    if-nez p1, :cond_d

    #@9
    const/4 v0, 0x1

    #@a
    :goto_a
    iput-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z

    #@c
    :cond_c
    return-void

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    goto :goto_a
.end method

.method public setBackgroundResource(I)V
    .registers 3

    #@0
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerTitleStrip;->setBackgroundResource(I)V

    #@3
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderlineSet:Z

    #@5
    if-nez v0, :cond_c

    #@7
    if-nez p1, :cond_d

    #@9
    const/4 v0, 0x1

    #@a
    :goto_a
    iput-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z

    #@c
    :cond_c
    return-void

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    goto :goto_a
.end method

.method public setDrawFullUnderline(Z)V
    .registers 3

    #@0
    iput-boolean p1, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z

    #@2
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderlineSet:Z

    #@5
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->invalidate()V

    #@8
    return-void
.end method

.method public setPadding(IIII)V
    .registers 6

    #@0
    iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->mMinPaddingBottom:I

    #@2
    if-ge p4, v0, :cond_6

    #@4
    iget p4, p0, Landroid/support/v4/view/PagerTabStrip;->mMinPaddingBottom:I

    #@6
    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/view/PagerTitleStrip;->setPadding(IIII)V

    #@9
    return-void
.end method

.method public setTabIndicatorColor(I)V
    .registers 4

    #@0
    iput p1, p0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I

    #@2
    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    #@4
    iget v1, p0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I

    #@6
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    #@9
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->invalidate()V

    #@c
    return-void
.end method

.method public setTabIndicatorColorResource(I)V
    .registers 3

    #@0
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    #@b
    move-result v0

    #@c
    invoke-virtual {p0, v0}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColor(I)V

    #@f
    return-void
.end method

.method public setTextSpacing(I)V
    .registers 3

    #@0
    iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->mMinTextSpacing:I

    #@2
    if-ge p1, v0, :cond_6

    #@4
    iget p1, p0, Landroid/support/v4/view/PagerTabStrip;->mMinTextSpacing:I

    #@6
    :cond_6
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerTitleStrip;->setTextSpacing(I)V

    #@9
    return-void
.end method

.method updateTextPositions(IFZ)V
    .registers 11

    #@0
    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mTempRect:Landroid/graphics/Rect;

    #@2
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getHeight()I

    #@5
    move-result v1

    #@6
    iget-object v2, p0, Landroid/support/v4/view/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    #@8
    invoke-virtual {v2}, Landroid/widget/TextView;->getLeft()I

    #@b
    move-result v2

    #@c
    iget v3, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    #@e
    iget-object v4, p0, Landroid/support/v4/view/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    #@10
    invoke-virtual {v4}, Landroid/widget/TextView;->getRight()I

    #@13
    move-result v4

    #@14
    iget v5, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    #@16
    iget v6, p0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorHeight:I

    #@18
    sub-int v6, v1, v6

    #@1a
    sub-int/2addr v2, v3

    #@1b
    add-int v3, v4, v5

    #@1d
    invoke-virtual {v0, v2, v6, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    #@20
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    #@23
    const/high16 v2, 0x3f000000    # 0.5f

    #@25
    sub-float v2, p2, v2

    #@27
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    #@2a
    move-result v2

    #@2b
    const/high16 v3, 0x40000000    # 2.0f

    #@2d
    mul-float/2addr v2, v3

    #@2e
    const/high16 v3, 0x437f0000    # 255.0f

    #@30
    mul-float/2addr v2, v3

    #@31
    float-to-int v2, v2

    #@32
    iput v2, p0, Landroid/support/v4/view/PagerTabStrip;->mTabAlpha:I

    #@34
    iget-object v2, p0, Landroid/support/v4/view/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    #@36
    invoke-virtual {v2}, Landroid/widget/TextView;->getLeft()I

    #@39
    move-result v2

    #@3a
    iget v3, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    #@3c
    sub-int/2addr v2, v3

    #@3d
    iget-object v3, p0, Landroid/support/v4/view/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    #@3f
    invoke-virtual {v3}, Landroid/widget/TextView;->getRight()I

    #@42
    move-result v3

    #@43
    iget v4, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    #@45
    add-int/2addr v3, v4

    #@46
    invoke-virtual {v0, v2, v6, v3, v1}, Landroid/graphics/Rect;->union(IIII)V

    #@49
    invoke-virtual {p0, v0}, Landroid/support/v4/view/PagerTabStrip;->invalidate(Landroid/graphics/Rect;)V

    #@4c
    return-void
.end method
