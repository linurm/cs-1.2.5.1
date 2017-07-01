.class public Lcom/google/android/gms/games/quest/QuestEntityCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/games/quest/QuestEntity;",
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

.method static a(Lcom/google/android/gms/games/quest/QuestEntity;Landroid/os/Parcel;I)V
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
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/QuestEntity;->getGame()Lcom/google/android/gms/games/Game;

    #@9
    move-result-object v2

    #@a
    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@d
    const/4 v1, 0x2

    #@e
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/QuestEntity;->getQuestId()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@15
    const/4 v1, 0x3

    #@16
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/QuestEntity;->getAcceptedTimestamp()J

    #@19
    move-result-wide v2

    #@1a
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@1d
    const/4 v1, 0x4

    #@1e
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/QuestEntity;->getBannerImageUri()Landroid/net/Uri;

    #@21
    move-result-object v2

    #@22
    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@25
    const/4 v1, 0x5

    #@26
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/QuestEntity;->getBannerImageUrl()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@2d
    const/4 v1, 0x6

    #@2e
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/QuestEntity;->getDescription()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@35
    const/4 v1, 0x7

    #@36
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/QuestEntity;->getEndTimestamp()J

    #@39
    move-result-wide v2

    #@3a
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@3d
    const/16 v1, 0x8

    #@3f
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/QuestEntity;->getLastUpdatedTimestamp()J

    #@42
    move-result-wide v2

    #@43
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@46
    const/16 v1, 0x9

    #@48
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/QuestEntity;->getIconImageUri()Landroid/net/Uri;

    #@4b
    move-result-object v2

    #@4c
    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@4f
    const/16 v1, 0xa

    #@51
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/QuestEntity;->getIconImageUrl()Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@58
    const/16 v1, 0xc

    #@5a
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/QuestEntity;->getName()Ljava/lang/String;

    #@5d
    move-result-object v2

    #@5e
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@61
    const/16 v1, 0xd

    #@63
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/QuestEntity;->iK()J

    #@66
    move-result-wide v2

    #@67
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@6a
    const/16 v1, 0xe

    #@6c
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/QuestEntity;->getStartTimestamp()J

    #@6f
    move-result-wide v2

    #@70
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@73
    const/16 v1, 0xf

    #@75
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/QuestEntity;->getState()I

    #@78
    move-result v2

    #@79
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@7c
    const/16 v1, 0x11

    #@7e
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/QuestEntity;->iJ()Ljava/util/List;

    #@81
    move-result-object v2

    #@82
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@85
    const/16 v1, 0x10

    #@87
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/QuestEntity;->getType()I

    #@8a
    move-result v2

    #@8b
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@8e
    const/16 v1, 0x3e8

    #@90
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/QuestEntity;->getVersionCode()I

    #@93
    move-result v2

    #@94
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@97
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@9a
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/games/quest/QuestEntity;
    .registers 29

    #@0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@3
    move-result v25

    #@4
    const/4 v3, 0x0

    #@5
    const/4 v4, 0x0

    #@6
    const/4 v5, 0x0

    #@7
    const-wide/16 v6, 0x0

    #@9
    const/4 v8, 0x0

    #@a
    const/4 v9, 0x0

    #@b
    const/4 v10, 0x0

    #@c
    const-wide/16 v11, 0x0

    #@e
    const-wide/16 v13, 0x0

    #@10
    const/4 v15, 0x0

    #@11
    const/16 v16, 0x0

    #@13
    const/16 v17, 0x0

    #@15
    const-wide/16 v18, 0x0

    #@17
    const-wide/16 v20, 0x0

    #@19
    const/16 v22, 0x0

    #@1b
    const/16 v23, 0x0

    #@1d
    const/16 v24, 0x0

    #@1f
    :goto_1f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@22
    move-result v2

    #@23
    move/from16 v0, v25

    #@25
    if-ge v2, v0, :cond_c7

    #@27
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@2a
    move-result v2

    #@2b
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@2e
    move-result v26

    #@2f
    sparse-switch v26, :sswitch_data_f2

    #@32
    move-object/from16 v0, p1

    #@34
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@37
    goto :goto_1f

    #@38
    :sswitch_38
    sget-object v4, Lcom/google/android/gms/games/GameEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3a
    move-object/from16 v0, p1

    #@3c
    invoke-static {v0, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@3f
    move-result-object v2

    #@40
    check-cast v2, Lcom/google/android/gms/games/GameEntity;

    #@42
    move-object v4, v2

    #@43
    goto :goto_1f

    #@44
    :sswitch_44
    move-object/from16 v0, p1

    #@46
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@49
    move-result-object v5

    #@4a
    goto :goto_1f

    #@4b
    :sswitch_4b
    move-object/from16 v0, p1

    #@4d
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@50
    move-result-wide v6

    #@51
    goto :goto_1f

    #@52
    :sswitch_52
    sget-object v8, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@54
    move-object/from16 v0, p1

    #@56
    invoke-static {v0, v2, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@59
    move-result-object v2

    #@5a
    check-cast v2, Landroid/net/Uri;

    #@5c
    move-object v8, v2

    #@5d
    goto :goto_1f

    #@5e
    :sswitch_5e
    move-object/from16 v0, p1

    #@60
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@63
    move-result-object v9

    #@64
    goto :goto_1f

    #@65
    :sswitch_65
    move-object/from16 v0, p1

    #@67
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@6a
    move-result-object v10

    #@6b
    goto :goto_1f

    #@6c
    :sswitch_6c
    move-object/from16 v0, p1

    #@6e
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@71
    move-result-wide v11

    #@72
    goto :goto_1f

    #@73
    :sswitch_73
    move-object/from16 v0, p1

    #@75
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@78
    move-result-wide v13

    #@79
    goto :goto_1f

    #@7a
    :sswitch_7a
    sget-object v15, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7c
    move-object/from16 v0, p1

    #@7e
    invoke-static {v0, v2, v15}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@81
    move-result-object v2

    #@82
    check-cast v2, Landroid/net/Uri;

    #@84
    move-object v15, v2

    #@85
    goto :goto_1f

    #@86
    :sswitch_86
    move-object/from16 v0, p1

    #@88
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@8b
    move-result-object v16

    #@8c
    goto :goto_1f

    #@8d
    :sswitch_8d
    move-object/from16 v0, p1

    #@8f
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@92
    move-result-object v17

    #@93
    goto :goto_1f

    #@94
    :sswitch_94
    move-object/from16 v0, p1

    #@96
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@99
    move-result-wide v18

    #@9a
    goto :goto_1f

    #@9b
    :sswitch_9b
    move-object/from16 v0, p1

    #@9d
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@a0
    move-result-wide v20

    #@a1
    goto/16 :goto_1f

    #@a3
    :sswitch_a3
    move-object/from16 v0, p1

    #@a5
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@a8
    move-result v22

    #@a9
    goto/16 :goto_1f

    #@ab
    :sswitch_ab
    sget-object v24, Lcom/google/android/gms/games/quest/MilestoneEntity;->CREATOR:Lcom/google/android/gms/games/quest/MilestoneEntityCreator;

    #@ad
    move-object/from16 v0, p1

    #@af
    move-object/from16 v1, v24

    #@b1
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@b4
    move-result-object v24

    #@b5
    goto/16 :goto_1f

    #@b7
    :sswitch_b7
    move-object/from16 v0, p1

    #@b9
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@bc
    move-result v23

    #@bd
    goto/16 :goto_1f

    #@bf
    :sswitch_bf
    move-object/from16 v0, p1

    #@c1
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@c4
    move-result v3

    #@c5
    goto/16 :goto_1f

    #@c7
    :cond_c7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@ca
    move-result v2

    #@cb
    move/from16 v0, v25

    #@cd
    if-eq v2, v0, :cond_ec

    #@cf
    new-instance v2, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@d1
    new-instance v3, Ljava/lang/StringBuilder;

    #@d3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d6
    const-string v4, "Overread allowed size end="

    #@d8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v3

    #@dc
    move/from16 v0, v25

    #@de
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v3

    #@e2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e5
    move-result-object v3

    #@e6
    move-object/from16 v0, p1

    #@e8
    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@eb
    throw v2

    #@ec
    :cond_ec
    new-instance v2, Lcom/google/android/gms/games/quest/QuestEntity;

    #@ee
    invoke-direct/range {v2 .. v24}, Lcom/google/android/gms/games/quest/QuestEntity;-><init>(ILcom/google/android/gms/games/GameEntity;Ljava/lang/String;JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIILjava/util/ArrayList;)V

    #@f1
    return-object v2

    #@f2
    :sswitch_data_f2
    .sparse-switch
        0x1 -> :sswitch_38
        0x2 -> :sswitch_44
        0x3 -> :sswitch_4b
        0x4 -> :sswitch_52
        0x5 -> :sswitch_5e
        0x6 -> :sswitch_65
        0x7 -> :sswitch_6c
        0x8 -> :sswitch_73
        0x9 -> :sswitch_7a
        0xa -> :sswitch_86
        0xc -> :sswitch_8d
        0xd -> :sswitch_94
        0xe -> :sswitch_9b
        0xf -> :sswitch_a3
        0x10 -> :sswitch_b7
        0x11 -> :sswitch_ab
        0x3e8 -> :sswitch_bf
    .end sparse-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/quest/QuestEntityCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/games/quest/QuestEntity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gms/games/quest/QuestEntity;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/games/quest/QuestEntity;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/quest/QuestEntityCreator;->newArray(I)[Lcom/google/android/gms/games/quest/QuestEntity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
