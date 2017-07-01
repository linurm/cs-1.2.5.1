.class Lcom/apportable/utils/PixelsDrawable;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field private mHeight:I

.field private mIntrinsicHeight:I

.field private mIntrinsicWidth:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPixels:[I

.field private mWidth:I


# direct methods
.method public constructor <init>([III)V
    .registers 6

    #@0
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    new-instance v0, Landroid/graphics/Paint;

    #@5
    const/4 v1, 0x6

    #@6
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    #@9
    iput-object v0, p0, Lcom/apportable/utils/PixelsDrawable;->mPaint:Landroid/graphics/Paint;

    #@b
    iput-object p1, p0, Lcom/apportable/utils/PixelsDrawable;->mPixels:[I

    #@d
    iput p2, p0, Lcom/apportable/utils/PixelsDrawable;->mIntrinsicWidth:I

    #@f
    iput p2, p0, Lcom/apportable/utils/PixelsDrawable;->mWidth:I

    #@11
    iput p3, p0, Lcom/apportable/utils/PixelsDrawable;->mIntrinsicHeight:I

    #@13
    iput p3, p0, Lcom/apportable/utils/PixelsDrawable;->mHeight:I

    #@15
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 13

    #@0
    const/4 v4, 0x0

    #@1
    invoke-virtual {p0}, Lcom/apportable/utils/PixelsDrawable;->getBounds()Landroid/graphics/Rect;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@8
    move-result v10

    #@9
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@c
    move-result v1

    #@d
    int-to-float v1, v1

    #@e
    iget v2, p0, Lcom/apportable/utils/PixelsDrawable;->mWidth:I

    #@10
    int-to-float v2, v2

    #@11
    div-float/2addr v1, v2

    #@12
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@15
    move-result v0

    #@16
    int-to-float v0, v0

    #@17
    iget v2, p0, Lcom/apportable/utils/PixelsDrawable;->mHeight:I

    #@19
    int-to-float v2, v2

    #@1a
    div-float/2addr v0, v2

    #@1b
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->scale(FF)V

    #@1e
    iget-object v1, p0, Lcom/apportable/utils/PixelsDrawable;->mPixels:[I

    #@20
    const/4 v2, 0x0

    #@21
    iget v3, p0, Lcom/apportable/utils/PixelsDrawable;->mWidth:I

    #@23
    iget v6, p0, Lcom/apportable/utils/PixelsDrawable;->mWidth:I

    #@25
    iget v7, p0, Lcom/apportable/utils/PixelsDrawable;->mHeight:I

    #@27
    const/4 v8, 0x1

    #@28
    iget-object v9, p0, Lcom/apportable/utils/PixelsDrawable;->mPaint:Landroid/graphics/Paint;

    #@2a
    move-object v0, p1

    #@2b
    move v5, v4

    #@2c
    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    #@2f
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@32
    return-void
.end method

.method public getIntrinsicHeight()I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/utils/PixelsDrawable;->mIntrinsicHeight:I

    #@2
    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/utils/PixelsDrawable;->mIntrinsicWidth:I

    #@2
    return v0
.end method

.method public getOpacity()I
    .registers 2

    #@0
    const/4 v0, -0x3

    #@1
    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/utils/PixelsDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    #@5
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/utils/PixelsDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@5
    return-void
.end method

.method public setIntrinsicSize(II)V
    .registers 3

    #@0
    iput p1, p0, Lcom/apportable/utils/PixelsDrawable;->mIntrinsicWidth:I

    #@2
    iput p2, p0, Lcom/apportable/utils/PixelsDrawable;->mIntrinsicHeight:I

    #@4
    return-void
.end method
