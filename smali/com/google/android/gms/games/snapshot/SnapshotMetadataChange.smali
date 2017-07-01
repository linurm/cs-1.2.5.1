.class public final Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeCreator;

.field public static final EMPTY_CHANGE:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;


# instance fields
.field private final Mp:Ljava/lang/String;

.field private final Ug:Ljava/lang/Long;

.field private final Uh:Landroid/net/Uri;

.field private Ui:Lcom/google/android/gms/common/data/a;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeCreator;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeCreator;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->CREATOR:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeCreator;

    #@7
    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    #@9
    invoke-direct {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;-><init>()V

    #@c
    sput-object v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->EMPTY_CHANGE:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    #@e
    return-void
.end method

.method constructor <init>()V
    .registers 7

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x4

    #@2
    move-object v0, p0

    #@3
    move-object v3, v2

    #@4
    move-object v4, v2

    #@5
    move-object v5, v2

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;-><init>(ILjava/lang/String;Ljava/lang/Long;Lcom/google/android/gms/common/data/a;Landroid/net/Uri;)V

    #@9
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/Long;Lcom/google/android/gms/common/data/a;Landroid/net/Uri;)V
    .registers 9

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    iput p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->xM:I

    #@7
    iput-object p2, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->Mp:Ljava/lang/String;

    #@9
    iput-object p3, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->Ug:Ljava/lang/Long;

    #@b
    iput-object p4, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->Ui:Lcom/google/android/gms/common/data/a;

    #@d
    iput-object p5, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->Uh:Landroid/net/Uri;

    #@f
    iget-object v2, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->Ui:Lcom/google/android/gms/common/data/a;

    #@11
    if-eqz v2, :cond_1e

    #@13
    iget-object v2, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->Uh:Landroid/net/Uri;

    #@15
    if-nez v2, :cond_18

    #@17
    move v0, v1

    #@18
    :cond_18
    const-string v1, "Cannot set both a URI and an image"

    #@1a
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@1d
    :cond_1d
    :goto_1d
    return-void

    #@1e
    :cond_1e
    iget-object v2, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->Uh:Landroid/net/Uri;

    #@20
    if-eqz v2, :cond_1d

    #@22
    iget-object v2, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->Ui:Lcom/google/android/gms/common/data/a;

    #@24
    if-nez v2, :cond_2c

    #@26
    :goto_26
    const-string v0, "Cannot set both a URI and an image"

    #@28
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@2b
    goto :goto_1d

    #@2c
    :cond_2c
    move v1, v0

    #@2d
    goto :goto_26
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Long;Lcom/google/android/gms/common/data/a;Landroid/net/Uri;)V
    .registers 11

    #@0
    const/4 v1, 0x4

    #@1
    move-object v0, p0

    #@2
    move-object v2, p1

    #@3
    move-object v3, p2

    #@4
    move-object v4, p3

    #@5
    move-object v5, p4

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;-><init>(ILjava/lang/String;Ljava/lang/Long;Lcom/google/android/gms/common/data/a;Landroid/net/Uri;)V

    #@9
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

.method public getCoverImage()Landroid/graphics/Bitmap;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->Ui:Lcom/google/android/gms/common/data/a;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    return-object v0

    #@6
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->Ui:Lcom/google/android/gms/common/data/a;

    #@8
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/a;->eS()Landroid/graphics/Bitmap;

    #@b
    move-result-object v0

    #@c
    goto :goto_5
.end method

.method public getCoverImageUri()Landroid/net/Uri;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->Uh:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->Mp:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPlayedTimeMillis()Ljava/lang/Long;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->Ug:Ljava/lang/Long;

    #@2
    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->xM:I

    #@2
    return v0
.end method

.method public iN()Lcom/google/android/gms/common/data/a;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->Ui:Lcom/google/android/gms/common/data/a;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeCreator;->a(Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
