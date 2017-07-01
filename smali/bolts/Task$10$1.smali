.class Lbolts/Task$10$1;
.super Ljava/lang/Object;

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<TTContinuationResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/Task$10;


# direct methods
.method constructor <init>(Lbolts/Task$10;)V
    .registers 2

    #@0
    iput-object p1, p0, Lbolts/Task$10$1;->this$0:Lbolts/Task$10;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    invoke-virtual {p0, p1}, Lbolts/Task$10$1;->then(Lbolts/Task;)Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<TTContinuationResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    #@0
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_f

    #@6
    iget-object v0, p0, Lbolts/Task$10$1;->this$0:Lbolts/Task$10;

    #@8
    iget-object v0, v0, Lbolts/Task$10;->val$tcs:Lbolts/Task$TaskCompletionSource;

    #@a
    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->setCancelled()V

    #@d
    :goto_d
    const/4 v0, 0x0

    #@e
    return-object v0

    #@f
    :cond_f
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_21

    #@15
    iget-object v0, p0, Lbolts/Task$10$1;->this$0:Lbolts/Task$10;

    #@17
    iget-object v0, v0, Lbolts/Task$10;->val$tcs:Lbolts/Task$TaskCompletionSource;

    #@19
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v0, v1}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    #@20
    goto :goto_d

    #@21
    :cond_21
    iget-object v0, p0, Lbolts/Task$10$1;->this$0:Lbolts/Task$10;

    #@23
    iget-object v0, v0, Lbolts/Task$10;->val$tcs:Lbolts/Task$TaskCompletionSource;

    #@25
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v0, v1}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    #@2c
    goto :goto_d
.end method
