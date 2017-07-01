.class public Lcom/apportable/utils/ImageUtils;
.super Ljava/lang/Object;


# static fields
.field private static TAG:Ljava/lang/String;

.field private static drawableCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    #@8
    move-result-object v0

    #@9
    sput-object v0, Lcom/apportable/utils/ImageUtils;->drawableCache:Ljava/util/Map;

    #@b
    const-string v0, "ImageUtils"

    #@d
    sput-object v0, Lcom/apportable/utils/ImageUtils;->TAG:Ljava/lang/String;

    #@f
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static BitmapFromBytes([BIIII)Landroid/graphics/Bitmap;
    .registers 7

    #@0
    if-eqz p3, :cond_4

    #@2
    if-nez p4, :cond_6

    #@4
    :cond_4
    const/4 v0, 0x0

    #@5
    :goto_5
    return-object v0

    #@6
    :cond_6
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@9
    move-result-object v1

    #@a
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@c
    invoke-static {p3, p4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    #@13
    goto :goto_5
.end method

.method public static Drawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    sget-object v0, Lcom/apportable/utils/ImageUtils;->drawableCache:Ljava/util/Map;

    #@2
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/ref/SoftReference;

    #@8
    if-eqz v0, :cond_1f

    #@a
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    #@10
    if-eqz v0, :cond_1f

    #@12
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Lcom/apportable/activity/VerdeActivity;->getResources()Landroid/content/res/Resources;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    #@1d
    move-result-object v0

    #@1e
    :goto_1e
    return-object v0

    #@1f
    :cond_1f
    const/4 v1, 0x0

    #@20
    :try_start_20
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Lcom/apportable/activity/VerdeActivity;->getAssets()Landroid/content/res/AssetManager;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_2b} :catch_47

    #@2b
    move-result-object v0

    #@2c
    move-object v1, v0

    #@2d
    :cond_2d
    :goto_2d
    :try_start_2d
    invoke-static {v1, p0}, Lcom/apportable/utils/ImageUtils;->createDrawableFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    #@30
    move-result-object v0

    #@31
    if-eqz v0, :cond_41

    #@33
    sget-object v2, Lcom/apportable/utils/ImageUtils;->drawableCache:Ljava/util/Map;

    #@35
    new-instance v3, Ljava/lang/ref/SoftReference;

    #@37
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@3a
    move-result-object v4

    #@3b
    invoke-direct {v3, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@3e
    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catchall {:try_start_2d .. :try_end_41} :catchall_69

    #@41
    :cond_41
    :try_start_41
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    #@44
    goto :goto_1e

    #@45
    :catch_45
    move-exception v1

    #@46
    goto :goto_1e

    #@47
    :catch_47
    move-exception v0

    #@48
    :try_start_48
    new-instance v0, Ljava/io/FileInputStream;

    #@4a
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4d} :catch_4f

    #@4d
    move-object v1, v0

    #@4e
    goto :goto_2d

    #@4f
    :catch_4f
    move-exception v0

    #@50
    invoke-static {}, Lcom/apportable/ExpansionFileManager;->getManager()Lcom/apportable/ExpansionFileManager;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2}, Lcom/apportable/ExpansionFileManager;->hasExpansionFiles()Z

    #@57
    move-result v2

    #@58
    if-eqz v2, :cond_66

    #@5a
    invoke-static {}, Lcom/apportable/ExpansionFileManager;->getManager()Lcom/apportable/ExpansionFileManager;

    #@5d
    move-result-object v1

    #@5e
    invoke-virtual {v1, p0}, Lcom/apportable/ExpansionFileManager;->openAssetFile(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    #@61
    move-result-object v1

    #@62
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    #@65
    move-result-object v1

    #@66
    :cond_66
    if-nez v1, :cond_2d

    #@68
    throw v0

    #@69
    :catchall_69
    move-exception v0

    #@6a
    :try_start_6a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    #@6d
    :goto_6d
    throw v0

    #@6e
    :catch_6e
    move-exception v1

    #@6f
    goto :goto_6d
.end method

.method public static DrawableFromBytes([BIIII)Landroid/graphics/drawable/Drawable;
    .registers 10

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    :try_start_2
    array-length v1, p0

    #@3
    invoke-static {p0, v0, v1, p1, p2}, Lcom/apportable/utils/ImageUtils;->BitmapFromBytes([BIIII)Landroid/graphics/Bitmap;

    #@6
    move-result-object v0

    #@7
    if-nez v0, :cond_b

    #@9
    move-object v1, v2

    #@a
    :goto_a
    return-object v1

    #@b
    :cond_b
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    #@d
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v3}, Lcom/apportable/app/VerdeApplication;->getResources()Landroid/content/res/Resources;

    #@14
    move-result-object v3

    #@15
    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_18} :catch_47

    #@18
    const/4 v0, 0x0

    #@19
    const/4 v2, 0x0

    #@1a
    :try_start_1a
    invoke-virtual {v1, v0, v2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1d} :catch_1e

    #@1d
    goto :goto_a

    #@1e
    :catch_1e
    move-exception v0

    #@1f
    :goto_1f
    const-string v2, "DEBUG_LOG"

    #@21
    new-instance v3, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string v4, "got "

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    array-length v4, p0

    #@2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    const-string v4, " but expected "

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    mul-int v4, p1, p2

    #@39
    mul-int/lit8 v4, v4, 0x4

    #@3b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@46
    goto :goto_a

    #@47
    :catch_47
    move-exception v0

    #@48
    move-object v1, v2

    #@49
    goto :goto_1f
.end method

.method public static DrawableWithInferredStatesFromBytes([BIIII)Landroid/graphics/drawable/Drawable;
    .registers 6

    #@0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/apportable/utils/ImageUtils;->DrawableFromBytes([BIIII)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/apportable/utils/ImageUtils;->createDrawableWithInferredStates(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static HighlightedDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 7

    #@0
    const/4 v5, 0x0

    #@1
    if-nez p0, :cond_5

    #@3
    const/4 v0, 0x0

    #@4
    :goto_4
    return-object v0

    #@5
    :cond_5
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    #@7
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    #@e
    move-result v1

    #@f
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    #@12
    move-result v2

    #@13
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@15
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@18
    move-result-object v1

    #@19
    new-instance v2, Landroid/graphics/Canvas;

    #@1b
    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@1e
    new-instance v3, Landroid/graphics/Paint;

    #@20
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    #@23
    const v4, -0x55000001

    #@26
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    #@29
    invoke-virtual {v2, v0, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@2c
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    #@2e
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Lcom/apportable/app/VerdeApplication;->getResources()Landroid/content/res/Resources;

    #@35
    move-result-object v2

    #@36
    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    #@39
    goto :goto_4
.end method

.method public static copy(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    #@0
    if-eqz p0, :cond_14

    #@2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_14

    #@8
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Lcom/apportable/app/VerdeApplication;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object p0

    #@14
    :cond_14
    return-object p0
.end method

.method public static createDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .registers 3

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    return-object v0

    #@4
    :cond_4
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    #@6
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Lcom/apportable/app/VerdeApplication;->getResources()Landroid/content/res/Resources;

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    #@11
    goto :goto_3
.end method

.method public static createDrawableFromPixels([IIIII)Landroid/graphics/drawable/Drawable;
    .registers 6

    #@0
    new-instance v0, Lcom/apportable/utils/PixelsDrawable;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/utils/PixelsDrawable;-><init>([III)V

    #@5
    return-object v0
.end method

.method private static createDrawableFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v9, 0x2

    #@1
    const/4 v8, 0x0

    #@2
    const/4 v7, 0x1

    #@3
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    #@5
    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@8
    iput v7, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #@a
    :goto_a
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_16

    #@10
    const v0, 0x7fffffff

    #@13
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    #@16
    :cond_16
    :try_start_16
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Lcom/apportable/activity/VerdeActivity;->getResources()Landroid/content/res/Resources;

    #@1d
    move-result-object v0

    #@1e
    const/4 v2, 0x0

    #@1f
    invoke-static {v0, v2, p0, p1, v1}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    #@22
    move-result-object v0

    #@23
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #@25
    if-eq v2, v7, :cond_41

    #@27
    sget-object v2, Lcom/apportable/utils/ImageUtils;->TAG:Ljava/lang/String;

    #@29
    const-string v3, "Image %s was loaded downscaled by a factor of %d."

    #@2b
    const/4 v4, 0x2

    #@2c
    new-array v4, v4, [Ljava/lang/Object;

    #@2e
    const/4 v5, 0x0

    #@2f
    aput-object p1, v4, v5

    #@31
    const/4 v5, 0x1

    #@32
    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #@34
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@37
    move-result-object v6

    #@38
    aput-object v6, v4, v5

    #@3a
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16 .. :try_end_41} :catch_42

    #@41
    :cond_41
    return-object v0

    #@42
    :catch_42
    move-exception v0

    #@43
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    #@46
    move-result v2

    #@47
    if-nez v2, :cond_4a

    #@49
    throw v0

    #@4a
    :cond_4a
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #@4c
    const/4 v3, 0x4

    #@4d
    if-ne v2, v3, :cond_67

    #@4f
    sget-object v2, Lcom/apportable/utils/ImageUtils;->TAG:Ljava/lang/String;

    #@51
    const-string v3, "Gave up loading downscaled versions of %s at factor of %d."

    #@53
    new-array v4, v9, [Ljava/lang/Object;

    #@55
    aput-object p1, v4, v8

    #@57
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #@59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5c
    move-result-object v1

    #@5d
    aput-object v1, v4, v7

    #@5f
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    throw v0

    #@67
    :cond_67
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    #@6a
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #@6c
    add-int/lit8 v0, v0, 0x1

    #@6e
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #@70
    goto :goto_a
.end method

.method public static createDrawableWithInferredStates(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 6

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    return-object v0

    #@4
    :cond_4
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    #@6
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    #@9
    invoke-static {p0}, Lcom/apportable/utils/ImageUtils;->HighlightedDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@c
    move-result-object v1

    #@d
    const/4 v2, 0x1

    #@e
    new-array v2, v2, [I

    #@10
    const/4 v3, 0x0

    #@11
    const v4, 0x10100a7

    #@14
    aput v4, v2, v3

    #@16
    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    #@19
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    #@1b
    invoke-virtual {v0, v1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    #@1e
    goto :goto_3
.end method
