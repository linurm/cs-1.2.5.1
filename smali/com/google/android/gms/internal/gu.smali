.class public final Lcom/google/android/gms/internal/gu;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 10

    #@0
    const/4 v2, 0x0

    #@1
    if-nez p0, :cond_5

    #@3
    const/4 v0, 0x0

    #@4
    :goto_4
    return-object v0

    #@5
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@8
    move-result v1

    #@9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@c
    move-result v0

    #@d
    if-lt v1, v0, :cond_47

    #@f
    div-int/lit8 v1, v1, 0x2

    #@11
    div-int/lit8 v3, v0, 0x2

    #@13
    sub-int/2addr v1, v3

    #@14
    :goto_14
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@16
    invoke-static {v0, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@19
    move-result-object v3

    #@1a
    new-instance v4, Landroid/graphics/Canvas;

    #@1c
    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@1f
    new-instance v5, Landroid/graphics/Paint;

    #@21
    const/4 v6, 0x1

    #@22
    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    #@25
    const/high16 v6, -0x1000000

    #@27
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    #@2a
    div-int/lit8 v6, v0, 0x2

    #@2c
    int-to-float v6, v6

    #@2d
    div-int/lit8 v7, v0, 0x2

    #@2f
    int-to-float v7, v7

    #@30
    div-int/lit8 v0, v0, 0x2

    #@32
    int-to-float v0, v0

    #@33
    invoke-virtual {v4, v6, v7, v0, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@36
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    #@38
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@3a
    invoke-direct {v0, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    #@3d
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    #@40
    int-to-float v0, v1

    #@41
    int-to-float v1, v2

    #@42
    invoke-virtual {v4, p0, v0, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@45
    move-object v0, v3

    #@46
    goto :goto_4

    #@47
    :cond_47
    div-int/lit8 v0, v0, 0x2

    #@49
    div-int/lit8 v3, v1, 0x2

    #@4b
    sub-int/2addr v0, v3

    #@4c
    move v8, v1

    #@4d
    move v1, v2

    #@4e
    move v2, v0

    #@4f
    move v0, v8

    #@50
    goto :goto_14
.end method

.method private static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6

    #@0
    const/4 v4, 0x0

    #@1
    if-nez p0, :cond_5

    #@3
    const/4 v0, 0x0

    #@4
    :goto_4
    return-object v0

    #@5
    :cond_5
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    #@7
    if-eqz v0, :cond_10

    #@9
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    #@b
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@e
    move-result-object v0

    #@f
    goto :goto_4

    #@10
    :cond_10
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@13
    move-result v0

    #@14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@17
    move-result v1

    #@18
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@1a
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@1d
    move-result-object v0

    #@1e
    new-instance v1, Landroid/graphics/Canvas;

    #@20
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@23
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    #@26
    move-result v2

    #@27
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    #@2a
    move-result v3

    #@2b
    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@2e
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@31
    goto :goto_4
.end method

.method public static a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 4

    #@0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    #@2
    invoke-static {p1}, Lcom/google/android/gms/internal/gu;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    #@5
    move-result-object v1

    #@6
    invoke-static {v1}, Lcom/google/android/gms/internal/gu;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    #@d
    return-object v0
.end method
