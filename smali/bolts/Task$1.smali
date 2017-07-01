.class Lbolts/Task$1;
.super Ljava/lang/Object;

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->makeVoid()Lbolts/Task;
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
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/Task;


# direct methods
.method constructor <init>(Lbolts/Task;)V
    .registers 2

    #@0
    iput-object p1, p0, Lbolts/Task$1;->this$0:Lbolts/Task;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
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
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_b

    #@6
    invoke-static {}, Lbolts/Task;->cancelled()Lbolts/Task;

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1a

    #@11
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    #@14
    move-result-object v0

    #@15
    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    #@18
    move-result-object v0

    #@19
    goto :goto_a

    #@1a
    :cond_1a
    const/4 v0, 0x0

    #@1b
    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    #@1e
    move-result-object v0

    #@1f
    goto :goto_a
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    invoke-virtual {p0, p1}, Lbolts/Task$1;->then(Lbolts/Task;)Lbolts/Task;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
