.class final Lbolts/Task$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->completeImmediately(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;)V
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
    iput-object p1, p0, Lbolts/Task$9;->val$continuation:Lbolts/Continuation;

    #@2
    iput-object p2, p0, Lbolts/Task$9;->val$task:Lbolts/Task;

    #@4
    iput-object p3, p0, Lbolts/Task$9;->val$tcs:Lbolts/Task$TaskCompletionSource;

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
    iget-object v0, p0, Lbolts/Task$9;->val$continuation:Lbolts/Continuation;

    #@2
    iget-object v1, p0, Lbolts/Task$9;->val$task:Lbolts/Task;

    #@4
    invoke-interface {v0, v1}, Lbolts/Continuation;->then(Lbolts/Task;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    iget-object v1, p0, Lbolts/Task$9;->val$tcs:Lbolts/Task$TaskCompletionSource;

    #@a
    invoke-virtual {v1, v0}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    #@d
    :goto_d
    return-void

    #@e
    :catch_e
    move-exception v0

    #@f
    iget-object v1, p0, Lbolts/Task$9;->val$tcs:Lbolts/Task$TaskCompletionSource;

    #@11
    invoke-virtual {v1, v0}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    #@14
    goto :goto_d
.end method
