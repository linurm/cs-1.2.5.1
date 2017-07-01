.class Lcom/google/android/gms/games/internal/api/SnapshotsImpl$3;
.super Lcom/google/android/gms/games/internal/api/SnapshotsImpl$CommitImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/SnapshotsImpl;->commitAndClose(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic QI:Lcom/google/android/gms/games/internal/api/SnapshotsImpl;

.field final synthetic QL:Lcom/google/android/gms/games/snapshot/Snapshot;

.field final synthetic QM:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/SnapshotsImpl;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$3;->QI:Lcom/google/android/gms/games/internal/api/SnapshotsImpl;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$3;->QL:Lcom/google/android/gms/games/snapshot/Snapshot;

    #@4
    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$3;->QM:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    #@6
    const/4 v0, 0x0

    #@7
    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$CommitImpl;-><init>(Lcom/google/android/gms/games/internal/api/SnapshotsImpl$1;)V

    #@a
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$3;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$3;->QL:Lcom/google/android/gms/games/snapshot/Snapshot;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$3;->QM:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    #@4
    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)V

    #@7
    return-void
.end method
