.class final Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity$RoomEntityCreatorCompat;
.super Lcom/google/android/gms/games/multiplayer/realtime/RoomEntityCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RoomEntityCreatorCompat"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntityCreator;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bo(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;
    .registers 14

    #@0
    invoke-static {}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->gR()Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->b(Ljava/lang/Integer;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_16

    #@a
    const-class v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;

    #@c
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    invoke-static {v0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->aQ(Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1b

    #@16
    :cond_16
    invoke-super {p0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntityCreator;->bo(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;

    #@19
    move-result-object v0

    #@1a
    :goto_1a
    return-object v0

    #@1b
    :cond_1b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@26
    move-result-wide v4

    #@27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result v6

    #@2b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2e
    move-result-object v7

    #@2f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@32
    move-result v8

    #@33
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@36
    move-result-object v9

    #@37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v1

    #@3b
    new-instance v10, Ljava/util/ArrayList;

    #@3d
    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@40
    const/4 v0, 0x0

    #@41
    :goto_41
    if-ge v0, v1, :cond_4f

    #@43
    sget-object v11, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    #@45
    invoke-interface {v11, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@48
    move-result-object v11

    #@49
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4c
    add-int/lit8 v0, v0, 0x1

    #@4e
    goto :goto_41

    #@4f
    :cond_4f
    new-instance v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;

    #@51
    const/4 v1, 0x2

    #@52
    const/4 v11, -0x1

    #@53
    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;-><init>(ILjava/lang/String;Ljava/lang/String;JILjava/lang/String;ILandroid/os/Bundle;Ljava/util/ArrayList;I)V

    #@56
    goto :goto_1a
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity$RoomEntityCreatorCompat;->bo(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
