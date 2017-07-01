.class final Lcom/google/android/gms/games/PlayerEntity$PlayerEntityCreatorCompat;
.super Lcom/google/android/gms/games/PlayerEntityCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/PlayerEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PlayerEntityCreatorCompat"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/games/PlayerEntityCreator;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public be(Landroid/os/Parcel;)Lcom/google/android/gms/games/PlayerEntity;
    .registers 19

    #@0
    invoke-static {}, Lcom/google/android/gms/games/PlayerEntity;->gR()Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/google/android/gms/games/PlayerEntity;->b(Ljava/lang/Integer;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_16

    #@a
    const-class v0, Lcom/google/android/gms/games/PlayerEntity;

    #@c
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    invoke-static {v0}, Lcom/google/android/gms/games/PlayerEntity;->aQ(Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1b

    #@16
    :cond_16
    invoke-super/range {p0 .. p1}, Lcom/google/android/gms/games/PlayerEntityCreator;->be(Landroid/os/Parcel;)Lcom/google/android/gms/games/PlayerEntity;

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
    move-result-object v0

    #@27
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    if-nez v0, :cond_47

    #@2d
    const/4 v4, 0x0

    #@2e
    :goto_2e
    if-nez v1, :cond_4c

    #@30
    const/4 v5, 0x0

    #@31
    :goto_31
    new-instance v0, Lcom/google/android/gms/games/PlayerEntity;

    #@33
    const/16 v1, 0xa

    #@35
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@38
    move-result-wide v6

    #@39
    const/4 v8, -0x1

    #@3a
    const-wide/16 v9, -0x1

    #@3c
    const/4 v11, 0x0

    #@3d
    const/4 v12, 0x0

    #@3e
    const/4 v13, 0x0

    #@3f
    const/4 v14, 0x0

    #@40
    const/4 v15, 0x0

    #@41
    const/16 v16, 0x1

    #@43
    invoke-direct/range {v0 .. v16}, Lcom/google/android/gms/games/PlayerEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;JIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;Lcom/google/android/gms/games/PlayerLevelInfo;Z)V

    #@46
    goto :goto_1a

    #@47
    :cond_47
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@4a
    move-result-object v4

    #@4b
    goto :goto_2e

    #@4c
    :cond_4c
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@4f
    move-result-object v5

    #@50
    goto :goto_31
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/PlayerEntity$PlayerEntityCreatorCompat;->be(Landroid/os/Parcel;)Lcom/google/android/gms/games/PlayerEntity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
