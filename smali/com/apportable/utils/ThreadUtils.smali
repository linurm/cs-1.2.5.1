.class public Lcom/apportable/utils/ThreadUtils;
.super Ljava/lang/Object;


# static fields
.field public static final GL_THREAD:I = 0x1

.field public static final UI_THREAD:I


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static runOnGlThread(Ljava/lang/Runnable;)V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    invoke-static {p0, v0}, Lcom/apportable/utils/ThreadUtils;->runOnThread(Ljava/lang/Runnable;I)V

    #@4
    return-void
.end method

.method public static runOnGlThread(Ljava/lang/Runnable;Z)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    invoke-static {p0, p1, v0}, Lcom/apportable/utils/ThreadUtils;->runOnThread(Ljava/lang/Runnable;ZI)V

    #@4
    return-void
.end method

.method public static runOnThread(Ljava/lang/Runnable;I)V
    .registers 3

    #@0
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0, p1}, Lcom/apportable/activity/VerdeActivity;->runOnThread(Ljava/lang/Runnable;I)V

    #@7
    return-void
.end method

.method public static runOnThread(Ljava/lang/Runnable;ZI)V
    .registers 6

    #@0
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@3
    move-result-object v1

    #@4
    if-eqz p1, :cond_26

    #@6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@8
    const/4 v2, 0x0

    #@9
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@c
    new-instance v2, Lcom/apportable/utils/ThreadUtils$1;

    #@e
    invoke-direct {v2, v1, p0, v0}, Lcom/apportable/utils/ThreadUtils$1;-><init>(Lcom/apportable/activity/VerdeActivity;Ljava/lang/Runnable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    #@11
    invoke-static {v2, p2}, Lcom/apportable/utils/ThreadUtils;->runOnThread(Ljava/lang/Runnable;I)V

    #@14
    monitor-enter v1

    #@15
    :goto_15
    :try_start_15
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_23

    #@18
    move-result v2

    #@19
    if-nez v2, :cond_21

    #@1b
    :try_start_1b
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_1f
    .catchall {:try_start_1b .. :try_end_1e} :catchall_23

    #@1e
    goto :goto_15

    #@1f
    :catch_1f
    move-exception v2

    #@20
    goto :goto_15

    #@21
    :cond_21
    :try_start_21
    monitor-exit v1

    #@22
    :goto_22
    return-void

    #@23
    :catchall_23
    move-exception v0

    #@24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_23

    #@25
    throw v0

    #@26
    :cond_26
    new-instance v0, Lcom/apportable/utils/ThreadUtils$2;

    #@28
    invoke-direct {v0, p0}, Lcom/apportable/utils/ThreadUtils$2;-><init>(Ljava/lang/Runnable;)V

    #@2b
    invoke-static {v0, p2}, Lcom/apportable/utils/ThreadUtils;->runOnThread(Ljava/lang/Runnable;I)V

    #@2e
    goto :goto_22
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Lcom/apportable/utils/ThreadUtils;->runOnThread(Ljava/lang/Runnable;I)V

    #@4
    return-void
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;Z)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Lcom/apportable/utils/ThreadUtils;->runOnThread(Ljava/lang/Runnable;ZI)V

    #@4
    return-void
.end method
