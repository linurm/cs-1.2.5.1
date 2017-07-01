.class Landroid/support/v4/net/ConnectivityManagerCompatGingerbread;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    #@4
    move-result-object v1

    #@5
    if-nez v1, :cond_8

    #@7
    :goto_7
    :pswitch_7
    return v0

    #@8
    :cond_8
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    #@b
    move-result v1

    #@c
    packed-switch v1, :pswitch_data_12

    #@f
    goto :goto_7

    #@10
    :pswitch_10
    const/4 v0, 0x0

    #@11
    goto :goto_7

    #@12
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_7
        :pswitch_10
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
