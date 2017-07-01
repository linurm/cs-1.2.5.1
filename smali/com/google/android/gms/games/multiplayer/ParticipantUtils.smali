.class public final Lcom/google/android/gms/games/multiplayer/ParticipantUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static bn(Ljava/lang/String;)Z
    .registers 2

    #@0
    const-string v0, "Participant ID must not be null"

    #@2
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    const-string v0, "p_"

    #@7
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public static getParticipantId(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/multiplayer/Participant;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v2

    #@4
    const/4 v0, 0x0

    #@5
    move v1, v0

    #@6
    :goto_6
    if-ge v1, v2, :cond_27

    #@8
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lcom/google/android/gms/games/multiplayer/Participant;

    #@e
    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->getPlayer()Lcom/google/android/gms/games/Player;

    #@11
    move-result-object v3

    #@12
    if-eqz v3, :cond_23

    #@14
    invoke-interface {v3}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_23

    #@1e
    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    :goto_22
    return-object v0

    #@23
    :cond_23
    add-int/lit8 v0, v1, 0x1

    #@25
    move v1, v0

    #@26
    goto :goto_6

    #@27
    :cond_27
    const/4 v0, 0x0

    #@28
    goto :goto_22
.end method
