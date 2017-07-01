.class Lcom/google/android/gms/tagmanager/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/ContainerHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/n$a;,
        Lcom/google/android/gms/tagmanager/n$b;
    }
.end annotation


# instance fields
.field private final DF:Landroid/os/Looper;

.field private Ip:Z

.field private aeB:Lcom/google/android/gms/tagmanager/Container;

.field private aeC:Lcom/google/android/gms/tagmanager/Container;

.field private aeD:Lcom/google/android/gms/tagmanager/n$b;

.field private aeE:Lcom/google/android/gms/tagmanager/n$a;

.field private aeF:Lcom/google/android/gms/tagmanager/TagManager;

.field private yz:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/n;->yz:Lcom/google/android/gms/common/api/Status;

    #@5
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/n;->DF:Landroid/os/Looper;

    #@8
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/n$a;)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/n;->aeF:Lcom/google/android/gms/tagmanager/TagManager;

    #@5
    if-eqz p2, :cond_15

    #@7
    :goto_7
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/n;->DF:Landroid/os/Looper;

    #@9
    iput-object p3, p0, Lcom/google/android/gms/tagmanager/n;->aeB:Lcom/google/android/gms/tagmanager/Container;

    #@b
    iput-object p4, p0, Lcom/google/android/gms/tagmanager/n;->aeE:Lcom/google/android/gms/tagmanager/n$a;

    #@d
    sget-object v0, Lcom/google/android/gms/common/api/Status;->En:Lcom/google/android/gms/common/api/Status;

    #@f
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/n;->yz:Lcom/google/android/gms/common/api/Status;

    #@11
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tagmanager/TagManager;->a(Lcom/google/android/gms/tagmanager/n;)V

    #@14
    return-void

    #@15
    :cond_15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@18
    move-result-object p2

    #@19
    goto :goto_7
.end method

.method private lp()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->aeD:Lcom/google/android/gms/tagmanager/n$b;

    #@2
    if-eqz v0, :cond_f

    #@4
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->aeD:Lcom/google/android/gms/tagmanager/n$b;

    #@6
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/n;->aeC:Lcom/google/android/gms/tagmanager/Container;

    #@8
    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/Container;->lm()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/n$b;->bK(Ljava/lang/String;)V

    #@f
    :cond_f
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tagmanager/Container;)V
    .registers 3

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/n;->Ip:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    #@3
    if-eqz v0, :cond_7

    #@5
    :goto_5
    monitor-exit p0

    #@6
    return-void

    #@7
    :cond_7
    if-nez p1, :cond_12

    #@9
    :try_start_9
    const-string v0, "Unexpected null container."

    #@b
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_f

    #@e
    goto :goto_5

    #@f
    :catchall_f
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0

    #@12
    :cond_12
    :try_start_12
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/n;->aeC:Lcom/google/android/gms/tagmanager/Container;

    #@14
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/n;->lp()V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_f

    #@17
    goto :goto_5
.end method

.method public bH(Ljava/lang/String;)V
    .registers 3

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/n;->Ip:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    #@3
    if-eqz v0, :cond_7

    #@5
    :goto_5
    monitor-exit p0

    #@6
    return-void

    #@7
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->aeB:Lcom/google/android/gms/tagmanager/Container;

    #@9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/Container;->bH(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    #@c
    goto :goto_5

    #@d
    :catchall_d
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0
.end method

.method bJ(Ljava/lang/String;)V
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/n;->Ip:Z

    #@2
    if-eqz v0, :cond_a

    #@4
    const-string v0, "setCtfeUrlPathAndQuery called on a released ContainerHolder."

    #@6
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->aeE:Lcom/google/android/gms/tagmanager/n$a;

    #@c
    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/n$a;->bJ(Ljava/lang/String;)V

    #@f
    goto :goto_9
.end method

.method public getContainer()Lcom/google/android/gms/tagmanager/Container;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    monitor-enter p0

    #@2
    :try_start_2
    iget-boolean v1, p0, Lcom/google/android/gms/tagmanager/n;->Ip:Z

    #@4
    if-eqz v1, :cond_d

    #@6
    const-string v1, "ContainerHolder is released."

    #@8
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_1b

    #@b
    :goto_b
    monitor-exit p0

    #@c
    return-object v0

    #@d
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->aeC:Lcom/google/android/gms/tagmanager/Container;

    #@f
    if-eqz v0, :cond_18

    #@11
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->aeC:Lcom/google/android/gms/tagmanager/Container;

    #@13
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/n;->aeB:Lcom/google/android/gms/tagmanager/Container;

    #@15
    const/4 v0, 0x0

    #@16
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/n;->aeC:Lcom/google/android/gms/tagmanager/Container;

    #@18
    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->aeB:Lcom/google/android/gms/tagmanager/Container;
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_1b

    #@1a
    goto :goto_b

    #@1b
    :catchall_1b
    move-exception v0

    #@1c
    monitor-exit p0

    #@1d
    throw v0
.end method

.method getContainerId()Ljava/lang/String;
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/n;->Ip:Z

    #@2
    if-eqz v0, :cond_c

    #@4
    const-string v0, "getContainerId called on a released ContainerHolder."

    #@6
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@9
    const-string v0, ""

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->aeB:Lcom/google/android/gms/tagmanager/Container;

    #@e
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/Container;->getContainerId()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    goto :goto_b
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->yz:Lcom/google/android/gms/common/api/Status;

    #@2
    return-object v0
.end method

.method lo()Ljava/lang/String;
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/n;->Ip:Z

    #@2
    if-eqz v0, :cond_c

    #@4
    const-string v0, "setCtfeUrlPathAndQuery called on a released ContainerHolder."

    #@6
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@9
    const-string v0, ""

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->aeE:Lcom/google/android/gms/tagmanager/n$a;

    #@e
    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/n$a;->lo()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    goto :goto_b
.end method

.method public refresh()V
    .registers 2

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/n;->Ip:Z

    #@3
    if-eqz v0, :cond_c

    #@5
    const-string v0, "Refreshing a released ContainerHolder."

    #@7
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    #@a
    :goto_a
    monitor-exit p0

    #@b
    return-void

    #@c
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->aeE:Lcom/google/android/gms/tagmanager/n$a;

    #@e
    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/n$a;->lq()V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    #@11
    goto :goto_a

    #@12
    :catchall_12
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method

.method public release()V
    .registers 2

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/n;->Ip:Z

    #@3
    if-eqz v0, :cond_c

    #@5
    const-string v0, "Releasing a released ContainerHolder."

    #@7
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_26

    #@a
    :goto_a
    monitor-exit p0

    #@b
    return-void

    #@c
    :cond_c
    const/4 v0, 0x1

    #@d
    :try_start_d
    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/n;->Ip:Z

    #@f
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->aeF:Lcom/google/android/gms/tagmanager/TagManager;

    #@11
    invoke-virtual {v0, p0}, Lcom/google/android/gms/tagmanager/TagManager;->b(Lcom/google/android/gms/tagmanager/n;)Z

    #@14
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->aeB:Lcom/google/android/gms/tagmanager/Container;

    #@16
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/Container;->release()V

    #@19
    const/4 v0, 0x0

    #@1a
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/n;->aeB:Lcom/google/android/gms/tagmanager/Container;

    #@1c
    const/4 v0, 0x0

    #@1d
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/n;->aeC:Lcom/google/android/gms/tagmanager/Container;

    #@1f
    const/4 v0, 0x0

    #@20
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/n;->aeE:Lcom/google/android/gms/tagmanager/n$a;

    #@22
    const/4 v0, 0x0

    #@23
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/n;->aeD:Lcom/google/android/gms/tagmanager/n$b;
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_26

    #@25
    goto :goto_a

    #@26
    :catchall_26
    move-exception v0

    #@27
    monitor-exit p0

    #@28
    throw v0
.end method

.method public setContainerAvailableListener(Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;)V
    .registers 4

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/n;->Ip:Z

    #@3
    if-eqz v0, :cond_c

    #@5
    const-string v0, "ContainerHolder is released."

    #@7
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    #@a
    :cond_a
    :goto_a
    monitor-exit p0

    #@b
    return-void

    #@c
    :cond_c
    if-nez p1, :cond_15

    #@e
    const/4 v0, 0x0

    #@f
    :try_start_f
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/n;->aeD:Lcom/google/android/gms/tagmanager/n$b;
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_12

    #@11
    goto :goto_a

    #@12
    :catchall_12
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0

    #@15
    :cond_15
    :try_start_15
    new-instance v0, Lcom/google/android/gms/tagmanager/n$b;

    #@17
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/n;->DF:Landroid/os/Looper;

    #@19
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/tagmanager/n$b;-><init>(Lcom/google/android/gms/tagmanager/n;Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;Landroid/os/Looper;)V

    #@1c
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/n;->aeD:Lcom/google/android/gms/tagmanager/n$b;

    #@1e
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->aeC:Lcom/google/android/gms/tagmanager/Container;

    #@20
    if-eqz v0, :cond_a

    #@22
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/n;->lp()V
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_12

    #@25
    goto :goto_a
.end method
