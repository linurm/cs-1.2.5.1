.class public Lcom/google/android/gms/internal/k;
.super Ljava/lang/Object;


# instance fields
.field private kg:Ljava/lang/String;

.field private kh:Ljava/lang/String;

.field private ki:Ljava/lang/String;

.field private kj:[Ljava/lang/String;

.field private kk:Lcom/google/android/gms/internal/g;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/g;)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-string v0, "googleads.g.doubleclick.net"

    #@5
    iput-object v0, p0, Lcom/google/android/gms/internal/k;->kg:Ljava/lang/String;

    #@7
    const-string v0, "/pagead/ads"

    #@9
    iput-object v0, p0, Lcom/google/android/gms/internal/k;->kh:Ljava/lang/String;

    #@b
    const-string v0, "ad.doubleclick.net"

    #@d
    iput-object v0, p0, Lcom/google/android/gms/internal/k;->ki:Ljava/lang/String;

    #@f
    const/4 v0, 0x3

    #@10
    new-array v0, v0, [Ljava/lang/String;

    #@12
    const/4 v1, 0x0

    #@13
    const-string v2, ".doubleclick.net"

    #@15
    aput-object v2, v0, v1

    #@17
    const/4 v1, 0x1

    #@18
    const-string v2, ".googleadservices.com"

    #@1a
    aput-object v2, v0, v1

    #@1c
    const/4 v1, 0x2

    #@1d
    const-string v2, ".googlesyndication.com"

    #@1f
    aput-object v2, v0, v1

    #@21
    iput-object v0, p0, Lcom/google/android/gms/internal/k;->kj:[Ljava/lang/String;

    #@23
    iput-object p1, p0, Lcom/google/android/gms/internal/k;->kk:Lcom/google/android/gms/internal/g;

    #@25
    return-void
.end method

.method private a(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/l;
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/k;->a(Landroid/net/Uri;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_23

    #@6
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    const-string v2, "dc_ms="

    #@c
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_33

    #@12
    new-instance v0, Lcom/google/android/gms/internal/l;

    #@14
    const-string v1, "Parameter already exists: dc_ms"

    #@16
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/l;-><init>(Ljava/lang/String;)V

    #@19
    throw v0
    :try_end_1a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_1a} :catch_1a

    #@1a
    :catch_1a
    move-exception v0

    #@1b
    new-instance v0, Lcom/google/android/gms/internal/l;

    #@1d
    const-string v1, "Provided Uri is not in a valid state"

    #@1f
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/l;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    :cond_23
    :try_start_23
    const-string v0, "ms"

    #@25
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    if-eqz v0, :cond_33

    #@2b
    new-instance v0, Lcom/google/android/gms/internal/l;

    #@2d
    const-string v1, "Query parameter already exists: ms"

    #@2f
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/l;-><init>(Ljava/lang/String;)V

    #@32
    throw v0

    #@33
    :cond_33
    if-eqz p4, :cond_44

    #@35
    iget-object v0, p0, Lcom/google/android/gms/internal/k;->kk:Lcom/google/android/gms/internal/g;

    #@37
    invoke-interface {v0, p2, p3}, Lcom/google/android/gms/internal/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    :goto_3b
    if-eqz v1, :cond_4b

    #@3d
    const-string v1, "dc_ms"

    #@3f
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/k;->b(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@42
    move-result-object v0

    #@43
    :goto_43
    return-object v0

    #@44
    :cond_44
    iget-object v0, p0, Lcom/google/android/gms/internal/k;->kk:Lcom/google/android/gms/internal/g;

    #@46
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/g;->a(Landroid/content/Context;)Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    goto :goto_3b

    #@4b
    :cond_4b
    const-string v1, "ms"

    #@4d
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/k;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_50
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_23 .. :try_end_50} :catch_1a

    #@50
    move-result-object v0

    #@51
    goto :goto_43
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    const/4 v2, -0x1

    #@1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    const-string v0, "&adurl"

    #@7
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@a
    move-result v0

    #@b
    if-ne v0, v2, :cond_13

    #@d
    const-string v0, "?adurl"

    #@f
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@12
    move-result v0

    #@13
    :cond_13
    if-eq v0, v2, :cond_48

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    const/4 v3, 0x0

    #@18
    add-int/lit8 v4, v0, 0x1

    #@1a
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@21
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    const-string v3, "="

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    const-string v3, "&"

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    add-int/lit8 v0, v0, 0x1

    #@37
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@46
    move-result-object v0

    #@47
    :goto_47
    return-object v0

    #@48
    :cond_48
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v0, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@4f
    move-result-object v0

    #@50
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@53
    move-result-object v0

    #@54
    goto :goto_47
.end method

.method private b(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 10

    #@0
    const/4 v5, 0x0

    #@1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    const-string v1, ";adurl"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@a
    move-result v1

    #@b
    const/4 v2, -0x1

    #@c
    if-eq v1, v2, :cond_40

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    add-int/lit8 v3, v1, 0x1

    #@12
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@19
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    const-string v3, "="

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    const-string v3, ";"

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    add-int/lit8 v1, v1, 0x1

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@3e
    move-result-object v0

    #@3f
    :goto_3f
    return-object v0

    #@40
    :cond_40
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@47
    move-result v2

    #@48
    new-instance v3, Ljava/lang/StringBuilder;

    #@4a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@4d
    move-result v4

    #@4e
    add-int/2addr v4, v2

    #@4f
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@56
    const-string v4, ";"

    #@58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v3

    #@5c
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v3

    #@60
    const-string v4, "="

    #@62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v3

    #@6a
    const-string v4, ";"

    #@6c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v3

    #@70
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@73
    move-result v1

    #@74
    add-int/2addr v1, v2

    #@75
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@78
    move-result-object v0

    #@79
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v0

    #@7d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v0

    #@81
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@84
    move-result-object v0

    #@85
    goto :goto_3f
.end method


# virtual methods
.method public a(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/l;
        }
    .end annotation

    #@0
    :try_start_0
    const-string v0, "ai"

    #@2
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x1

    #@7
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/k;->a(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;
    :try_end_a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_a} :catch_c

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    :catch_c
    move-exception v0

    #@d
    new-instance v0, Lcom/google/android/gms/internal/l;

    #@f
    const-string v1, "Provided Uri is not in a valid state"

    #@11
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/l;-><init>(Ljava/lang/String;)V

    #@14
    throw v0
.end method

.method public a(Landroid/view/MotionEvent;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/k;->kk:Lcom/google/android/gms/internal/g;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/g;->a(Landroid/view/MotionEvent;)V

    #@5
    return-void
.end method

.method public a(Landroid/net/Uri;)Z
    .registers 4

    #@0
    if-nez p1, :cond_8

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/google/android/gms/internal/k;->ki:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_11} :catch_13

    #@11
    move-result v0

    #@12
    :goto_12
    return v0

    #@13
    :catch_13
    move-exception v0

    #@14
    const/4 v0, 0x0

    #@15
    goto :goto_12
.end method

.method public b(Landroid/net/Uri;)Z
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_9

    #@3
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v0

    #@9
    :cond_9
    :try_start_9
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    iget-object v3, p0, Lcom/google/android/gms/internal/k;->kj:[Ljava/lang/String;

    #@f
    array-length v4, v3

    #@10
    move v1, v0

    #@11
    :goto_11
    if-ge v1, v4, :cond_1c

    #@13
    aget-object v5, v3, v1

    #@15
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_18} :catch_20

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_1d

    #@1b
    const/4 v0, 0x1

    #@1c
    :cond_1c
    :goto_1c
    return v0

    #@1d
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_11

    #@20
    :catch_20
    move-exception v1

    #@21
    goto :goto_1c
.end method

.method public z()Lcom/google/android/gms/internal/g;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/k;->kk:Lcom/google/android/gms/internal/g;

    #@2
    return-object v0
.end method
