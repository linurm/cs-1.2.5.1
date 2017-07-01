.class final Lcom/google/android/gms/internal/hc$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic Gu:Lcom/google/android/gms/internal/hc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hc;Landroid/os/Looper;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/hc$a;->Gu:Lcom/google/android/gms/internal/hc;

    #@2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    #@0
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_48

    #@5
    iget-object v0, p0, Lcom/google/android/gms/internal/hc$a;->Gu:Lcom/google/android/gms/internal/hc;

    #@7
    invoke-static {v0}, Lcom/google/android/gms/internal/hc;->a(Lcom/google/android/gms/internal/hc;)Ljava/util/ArrayList;

    #@a
    move-result-object v1

    #@b
    monitor-enter v1

    #@c
    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/hc$a;->Gu:Lcom/google/android/gms/internal/hc;

    #@e
    invoke-static {v0}, Lcom/google/android/gms/internal/hc;->b(Lcom/google/android/gms/internal/hc;)Lcom/google/android/gms/internal/hc$b;

    #@11
    move-result-object v0

    #@12
    invoke-interface {v0}, Lcom/google/android/gms/internal/hc$b;->eO()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_43

    #@18
    iget-object v0, p0, Lcom/google/android/gms/internal/hc$a;->Gu:Lcom/google/android/gms/internal/hc;

    #@1a
    invoke-static {v0}, Lcom/google/android/gms/internal/hc;->b(Lcom/google/android/gms/internal/hc;)Lcom/google/android/gms/internal/hc$b;

    #@1d
    move-result-object v0

    #@1e
    invoke-interface {v0}, Lcom/google/android/gms/internal/hc$b;->isConnected()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_43

    #@24
    iget-object v0, p0, Lcom/google/android/gms/internal/hc$a;->Gu:Lcom/google/android/gms/internal/hc;

    #@26
    invoke-static {v0}, Lcom/google/android/gms/internal/hc;->a(Lcom/google/android/gms/internal/hc;)Ljava/util/ArrayList;

    #@29
    move-result-object v0

    #@2a
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_43

    #@32
    iget-object v0, p0, Lcom/google/android/gms/internal/hc$a;->Gu:Lcom/google/android/gms/internal/hc;

    #@34
    invoke-static {v0}, Lcom/google/android/gms/internal/hc;->b(Lcom/google/android/gms/internal/hc;)Lcom/google/android/gms/internal/hc$b;

    #@37
    move-result-object v0

    #@38
    invoke-interface {v0}, Lcom/google/android/gms/internal/hc$b;->ef()Landroid/os/Bundle;

    #@3b
    move-result-object v2

    #@3c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3e
    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    #@40
    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;->onConnected(Landroid/os/Bundle;)V

    #@43
    :cond_43
    monitor-exit v1

    #@44
    :goto_44
    return-void

    #@45
    :catchall_45
    move-exception v0

    #@46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_c .. :try_end_47} :catchall_45

    #@47
    throw v0

    #@48
    :cond_48
    const-string v0, "GmsClientEvents"

    #@4a
    const-string v1, "Don\'t know how to handle this message."

    #@4c
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    goto :goto_44
.end method
