.class Lcom/google/android/gms/games/internal/api/SnapshotsImpl$LoadImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/SnapshotsImpl$LoadImpl;->ab(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic QS:Lcom/google/android/gms/games/internal/api/SnapshotsImpl$LoadImpl;

.field final synthetic yJ:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/SnapshotsImpl$LoadImpl;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$LoadImpl$1;->QS:Lcom/google/android/gms/games/internal/api/SnapshotsImpl$LoadImpl;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$LoadImpl$1;->yJ:Lcom/google/android/gms/common/api/Status;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public getSnapshots()Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;

    #@2
    const/16 v1, 0xe

    #@4
    invoke-static {v1}, Lcom/google/android/gms/common/data/DataHolder;->af(I)Lcom/google/android/gms/common/data/DataHolder;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@b
    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$LoadImpl$1;->yJ:Lcom/google/android/gms/common/api/Status;

    #@2
    return-object v0
.end method

.method public release()V
    .registers 1

    #@0
    return-void
.end method
