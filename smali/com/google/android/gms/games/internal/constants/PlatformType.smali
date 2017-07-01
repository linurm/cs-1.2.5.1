.class public final Lcom/google/android/gms/games/internal/constants/PlatformType;
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
    packed-switch p0, :pswitch_data_26

    #@3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string v2, "Unknown platform type: "

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
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    :pswitch_1c
    const-string v0, "ANDROID"

    #@1e
    :goto_1e
    return-object v0

    #@1f
    :pswitch_1f
    const-string v0, "IOS"

    #@21
    goto :goto_1e

    #@22
    :pswitch_22
    const-string v0, "WEB_APP"

    #@24
    goto :goto_1e

    #@25
    nop

    #@26
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
    .end packed-switch
.end method
