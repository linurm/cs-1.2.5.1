.class final Lcom/google/android/gms/internal/u$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/g;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private kC:Lcom/google/android/gms/internal/u$c;

.field private final kJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final kK:Ljava/util/concurrent/CountDownLatch;

.field private final kL:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/gms/internal/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/u$c;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/Vector;

    #@5
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/internal/u$b;->kJ:Ljava/util/List;

    #@a
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    #@c
    const/4 v1, 0x1

    #@d
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@10
    iput-object v0, p0, Lcom/google/android/gms/internal/u$b;->kK:Ljava/util/concurrent/CountDownLatch;

    #@12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@14
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@17
    iput-object v0, p0, Lcom/google/android/gms/internal/u$b;->kL:Ljava/util/concurrent/atomic/AtomicReference;

    #@19
    iput-object p1, p0, Lcom/google/android/gms/internal/u$b;->kC:Lcom/google/android/gms/internal/u$c;

    #@1b
    invoke-static {}, Lcom/google/android/gms/internal/et;->bW()Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_25

    #@21
    invoke-static {p0}, Lcom/google/android/gms/internal/en;->execute(Ljava/lang/Runnable;)V

    #@24
    :goto_24
    return-void

    #@25
    :cond_25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/u$b;->run()V

    #@28
    goto :goto_24
.end method

.method private ao()V
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->kK:Ljava/util/concurrent/CountDownLatch;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    :goto_5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    const-string v1, "Interrupted during GADSignals creation."

    #@9
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c
    goto :goto_5
.end method

.method private ap()V
    .registers 9

    #@0
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->kJ:Ljava/util/List;

    #@4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_b

    #@a
    :cond_a
    return-void

    #@b
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->kJ:Ljava/util/List;

    #@d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v3

    #@11
    :cond_11
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_a

    #@17
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, [Ljava/lang/Object;

    #@1d
    array-length v1, v0

    #@1e
    if-ne v1, v7, :cond_30

    #@20
    iget-object v1, p0, Lcom/google/android/gms/internal/u$b;->kL:Ljava/util/concurrent/atomic/AtomicReference;

    #@22
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Lcom/google/android/gms/internal/g;

    #@28
    aget-object v0, v0, v6

    #@2a
    check-cast v0, Landroid/view/MotionEvent;

    #@2c
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/g;->a(Landroid/view/MotionEvent;)V

    #@2f
    goto :goto_11

    #@30
    :cond_30
    array-length v1, v0

    #@31
    const/4 v2, 0x3

    #@32
    if-ne v1, v2, :cond_11

    #@34
    iget-object v1, p0, Lcom/google/android/gms/internal/u$b;->kL:Ljava/util/concurrent/atomic/AtomicReference;

    #@36
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@39
    move-result-object v1

    #@3a
    check-cast v1, Lcom/google/android/gms/internal/g;

    #@3c
    aget-object v2, v0, v6

    #@3e
    check-cast v2, Ljava/lang/Integer;

    #@40
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@43
    move-result v4

    #@44
    aget-object v2, v0, v7

    #@46
    check-cast v2, Ljava/lang/Integer;

    #@48
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@4b
    move-result v2

    #@4c
    const/4 v5, 0x2

    #@4d
    aget-object v0, v0, v5

    #@4f
    check-cast v0, Ljava/lang/Integer;

    #@51
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@54
    move-result v0

    #@55
    invoke-interface {v1, v4, v2, v0}, Lcom/google/android/gms/internal/g;->a(III)V

    #@58
    goto :goto_11
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/u$b;->ao()V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->kL:Ljava/util/concurrent/atomic/AtomicReference;

    #@5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_1b

    #@b
    invoke-direct {p0}, Lcom/google/android/gms/internal/u$b;->ap()V

    #@e
    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->kL:Ljava/util/concurrent/atomic/AtomicReference;

    #@10
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/google/android/gms/internal/g;

    #@16
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/g;->a(Landroid/content/Context;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    :goto_1a
    return-object v0

    #@1b
    :cond_1b
    const-string v0, ""

    #@1d
    goto :goto_1a
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/u$b;->ao()V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->kL:Ljava/util/concurrent/atomic/AtomicReference;

    #@5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_1b

    #@b
    invoke-direct {p0}, Lcom/google/android/gms/internal/u$b;->ap()V

    #@e
    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->kL:Ljava/util/concurrent/atomic/AtomicReference;

    #@10
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/google/android/gms/internal/g;

    #@16
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    :goto_1a
    return-object v0

    #@1b
    :cond_1b
    const-string v0, ""

    #@1d
    goto :goto_1a
.end method

.method public a(III)V
    .registers 8

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->kL:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/internal/g;

    #@8
    if-eqz v0, :cond_11

    #@a
    invoke-direct {p0}, Lcom/google/android/gms/internal/u$b;->ap()V

    #@d
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/g;->a(III)V

    #@10
    :goto_10
    return-void

    #@11
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->kJ:Ljava/util/List;

    #@13
    const/4 v1, 0x3

    #@14
    new-array v1, v1, [Ljava/lang/Object;

    #@16
    const/4 v2, 0x0

    #@17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v3

    #@1b
    aput-object v3, v1, v2

    #@1d
    const/4 v2, 0x1

    #@1e
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v3

    #@22
    aput-object v3, v1, v2

    #@24
    const/4 v2, 0x2

    #@25
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v3

    #@29
    aput-object v3, v1, v2

    #@2b
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2e
    goto :goto_10
.end method

.method public a(Landroid/view/MotionEvent;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->kL:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/internal/g;

    #@8
    if-eqz v0, :cond_11

    #@a
    invoke-direct {p0}, Lcom/google/android/gms/internal/u$b;->ap()V

    #@d
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/g;->a(Landroid/view/MotionEvent;)V

    #@10
    :goto_10
    return-void

    #@11
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->kJ:Ljava/util/List;

    #@13
    const/4 v1, 0x1

    #@14
    new-array v1, v1, [Ljava/lang/Object;

    #@16
    const/4 v2, 0x0

    #@17
    aput-object p1, v1, v2

    #@19
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1c
    goto :goto_10
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/u$b;->ao()V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->kL:Ljava/util/concurrent/atomic/AtomicReference;

    #@5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_1b

    #@b
    invoke-direct {p0}, Lcom/google/android/gms/internal/u$b;->ap()V

    #@e
    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->kL:Ljava/util/concurrent/atomic/AtomicReference;

    #@10
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/google/android/gms/internal/g;

    #@16
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/g;->b(Landroid/content/Context;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    :goto_1a
    return-object v0

    #@1b
    :cond_1b
    const-string v0, ""

    #@1d
    goto :goto_1a
.end method

.method public run()V
    .registers 5

    #@0
    const/4 v3, 0x0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->kL:Ljava/util/concurrent/atomic/AtomicReference;

    #@3
    iget-object v1, p0, Lcom/google/android/gms/internal/u$b;->kC:Lcom/google/android/gms/internal/u$c;

    #@5
    iget-object v1, v1, Lcom/google/android/gms/internal/u$c;->kQ:Lcom/google/android/gms/internal/ev;

    #@7
    iget-object v1, v1, Lcom/google/android/gms/internal/ev;->sw:Ljava/lang/String;

    #@9
    iget-object v2, p0, Lcom/google/android/gms/internal/u$b;->kC:Lcom/google/android/gms/internal/u$c;

    #@b
    iget-object v2, v2, Lcom/google/android/gms/internal/u$c;->kO:Landroid/content/Context;

    #@d
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/j;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/gms/internal/j;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1c

    #@14
    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->kK:Ljava/util/concurrent/CountDownLatch;

    #@16
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@19
    iput-object v3, p0, Lcom/google/android/gms/internal/u$b;->kC:Lcom/google/android/gms/internal/u$c;

    #@1b
    return-void

    #@1c
    :catchall_1c
    move-exception v0

    #@1d
    iget-object v1, p0, Lcom/google/android/gms/internal/u$b;->kK:Ljava/util/concurrent/CountDownLatch;

    #@1f
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@22
    iput-object v3, p0, Lcom/google/android/gms/internal/u$b;->kC:Lcom/google/android/gms/internal/u$c;

    #@24
    throw v0
.end method
