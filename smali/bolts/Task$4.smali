.class Lbolts/Task$4;
.super Ljava/lang/Object;

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->continueWhile(Ljava/util/concurrent/Callable;Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Void;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/Task;

.field final synthetic val$continuation:Lbolts/Continuation;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$predicate:Ljava/util/concurrent/Callable;

.field final synthetic val$predicateContinuation:Lbolts/Capture;


# direct methods
.method constructor <init>(Lbolts/Task;Ljava/util/concurrent/Callable;Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/Capture;)V
    .registers 6

    #@0
    iput-object p1, p0, Lbolts/Task$4;->this$0:Lbolts/Task;

    #@2
    iput-object p2, p0, Lbolts/Task$4;->val$predicate:Ljava/util/concurrent/Callable;

    #@4
    iput-object p3, p0, Lbolts/Task$4;->val$continuation:Lbolts/Continuation;

    #@6
    iput-object p4, p0, Lbolts/Task$4;->val$executor:Ljava/util/concurrent/Executor;

    #@8
    iput-object p5, p0, Lbolts/Task$4;->val$predicateContinuation:Lbolts/Capture;

    #@a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lbolts/Task$4;->val$predicate:Ljava/util/concurrent/Callable;

    #@3
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/lang/Boolean;

    #@9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_2a

    #@f
    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    #@12
    move-result-object v0

    #@13
    iget-object v1, p0, Lbolts/Task$4;->val$continuation:Lbolts/Continuation;

    #@15
    iget-object v2, p0, Lbolts/Task$4;->val$executor:Ljava/util/concurrent/Executor;

    #@17
    invoke-virtual {v0, v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    #@1a
    move-result-object v1

    #@1b
    iget-object v0, p0, Lbolts/Task$4;->val$predicateContinuation:Lbolts/Capture;

    #@1d
    invoke-virtual {v0}, Lbolts/Capture;->get()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lbolts/Continuation;

    #@23
    iget-object v2, p0, Lbolts/Task$4;->val$executor:Ljava/util/concurrent/Executor;

    #@25
    invoke-virtual {v1, v0, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    #@28
    move-result-object v0

    #@29
    :goto_29
    return-object v0

    #@2a
    :cond_2a
    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    #@2d
    move-result-object v0

    #@2e
    goto :goto_29
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    invoke-virtual {p0, p1}, Lbolts/Task$4;->then(Lbolts/Task;)Lbolts/Task;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
