.class Lcom/google/android/gms/games/internal/api/SnapshotsImpl$OpenImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/SnapshotsImpl$OpenImpl;->ac(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic QT:Lcom/google/android/gms/games/internal/api/SnapshotsImpl$OpenImpl;

.field final synthetic yJ:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/SnapshotsImpl$OpenImpl;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$OpenImpl$1;->QT:Lcom/google/android/gms/games/internal/api/SnapshotsImpl$OpenImpl;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$OpenImpl$1;->yJ:Lcom/google/android/gms/common/api/Status;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public getConflictId()Ljava/lang/String;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getConflictingSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getResolutionContents()Lcom/google/android/gms/drive/Contents;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$OpenImpl$1;->yJ:Lcom/google/android/gms/common/api/Status;

    #@2
    return-object v0
.end method
