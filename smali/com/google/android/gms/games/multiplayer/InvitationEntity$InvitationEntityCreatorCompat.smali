.class final Lcom/google/android/gms/games/multiplayer/InvitationEntity$InvitationEntityCreatorCompat;
.super Lcom/google/android/gms/games/multiplayer/InvitationEntityCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/multiplayer/InvitationEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InvitationEntityCreatorCompat"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/games/multiplayer/InvitationEntityCreator;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bl(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/InvitationEntity;
    .registers 13

    #@0
    const/4 v10, 0x0

    #@1
    invoke-static {}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->gR()Ljava/lang/Integer;

    #@4
    move-result-object v0

    #@5
    invoke-static {v0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->b(Ljava/lang/Integer;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_17

    #@b
    const-class v0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;

    #@d
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    invoke-static {v0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->aQ(Ljava/lang/String;)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1c

    #@17
    :cond_17
    invoke-super {p0, p1}, Lcom/google/android/gms/games/multiplayer/InvitationEntityCreator;->bl(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/InvitationEntity;

    #@1a
    move-result-object v0

    #@1b
    :goto_1b
    return-object v0

    #@1c
    :cond_1c
    sget-object v0, Lcom/google/android/gms/games/GameEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Lcom/google/android/gms/games/GameEntity;

    #@24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@2b
    move-result-wide v4

    #@2c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v6

    #@30
    sget-object v0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    #@32
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@35
    move-result-object v7

    #@36
    check-cast v7, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    #@38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v1

    #@3c
    new-instance v8, Ljava/util/ArrayList;

    #@3e
    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@41
    move v0, v10

    #@42
    :goto_42
    if-ge v0, v1, :cond_50

    #@44
    sget-object v9, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    #@46
    invoke-interface {v9, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@49
    move-result-object v9

    #@4a
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4d
    add-int/lit8 v0, v0, 0x1

    #@4f
    goto :goto_42

    #@50
    :cond_50
    new-instance v0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;

    #@52
    const/4 v1, 0x2

    #@53
    const/4 v9, -0x1

    #@54
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;-><init>(ILcom/google/android/gms/games/GameEntity;Ljava/lang/String;JILcom/google/android/gms/games/multiplayer/ParticipantEntity;Ljava/util/ArrayList;II)V

    #@57
    goto :goto_1b
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/multiplayer/InvitationEntity$InvitationEntityCreatorCompat;->bl(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/InvitationEntity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
