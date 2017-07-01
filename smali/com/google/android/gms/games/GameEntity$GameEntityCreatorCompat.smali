.class final Lcom/google/android/gms/games/GameEntity$GameEntityCreatorCompat;
.super Lcom/google/android/gms/games/GameEntityCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/GameEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GameEntityCreatorCompat"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/games/GameEntityCreator;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bd(Landroid/os/Parcel;)Lcom/google/android/gms/games/GameEntity;
    .registers 27

    #@0
    invoke-static {}, Lcom/google/android/gms/games/GameEntity;->gR()Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/google/android/gms/games/GameEntity;->b(Ljava/lang/Integer;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_16

    #@a
    const-class v0, Lcom/google/android/gms/games/GameEntity;

    #@c
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    invoke-static {v0}, Lcom/google/android/gms/games/GameEntity;->aQ(Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1b

    #@16
    :cond_16
    invoke-super/range {p0 .. p1}, Lcom/google/android/gms/games/GameEntityCreator;->bd(Landroid/os/Parcel;)Lcom/google/android/gms/games/GameEntity;

    #@19
    move-result-object v0

    #@1a
    :goto_1a
    return-object v0

    #@1b
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2e
    move-result-object v6

    #@2f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@32
    move-result-object v7

    #@33
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    if-nez v0, :cond_7d

    #@39
    const/4 v8, 0x0

    #@3a
    :goto_3a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    if-nez v0, :cond_82

    #@40
    const/4 v9, 0x0

    #@41
    :goto_41
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    if-nez v0, :cond_87

    #@47
    const/4 v10, 0x0

    #@48
    :goto_48
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@4b
    move-result v0

    #@4c
    if-lez v0, :cond_8c

    #@4e
    const/4 v11, 0x1

    #@4f
    :goto_4f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@52
    move-result v0

    #@53
    if-lez v0, :cond_8e

    #@55
    const/4 v12, 0x1

    #@56
    :goto_56
    new-instance v0, Lcom/google/android/gms/games/GameEntity;

    #@58
    const/4 v1, 0x4

    #@59
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5c
    move-result-object v13

    #@5d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@60
    move-result v14

    #@61
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@64
    move-result v15

    #@65
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@68
    move-result v16

    #@69
    const/16 v17, 0x0

    #@6b
    const/16 v18, 0x0

    #@6d
    const/16 v19, 0x0

    #@6f
    const/16 v20, 0x0

    #@71
    const/16 v21, 0x0

    #@73
    const/16 v22, 0x0

    #@75
    const/16 v23, 0x0

    #@77
    const/16 v24, 0x0

    #@79
    invoke-direct/range {v0 .. v24}, Lcom/google/android/gms/games/GameEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ZZLjava/lang/String;IIIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    #@7c
    goto :goto_1a

    #@7d
    :cond_7d
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@80
    move-result-object v8

    #@81
    goto :goto_3a

    #@82
    :cond_82
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@85
    move-result-object v9

    #@86
    goto :goto_41

    #@87
    :cond_87
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@8a
    move-result-object v10

    #@8b
    goto :goto_48

    #@8c
    :cond_8c
    const/4 v11, 0x0

    #@8d
    goto :goto_4f

    #@8e
    :cond_8e
    const/4 v12, 0x0

    #@8f
    goto :goto_56
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/GameEntity$GameEntityCreatorCompat;->bd(Landroid/os/Parcel;)Lcom/google/android/gms/games/GameEntity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
