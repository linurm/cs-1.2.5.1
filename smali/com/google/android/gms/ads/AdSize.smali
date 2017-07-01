.class public final Lcom/google/android/gms/ads/AdSize;
.super Ljava/lang/Object;


# static fields
.field public static final AUTO_HEIGHT:I = -0x2

.field public static final BANNER:Lcom/google/android/gms/ads/AdSize;

.field public static final FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

.field public static final FULL_WIDTH:I = -0x1

.field public static final LARGE_BANNER:Lcom/google/android/gms/ads/AdSize;

.field public static final LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

.field public static final MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

.field public static final SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

.field public static final WIDE_SKYSCRAPER:Lcom/google/android/gms/ads/AdSize;


# instance fields
.field private final ku:I

.field private final kv:I

.field private final kw:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    #@0
    const/16 v4, 0x140

    #@2
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    #@4
    const/16 v1, 0x32

    #@6
    const-string v2, "320x50_mb"

    #@8
    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    #@b
    sput-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    #@d
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    #@f
    const/16 v1, 0x1d4

    #@11
    const/16 v2, 0x3c

    #@13
    const-string v3, "468x60_as"

    #@15
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    #@18
    sput-object v0, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    #@1a
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    #@1c
    const/16 v1, 0x64

    #@1e
    const-string v2, "320x100_as"

    #@20
    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    #@23
    sput-object v0, Lcom/google/android/gms/ads/AdSize;->LARGE_BANNER:Lcom/google/android/gms/ads/AdSize;

    #@25
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    #@27
    const/16 v1, 0x2d8

    #@29
    const/16 v2, 0x5a

    #@2b
    const-string v3, "728x90_as"

    #@2d
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    #@30
    sput-object v0, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    #@32
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    #@34
    const/16 v1, 0x12c

    #@36
    const/16 v2, 0xfa

    #@38
    const-string v3, "300x250_as"

    #@3a
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    #@3d
    sput-object v0, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    #@3f
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    #@41
    const/16 v1, 0xa0

    #@43
    const/16 v2, 0x258

    #@45
    const-string v3, "160x600_as"

    #@47
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    #@4a
    sput-object v0, Lcom/google/android/gms/ads/AdSize;->WIDE_SKYSCRAPER:Lcom/google/android/gms/ads/AdSize;

    #@4c
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    #@4e
    const/4 v1, -0x1

    #@4f
    const/4 v2, -0x2

    #@50
    const-string v3, "smart_banner"

    #@52
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    #@55
    sput-object v0, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    #@57
    return-void
.end method

.method public constructor <init>(II)V
    .registers 5

    #@0
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const/4 v0, -0x1

    #@6
    if-ne p1, v0, :cond_2b

    #@8
    const-string v0, "FULL"

    #@a
    :goto_a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    const-string v1, "x"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const/4 v0, -0x2

    #@15
    if-ne p2, v0, :cond_30

    #@17
    const-string v0, "AUTO"

    #@19
    :goto_19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    const-string v1, "_as"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    #@2a
    return-void

    #@2b
    :cond_2b
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    goto :goto_a

    #@30
    :cond_30
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    goto :goto_19
.end method

.method constructor <init>(IILjava/lang/String;)V
    .registers 7

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-gez p1, :cond_21

    #@5
    const/4 v0, -0x1

    #@6
    if-eq p1, v0, :cond_21

    #@8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string v2, "Invalid width for AdSize: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    :cond_21
    if-gez p2, :cond_3f

    #@23
    const/4 v0, -0x2

    #@24
    if-eq p2, v0, :cond_3f

    #@26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@28
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string v2, "Invalid height for AdSize: "

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v0

    #@3f
    :cond_3f
    iput p1, p0, Lcom/google/android/gms/ads/AdSize;->ku:I

    #@41
    iput p2, p0, Lcom/google/android/gms/ads/AdSize;->kv:I

    #@43
    iput-object p3, p0, Lcom/google/android/gms/ads/AdSize;->kw:Ljava/lang/String;

    #@45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    if-ne p1, p0, :cond_6

    #@4
    :cond_4
    move v0, v1

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    instance-of v2, p1, Lcom/google/android/gms/ads/AdSize;

    #@8
    if-eqz v2, :cond_5

    #@a
    check-cast p1, Lcom/google/android/gms/ads/AdSize;

    #@c
    iget v2, p0, Lcom/google/android/gms/ads/AdSize;->ku:I

    #@e
    iget v3, p1, Lcom/google/android/gms/ads/AdSize;->ku:I

    #@10
    if-ne v2, v3, :cond_5

    #@12
    iget v2, p0, Lcom/google/android/gms/ads/AdSize;->kv:I

    #@14
    iget v3, p1, Lcom/google/android/gms/ads/AdSize;->kv:I

    #@16
    if-ne v2, v3, :cond_5

    #@18
    iget-object v2, p0, Lcom/google/android/gms/ads/AdSize;->kw:Ljava/lang/String;

    #@1a
    iget-object v3, p1, Lcom/google/android/gms/ads/AdSize;->kw:Ljava/lang/String;

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v2

    #@20
    if-nez v2, :cond_4

    #@22
    goto :goto_5
.end method

.method public getHeight()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->kv:I

    #@2
    return v0
.end method

.method public getHeightInPixels(Landroid/content/Context;)I
    .registers 4

    #@0
    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->kv:I

    #@2
    const/4 v1, -0x2

    #@3
    if-ne v0, v1, :cond_12

    #@5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@c
    move-result-object v0

    #@d
    invoke-static {v0}, Lcom/google/android/gms/internal/al;->b(Landroid/util/DisplayMetrics;)I

    #@10
    move-result v0

    #@11
    :goto_11
    return v0

    #@12
    :cond_12
    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->kv:I

    #@14
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/et;->a(Landroid/content/Context;I)I

    #@17
    move-result v0

    #@18
    goto :goto_11
.end method

.method public getWidth()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->ku:I

    #@2
    return v0
.end method

.method public getWidthInPixels(Landroid/content/Context;)I
    .registers 4

    #@0
    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->ku:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_12

    #@5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@c
    move-result-object v0

    #@d
    invoke-static {v0}, Lcom/google/android/gms/internal/al;->a(Landroid/util/DisplayMetrics;)I

    #@10
    move-result v0

    #@11
    :goto_11
    return v0

    #@12
    :cond_12
    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->ku:I

    #@14
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/et;->a(Landroid/content/Context;I)I

    #@17
    move-result v0

    #@18
    goto :goto_11
.end method

.method public hashCode()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdSize;->kw:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isAutoHeight()Z
    .registers 3

    #@0
    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->kv:I

    #@2
    const/4 v1, -0x2

    #@3
    if-ne v0, v1, :cond_7

    #@5
    const/4 v0, 0x1

    #@6
    :goto_6
    return v0

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    goto :goto_6
.end method

.method public isFullWidth()Z
    .registers 3

    #@0
    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->ku:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_7

    #@5
    const/4 v0, 0x1

    #@6
    :goto_6
    return v0

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdSize;->kw:Ljava/lang/String;

    #@2
    return-object v0
.end method
