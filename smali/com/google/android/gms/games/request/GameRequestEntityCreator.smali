.class public Lcom/google/android/gms/games/request/GameRequestEntityCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/games/request/GameRequestEntity;",
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

.method static a(Lcom/google/android/gms/games/request/GameRequestEntity;Landroid/os/Parcel;I)V
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
    invoke-virtual {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->getGame()Lcom/google/android/gms/games/Game;

    #@9
    move-result-object v2

    #@a
    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@d
    const/16 v1, 0x3e8

    #@f
    invoke-virtual {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->getVersionCode()I

    #@12
    move-result v2

    #@13
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@16
    const/4 v1, 0x2

    #@17
    invoke-virtual {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->getSender()Lcom/google/android/gms/games/Player;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@1e
    const/4 v1, 0x3

    #@1f
    invoke-virtual {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->getData()[B

    #@22
    move-result-object v2

    #@23
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[BZ)V

    #@26
    const/4 v1, 0x4

    #@27
    invoke-virtual {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->getRequestId()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@2e
    const/4 v1, 0x5

    #@2f
    invoke-virtual {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->getRecipients()Ljava/util/List;

    #@32
    move-result-object v2

    #@33
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@36
    const/4 v1, 0x7

    #@37
    invoke-virtual {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->getType()I

    #@3a
    move-result v2

    #@3b
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@3e
    const/16 v1, 0x9

    #@40
    invoke-virtual {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->getCreationTimestamp()J

    #@43
    move-result-wide v2

    #@44
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@47
    const/16 v1, 0xa

    #@49
    invoke-virtual {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->getExpirationTimestamp()J

    #@4c
    move-result-wide v2

    #@4d
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@50
    const/16 v1, 0xb

    #@52
    invoke-virtual {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->iL()Landroid/os/Bundle;

    #@55
    move-result-object v2

    #@56
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    #@59
    const/16 v1, 0xc

    #@5b
    invoke-virtual {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->getStatus()I

    #@5e
    move-result v2

    #@5f
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@62
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@65
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/games/request/GameRequestEntity;
    .registers 20

    #@0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@3
    move-result v16

    #@4
    const/4 v3, 0x0

    #@5
    const/4 v4, 0x0

    #@6
    const/4 v5, 0x0

    #@7
    const/4 v6, 0x0

    #@8
    const/4 v7, 0x0

    #@9
    const/4 v8, 0x0

    #@a
    const/4 v9, 0x0

    #@b
    const-wide/16 v10, 0x0

    #@d
    const-wide/16 v12, 0x0

    #@f
    const/4 v14, 0x0

    #@10
    const/4 v15, 0x0

    #@11
    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@14
    move-result v2

    #@15
    move/from16 v0, v16

    #@17
    if-ge v2, v0, :cond_83

    #@19
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@1c
    move-result v2

    #@1d
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@20
    move-result v17

    #@21
    sparse-switch v17, :sswitch_data_ae

    #@24
    move-object/from16 v0, p1

    #@26
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@29
    goto :goto_11

    #@2a
    :sswitch_2a
    sget-object v4, Lcom/google/android/gms/games/GameEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2c
    move-object/from16 v0, p1

    #@2e
    invoke-static {v0, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@31
    move-result-object v2

    #@32
    check-cast v2, Lcom/google/android/gms/games/GameEntity;

    #@34
    move-object v4, v2

    #@35
    goto :goto_11

    #@36
    :sswitch_36
    move-object/from16 v0, p1

    #@38
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@3b
    move-result v3

    #@3c
    goto :goto_11

    #@3d
    :sswitch_3d
    sget-object v5, Lcom/google/android/gms/games/PlayerEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3f
    move-object/from16 v0, p1

    #@41
    invoke-static {v0, v2, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@44
    move-result-object v2

    #@45
    check-cast v2, Lcom/google/android/gms/games/PlayerEntity;

    #@47
    move-object v5, v2

    #@48
    goto :goto_11

    #@49
    :sswitch_49
    move-object/from16 v0, p1

    #@4b
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->r(Landroid/os/Parcel;I)[B

    #@4e
    move-result-object v6

    #@4f
    goto :goto_11

    #@50
    :sswitch_50
    move-object/from16 v0, p1

    #@52
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@55
    move-result-object v7

    #@56
    goto :goto_11

    #@57
    :sswitch_57
    sget-object v8, Lcom/google/android/gms/games/PlayerEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    #@59
    move-object/from16 v0, p1

    #@5b
    invoke-static {v0, v2, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@5e
    move-result-object v8

    #@5f
    goto :goto_11

    #@60
    :sswitch_60
    move-object/from16 v0, p1

    #@62
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@65
    move-result v9

    #@66
    goto :goto_11

    #@67
    :sswitch_67
    move-object/from16 v0, p1

    #@69
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@6c
    move-result-wide v10

    #@6d
    goto :goto_11

    #@6e
    :sswitch_6e
    move-object/from16 v0, p1

    #@70
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@73
    move-result-wide v12

    #@74
    goto :goto_11

    #@75
    :sswitch_75
    move-object/from16 v0, p1

    #@77
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->q(Landroid/os/Parcel;I)Landroid/os/Bundle;

    #@7a
    move-result-object v14

    #@7b
    goto :goto_11

    #@7c
    :sswitch_7c
    move-object/from16 v0, p1

    #@7e
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@81
    move-result v15

    #@82
    goto :goto_11

    #@83
    :cond_83
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@86
    move-result v2

    #@87
    move/from16 v0, v16

    #@89
    if-eq v2, v0, :cond_a8

    #@8b
    new-instance v2, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@8d
    new-instance v3, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    const-string v4, "Overread allowed size end="

    #@94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v3

    #@98
    move/from16 v0, v16

    #@9a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v3

    #@9e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v3

    #@a2
    move-object/from16 v0, p1

    #@a4
    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@a7
    throw v2

    #@a8
    :cond_a8
    new-instance v2, Lcom/google/android/gms/games/request/GameRequestEntity;

    #@aa
    invoke-direct/range {v2 .. v15}, Lcom/google/android/gms/games/request/GameRequestEntity;-><init>(ILcom/google/android/gms/games/GameEntity;Lcom/google/android/gms/games/PlayerEntity;[BLjava/lang/String;Ljava/util/ArrayList;IJJLandroid/os/Bundle;I)V

    #@ad
    return-object v2

    #@ae
    :sswitch_data_ae
    .sparse-switch
        0x1 -> :sswitch_2a
        0x2 -> :sswitch_3d
        0x3 -> :sswitch_49
        0x4 -> :sswitch_50
        0x5 -> :sswitch_57
        0x7 -> :sswitch_60
        0x9 -> :sswitch_67
        0xa -> :sswitch_6e
        0xb -> :sswitch_75
        0xc -> :sswitch_7c
        0x3e8 -> :sswitch_36
    .end sparse-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/request/GameRequestEntityCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/games/request/GameRequestEntity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gms/games/request/GameRequestEntity;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/games/request/GameRequestEntity;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/request/GameRequestEntityCreator;->newArray(I)[Lcom/google/android/gms/games/request/GameRequestEntity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
