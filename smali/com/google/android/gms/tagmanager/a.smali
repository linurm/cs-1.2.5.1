.class Lcom/google/android/gms/tagmanager/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/a$a;
    }
.end annotation


# static fields
.field private static aeh:Lcom/google/android/gms/tagmanager/a;

.field private static tq:Ljava/lang/Object;


# instance fields
.field private volatile aec:J

.field private volatile aed:J

.field private volatile aee:J

.field private final aef:Lcom/google/android/gms/internal/ij;

.field private aeg:Lcom/google/android/gms/tagmanager/a$a;

.field private volatile mClosed:Z

.field private final mContext:Landroid/content/Context;

.field private final sf:Ljava/lang/Thread;

.field private volatile ts:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/tagmanager/a;->tq:Ljava/lang/Object;

    #@7
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {}, Lcom/google/android/gms/internal/il;->gb()Lcom/google/android/gms/internal/ij;

    #@4
    move-result-object v1

    #@5
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/tagmanager/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/a$a;Lcom/google/android/gms/internal/ij;)V

    #@8
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/a$a;Lcom/google/android/gms/internal/ij;)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-wide/32 v0, 0xdbba0

    #@6
    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/a;->aec:J

    #@8
    const-wide/16 v0, 0x7530

    #@a
    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/a;->aed:J

    #@c
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/a;->mClosed:Z

    #@f
    new-instance v0, Lcom/google/android/gms/tagmanager/a$1;

    #@11
    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/a$1;-><init>(Lcom/google/android/gms/tagmanager/a;)V

    #@14
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/a;->aeg:Lcom/google/android/gms/tagmanager/a$a;

    #@16
    iput-object p3, p0, Lcom/google/android/gms/tagmanager/a;->aef:Lcom/google/android/gms/internal/ij;

    #@18
    if-eqz p1, :cond_31

    #@1a
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/a;->mContext:Landroid/content/Context;

    #@20
    :goto_20
    if-eqz p2, :cond_24

    #@22
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/a;->aeg:Lcom/google/android/gms/tagmanager/a$a;

    #@24
    :cond_24
    new-instance v0, Ljava/lang/Thread;

    #@26
    new-instance v1, Lcom/google/android/gms/tagmanager/a$2;

    #@28
    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/a$2;-><init>(Lcom/google/android/gms/tagmanager/a;)V

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@2e
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/a;->sf:Ljava/lang/Thread;

    #@30
    return-void

    #@31
    :cond_31
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/a;->mContext:Landroid/content/Context;

    #@33
    goto :goto_20
.end method

.method static M(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/a;
    .registers 3

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/a;->aeh:Lcom/google/android/gms/tagmanager/a;

    #@2
    if-nez v0, :cond_18

    #@4
    sget-object v1, Lcom/google/android/gms/tagmanager/a;->tq:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    :try_start_7
    sget-object v0, Lcom/google/android/gms/tagmanager/a;->aeh:Lcom/google/android/gms/tagmanager/a;

    #@9
    if-nez v0, :cond_17

    #@b
    new-instance v0, Lcom/google/android/gms/tagmanager/a;

    #@d
    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/a;-><init>(Landroid/content/Context;)V

    #@10
    sput-object v0, Lcom/google/android/gms/tagmanager/a;->aeh:Lcom/google/android/gms/tagmanager/a;

    #@12
    sget-object v0, Lcom/google/android/gms/tagmanager/a;->aeh:Lcom/google/android/gms/tagmanager/a;

    #@14
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/a;->start()V

    #@17
    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1b

    #@18
    :cond_18
    sget-object v0, Lcom/google/android/gms/tagmanager/a;->aeh:Lcom/google/android/gms/tagmanager/a;

    #@1a
    return-object v0

    #@1b
    :catchall_1b
    move-exception v0

    #@1c
    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    #@1d
    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/a;)Landroid/content/Context;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/tagmanager/a;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/a;->le()V

    #@3
    return-void
.end method

.method private le()V
    .registers 3

    #@0
    const/16 v0, 0xa

    #@2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    #@5
    :goto_5
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/a;->mClosed:Z

    #@7
    if-nez v0, :cond_1e

    #@9
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->aeg:Lcom/google/android/gms/tagmanager/a$a;

    #@b
    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/a$a;->lg()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/a;->ts:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    #@11
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/a;->aec:J

    #@13
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_16} :catch_17

    #@16
    goto :goto_5

    #@17
    :catch_17
    move-exception v0

    #@18
    const-string v0, "sleep interrupted in AdvertiserDataPoller thread; continuing"

    #@1a
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->B(Ljava/lang/String;)V

    #@1d
    goto :goto_5

    #@1e
    :cond_1e
    return-void
.end method

.method private lf()V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->aef:Lcom/google/android/gms/internal/ij;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ij;->currentTimeMillis()J

    #@5
    move-result-wide v0

    #@6
    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/a;->aee:J

    #@8
    sub-long/2addr v0, v2

    #@9
    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/a;->aed:J

    #@b
    cmp-long v0, v0, v2

    #@d
    if-gez v0, :cond_10

    #@f
    :goto_f
    return-void

    #@10
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/a;->interrupt()V

    #@13
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->aef:Lcom/google/android/gms/internal/ij;

    #@15
    invoke-interface {v0}, Lcom/google/android/gms/internal/ij;->currentTimeMillis()J

    #@18
    move-result-wide v0

    #@19
    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/a;->aee:J

    #@1b
    goto :goto_f
.end method


# virtual methods
.method interrupt()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->sf:Ljava/lang/Thread;

    #@2
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    #@5
    return-void
.end method

.method public isLimitAdTrackingEnabled()Z
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/a;->lf()V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->ts:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    #@5
    if-nez v0, :cond_9

    #@7
    const/4 v0, 0x1

    #@8
    :goto_8
    return v0

    #@9
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->ts:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    #@b
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    #@e
    move-result v0

    #@f
    goto :goto_8
.end method

.method public ld()Ljava/lang/String;
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/a;->lf()V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->ts:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    #@5
    if-nez v0, :cond_9

    #@7
    const/4 v0, 0x0

    #@8
    :goto_8
    return-object v0

    #@9
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->ts:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    #@b
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    goto :goto_8
.end method

.method start()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->sf:Ljava/lang/Thread;

    #@2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@5
    return-void
.end method
