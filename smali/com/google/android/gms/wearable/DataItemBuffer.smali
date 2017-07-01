.class public Lcom/google/android/gms/wearable/DataItemBuffer;
.super Lcom/google/android/gms/common/data/g;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/g",
        "<",
        "Lcom/google/android/gms/wearable/DataItem;",
        ">;",
        "Lcom/google/android/gms/common/api/Result;"
    }
.end annotation


# instance fields
.field private final yz:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/g;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@3
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@5
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    #@8
    move-result v1

    #@9
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@c
    iput-object v0, p0, Lcom/google/android/gms/wearable/DataItemBuffer;->yz:Lcom/google/android/gms/common/api/Status;

    #@e
    return-void
.end method


# virtual methods
.method protected synthetic c(II)Ljava/lang/Object;
    .registers 4

    #@0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/wearable/DataItemBuffer;->n(II)Lcom/google/android/gms/wearable/DataItem;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected eZ()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "path"

    #@2
    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataItemBuffer;->yz:Lcom/google/android/gms/common/api/Status;

    #@2
    return-object v0
.end method

.method protected n(II)Lcom/google/android/gms/wearable/DataItem;
    .registers 5

    #@0
    new-instance v0, Lcom/google/android/gms/wearable/internal/o;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/wearable/DataItemBuffer;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@4
    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/gms/wearable/internal/o;-><init>(Lcom/google/android/gms/common/data/DataHolder;II)V

    #@7
    return-object v0
.end method
