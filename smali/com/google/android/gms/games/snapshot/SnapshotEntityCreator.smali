.class public Lcom/google/android/gms/games/snapshot/SnapshotEntityCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/games/snapshot/SnapshotEntity;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_DESCRIPTION:I


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static a(Lcom/google/android/gms/games/snapshot/SnapshotEntity;Landroid/os/Parcel;I)V
    .registers 7

    #@0
    const/4 v3, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@4
    move-result v0

    #@5
    const/4 v1, 0x1

    #@6
    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    #@9
    move-result-object v2

    #@a
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@d
    const/16 v1, 0x3e8

    #@f
    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->getVersionCode()I

    #@12
    move-result v2

    #@13
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@16
    const/4 v1, 0x2

    #@17
    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->getContents()Lcom/google/android/gms/drive/Contents;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@1e
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@21
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/games/snapshot/SnapshotEntity;
    .registers 9

    #@0
    const/4 v1, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@4
    move-result v4

    #@5
    const/4 v3, 0x0

    #@6
    move-object v2, v1

    #@7
    :goto_7
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@a
    move-result v0

    #@b
    if-ge v0, v4, :cond_43

    #@d
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@10
    move-result v0

    #@11
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@14
    move-result v5

    #@15
    sparse-switch v5, :sswitch_data_68

    #@18
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1b
    move-object v0, v1

    #@1c
    move-object v1, v2

    #@1d
    move v2, v3

    #@1e
    :goto_1e
    move v3, v2

    #@1f
    move-object v2, v1

    #@20
    move-object v1, v0

    #@21
    goto :goto_7

    #@22
    :sswitch_22
    sget-object v1, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->CREATOR:Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntityCreator;

    #@24
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    #@2a
    move-object v1, v2

    #@2b
    move v2, v3

    #@2c
    goto :goto_1e

    #@2d
    :sswitch_2d
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@30
    move-result v0

    #@31
    move-object v6, v1

    #@32
    move-object v1, v2

    #@33
    move v2, v0

    #@34
    move-object v0, v6

    #@35
    goto :goto_1e

    #@36
    :sswitch_36
    sget-object v2, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    #@38
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@3b
    move-result-object v0

    #@3c
    check-cast v0, Lcom/google/android/gms/drive/Contents;

    #@3e
    move v2, v3

    #@3f
    move-object v6, v0

    #@40
    move-object v0, v1

    #@41
    move-object v1, v6

    #@42
    goto :goto_1e

    #@43
    :cond_43
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@46
    move-result v0

    #@47
    if-eq v0, v4, :cond_62

    #@49
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@4b
    new-instance v1, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string v2, "Overread allowed size end="

    #@52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v1

    #@5e
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@61
    throw v0

    #@62
    :cond_62
    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;

    #@64
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;-><init>(ILcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/drive/Contents;)V

    #@67
    return-object v0

    #@68
    :sswitch_data_68
    .sparse-switch
        0x1 -> :sswitch_22
        0x2 -> :sswitch_36
        0x3e8 -> :sswitch_2d
    .end sparse-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/snapshot/SnapshotEntityCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/games/snapshot/SnapshotEntity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gms/games/snapshot/SnapshotEntity;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/games/snapshot/SnapshotEntity;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/snapshot/SnapshotEntityCreator;->newArray(I)[Lcom/google/android/gms/games/snapshot/SnapshotEntity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
