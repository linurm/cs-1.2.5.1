.class public Lcom/google/android/gms/internal/eg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/eg$a;
    }
.end annotation


# instance fields
.field private final ls:Ljava/lang/Object;

.field private qO:Z

.field private final rD:Lcom/google/android/gms/internal/eh;

.field private final rE:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/gms/internal/eg$a;",
            ">;"
        }
    .end annotation
.end field

.field private final rF:Ljava/lang/String;

.field private final rG:Ljava/lang/String;

.field private rH:J

.field private rI:J

.field private rJ:J

.field private rK:J

.field private rL:J

.field private rM:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/eh;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    #@0
    const-wide/16 v2, -0x1

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Lcom/google/android/gms/internal/eg;->ls:Ljava/lang/Object;

    #@c
    iput-wide v2, p0, Lcom/google/android/gms/internal/eg;->rH:J

    #@e
    iput-wide v2, p0, Lcom/google/android/gms/internal/eg;->rI:J

    #@10
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Lcom/google/android/gms/internal/eg;->qO:Z

    #@13
    iput-wide v2, p0, Lcom/google/android/gms/internal/eg;->rJ:J

    #@15
    const-wide/16 v0, 0x0

    #@17
    iput-wide v0, p0, Lcom/google/android/gms/internal/eg;->rK:J

    #@19
    iput-wide v2, p0, Lcom/google/android/gms/internal/eg;->rL:J

    #@1b
    iput-wide v2, p0, Lcom/google/android/gms/internal/eg;->rM:J

    #@1d
    iput-object p1, p0, Lcom/google/android/gms/internal/eg;->rD:Lcom/google/android/gms/internal/eh;

    #@1f
    iput-object p2, p0, Lcom/google/android/gms/internal/eg;->rF:Ljava/lang/String;

    #@21
    iput-object p3, p0, Lcom/google/android/gms/internal/eg;->rG:Ljava/lang/String;

    #@23
    new-instance v0, Ljava/util/LinkedList;

    #@25
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@28
    iput-object v0, p0, Lcom/google/android/gms/internal/eg;->rE:Ljava/util/LinkedList;

    #@2a
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    invoke-static {}, Lcom/google/android/gms/internal/eh;->bH()Lcom/google/android/gms/internal/eh;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/eg;-><init>(Lcom/google/android/gms/internal/eh;Ljava/lang/String;Ljava/lang/String;)V

    #@7
    return-void
.end method


# virtual methods
.method public bB()V
    .registers 7

    #@0
    const-wide/16 v4, -0x1

    #@2
    iget-object v1, p0, Lcom/google/android/gms/internal/eg;->ls:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    :try_start_5
    iget-wide v2, p0, Lcom/google/android/gms/internal/eg;->rM:J

    #@7
    cmp-long v0, v2, v4

    #@9
    if-eqz v0, :cond_1c

    #@b
    iget-wide v2, p0, Lcom/google/android/gms/internal/eg;->rI:J

    #@d
    cmp-long v0, v2, v4

    #@f
    if-nez v0, :cond_1c

    #@11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@14
    move-result-wide v2

    #@15
    iput-wide v2, p0, Lcom/google/android/gms/internal/eg;->rI:J

    #@17
    iget-object v0, p0, Lcom/google/android/gms/internal/eg;->rD:Lcom/google/android/gms/internal/eh;

    #@19
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/eh;->a(Lcom/google/android/gms/internal/eg;)V

    #@1c
    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/eg;->rD:Lcom/google/android/gms/internal/eh;

    #@1e
    invoke-static {}, Lcom/google/android/gms/internal/eh;->bK()Lcom/google/android/gms/internal/ei;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ei;->bB()V

    #@25
    monitor-exit v1

    #@26
    return-void

    #@27
    :catchall_27
    move-exception v0

    #@28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_27

    #@29
    throw v0
.end method

.method public bC()V
    .registers 7

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/eg;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/eg;->rM:J

    #@5
    const-wide/16 v4, -0x1

    #@7
    cmp-long v0, v2, v4

    #@9
    if-eqz v0, :cond_2d

    #@b
    new-instance v0, Lcom/google/android/gms/internal/eg$a;

    #@d
    invoke-direct {v0}, Lcom/google/android/gms/internal/eg$a;-><init>()V

    #@10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/eg$a;->bG()V

    #@13
    iget-object v2, p0, Lcom/google/android/gms/internal/eg;->rE:Ljava/util/LinkedList;

    #@15
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@18
    iget-wide v2, p0, Lcom/google/android/gms/internal/eg;->rK:J

    #@1a
    const-wide/16 v4, 0x1

    #@1c
    add-long/2addr v2, v4

    #@1d
    iput-wide v2, p0, Lcom/google/android/gms/internal/eg;->rK:J

    #@1f
    iget-object v0, p0, Lcom/google/android/gms/internal/eg;->rD:Lcom/google/android/gms/internal/eh;

    #@21
    invoke-static {}, Lcom/google/android/gms/internal/eh;->bK()Lcom/google/android/gms/internal/ei;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ei;->bC()V

    #@28
    iget-object v0, p0, Lcom/google/android/gms/internal/eg;->rD:Lcom/google/android/gms/internal/eh;

    #@2a
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/eh;->a(Lcom/google/android/gms/internal/eg;)V

    #@2d
    :cond_2d
    monitor-exit v1

    #@2e
    return-void

    #@2f
    :catchall_2f
    move-exception v0

    #@30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    #@31
    throw v0
.end method

.method public bD()V
    .registers 7

    #@0
    const-wide/16 v4, -0x1

    #@2
    iget-object v1, p0, Lcom/google/android/gms/internal/eg;->ls:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    :try_start_5
    iget-wide v2, p0, Lcom/google/android/gms/internal/eg;->rM:J

    #@7
    cmp-long v0, v2, v4

    #@9
    if-eqz v0, :cond_2b

    #@b
    iget-object v0, p0, Lcom/google/android/gms/internal/eg;->rE:Ljava/util/LinkedList;

    #@d
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_2b

    #@13
    iget-object v0, p0, Lcom/google/android/gms/internal/eg;->rE:Ljava/util/LinkedList;

    #@15
    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/google/android/gms/internal/eg$a;

    #@1b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/eg$a;->bE()J

    #@1e
    move-result-wide v2

    #@1f
    cmp-long v2, v2, v4

    #@21
    if-nez v2, :cond_2b

    #@23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/eg$a;->bF()V

    #@26
    iget-object v0, p0, Lcom/google/android/gms/internal/eg;->rD:Lcom/google/android/gms/internal/eh;

    #@28
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/eh;->a(Lcom/google/android/gms/internal/eg;)V

    #@2b
    :cond_2b
    monitor-exit v1

    #@2c
    return-void

    #@2d
    :catchall_2d
    move-exception v0

    #@2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_2d

    #@2f
    throw v0
.end method

.method public f(Lcom/google/android/gms/internal/ai;)V
    .registers 6

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/eg;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@6
    move-result-wide v2

    #@7
    iput-wide v2, p0, Lcom/google/android/gms/internal/eg;->rL:J

    #@9
    iget-object v0, p0, Lcom/google/android/gms/internal/eg;->rD:Lcom/google/android/gms/internal/eh;

    #@b
    invoke-static {}, Lcom/google/android/gms/internal/eh;->bK()Lcom/google/android/gms/internal/ei;

    #@e
    move-result-object v0

    #@f
    iget-wide v2, p0, Lcom/google/android/gms/internal/eg;->rL:J

    #@11
    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/internal/ei;->b(Lcom/google/android/gms/internal/ai;J)V

    #@14
    monitor-exit v1

    #@15
    return-void

    #@16
    :catchall_16
    move-exception v0

    #@17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    #@18
    throw v0
.end method

.method public j(J)V
    .registers 10

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/eg;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iput-wide p1, p0, Lcom/google/android/gms/internal/eg;->rM:J

    #@5
    iget-wide v2, p0, Lcom/google/android/gms/internal/eg;->rM:J

    #@7
    const-wide/16 v4, -0x1

    #@9
    cmp-long v0, v2, v4

    #@b
    if-eqz v0, :cond_12

    #@d
    iget-object v0, p0, Lcom/google/android/gms/internal/eg;->rD:Lcom/google/android/gms/internal/eh;

    #@f
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/eh;->a(Lcom/google/android/gms/internal/eg;)V

    #@12
    :cond_12
    monitor-exit v1

    #@13
    return-void

    #@14
    :catchall_14
    move-exception v0

    #@15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    #@16
    throw v0
.end method

.method public k(J)V
    .registers 10

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/eg;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/eg;->rM:J

    #@5
    const-wide/16 v4, -0x1

    #@7
    cmp-long v0, v2, v4

    #@9
    if-eqz v0, :cond_12

    #@b
    iput-wide p1, p0, Lcom/google/android/gms/internal/eg;->rH:J

    #@d
    iget-object v0, p0, Lcom/google/android/gms/internal/eg;->rD:Lcom/google/android/gms/internal/eh;

    #@f
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/eh;->a(Lcom/google/android/gms/internal/eg;)V

    #@12
    :cond_12
    monitor-exit v1

    #@13
    return-void

    #@14
    :catchall_14
    move-exception v0

    #@15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    #@16
    throw v0
.end method

.method public n(Z)V
    .registers 8

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/eg;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/eg;->rM:J

    #@5
    const-wide/16 v4, -0x1

    #@7
    cmp-long v0, v2, v4

    #@9
    if-eqz v0, :cond_1c

    #@b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@e
    move-result-wide v2

    #@f
    iput-wide v2, p0, Lcom/google/android/gms/internal/eg;->rJ:J

    #@11
    if-nez p1, :cond_1c

    #@13
    iget-wide v2, p0, Lcom/google/android/gms/internal/eg;->rJ:J

    #@15
    iput-wide v2, p0, Lcom/google/android/gms/internal/eg;->rI:J

    #@17
    iget-object v0, p0, Lcom/google/android/gms/internal/eg;->rD:Lcom/google/android/gms/internal/eh;

    #@19
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/eh;->a(Lcom/google/android/gms/internal/eg;)V

    #@1c
    :cond_1c
    monitor-exit v1

    #@1d
    return-void

    #@1e
    :catchall_1e
    move-exception v0

    #@1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    #@20
    throw v0
.end method

.method public o(Z)V
    .registers 8

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/eg;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/eg;->rM:J

    #@5
    const-wide/16 v4, -0x1

    #@7
    cmp-long v0, v2, v4

    #@9
    if-eqz v0, :cond_12

    #@b
    iput-boolean p1, p0, Lcom/google/android/gms/internal/eg;->qO:Z

    #@d
    iget-object v0, p0, Lcom/google/android/gms/internal/eg;->rD:Lcom/google/android/gms/internal/eh;

    #@f
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/eh;->a(Lcom/google/android/gms/internal/eg;)V

    #@12
    :cond_12
    monitor-exit v1

    #@13
    return-void

    #@14
    :catchall_14
    move-exception v0

    #@15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    #@16
    throw v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 7

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/eg;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    new-instance v2, Landroid/os/Bundle;

    #@5
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    #@8
    const-string v0, "seqnum"

    #@a
    iget-object v3, p0, Lcom/google/android/gms/internal/eg;->rF:Ljava/lang/String;

    #@c
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    const-string v0, "slotid"

    #@11
    iget-object v3, p0, Lcom/google/android/gms/internal/eg;->rG:Ljava/lang/String;

    #@13
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    const-string v0, "ismediation"

    #@18
    iget-boolean v3, p0, Lcom/google/android/gms/internal/eg;->qO:Z

    #@1a
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@1d
    const-string v0, "treq"

    #@1f
    iget-wide v4, p0, Lcom/google/android/gms/internal/eg;->rL:J

    #@21
    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@24
    const-string v0, "tresponse"

    #@26
    iget-wide v4, p0, Lcom/google/android/gms/internal/eg;->rM:J

    #@28
    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@2b
    const-string v0, "timp"

    #@2d
    iget-wide v4, p0, Lcom/google/android/gms/internal/eg;->rI:J

    #@2f
    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@32
    const-string v0, "tload"

    #@34
    iget-wide v4, p0, Lcom/google/android/gms/internal/eg;->rJ:J

    #@36
    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@39
    const-string v0, "pcc"

    #@3b
    iget-wide v4, p0, Lcom/google/android/gms/internal/eg;->rK:J

    #@3d
    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@40
    const-string v0, "tfetch"

    #@42
    iget-wide v4, p0, Lcom/google/android/gms/internal/eg;->rH:J

    #@44
    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@47
    new-instance v3, Ljava/util/ArrayList;

    #@49
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@4c
    iget-object v0, p0, Lcom/google/android/gms/internal/eg;->rE:Ljava/util/LinkedList;

    #@4e
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    #@51
    move-result-object v4

    #@52
    :goto_52
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@55
    move-result v0

    #@56
    if-eqz v0, :cond_69

    #@58
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5b
    move-result-object v0

    #@5c
    check-cast v0, Lcom/google/android/gms/internal/eg$a;

    #@5e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/eg$a;->toBundle()Landroid/os/Bundle;

    #@61
    move-result-object v0

    #@62
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@65
    goto :goto_52

    #@66
    :catchall_66
    move-exception v0

    #@67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_66

    #@68
    throw v0

    #@69
    :cond_69
    :try_start_69
    const-string v0, "tclick"

    #@6b
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@6e
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_66

    #@6f
    return-object v2
.end method
