.class final Lcom/apportable/utils/ThreadUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/utils/ThreadUtils;->runOnThread(Ljava/lang/Runnable;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/apportable/activity/VerdeActivity;

.field final synthetic val$finished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/apportable/activity/VerdeActivity;Ljava/lang/Runnable;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/apportable/utils/ThreadUtils$1;->val$activity:Lcom/apportable/activity/VerdeActivity;

    #@2
    iput-object p2, p0, Lcom/apportable/utils/ThreadUtils$1;->val$r:Ljava/lang/Runnable;

    #@4
    iput-object p3, p0, Lcom/apportable/utils/ThreadUtils$1;->val$finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    #@0
    iget-object v1, p0, Lcom/apportable/utils/ThreadUtils$1;->val$activity:Lcom/apportable/activity/VerdeActivity;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/apportable/utils/ThreadUtils$1;->val$r:Ljava/lang/Runnable;

    #@5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@8
    iget-object v0, p0, Lcom/apportable/utils/ThreadUtils$1;->val$finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a
    const/4 v2, 0x1

    #@b
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@e
    iget-object v0, p0, Lcom/apportable/utils/ThreadUtils$1;->val$activity:Lcom/apportable/activity/VerdeActivity;

    #@10
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    #@13
    monitor-exit v1

    #@14
    return-void

    #@15
    :catchall_15
    move-exception v0

    #@16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    #@17
    throw v0
.end method
