.class public Lcom/google/android/gms/wearable/DataMapItem;
.super Ljava/lang/Object;


# instance fields
.field private final all:Lcom/google/android/gms/wearable/DataMap;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wearable/DataItem;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-interface {p1}, Lcom/google/android/gms/wearable/DataItem;->getUri()Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/google/android/gms/wearable/DataMapItem;->mUri:Landroid/net/Uri;

    #@9
    invoke-interface {p1}, Lcom/google/android/gms/wearable/DataItem;->freeze()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/google/android/gms/wearable/DataItem;

    #@f
    invoke-direct {p0, v0}, Lcom/google/android/gms/wearable/DataMapItem;->a(Lcom/google/android/gms/wearable/DataItem;)Lcom/google/android/gms/wearable/DataMap;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/google/android/gms/wearable/DataMapItem;->all:Lcom/google/android/gms/wearable/DataMap;

    #@15
    return-void
.end method

.method private a(Lcom/google/android/gms/wearable/DataItem;)Lcom/google/android/gms/wearable/DataMap;
    .registers 7

    #@0
    invoke-interface {p1}, Lcom/google/android/gms/wearable/DataItem;->getData()[B

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_18

    #@6
    invoke-interface {p1}, Lcom/google/android/gms/wearable/DataItem;->getAssets()Ljava/util/Map;

    #@9
    move-result-object v0

    #@a
    invoke-interface {v0}, Ljava/util/Map;->size()I

    #@d
    move-result v0

    #@e
    if-lez v0, :cond_18

    #@10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string v1, "Cannot create DataMapItem from a DataItem  that wasn\'t made with DataMapItem."

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    :cond_18
    invoke-interface {p1}, Lcom/google/android/gms/wearable/DataItem;->getData()[B

    #@1b
    move-result-object v0

    #@1c
    if-nez v0, :cond_24

    #@1e
    new-instance v0, Lcom/google/android/gms/wearable/DataMap;

    #@20
    invoke-direct {v0}, Lcom/google/android/gms/wearable/DataMap;-><init>()V

    #@23
    :goto_23
    return-object v0

    #@24
    :cond_24
    :try_start_24
    new-instance v2, Ljava/util/ArrayList;

    #@26
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@29
    invoke-interface {p1}, Lcom/google/android/gms/wearable/DataItem;->getAssets()Ljava/util/Map;

    #@2c
    move-result-object v0

    #@2d
    invoke-interface {v0}, Ljava/util/Map;->size()I

    #@30
    move-result v3

    #@31
    const/4 v0, 0x0

    #@32
    move v1, v0

    #@33
    :goto_33
    if-ge v1, v3, :cond_80

    #@35
    invoke-interface {p1}, Lcom/google/android/gms/wearable/DataItem;->getAssets()Ljava/util/Map;

    #@38
    move-result-object v0

    #@39
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    move-result-object v0

    #@41
    check-cast v0, Lcom/google/android/gms/wearable/DataItemAsset;

    #@43
    if-nez v0, :cond_71

    #@45
    new-instance v0, Ljava/lang/IllegalStateException;

    #@47
    new-instance v2, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string v3, "Cannot find DataItemAsset referenced in data at "

    #@4e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    const-string v2, " for "

    #@58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@67
    throw v0
    :try_end_68
    .catch Lcom/google/android/gms/internal/md; {:try_start_24 .. :try_end_68} :catch_68

    #@68
    :catch_68
    move-exception v0

    #@69
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6b
    const-string v1, "Unable to parse. Not a DataItem."

    #@6d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@70
    throw v0

    #@71
    :cond_71
    :try_start_71
    invoke-interface {v0}, Lcom/google/android/gms/wearable/DataItemAsset;->getId()Ljava/lang/String;

    #@74
    move-result-object v0

    #@75
    invoke-static {v0}, Lcom/google/android/gms/wearable/Asset;->createFromRef(Ljava/lang/String;)Lcom/google/android/gms/wearable/Asset;

    #@78
    move-result-object v0

    #@79
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7c
    add-int/lit8 v0, v1, 0x1

    #@7e
    move v1, v0

    #@7f
    goto :goto_33

    #@80
    :cond_80
    new-instance v0, Lcom/google/android/gms/internal/lv$a;

    #@82
    invoke-interface {p1}, Lcom/google/android/gms/wearable/DataItem;->getData()[B

    #@85
    move-result-object v1

    #@86
    invoke-static {v1}, Lcom/google/android/gms/internal/lw;->n([B)Lcom/google/android/gms/internal/lw;

    #@89
    move-result-object v1

    #@8a
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/lv$a;-><init>(Lcom/google/android/gms/internal/lw;Ljava/util/List;)V

    #@8d
    invoke-static {v0}, Lcom/google/android/gms/internal/lv;->a(Lcom/google/android/gms/internal/lv$a;)Lcom/google/android/gms/wearable/DataMap;
    :try_end_90
    .catch Lcom/google/android/gms/internal/md; {:try_start_71 .. :try_end_90} :catch_68

    #@90
    move-result-object v0

    #@91
    goto :goto_23
.end method

.method public static fromDataItem(Lcom/google/android/gms/wearable/DataItem;)Lcom/google/android/gms/wearable/DataMapItem;
    .registers 3

    #@0
    if-nez p0, :cond_a

    #@2
    new-instance v0, Ljava/lang/IllegalStateException;

    #@4
    const-string v1, "provided dataItem is null"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    new-instance v0, Lcom/google/android/gms/wearable/DataMapItem;

    #@c
    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/DataMapItem;-><init>(Lcom/google/android/gms/wearable/DataItem;)V

    #@f
    return-object v0
.end method


# virtual methods
.method public getDataMap()Lcom/google/android/gms/wearable/DataMap;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMapItem;->all:Lcom/google/android/gms/wearable/DataMap;

    #@2
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMapItem;->mUri:Landroid/net/Uri;

    #@2
    return-object v0
.end method
