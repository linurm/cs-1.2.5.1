.class final Lcom/google/android/gms/games/internal/GamesClientImpl$SendRequestResultImpl;
.super Lcom/google/android/gms/common/api/b;

# interfaces
.implements Lcom/google/android/gms/games/request/Requests$SendRequestResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SendRequestResultImpl"
.end annotation


# instance fields
.field private final OA:Lcom/google/android/gms/games/request/GameRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@3
    new-instance v1, Lcom/google/android/gms/games/request/GameRequestBuffer;

    #@5
    invoke-direct {v1, p1}, Lcom/google/android/gms/games/request/GameRequestBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@8
    :try_start_8
    invoke-virtual {v1}, Lcom/google/android/gms/games/request/GameRequestBuffer;->getCount()I

    #@b
    move-result v0

    #@c
    if-lez v0, :cond_21

    #@e
    const/4 v0, 0x0

    #@f
    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/request/GameRequestBuffer;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/google/android/gms/games/request/GameRequest;

    #@15
    invoke-interface {v0}, Lcom/google/android/gms/games/request/GameRequest;->freeze()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/google/android/gms/games/request/GameRequest;

    #@1b
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SendRequestResultImpl;->OA:Lcom/google/android/gms/games/request/GameRequest;
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_25

    #@1d
    :goto_1d
    invoke-virtual {v1}, Lcom/google/android/gms/games/request/GameRequestBuffer;->close()V

    #@20
    return-void

    #@21
    :cond_21
    const/4 v0, 0x0

    #@22
    :try_start_22
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SendRequestResultImpl;->OA:Lcom/google/android/gms/games/request/GameRequest;
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_25

    #@24
    goto :goto_1d

    #@25
    :catchall_25
    move-exception v0

    #@26
    invoke-virtual {v1}, Lcom/google/android/gms/games/request/GameRequestBuffer;->close()V

    #@29
    throw v0
.end method
