.class Lcom/google/android/gms/tagmanager/cx;
.super Lcom/google/android/gms/tagmanager/cw;


# static fields
.field private static ahU:Lcom/google/android/gms/tagmanager/cx;

.field private static final tT:Ljava/lang/Object;


# instance fields
.field private ahK:Landroid/content/Context;

.field private ahL:Lcom/google/android/gms/tagmanager/at;

.field private volatile ahM:Lcom/google/android/gms/tagmanager/ar;

.field private ahN:I

.field private ahO:Z

.field private ahP:Z

.field private ahQ:Z

.field private ahR:Lcom/google/android/gms/tagmanager/au;

.field private ahS:Lcom/google/android/gms/tagmanager/bn;

.field private ahT:Z

.field private connected:Z

.field private handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/tagmanager/cx;->tT:Ljava/lang/Object;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 4

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/cw;-><init>()V

    #@5
    const v0, 0x1b7740

    #@8
    iput v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahN:I

    #@a
    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/cx;->ahO:Z

    #@c
    iput-boolean v2, p0, Lcom/google/android/gms/tagmanager/cx;->ahP:Z

    #@e
    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/cx;->connected:Z

    #@10
    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/cx;->ahQ:Z

    #@12
    new-instance v0, Lcom/google/android/gms/tagmanager/cx$1;

    #@14
    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/cx$1;-><init>(Lcom/google/android/gms/tagmanager/cx;)V

    #@17
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahR:Lcom/google/android/gms/tagmanager/au;

    #@19
    iput-boolean v2, p0, Lcom/google/android/gms/tagmanager/cx;->ahT:Z

    #@1b
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/cx;)Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/cx;->connected:Z

    #@2
    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/tagmanager/cx;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahN:I

    #@2
    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/tagmanager/cx;)Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahT:Z

    #@2
    return v0
.end method

.method private cF()V
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/tagmanager/bn;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/bn;-><init>(Lcom/google/android/gms/tagmanager/cw;)V

    #@5
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahS:Lcom/google/android/gms/tagmanager/bn;

    #@7
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahS:Lcom/google/android/gms/tagmanager/bn;

    #@9
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cx;->ahK:Landroid/content/Context;

    #@b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/bn;->v(Landroid/content/Context;)V

    #@e
    return-void
.end method

.method private cG()V
    .registers 5

    #@0
    new-instance v0, Landroid/os/Handler;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cx;->ahK:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@7
    move-result-object v1

    #@8
    new-instance v2, Lcom/google/android/gms/tagmanager/cx$2;

    #@a
    invoke-direct {v2, p0}, Lcom/google/android/gms/tagmanager/cx$2;-><init>(Lcom/google/android/gms/tagmanager/cx;)V

    #@d
    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    #@10
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->handler:Landroid/os/Handler;

    #@12
    iget v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahN:I

    #@14
    if-lez v0, :cond_27

    #@16
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->handler:Landroid/os/Handler;

    #@18
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cx;->handler:Landroid/os/Handler;

    #@1a
    const/4 v2, 0x1

    #@1b
    sget-object v3, Lcom/google/android/gms/tagmanager/cx;->tT:Ljava/lang/Object;

    #@1d
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@20
    move-result-object v1

    #@21
    iget v2, p0, Lcom/google/android/gms/tagmanager/cx;->ahN:I

    #@23
    int-to-long v2, v2

    #@24
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@27
    :cond_27
    return-void
.end method

.method static synthetic cJ()Ljava/lang/Object;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/cx;->tT:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/tagmanager/cx;)Landroid/os/Handler;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->handler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/tagmanager/cx;)Lcom/google/android/gms/tagmanager/at;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahL:Lcom/google/android/gms/tagmanager/at;

    #@2
    return-object v0
.end method

.method public static mQ()Lcom/google/android/gms/tagmanager/cx;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/cx;->ahU:Lcom/google/android/gms/tagmanager/cx;

    #@2
    if-nez v0, :cond_b

    #@4
    new-instance v0, Lcom/google/android/gms/tagmanager/cx;

    #@6
    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/cx;-><init>()V

    #@9
    sput-object v0, Lcom/google/android/gms/tagmanager/cx;->ahU:Lcom/google/android/gms/tagmanager/cx;

    #@b
    :cond_b
    sget-object v0, Lcom/google/android/gms/tagmanager/cx;->ahU:Lcom/google/android/gms/tagmanager/cx;

    #@d
    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/google/android/gms/tagmanager/ar;)V
    .registers 4

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahK:Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

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
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahK:Landroid/content/Context;

    #@d
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahM:Lcom/google/android/gms/tagmanager/ar;

    #@f
    if-nez v0, :cond_5

    #@11
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/cx;->ahM:Lcom/google/android/gms/tagmanager/ar;
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_14

    #@13
    goto :goto_5

    #@14
    :catchall_14
    move-exception v0

    #@15
    monitor-exit p0

    #@16
    throw v0
.end method

.method a(ZZ)V
    .registers 7

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahT:Z

    #@3
    if-ne v0, p1, :cond_b

    #@5
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/cx;->connected:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_55

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
    iget v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahN:I

    #@11
    if-lez v0, :cond_1b

    #@13
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->handler:Landroid/os/Handler;

    #@15
    const/4 v1, 0x1

    #@16
    sget-object v2, Lcom/google/android/gms/tagmanager/cx;->tT:Ljava/lang/Object;

    #@18
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    #@1b
    :cond_1b
    if-nez p1, :cond_34

    #@1d
    if-eqz p2, :cond_34

    #@1f
    iget v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahN:I

    #@21
    if-lez v0, :cond_34

    #@23
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->handler:Landroid/os/Handler;

    #@25
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cx;->handler:Landroid/os/Handler;

    #@27
    const/4 v2, 0x1

    #@28
    sget-object v3, Lcom/google/android/gms/tagmanager/cx;->tT:Ljava/lang/Object;

    #@2a
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@2d
    move-result-object v1

    #@2e
    iget v2, p0, Lcom/google/android/gms/tagmanager/cx;->ahN:I

    #@30
    int-to-long v2, v2

    #@31
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@34
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string v1, "PowerSaveMode "

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3e
    .catchall {:try_start_f .. :try_end_3e} :catchall_55

    #@3e
    move-result-object v1

    #@3f
    if-nez p1, :cond_43

    #@41
    if-nez p2, :cond_58

    #@43
    :cond_43
    const-string v0, "initiated."

    #@45
    :goto_45
    :try_start_45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V

    #@50
    iput-boolean p1, p0, Lcom/google/android/gms/tagmanager/cx;->ahT:Z

    #@52
    iput-boolean p2, p0, Lcom/google/android/gms/tagmanager/cx;->connected:Z
    :try_end_54
    .catchall {:try_start_45 .. :try_end_54} :catchall_55

    #@54
    goto :goto_9

    #@55
    :catchall_55
    move-exception v0

    #@56
    monitor-exit p0

    #@57
    throw v0

    #@58
    :cond_58
    const-string v0, "terminated."

    #@5a
    goto :goto_45
.end method

.method cI()V
    .registers 5

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahT:Z

    #@3
    if-nez v0, :cond_23

    #@5
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/cx;->connected:Z

    #@7
    if-eqz v0, :cond_23

    #@9
    iget v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahN:I

    #@b
    if-lez v0, :cond_23

    #@d
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->handler:Landroid/os/Handler;

    #@f
    const/4 v1, 0x1

    #@10
    sget-object v2, Lcom/google/android/gms/tagmanager/cx;->tT:Ljava/lang/Object;

    #@12
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    #@15
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->handler:Landroid/os/Handler;

    #@17
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cx;->handler:Landroid/os/Handler;

    #@19
    const/4 v2, 0x1

    #@1a
    sget-object v3, Lcom/google/android/gms/tagmanager/cx;->tT:Ljava/lang/Object;

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

.method public cq()V
    .registers 3

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahP:Z

    #@3
    if-nez v0, :cond_f

    #@5
    const-string v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    #@7
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V

    #@a
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahO:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1a

    #@d
    :goto_d
    monitor-exit p0

    #@e
    return-void

    #@f
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahM:Lcom/google/android/gms/tagmanager/ar;

    #@11
    new-instance v1, Lcom/google/android/gms/tagmanager/cx$3;

    #@13
    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/cx$3;-><init>(Lcom/google/android/gms/tagmanager/cx;)V

    #@16
    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/ar;->a(Ljava/lang/Runnable;)V
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_1a

    #@19
    goto :goto_d

    #@1a
    :catchall_1a
    move-exception v0

    #@1b
    monitor-exit p0

    #@1c
    throw v0
.end method

.method mR()Lcom/google/android/gms/tagmanager/at;
    .registers 4

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahL:Lcom/google/android/gms/tagmanager/at;

    #@3
    if-nez v0, :cond_1f

    #@5
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahK:Landroid/content/Context;

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
    new-instance v0, Lcom/google/android/gms/tagmanager/ca;

    #@16
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cx;->ahR:Lcom/google/android/gms/tagmanager/au;

    #@18
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/cx;->ahK:Landroid/content/Context;

    #@1a
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/ca;-><init>(Lcom/google/android/gms/tagmanager/au;Landroid/content/Context;)V

    #@1d
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahL:Lcom/google/android/gms/tagmanager/at;

    #@1f
    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->handler:Landroid/os/Handler;

    #@21
    if-nez v0, :cond_26

    #@23
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/cx;->cG()V

    #@26
    :cond_26
    const/4 v0, 0x1

    #@27
    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahP:Z

    #@29
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahO:Z

    #@2b
    if-eqz v0, :cond_33

    #@2d
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/cx;->cq()V

    #@30
    const/4 v0, 0x0

    #@31
    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahO:Z

    #@33
    :cond_33
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahS:Lcom/google/android/gms/tagmanager/bn;

    #@35
    if-nez v0, :cond_3e

    #@37
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahQ:Z

    #@39
    if-eqz v0, :cond_3e

    #@3b
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/cx;->cF()V

    #@3e
    :cond_3e
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahL:Lcom/google/android/gms/tagmanager/at;
    :try_end_40
    .catchall {:try_start_14 .. :try_end_40} :catchall_11

    #@40
    monitor-exit p0

    #@41
    return-object v0
.end method

.method t(Z)V
    .registers 3

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahT:Z

    #@3
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tagmanager/cx;->a(ZZ)V
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
