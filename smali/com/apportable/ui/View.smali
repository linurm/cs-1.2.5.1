.class public Lcom/apportable/ui/View;
.super Landroid/widget/AbsoluteLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/ui/View$TransformAnimation;
    }
.end annotation


# static fields
.field public static final UIViewContentModeBottom:I = 0x6

.field public static final UIViewContentModeBottomLeft:I = 0xb

.field public static final UIViewContentModeBottomRight:I = 0xc

.field public static final UIViewContentModeCenter:I = 0x4

.field public static final UIViewContentModeLeft:I = 0x7

.field public static final UIViewContentModeRedraw:I = 0x3

.field public static final UIViewContentModeRight:I = 0x8

.field public static final UIViewContentModeScaleAspectFill:I = 0x2

.field public static final UIViewContentModeScaleAspectFit:I = 0x1

.field public static final UIViewContentModeScaleToFill:I = 0x0

.field public static final UIViewContentModeTop:I = 0x5

.field public static final UIViewContentModeTopLeft:I = 0x9

.field public static final UIViewContentModeTopRight:I = 0xa


# instance fields
.field private mAttachedToWindow:Z

.field private mClipsToBounds:Z

.field private mDrawBitmap:Lcom/apportable/utils/DrawBitmap;

.field private mHasContentView:Z

.field private mHidden:Z

.field private mHiddenByAlpha:Z

.field private mNeedsDisplay:Z

.field private mNeedsLayout:Z

.field public mObject:I

.field private mTransform:Landroid/graphics/Matrix;

.field protected mUserInteractionEnabled:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .registers 4

    #@0
    new-instance v0, Landroid/graphics/RectF;

    #@2
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@5
    invoke-direct {p0, p1, p2, v0}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@8
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/graphics/RectF;)V
    .registers 7

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    #@5
    iput-boolean v0, p0, Lcom/apportable/ui/View;->mUserInteractionEnabled:Z

    #@7
    iput-boolean v1, p0, Lcom/apportable/ui/View;->mClipsToBounds:Z

    #@9
    iput-boolean v1, p0, Lcom/apportable/ui/View;->mHidden:Z

    #@b
    iput-boolean v1, p0, Lcom/apportable/ui/View;->mHiddenByAlpha:Z

    #@d
    iput-boolean v0, p0, Lcom/apportable/ui/View;->mNeedsDisplay:Z

    #@f
    iput-boolean v0, p0, Lcom/apportable/ui/View;->mNeedsLayout:Z

    #@11
    iput-boolean v1, p0, Lcom/apportable/ui/View;->mAttachedToWindow:Z

    #@13
    new-instance v2, Lcom/apportable/utils/DrawBitmap;

    #@15
    invoke-direct {v2, p1}, Lcom/apportable/utils/DrawBitmap;-><init>(Landroid/content/Context;)V

    #@18
    iput-object v2, p0, Lcom/apportable/ui/View;->mDrawBitmap:Lcom/apportable/utils/DrawBitmap;

    #@1a
    iput p2, p0, Lcom/apportable/ui/View;->mObject:I

    #@1c
    invoke-virtual {p0, p3}, Lcom/apportable/ui/View;->setFrame(Landroid/graphics/RectF;)V

    #@1f
    invoke-direct {p0, p2}, Lcom/apportable/ui/View;->isDrawRectImplemented(I)Z

    #@22
    move-result v2

    #@23
    if-nez v2, :cond_2f

    #@25
    :goto_25
    invoke-virtual {p0, v0}, Lcom/apportable/ui/View;->setWillNotDraw(Z)V

    #@28
    invoke-virtual {p0, v1}, Lcom/apportable/ui/View;->setClipChildren(Z)V

    #@2b
    invoke-virtual {p0, v1}, Lcom/apportable/ui/View;->setAnimationCacheEnabled(Z)V

    #@2e
    return-void

    #@2f
    :cond_2f
    move v0, v1

    #@30
    goto :goto_25
.end method

.method private native callDrawRect(I)V
.end method

.method private native callLayoutSubviews(I)V
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/View;
    .registers 3

    #@0
    new-instance v0, Lcom/apportable/ui/View;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;I)V

    #@5
    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/graphics/RectF;)Lcom/apportable/ui/View;
    .registers 4

    #@0
    new-instance v0, Lcom/apportable/ui/View;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@5
    return-object v0
.end method

.method private native getDescription(I)Ljava/lang/String;
.end method

.method public static getLayoutHeight(Lcom/apportable/ui/View;)I
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/apportable/ui/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_9

    #@6
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@8
    :goto_8
    return v0

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    goto :goto_8
.end method

.method public static getLayoutWidth(Lcom/apportable/ui/View;)I
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/apportable/ui/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_9

    #@6
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@8
    :goto_8
    return v0

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    goto :goto_8
.end method

.method private native isDrawRectImplemented(I)Z
.end method

.method private native nativeSetFrame(IIII)V
.end method

.method private translateSubviewIndex(I)I
    .registers 3

    #@0
    const/4 v0, -0x1

    #@1
    if-eq p1, v0, :cond_d

    #@3
    invoke-virtual {p0}, Lcom/apportable/ui/View;->getSubviewsGroup()Landroid/view/ViewGroup;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    #@a
    move-result v0

    #@b
    if-ne p1, v0, :cond_e

    #@d
    :cond_d
    :goto_d
    return p1

    #@e
    :cond_e
    iget-boolean v0, p0, Lcom/apportable/ui/View;->mHasContentView:Z

    #@10
    if-eqz v0, :cond_d

    #@12
    add-int/lit8 p1, p1, 0x1

    #@14
    goto :goto_d
.end method

.method private updateInternalHidden()V
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/View;->mHidden:Z

    #@2
    if-nez v0, :cond_8

    #@4
    iget-boolean v0, p0, Lcom/apportable/ui/View;->mHiddenByAlpha:Z

    #@6
    if-eqz v0, :cond_11

    #@8
    :cond_8
    invoke-virtual {p0}, Lcom/apportable/ui/View;->clearAnimation()V

    #@b
    const/16 v0, 0x8

    #@d
    invoke-virtual {p0, v0}, Lcom/apportable/ui/View;->setVisibility(I)V

    #@10
    :goto_10
    return-void

    #@11
    :cond_11
    iget-object v0, p0, Lcom/apportable/ui/View;->mTransform:Landroid/graphics/Matrix;

    #@13
    if-eqz v0, :cond_1a

    #@15
    iget-object v0, p0, Lcom/apportable/ui/View;->mTransform:Landroid/graphics/Matrix;

    #@17
    invoke-virtual {p0, v0}, Lcom/apportable/ui/View;->setTransform(Landroid/graphics/Matrix;)V

    #@1a
    :cond_1a
    const/4 v0, 0x0

    #@1b
    invoke-virtual {p0, v0}, Lcom/apportable/ui/View;->setVisibility(I)V

    #@1e
    goto :goto_10
.end method


# virtual methods
.method public _setAlpha(F)V
    .registers 6

    #@0
    float-to-double v0, p1

    #@1
    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    #@6
    cmpg-double v0, v0, v2

    #@8
    if-gez v0, :cond_11

    #@a
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Lcom/apportable/ui/View;->mHiddenByAlpha:Z

    #@d
    :goto_d
    invoke-direct {p0}, Lcom/apportable/ui/View;->updateInternalHidden()V

    #@10
    return-void

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    iput-boolean v0, p0, Lcom/apportable/ui/View;->mHiddenByAlpha:Z

    #@14
    goto :goto_d
.end method

.method public _setBackgroundColor(I)V
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/apportable/ui/View;->willNotDraw()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_e

    #@6
    new-instance v0, Lcom/apportable/utils/ClipColorDrawable;

    #@8
    invoke-direct {v0, p1}, Lcom/apportable/utils/ClipColorDrawable;-><init>(I)V

    #@b
    invoke-virtual {p0, v0}, Lcom/apportable/ui/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@e
    :cond_e
    return-void
.end method

.method public addSubview(Lcom/apportable/ui/View;)V
    .registers 3

    #@0
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/apportable/ui/View;->insertSubview(Lcom/apportable/ui/View;I)V

    #@4
    return-void
.end method

.method public captureBitmap()Landroid/graphics/Bitmap;
    .registers 6

    #@0
    const/4 v4, 0x0

    #@1
    invoke-virtual {p0}, Lcom/apportable/ui/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4
    move-result-object v0

    #@5
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@7
    invoke-virtual {p0}, Lcom/apportable/ui/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@a
    move-result-object v1

    #@b
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@d
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@f
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@12
    move-result-object v0

    #@13
    new-instance v1, Landroid/graphics/Canvas;

    #@15
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@18
    invoke-virtual {p0}, Lcom/apportable/ui/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1b
    move-result-object v2

    #@1c
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@1e
    invoke-virtual {p0}, Lcom/apportable/ui/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@21
    move-result-object v3

    #@22
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@24
    invoke-virtual {p0, v4, v4, v2, v3}, Lcom/apportable/ui/View;->layout(IIII)V

    #@27
    invoke-virtual {p0, v1}, Lcom/apportable/ui/View;->draw(Landroid/graphics/Canvas;)V

    #@2a
    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/View;->mUserInteractionEnabled:Z

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@7
    move-result v0

    #@8
    :goto_8
    return v0

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    goto :goto_8
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 10

    #@0
    const/4 v1, 0x0

    #@1
    iget-boolean v2, p0, Lcom/apportable/ui/View;->mClipsToBounds:Z

    #@3
    if-eqz v2, :cond_1f

    #@5
    const/4 v0, 0x2

    #@6
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    #@9
    move-result v0

    #@a
    invoke-virtual {p0}, Lcom/apportable/ui/View;->getWidth()I

    #@d
    move-result v3

    #@e
    invoke-virtual {p0}, Lcom/apportable/ui/View;->getHeight()I

    #@11
    move-result v4

    #@12
    invoke-virtual {p1, v1, v1, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    #@15
    :goto_15
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    #@18
    move-result v1

    #@19
    if-eqz v2, :cond_1e

    #@1b
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@1e
    :cond_1e
    return v1

    #@1f
    :cond_1f
    move v0, v1

    #@20
    goto :goto_15
.end method

.method public getDrawBitmap(II)Landroid/graphics/Bitmap;
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/apportable/ui/View;->mDrawBitmap:Lcom/apportable/utils/DrawBitmap;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/apportable/utils/DrawBitmap;->get(II)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    #@5
    move-result-object v0

    #@6
    :goto_6
    return-object v0

    #@7
    :catch_7
    move-exception v0

    #@8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@b
    const/4 v0, 0x0

    #@c
    goto :goto_6
.end method

.method protected getSubviewsGroup()Landroid/view/ViewGroup;
    .registers 1

    #@0
    return-object p0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/ui/View;->mObject:I

    #@2
    invoke-direct {p0, v0}, Lcom/apportable/ui/View;->getDescription(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public insertSubview(Lcom/apportable/ui/View;I)V
    .registers 6

    #@0
    invoke-direct {p0, p2}, Lcom/apportable/ui/View;->translateSubviewIndex(I)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Lcom/apportable/ui/View;->getSubviewsGroup()Landroid/view/ViewGroup;

    #@7
    move-result-object v1

    #@8
    const/4 v2, -0x1

    #@9
    if-ne v0, v2, :cond_f

    #@b
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@e
    :goto_e
    return-void

    #@f
    :cond_f
    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    #@12
    goto :goto_e
.end method

.method public invalidateObject()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/apportable/ui/View;->mObject:I

    #@3
    return-void
.end method

.method public layoutIfNeeded()V
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/View;->mNeedsLayout:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    invoke-virtual {p0}, Lcom/apportable/ui/View;->forceLayout()V

    #@7
    :cond_7
    return-void
.end method

.method public moveSubview(II)V
    .registers 7

    #@0
    invoke-direct {p0, p1}, Lcom/apportable/ui/View;->translateSubviewIndex(I)I

    #@3
    move-result v1

    #@4
    invoke-direct {p0, p2}, Lcom/apportable/ui/View;->translateSubviewIndex(I)I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0}, Lcom/apportable/ui/View;->getSubviewsGroup()Landroid/view/ViewGroup;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    #@f
    move-result v3

    #@10
    if-ne v0, v3, :cond_14

    #@12
    add-int/lit8 v0, v0, -0x1

    #@14
    :cond_14
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@17
    move-result-object v3

    #@18
    if-ne v2, p0, :cond_25

    #@1a
    invoke-virtual {p0, v1}, Lcom/apportable/ui/View;->detachViewFromParent(I)V

    #@1d
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {p0, v3, v0, v1}, Lcom/apportable/ui/View;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@24
    :goto_24
    return-void

    #@25
    :cond_25
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    #@28
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v2, v3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@2f
    goto :goto_24
.end method

.method protected notifyTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    #@0
    return-void
.end method

.method public object()I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/ui/View;->mObject:I

    #@2
    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/apportable/ui/View;->mNeedsDisplay:Z

    #@3
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onAttachedToWindow()V

    #@6
    iput-boolean v0, p0, Lcom/apportable/ui/View;->mAttachedToWindow:Z

    #@8
    iget-object v0, p0, Lcom/apportable/ui/View;->mTransform:Landroid/graphics/Matrix;

    #@a
    invoke-virtual {p0, v0}, Lcom/apportable/ui/View;->setTransform(Landroid/graphics/Matrix;)V

    #@d
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/View;->mDrawBitmap:Lcom/apportable/utils/DrawBitmap;

    #@2
    invoke-virtual {v0}, Lcom/apportable/utils/DrawBitmap;->recycle()V

    #@5
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onDetachedFromWindow()V

    #@8
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Lcom/apportable/ui/View;->mAttachedToWindow:Z

    #@b
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    #@0
    const/4 v3, 0x0

    #@1
    invoke-virtual {p0}, Lcom/apportable/ui/View;->willNotDraw()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_8

    #@7
    :cond_7
    :goto_7
    return-void

    #@8
    :cond_8
    invoke-virtual {p0}, Lcom/apportable/ui/View;->getWidth()I

    #@b
    move-result v0

    #@c
    if-lez v0, :cond_7

    #@e
    invoke-virtual {p0}, Lcom/apportable/ui/View;->getHeight()I

    #@11
    move-result v0

    #@12
    if-lez v0, :cond_7

    #@14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@17
    move-result v0

    #@18
    invoke-virtual {p0}, Lcom/apportable/ui/View;->getWidth()I

    #@1b
    move-result v1

    #@1c
    invoke-virtual {p0}, Lcom/apportable/ui/View;->getHeight()I

    #@1f
    move-result v2

    #@20
    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    #@23
    iget-boolean v1, p0, Lcom/apportable/ui/View;->mNeedsDisplay:Z

    #@25
    if-nez v1, :cond_2f

    #@27
    iget-object v1, p0, Lcom/apportable/ui/View;->mDrawBitmap:Lcom/apportable/utils/DrawBitmap;

    #@29
    invoke-static {}, Lcom/apportable/utils/DrawBitmap;->usingSharedDrawBitmap()Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_36

    #@2f
    :cond_2f
    iget v1, p0, Lcom/apportable/ui/View;->mObject:I

    #@31
    invoke-direct {p0, v1}, Lcom/apportable/ui/View;->callDrawRect(I)V

    #@34
    iput-boolean v3, p0, Lcom/apportable/ui/View;->mNeedsDisplay:Z

    #@36
    :cond_36
    iget-object v1, p0, Lcom/apportable/ui/View;->mDrawBitmap:Lcom/apportable/utils/DrawBitmap;

    #@38
    invoke-virtual {v1, p1}, Lcom/apportable/utils/DrawBitmap;->draw(Landroid/graphics/Canvas;)V

    #@3b
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@3e
    goto :goto_7
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    #@0
    invoke-super/range {p0 .. p5}, Landroid/widget/AbsoluteLayout;->onLayout(ZIIII)V

    #@3
    iget-boolean v0, p0, Lcom/apportable/ui/View;->mNeedsLayout:Z

    #@5
    if-eqz v0, :cond_f

    #@7
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Lcom/apportable/ui/View;->mNeedsLayout:Z

    #@a
    iget v0, p0, Lcom/apportable/ui/View;->mObject:I

    #@c
    invoke-direct {p0, v0}, Lcom/apportable/ui/View;->callLayoutSubviews(I)V

    #@f
    :cond_f
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    #@0
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public removeSubview(Lcom/apportable/ui/View;)V
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/apportable/ui/View;->getSubviewsGroup()Landroid/view/ViewGroup;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@7
    return-void
.end method

.method public setBounds(Landroid/graphics/RectF;)V
    .registers 2

    #@0
    return-void
.end method

.method public setClipsToBounds(Z)V
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/apportable/ui/View;->mClipsToBounds:Z

    #@2
    invoke-virtual {p0, p1}, Lcom/apportable/ui/View;->setClipChildren(Z)V

    #@5
    invoke-virtual {p0}, Lcom/apportable/ui/View;->invalidate()V

    #@8
    return-void
.end method

.method protected setContentView(Landroid/view/View;)V
    .registers 6

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    iget-boolean v0, p0, Lcom/apportable/ui/View;->mHasContentView:Z

    #@4
    if-eqz v0, :cond_9

    #@6
    invoke-virtual {p0, v3}, Lcom/apportable/ui/View;->removeViewAt(I)V

    #@9
    :cond_9
    invoke-virtual {p0}, Lcom/apportable/ui/View;->getSubviewsGroup()Landroid/view/ViewGroup;

    #@c
    move-result-object v0

    #@d
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    #@f
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@12
    invoke-virtual {v0, p1, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@15
    const/4 v0, 0x1

    #@16
    iput-boolean v0, p0, Lcom/apportable/ui/View;->mHasContentView:Z

    #@18
    return-void
.end method

.method public setDebugTag(Ljava/lang/String;)V
    .registers 2

    #@0
    invoke-virtual {p0, p1}, Lcom/apportable/ui/View;->setTag(Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method public setFrame(Landroid/graphics/RectF;)V
    .registers 8

    #@0
    invoke-virtual {p0}, Lcom/apportable/ui/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    #@6
    if-eqz v0, :cond_3a

    #@8
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    #@b
    move-result v1

    #@c
    float-to-int v1, v1

    #@d
    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    #@f
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    #@12
    move-result v1

    #@13
    float-to-int v1, v1

    #@14
    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    #@16
    iget v1, p1, Landroid/graphics/RectF;->left:F

    #@18
    float-to-int v1, v1

    #@19
    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    #@1b
    iget v1, p1, Landroid/graphics/RectF;->top:F

    #@1d
    float-to-int v1, v1

    #@1e
    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    #@20
    iget v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    #@22
    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    #@24
    iget v3, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    #@26
    iget v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    #@28
    iget v5, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    #@2a
    add-int/2addr v3, v4

    #@2b
    iget v0, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    #@2d
    add-int/2addr v0, v5

    #@2e
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/apportable/ui/View;->nativeSetFrame(IIII)V

    #@31
    invoke-virtual {p0}, Lcom/apportable/ui/View;->requestLayout()V

    #@34
    :goto_34
    iget-object v0, p0, Lcom/apportable/ui/View;->mTransform:Landroid/graphics/Matrix;

    #@36
    invoke-virtual {p0, v0}, Lcom/apportable/ui/View;->setTransform(Landroid/graphics/Matrix;)V

    #@39
    return-void

    #@3a
    :cond_3a
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    #@3c
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    #@3f
    move-result v1

    #@40
    float-to-int v1, v1

    #@41
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    #@44
    move-result v2

    #@45
    float-to-int v2, v2

    #@46
    iget v3, p1, Landroid/graphics/RectF;->left:F

    #@48
    float-to-int v3, v3

    #@49
    iget v4, p1, Landroid/graphics/RectF;->top:F

    #@4b
    float-to-int v4, v4

    #@4c
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    #@4f
    invoke-virtual {p0, v0}, Lcom/apportable/ui/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@52
    goto :goto_34
.end method

.method public setHidden(Z)V
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/apportable/ui/View;->mHidden:Z

    #@2
    invoke-direct {p0}, Lcom/apportable/ui/View;->updateInternalHidden()V

    #@5
    return-void
.end method

.method public setNeedsDisplay()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/apportable/ui/View;->mNeedsDisplay:Z

    #@3
    invoke-virtual {p0}, Lcom/apportable/ui/View;->postInvalidate()V

    #@6
    return-void
.end method

.method public setNeedsDisplayInRect(Landroid/graphics/RectF;)V
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/apportable/ui/View;->mNeedsDisplay:Z

    #@3
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    #@b
    iget v1, v0, Landroid/graphics/Rect;->left:I

    #@d
    iget v2, v0, Landroid/graphics/Rect;->top:I

    #@f
    iget v3, v0, Landroid/graphics/Rect;->right:I

    #@11
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@13
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/apportable/ui/View;->postInvalidate(IIII)V

    #@16
    return-void
.end method

.method public setNeedsLayout()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/apportable/ui/View;->mNeedsLayout:Z

    #@3
    invoke-virtual {p0}, Lcom/apportable/ui/View;->requestLayout()V

    #@6
    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .registers 7

    #@0
    const/high16 v4, 0x40000000    # 2.0f

    #@2
    iget-boolean v0, p0, Lcom/apportable/ui/View;->mHidden:Z

    #@4
    if-nez v0, :cond_13

    #@6
    iget-boolean v0, p0, Lcom/apportable/ui/View;->mAttachedToWindow:Z

    #@8
    if-eqz v0, :cond_13

    #@a
    if-nez p1, :cond_16

    #@c
    iget-object v0, p0, Lcom/apportable/ui/View;->mTransform:Landroid/graphics/Matrix;

    #@e
    if-eqz v0, :cond_13

    #@10
    invoke-virtual {p0}, Lcom/apportable/ui/View;->clearAnimation()V

    #@13
    :cond_13
    :goto_13
    iput-object p1, p0, Lcom/apportable/ui/View;->mTransform:Landroid/graphics/Matrix;

    #@15
    return-void

    #@16
    :cond_16
    invoke-virtual {p0}, Lcom/apportable/ui/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    #@1c
    new-instance v1, Landroid/graphics/Matrix;

    #@1e
    invoke-direct {v1, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    #@21
    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    #@23
    neg-int v2, v2

    #@24
    int-to-float v2, v2

    #@25
    div-float/2addr v2, v4

    #@26
    iget v3, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    #@28
    neg-int v3, v3

    #@29
    int-to-float v3, v3

    #@2a
    div-float/2addr v3, v4

    #@2b
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    #@2e
    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    #@30
    int-to-float v2, v2

    #@31
    div-float/2addr v2, v4

    #@32
    iget v0, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    #@34
    int-to-float v0, v0

    #@35
    div-float/2addr v0, v4

    #@36
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@39
    new-instance v0, Lcom/apportable/ui/View$TransformAnimation;

    #@3b
    invoke-direct {v0, p0, v1}, Lcom/apportable/ui/View$TransformAnimation;-><init>(Lcom/apportable/ui/View;Landroid/graphics/Matrix;)V

    #@3e
    const-wide/16 v2, 0x0

    #@40
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    #@43
    const/4 v1, 0x1

    #@44
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    #@47
    invoke-virtual {p0, v0}, Lcom/apportable/ui/View;->startAnimation(Landroid/view/animation/Animation;)V

    #@4a
    goto :goto_13
.end method

.method public setUserInteractionEnabled(Z)V
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/apportable/ui/View;->mUserInteractionEnabled:Z

    #@2
    return-void
.end method
