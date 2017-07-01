.class public Lcom/apportable/utils/DrawBitmap;
.super Ljava/lang/Object;


# static fields
.field private static sDrawBitmap:Landroid/graphics/Bitmap;

.field private static sDrawBitmapCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sMaxDrawBitmapCacheArea:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDrawBitmap:Landroid/graphics/Bitmap;

.field private mDrawBitmapPaint:Landroid/graphics/Paint;

.field private mDrawBitmapRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    sput-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmap:Landroid/graphics/Bitmap;

    #@3
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    sput-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmapCache:Ljava/util/List;

    #@a
    const/4 v0, 0x0

    #@b
    sput v0, Lcom/apportable/utils/DrawBitmap;->sMaxDrawBitmapCacheArea:I

    #@d
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmap:Landroid/graphics/Bitmap;

    #@6
    new-instance v0, Landroid/graphics/Rect;

    #@8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@b
    iput-object v0, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmapRect:Landroid/graphics/Rect;

    #@d
    new-instance v0, Landroid/graphics/Paint;

    #@f
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@12
    iput-object v0, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmapPaint:Landroid/graphics/Paint;

    #@14
    iput-object p1, p0, Lcom/apportable/utils/DrawBitmap;->mContext:Landroid/content/Context;

    #@16
    return-void
.end method

.method private static createDrawBitmap(II)Landroid/graphics/Bitmap;
    .registers 12

    #@0
    const/4 v6, 0x0

    #@1
    sget-object v7, Lcom/apportable/utils/DrawBitmap;->sDrawBitmapCache:Ljava/util/List;

    #@3
    monitor-enter v7

    #@4
    const v3, 0x7fffffff

    #@7
    const/4 v5, -0x1

    #@8
    const/4 v2, 0x0

    #@9
    move-object v1, v6

    #@a
    :goto_a
    :try_start_a
    sget-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmapCache:Ljava/util/List;

    #@c
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@f
    move-result v0

    #@10
    if-eq v2, v0, :cond_58

    #@12
    sget-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmapCache:Ljava/util/List;

    #@14
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/lang/ref/SoftReference;

    #@1a
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Landroid/graphics/Bitmap;

    #@20
    if-nez v0, :cond_35

    #@22
    sget-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmapCache:Ljava/util/List;

    #@24
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@27
    add-int/lit8 v0, v2, -0x1

    #@29
    move v2, v3

    #@2a
    move v3, v5

    #@2b
    move-object v9, v1

    #@2c
    move v1, v0

    #@2d
    move-object v0, v9

    #@2e
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    #@30
    move v5, v3

    #@31
    move v3, v2

    #@32
    move v2, v1

    #@33
    move-object v1, v0

    #@34
    goto :goto_a

    #@35
    :cond_35
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    #@38
    move-result v4

    #@39
    if-lt v4, p0, :cond_94

    #@3b
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    #@3e
    move-result v4

    #@3f
    if-ge v4, p1, :cond_46

    #@41
    move-object v0, v1

    #@42
    move v1, v2

    #@43
    move v2, v3

    #@44
    move v3, v5

    #@45
    goto :goto_2e

    #@46
    :cond_46
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    #@49
    move-result v4

    #@4a
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    #@4d
    move-result v8

    #@4e
    mul-int/2addr v4, v8

    #@4f
    mul-int v8, p0, p1

    #@51
    sub-int/2addr v4, v8

    #@52
    if-ge v4, v3, :cond_94

    #@54
    move v1, v2

    #@55
    move v3, v2

    #@56
    move v2, v4

    #@57
    goto :goto_2e

    #@58
    :cond_58
    if-eqz v1, :cond_92

    #@5a
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    #@5d
    move-result v0

    #@5e
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    #@61
    move-result v2

    #@62
    mul-int/2addr v0, v2

    #@63
    int-to-float v2, v3

    #@64
    int-to-float v4, v0

    #@65
    const/high16 v8, 0x3e800000    # 0.25f

    #@67
    mul-float/2addr v4, v8

    #@68
    cmpl-float v2, v2, v4

    #@6a
    if-lez v2, :cond_92

    #@6c
    int-to-float v2, v3

    #@6d
    int-to-float v0, v0

    #@6e
    const/high16 v3, 0x3f000000    # 0.5f

    #@70
    mul-float/2addr v0, v3

    #@71
    cmpg-float v0, v2, v0

    #@73
    if-gez v0, :cond_7d

    #@75
    sget-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmapCache:Ljava/util/List;

    #@77
    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@7a
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    #@7d
    :cond_7d
    move-object v0, v6

    #@7e
    :goto_7e
    if-eqz v0, :cond_87

    #@80
    sget-object v1, Lcom/apportable/utils/DrawBitmap;->sDrawBitmapCache:Ljava/util/List;

    #@82
    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@85
    monitor-exit v7

    #@86
    :goto_86
    return-object v0

    #@87
    :cond_87
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@89
    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@8c
    move-result-object v0

    #@8d
    monitor-exit v7

    #@8e
    goto :goto_86

    #@8f
    :catchall_8f
    move-exception v0

    #@90
    monitor-exit v7
    :try_end_91
    .catchall {:try_start_a .. :try_end_91} :catchall_8f

    #@91
    throw v0

    #@92
    :cond_92
    move-object v0, v1

    #@93
    goto :goto_7e

    #@94
    :cond_94
    move-object v0, v1

    #@95
    move v1, v2

    #@96
    move v2, v3

    #@97
    move v3, v5

    #@98
    goto :goto_2e
.end method

.method private static recycleDrawBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    sget-object v3, Lcom/apportable/utils/DrawBitmap;->sDrawBitmapCache:Ljava/util/List;

    #@3
    monitor-enter v3

    #@4
    :try_start_4
    sget v0, Lcom/apportable/utils/DrawBitmap;->sMaxDrawBitmapCacheArea:I

    #@6
    if-nez v0, :cond_28

    #@8
    new-instance v2, Landroid/util/DisplayMetrics;

    #@a
    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    #@d
    const-string v0, "window"

    #@f
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/view/WindowManager;

    #@15
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    #@1c
    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    #@1e
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    #@20
    mul-int/2addr v0, v2

    #@21
    int-to-float v0, v0

    #@22
    const/high16 v2, 0x3fc00000    # 1.5f

    #@24
    mul-float/2addr v0, v2

    #@25
    float-to-int v0, v0

    #@26
    sput v0, Lcom/apportable/utils/DrawBitmap;->sMaxDrawBitmapCacheArea:I

    #@28
    :cond_28
    move v2, v1

    #@29
    :goto_29
    sget-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmapCache:Ljava/util/List;

    #@2b
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@2e
    move-result v0

    #@2f
    if-eq v1, v0, :cond_5c

    #@31
    sget-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmapCache:Ljava/util/List;

    #@33
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@36
    move-result-object v0

    #@37
    check-cast v0, Ljava/lang/ref/SoftReference;

    #@39
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    #@3c
    move-result-object v0

    #@3d
    check-cast v0, Landroid/graphics/Bitmap;

    #@3f
    if-nez v0, :cond_4e

    #@41
    sget-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmapCache:Ljava/util/List;

    #@43
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@46
    add-int/lit8 v0, v1, -0x1

    #@48
    move v1, v2

    #@49
    :goto_49
    add-int/lit8 v0, v0, 0x1

    #@4b
    move v2, v1

    #@4c
    move v1, v0

    #@4d
    goto :goto_29

    #@4e
    :cond_4e
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    #@51
    move-result v4

    #@52
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    #@55
    move-result v0

    #@56
    mul-int/2addr v0, v4

    #@57
    add-int/2addr v0, v2

    #@58
    move v5, v1

    #@59
    move v1, v0

    #@5a
    move v0, v5

    #@5b
    goto :goto_49

    #@5c
    :cond_5c
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@5f
    move-result v0

    #@60
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@63
    move-result v1

    #@64
    mul-int/2addr v0, v1

    #@65
    add-int/2addr v0, v2

    #@66
    sget v1, Lcom/apportable/utils/DrawBitmap;->sMaxDrawBitmapCacheArea:I

    #@68
    if-gt v0, v1, :cond_76

    #@6a
    sget-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmapCache:Ljava/util/List;

    #@6c
    new-instance v1, Ljava/lang/ref/SoftReference;

    #@6e
    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@71
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@74
    :goto_74
    monitor-exit v3

    #@75
    return-void

    #@76
    :cond_76
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    #@79
    goto :goto_74

    #@7a
    :catchall_7a
    move-exception v0

    #@7b
    monitor-exit v3
    :try_end_7c
    .catchall {:try_start_4 .. :try_end_7c} :catchall_7a

    #@7c
    throw v0
.end method

.method public static usingSharedDrawBitmap()Z
    .registers 2

    #@0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0xb

    #@4
    if-ge v0, v1, :cond_8

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


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    #@0
    invoke-static {}, Lcom/apportable/utils/DrawBitmap;->usingSharedDrawBitmap()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_14

    #@6
    sget-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmap:Landroid/graphics/Bitmap;

    #@8
    :goto_8
    if-eqz v0, :cond_13

    #@a
    iget-object v1, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmapRect:Landroid/graphics/Rect;

    #@c
    iget-object v2, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmapRect:Landroid/graphics/Rect;

    #@e
    iget-object v3, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmapPaint:Landroid/graphics/Paint;

    #@10
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    #@13
    :cond_13
    return-void

    #@14
    :cond_14
    iget-object v0, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmap:Landroid/graphics/Bitmap;

    #@16
    goto :goto_8
.end method

.method public get(II)Landroid/graphics/Bitmap;
    .registers 6

    #@0
    const/4 v2, 0x0

    #@1
    iget-object v0, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmapRect:Landroid/graphics/Rect;

    #@3
    iput p1, v0, Landroid/graphics/Rect;->right:I

    #@5
    iget-object v0, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmapRect:Landroid/graphics/Rect;

    #@7
    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    #@9
    invoke-static {}, Lcom/apportable/utils/DrawBitmap;->usingSharedDrawBitmap()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_4d

    #@f
    sget-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmap:Landroid/graphics/Bitmap;

    #@11
    if-eqz v0, :cond_3e

    #@13
    sget-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmap:Landroid/graphics/Bitmap;

    #@15
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    #@18
    move-result v0

    #@19
    if-lt v0, p1, :cond_23

    #@1b
    sget-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmap:Landroid/graphics/Bitmap;

    #@1d
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    #@20
    move-result v0

    #@21
    if-ge v0, p2, :cond_3e

    #@23
    :cond_23
    sget-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmap:Landroid/graphics/Bitmap;

    #@25
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    #@28
    move-result v0

    #@29
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    #@2c
    move-result p1

    #@2d
    sget-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmap:Landroid/graphics/Bitmap;

    #@2f
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    #@32
    move-result v0

    #@33
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    #@36
    move-result p2

    #@37
    sget-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmap:Landroid/graphics/Bitmap;

    #@39
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    #@3c
    sput-object v2, Lcom/apportable/utils/DrawBitmap;->sDrawBitmap:Landroid/graphics/Bitmap;

    #@3e
    :cond_3e
    sget-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmap:Landroid/graphics/Bitmap;

    #@40
    if-nez v0, :cond_4a

    #@42
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@44
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@47
    move-result-object v0

    #@48
    sput-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmap:Landroid/graphics/Bitmap;

    #@4a
    :cond_4a
    sget-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmap:Landroid/graphics/Bitmap;

    #@4c
    :goto_4c
    return-object v0

    #@4d
    :cond_4d
    iget-object v0, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmap:Landroid/graphics/Bitmap;

    #@4f
    if-eqz v0, :cond_6a

    #@51
    iget-object v0, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmap:Landroid/graphics/Bitmap;

    #@53
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    #@56
    move-result v0

    #@57
    if-lt v0, p1, :cond_61

    #@59
    iget-object v0, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmap:Landroid/graphics/Bitmap;

    #@5b
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    #@5e
    move-result v0

    #@5f
    if-ge v0, p2, :cond_6a

    #@61
    :cond_61
    iget-object v0, p0, Lcom/apportable/utils/DrawBitmap;->mContext:Landroid/content/Context;

    #@63
    iget-object v1, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmap:Landroid/graphics/Bitmap;

    #@65
    invoke-static {v0, v1}, Lcom/apportable/utils/DrawBitmap;->recycleDrawBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    #@68
    iput-object v2, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmap:Landroid/graphics/Bitmap;

    #@6a
    :cond_6a
    iget-object v0, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmap:Landroid/graphics/Bitmap;

    #@6c
    if-nez v0, :cond_74

    #@6e
    invoke-static {p1, p2}, Lcom/apportable/utils/DrawBitmap;->createDrawBitmap(II)Landroid/graphics/Bitmap;

    #@71
    move-result-object v0

    #@72
    iput-object v0, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmap:Landroid/graphics/Bitmap;

    #@74
    :cond_74
    iget-object v0, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmap:Landroid/graphics/Bitmap;

    #@76
    goto :goto_4c
.end method

.method public recycle()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmap:Landroid/graphics/Bitmap;

    #@2
    if-eqz v0, :cond_e

    #@4
    iget-object v0, p0, Lcom/apportable/utils/DrawBitmap;->mContext:Landroid/content/Context;

    #@6
    iget-object v1, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmap:Landroid/graphics/Bitmap;

    #@8
    invoke-static {v0, v1}, Lcom/apportable/utils/DrawBitmap;->recycleDrawBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    #@b
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmap:Landroid/graphics/Bitmap;

    #@e
    :cond_e
    return-void
.end method
