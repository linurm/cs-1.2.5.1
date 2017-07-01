.class public final Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private Mp:Ljava/lang/String;

.field private Uh:Landroid/net/Uri;

.field private Uj:Ljava/lang/Long;

.field private Uk:Lcom/google/android/gms/common/data/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
    .registers 6

    #@0
    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Mp:Ljava/lang/String;

    #@4
    iget-object v2, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Uj:Ljava/lang/Long;

    #@6
    iget-object v3, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Uk:Lcom/google/android/gms/common/data/a;

    #@8
    iget-object v4, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Uh:Landroid/net/Uri;

    #@a
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;-><init>(Ljava/lang/String;Ljava/lang/Long;Lcom/google/android/gms/common/data/a;Landroid/net/Uri;)V

    #@d
    return-object v0
.end method

.method public fromMetadata(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
    .registers 7

    #@0
    const/4 v4, 0x0

    #@1
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getDescription()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Mp:Ljava/lang/String;

    #@7
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getPlayedTime()J

    #@a
    move-result-wide v0

    #@b
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Uj:Ljava/lang/Long;

    #@11
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Uj:Ljava/lang/Long;

    #@13
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@16
    move-result-wide v0

    #@17
    const-wide/16 v2, -0x1

    #@19
    cmp-long v0, v0, v2

    #@1b
    if-nez v0, :cond_1f

    #@1d
    iput-object v4, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Uj:Ljava/lang/Long;

    #@1f
    :cond_1f
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageUri()Landroid/net/Uri;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Uh:Landroid/net/Uri;

    #@25
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Uh:Landroid/net/Uri;

    #@27
    if-eqz v0, :cond_2b

    #@29
    iput-object v4, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Uk:Lcom/google/android/gms/common/data/a;

    #@2b
    :cond_2b
    return-object p0
.end method

.method public setCoverImage(Landroid/graphics/Bitmap;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/common/data/a;

    #@2
    invoke-direct {v0, p1}, Lcom/google/android/gms/common/data/a;-><init>(Landroid/graphics/Bitmap;)V

    #@5
    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Uk:Lcom/google/android/gms/common/data/a;

    #@7
    const/4 v0, 0x0

    #@8
    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Uh:Landroid/net/Uri;

    #@a
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Mp:Ljava/lang/String;

    #@2
    return-object p0
.end method

.method public setPlayedTimeMillis(J)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
    .registers 4

    #@0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Uj:Ljava/lang/Long;

    #@6
    return-object p0
.end method
