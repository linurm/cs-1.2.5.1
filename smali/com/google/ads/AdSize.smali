.class public final Lcom/google/ads/AdSize;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final AUTO_HEIGHT:I = -0x2

.field public static final BANNER:Lcom/google/ads/AdSize;

.field public static final FULL_WIDTH:I = -0x1

.field public static final IAB_BANNER:Lcom/google/ads/AdSize;

.field public static final IAB_LEADERBOARD:Lcom/google/ads/AdSize;

.field public static final IAB_MRECT:Lcom/google/ads/AdSize;

.field public static final IAB_WIDE_SKYSCRAPER:Lcom/google/ads/AdSize;

.field public static final LANDSCAPE_AD_HEIGHT:I = 0x20

.field public static final LARGE_AD_HEIGHT:I = 0x5a

.field public static final PORTRAIT_AD_HEIGHT:I = 0x32

.field public static final SMART_BANNER:Lcom/google/ads/AdSize;


# instance fields
.field private final c:Lcom/google/android/gms/ads/AdSize;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    new-instance v0, Lcom/google/ads/AdSize;

    #@2
    const/4 v1, -0x1

    #@3
    const/4 v2, -0x2

    #@4
    const-string v3, "mb"

    #@6
    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/AdSize;-><init>(IILjava/lang/String;)V

    #@9
    sput-object v0, Lcom/google/ads/AdSize;->SMART_BANNER:Lcom/google/ads/AdSize;

    #@b
    new-instance v0, Lcom/google/ads/AdSize;

    #@d
    const/16 v1, 0x140

    #@f
    const/16 v2, 0x32

    #@11
    const-string v3, "mb"

    #@13
    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/AdSize;-><init>(IILjava/lang/String;)V

    #@16
    sput-object v0, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    #@18
    new-instance v0, Lcom/google/ads/AdSize;

    #@1a
    const/16 v1, 0x12c

    #@1c
    const/16 v2, 0xfa

    #@1e
    const-string v3, "as"

    #@20
    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/AdSize;-><init>(IILjava/lang/String;)V

    #@23
    sput-object v0, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;

    #@25
    new-instance v0, Lcom/google/ads/AdSize;

    #@27
    const/16 v1, 0x1d4

    #@29
    const/16 v2, 0x3c

    #@2b
    const-string v3, "as"

    #@2d
    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/AdSize;-><init>(IILjava/lang/String;)V

    #@30
    sput-object v0, Lcom/google/ads/AdSize;->IAB_BANNER:Lcom/google/ads/AdSize;

    #@32
    new-instance v0, Lcom/google/ads/AdSize;

    #@34
    const/16 v1, 0x2d8

    #@36
    const/16 v2, 0x5a

    #@38
    const-string v3, "as"

    #@3a
    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/AdSize;-><init>(IILjava/lang/String;)V

    #@3d
    sput-object v0, Lcom/google/ads/AdSize;->IAB_LEADERBOARD:Lcom/google/ads/AdSize;

    #@3f
    new-instance v0, Lcom/google/ads/AdSize;

    #@41
    const/16 v1, 0xa0

    #@43
    const/16 v2, 0x258

    #@45
    const-string v3, "as"

    #@47
    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/AdSize;-><init>(IILjava/lang/String;)V

    #@4a
    sput-object v0, Lcom/google/ads/AdSize;->IAB_WIDE_SKYSCRAPER:Lcom/google/ads/AdSize;

    #@4c
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    #@2
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    #@5
    invoke-direct {p0, v0}, Lcom/google/ads/AdSize;-><init>(Lcom/google/android/gms/ads/AdSize;)V

    #@8
    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .registers 5

    #@0
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    #@2
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    #@5
    invoke-direct {p0, v0}, Lcom/google/ads/AdSize;-><init>(Lcom/google/android/gms/ads/AdSize;)V

    #@8
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/AdSize;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/ads/AdSize;->c:Lcom/google/android/gms/ads/AdSize;

    #@5
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    #@0
    instance-of v0, p1, Lcom/google/ads/AdSize;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    check-cast p1, Lcom/google/ads/AdSize;

    #@8
    iget-object v0, p0, Lcom/google/ads/AdSize;->c:Lcom/google/android/gms/ads/AdSize;

    #@a
    iget-object v1, p1, Lcom/google/ads/AdSize;->c:Lcom/google/android/gms/ads/AdSize;

    #@c
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    goto :goto_5
.end method

.method public varargs findBestSize([Lcom/google/ads/AdSize;)Lcom/google/ads/AdSize;
    .registers 13

    #@0
    const/4 v0, 0x0

    #@1
    const/high16 v10, 0x3f800000    # 1.0f

    #@3
    if-nez p1, :cond_6

    #@5
    :cond_5
    return-object v0

    #@6
    :cond_6
    const/4 v3, 0x0

    #@7
    invoke-virtual {p0}, Lcom/google/ads/AdSize;->getWidth()I

    #@a
    move-result v5

    #@b
    invoke-virtual {p0}, Lcom/google/ads/AdSize;->getHeight()I

    #@e
    move-result v6

    #@f
    array-length v7, p1

    #@10
    const/4 v1, 0x0

    #@11
    move v4, v1

    #@12
    :goto_12
    if-ge v4, v7, :cond_5

    #@14
    aget-object v1, p1, v4

    #@16
    invoke-virtual {v1}, Lcom/google/ads/AdSize;->getWidth()I

    #@19
    move-result v2

    #@1a
    invoke-virtual {v1}, Lcom/google/ads/AdSize;->getHeight()I

    #@1d
    move-result v8

    #@1e
    invoke-virtual {p0, v2, v8}, Lcom/google/ads/AdSize;->isSizeAppropriate(II)Z

    #@21
    move-result v9

    #@22
    if-eqz v9, :cond_3b

    #@24
    mul-int/2addr v2, v8

    #@25
    int-to-float v2, v2

    #@26
    mul-int v8, v5, v6

    #@28
    int-to-float v8, v8

    #@29
    div-float/2addr v2, v8

    #@2a
    cmpl-float v8, v2, v10

    #@2c
    if-lez v8, :cond_30

    #@2e
    div-float v2, v10, v2

    #@30
    :cond_30
    cmpl-float v8, v2, v3

    #@32
    if-lez v8, :cond_3b

    #@34
    move-object v0, v1

    #@35
    move v1, v2

    #@36
    :goto_36
    add-int/lit8 v2, v4, 0x1

    #@38
    move v4, v2

    #@39
    move v3, v1

    #@3a
    goto :goto_12

    #@3b
    :cond_3b
    move v1, v3

    #@3c
    goto :goto_36
.end method

.method public getHeight()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/ads/AdSize;->c:Lcom/google/android/gms/ads/AdSize;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getHeightInPixels(Landroid/content/Context;)I
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/ads/AdSize;->c:Lcom/google/android/gms/ads/AdSize;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getWidth()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/ads/AdSize;->c:Lcom/google/android/gms/ads/AdSize;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getWidthInPixels(Landroid/content/Context;)I
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/ads/AdSize;->c:Lcom/google/android/gms/ads/AdSize;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/ads/AdSize;->c:Lcom/google/android/gms/ads/AdSize;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isAutoHeight()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/ads/AdSize;->c:Lcom/google/android/gms/ads/AdSize;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->isAutoHeight()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isCustomAdSize()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isFullWidth()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/ads/AdSize;->c:Lcom/google/android/gms/ads/AdSize;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->isFullWidth()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isSizeAppropriate(II)Z
    .registers 9

    #@0
    const/high16 v5, 0x3fa00000    # 1.25f

    #@2
    const v4, 0x3f4ccccd    # 0.8f

    #@5
    invoke-virtual {p0}, Lcom/google/ads/AdSize;->getWidth()I

    #@8
    move-result v0

    #@9
    invoke-virtual {p0}, Lcom/google/ads/AdSize;->getHeight()I

    #@c
    move-result v1

    #@d
    int-to-float v2, p1

    #@e
    int-to-float v3, v0

    #@f
    mul-float/2addr v3, v5

    #@10
    cmpg-float v2, v2, v3

    #@12
    if-gtz v2, :cond_2b

    #@14
    int-to-float v2, p1

    #@15
    int-to-float v0, v0

    #@16
    mul-float/2addr v0, v4

    #@17
    cmpl-float v0, v2, v0

    #@19
    if-ltz v0, :cond_2b

    #@1b
    int-to-float v0, p2

    #@1c
    int-to-float v2, v1

    #@1d
    mul-float/2addr v2, v5

    #@1e
    cmpg-float v0, v0, v2

    #@20
    if-gtz v0, :cond_2b

    #@22
    int-to-float v0, p2

    #@23
    int-to-float v1, v1

    #@24
    mul-float/2addr v1, v4

    #@25
    cmpl-float v0, v0, v1

    #@27
    if-ltz v0, :cond_2b

    #@29
    const/4 v0, 0x1

    #@2a
    :goto_2a
    return v0

    #@2b
    :cond_2b
    const/4 v0, 0x0

    #@2c
    goto :goto_2a
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/ads/AdSize;->c:Lcom/google/android/gms/ads/AdSize;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
