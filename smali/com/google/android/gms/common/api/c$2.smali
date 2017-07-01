.class Lcom/google/android/gms/common/api/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ek:Lcom/google/android/gms/common/api/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/c;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/common/api/c$2;->Ek:Lcom/google/android/gms/common/api/c;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/c$2;->Ek:Lcom/google/android/gms/common/api/c;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/c;)Ljava/util/concurrent/locks/Lock;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@9
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/c$2;->Ek:Lcom/google/android/gms/common/api/c;

    #@b
    invoke-static {v0}, Lcom/google/android/gms/common/api/c;->b(Lcom/google/android/gms/common/api/c;)I

    #@e
    move-result v0

    #@f
    const/4 v1, 0x1

    #@10
    if-ne v0, v1, :cond_22

    #@12
    if-eqz p1, :cond_1d

    #@14
    iget-object v0, p0, Lcom/google/android/gms/common/api/c$2;->Ek:Lcom/google/android/gms/common/api/c;

    #@16
    invoke-static {v0}, Lcom/google/android/gms/common/api/c;->c(Lcom/google/android/gms/common/api/c;)Landroid/os/Bundle;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@1d
    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/common/api/c$2;->Ek:Lcom/google/android/gms/common/api/c;

    #@1f
    invoke-static {v0}, Lcom/google/android/gms/common/api/c;->d(Lcom/google/android/gms/common/api/c;)V
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_2c

    #@22
    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/common/api/c$2;->Ek:Lcom/google/android/gms/common/api/c;

    #@24
    invoke-static {v0}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/c;)Ljava/util/concurrent/locks/Lock;

    #@27
    move-result-object v0

    #@28
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@2b
    return-void

    #@2c
    :catchall_2c
    move-exception v0

    #@2d
    iget-object v1, p0, Lcom/google/android/gms/common/api/c$2;->Ek:Lcom/google/android/gms/common/api/c;

    #@2f
    invoke-static {v1}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/c;)Ljava/util/concurrent/locks/Lock;

    #@32
    move-result-object v1

    #@33
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@36
    throw v0
.end method

.method public onConnectionSuspended(I)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/c$2;->Ek:Lcom/google/android/gms/common/api/c;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/c;)Ljava/util/concurrent/locks/Lock;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@9
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/c$2;->Ek:Lcom/google/android/gms/common/api/c;

    #@b
    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/c;I)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_21

    #@e
    packed-switch p1, :pswitch_data_5c

    #@11
    :goto_11
    iget-object v0, p0, Lcom/google/android/gms/common/api/c$2;->Ek:Lcom/google/android/gms/common/api/c;

    #@13
    invoke-static {v0}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/c;)Ljava/util/concurrent/locks/Lock;

    #@16
    move-result-object v0

    #@17
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@1a
    :goto_1a
    return-void

    #@1b
    :pswitch_1b
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/common/api/c$2;->Ek:Lcom/google/android/gms/common/api/c;

    #@1d
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c;->connect()V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_21

    #@20
    goto :goto_11

    #@21
    :catchall_21
    move-exception v0

    #@22
    iget-object v1, p0, Lcom/google/android/gms/common/api/c$2;->Ek:Lcom/google/android/gms/common/api/c;

    #@24
    invoke-static {v1}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/c;)Ljava/util/concurrent/locks/Lock;

    #@27
    move-result-object v1

    #@28
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@2b
    throw v0

    #@2c
    :pswitch_2c
    :try_start_2c
    iget-object v0, p0, Lcom/google/android/gms/common/api/c$2;->Ek:Lcom/google/android/gms/common/api/c;

    #@2e
    invoke-static {v0}, Lcom/google/android/gms/common/api/c;->e(Lcom/google/android/gms/common/api/c;)Z
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_21

    #@31
    move-result v0

    #@32
    if-eqz v0, :cond_3e

    #@34
    iget-object v0, p0, Lcom/google/android/gms/common/api/c$2;->Ek:Lcom/google/android/gms/common/api/c;

    #@36
    invoke-static {v0}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/c;)Ljava/util/concurrent/locks/Lock;

    #@39
    move-result-object v0

    #@3a
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@3d
    goto :goto_1a

    #@3e
    :cond_3e
    :try_start_3e
    iget-object v0, p0, Lcom/google/android/gms/common/api/c$2;->Ek:Lcom/google/android/gms/common/api/c;

    #@40
    const/4 v1, 0x2

    #@41
    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/c;->b(Lcom/google/android/gms/common/api/c;I)I

    #@44
    iget-object v0, p0, Lcom/google/android/gms/common/api/c$2;->Ek:Lcom/google/android/gms/common/api/c;

    #@46
    iget-object v0, v0, Lcom/google/android/gms/common/api/c;->Ec:Landroid/os/Handler;

    #@48
    iget-object v1, p0, Lcom/google/android/gms/common/api/c$2;->Ek:Lcom/google/android/gms/common/api/c;

    #@4a
    iget-object v1, v1, Lcom/google/android/gms/common/api/c;->Ec:Landroid/os/Handler;

    #@4c
    const/4 v2, 0x1

    #@4d
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@50
    move-result-object v1

    #@51
    iget-object v2, p0, Lcom/google/android/gms/common/api/c$2;->Ek:Lcom/google/android/gms/common/api/c;

    #@53
    invoke-static {v2}, Lcom/google/android/gms/common/api/c;->f(Lcom/google/android/gms/common/api/c;)J

    #@56
    move-result-wide v2

    #@57
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_5a
    .catchall {:try_start_3e .. :try_end_5a} :catchall_21

    #@5a
    goto :goto_11

    #@5b
    nop

    #@5c
    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_1b
    .end packed-switch
.end method
