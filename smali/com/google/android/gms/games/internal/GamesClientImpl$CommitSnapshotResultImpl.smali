.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CommitSnapshotResultImpl;
.super Lcom/google/android/gms/common/api/b;

# interfaces
.implements Lcom/google/android/gms/games/snapshot/Snapshots$CommitSnapshotResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CommitSnapshotResultImpl"
.end annotation


# instance fields
.field private final NJ:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 5

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@3
    new-instance v1, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;

    #@5
    invoke-direct {v1, p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@8
    :try_start_8
    invoke-virtual {v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->getCount()I

    #@b
    move-result v0

    #@c
    if-lez v0, :cond_1e

    #@e
    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    #@10
    const/4 v2, 0x0

    #@11
    invoke-virtual {v1, v2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    #@14
    move-result-object v2

    #@15
    invoke-direct {v0, v2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    #@18
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CommitSnapshotResultImpl;->NJ:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_22

    #@1a
    :goto_1a
    invoke-virtual {v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->close()V

    #@1d
    return-void

    #@1e
    :cond_1e
    const/4 v0, 0x0

    #@1f
    :try_start_1f
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CommitSnapshotResultImpl;->NJ:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_22

    #@21
    goto :goto_1a

    #@22
    :catchall_22
    move-exception v0

    #@23
    invoke-virtual {v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->close()V

    #@26
    throw v0
.end method


# virtual methods
.method public getSnapshotMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CommitSnapshotResultImpl;->NJ:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    #@2
    return-object v0
.end method
