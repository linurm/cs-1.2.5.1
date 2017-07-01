.class final Lbolts/Task$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic val$callable:Ljava/util/concurrent/Callable;

.field final synthetic val$tcs:Lbolts/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lbolts/Task$TaskCompletionSource;Ljava/util/concurrent/Callable;)V
    .registers 3

    #@0
    iput-object p1, p0, Lbolts/Task$2;->val$tcs:Lbolts/Task$TaskCompletionSource;

    #@2
    iput-object p2, p0, Lbolts/Task$2;->val$callable:Ljava/util/concurrent/Callable;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lbolts/Task$2;->val$tcs:Lbolts/Task$TaskCompletionSource;

    #@2
    iget-object v1, p0, Lbolts/Task$2;->val$callable:Ljava/util/concurrent/Callable;

    #@4
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    #@b
    :goto_b
    return-void

    #@c
    :catch_c
    move-exception v0

    #@d
    iget-object v1, p0, Lbolts/Task$2;->val$tcs:Lbolts/Task$TaskCompletionSource;

    #@f
    invoke-virtual {v1, v0}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    #@12
    goto :goto_b
.end method
