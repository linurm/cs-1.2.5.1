.class Lbolts/Task$ImmediateExecutor;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImmediateExecutor"
.end annotation


# static fields
.field private static final MAX_DEPTH:I = 0xf


# instance fields
.field private executionDepth:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/lang/ThreadLocal;

    #@5
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@8
    iput-object v0, p0, Lbolts/Task$ImmediateExecutor;->executionDepth:Ljava/lang/ThreadLocal;

    #@a
    return-void
.end method

.method synthetic constructor <init>(Lbolts/Task$1;)V
    .registers 2

    #@0
    invoke-direct {p0}, Lbolts/Task$ImmediateExecutor;-><init>()V

    #@3
    return-void
.end method

.method private decrementDepth()I
    .registers 4

    #@0
    iget-object v0, p0, Lbolts/Task$ImmediateExecutor;->executionDepth:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Integer;

    #@8
    if-nez v0, :cond_f

    #@a
    const/4 v0, 0x0

    #@b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v0

    #@f
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@12
    move-result v0

    #@13
    add-int/lit8 v0, v0, -0x1

    #@15
    if-nez v0, :cond_1d

    #@17
    iget-object v1, p0, Lbolts/Task$ImmediateExecutor;->executionDepth:Ljava/lang/ThreadLocal;

    #@19
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    #@1c
    :goto_1c
    return v0

    #@1d
    :cond_1d
    iget-object v1, p0, Lbolts/Task$ImmediateExecutor;->executionDepth:Ljava/lang/ThreadLocal;

    #@1f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@26
    goto :goto_1c
.end method

.method private incrementDepth()I
    .registers 4

    #@0
    iget-object v0, p0, Lbolts/Task$ImmediateExecutor;->executionDepth:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Integer;

    #@8
    if-nez v0, :cond_f

    #@a
    const/4 v0, 0x0

    #@b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v0

    #@f
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@12
    move-result v0

    #@13
    add-int/lit8 v0, v0, 0x1

    #@15
    iget-object v1, p0, Lbolts/Task$ImmediateExecutor;->executionDepth:Ljava/lang/ThreadLocal;

    #@17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@1e
    return v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 4

    #@0
    invoke-direct {p0}, Lbolts/Task$ImmediateExecutor;->incrementDepth()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0xf

    #@6
    if-gt v0, v1, :cond_f

    #@8
    :try_start_8
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_15

    #@b
    :goto_b
    invoke-direct {p0}, Lbolts/Task$ImmediateExecutor;->decrementDepth()I

    #@e
    return-void

    #@f
    :cond_f
    :try_start_f
    sget-object v0, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    #@11
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_15

    #@14
    goto :goto_b

    #@15
    :catchall_15
    move-exception v0

    #@16
    invoke-direct {p0}, Lbolts/Task$ImmediateExecutor;->decrementDepth()I

    #@19
    throw v0
.end method
