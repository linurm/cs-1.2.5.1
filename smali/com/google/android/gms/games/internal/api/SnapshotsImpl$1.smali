.class Lcom/google/android/gms/games/internal/api/SnapshotsImpl$1;
.super Lcom/google/android/gms/games/internal/api/SnapshotsImpl$LoadImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/SnapshotsImpl;->load(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Pe:Z

.field final synthetic QI:Lcom/google/android/gms/games/internal/api/SnapshotsImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/SnapshotsImpl;Z)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$1;->QI:Lcom/google/android/gms/games/internal/api/SnapshotsImpl;

    #@2
    iput-boolean p2, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$1;->Pe:Z

    #@4
    const/4 v0, 0x0

    #@5
    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$LoadImpl;-><init>(Lcom/google/android/gms/games/internal/api/SnapshotsImpl$1;)V

    #@8
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$1;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$1;->Pe:Z

    #@2
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->e(Lcom/google/android/gms/common/api/a$d;Z)V

    #@5
    return-void
.end method
