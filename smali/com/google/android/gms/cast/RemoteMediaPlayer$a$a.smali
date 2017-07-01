.class final Lcom/google/android/gms/cast/RemoteMediaPlayer$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/RemoteMediaPlayer$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private final Bo:J

.field final synthetic Bp:Lcom/google/android/gms/cast/RemoteMediaPlayer$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/RemoteMediaPlayer$a;J)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$a$a;->Bp:Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    iput-wide p2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$a$a;->Bo:J

    #@7
    return-void
.end method


# virtual methods
.method public k(Lcom/google/android/gms/common/api/Status;)V
    .registers 6

    #@0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_17

    #@6
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$a$a;->Bp:Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    #@8
    iget-object v0, v0, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@a
    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->e(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/internal/go;

    #@d
    move-result-object v0

    #@e
    iget-wide v2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$a$a;->Bo:J

    #@10
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    #@13
    move-result v1

    #@14
    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/go;->a(JI)V

    #@17
    :cond_17
    return-void
.end method

.method public synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .registers 2

    #@0
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a$a;->k(Lcom/google/android/gms/common/api/Status;)V

    #@5
    return-void
.end method
