.class Lcom/google/android/gms/tagmanager/de$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/Logger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/de;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static dv(I)I
    .registers 2

    #@0
    const/4 v0, 0x3

    #@1
    packed-switch p0, :pswitch_data_c

    #@4
    :goto_4
    :pswitch_4
    return v0

    #@5
    :pswitch_5
    const/4 v0, 0x2

    #@6
    goto :goto_4

    #@7
    :pswitch_7
    const/4 v0, 0x1

    #@8
    goto :goto_4

    #@9
    :pswitch_9
    const/4 v0, 0x0

    #@a
    goto :goto_4

    #@b
    nop

    #@c
    :pswitch_data_c
    .packed-switch 0x2
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .registers 3

    #@0
    const-string v0, ""

    #@2
    invoke-static {v0, p1}, Lcom/google/android/gms/tagmanager/bh;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .registers 2

    #@0
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public getLogLevel()I
    .registers 2

    #@0
    invoke-static {}, Lcom/google/android/gms/tagmanager/bh;->getLogLevel()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/de$a;->dv(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public info(Ljava/lang/String;)V
    .registers 2

    #@0
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/bh;->B(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public setLogLevel(I)V
    .registers 3

    #@0
    const-string v0, "GA uses GTM logger. Please use TagManager.setLogLevel(int) instead."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public verbose(Ljava/lang/String;)V
    .registers 2

    #@0
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .registers 2

    #@0
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@3
    return-void
.end method
