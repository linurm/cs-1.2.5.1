.class final Lcom/google/android/gms/games/internal/game/ExtendedGameEntity$ExtendedGameEntityCreatorCompat;
.super Lcom/google/android/gms/games/internal/game/ExtendedGameEntityCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExtendedGameEntityCreatorCompat"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntityCreator;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bg(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;
    .registers 20

    #@0
    invoke-static {}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->gR()Ljava/lang/Integer;

    #@3
    move-result-object v2

    #@4
    invoke-static {v2}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->b(Ljava/lang/Integer;)Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_16

    #@a
    const-class v2, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;

    #@c
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-static {v2}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aQ(Ljava/lang/String;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_1b

    #@16
    :cond_16
    invoke-super/range {p0 .. p1}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntityCreator;->bg(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;

    #@19
    move-result-object v2

    #@1a
    :goto_1a
    return-object v2

    #@1b
    :cond_1b
    sget-object v2, Lcom/google/android/gms/games/GameEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1d
    move-object/from16 v0, p1

    #@1f
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@22
    move-result-object v4

    #@23
    check-cast v4, Lcom/google/android/gms/games/GameEntity;

    #@25
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v5

    #@29
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v2

    #@2d
    const/4 v3, 0x1

    #@2e
    if-ne v2, v3, :cond_67

    #@30
    const/4 v6, 0x1

    #@31
    :goto_31
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v7

    #@35
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@38
    move-result-wide v8

    #@39
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@3c
    move-result-wide v10

    #@3d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@40
    move-result-object v12

    #@41
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@44
    move-result-wide v13

    #@45
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@48
    move-result-object v15

    #@49
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@4c
    move-result v3

    #@4d
    new-instance v16, Ljava/util/ArrayList;

    #@4f
    move-object/from16 v0, v16

    #@51
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@54
    const/4 v2, 0x0

    #@55
    :goto_55
    if-ge v2, v3, :cond_69

    #@57
    sget-object v17, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->CREATOR:Lcom/google/android/gms/games/internal/game/GameBadgeEntityCreator;

    #@59
    move-object/from16 v0, v17

    #@5b
    move-object/from16 v1, p1

    #@5d
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/game/GameBadgeEntityCreator;->bh(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/game/GameBadgeEntity;

    #@60
    move-result-object v17

    #@61
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@64
    add-int/lit8 v2, v2, 0x1

    #@66
    goto :goto_55

    #@67
    :cond_67
    const/4 v6, 0x0

    #@68
    goto :goto_31

    #@69
    :cond_69
    new-instance v2, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;

    #@6b
    const/4 v3, 0x2

    #@6c
    const/16 v17, 0x0

    #@6e
    invoke-direct/range {v2 .. v17}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;-><init>(ILcom/google/android/gms/games/GameEntity;IZIJJLjava/lang/String;JLjava/lang/String;Ljava/util/ArrayList;Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;)V

    #@71
    goto :goto_1a
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity$ExtendedGameEntityCreatorCompat;->bg(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
