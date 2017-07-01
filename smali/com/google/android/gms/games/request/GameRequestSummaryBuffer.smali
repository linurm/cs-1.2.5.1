.class public final Lcom/google/android/gms/games/request/GameRequestSummaryBuffer;
.super Lcom/google/android/gms/common/data/DataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/DataBuffer",
        "<",
        "Lcom/google/android/gms/games/request/GameRequestSummary;",
        ">;"
    }
.end annotation


# virtual methods
.method public cB(I)Lcom/google/android/gms/games/request/GameRequestSummary;
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/games/request/GameRequestSummaryRef;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/games/request/GameRequestSummaryBuffer;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@4
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/games/request/GameRequestSummaryRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@7
    return-object v0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/request/GameRequestSummaryBuffer;->cB(I)Lcom/google/android/gms/games/request/GameRequestSummary;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
