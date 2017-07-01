.class public Lcom/google/android/gms/wearable/PutDataMapRequest;
.super Ljava/lang/Object;


# instance fields
.field private final all:Lcom/google/android/gms/wearable/DataMap;

.field private final alm:Lcom/google/android/gms/wearable/PutDataRequest;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wearable/PutDataRequest;Lcom/google/android/gms/wearable/DataMap;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/wearable/PutDataMapRequest;->alm:Lcom/google/android/gms/wearable/PutDataRequest;

    #@5
    new-instance v0, Lcom/google/android/gms/wearable/DataMap;

    #@7
    invoke-direct {v0}, Lcom/google/android/gms/wearable/DataMap;-><init>()V

    #@a
    iput-object v0, p0, Lcom/google/android/gms/wearable/PutDataMapRequest;->all:Lcom/google/android/gms/wearable/DataMap;

    #@c
    if-eqz p2, :cond_13

    #@e
    iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataMapRequest;->all:Lcom/google/android/gms/wearable/DataMap;

    #@10
    invoke-virtual {v0, p2}, Lcom/google/android/gms/wearable/DataMap;->putAll(Lcom/google/android/gms/wearable/DataMap;)V

    #@13
    :cond_13
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/google/android/gms/wearable/PutDataMapRequest;
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/wearable/PutDataMapRequest;

    #@2
    invoke-static {p0}, Lcom/google/android/gms/wearable/PutDataRequest;->create(Ljava/lang/String;)Lcom/google/android/gms/wearable/PutDataRequest;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x0

    #@7
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wearable/PutDataMapRequest;-><init>(Lcom/google/android/gms/wearable/PutDataRequest;Lcom/google/android/gms/wearable/DataMap;)V

    #@a
    return-object v0
.end method

.method public static createFromDataMapItem(Lcom/google/android/gms/wearable/DataMapItem;)Lcom/google/android/gms/wearable/PutDataMapRequest;
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/wearable/PutDataMapRequest;

    #@2
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/DataMapItem;->getUri()Landroid/net/Uri;

    #@5
    move-result-object v1

    #@6
    invoke-static {v1}, Lcom/google/android/gms/wearable/PutDataRequest;->k(Landroid/net/Uri;)Lcom/google/android/gms/wearable/PutDataRequest;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/DataMapItem;->getDataMap()Lcom/google/android/gms/wearable/DataMap;

    #@d
    move-result-object v2

    #@e
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wearable/PutDataMapRequest;-><init>(Lcom/google/android/gms/wearable/PutDataRequest;Lcom/google/android/gms/wearable/DataMap;)V

    #@11
    return-object v0
.end method

.method public static createWithAutoAppendedId(Ljava/lang/String;)Lcom/google/android/gms/wearable/PutDataMapRequest;
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/wearable/PutDataMapRequest;

    #@2
    invoke-static {p0}, Lcom/google/android/gms/wearable/PutDataRequest;->createWithAutoAppendedId(Ljava/lang/String;)Lcom/google/android/gms/wearable/PutDataRequest;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x0

    #@7
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wearable/PutDataMapRequest;-><init>(Lcom/google/android/gms/wearable/PutDataRequest;Lcom/google/android/gms/wearable/DataMap;)V

    #@a
    return-object v0
.end method


# virtual methods
.method public asPutDataRequest()Lcom/google/android/gms/wearable/PutDataRequest;
    .registers 9

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataMapRequest;->all:Lcom/google/android/gms/wearable/DataMap;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/lv;->a(Lcom/google/android/gms/wearable/DataMap;)Lcom/google/android/gms/internal/lv$a;

    #@5
    move-result-object v2

    #@6
    iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataMapRequest;->alm:Lcom/google/android/gms/wearable/PutDataRequest;

    #@8
    iget-object v1, v2, Lcom/google/android/gms/internal/lv$a;->amp:Lcom/google/android/gms/internal/lw;

    #@a
    invoke-static {v1}, Lcom/google/android/gms/internal/me;->d(Lcom/google/android/gms/internal/me;)[B

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/PutDataRequest;->setData([B)Lcom/google/android/gms/wearable/PutDataRequest;

    #@11
    iget-object v0, v2, Lcom/google/android/gms/internal/lv$a;->amq:Ljava/util/List;

    #@13
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@16
    move-result v3

    #@17
    const/4 v0, 0x0

    #@18
    move v1, v0

    #@19
    :goto_19
    if-ge v1, v3, :cond_91

    #@1b
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    iget-object v0, v2, Lcom/google/android/gms/internal/lv$a;->amq:Ljava/util/List;

    #@21
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Lcom/google/android/gms/wearable/Asset;

    #@27
    if-nez v4, :cond_42

    #@29
    new-instance v1, Ljava/lang/IllegalStateException;

    #@2b
    new-instance v2, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string v3, "asset key cannot be null: "

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@41
    throw v1

    #@42
    :cond_42
    if-nez v0, :cond_5d

    #@44
    new-instance v0, Ljava/lang/IllegalStateException;

    #@46
    new-instance v1, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string v2, "asset cannot be null: key="

    #@4d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v0

    #@5d
    :cond_5d
    const-string v5, "DataMap"

    #@5f
    const/4 v6, 0x3

    #@60
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@63
    move-result v5

    #@64
    if-eqz v5, :cond_88

    #@66
    const-string v5, "DataMap"

    #@68
    new-instance v6, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string v7, "asPutDataRequest: adding asset: "

    #@6f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v6

    #@73
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v6

    #@77
    const-string v7, " "

    #@79
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v6

    #@7d
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v6

    #@81
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v6

    #@85
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@88
    :cond_88
    iget-object v5, p0, Lcom/google/android/gms/wearable/PutDataMapRequest;->alm:Lcom/google/android/gms/wearable/PutDataRequest;

    #@8a
    invoke-virtual {v5, v4, v0}, Lcom/google/android/gms/wearable/PutDataRequest;->putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)Lcom/google/android/gms/wearable/PutDataRequest;

    #@8d
    add-int/lit8 v0, v1, 0x1

    #@8f
    move v1, v0

    #@90
    goto :goto_19

    #@91
    :cond_91
    iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataMapRequest;->alm:Lcom/google/android/gms/wearable/PutDataRequest;

    #@93
    return-object v0
.end method

.method public getDataMap()Lcom/google/android/gms/wearable/DataMap;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataMapRequest;->all:Lcom/google/android/gms/wearable/DataMap;

    #@2
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataMapRequest;->alm:Lcom/google/android/gms/wearable/PutDataRequest;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/wearable/PutDataRequest;->getUri()Landroid/net/Uri;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
