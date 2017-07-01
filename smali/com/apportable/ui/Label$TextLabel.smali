.class Lcom/apportable/ui/Label$TextLabel;
.super Landroid/widget/TextView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/Label;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextLabel"
.end annotation


# instance fields
.field private adjustFontSize:Z

.field private adjustTextSizeToStroke:Z

.field private canvasStore:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private foregroundDrawable:Landroid/graphics/drawable/Drawable;

.field private frozen:Z

.field private initialized:Z

.field private innerShadows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apportable/ui/Label$Shadow;",
            ">;"
        }
    .end annotation
.end field

.field private lockedCompoundPadding:[I

.field private mNumberOfLines:I

.field private mTestPaint:Landroid/graphics/Paint;

.field private minimumFontSize:F

.field private outerShadows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apportable/ui/Label$Shadow;",
            ">;"
        }
    .end annotation
.end field

.field private strokeColor:I

.field private strokeJoin:Landroid/graphics/Paint$Join;

.field private strokeMiter:F

.field private strokeWidth:F

.field private tempBitmap:Landroid/graphics/Bitmap;

.field private tempCanvas:Landroid/graphics/Canvas;

.field private textSizeBeforeStrokeAdjustment:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@4
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->outerShadows:Ljava/util/ArrayList;

    #@b
    new-instance v0, Ljava/util/ArrayList;

    #@d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@10
    iput-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->innerShadows:Ljava/util/ArrayList;

    #@12
    new-instance v0, Ljava/util/WeakHashMap;

    #@14
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    #@17
    iput-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->canvasStore:Ljava/util/WeakHashMap;

    #@19
    iput-boolean v1, p0, Lcom/apportable/ui/Label$TextLabel;->frozen:Z

    #@1b
    iput-boolean v1, p0, Lcom/apportable/ui/Label$TextLabel;->initialized:Z

    #@1d
    iput-boolean v1, p0, Lcom/apportable/ui/Label$TextLabel;->adjustFontSize:Z

    #@1f
    iput-boolean v1, p0, Lcom/apportable/ui/Label$TextLabel;->adjustTextSizeToStroke:Z

    #@21
    const/4 v0, 0x1

    #@22
    iput v0, p0, Lcom/apportable/ui/Label$TextLabel;->mNumberOfLines:I

    #@24
    new-instance v0, Landroid/graphics/Paint;

    #@26
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@29
    iput-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->mTestPaint:Landroid/graphics/Paint;

    #@2b
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->mTestPaint:Landroid/graphics/Paint;

    #@2d
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getPaint()Landroid/text/TextPaint;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    #@34
    return-void
.end method

.method private adjustDaTextSizeToDaStroke()V
    .registers 5

    #@0
    const/4 v3, 0x0

    #@1
    iget-boolean v0, p0, Lcom/apportable/ui/Label$TextLabel;->adjustTextSizeToStroke:Z

    #@3
    if-eqz v0, :cond_a

    #@5
    iget v0, p0, Lcom/apportable/ui/Label$TextLabel;->textSizeBeforeStrokeAdjustment:F

    #@7
    invoke-virtual {p0, v3, v0}, Lcom/apportable/ui/Label$TextLabel;->setTextSize(IF)V

    #@a
    :cond_a
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getTextSize()F

    #@d
    move-result v0

    #@e
    iput v0, p0, Lcom/apportable/ui/Label$TextLabel;->textSizeBeforeStrokeAdjustment:F

    #@10
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p0, Lcom/apportable/ui/Label$TextLabel;->adjustTextSizeToStroke:Z

    #@13
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getTextSize()F

    #@16
    move-result v0

    #@17
    iget v1, p0, Lcom/apportable/ui/Label$TextLabel;->strokeWidth:F

    #@19
    const v2, 0x3dcccccd    # 0.1f

    #@1c
    mul-float/2addr v1, v2

    #@1d
    sub-float/2addr v0, v1

    #@1e
    invoke-virtual {p0, v3, v0}, Lcom/apportable/ui/Label$TextLabel;->setTextSize(IF)V

    #@21
    return-void
.end method

.method private generateTempCanvas()V
    .registers 6

    #@0
    const-string v0, "%dx%d"

    #@2
    const/4 v1, 0x2

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getWidth()I

    #@9
    move-result v3

    #@a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v3

    #@e
    aput-object v3, v1, v2

    #@10
    const/4 v2, 0x1

    #@11
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getHeight()I

    #@14
    move-result v3

    #@15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v3

    #@19
    aput-object v3, v1, v2

    #@1b
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->canvasStore:Ljava/util/WeakHashMap;

    #@21
    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroid/util/Pair;

    #@27
    if-eqz v0, :cond_36

    #@29
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@2b
    check-cast v1, Landroid/graphics/Canvas;

    #@2d
    iput-object v1, p0, Lcom/apportable/ui/Label$TextLabel;->tempCanvas:Landroid/graphics/Canvas;

    #@2f
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@31
    check-cast v0, Landroid/graphics/Bitmap;

    #@33
    iput-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->tempBitmap:Landroid/graphics/Bitmap;

    #@35
    :goto_35
    return-void

    #@36
    :cond_36
    new-instance v0, Landroid/graphics/Canvas;

    #@38
    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    #@3b
    iput-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->tempCanvas:Landroid/graphics/Canvas;

    #@3d
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getWidth()I

    #@40
    move-result v0

    #@41
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getHeight()I

    #@44
    move-result v2

    #@45
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@47
    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@4a
    move-result-object v0

    #@4b
    iput-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->tempBitmap:Landroid/graphics/Bitmap;

    #@4d
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->tempCanvas:Landroid/graphics/Canvas;

    #@4f
    iget-object v2, p0, Lcom/apportable/ui/Label$TextLabel;->tempBitmap:Landroid/graphics/Bitmap;

    #@51
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    #@54
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->canvasStore:Ljava/util/WeakHashMap;

    #@56
    new-instance v2, Landroid/util/Pair;

    #@58
    iget-object v3, p0, Lcom/apportable/ui/Label$TextLabel;->tempCanvas:Landroid/graphics/Canvas;

    #@5a
    iget-object v4, p0, Lcom/apportable/ui/Label$TextLabel;->tempBitmap:Landroid/graphics/Bitmap;

    #@5c
    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@5f
    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@62
    goto :goto_35
.end method

.method private refitText(Ljava/lang/String;II)V
    .registers 15

    #@0
    const/4 v10, 0x0

    #@1
    if-lez p2, :cond_5

    #@3
    if-gtz p3, :cond_6

    #@5
    :cond_5
    :goto_5
    return-void

    #@6
    :cond_6
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getPaddingLeft()I

    #@9
    move-result v4

    #@a
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getPaddingRight()I

    #@d
    move-result v5

    #@e
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getPaddingTop()I

    #@11
    move-result v6

    #@12
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getPaddingBottom()I

    #@15
    move-result v7

    #@16
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getTextSize()F

    #@19
    move-result v3

    #@1a
    iget v1, p0, Lcom/apportable/ui/Label$TextLabel;->minimumFontSize:F

    #@1c
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->mTestPaint:Landroid/graphics/Paint;

    #@1e
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getPaint()Landroid/text/TextPaint;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    #@25
    :goto_25
    sub-float v0, v3, v1

    #@27
    const/high16 v2, 0x3f000000    # 0.5f

    #@29
    cmpl-float v0, v0, v2

    #@2b
    if-lez v0, :cond_4c

    #@2d
    new-instance v8, Landroid/graphics/Rect;

    #@2f
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    #@32
    add-float v0, v3, v1

    #@34
    const/high16 v2, 0x40000000    # 2.0f

    #@36
    div-float v2, v0, v2

    #@38
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->mTestPaint:Landroid/graphics/Paint;

    #@3a
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    #@3d
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->mTestPaint:Landroid/graphics/Paint;

    #@3f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@42
    move-result v9

    #@43
    invoke-virtual {v0, p1, v10, v9, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    #@46
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    #@49
    move-result v0

    #@4a
    if-nez v0, :cond_50

    #@4c
    :cond_4c
    invoke-virtual {p0, v10, v1}, Lcom/apportable/ui/Label$TextLabel;->setTextSize(IF)V

    #@4f
    goto :goto_5

    #@50
    :cond_50
    sub-int v0, p3, v6

    #@52
    sub-int/2addr v0, v7

    #@53
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    #@56
    move-result v9

    #@57
    div-int/2addr v0, v9

    #@58
    if-nez v0, :cond_5b

    #@5a
    const/4 v0, 0x1

    #@5b
    :cond_5b
    iget v9, p0, Lcom/apportable/ui/Label$TextLabel;->mNumberOfLines:I

    #@5d
    if-le v0, v9, :cond_61

    #@5f
    iget v0, p0, Lcom/apportable/ui/Label$TextLabel;->mNumberOfLines:I

    #@61
    :cond_61
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    #@64
    move-result v8

    #@65
    div-int v0, v8, v0

    #@67
    sub-int v8, p2, v4

    #@69
    sub-int/2addr v8, v5

    #@6a
    if-lt v0, v8, :cond_70

    #@6c
    move v0, v1

    #@6d
    :goto_6d
    move v1, v0

    #@6e
    move v3, v2

    #@6f
    goto :goto_25

    #@70
    :cond_70
    move v0, v2

    #@71
    move v2, v3

    #@72
    goto :goto_6d
.end method


# virtual methods
.method public addInnerShadow(FFFI)V
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    cmpl-float v0, p1, v0

    #@3
    if-nez v0, :cond_8

    #@5
    const p1, 0x38d1b717    # 1.0E-4f

    #@8
    :cond_8
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->innerShadows:Ljava/util/ArrayList;

    #@a
    new-instance v1, Lcom/apportable/ui/Label$Shadow;

    #@c
    invoke-direct {v1, p1, p2, p3, p4}, Lcom/apportable/ui/Label$Shadow;-><init>(FFFI)V

    #@f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@12
    return-void
.end method

.method public addOuterShadow(FFFI)V
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    cmpl-float v0, p1, v0

    #@3
    if-nez v0, :cond_8

    #@5
    const p1, 0x38d1b717    # 1.0E-4f

    #@8
    :cond_8
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->outerShadows:Ljava/util/ArrayList;

    #@a
    new-instance v1, Lcom/apportable/ui/Label$Shadow;

    #@c
    invoke-direct {v1, p1, p2, p3, p4}, Lcom/apportable/ui/Label$Shadow;-><init>(FFFI)V

    #@f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@12
    return-void
.end method

.method public clearInnerShadows()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->innerShadows:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    return-void
.end method

.method public clearOuterShadows()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->outerShadows:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    return-void
.end method

.method public freeze()V
    .registers 5

    #@0
    const/4 v3, 0x1

    #@1
    const/4 v0, 0x4

    #@2
    new-array v0, v0, [I

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getCompoundPaddingLeft()I

    #@8
    move-result v2

    #@9
    aput v2, v0, v1

    #@b
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getCompoundPaddingRight()I

    #@e
    move-result v1

    #@f
    aput v1, v0, v3

    #@11
    const/4 v1, 0x2

    #@12
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getCompoundPaddingTop()I

    #@15
    move-result v2

    #@16
    aput v2, v0, v1

    #@18
    const/4 v1, 0x3

    #@19
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getCompoundPaddingBottom()I

    #@1c
    move-result v2

    #@1d
    aput v2, v0, v1

    #@1f
    iput-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->lockedCompoundPadding:[I

    #@21
    iput-boolean v3, p0, Lcom/apportable/ui/Label$TextLabel;->frozen:Z

    #@23
    return-void
.end method

.method public getCompoundPaddingBottom()I
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/Label$TextLabel;->frozen:Z

    #@2
    if-nez v0, :cond_9

    #@4
    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    #@7
    move-result v0

    #@8
    :goto_8
    return v0

    #@9
    :cond_9
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->lockedCompoundPadding:[I

    #@b
    const/4 v1, 0x3

    #@c
    aget v0, v0, v1

    #@e
    goto :goto_8
.end method

.method public getCompoundPaddingLeft()I
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/Label$TextLabel;->frozen:Z

    #@2
    if-nez v0, :cond_9

    #@4
    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@7
    move-result v0

    #@8
    :goto_8
    return v0

    #@9
    :cond_9
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->lockedCompoundPadding:[I

    #@b
    const/4 v1, 0x0

    #@c
    aget v0, v0, v1

    #@e
    goto :goto_8
.end method

.method public getCompoundPaddingRight()I
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/Label$TextLabel;->frozen:Z

    #@2
    if-nez v0, :cond_9

    #@4
    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@7
    move-result v0

    #@8
    :goto_8
    return v0

    #@9
    :cond_9
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->lockedCompoundPadding:[I

    #@b
    const/4 v1, 0x1

    #@c
    aget v0, v0, v1

    #@e
    goto :goto_8
.end method

.method public getCompoundPaddingTop()I
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/Label$TextLabel;->frozen:Z

    #@2
    if-nez v0, :cond_9

    #@4
    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    #@7
    move-result v0

    #@8
    :goto_8
    return v0

    #@9
    :cond_9
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->lockedCompoundPadding:[I

    #@b
    const/4 v1, 0x2

    #@c
    aget v0, v0, v1

    #@e
    goto :goto_8
.end method

.method public getForeground()Landroid/graphics/drawable/Drawable;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-nez v0, :cond_7

    #@4
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    :goto_6
    return-object v0

    #@7
    :cond_7
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    #@9
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getCurrentTextColor()I

    #@c
    move-result v1

    #@d
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    #@10
    goto :goto_6
.end method

.method public invalidate()V
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/Label$TextLabel;->frozen:Z

    #@2
    if-nez v0, :cond_7

    #@4
    invoke-super {p0}, Landroid/widget/TextView;->invalidate()V

    #@7
    :cond_7
    return-void
.end method

.method public invalidate(IIII)V
    .registers 6

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/Label$TextLabel;->frozen:Z

    #@2
    if-nez v0, :cond_7

    #@4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->invalidate(IIII)V

    #@7
    :cond_7
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/Label$TextLabel;->frozen:Z

    #@2
    if-nez v0, :cond_7

    #@4
    invoke-super {p0, p1}, Landroid/widget/TextView;->invalidate(Landroid/graphics/Rect;)V

    #@7
    :cond_7
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 14

    #@0
    const/4 v11, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    const/4 v9, 0x0

    #@3
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->freeze()V

    #@6
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getBackground()Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getCurrentTextColor()I

    #@11
    move-result v3

    #@12
    invoke-virtual {p0, v10, v10, v10, v10}, Lcom/apportable/ui/Label$TextLabel;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@15
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->outerShadows:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v4

    #@1b
    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_36

    #@21
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Lcom/apportable/ui/Label$Shadow;

    #@27
    iget v5, v0, Lcom/apportable/ui/Label$Shadow;->r:F

    #@29
    iget v6, v0, Lcom/apportable/ui/Label$Shadow;->dx:F

    #@2b
    iget v7, v0, Lcom/apportable/ui/Label$Shadow;->dy:F

    #@2d
    iget v0, v0, Lcom/apportable/ui/Label$Shadow;->color:I

    #@2f
    invoke-virtual {p0, v5, v6, v7, v0}, Lcom/apportable/ui/Label$TextLabel;->setShadowLayer(FFFI)V

    #@32
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    #@35
    goto :goto_1b

    #@36
    :cond_36
    invoke-virtual {p0, v9, v9, v9, v11}, Lcom/apportable/ui/Label$TextLabel;->setShadowLayer(FFFI)V

    #@39
    invoke-virtual {p0, v3}, Lcom/apportable/ui/Label$TextLabel;->setTextColor(I)V

    #@3c
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    #@3e
    if-eqz v0, :cond_7c

    #@40
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    #@42
    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    #@44
    if-eqz v0, :cond_7c

    #@46
    invoke-direct {p0}, Lcom/apportable/ui/Label$TextLabel;->generateTempCanvas()V

    #@49
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->tempCanvas:Landroid/graphics/Canvas;

    #@4b
    invoke-super {p0, v0}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    #@4e
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    #@50
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    #@52
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    #@55
    move-result-object v0

    #@56
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    #@58
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    #@5a
    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    #@5d
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    #@60
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    #@62
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@69
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    #@6b
    iget-object v4, p0, Lcom/apportable/ui/Label$TextLabel;->tempCanvas:Landroid/graphics/Canvas;

    #@6d
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@70
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->tempBitmap:Landroid/graphics/Bitmap;

    #@72
    invoke-virtual {p1, v0, v9, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@75
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->tempCanvas:Landroid/graphics/Canvas;

    #@77
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    #@79
    invoke-virtual {v0, v11, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    #@7c
    :cond_7c
    iget v0, p0, Lcom/apportable/ui/Label$TextLabel;->strokeColor:I

    #@7e
    if-eqz v0, :cond_b1

    #@80
    iget v0, p0, Lcom/apportable/ui/Label$TextLabel;->strokeWidth:F

    #@82
    cmpl-float v0, v0, v9

    #@84
    if-lez v0, :cond_b1

    #@86
    invoke-direct {p0}, Lcom/apportable/ui/Label$TextLabel;->adjustDaTextSizeToDaStroke()V

    #@89
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getPaint()Landroid/text/TextPaint;

    #@8c
    move-result-object v0

    #@8d
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@8f
    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@92
    iget-object v4, p0, Lcom/apportable/ui/Label$TextLabel;->strokeJoin:Landroid/graphics/Paint$Join;

    #@94
    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    #@97
    iget v4, p0, Lcom/apportable/ui/Label$TextLabel;->strokeMiter:F

    #@99
    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setStrokeMiter(F)V

    #@9c
    iget v4, p0, Lcom/apportable/ui/Label$TextLabel;->strokeColor:I

    #@9e
    invoke-virtual {p0, v4}, Lcom/apportable/ui/Label$TextLabel;->setTextColor(I)V

    #@a1
    iget v4, p0, Lcom/apportable/ui/Label$TextLabel;->strokeWidth:F

    #@a3
    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    #@a6
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    #@a9
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@ab
    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@ae
    invoke-virtual {p0, v3}, Lcom/apportable/ui/Label$TextLabel;->setTextColor(I)V

    #@b1
    :cond_b1
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->innerShadows:Ljava/util/ArrayList;

    #@b3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@b6
    move-result v0

    #@b7
    if-lez v0, :cond_128

    #@b9
    invoke-direct {p0}, Lcom/apportable/ui/Label$TextLabel;->generateTempCanvas()V

    #@bc
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getPaint()Landroid/text/TextPaint;

    #@bf
    move-result-object v4

    #@c0
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->innerShadows:Ljava/util/ArrayList;

    #@c2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@c5
    move-result-object v5

    #@c6
    :goto_c6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@c9
    move-result v0

    #@ca
    if-eqz v0, :cond_128

    #@cc
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@cf
    move-result-object v0

    #@d0
    check-cast v0, Lcom/apportable/ui/Label$Shadow;

    #@d2
    iget v6, v0, Lcom/apportable/ui/Label$Shadow;->color:I

    #@d4
    invoke-virtual {p0, v6}, Lcom/apportable/ui/Label$TextLabel;->setTextColor(I)V

    #@d7
    iget-object v6, p0, Lcom/apportable/ui/Label$TextLabel;->tempCanvas:Landroid/graphics/Canvas;

    #@d9
    invoke-super {p0, v6}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    #@dc
    const/high16 v6, -0x1000000

    #@de
    invoke-virtual {p0, v6}, Lcom/apportable/ui/Label$TextLabel;->setTextColor(I)V

    #@e1
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    #@e3
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    #@e5
    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    #@e8
    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    #@eb
    new-instance v6, Landroid/graphics/BlurMaskFilter;

    #@ed
    iget v7, v0, Lcom/apportable/ui/Label$Shadow;->r:F

    #@ef
    sget-object v8, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    #@f1
    invoke-direct {v6, v7, v8}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    #@f4
    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    #@f7
    iget-object v6, p0, Lcom/apportable/ui/Label$TextLabel;->tempCanvas:Landroid/graphics/Canvas;

    #@f9
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    #@fc
    iget-object v6, p0, Lcom/apportable/ui/Label$TextLabel;->tempCanvas:Landroid/graphics/Canvas;

    #@fe
    iget v7, v0, Lcom/apportable/ui/Label$Shadow;->dx:F

    #@100
    iget v0, v0, Lcom/apportable/ui/Label$Shadow;->dy:F

    #@102
    invoke-virtual {v6, v7, v0}, Landroid/graphics/Canvas;->translate(FF)V

    #@105
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->tempCanvas:Landroid/graphics/Canvas;

    #@107
    invoke-super {p0, v0}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    #@10a
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->tempCanvas:Landroid/graphics/Canvas;

    #@10c
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    #@10f
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->tempBitmap:Landroid/graphics/Bitmap;

    #@111
    invoke-virtual {p1, v0, v9, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@114
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->tempCanvas:Landroid/graphics/Canvas;

    #@116
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    #@118
    invoke-virtual {v0, v11, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    #@11b
    invoke-virtual {v4, v10}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    #@11e
    invoke-virtual {v4, v10}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    #@121
    invoke-virtual {p0, v3}, Lcom/apportable/ui/Label$TextLabel;->setTextColor(I)V

    #@124
    invoke-virtual {p0, v9, v9, v9, v11}, Lcom/apportable/ui/Label$TextLabel;->setShadowLayer(FFFI)V

    #@127
    goto :goto_c6

    #@128
    :cond_128
    if-eqz v2, :cond_138

    #@12a
    aget-object v0, v2, v11

    #@12c
    const/4 v4, 0x1

    #@12d
    aget-object v4, v2, v4

    #@12f
    const/4 v5, 0x2

    #@130
    aget-object v5, v2, v5

    #@132
    const/4 v6, 0x3

    #@133
    aget-object v2, v2, v6

    #@135
    invoke-virtual {p0, v0, v4, v5, v2}, Lcom/apportable/ui/Label$TextLabel;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@138
    :cond_138
    invoke-virtual {p0, v1}, Lcom/apportable/ui/Label$TextLabel;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@13b
    invoke-virtual {p0, v3}, Lcom/apportable/ui/Label$TextLabel;->setTextColor(I)V

    #@13e
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->unfreeze()V

    #@141
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    #@144
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    #@0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    #@3
    iget-boolean v0, p0, Lcom/apportable/ui/Label$TextLabel;->adjustFontSize:Z

    #@5
    if-eqz v0, :cond_1d

    #@7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@a
    move-result v0

    #@b
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getMeasuredHeight()I

    #@e
    move-result v1

    #@f
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getText()Ljava/lang/CharSequence;

    #@12
    move-result-object v2

    #@13
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-direct {p0, v2, v0, v1}, Lcom/apportable/ui/Label$TextLabel;->refitText(Ljava/lang/String;II)V

    #@1a
    invoke-virtual {p0, v0, v1}, Lcom/apportable/ui/Label$TextLabel;->setMeasuredDimension(II)V

    #@1d
    :cond_1d
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    #@0
    if-eq p1, p3, :cond_11

    #@2
    iget-boolean v0, p0, Lcom/apportable/ui/Label$TextLabel;->adjustFontSize:Z

    #@4
    if-eqz v0, :cond_11

    #@6
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getText()Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    invoke-direct {p0, v0, p1, p2}, Lcom/apportable/ui/Label$TextLabel;->refitText(Ljava/lang/String;II)V

    #@11
    :cond_11
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->refitTextIfNeeded()V

    #@3
    return-void
.end method

.method public postInvalidate()V
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/Label$TextLabel;->frozen:Z

    #@2
    if-nez v0, :cond_7

    #@4
    invoke-super {p0}, Landroid/widget/TextView;->postInvalidate()V

    #@7
    :cond_7
    return-void
.end method

.method public postInvalidate(IIII)V
    .registers 6

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/Label$TextLabel;->frozen:Z

    #@2
    if-nez v0, :cond_7

    #@4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->postInvalidate(IIII)V

    #@7
    :cond_7
    return-void
.end method

.method public refitTextIfNeeded()V
    .registers 4

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/Label$TextLabel;->adjustFontSize:Z

    #@2
    if-eqz v0, :cond_17

    #@4
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getText()Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getWidth()I

    #@f
    move-result v1

    #@10
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getHeight()I

    #@13
    move-result v2

    #@14
    invoke-direct {p0, v0, v1, v2}, Lcom/apportable/ui/Label$TextLabel;->refitText(Ljava/lang/String;II)V

    #@17
    :cond_17
    return-void
.end method

.method public requestLayout()V
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/Label$TextLabel;->frozen:Z

    #@2
    if-nez v0, :cond_7

    #@4
    invoke-super {p0}, Landroid/widget/TextView;->requestLayout()V

    #@7
    :cond_7
    return-void
.end method

.method public setAdjustsFontSizeToFitWidth(Z)V
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/apportable/ui/Label$TextLabel;->adjustFontSize:Z

    #@2
    return-void
.end method

.method public setForegroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/Label$TextLabel;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    return-void
.end method

.method public setMinimumFontSize(F)V
    .registers 2

    #@0
    iput p1, p0, Lcom/apportable/ui/Label$TextLabel;->minimumFontSize:F

    #@2
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->refitTextIfNeeded()V

    #@5
    return-void
.end method

.method public setNumberOfLines(I)V
    .registers 2

    #@0
    iput p1, p0, Lcom/apportable/ui/Label$TextLabel;->mNumberOfLines:I

    #@2
    return-void
.end method

.method public setStroke(FI)V
    .registers 5

    #@0
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    #@2
    const/high16 v1, 0x41200000    # 10.0f

    #@4
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/apportable/ui/Label$TextLabel;->setStroke(FILandroid/graphics/Paint$Join;F)V

    #@7
    return-void
.end method

.method public setStroke(FILandroid/graphics/Paint$Join;F)V
    .registers 5

    #@0
    iput p1, p0, Lcom/apportable/ui/Label$TextLabel;->strokeWidth:F

    #@2
    iput p2, p0, Lcom/apportable/ui/Label$TextLabel;->strokeColor:I

    #@4
    iput-object p3, p0, Lcom/apportable/ui/Label$TextLabel;->strokeJoin:Landroid/graphics/Paint$Join;

    #@6
    iput p4, p0, Lcom/apportable/ui/Label$TextLabel;->strokeMiter:F

    #@8
    return-void
.end method

.method public unfreeze()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/apportable/ui/Label$TextLabel;->frozen:Z

    #@3
    return-void
.end method
