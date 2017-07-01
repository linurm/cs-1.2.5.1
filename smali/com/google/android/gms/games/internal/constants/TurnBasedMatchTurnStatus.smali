.class public final Lcom/google/android/gms/games/internal/constants/TurnBasedMatchTurnStatus;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static cm(I)Ljava/lang/String;
    .registers 4

    #@0
    packed-switch p0, :pswitch_data_2a

    #@3
    const-string v0, "MatchTurnStatus"

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string v2, "Unknown match turn status: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->k(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    const-string v0, "TURN_STATUS_UNKNOWN"

    #@1d
    :goto_1d
    return-object v0

    #@1e
    :pswitch_1e
    const-string v0, "TURN_STATUS_INVITED"

    #@20
    goto :goto_1d

    #@21
    :pswitch_21
    const-string v0, "TURN_STATUS_MY_TURN"

    #@23
    goto :goto_1d

    #@24
    :pswitch_24
    const-string v0, "TURN_STATUS_THEIR_TURN"

    #@26
    goto :goto_1d

    #@27
    :pswitch_27
    const-string v0, "TURN_STATUS_COMPLETE"

    #@29
    goto :goto_1d

    #@2a
    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
    .end packed-switch
.end method
