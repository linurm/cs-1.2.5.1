.class final Lbolts/Task$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->completeAfterTask(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic val$continuation:Lbolts/Continuation;

.field final synthetic val$task:Lbolts/Task;

.field final synthetic val$tcs:Lbolts/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lbolts/Continuation;Lbolts/Task;Lbolts/Task$TaskCompletionSource;)V
    .registers 4

    #@0
    iput-object p1, p0, Lbolts/Task$10;->val$continuation:Lbolts/Continuation;

    #@2
    iput-object p2, p0, Lbolts/Task$10;->val$task:Lbolts/Task;

    #@4
    iput-object p3, p0, Lbolts/Task$10;->val$tcs:Lbolts/Task$TaskCompletionSource;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lbolts/Task$10;->val$continuation:Lbolts/Continuation;

    #@2
    iget-object v1, p0, Lbolts/Task$10;->val$task:Lbolts/Task;

    #@4
    invoke-interface {v0, v1}, Lbolts/Continuation;->then(Lbolts/Task;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lbolts/Task;

    #@a
    if-nez v0, :cond_13

    #@c
    iget-object v0, p0, Lbolts/Task$10;->val$tcs:Lbolts/Task$TaskCompletionSource;

    #@e
    const/4 v1, 0x0

    #@f
    invoke-virtual {v0, v1}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    #@12
    :goto_12
    return-void

    #@13
    :cond_13
    new-instance v1, Lbolts/Task$10$1;

    #@15
    invoke-direct {v1, p0}, Lbolts/Task$10$1;-><init>(Lbolts/Task$10;)V

    #@18
    invoke-virtual {v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    #@1b
    goto :goto_12

    #@1c
    :catch_1c
    move-exception v0

    #@1d
    iget-object v1, p0, Lbolts/Task$10;->val$tcs:Lbolts/Task$TaskCompletionSource;

    #@1f
    invoke-virtual {v1, v0}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    #@22
    goto :goto_12
.end method
