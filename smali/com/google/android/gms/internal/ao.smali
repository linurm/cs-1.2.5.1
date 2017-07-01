.class public final Lcom/google/android/gms/internal/ao;
.super Ljava/lang/Object;


# instance fields
.field private final mi:[Lcom/google/android/gms/ads/AdSize;

.field private final mj:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@8
    move-result-object v0

    #@9
    sget-object v3, Lcom/google/android/gms/R$styleable;->AdsAttrs:[I

    #@b
    invoke-virtual {v0, p2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@16
    move-result-object v5

    #@17
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1a
    move-result v0

    #@1b
    if-nez v0, :cond_46

    #@1d
    move v0, v1

    #@1e
    :goto_1e
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@21
    move-result v6

    #@22
    if-nez v6, :cond_25

    #@24
    move v2, v1

    #@25
    :cond_25
    if-eqz v0, :cond_48

    #@27
    if-nez v2, :cond_48

    #@29
    invoke-static {v4}, Lcom/google/android/gms/internal/ao;->f(Ljava/lang/String;)[Lcom/google/android/gms/ads/AdSize;

    #@2c
    move-result-object v0

    #@2d
    iput-object v0, p0, Lcom/google/android/gms/internal/ao;->mi:[Lcom/google/android/gms/ads/AdSize;

    #@2f
    :goto_2f
    const/4 v0, 0x2

    #@30
    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    iput-object v0, p0, Lcom/google/android/gms/internal/ao;->mj:Ljava/lang/String;

    #@36
    iget-object v0, p0, Lcom/google/android/gms/internal/ao;->mj:Ljava/lang/String;

    #@38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3b
    move-result v0

    #@3c
    if-eqz v0, :cond_67

    #@3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@40
    const-string v1, "Required XML attribute \"adUnitId\" was missing."

    #@42
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@45
    throw v0

    #@46
    :cond_46
    move v0, v2

    #@47
    goto :goto_1e

    #@48
    :cond_48
    if-nez v0, :cond_53

    #@4a
    if-eqz v2, :cond_53

    #@4c
    invoke-static {v5}, Lcom/google/android/gms/internal/ao;->f(Ljava/lang/String;)[Lcom/google/android/gms/ads/AdSize;

    #@4f
    move-result-object v0

    #@50
    iput-object v0, p0, Lcom/google/android/gms/internal/ao;->mi:[Lcom/google/android/gms/ads/AdSize;

    #@52
    goto :goto_2f

    #@53
    :cond_53
    if-eqz v0, :cond_5f

    #@55
    if-eqz v2, :cond_5f

    #@57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@59
    const-string v1, "Either XML attribute \"adSize\" or XML attribute \"supportedAdSizes\" should be specified, but not both."

    #@5b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v0

    #@5f
    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@61
    const-string v1, "Required XML attribute \"adSize\" was missing."

    #@63
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@66
    throw v0

    #@67
    :cond_67
    return-void
.end method

.method private static f(Ljava/lang/String;)[Lcom/google/android/gms/ads/AdSize;
    .registers 11

    #@0
    const/4 v9, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const-string v0, "\\s*,\\s*"

    #@4
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@7
    move-result-object v4

    #@8
    array-length v0, v4

    #@9
    new-array v5, v0, [Lcom/google/android/gms/ads/AdSize;

    #@b
    move v0, v1

    #@c
    :goto_c
    array-length v2, v4

    #@d
    if-ge v0, v2, :cond_f6

    #@f
    aget-object v2, v4, v0

    #@11
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@14
    move-result-object v6

    #@15
    const-string v2, "^(\\d+|FULL_WIDTH)\\s*[xX]\\s*(\\d+|AUTO_HEIGHT)$"

    #@17
    invoke-virtual {v6, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_81

    #@1d
    const-string v2, "[xX]"

    #@1f
    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@22
    move-result-object v7

    #@23
    aget-object v2, v7, v1

    #@25
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    aput-object v2, v7, v1

    #@2b
    aget-object v2, v7, v9

    #@2d
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    aput-object v2, v7, v9

    #@33
    :try_start_33
    const-string v2, "FULL_WIDTH"

    #@35
    const/4 v3, 0x0

    #@36
    aget-object v3, v7, v3

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v2

    #@3c
    if-eqz v2, :cond_56

    #@3e
    const/4 v2, -0x1

    #@3f
    move v3, v2

    #@40
    :goto_40
    const-string v2, "AUTO_HEIGHT"

    #@42
    const/4 v8, 0x1

    #@43
    aget-object v8, v7, v8

    #@45
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_48
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_48} :catch_67

    #@48
    move-result v2

    #@49
    if-eqz v2, :cond_5f

    #@4b
    const/4 v2, -0x2

    #@4c
    :goto_4c
    new-instance v6, Lcom/google/android/gms/ads/AdSize;

    #@4e
    invoke-direct {v6, v3, v2}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    #@51
    aput-object v6, v5, v0

    #@53
    :goto_53
    add-int/lit8 v0, v0, 0x1

    #@55
    goto :goto_c

    #@56
    :cond_56
    const/4 v2, 0x0

    #@57
    :try_start_57
    aget-object v2, v7, v2

    #@59
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@5c
    move-result v2

    #@5d
    move v3, v2

    #@5e
    goto :goto_40

    #@5f
    :cond_5f
    const/4 v2, 0x1

    #@60
    aget-object v2, v7, v2

    #@62
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/NumberFormatException; {:try_start_57 .. :try_end_65} :catch_67

    #@65
    move-result v2

    #@66
    goto :goto_4c

    #@67
    :catch_67
    move-exception v0

    #@68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6a
    new-instance v1, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string v2, "Could not parse XML attribute \"adSize\": "

    #@71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v1

    #@79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v1

    #@7d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@80
    throw v0

    #@81
    :cond_81
    const-string v2, "BANNER"

    #@83
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@86
    move-result v2

    #@87
    if-eqz v2, :cond_8e

    #@89
    sget-object v2, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    #@8b
    aput-object v2, v5, v0

    #@8d
    goto :goto_53

    #@8e
    :cond_8e
    const-string v2, "LARGE_BANNER"

    #@90
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@93
    move-result v2

    #@94
    if-eqz v2, :cond_9b

    #@96
    sget-object v2, Lcom/google/android/gms/ads/AdSize;->LARGE_BANNER:Lcom/google/android/gms/ads/AdSize;

    #@98
    aput-object v2, v5, v0

    #@9a
    goto :goto_53

    #@9b
    :cond_9b
    const-string v2, "FULL_BANNER"

    #@9d
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a0
    move-result v2

    #@a1
    if-eqz v2, :cond_a8

    #@a3
    sget-object v2, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    #@a5
    aput-object v2, v5, v0

    #@a7
    goto :goto_53

    #@a8
    :cond_a8
    const-string v2, "LEADERBOARD"

    #@aa
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ad
    move-result v2

    #@ae
    if-eqz v2, :cond_b5

    #@b0
    sget-object v2, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    #@b2
    aput-object v2, v5, v0

    #@b4
    goto :goto_53

    #@b5
    :cond_b5
    const-string v2, "MEDIUM_RECTANGLE"

    #@b7
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ba
    move-result v2

    #@bb
    if-eqz v2, :cond_c2

    #@bd
    sget-object v2, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    #@bf
    aput-object v2, v5, v0

    #@c1
    goto :goto_53

    #@c2
    :cond_c2
    const-string v2, "SMART_BANNER"

    #@c4
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c7
    move-result v2

    #@c8
    if-eqz v2, :cond_cf

    #@ca
    sget-object v2, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    #@cc
    aput-object v2, v5, v0

    #@ce
    goto :goto_53

    #@cf
    :cond_cf
    const-string v2, "WIDE_SKYSCRAPER"

    #@d1
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d4
    move-result v2

    #@d5
    if-eqz v2, :cond_dd

    #@d7
    sget-object v2, Lcom/google/android/gms/ads/AdSize;->WIDE_SKYSCRAPER:Lcom/google/android/gms/ads/AdSize;

    #@d9
    aput-object v2, v5, v0

    #@db
    goto/16 :goto_53

    #@dd
    :cond_dd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@df
    new-instance v1, Ljava/lang/StringBuilder;

    #@e1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e4
    const-string v2, "Could not parse XML attribute \"adSize\": "

    #@e6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v1

    #@ea
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v1

    #@ee
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f1
    move-result-object v1

    #@f2
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f5
    throw v0

    #@f6
    :cond_f6
    array-length v0, v5

    #@f7
    if-nez v0, :cond_112

    #@f9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@fb
    new-instance v1, Ljava/lang/StringBuilder;

    #@fd
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@100
    const-string v2, "Could not parse XML attribute \"adSize\": "

    #@102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v1

    #@106
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v1

    #@10a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10d
    move-result-object v1

    #@10e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@111
    throw v0

    #@112
    :cond_112
    return-object v5
.end method


# virtual methods
.method public f(Z)[Lcom/google/android/gms/ads/AdSize;
    .registers 4

    #@0
    if-nez p1, :cond_10

    #@2
    iget-object v0, p0, Lcom/google/android/gms/internal/ao;->mi:[Lcom/google/android/gms/ads/AdSize;

    #@4
    array-length v0, v0

    #@5
    const/4 v1, 0x1

    #@6
    if-eq v0, v1, :cond_10

    #@8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string v1, "The adSizes XML attribute is only allowed on PublisherAdViews."

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ao;->mi:[Lcom/google/android/gms/ads/AdSize;

    #@12
    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ao;->mj:Ljava/lang/String;

    #@2
    return-object v0
.end method
