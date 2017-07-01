.class Landroid/support/v4/print/PrintHelperKitkat;
.super Ljava/lang/Object;


# static fields
.field public static final COLOR_MODE_COLOR:I = 0x2

.field public static final COLOR_MODE_MONOCHROME:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "PrintHelperKitkat"

.field private static final MAX_PRINT_SIZE:I = 0xdac

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x2

.field public static final SCALE_MODE_FILL:I = 0x2

.field public static final SCALE_MODE_FIT:I = 0x1


# instance fields
.field mColorMode:I

.field final mContext:Landroid/content/Context;

.field mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

.field private final mLock:Ljava/lang/Object;

.field mOrientation:I

.field mScaleMode:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    #@0
    const/4 v1, 0x2

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    #@7
    new-instance v0, Ljava/lang/Object;

    #@9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@c
    iput-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    #@e
    iput v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    #@10
    iput v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    #@12
    const/4 v0, 0x1

    #@13
    iput v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    #@15
    iput-object p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    #@17
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/print/PrintHelperKitkat;IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .registers 6

    #@0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/print/PrintHelperKitkat;->getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v4/print/PrintHelperKitkat;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    invoke-direct {p0, p1, p2}, Landroid/support/v4/print/PrintHelperKitkat;->loadConstrainedBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/print/PrintHelperKitkat;)Ljava/lang/Object;
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method private getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .registers 11

    #@0
    const/high16 v5, 0x40000000    # 2.0f

    #@2
    new-instance v1, Landroid/graphics/Matrix;

    #@4
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    #@7
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    #@a
    move-result v0

    #@b
    int-to-float v2, p1

    #@c
    div-float/2addr v0, v2

    #@d
    const/4 v2, 0x2

    #@e
    if-ne p4, v2, :cond_32

    #@10
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    #@13
    move-result v2

    #@14
    int-to-float v3, p2

    #@15
    div-float/2addr v2, v3

    #@16
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    #@19
    move-result v0

    #@1a
    :goto_1a
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    #@1d
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    #@20
    move-result v2

    #@21
    int-to-float v3, p1

    #@22
    mul-float/2addr v3, v0

    #@23
    sub-float/2addr v2, v3

    #@24
    div-float/2addr v2, v5

    #@25
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    #@28
    move-result v3

    #@29
    int-to-float v4, p2

    #@2a
    mul-float/2addr v0, v4

    #@2b
    sub-float v0, v3, v0

    #@2d
    div-float/2addr v0, v5

    #@2e
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@31
    return-object v1

    #@32
    :cond_32
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    #@35
    move-result v2

    #@36
    int-to-float v3, p2

    #@37
    div-float/2addr v2, v3

    #@38
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    #@3b
    move-result v0

    #@3c
    goto :goto_1a
.end method

.method private loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    if-eqz p1, :cond_7

    #@3
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    #@5
    if-nez v0, :cond_f

    #@7
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string v1, "bad argument to loadBitmap"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    :cond_f
    :try_start_f
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    #@11
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    #@18
    move-result-object v1

    #@19
    const/4 v0, 0x0

    #@1a
    invoke-static {v1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_2d

    #@1d
    move-result-object v0

    #@1e
    if-eqz v1, :cond_23

    #@20
    :try_start_20
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    #@23
    :cond_23
    :goto_23
    return-object v0

    #@24
    :catch_24
    move-exception v1

    #@25
    const-string v2, "PrintHelperKitkat"

    #@27
    const-string v3, "close fail "

    #@29
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2c
    goto :goto_23

    #@2d
    :catchall_2d
    move-exception v0

    #@2e
    if-eqz v1, :cond_33

    #@30
    :try_start_30
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    #@33
    :cond_33
    :goto_33
    throw v0

    #@34
    :catch_34
    move-exception v1

    #@35
    const-string v2, "PrintHelperKitkat"

    #@37
    const-string v3, "close fail "

    #@39
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3c
    goto :goto_33
.end method

.method private loadConstrainedBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    if-lez p2, :cond_a

    #@4
    if-eqz p1, :cond_a

    #@6
    iget-object v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    #@8
    if-nez v1, :cond_12

    #@a
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string v1, "bad argument to getScaledBitmap"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    :cond_12
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    #@14
    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@17
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #@19
    invoke-direct {p0, p1, v1}, Landroid/support/v4/print/PrintHelperKitkat;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@1c
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    #@1e
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    #@20
    if-lez v3, :cond_24

    #@22
    if-gtz v4, :cond_25

    #@24
    :cond_24
    :goto_24
    return-object v0

    #@25
    :cond_25
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    #@28
    move-result v1

    #@29
    :goto_29
    if-le v1, p2, :cond_30

    #@2b
    ushr-int/lit8 v1, v1, 0x1

    #@2d
    shl-int/lit8 v2, v2, 0x1

    #@2f
    goto :goto_29

    #@30
    :cond_30
    if-lez v2, :cond_24

    #@32
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@35
    move-result v1

    #@36
    div-int/2addr v1, v2

    #@37
    if-lez v1, :cond_24

    #@39
    iget-object v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    #@3b
    monitor-enter v1

    #@3c
    :try_start_3c
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    #@3e
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@41
    iput-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    #@43
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    #@45
    const/4 v3, 0x1

    #@46
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    #@48
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    #@4a
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #@4c
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    #@4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_3c .. :try_end_4f} :catchall_5e

    #@4f
    :try_start_4f
    invoke-direct {p0, p1, v0}, Landroid/support/v4/print/PrintHelperKitkat;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_61

    #@52
    move-result-object v0

    #@53
    iget-object v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    #@55
    monitor-enter v1

    #@56
    const/4 v2, 0x0

    #@57
    :try_start_57
    iput-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    #@59
    monitor-exit v1

    #@5a
    goto :goto_24

    #@5b
    :catchall_5b
    move-exception v0

    #@5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_5b

    #@5d
    throw v0

    #@5e
    :catchall_5e
    move-exception v0

    #@5f
    :try_start_5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    #@60
    throw v0

    #@61
    :catchall_61
    move-exception v0

    #@62
    iget-object v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    #@64
    monitor-enter v1

    #@65
    const/4 v2, 0x0

    #@66
    :try_start_66
    iput-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    #@68
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6a

    #@69
    throw v0

    #@6a
    :catchall_6a
    move-exception v0

    #@6b
    :try_start_6b
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    #@6c
    throw v0
.end method


# virtual methods
.method public getColorMode()I
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    #@2
    return v0
.end method

.method public getOrientation()I
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    #@2
    return v0
.end method

.method public getScaleMode()I
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    #@2
    return v0
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 8

    #@0
    if-nez p2, :cond_3

    #@2
    :goto_2
    return-void

    #@3
    :cond_3
    iget v2, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    #@5
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    #@7
    const-string v1, "print"

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/print/PrintManager;

    #@f
    sget-object v1, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    #@11
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    #@14
    move-result v3

    #@15
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    #@18
    move-result v4

    #@19
    if-le v3, v4, :cond_1d

    #@1b
    sget-object v1, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    #@1d
    :cond_1d
    new-instance v3, Landroid/print/PrintAttributes$Builder;

    #@1f
    invoke-direct {v3}, Landroid/print/PrintAttributes$Builder;-><init>()V

    #@22
    invoke-virtual {v3, v1}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    #@25
    move-result-object v1

    #@26
    iget v3, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    #@28
    invoke-virtual {v1, v3}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    #@2f
    move-result-object v1

    #@30
    new-instance v3, Landroid/support/v4/print/PrintHelperKitkat$1;

    #@32
    invoke-direct {v3, p0, p1, p2, v2}, Landroid/support/v4/print/PrintHelperKitkat$1;-><init>(Landroid/support/v4/print/PrintHelperKitkat;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    #@35
    invoke-virtual {v0, p1, v3, v1}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    #@38
    goto :goto_2
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    new-instance v1, Landroid/support/v4/print/PrintHelperKitkat$2;

    #@2
    iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    #@4
    invoke-direct {v1, p0, p1, p2, v0}, Landroid/support/v4/print/PrintHelperKitkat$2;-><init>(Landroid/support/v4/print/PrintHelperKitkat;Ljava/lang/String;Landroid/net/Uri;I)V

    #@7
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    #@9
    const-string v2, "print"

    #@b
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/print/PrintManager;

    #@11
    new-instance v2, Landroid/print/PrintAttributes$Builder;

    #@13
    invoke-direct {v2}, Landroid/print/PrintAttributes$Builder;-><init>()V

    #@16
    iget v3, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    #@18
    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    #@1b
    iget v3, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    #@1d
    const/4 v4, 0x1

    #@1e
    if-ne v3, v4, :cond_2d

    #@20
    sget-object v3, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    #@22
    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    #@25
    :cond_25
    :goto_25
    invoke-virtual {v2}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v0, p1, v1, v2}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    #@2c
    return-void

    #@2d
    :cond_2d
    iget v3, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    #@2f
    const/4 v4, 0x2

    #@30
    if-ne v3, v4, :cond_25

    #@32
    sget-object v3, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    #@34
    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    #@37
    goto :goto_25
.end method

.method public setColorMode(I)V
    .registers 2

    #@0
    iput p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    #@2
    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    #@0
    iput p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    #@2
    return-void
.end method

.method public setScaleMode(I)V
    .registers 2

    #@0
    iput p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    #@2
    return-void
.end method
