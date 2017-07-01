.class Lcom/google/android/gms/wearable/WearableListenerService$a;
.super Lcom/google/android/gms/wearable/internal/ac$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/WearableListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic alu:Lcom/google/android/gms/wearable/WearableListenerService;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wearable/WearableListenerService;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alu:Lcom/google/android/gms/wearable/WearableListenerService;

    #@2
    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/ac$a;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wearable/WearableListenerService;Lcom/google/android/gms/wearable/WearableListenerService$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/WearableListenerService$a;-><init>(Lcom/google/android/gms/wearable/WearableListenerService;)V

    #@3
    return-void
.end method


# virtual methods
.method public Y(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 5

    #@0
    const-string v0, "WearableLS"

    #@2
    const/4 v1, 0x3

    #@3
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_31

    #@9
    const-string v0, "WearableLS"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string v2, "onDataItemChanged: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    iget-object v2, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alu:Lcom/google/android/gms/wearable/WearableListenerService;

    #@18
    invoke-static {v2}, Lcom/google/android/gms/wearable/WearableListenerService;->a(Lcom/google/android/gms/wearable/WearableListenerService;)Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    const-string v2, ": "

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    :cond_31
    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alu:Lcom/google/android/gms/wearable/WearableListenerService;

    #@33
    invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->b(Lcom/google/android/gms/wearable/WearableListenerService;)V

    #@36
    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alu:Lcom/google/android/gms/wearable/WearableListenerService;

    #@38
    invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->c(Lcom/google/android/gms/wearable/WearableListenerService;)Ljava/lang/Object;

    #@3b
    move-result-object v1

    #@3c
    monitor-enter v1

    #@3d
    :try_start_3d
    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alu:Lcom/google/android/gms/wearable/WearableListenerService;

    #@3f
    invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->d(Lcom/google/android/gms/wearable/WearableListenerService;)Z

    #@42
    move-result v0

    #@43
    if-eqz v0, :cond_4a

    #@45
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    #@48
    monitor-exit v1

    #@49
    :goto_49
    return-void

    #@4a
    :cond_4a
    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alu:Lcom/google/android/gms/wearable/WearableListenerService;

    #@4c
    invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->e(Lcom/google/android/gms/wearable/WearableListenerService;)Landroid/os/Handler;

    #@4f
    move-result-object v0

    #@50
    new-instance v2, Lcom/google/android/gms/wearable/WearableListenerService$a$1;

    #@52
    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/wearable/WearableListenerService$a$1;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$a;Lcom/google/android/gms/common/data/DataHolder;)V

    #@55
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@58
    monitor-exit v1

    #@59
    goto :goto_49

    #@5a
    :catchall_5a
    move-exception v0

    #@5b
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_3d .. :try_end_5c} :catchall_5a

    #@5c
    throw v0
.end method

.method public a(Lcom/google/android/gms/wearable/internal/af;)V
    .registers 5

    #@0
    const-string v0, "WearableLS"

    #@2
    const/4 v1, 0x3

    #@3
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_21

    #@9
    const-string v0, "WearableLS"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string v2, "onMessageReceived: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alu:Lcom/google/android/gms/wearable/WearableListenerService;

    #@23
    invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->b(Lcom/google/android/gms/wearable/WearableListenerService;)V

    #@26
    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alu:Lcom/google/android/gms/wearable/WearableListenerService;

    #@28
    invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->c(Lcom/google/android/gms/wearable/WearableListenerService;)Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    monitor-enter v1

    #@2d
    :try_start_2d
    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alu:Lcom/google/android/gms/wearable/WearableListenerService;

    #@2f
    invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->d(Lcom/google/android/gms/wearable/WearableListenerService;)Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_37

    #@35
    monitor-exit v1

    #@36
    :goto_36
    return-void

    #@37
    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alu:Lcom/google/android/gms/wearable/WearableListenerService;

    #@39
    invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->e(Lcom/google/android/gms/wearable/WearableListenerService;)Landroid/os/Handler;

    #@3c
    move-result-object v0

    #@3d
    new-instance v2, Lcom/google/android/gms/wearable/WearableListenerService$a$2;

    #@3f
    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/wearable/WearableListenerService$a$2;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$a;Lcom/google/android/gms/wearable/internal/af;)V

    #@42
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@45
    monitor-exit v1

    #@46
    goto :goto_36

    #@47
    :catchall_47
    move-exception v0

    #@48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_2d .. :try_end_49} :catchall_47

    #@49
    throw v0
.end method

.method public a(Lcom/google/android/gms/wearable/internal/ai;)V
    .registers 5

    #@0
    const-string v0, "WearableLS"

    #@2
    const/4 v1, 0x3

    #@3
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_31

    #@9
    const-string v0, "WearableLS"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string v2, "onPeerConnected: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    iget-object v2, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alu:Lcom/google/android/gms/wearable/WearableListenerService;

    #@18
    invoke-static {v2}, Lcom/google/android/gms/wearable/WearableListenerService;->a(Lcom/google/android/gms/wearable/WearableListenerService;)Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    const-string v2, ": "

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    :cond_31
    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alu:Lcom/google/android/gms/wearable/WearableListenerService;

    #@33
    invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->b(Lcom/google/android/gms/wearable/WearableListenerService;)V

    #@36
    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alu:Lcom/google/android/gms/wearable/WearableListenerService;

    #@38
    invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->c(Lcom/google/android/gms/wearable/WearableListenerService;)Ljava/lang/Object;

    #@3b
    move-result-object v1

    #@3c
    monitor-enter v1

    #@3d
    :try_start_3d
    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alu:Lcom/google/android/gms/wearable/WearableListenerService;

    #@3f
    invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->d(Lcom/google/android/gms/wearable/WearableListenerService;)Z

    #@42
    move-result v0

    #@43
    if-eqz v0, :cond_47

    #@45
    monitor-exit v1

    #@46
    :goto_46
    return-void

    #@47
    :cond_47
    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alu:Lcom/google/android/gms/wearable/WearableListenerService;

    #@49
    invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->e(Lcom/google/android/gms/wearable/WearableListenerService;)Landroid/os/Handler;

    #@4c
    move-result-object v0

    #@4d
    new-instance v2, Lcom/google/android/gms/wearable/WearableListenerService$a$3;

    #@4f
    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/wearable/WearableListenerService$a$3;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$a;Lcom/google/android/gms/wearable/internal/ai;)V

    #@52
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@55
    monitor-exit v1

    #@56
    goto :goto_46

    #@57
    :catchall_57
    move-exception v0

    #@58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_3d .. :try_end_59} :catchall_57

    #@59
    throw v0
.end method

.method public b(Lcom/google/android/gms/wearable/internal/ai;)V
    .registers 5

    #@0
    const-string v0, "WearableLS"

    #@2
    const/4 v1, 0x3

    #@3
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_31

    #@9
    const-string v0, "WearableLS"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string v2, "onPeerDisconnected: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    iget-object v2, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alu:Lcom/google/android/gms/wearable/WearableListenerService;

    #@18
    invoke-static {v2}, Lcom/google/android/gms/wearable/WearableListenerService;->a(Lcom/google/android/gms/wearable/WearableListenerService;)Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    const-string v2, ": "

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    :cond_31
    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alu:Lcom/google/android/gms/wearable/WearableListenerService;

    #@33
    invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->b(Lcom/google/android/gms/wearable/WearableListenerService;)V

    #@36
    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alu:Lcom/google/android/gms/wearable/WearableListenerService;

    #@38
    invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->c(Lcom/google/android/gms/wearable/WearableListenerService;)Ljava/lang/Object;

    #@3b
    move-result-object v1

    #@3c
    monitor-enter v1

    #@3d
    :try_start_3d
    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alu:Lcom/google/android/gms/wearable/WearableListenerService;

    #@3f
    invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->d(Lcom/google/android/gms/wearable/WearableListenerService;)Z

    #@42
    move-result v0

    #@43
    if-eqz v0, :cond_47

    #@45
    monitor-exit v1

    #@46
    :goto_46
    return-void

    #@47
    :cond_47
    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alu:Lcom/google/android/gms/wearable/WearableListenerService;

    #@49
    invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->e(Lcom/google/android/gms/wearable/WearableListenerService;)Landroid/os/Handler;

    #@4c
    move-result-object v0

    #@4d
    new-instance v2, Lcom/google/android/gms/wearable/WearableListenerService$a$4;

    #@4f
    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/wearable/WearableListenerService$a$4;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$a;Lcom/google/android/gms/wearable/internal/ai;)V

    #@52
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@55
    monitor-exit v1

    #@56
    goto :goto_46

    #@57
    :catchall_57
    move-exception v0

    #@58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_3d .. :try_end_59} :catchall_57

    #@59
    throw v0
.end method
