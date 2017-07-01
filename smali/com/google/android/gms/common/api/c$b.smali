.class Lcom/google/android/gms/common/api/c$b;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic Ek:Lcom/google/android/gms/common/api/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/c;Landroid/os/Looper;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/common/api/c$b;->Ek:Lcom/google/android/gms/common/api/c;

    #@2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    #@0
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_38

    #@5
    iget-object v0, p0, Lcom/google/android/gms/common/api/c$b;->Ek:Lcom/google/android/gms/common/api/c;

    #@7
    invoke-static {v0}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/c;)Ljava/util/concurrent/locks/Lock;

    #@a
    move-result-object v0

    #@b
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@e
    :try_start_e
    iget-object v0, p0, Lcom/google/android/gms/common/api/c$b;->Ek:Lcom/google/android/gms/common/api/c;

    #@10
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c;->isConnected()Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_23

    #@16
    iget-object v0, p0, Lcom/google/android/gms/common/api/c$b;->Ek:Lcom/google/android/gms/common/api/c;

    #@18
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c;->isConnecting()Z

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_23

    #@1e
    iget-object v0, p0, Lcom/google/android/gms/common/api/c$b;->Ek:Lcom/google/android/gms/common/api/c;

    #@20
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c;->connect()V
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_2d

    #@23
    :cond_23
    iget-object v0, p0, Lcom/google/android/gms/common/api/c$b;->Ek:Lcom/google/android/gms/common/api/c;

    #@25
    invoke-static {v0}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/c;)Ljava/util/concurrent/locks/Lock;

    #@28
    move-result-object v0

    #@29
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@2c
    :goto_2c
    return-void

    #@2d
    :catchall_2d
    move-exception v0

    #@2e
    iget-object v1, p0, Lcom/google/android/gms/common/api/c$b;->Ek:Lcom/google/android/gms/common/api/c;

    #@30
    invoke-static {v1}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/c;)Ljava/util/concurrent/locks/Lock;

    #@33
    move-result-object v1

    #@34
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@37
    throw v0

    #@38
    :cond_38
    const-string v0, "GoogleApiClientImpl"

    #@3a
    const-string v1, "Don\'t know how to handle this message."

    #@3c
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    goto :goto_2c
.end method
