.class public Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntityCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;",
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

.method static a(Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;Landroid/os/Parcel;I)V
    .registers 8

    #@0
    const/4 v4, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@4
    move-result v0

    #@5
    const/4 v1, 0x1

    #@6
    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->getGame()Lcom/google/android/gms/games/Game;

    #@9
    move-result-object v2

    #@a
    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@d
    const/16 v1, 0x3e8

    #@f
    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->getVersionCode()I

    #@12
    move-result v2

    #@13
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@16
    const/4 v1, 0x2

    #@17
    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->getOwner()Lcom/google/android/gms/games/Player;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@1e
    const/4 v1, 0x3

    #@1f
    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->getSnapshotId()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@26
    const/4 v1, 0x5

    #@27
    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->getCoverImageUri()Landroid/net/Uri;

    #@2a
    move-result-object v2

    #@2b
    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@2e
    const/4 v1, 0x6

    #@2f
    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->getCoverImageUrl()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@36
    const/4 v1, 0x7

    #@37
    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->getTitle()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@3e
    const/16 v1, 0x8

    #@40
    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->getDescription()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@47
    const/16 v1, 0x9

    #@49
    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->getLastModifiedTimestamp()J

    #@4c
    move-result-wide v2

    #@4d
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@50
    const/16 v1, 0xa

    #@52
    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->getPlayedTime()J

    #@55
    move-result-wide v2

    #@56
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@59
    const/16 v1, 0xb

    #@5b
    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->getCoverImageAspectRatio()F

    #@5e
    move-result v2

    #@5f
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    #@62
    const/16 v1, 0xc

    #@64
    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->getUniqueName()Ljava/lang/String;

    #@67
    move-result-object v2

    #@68
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@6b
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@6e
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;
    .registers 21

    #@0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@3
    move-result v3

    #@4
    const/4 v4, 0x0

    #@5
    const/4 v5, 0x0

    #@6
    const/4 v6, 0x0

    #@7
    const/4 v7, 0x0

    #@8
    const/4 v8, 0x0

    #@9
    const/4 v9, 0x0

    #@a
    const/4 v10, 0x0

    #@b
    const/4 v11, 0x0

    #@c
    const-wide/16 v12, 0x0

    #@e
    const-wide/16 v14, 0x0

    #@10
    const/16 v16, 0x0

    #@12
    const/16 v17, 0x0

    #@14
    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@17
    move-result v2

    #@18
    if-ge v2, v3, :cond_8e

    #@1a
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@1d
    move-result v2

    #@1e
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@21
    move-result v18

    #@22
    sparse-switch v18, :sswitch_data_b6

    #@25
    move-object/from16 v0, p1

    #@27
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@2a
    goto :goto_14

    #@2b
    :sswitch_2b
    sget-object v5, Lcom/google/android/gms/games/GameEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2d
    move-object/from16 v0, p1

    #@2f
    invoke-static {v0, v2, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@32
    move-result-object v2

    #@33
    check-cast v2, Lcom/google/android/gms/games/GameEntity;

    #@35
    move-object v5, v2

    #@36
    goto :goto_14

    #@37
    :sswitch_37
    move-object/from16 v0, p1

    #@39
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@3c
    move-result v4

    #@3d
    goto :goto_14

    #@3e
    :sswitch_3e
    sget-object v6, Lcom/google/android/gms/games/PlayerEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    #@40
    move-object/from16 v0, p1

    #@42
    invoke-static {v0, v2, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@45
    move-result-object v2

    #@46
    check-cast v2, Lcom/google/android/gms/games/PlayerEntity;

    #@48
    move-object v6, v2

    #@49
    goto :goto_14

    #@4a
    :sswitch_4a
    move-object/from16 v0, p1

    #@4c
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@4f
    move-result-object v7

    #@50
    goto :goto_14

    #@51
    :sswitch_51
    sget-object v8, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@53
    move-object/from16 v0, p1

    #@55
    invoke-static {v0, v2, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@58
    move-result-object v2

    #@59
    check-cast v2, Landroid/net/Uri;

    #@5b
    move-object v8, v2

    #@5c
    goto :goto_14

    #@5d
    :sswitch_5d
    move-object/from16 v0, p1

    #@5f
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@62
    move-result-object v9

    #@63
    goto :goto_14

    #@64
    :sswitch_64
    move-object/from16 v0, p1

    #@66
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@69
    move-result-object v10

    #@6a
    goto :goto_14

    #@6b
    :sswitch_6b
    move-object/from16 v0, p1

    #@6d
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@70
    move-result-object v11

    #@71
    goto :goto_14

    #@72
    :sswitch_72
    move-object/from16 v0, p1

    #@74
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@77
    move-result-wide v12

    #@78
    goto :goto_14

    #@79
    :sswitch_79
    move-object/from16 v0, p1

    #@7b
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@7e
    move-result-wide v14

    #@7f
    goto :goto_14

    #@80
    :sswitch_80
    move-object/from16 v0, p1

    #@82
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)F

    #@85
    move-result v16

    #@86
    goto :goto_14

    #@87
    :sswitch_87
    move-object/from16 v0, p1

    #@89
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@8c
    move-result-object v17

    #@8d
    goto :goto_14

    #@8e
    :cond_8e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@91
    move-result v2

    #@92
    if-eq v2, v3, :cond_af

    #@94
    new-instance v2, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@96
    new-instance v4, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string v5, "Overread allowed size end="

    #@9d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v4

    #@a1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v3

    #@a5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v3

    #@a9
    move-object/from16 v0, p1

    #@ab
    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@ae
    throw v2

    #@af
    :cond_af
    new-instance v3, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    #@b1
    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(ILcom/google/android/gms/games/GameEntity;Lcom/google/android/gms/games/PlayerEntity;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJFLjava/lang/String;)V

    #@b4
    return-object v3

    #@b5
    nop

    #@b6
    :sswitch_data_b6
    .sparse-switch
        0x1 -> :sswitch_2b
        0x2 -> :sswitch_3e
        0x3 -> :sswitch_4a
        0x5 -> :sswitch_51
        0x6 -> :sswitch_5d
        0x7 -> :sswitch_64
        0x8 -> :sswitch_6b
        0x9 -> :sswitch_72
        0xa -> :sswitch_79
        0xb -> :sswitch_80
        0xc -> :sswitch_87
        0x3e8 -> :sswitch_37
    .end sparse-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntityCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntityCreator;->newArray(I)[Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
