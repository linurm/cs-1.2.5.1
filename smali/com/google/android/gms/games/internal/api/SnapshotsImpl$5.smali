.class Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;
.super Lcom/google/android/gms/games/internal/api/SnapshotsImpl$OpenImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/SnapshotsImpl;->resolveConflict(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/drive/Contents;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IM:Lcom/google/android/gms/drive/Contents;

.field final synthetic QI:Lcom/google/android/gms/games/internal/api/SnapshotsImpl;

.field final synthetic QM:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

.field final synthetic QO:Ljava/lang/String;

.field final synthetic QP:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/SnapshotsImpl;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/drive/Contents;)V
    .registers 7

    #@0
    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;->QI:Lcom/google/android/gms/games/internal/api/SnapshotsImpl;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;->QO:Ljava/lang/String;

    #@4
    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;->QP:Ljava/lang/String;

    #@6
    iput-object p4, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;->QM:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    #@8
    iput-object p5, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;->IM:Lcom/google/android/gms/drive/Contents;

    #@a
    const/4 v0, 0x0

    #@b
    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$OpenImpl;-><init>(Lcom/google/android/gms/games/internal/api/SnapshotsImpl$1;)V

    #@e
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;->QO:Ljava/lang/String;

    #@2
    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;->QP:Ljava/lang/String;

    #@4
    iget-object v4, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;->QM:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    #@6
    iget-object v5, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;->IM:Lcom/google/android/gms/drive/Contents;

    #@8
    move-object v0, p1

    #@9
    move-object v1, p0

    #@a
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/drive/Contents;)V

    #@d
    return-void
.end method
