.class Lbolts/Task$7;
.super Ljava/lang/Object;

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<TTResult;",
        "Lbolts/Task",
        "<TTContinuationResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/Task;

.field final synthetic val$continuation:Lbolts/Continuation;


# direct methods
.method constructor <init>(Lbolts/Task;Lbolts/Continuation;)V
    .registers 3

    #@0
    iput-object p1, p0, Lbolts/Task$7;->this$0:Lbolts/Task;

    #@2
    iput-object p2, p0, Lbolts/Task$7;->val$continuation:Lbolts/Continuation;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<TTResult;>;)",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    #@0
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_f

    #@6
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    #@9
    move-result-object v0

    #@a
    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    #@d
    move-result-object v0

    #@e
    :goto_e
    return-object v0

    #@f
    :cond_f
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1a

    #@15
    invoke-static {}, Lbolts/Task;->cancelled()Lbolts/Task;

    #@18
    move-result-object v0

    #@19
    goto :goto_e

    #@1a
    :cond_1a
    iget-object v0, p0, Lbolts/Task$7;->val$continuation:Lbolts/Continuation;

    #@1c
    invoke-virtual {p1, v0}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    #@1f
    move-result-object v0

    #@20
    goto :goto_e
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    invoke-virtual {p0, p1}, Lbolts/Task$7;->then(Lbolts/Task;)Lbolts/Task;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
