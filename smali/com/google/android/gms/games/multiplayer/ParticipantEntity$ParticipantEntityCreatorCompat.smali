.class final Lcom/google/android/gms/games/multiplayer/ParticipantEntity$ParticipantEntityCreatorCompat;
.super Lcom/google/android/gms/games/multiplayer/ParticipantEntityCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/multiplayer/ParticipantEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ParticipantEntityCreatorCompat"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntityCreator;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bm(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/ParticipantEntity;
    .registers 16

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v11, 0x0

    #@3
    invoke-static {}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->gR()Ljava/lang/Integer;

    #@6
    move-result-object v2

    #@7
    invoke-static {v2}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->b(Ljava/lang/Integer;)Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_19

    #@d
    const-class v2, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    #@f
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-static {v2}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->aQ(Ljava/lang/String;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_1e

    #@19
    :cond_19
    invoke-super {p0, p1}, Lcom/google/android/gms/games/multiplayer/ParticipantEntityCreator;->bm(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    #@1c
    move-result-object v0

    #@1d
    :goto_1d
    return-object v0

    #@1e
    :cond_1e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    if-nez v4, :cond_5f

    #@2c
    move-object v4, v11

    #@2d
    :goto_2d
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    if-nez v5, :cond_64

    #@33
    move-object v5, v11

    #@34
    :goto_34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v6

    #@38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3b
    move-result-object v7

    #@3c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3f
    move-result v8

    #@40
    if-lez v8, :cond_69

    #@42
    move v8, v0

    #@43
    :goto_43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@46
    move-result v9

    #@47
    if-lez v9, :cond_4a

    #@49
    move v1, v0

    #@4a
    :cond_4a
    if-eqz v1, :cond_6b

    #@4c
    sget-object v0, Lcom/google/android/gms/games/PlayerEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4e
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@51
    move-result-object v0

    #@52
    check-cast v0, Lcom/google/android/gms/games/PlayerEntity;

    #@54
    move-object v9, v0

    #@55
    :goto_55
    new-instance v0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    #@57
    const/4 v1, 0x3

    #@58
    const/4 v10, 0x7

    #@59
    move-object v12, v11

    #@5a
    move-object v13, v11

    #@5b
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLcom/google/android/gms/games/PlayerEntity;ILcom/google/android/gms/games/multiplayer/ParticipantResult;Ljava/lang/String;Ljava/lang/String;)V

    #@5e
    goto :goto_1d

    #@5f
    :cond_5f
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@62
    move-result-object v4

    #@63
    goto :goto_2d

    #@64
    :cond_64
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@67
    move-result-object v5

    #@68
    goto :goto_34

    #@69
    :cond_69
    move v8, v1

    #@6a
    goto :goto_43

    #@6b
    :cond_6b
    move-object v9, v11

    #@6c
    goto :goto_55
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity$ParticipantEntityCreatorCompat;->bm(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
