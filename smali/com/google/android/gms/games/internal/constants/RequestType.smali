.class public final Lcom/google/android/gms/games/internal/constants/RequestType;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static cm(I)Ljava/lang/String;
    .registers 4

    #@0
    packed-switch p0, :pswitch_data_24

    #@3
    const-string v0, "RequestType"

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string v2, "Unknown request type: "

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
    const-string v0, "UNKNOWN_TYPE"

    #@1d
    :goto_1d
    return-object v0

    #@1e
    :pswitch_1e
    const-string v0, "GIFT"

    #@20
    goto :goto_1d

    #@21
    :pswitch_21
    const-string v0, "WISH"

    #@23
    goto :goto_1d

    #@24
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_21
    .end packed-switch
.end method
