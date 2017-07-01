.class public final Lcom/google/android/gms/games/internal/constants/MatchResult;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static isValid(I)Z
    .registers 2

    #@0
    packed-switch p0, :pswitch_data_8

    #@3
    const/4 v0, 0x0

    #@4
    :goto_4
    return v0

    #@5
    :pswitch_5
    const/4 v0, 0x1

    #@6
    goto :goto_4

    #@7
    nop

    #@8
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
