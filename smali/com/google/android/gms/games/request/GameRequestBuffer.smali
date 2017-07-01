.class public final Lcom/google/android/gms/games/request/GameRequestBuffer;
.super Lcom/google/android/gms/common/data/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/g",
        "<",
        "Lcom/google/android/gms/games/request/GameRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/g;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@3
    return-void
.end method


# virtual methods
.method protected synthetic c(II)Ljava/lang/Object;
    .registers 4

    #@0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/request/GameRequestBuffer;->k(II)Lcom/google/android/gms/games/request/GameRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected eZ()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "external_request_id"

    #@2
    return-object v0
.end method

.method protected k(II)Lcom/google/android/gms/games/request/GameRequest;
    .registers 5

    #@0
    new-instance v0, Lcom/google/android/gms/games/request/GameRequestRef;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/games/request/GameRequestBuffer;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@4
    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/gms/games/request/GameRequestRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;II)V

    #@7
    return-object v0
.end method
