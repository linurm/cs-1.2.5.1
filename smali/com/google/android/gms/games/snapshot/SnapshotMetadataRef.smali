.class public final Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/games/snapshot/SnapshotMetadata;


# instance fields
.field private final Ss:Lcom/google/android/gms/games/Game;

.field private final Ur:Lcom/google/android/gms/games/Player;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@3
    new-instance v0, Lcom/google/android/gms/games/GameRef;

    #@5
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/games/GameRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->Ss:Lcom/google/android/gms/games/Game;

    #@a
    new-instance v0, Lcom/google/android/gms/games/PlayerRef;

    #@c
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/games/PlayerRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@f
    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->Ur:Lcom/google/android/gms/games/Player;

    #@11
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->a(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->freeze()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getCoverImageAspectRatio()F
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    const-string v1, "cover_icon_image_height"

    #@3
    invoke-virtual {p0, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->getFloat(Ljava/lang/String;)F

    #@6
    move-result v1

    #@7
    const-string v2, "cover_icon_image_width"

    #@9
    invoke-virtual {p0, v2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->getFloat(Ljava/lang/String;)F

    #@c
    move-result v2

    #@d
    cmpl-float v3, v1, v0

    #@f
    if-nez v3, :cond_12

    #@11
    :goto_11
    return v0

    #@12
    :cond_12
    div-float v0, v2, v1

    #@14
    goto :goto_11
.end method

.method public getCoverImageUri()Landroid/net/Uri;
    .registers 2

    #@0
    const-string v0, "cover_icon_image_uri"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->aw(Ljava/lang/String;)Landroid/net/Uri;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCoverImageUrl()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "cover_icon_image_url"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "description"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDescription(Landroid/database/CharArrayBuffer;)V
    .registers 3

    #@0
    const-string v0, "description"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@5
    return-void
.end method

.method public getGame()Lcom/google/android/gms/games/Game;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->Ss:Lcom/google/android/gms/games/Game;

    #@2
    return-object v0
.end method

.method public getLastModifiedTimestamp()J
    .registers 3

    #@0
    const-string v0, "last_modified_timestamp"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->getLong(Ljava/lang/String;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getOwner()Lcom/google/android/gms/games/Player;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->Ur:Lcom/google/android/gms/games/Player;

    #@2
    return-object v0
.end method

.method public getPlayedTime()J
    .registers 3

    #@0
    const-string v0, "duration"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->getLong(Ljava/lang/String;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getSnapshotId()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "external_snapshot_id"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "title"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getUniqueName()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "unique_name"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->a(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->b(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->freeze()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->writeToParcel(Landroid/os/Parcel;I)V

    #@9
    return-void
.end method
