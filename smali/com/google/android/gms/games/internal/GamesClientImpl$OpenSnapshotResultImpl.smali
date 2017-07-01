.class final Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;
.super Lcom/google/android/gms/common/api/b;

# interfaces
.implements Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OpenSnapshotResultImpl"
.end annotation


# instance fields
.field private final Om:Lcom/google/android/gms/games/snapshot/Snapshot;

.field private final On:Ljava/lang/String;

.field private final Oo:Lcom/google/android/gms/games/snapshot/Snapshot;

.field private final Op:Lcom/google/android/gms/drive/Contents;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/Contents;)V
    .registers 9

    #@0
    const/4 v2, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v3, p2

    #@4
    move-object v4, v2

    #@5
    move-object v5, v2

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;)V

    #@9
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;)V
    .registers 11

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@5
    new-instance v2, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;

    #@7
    invoke-direct {v2, p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@a
    :try_start_a
    invoke-virtual {v2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->getCount()I

    #@d
    move-result v3

    #@e
    if-nez v3, :cond_1e

    #@10
    const/4 v0, 0x0

    #@11
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->Om:Lcom/google/android/gms/games/snapshot/Snapshot;

    #@13
    const/4 v0, 0x0

    #@14
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->Oo:Lcom/google/android/gms/games/snapshot/Snapshot;
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_45

    #@16
    :goto_16
    invoke-virtual {v2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->close()V

    #@19
    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->On:Ljava/lang/String;

    #@1b
    iput-object p5, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->Op:Lcom/google/android/gms/drive/Contents;

    #@1d
    return-void

    #@1e
    :cond_1e
    :try_start_1e
    invoke-virtual {v2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->getCount()I

    #@21
    move-result v3

    #@22
    if-ne v3, v1, :cond_4a

    #@24
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    #@27
    move-result v3

    #@28
    const/16 v4, 0xfa4

    #@2a
    if-eq v3, v4, :cond_2d

    #@2c
    move v0, v1

    #@2d
    :cond_2d
    invoke-static {v0}, Lcom/google/android/gms/internal/gx;->A(Z)V

    #@30
    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    #@32
    const/4 v1, 0x0

    #@33
    invoke-virtual {v2, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    #@36
    move-result-object v1

    #@37
    invoke-direct {v0, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    #@3a
    new-instance v1, Lcom/google/android/gms/games/snapshot/SnapshotEntity;

    #@3c
    invoke-direct {v1, v0, p3}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/drive/Contents;)V

    #@3f
    iput-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->Om:Lcom/google/android/gms/games/snapshot/Snapshot;

    #@41
    const/4 v0, 0x0

    #@42
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->Oo:Lcom/google/android/gms/games/snapshot/Snapshot;
    :try_end_44
    .catchall {:try_start_1e .. :try_end_44} :catchall_45

    #@44
    goto :goto_16

    #@45
    :catchall_45
    move-exception v0

    #@46
    invoke-virtual {v2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->close()V

    #@49
    throw v0

    #@4a
    :cond_4a
    :try_start_4a
    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    #@4c
    const/4 v1, 0x0

    #@4d
    invoke-virtual {v2, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    #@50
    move-result-object v1

    #@51
    invoke-direct {v0, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    #@54
    new-instance v1, Lcom/google/android/gms/games/snapshot/SnapshotEntity;

    #@56
    invoke-direct {v1, v0, p3}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/drive/Contents;)V

    #@59
    iput-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->Om:Lcom/google/android/gms/games/snapshot/Snapshot;

    #@5b
    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    #@5d
    const/4 v1, 0x1

    #@5e
    invoke-virtual {v2, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    #@61
    move-result-object v1

    #@62
    invoke-direct {v0, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    #@65
    new-instance v1, Lcom/google/android/gms/games/snapshot/SnapshotEntity;

    #@67
    invoke-direct {v1, v0, p4}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/drive/Contents;)V

    #@6a
    iput-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->Oo:Lcom/google/android/gms/games/snapshot/Snapshot;
    :try_end_6c
    .catchall {:try_start_4a .. :try_end_6c} :catchall_45

    #@6c
    goto :goto_16
.end method


# virtual methods
.method public getConflictId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->On:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getConflictingSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->Oo:Lcom/google/android/gms/games/snapshot/Snapshot;

    #@2
    return-object v0
.end method

.method public getResolutionContents()Lcom/google/android/gms/drive/Contents;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->Op:Lcom/google/android/gms/drive/Contents;

    #@2
    return-object v0
.end method

.method public getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->Om:Lcom/google/android/gms/games/snapshot/Snapshot;

    #@2
    return-object v0
.end method
