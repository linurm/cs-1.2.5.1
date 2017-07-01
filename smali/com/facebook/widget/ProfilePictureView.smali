.class public Lcom/facebook/widget/ProfilePictureView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/ProfilePictureView$OnErrorListener;
    }
.end annotation


# static fields
.field private static final BITMAP_HEIGHT_KEY:Ljava/lang/String; = "ProfilePictureView_height"

.field private static final BITMAP_KEY:Ljava/lang/String; = "ProfilePictureView_bitmap"

.field private static final BITMAP_WIDTH_KEY:Ljava/lang/String; = "ProfilePictureView_width"

.field public static final CUSTOM:I = -0x1

.field private static final IS_CROPPED_DEFAULT_VALUE:Z = true

.field private static final IS_CROPPED_KEY:Ljava/lang/String; = "ProfilePictureView_isCropped"

.field public static final LARGE:I = -0x4

.field private static final MIN_SIZE:I = 0x1

.field public static final NORMAL:I = -0x3

.field private static final PENDING_REFRESH_KEY:Ljava/lang/String; = "ProfilePictureView_refresh"

.field private static final PRESET_SIZE_KEY:Ljava/lang/String; = "ProfilePictureView_presetSize"

.field private static final PROFILE_ID_KEY:Ljava/lang/String; = "ProfilePictureView_profileId"

.field public static final SMALL:I = -0x2

.field private static final SUPER_STATE_KEY:Ljava/lang/String; = "ProfilePictureView_superState"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private customizedDefaultProfilePicture:Landroid/graphics/Bitmap;

.field private image:Landroid/widget/ImageView;

.field private imageContents:Landroid/graphics/Bitmap;

.field private isCropped:Z

.field private lastRequest:Lcom/facebook/internal/ImageRequest;

.field private onErrorListener:Lcom/facebook/widget/ProfilePictureView$OnErrorListener;

.field private presetSizeType:I

.field private profileId:Ljava/lang/String;

.field private queryHeight:I

.field private queryWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-class v0, Lcom/facebook/widget/ProfilePictureView;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/facebook/widget/ProfilePictureView;->TAG:Ljava/lang/String;

    #@8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@4
    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->queryHeight:I

    #@6
    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->queryWidth:I

    #@8
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/facebook/widget/ProfilePictureView;->isCropped:Z

    #@b
    const/4 v0, -0x1

    #@c
    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->presetSizeType:I

    #@e
    const/4 v0, 0x0

    #@f
    iput-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->customizedDefaultProfilePicture:Landroid/graphics/Bitmap;

    #@11
    invoke-direct {p0, p1}, Lcom/facebook/widget/ProfilePictureView;->initialize(Landroid/content/Context;)V

    #@14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->queryHeight:I

    #@6
    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->queryWidth:I

    #@8
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/facebook/widget/ProfilePictureView;->isCropped:Z

    #@b
    const/4 v0, -0x1

    #@c
    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->presetSizeType:I

    #@e
    const/4 v0, 0x0

    #@f
    iput-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->customizedDefaultProfilePicture:Landroid/graphics/Bitmap;

    #@11
    invoke-direct {p0, p1}, Lcom/facebook/widget/ProfilePictureView;->initialize(Landroid/content/Context;)V

    #@14
    invoke-direct {p0, p2}, Lcom/facebook/widget/ProfilePictureView;->parseAttributes(Landroid/util/AttributeSet;)V

    #@17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->queryHeight:I

    #@6
    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->queryWidth:I

    #@8
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/facebook/widget/ProfilePictureView;->isCropped:Z

    #@b
    const/4 v0, -0x1

    #@c
    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->presetSizeType:I

    #@e
    const/4 v0, 0x0

    #@f
    iput-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->customizedDefaultProfilePicture:Landroid/graphics/Bitmap;

    #@11
    invoke-direct {p0, p1}, Lcom/facebook/widget/ProfilePictureView;->initialize(Landroid/content/Context;)V

    #@14
    invoke-direct {p0, p2}, Lcom/facebook/widget/ProfilePictureView;->parseAttributes(Landroid/util/AttributeSet;)V

    #@17
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/widget/ProfilePictureView;Lcom/facebook/internal/ImageResponse;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/facebook/widget/ProfilePictureView;->processResponse(Lcom/facebook/internal/ImageResponse;)V

    #@3
    return-void
.end method

.method private getPresetSizeInPixels(Z)I
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    const v1, 0x7f05000b

    #@4
    iget v2, p0, Lcom/facebook/widget/ProfilePictureView;->presetSizeType:I

    #@6
    packed-switch v2, :pswitch_data_1e

    #@9
    :cond_9
    :goto_9
    return v0

    #@a
    :pswitch_a
    const v0, 0x7f05000a

    #@d
    :goto_d
    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->getResources()Landroid/content/res/Resources;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@14
    move-result v0

    #@15
    goto :goto_9

    #@16
    :pswitch_16
    const v0, 0x7f05000c

    #@19
    goto :goto_d

    #@1a
    :pswitch_1a
    if-eqz p1, :cond_9

    #@1c
    :pswitch_1c
    move v0, v1

    #@1d
    goto :goto_d

    #@1e
    :pswitch_data_1e
    .packed-switch -0x4
        :pswitch_16
        :pswitch_1c
        :pswitch_a
        :pswitch_1a
    .end packed-switch
.end method

.method private initialize(Landroid/content/Context;)V
    .registers 4

    #@0
    const/4 v1, -0x1

    #@1
    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->removeAllViews()V

    #@4
    new-instance v0, Landroid/widget/ImageView;

    #@6
    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #@9
    iput-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    #@b
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    #@d
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@10
    iget-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    #@12
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@15
    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    #@17
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    #@19
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@1c
    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    #@1e
    invoke-virtual {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->addView(Landroid/view/View;)V

    #@21
    return-void
.end method

.method private parseAttributes(Landroid/util/AttributeSet;)V
    .registers 6

    #@0
    const/4 v3, 0x1

    #@1
    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->getContext()Landroid/content/Context;

    #@4
    move-result-object v0

    #@5
    sget-object v1, Lcom/facebook/android/R$styleable;->com_facebook_profile_picture_view:[I

    #@7
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@a
    move-result-object v0

    #@b
    const/4 v1, 0x0

    #@c
    const/4 v2, -0x1

    #@d
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@10
    move-result v1

    #@11
    invoke-virtual {p0, v1}, Lcom/facebook/widget/ProfilePictureView;->setPresetSize(I)V

    #@14
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@17
    move-result v1

    #@18
    iput-boolean v1, p0, Lcom/facebook/widget/ProfilePictureView;->isCropped:Z

    #@1a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1d
    return-void
.end method

.method private processResponse(Lcom/facebook/internal/ImageResponse;)V
    .registers 7

    #@0
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getRequest()Lcom/facebook/internal/ImageRequest;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    #@6
    if-ne v0, v1, :cond_38

    #@8
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    #@b
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getBitmap()Landroid/graphics/Bitmap;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getError()Ljava/lang/Exception;

    #@12
    move-result-object v1

    #@13
    if-eqz v1, :cond_46

    #@15
    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->onErrorListener:Lcom/facebook/widget/ProfilePictureView$OnErrorListener;

    #@17
    if-eqz v0, :cond_39

    #@19
    new-instance v2, Lcom/facebook/FacebookException;

    #@1b
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string v4, "Error in downloading profile picture for profileId: "

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->getProfileId()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-direct {v2, v3, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@35
    invoke-interface {v0, v2}, Lcom/facebook/widget/ProfilePictureView$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    #@38
    :cond_38
    :goto_38
    return-void

    #@39
    :cond_39
    sget-object v0, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    #@3b
    const/4 v2, 0x6

    #@3c
    sget-object v3, Lcom/facebook/widget/ProfilePictureView;->TAG:Ljava/lang/String;

    #@3e
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-static {v0, v2, v3, v1}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    #@45
    goto :goto_38

    #@46
    :cond_46
    if-eqz v0, :cond_38

    #@48
    invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    #@4b
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->isCachedRedirect()Z

    #@4e
    move-result v0

    #@4f
    if-eqz v0, :cond_38

    #@51
    const/4 v0, 0x0

    #@52
    invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->sendImageRequest(Z)V

    #@55
    goto :goto_38
.end method

.method private refreshImage(Z)V
    .registers 4

    #@0
    invoke-direct {p0}, Lcom/facebook/widget/ProfilePictureView;->updateImageQueryParameters()Z

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    #@6
    if-eqz v1, :cond_18

    #@8
    iget-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    #@a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_18

    #@10
    iget v1, p0, Lcom/facebook/widget/ProfilePictureView;->queryWidth:I

    #@12
    if-nez v1, :cond_1c

    #@14
    iget v1, p0, Lcom/facebook/widget/ProfilePictureView;->queryHeight:I

    #@16
    if-nez v1, :cond_1c

    #@18
    :cond_18
    invoke-direct {p0}, Lcom/facebook/widget/ProfilePictureView;->setBlankProfilePicture()V

    #@1b
    :cond_1b
    :goto_1b
    return-void

    #@1c
    :cond_1c
    if-nez v0, :cond_20

    #@1e
    if-eqz p1, :cond_1b

    #@20
    :cond_20
    const/4 v0, 0x1

    #@21
    invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->sendImageRequest(Z)V

    #@24
    goto :goto_1b
.end method

.method private sendImageRequest(Z)V
    .registers 7

    #@0
    :try_start_0
    new-instance v0, Lcom/facebook/internal/ImageRequest$Builder;

    #@2
    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    iget-object v2, p0, Lcom/facebook/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    #@8
    iget v3, p0, Lcom/facebook/widget/ProfilePictureView;->queryWidth:I

    #@a
    iget v4, p0, Lcom/facebook/widget/ProfilePictureView;->queryHeight:I

    #@c
    invoke-static {v2, v3, v4}, Lcom/facebook/internal/ImageRequest;->getProfilePictureUrl(Ljava/lang/String;II)Ljava/net/URI;

    #@f
    move-result-object v2

    #@10
    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/ImageRequest$Builder;-><init>(Landroid/content/Context;Ljava/net/URI;)V

    #@13
    invoke-virtual {v0, p1}, Lcom/facebook/internal/ImageRequest$Builder;->setAllowCachedRedirects(Z)Lcom/facebook/internal/ImageRequest$Builder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p0}, Lcom/facebook/internal/ImageRequest$Builder;->setCallerTag(Ljava/lang/Object;)Lcom/facebook/internal/ImageRequest$Builder;

    #@1a
    move-result-object v0

    #@1b
    new-instance v1, Lcom/facebook/widget/ProfilePictureView$1;

    #@1d
    invoke-direct {v1, p0}, Lcom/facebook/widget/ProfilePictureView$1;-><init>(Lcom/facebook/widget/ProfilePictureView;)V

    #@20
    invoke-virtual {v0, v1}, Lcom/facebook/internal/ImageRequest$Builder;->setCallback(Lcom/facebook/internal/ImageRequest$Callback;)Lcom/facebook/internal/ImageRequest$Builder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Lcom/facebook/internal/ImageRequest$Builder;->build()Lcom/facebook/internal/ImageRequest;

    #@27
    move-result-object v0

    #@28
    iget-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    #@2a
    if-eqz v1, :cond_31

    #@2c
    iget-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    #@2e
    invoke-static {v1}, Lcom/facebook/internal/ImageDownloader;->cancelRequest(Lcom/facebook/internal/ImageRequest;)Z

    #@31
    :cond_31
    iput-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    #@33
    invoke-static {v0}, Lcom/facebook/internal/ImageDownloader;->downloadAsync(Lcom/facebook/internal/ImageRequest;)V
    :try_end_36
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_36} :catch_37

    #@36
    :goto_36
    return-void

    #@37
    :catch_37
    move-exception v0

    #@38
    sget-object v1, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    #@3a
    const/4 v2, 0x6

    #@3b
    sget-object v3, Lcom/facebook/widget/ProfilePictureView;->TAG:Ljava/lang/String;

    #@3d
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    invoke-static {v1, v2, v3, v0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    #@44
    goto :goto_36
.end method

.method private setBlankProfilePicture()V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->customizedDefaultProfilePicture:Landroid/graphics/Bitmap;

    #@2
    if-nez v0, :cond_1d

    #@4
    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->isCropped()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_19

    #@a
    const v0, 0x7f02001c

    #@d
    :goto_d
    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->getResources()Landroid/content/res/Resources;

    #@10
    move-result-object v1

    #@11
    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    #@14
    move-result-object v0

    #@15
    invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    #@18
    :goto_18
    return-void

    #@19
    :cond_19
    const v0, 0x7f02001b

    #@1c
    goto :goto_d

    #@1d
    :cond_1d
    invoke-direct {p0}, Lcom/facebook/widget/ProfilePictureView;->updateImageQueryParameters()Z

    #@20
    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->customizedDefaultProfilePicture:Landroid/graphics/Bitmap;

    #@22
    iget v1, p0, Lcom/facebook/widget/ProfilePictureView;->queryWidth:I

    #@24
    iget v2, p0, Lcom/facebook/widget/ProfilePictureView;->queryHeight:I

    #@26
    const/4 v3, 0x0

    #@27
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    #@2a
    move-result-object v0

    #@2b
    invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    #@2e
    goto :goto_18
.end method

.method private setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    #@2
    if-eqz v0, :cond_d

    #@4
    if-eqz p1, :cond_d

    #@6
    iput-object p1, p0, Lcom/facebook/widget/ProfilePictureView;->imageContents:Landroid/graphics/Bitmap;

    #@8
    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    #@a
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    #@d
    :cond_d
    return-void
.end method

.method private updateImageQueryParameters()Z
    .registers 6

    #@0
    const/4 v3, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->getHeight()I

    #@5
    move-result v4

    #@6
    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->getWidth()I

    #@9
    move-result v2

    #@a
    if-lt v2, v3, :cond_e

    #@c
    if-ge v4, v3, :cond_f

    #@e
    :cond_e
    :goto_e
    return v0

    #@f
    :cond_f
    invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->getPresetSizeInPixels(Z)I

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_39

    #@15
    move v2, v1

    #@16
    :goto_16
    if-gt v1, v2, :cond_2f

    #@18
    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->isCropped()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_2d

    #@1e
    move v2, v1

    #@1f
    :goto_1f
    iget v4, p0, Lcom/facebook/widget/ProfilePictureView;->queryWidth:I

    #@21
    if-ne v1, v4, :cond_27

    #@23
    iget v4, p0, Lcom/facebook/widget/ProfilePictureView;->queryHeight:I

    #@25
    if-eq v2, v4, :cond_28

    #@27
    :cond_27
    move v0, v3

    #@28
    :cond_28
    iput v1, p0, Lcom/facebook/widget/ProfilePictureView;->queryWidth:I

    #@2a
    iput v2, p0, Lcom/facebook/widget/ProfilePictureView;->queryHeight:I

    #@2c
    goto :goto_e

    #@2d
    :cond_2d
    move v2, v0

    #@2e
    goto :goto_1f

    #@2f
    :cond_2f
    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->isCropped()Z

    #@32
    move-result v1

    #@33
    if-eqz v1, :cond_37

    #@35
    move v1, v2

    #@36
    goto :goto_1f

    #@37
    :cond_37
    move v1, v0

    #@38
    goto :goto_1f

    #@39
    :cond_39
    move v1, v2

    #@3a
    move v2, v4

    #@3b
    goto :goto_16
.end method


# virtual methods
.method public final getOnErrorListener()Lcom/facebook/widget/ProfilePictureView$OnErrorListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->onErrorListener:Lcom/facebook/widget/ProfilePictureView$OnErrorListener;

    #@2
    return-object v0
.end method

.method public final getPresetSize()I
    .registers 2

    #@0
    iget v0, p0, Lcom/facebook/widget/ProfilePictureView;->presetSizeType:I

    #@2
    return v0
.end method

.method public final getProfileId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final isCropped()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/widget/ProfilePictureView;->isCropped:Z

    #@2
    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    #@0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    #@3
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    #@6
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    #@0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    #@3
    const/4 v0, 0x0

    #@4
    invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->refreshImage(Z)V

    #@7
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11

    #@0
    const/4 v7, -0x2

    #@1
    const/high16 v6, 0x40000000    # 2.0f

    #@3
    const/4 v2, 0x1

    #@4
    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@7
    move-result-object v4

    #@8
    const/4 v1, 0x0

    #@9
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@c
    move-result v0

    #@d
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@10
    move-result v3

    #@11
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@14
    move-result v5

    #@15
    if-eq v5, v6, :cond_24

    #@17
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@19
    if-ne v5, v7, :cond_24

    #@1b
    invoke-direct {p0, v2}, Lcom/facebook/widget/ProfilePictureView;->getPresetSizeInPixels(Z)I

    #@1e
    move-result v0

    #@1f
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@22
    move-result p2

    #@23
    move v1, v2

    #@24
    :cond_24
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@27
    move-result v5

    #@28
    if-eq v5, v6, :cond_43

    #@2a
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@2c
    if-ne v4, v7, :cond_43

    #@2e
    invoke-direct {p0, v2}, Lcom/facebook/widget/ProfilePictureView;->getPresetSizeInPixels(Z)I

    #@31
    move-result v1

    #@32
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@35
    move-result p1

    #@36
    :goto_36
    if-eqz v2, :cond_3f

    #@38
    invoke-virtual {p0, v1, v0}, Lcom/facebook/widget/ProfilePictureView;->setMeasuredDimension(II)V

    #@3b
    invoke-virtual {p0, p1, p2}, Lcom/facebook/widget/ProfilePictureView;->measureChildren(II)V

    #@3e
    :goto_3e
    return-void

    #@3f
    :cond_3f
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    #@42
    goto :goto_3e

    #@43
    :cond_43
    move v2, v1

    #@44
    move v1, v3

    #@45
    goto :goto_36
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    #@0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    const-class v1, Landroid/os/Bundle;

    #@6
    if-eq v0, v1, :cond_c

    #@8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@b
    :cond_b
    :goto_b
    return-void

    #@c
    :cond_c
    check-cast p1, Landroid/os/Bundle;

    #@e
    const-string v0, "ProfilePictureView_superState"

    #@10
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@13
    move-result-object v0

    #@14
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@17
    const-string v0, "ProfilePictureView_profileId"

    #@19
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    #@1f
    const-string v0, "ProfilePictureView_presetSize"

    #@21
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@24
    move-result v0

    #@25
    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->presetSizeType:I

    #@27
    const-string v0, "ProfilePictureView_isCropped"

    #@29
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@2c
    move-result v0

    #@2d
    iput-boolean v0, p0, Lcom/facebook/widget/ProfilePictureView;->isCropped:Z

    #@2f
    const-string v0, "ProfilePictureView_width"

    #@31
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@34
    move-result v0

    #@35
    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->queryWidth:I

    #@37
    const-string v0, "ProfilePictureView_height"

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@3c
    move-result v0

    #@3d
    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->queryHeight:I

    #@3f
    const-string v0, "ProfilePictureView_bitmap"

    #@41
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@44
    move-result-object v0

    #@45
    check-cast v0, Landroid/graphics/Bitmap;

    #@47
    invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    #@4a
    const-string v0, "ProfilePictureView_refresh"

    #@4c
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@4f
    move-result v0

    #@50
    if-eqz v0, :cond_b

    #@52
    const/4 v0, 0x1

    #@53
    invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->refreshImage(Z)V

    #@56
    goto :goto_b
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    #@0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Landroid/os/Bundle;

    #@6
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@9
    const-string v2, "ProfilePictureView_superState"

    #@b
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@e
    const-string v0, "ProfilePictureView_profileId"

    #@10
    iget-object v2, p0, Lcom/facebook/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    #@12
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@15
    const-string v0, "ProfilePictureView_presetSize"

    #@17
    iget v2, p0, Lcom/facebook/widget/ProfilePictureView;->presetSizeType:I

    #@19
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@1c
    const-string v0, "ProfilePictureView_isCropped"

    #@1e
    iget-boolean v2, p0, Lcom/facebook/widget/ProfilePictureView;->isCropped:Z

    #@20
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@23
    const-string v0, "ProfilePictureView_bitmap"

    #@25
    iget-object v2, p0, Lcom/facebook/widget/ProfilePictureView;->imageContents:Landroid/graphics/Bitmap;

    #@27
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@2a
    const-string v0, "ProfilePictureView_width"

    #@2c
    iget v2, p0, Lcom/facebook/widget/ProfilePictureView;->queryWidth:I

    #@2e
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@31
    const-string v0, "ProfilePictureView_height"

    #@33
    iget v2, p0, Lcom/facebook/widget/ProfilePictureView;->queryHeight:I

    #@35
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@38
    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    #@3a
    if-eqz v0, :cond_43

    #@3c
    const/4 v0, 0x1

    #@3d
    :goto_3d
    const-string v2, "ProfilePictureView_refresh"

    #@3f
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@42
    return-object v1

    #@43
    :cond_43
    const/4 v0, 0x0

    #@44
    goto :goto_3d
.end method

.method public final setCropped(Z)V
    .registers 3

    #@0
    iput-boolean p1, p0, Lcom/facebook/widget/ProfilePictureView;->isCropped:Z

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->refreshImage(Z)V

    #@6
    return-void
.end method

.method public final setDefaultProfilePicture(Landroid/graphics/Bitmap;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/widget/ProfilePictureView;->customizedDefaultProfilePicture:Landroid/graphics/Bitmap;

    #@2
    return-void
.end method

.method public final setOnErrorListener(Lcom/facebook/widget/ProfilePictureView$OnErrorListener;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/widget/ProfilePictureView;->onErrorListener:Lcom/facebook/widget/ProfilePictureView$OnErrorListener;

    #@2
    return-void
.end method

.method public final setPresetSize(I)V
    .registers 4

    #@0
    packed-switch p1, :pswitch_data_12

    #@3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string v1, "Must use a predefined preset size"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    :pswitch_b
    iput p1, p0, Lcom/facebook/widget/ProfilePictureView;->presetSizeType:I

    #@d
    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->requestLayout()V

    #@10
    return-void

    #@11
    nop

    #@12
    :pswitch_data_12
    .packed-switch -0x4
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public final setProfileId(Ljava/lang/String;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    #@3
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_11

    #@9
    iget-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    #@b
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_15

    #@11
    :cond_11
    invoke-direct {p0}, Lcom/facebook/widget/ProfilePictureView;->setBlankProfilePicture()V

    #@14
    const/4 v0, 0x1

    #@15
    :cond_15
    iput-object p1, p0, Lcom/facebook/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    #@17
    invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->refreshImage(Z)V

    #@1a
    return-void
.end method
