.class public Lcom/google/android/gms/wearable/internal/k;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/wearable/DataItemAsset;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@3
    return-void
.end method


# virtual methods
.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/k;->nq()Lcom/google/android/gms/wearable/DataItemAsset;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDataItemKey()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "asset_key"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/k;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "asset_id"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/k;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public nq()Lcom/google/android/gms/wearable/DataItemAsset;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/wearable/internal/i;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/i;-><init>(Lcom/google/android/gms/wearable/DataItemAsset;)V

    #@5
    return-object v0
.end method
