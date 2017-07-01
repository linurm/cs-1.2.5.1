.class public Lcom/google/android/gms/common/api/a$c;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Landroid/os/Handler;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a$c;-><init>(Landroid/os/Looper;)V

    #@7
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@3
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<TR;>;TR;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    new-instance v1, Landroid/util/Pair;

    #@3
    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@6
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/common/api/a$c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$c;->sendMessage(Landroid/os/Message;)Z

    #@d
    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/a$a;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$a",
            "<TR;>;J)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/common/api/a$c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/gms/common/api/a$c;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@8
    return-void
.end method

.method protected b(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<TR;>;TR;)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-interface {p1, p2}, Lcom/google/android/gms/common/api/ResultCallback;->onResult(Lcom/google/android/gms/common/api/Result;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    #@3
    return-void

    #@4
    :catch_4
    move-exception v0

    #@5
    invoke-static {p2}, Lcom/google/android/gms/common/api/a;->a(Lcom/google/android/gms/common/api/Result;)V

    #@8
    throw v0
.end method

.method public eH()V
    .registers 2

    #@0
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$c;->removeMessages(I)V

    #@4
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    #@0
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_26

    #@5
    const-string v0, "GoogleApi"

    #@7
    const-string v1, "Don\'t know how to handle this message."

    #@9
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    :goto_c
    return-void

    #@d
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f
    check-cast v0, Landroid/util/Pair;

    #@11
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@13
    check-cast v1, Lcom/google/android/gms/common/api/ResultCallback;

    #@15
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@17
    check-cast v0, Lcom/google/android/gms/common/api/Result;

    #@19
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/common/api/a$c;->b(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    #@1c
    goto :goto_c

    #@1d
    :pswitch_1d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1f
    check-cast v0, Lcom/google/android/gms/common/api/a$a;

    #@21
    invoke-static {v0}, Lcom/google/android/gms/common/api/a$a;->a(Lcom/google/android/gms/common/api/a$a;)V

    #@24
    goto :goto_c

    #@25
    nop

    #@26
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_d
        :pswitch_1d
    .end packed-switch
.end method
