.class Lbolts/Task$6;
.super Ljava/lang/Object;

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/Task;

.field final synthetic val$continuation:Lbolts/Continuation;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$tcs:Lbolts/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lbolts/Task;Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Ljava/util/concurrent/Executor;)V
    .registers 5

    #@0
    iput-object p1, p0, Lbolts/Task$6;->this$0:Lbolts/Task;

    #@2
    iput-object p2, p0, Lbolts/Task$6;->val$tcs:Lbolts/Task$TaskCompletionSource;

    #@4
    iput-object p3, p0, Lbolts/Task$6;->val$continuation:Lbolts/Continuation;

    #@6
    iput-object p4, p0, Lbolts/Task$6;->val$executor:Ljava/util/concurrent/Executor;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
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
    invoke-virtual {p0, p1}, Lbolts/Task$6;->then(Lbolts/Task;)Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<TTResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lbolts/Task$6;->val$tcs:Lbolts/Task$TaskCompletionSource;

    #@2
    iget-object v1, p0, Lbolts/Task$6;->val$continuation:Lbolts/Continuation;

    #@4
    iget-object v2, p0, Lbolts/Task$6;->val$executor:Ljava/util/concurrent/Executor;

    #@6
    # invokes: Lbolts/Task;->completeAfterTask(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;)V
    invoke-static {v0, v1, p1, v2}, Lbolts/Task;->access$400(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;)V

    #@9
    const/4 v0, 0x0

    #@a
    return-object v0
.end method
