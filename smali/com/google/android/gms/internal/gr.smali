.class public final Lcom/google/android/gms/internal/gr;
.super Ljava/lang/Object;


# static fields
.field private static final BG:Lcom/google/android/gms/internal/gn;

.field public static final CN:Ljava/lang/Object;


# instance fields
.field private CJ:J

.field private CK:J

.field private CL:J

.field private CM:Lcom/google/android/gms/internal/gq;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/internal/gn;

    #@2
    const-string v1, "RequestTracker"

    #@4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gn;-><init>(Ljava/lang/String;)V

    #@7
    sput-object v0, Lcom/google/android/gms/internal/gr;->BG:Lcom/google/android/gms/internal/gn;

    #@9
    new-instance v0, Ljava/lang/Object;

    #@b
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@e
    sput-object v0, Lcom/google/android/gms/internal/gr;->CN:Ljava/lang/Object;

    #@10
    return-void
.end method

.method public constructor <init>(J)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-wide p1, p0, Lcom/google/android/gms/internal/gr;->CJ:J

    #@5
    const-wide/16 v0, -0x1

    #@7
    iput-wide v0, p0, Lcom/google/android/gms/internal/gr;->CK:J

    #@9
    const-wide/16 v0, 0x0

    #@b
    iput-wide v0, p0, Lcom/google/android/gms/internal/gr;->CL:J

    #@d
    return-void
.end method

.method private eu()V
    .registers 3

    #@0
    const-wide/16 v0, -0x1

    #@2
    iput-wide v0, p0, Lcom/google/android/gms/internal/gr;->CK:J

    #@4
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Lcom/google/android/gms/internal/gr;->CM:Lcom/google/android/gms/internal/gq;

    #@7
    const-wide/16 v0, 0x0

    #@9
    iput-wide v0, p0, Lcom/google/android/gms/internal/gr;->CL:J

    #@b
    return-void
.end method


# virtual methods
.method public a(JLcom/google/android/gms/internal/gq;)V
    .registers 11

    #@0
    sget-object v1, Lcom/google/android/gms/internal/gr;->CN:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/gr;->CM:Lcom/google/android/gms/internal/gq;

    #@5
    iget-wide v2, p0, Lcom/google/android/gms/internal/gr;->CK:J

    #@7
    iput-wide p1, p0, Lcom/google/android/gms/internal/gr;->CK:J

    #@9
    iput-object p3, p0, Lcom/google/android/gms/internal/gr;->CM:Lcom/google/android/gms/internal/gq;

    #@b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@e
    move-result-wide v4

    #@f
    iput-wide v4, p0, Lcom/google/android/gms/internal/gr;->CL:J

    #@11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_18

    #@12
    if-eqz v0, :cond_17

    #@14
    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/gq;->n(J)V

    #@17
    :cond_17
    return-void

    #@18
    :catchall_18
    move-exception v0

    #@19
    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    #@1a
    throw v0
.end method

.method public b(JILorg/json/JSONObject;)Z
    .registers 14

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v0, 0x0

    #@3
    sget-object v3, Lcom/google/android/gms/internal/gr;->CN:Ljava/lang/Object;

    #@5
    monitor-enter v3

    #@6
    :try_start_6
    iget-wide v4, p0, Lcom/google/android/gms/internal/gr;->CK:J

    #@8
    const-wide/16 v6, -0x1

    #@a
    cmp-long v4, v4, v6

    #@c
    if-eqz v4, :cond_36

    #@e
    iget-wide v4, p0, Lcom/google/android/gms/internal/gr;->CK:J

    #@10
    cmp-long v4, v4, p1

    #@12
    if-nez v4, :cond_36

    #@14
    sget-object v0, Lcom/google/android/gms/internal/gr;->BG:Lcom/google/android/gms/internal/gn;

    #@16
    const-string v2, "request %d completed"

    #@18
    const/4 v4, 0x1

    #@19
    new-array v4, v4, [Ljava/lang/Object;

    #@1b
    const/4 v5, 0x0

    #@1c
    iget-wide v6, p0, Lcom/google/android/gms/internal/gr;->CK:J

    #@1e
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@21
    move-result-object v6

    #@22
    aput-object v6, v4, v5

    #@24
    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/internal/gn;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    #@27
    iget-object v0, p0, Lcom/google/android/gms/internal/gr;->CM:Lcom/google/android/gms/internal/gq;

    #@29
    invoke-direct {p0}, Lcom/google/android/gms/internal/gr;->eu()V

    #@2c
    :goto_2c
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_33

    #@2d
    if-eqz v0, :cond_32

    #@2f
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/gq;->a(JILorg/json/JSONObject;)V

    #@32
    :cond_32
    return v1

    #@33
    :catchall_33
    move-exception v0

    #@34
    :try_start_34
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    #@35
    throw v0

    #@36
    :cond_36
    move v1, v2

    #@37
    goto :goto_2c
.end method

.method public c(JI)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/gr;->b(JILorg/json/JSONObject;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public clear()V
    .registers 7

    #@0
    sget-object v1, Lcom/google/android/gms/internal/gr;->CN:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/gr;->CK:J

    #@5
    const-wide/16 v4, -0x1

    #@7
    cmp-long v0, v2, v4

    #@9
    if-eqz v0, :cond_e

    #@b
    invoke-direct {p0}, Lcom/google/android/gms/internal/gr;->eu()V

    #@e
    :cond_e
    monitor-exit v1

    #@f
    return-void

    #@10
    :catchall_10
    move-exception v0

    #@11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    #@12
    throw v0
.end method

.method public d(JI)Z
    .registers 15

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v0, 0x0

    #@3
    const-wide/16 v4, 0x0

    #@5
    sget-object v3, Lcom/google/android/gms/internal/gr;->CN:Ljava/lang/Object;

    #@7
    monitor-enter v3

    #@8
    :try_start_8
    iget-wide v6, p0, Lcom/google/android/gms/internal/gr;->CK:J

    #@a
    const-wide/16 v8, -0x1

    #@c
    cmp-long v6, v6, v8

    #@e
    if-eqz v6, :cond_3e

    #@10
    iget-wide v6, p0, Lcom/google/android/gms/internal/gr;->CL:J

    #@12
    sub-long v6, p1, v6

    #@14
    iget-wide v8, p0, Lcom/google/android/gms/internal/gr;->CJ:J

    #@16
    cmp-long v6, v6, v8

    #@18
    if-ltz v6, :cond_3e

    #@1a
    sget-object v0, Lcom/google/android/gms/internal/gr;->BG:Lcom/google/android/gms/internal/gn;

    #@1c
    const-string v4, "request %d timed out"

    #@1e
    const/4 v5, 0x1

    #@1f
    new-array v5, v5, [Ljava/lang/Object;

    #@21
    const/4 v6, 0x0

    #@22
    iget-wide v8, p0, Lcom/google/android/gms/internal/gr;->CK:J

    #@24
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@27
    move-result-object v7

    #@28
    aput-object v7, v5, v6

    #@2a
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/gn;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    #@2d
    iget-wide v4, p0, Lcom/google/android/gms/internal/gr;->CK:J

    #@2f
    iget-object v0, p0, Lcom/google/android/gms/internal/gr;->CM:Lcom/google/android/gms/internal/gq;

    #@31
    invoke-direct {p0}, Lcom/google/android/gms/internal/gr;->eu()V

    #@34
    :goto_34
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3b

    #@35
    if-eqz v0, :cond_3a

    #@37
    invoke-interface {v0, v4, v5, p3, v1}, Lcom/google/android/gms/internal/gq;->a(JILorg/json/JSONObject;)V

    #@3a
    :cond_3a
    return v2

    #@3b
    :catchall_3b
    move-exception v0

    #@3c
    :try_start_3c
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    #@3d
    throw v0

    #@3e
    :cond_3e
    move v2, v0

    #@3f
    move-object v0, v1

    #@40
    goto :goto_34
.end method

.method public ev()Z
    .registers 7

    #@0
    sget-object v1, Lcom/google/android/gms/internal/gr;->CN:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/gr;->CK:J

    #@5
    const-wide/16 v4, -0x1

    #@7
    cmp-long v0, v2, v4

    #@9
    if-eqz v0, :cond_e

    #@b
    const/4 v0, 0x1

    #@c
    :goto_c
    monitor-exit v1

    #@d
    return v0

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    goto :goto_c

    #@10
    :catchall_10
    move-exception v0

    #@11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    #@12
    throw v0
.end method

.method public p(J)Z
    .registers 10

    #@0
    sget-object v1, Lcom/google/android/gms/internal/gr;->CN:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/gr;->CK:J

    #@5
    const-wide/16 v4, -0x1

    #@7
    cmp-long v0, v2, v4

    #@9
    if-eqz v0, :cond_14

    #@b
    iget-wide v2, p0, Lcom/google/android/gms/internal/gr;->CK:J

    #@d
    cmp-long v0, v2, p1

    #@f
    if-nez v0, :cond_14

    #@11
    const/4 v0, 0x1

    #@12
    :goto_12
    monitor-exit v1

    #@13
    return v0

    #@14
    :cond_14
    const/4 v0, 0x0

    #@15
    goto :goto_12

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
