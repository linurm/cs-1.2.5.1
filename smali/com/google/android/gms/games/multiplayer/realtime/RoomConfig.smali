.class public final Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    }
.end annotation


# instance fields
.field private final NQ:Ljava/lang/String;

.field private final SY:I

.field private final Tk:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

.field private final Tl:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

.field private final Tm:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

.field private final Tn:[Ljava/lang/String;

.field private final To:Landroid/os/Bundle;

.field private final Tp:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->Tk:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    #@5
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->Tk:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    #@7
    iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->Tl:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    #@9
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->Tl:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    #@b
    iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->Tm:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    #@d
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->Tm:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    #@f
    iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->Tq:Ljava/lang/String;

    #@11
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->NQ:Ljava/lang/String;

    #@13
    iget v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->SY:I

    #@15
    iput v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->SY:I

    #@17
    iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->To:Landroid/os/Bundle;

    #@19
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->To:Landroid/os/Bundle;

    #@1b
    iget-boolean v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->Tp:Z

    #@1d
    iput-boolean v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->Tp:Z

    #@1f
    iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->Tr:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@24
    move-result v0

    #@25
    iget-object v1, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->Tr:Ljava/util/ArrayList;

    #@27
    new-array v0, v0, [Ljava/lang/String;

    #@29
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, [Ljava/lang/String;

    #@2f
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->Tn:[Ljava/lang/String;

    #@31
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->Tm:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    #@33
    if-nez v0, :cond_3c

    #@35
    iget-boolean v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->Tp:Z

    #@37
    const-string v1, "Must either enable sockets OR specify a message listener"

    #@39
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@3c
    :cond_3c
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;-><init>(Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;)V

    #@3
    return-void
.end method

.method public static builder(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;-><init>(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$1;)V

    #@6
    return-object v0
.end method

.method public static createAutoMatchCriteria(IIJ)Landroid/os/Bundle;
    .registers 6

    #@0
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    const-string v1, "min_automatch_players"

    #@7
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@a
    const-string v1, "max_automatch_players"

    #@c
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@f
    const-string v1, "exclusive_bit_mask"

    #@11
    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@14
    return-object v0
.end method


# virtual methods
.method public getAutoMatchCriteria()Landroid/os/Bundle;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->To:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getInvitationId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->NQ:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getInvitedPlayerIds()[Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->Tn:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMessageReceivedListener()Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->Tm:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    #@2
    return-object v0
.end method

.method public getRoomStatusUpdateListener()Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->Tl:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    #@2
    return-object v0
.end method

.method public getRoomUpdateListener()Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->Tk:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    #@2
    return-object v0
.end method

.method public getVariant()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->SY:I

    #@2
    return v0
.end method

.method public isSocketEnabled()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->Tp:Z

    #@2
    return v0
.end method
