.class public Lcom/google/android/gms/wearable/internal/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/wearable/DataItemAsset;


# instance fields
.field private final JL:Ljava/lang/String;

.field private final xG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/wearable/DataItemAsset;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-interface {p1}, Lcom/google/android/gms/wearable/DataItemAsset;->getId()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/i;->xG:Ljava/lang/String;

    #@9
    invoke-interface {p1}, Lcom/google/android/gms/wearable/DataItemAsset;->getDataItemKey()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/i;->JL:Ljava/lang/String;

    #@f
    return-void
.end method


# virtual methods
.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/i;->nq()Lcom/google/android/gms/wearable/DataItemAsset;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDataItemKey()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/i;->JL:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/i;->xG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isDataValid()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public nq()Lcom/google/android/gms/wearable/DataItemAsset;
    .registers 1

    #@0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "DataItemAssetEntity["

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    const-string v1, "@"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    #@12
    move-result v1

    #@13
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/i;->xG:Ljava/lang/String;

    #@1c
    if-nez v1, :cond_37

    #@1e
    const-string v1, ",noid"

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    :goto_23
    const-string v1, ", key="

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/i;->JL:Ljava/lang/String;

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    const-string v1, "]"

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    return-object v0

    #@37
    :cond_37
    const-string v1, ","

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/i;->xG:Ljava/lang/String;

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    goto :goto_23
.end method
