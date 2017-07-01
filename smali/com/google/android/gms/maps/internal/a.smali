.class public final Lcom/google/android/gms/maps/internal/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(B)Ljava/lang/Boolean;
    .registers 2

    #@0
    packed-switch p0, :pswitch_data_c

    #@3
    const/4 v0, 0x0

    #@4
    :goto_4
    return-object v0

    #@5
    :pswitch_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@7
    goto :goto_4

    #@8
    :pswitch_8
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@a
    goto :goto_4

    #@b
    nop

    #@c
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static c(Ljava/lang/Boolean;)B
    .registers 2

    #@0
    if-eqz p0, :cond_c

    #@2
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    goto :goto_9

    #@c
    :cond_c
    const/4 v0, -0x1

    #@d
    goto :goto_9
.end method
