.class Lcom/google/android/gms/analytics/r;
.super Lcom/google/android/gms/analytics/af;


# static fields
.field private static final tT:Ljava/lang/Object;

.field private static uf:Lcom/google/android/gms/analytics/r;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private tU:Lcom/google/android/gms/analytics/d;

.field private volatile tV:Lcom/google/android/gms/analytics/f;

.field private tW:I

.field private tX:Z

.field private tY:Z

.field private tZ:Ljava/lang/String;

.field private ua:Z

.field private ub:Z

.field private uc:Lcom/google/android/gms/analytics/e;

.field private ud:Lcom/google/android/gms/analytics/q;

.field private ue:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/analytics/r;->tT:Ljava/lang/Object;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    #@0
    const/4 v1, 0x1

    #@1
    invoke-direct {p0}, Lcom/google/android/gms/analytics/af;-><init>()V

    #@4
    const/16 v0, 0x708

    #@6
    iput v0, p0, Lcom/google/android/gms/analytics/r;->tW:I

    #@8
    iput-boolean v1, p0, Lcom/google/android/gms/analytics/r;->tX:Z

    #@a
    iput-boolean v1, p0, Lcom/google/android/gms/analytics/r;->ua:Z

    #@c
    iput-boolean v1, p0, Lcom/google/android/gms/analytics/r;->ub:Z

    #@e
    new-instance v0, Lcom/google/android/gms/analytics/r$1;

    #@10
    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/r$1;-><init>(Lcom/google/android/gms/analytics/r;)V

    #@13
    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->uc:Lcom/google/android/gms/analytics/e;

    #@15
    const/4 v0, 0x0

    #@16
    iput-boolean v0, p0, Lcom/google/android/gms/analytics/r;->ue:Z

    #@18
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/r;)Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->ua:Z

    #@2
    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/r;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/analytics/r;->tW:I

    #@2
    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/analytics/r;)Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->ue:Z

    #@2
    return v0
.end method

.method public static cE()Lcom/google/android/gms/analytics/r;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/analytics/r;->uf:Lcom/google/android/gms/analytics/r;

    #@2
    if-nez v0, :cond_b

    #@4
    new-instance v0, Lcom/google/android/gms/analytics/r;

    #@6
    invoke-direct {v0}, Lcom/google/android/gms/analytics/r;-><init>()V

    #@9
    sput-object v0, Lcom/google/android/gms/analytics/r;->uf:Lcom/google/android/gms/analytics/r;

    #@b
    :cond_b
    sget-object v0, Lcom/google/android/gms/analytics/r;->uf:Lcom/google/android/gms/analytics/r;

    #@d
    return-object v0
.end method

.method private cF()V
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/analytics/q;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/q;-><init>(Lcom/google/android/gms/analytics/af;)V

    #@5
    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->ud:Lcom/google/android/gms/analytics/q;

    #@7
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->ud:Lcom/google/android/gms/analytics/q;

    #@9
    iget-object v1, p0, Lcom/google/android/gms/analytics/r;->mContext:Landroid/content/Context;

    #@b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/q;->v(Landroid/content/Context;)V

    #@e
    return-void
.end method

.method private cG()V
    .registers 5

    #@0
    new-instance v0, Landroid/os/Handler;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/analytics/r;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@7
    move-result-object v1

    #@8
    new-instance v2, Lcom/google/android/gms/analytics/r$2;

    #@a
    invoke-direct {v2, p0}, Lcom/google/android/gms/analytics/r$2;-><init>(Lcom/google/android/gms/analytics/r;)V

    #@d
    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    #@10
    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;

    #@12
    iget v0, p0, Lcom/google/android/gms/analytics/r;->tW:I

    #@14
    if-lez v0, :cond_29

    #@16
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;

    #@18
    iget-object v1, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;

    #@1a
    const/4 v2, 0x1

    #@1b
    sget-object v3, Lcom/google/android/gms/analytics/r;->tT:Ljava/lang/Object;

    #@1d
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@20
    move-result-object v1

    #@21
    iget v2, p0, Lcom/google/android/gms/analytics/r;->tW:I

    #@23
    mul-int/lit16 v2, v2, 0x3e8

    #@25
    int-to-long v2, v2

    #@26
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@29
    :cond_29
    return-void
.end method

.method static synthetic cJ()Ljava/lang/Object;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/analytics/r;->tT:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/analytics/r;)Landroid/os/Handler;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/google/android/gms/analytics/f;)V
    .registers 4

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mContext:Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_28

    #@3
    if-eqz v0, :cond_7

    #@5
    :cond_5
    :goto_5
    monitor-exit p0

    #@6
    return-void

    #@7
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->mContext:Landroid/content/Context;

    #@d
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->tV:Lcom/google/android/gms/analytics/f;

    #@f
    if-nez v0, :cond_5

    #@11
    iput-object p2, p0, Lcom/google/android/gms/analytics/r;->tV:Lcom/google/android/gms/analytics/f;

    #@13
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->tX:Z

    #@15
    if-eqz v0, :cond_1d

    #@17
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/r;->dispatchLocalHits()V

    #@1a
    const/4 v0, 0x0

    #@1b
    iput-boolean v0, p0, Lcom/google/android/gms/analytics/r;->tX:Z

    #@1d
    :cond_1d
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->tY:Z

    #@1f
    if-eqz v0, :cond_5

    #@21
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/r;->cs()V

    #@24
    const/4 v0, 0x0

    #@25
    iput-boolean v0, p0, Lcom/google/android/gms/analytics/r;->tY:Z
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_28

    #@27
    goto :goto_5

    #@28
    :catchall_28
    move-exception v0

    #@29
    monitor-exit p0

    #@2a
    throw v0
.end method

.method a(ZZ)V
    .registers 7

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->ue:Z

    #@3
    if-ne v0, p1, :cond_b

    #@5
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->ua:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_57

    #@7
    if-ne v0, p2, :cond_b

    #@9
    :goto_9
    monitor-exit p0

    #@a
    return-void

    #@b
    :cond_b
    if-nez p1, :cond_f

    #@d
    if-nez p2, :cond_1b

    #@f
    :cond_f
    :try_start_f
    iget v0, p0, Lcom/google/android/gms/analytics/r;->tW:I

    #@11
    if-lez v0, :cond_1b

    #@13
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;

    #@15
    const/4 v1, 0x1

    #@16
    sget-object v2, Lcom/google/android/gms/analytics/r;->tT:Ljava/lang/Object;

    #@18
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    #@1b
    :cond_1b
    if-nez p1, :cond_36

    #@1d
    if-eqz p2, :cond_36

    #@1f
    iget v0, p0, Lcom/google/android/gms/analytics/r;->tW:I

    #@21
    if-lez v0, :cond_36

    #@23
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;

    #@25
    iget-object v1, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;

    #@27
    const/4 v2, 0x1

    #@28
    sget-object v3, Lcom/google/android/gms/analytics/r;->tT:Ljava/lang/Object;

    #@2a
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@2d
    move-result-object v1

    #@2e
    iget v2, p0, Lcom/google/android/gms/analytics/r;->tW:I

    #@30
    mul-int/lit16 v2, v2, 0x3e8

    #@32
    int-to-long v2, v2

    #@33
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@36
    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string v1, "PowerSaveMode "

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_40
    .catchall {:try_start_f .. :try_end_40} :catchall_57

    #@40
    move-result-object v1

    #@41
    if-nez p1, :cond_45

    #@43
    if-nez p2, :cond_5a

    #@45
    :cond_45
    const-string v0, "initiated."

    #@47
    :goto_47
    :try_start_47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@52
    iput-boolean p1, p0, Lcom/google/android/gms/analytics/r;->ue:Z

    #@54
    iput-boolean p2, p0, Lcom/google/android/gms/analytics/r;->ua:Z
    :try_end_56
    .catchall {:try_start_47 .. :try_end_56} :catchall_57

    #@56
    goto :goto_9

    #@57
    :catchall_57
    move-exception v0

    #@58
    monitor-exit p0

    #@59
    throw v0

    #@5a
    :cond_5a
    const-string v0, "terminated."

    #@5c
    goto :goto_47
.end method

.method cH()Lcom/google/android/gms/analytics/d;
    .registers 4

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->tU:Lcom/google/android/gms/analytics/d;

    #@3
    if-nez v0, :cond_31

    #@5
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mContext:Landroid/content/Context;

    #@7
    if-nez v0, :cond_14

    #@9
    new-instance v0, Ljava/lang/IllegalStateException;

    #@b
    const-string v1, "Cant get a store unless we have a context"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_11

    #@11
    :catchall_11
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0

    #@14
    :cond_14
    :try_start_14
    new-instance v0, Lcom/google/android/gms/analytics/ac;

    #@16
    iget-object v1, p0, Lcom/google/android/gms/analytics/r;->uc:Lcom/google/android/gms/analytics/e;

    #@18
    iget-object v2, p0, Lcom/google/android/gms/analytics/r;->mContext:Landroid/content/Context;

    #@1a
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/analytics/ac;-><init>(Lcom/google/android/gms/analytics/e;Landroid/content/Context;)V

    #@1d
    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->tU:Lcom/google/android/gms/analytics/d;

    #@1f
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->tZ:Ljava/lang/String;

    #@21
    if-eqz v0, :cond_31

    #@23
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->tU:Lcom/google/android/gms/analytics/d;

    #@25
    invoke-interface {v0}, Lcom/google/android/gms/analytics/d;->cr()Lcom/google/android/gms/analytics/n;

    #@28
    move-result-object v0

    #@29
    iget-object v1, p0, Lcom/google/android/gms/analytics/r;->tZ:Ljava/lang/String;

    #@2b
    invoke-interface {v0, v1}, Lcom/google/android/gms/analytics/n;->M(Ljava/lang/String;)V

    #@2e
    const/4 v0, 0x0

    #@2f
    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->tZ:Ljava/lang/String;

    #@31
    :cond_31
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;

    #@33
    if-nez v0, :cond_38

    #@35
    invoke-direct {p0}, Lcom/google/android/gms/analytics/r;->cG()V

    #@38
    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->ud:Lcom/google/android/gms/analytics/q;

    #@3a
    if-nez v0, :cond_43

    #@3c
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->ub:Z

    #@3e
    if-eqz v0, :cond_43

    #@40
    invoke-direct {p0}, Lcom/google/android/gms/analytics/r;->cF()V

    #@43
    :cond_43
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->tU:Lcom/google/android/gms/analytics/d;
    :try_end_45
    .catchall {:try_start_14 .. :try_end_45} :catchall_11

    #@45
    monitor-exit p0

    #@46
    return-object v0
.end method

.method cI()V
    .registers 5

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->ue:Z

    #@3
    if-nez v0, :cond_23

    #@5
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->ua:Z

    #@7
    if-eqz v0, :cond_23

    #@9
    iget v0, p0, Lcom/google/android/gms/analytics/r;->tW:I

    #@b
    if-lez v0, :cond_23

    #@d
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;

    #@f
    const/4 v1, 0x1

    #@10
    sget-object v2, Lcom/google/android/gms/analytics/r;->tT:Ljava/lang/Object;

    #@12
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    #@15
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;

    #@17
    iget-object v1, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;

    #@19
    const/4 v2, 0x1

    #@1a
    sget-object v3, Lcom/google/android/gms/analytics/r;->tT:Ljava/lang/Object;

    #@1c
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    #@23
    :cond_23
    monitor-exit p0

    #@24
    return-void

    #@25
    :catchall_25
    move-exception v0

    #@26
    monitor-exit p0

    #@27
    throw v0
.end method

.method cs()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->tV:Lcom/google/android/gms/analytics/f;

    #@2
    if-nez v0, :cond_d

    #@4
    const-string v0, "setForceLocalDispatch() queued. It will be called once initialization is complete."

    #@6
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@9
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Lcom/google/android/gms/analytics/r;->tY:Z

    #@c
    :goto_c
    return-void

    #@d
    :cond_d
    invoke-static {}, Lcom/google/android/gms/analytics/u;->cU()Lcom/google/android/gms/analytics/u;

    #@10
    move-result-object v0

    #@11
    sget-object v1, Lcom/google/android/gms/analytics/u$a;->wb:Lcom/google/android/gms/analytics/u$a;

    #@13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->tV:Lcom/google/android/gms/analytics/f;

    #@18
    invoke-interface {v0}, Lcom/google/android/gms/analytics/f;->cs()V

    #@1b
    goto :goto_c
.end method

.method dispatchLocalHits()V
    .registers 3

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->tV:Lcom/google/android/gms/analytics/f;

    #@3
    if-nez v0, :cond_f

    #@5
    const-string v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    #@7
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@a
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Lcom/google/android/gms/analytics/r;->tX:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1e

    #@d
    :goto_d
    monitor-exit p0

    #@e
    return-void

    #@f
    :cond_f
    :try_start_f
    invoke-static {}, Lcom/google/android/gms/analytics/u;->cU()Lcom/google/android/gms/analytics/u;

    #@12
    move-result-object v0

    #@13
    sget-object v1, Lcom/google/android/gms/analytics/u$a;->vO:Lcom/google/android/gms/analytics/u$a;

    #@15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V

    #@18
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->tV:Lcom/google/android/gms/analytics/f;

    #@1a
    invoke-interface {v0}, Lcom/google/android/gms/analytics/f;->cq()V
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_1e

    #@1d
    goto :goto_d

    #@1e
    :catchall_1e
    move-exception v0

    #@1f
    monitor-exit p0

    #@20
    throw v0
.end method

.method setLocalDispatchPeriod(I)V
    .registers 6

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;

    #@3
    if-nez v0, :cond_e

    #@5
    const-string v0, "Dispatch period set with null handler. Dispatch will run once initialization is complete."

    #@7
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@a
    iput p1, p0, Lcom/google/android/gms/analytics/r;->tW:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_49

    #@c
    :cond_c
    :goto_c
    monitor-exit p0

    #@d
    return-void

    #@e
    :cond_e
    :try_start_e
    invoke-static {}, Lcom/google/android/gms/analytics/u;->cU()Lcom/google/android/gms/analytics/u;

    #@11
    move-result-object v0

    #@12
    sget-object v1, Lcom/google/android/gms/analytics/u$a;->vP:Lcom/google/android/gms/analytics/u$a;

    #@14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V

    #@17
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->ue:Z

    #@19
    if-nez v0, :cond_2b

    #@1b
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->ua:Z

    #@1d
    if-eqz v0, :cond_2b

    #@1f
    iget v0, p0, Lcom/google/android/gms/analytics/r;->tW:I

    #@21
    if-lez v0, :cond_2b

    #@23
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;

    #@25
    const/4 v1, 0x1

    #@26
    sget-object v2, Lcom/google/android/gms/analytics/r;->tT:Ljava/lang/Object;

    #@28
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    #@2b
    :cond_2b
    iput p1, p0, Lcom/google/android/gms/analytics/r;->tW:I

    #@2d
    if-lez p1, :cond_c

    #@2f
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->ue:Z

    #@31
    if-nez v0, :cond_c

    #@33
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->ua:Z

    #@35
    if-eqz v0, :cond_c

    #@37
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;

    #@39
    iget-object v1, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;

    #@3b
    const/4 v2, 0x1

    #@3c
    sget-object v3, Lcom/google/android/gms/analytics/r;->tT:Ljava/lang/Object;

    #@3e
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@41
    move-result-object v1

    #@42
    mul-int/lit16 v2, p1, 0x3e8

    #@44
    int-to-long v2, v2

    #@45
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_48
    .catchall {:try_start_e .. :try_end_48} :catchall_49

    #@48
    goto :goto_c

    #@49
    :catchall_49
    move-exception v0

    #@4a
    monitor-exit p0

    #@4b
    throw v0
.end method

.method t(Z)V
    .registers 3

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->ue:Z

    #@3
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/r;->a(ZZ)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    #@6
    monitor-exit p0

    #@7
    return-void

    #@8
    :catchall_8
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method
