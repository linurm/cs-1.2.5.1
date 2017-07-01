.class Lcom/apportable/ui/ImageView;
.super Lcom/apportable/ui/View;


# instance fields
.field private mContentMode:I

.field private mGrayscaling:Z

.field private mImageHeight:I

.field private mImageView:Landroid/widget/ImageView;

.field private mImageWidth:I

.field private mPathStore:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;I)V

    #@4
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Lcom/apportable/ui/ImageView;->mPathStore:Ljava/lang/String;

    #@7
    iput v1, p0, Lcom/apportable/ui/ImageView;->mContentMode:I

    #@9
    iput-boolean v1, p0, Lcom/apportable/ui/ImageView;->mGrayscaling:Z

    #@b
    invoke-direct {p0}, Lcom/apportable/ui/ImageView;->init()V

    #@e
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/graphics/RectF;)V
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@4
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Lcom/apportable/ui/ImageView;->mPathStore:Ljava/lang/String;

    #@7
    iput v1, p0, Lcom/apportable/ui/ImageView;->mContentMode:I

    #@9
    iput-boolean v1, p0, Lcom/apportable/ui/ImageView;->mGrayscaling:Z

    #@b
    invoke-direct {p0}, Lcom/apportable/ui/ImageView;->init()V

    #@e
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/RectF;)V
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0, p1, v1, p2}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@4
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Lcom/apportable/ui/ImageView;->mPathStore:Ljava/lang/String;

    #@7
    iput v1, p0, Lcom/apportable/ui/ImageView;->mContentMode:I

    #@9
    iput-boolean v1, p0, Lcom/apportable/ui/ImageView;->mGrayscaling:Z

    #@b
    invoke-direct {p0}, Lcom/apportable/ui/ImageView;->init()V

    #@e
    return-void
.end method

.method private applyContentMode()V
    .registers 3

    #@0
    iget v0, p0, Lcom/apportable/ui/ImageView;->mContentMode:I

    #@2
    packed-switch v0, :pswitch_data_72

    #@5
    :goto_5
    invoke-virtual {p0}, Lcom/apportable/ui/ImageView;->requestLayout()V

    #@8
    return-void

    #@9
    :pswitch_9
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    #@b
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    #@d
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@10
    goto :goto_5

    #@11
    :pswitch_11
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    #@13
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    #@15
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@18
    goto :goto_5

    #@19
    :pswitch_19
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    #@1b
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    #@1d
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@20
    goto :goto_5

    #@21
    :pswitch_21
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    #@23
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    #@25
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@28
    goto :goto_5

    #@29
    :pswitch_29
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    #@2b
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    #@2d
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@30
    goto :goto_5

    #@31
    :pswitch_31
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    #@33
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    #@35
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@38
    goto :goto_5

    #@39
    :pswitch_39
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    #@3b
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    #@3d
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@40
    goto :goto_5

    #@41
    :pswitch_41
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    #@43
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    #@45
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@48
    goto :goto_5

    #@49
    :pswitch_49
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    #@4b
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    #@4d
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@50
    goto :goto_5

    #@51
    :pswitch_51
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    #@53
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    #@55
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@58
    goto :goto_5

    #@59
    :pswitch_59
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    #@5b
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    #@5d
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@60
    goto :goto_5

    #@61
    :pswitch_61
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    #@63
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    #@65
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@68
    goto :goto_5

    #@69
    :pswitch_69
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    #@6b
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    #@6d
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@70
    goto :goto_5

    #@71
    nop

    #@72
    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_9
        :pswitch_11
        :pswitch_19
        :pswitch_21
        :pswitch_29
        :pswitch_31
        :pswitch_39
        :pswitch_41
        :pswitch_49
        :pswitch_51
        :pswitch_59
        :pswitch_61
        :pswitch_69
    .end packed-switch
.end method

.method private static convertToGrayscale(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    #@0
    new-instance v0, Landroid/graphics/ColorMatrix;

    #@2
    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    #@9
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    #@b
    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    #@e
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@11
    return-object p0
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/ImageView;
    .registers 3

    #@0
    new-instance v0, Lcom/apportable/ui/ImageView;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/ImageView;-><init>(Landroid/content/Context;I)V

    #@5
    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/graphics/RectF;)Lcom/apportable/ui/ImageView;
    .registers 4

    #@0
    new-instance v0, Lcom/apportable/ui/ImageView;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/ImageView;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@5
    return-object v0
.end method

.method private init()V
    .registers 3

    #@0
    new-instance v0, Landroid/widget/ImageView;

    #@2
    invoke-virtual {p0}, Lcom/apportable/ui/ImageView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #@9
    iput-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    #@b
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    #@d
    invoke-virtual {p0, v0}, Lcom/apportable/ui/ImageView;->setContentView(Landroid/view/View;)V

    #@10
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Lcom/apportable/ui/ImageView;->mUserInteractionEnabled:Z

    #@13
    return-void
.end method

.method private reloadImage(Ljava/lang/String;)V
    .registers 6

    #@0
    :try_start_0
    invoke-static {p1}, Lcom/apportable/utils/ImageUtils;->Drawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    iget v1, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    #@6
    iget v2, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    #@8
    invoke-virtual {p0, v0, v1, v2}, Lcom/apportable/ui/ImageView;->setImage(Landroid/graphics/drawable/Drawable;II)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    #@b
    :goto_b
    return-void

    #@c
    :catch_c
    move-exception v0

    #@d
    const-string v1, "ImageView"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string v3, "Could not load image from "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@25
    invoke-virtual {p0}, Lcom/apportable/ui/ImageView;->removeImage()V

    #@28
    goto :goto_b
.end method


# virtual methods
.method public getContentMode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/ui/ImageView;->mContentMode:I

    #@2
    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    #@0
    invoke-super {p0}, Lcom/apportable/ui/View;->onAttachedToWindow()V

    #@3
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mPathStore:Ljava/lang/String;

    #@5
    if-eqz v0, :cond_c

    #@7
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mPathStore:Ljava/lang/String;

    #@9
    invoke-direct {p0, v0}, Lcom/apportable/ui/ImageView;->reloadImage(Ljava/lang/String;)V

    #@c
    :cond_c
    invoke-direct {p0}, Lcom/apportable/ui/ImageView;->applyContentMode()V

    #@f
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    #@0
    invoke-super {p0}, Lcom/apportable/ui/View;->onDetachedFromWindow()V

    #@3
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mPathStore:Ljava/lang/String;

    #@5
    if-eqz v0, :cond_d

    #@7
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    #@9
    const/4 v1, 0x0

    #@a
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@d
    :cond_d
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 12

    #@0
    const/4 v0, 0x0

    #@1
    invoke-super/range {p0 .. p5}, Lcom/apportable/ui/View;->onLayout(ZIIII)V

    #@4
    sub-int v1, p4, p2

    #@6
    sub-int v3, p5, p3

    #@8
    iget v2, p0, Lcom/apportable/ui/ImageView;->mContentMode:I

    #@a
    packed-switch v2, :pswitch_data_86

    #@d
    move v2, v1

    #@e
    move v1, v0

    #@f
    :goto_f
    iget-object v4, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    #@11
    add-int/2addr v2, v1

    #@12
    add-int/2addr v3, v0

    #@13
    invoke-virtual {v4, v1, v0, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    #@16
    return-void

    #@17
    :pswitch_17
    iget v0, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    #@19
    sub-int v0, v1, v0

    #@1b
    div-int/lit8 v1, v0, 0x2

    #@1d
    iget v0, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    #@1f
    sub-int v0, v3, v0

    #@21
    div-int/lit8 v0, v0, 0x2

    #@23
    iget v2, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    #@25
    iget v3, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    #@27
    goto :goto_f

    #@28
    :pswitch_28
    iget v2, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    #@2a
    sub-int/2addr v1, v2

    #@2b
    div-int/lit8 v1, v1, 0x2

    #@2d
    iget v2, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    #@2f
    iget v3, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    #@31
    goto :goto_f

    #@32
    :pswitch_32
    iget v0, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    #@34
    sub-int v0, v1, v0

    #@36
    div-int/lit8 v1, v0, 0x2

    #@38
    iget v0, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    #@3a
    sub-int v0, v3, v0

    #@3c
    iget v2, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    #@3e
    iget v3, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    #@40
    goto :goto_f

    #@41
    :pswitch_41
    iget v1, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    #@43
    sub-int v1, v3, v1

    #@45
    div-int/lit8 v1, v1, 0x2

    #@47
    iget v2, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    #@49
    iget v3, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    #@4b
    move v5, v1

    #@4c
    move v1, v0

    #@4d
    move v0, v5

    #@4e
    goto :goto_f

    #@4f
    :pswitch_4f
    iget v0, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    #@51
    sub-int/2addr v1, v0

    #@52
    iget v0, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    #@54
    sub-int v0, v3, v0

    #@56
    div-int/lit8 v0, v0, 0x2

    #@58
    iget v2, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    #@5a
    iget v3, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    #@5c
    goto :goto_f

    #@5d
    :pswitch_5d
    iget v1, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    #@5f
    iget v2, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    #@61
    move v3, v2

    #@62
    move v2, v1

    #@63
    move v1, v0

    #@64
    goto :goto_f

    #@65
    :pswitch_65
    iget v2, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    #@67
    sub-int/2addr v1, v2

    #@68
    iget v2, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    #@6a
    iget v3, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    #@6c
    goto :goto_f

    #@6d
    :pswitch_6d
    iget v1, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    #@6f
    iget v2, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    #@71
    iget v4, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    #@73
    sub-int v1, v3, v1

    #@75
    move v3, v4

    #@76
    move v5, v0

    #@77
    move v0, v1

    #@78
    move v1, v5

    #@79
    goto :goto_f

    #@7a
    :pswitch_7a
    iget v0, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    #@7c
    sub-int/2addr v1, v0

    #@7d
    iget v0, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    #@7f
    sub-int v0, v3, v0

    #@81
    iget v2, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    #@83
    iget v3, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    #@85
    goto :goto_f

    #@86
    :pswitch_data_86
    .packed-switch 0x4
        :pswitch_17
        :pswitch_28
        :pswitch_32
        :pswitch_41
        :pswitch_4f
        :pswitch_5d
        :pswitch_65
        :pswitch_6d
        :pswitch_7a
    .end packed-switch
.end method

.method public removeImage()V
    .registers 4

    #@0
    const/4 v2, 0x0

    #@1
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    #@3
    const v1, 0x106000d

    #@6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    #@9
    iput v2, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    #@b
    iput v2, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    #@d
    invoke-virtual {p0}, Lcom/apportable/ui/ImageView;->requestLayout()V

    #@10
    return-void
.end method

.method public setContentMode(I)V
    .registers 2

    #@0
    iput p1, p0, Lcom/apportable/ui/ImageView;->mContentMode:I

    #@2
    invoke-direct {p0}, Lcom/apportable/ui/ImageView;->applyContentMode()V

    #@5
    return-void
.end method

.method public setGrayscalingImage(Z)V
    .registers 4

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/ImageView;->mGrayscaling:Z

    #@2
    if-eq p1, v0, :cond_6

    #@4
    iput-boolean p1, p0, Lcom/apportable/ui/ImageView;->mGrayscaling:Z

    #@6
    :cond_6
    if-eqz p1, :cond_17

    #@8
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    #@a
    iget-object v1, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    #@c
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v1

    #@10
    invoke-static {v1}, Lcom/apportable/ui/ImageView;->convertToGrayscale(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@17
    :cond_17
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;II)V
    .registers 5

    #@0
    invoke-static {p1}, Lcom/apportable/utils/ImageUtils;->createDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p2, p3}, Lcom/apportable/ui/ImageView;->setImage(Landroid/graphics/drawable/Drawable;II)V

    #@7
    return-void
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;II)V
    .registers 5

    #@0
    iput p2, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    #@2
    iput p3, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    #@4
    iget-boolean v0, p0, Lcom/apportable/ui/ImageView;->mGrayscaling:Z

    #@6
    if-eqz v0, :cond_c

    #@8
    invoke-static {p1}, Lcom/apportable/ui/ImageView;->convertToGrayscale(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@b
    move-result-object p1

    #@c
    :cond_c
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    #@e
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@11
    invoke-virtual {p0}, Lcom/apportable/ui/ImageView;->requestLayout()V

    #@14
    return-void
.end method

.method public setImage(Ljava/lang/String;II)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/apportable/ui/ImageView;->mPathStore:Ljava/lang/String;

    #@2
    iput p2, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    #@4
    iput p3, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    #@6
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mPathStore:Ljava/lang/String;

    #@8
    invoke-direct {p0, v0}, Lcom/apportable/ui/ImageView;->reloadImage(Ljava/lang/String;)V

    #@b
    return-void
.end method

.method public setUserInteractionEnabled(Z)V
    .registers 2

    #@0
    return-void
.end method
