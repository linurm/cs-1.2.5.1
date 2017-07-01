.class public final Lcom/google/android/gms/internal/dz;
.super Ljava/lang/Object;


# instance fields
.field private lN:Lcom/google/android/gms/internal/ex;

.field private final ls:Ljava/lang/Object;

.field private pJ:I

.field private qB:Ljava/lang/String;

.field private qC:Lcom/google/android/gms/internal/eb;

.field public final qD:Lcom/google/android/gms/internal/bc;

.field public final qE:Lcom/google/android/gms/internal/bc;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/internal/dz;->ls:Ljava/lang/Object;

    #@a
    const/4 v0, -0x2

    #@b
    iput v0, p0, Lcom/google/android/gms/internal/dz;->pJ:I

    #@d
    new-instance v0, Lcom/google/android/gms/internal/dz$1;

    #@f
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/dz$1;-><init>(Lcom/google/android/gms/internal/dz;)V

    #@12
    iput-object v0, p0, Lcom/google/android/gms/internal/dz;->qD:Lcom/google/android/gms/internal/bc;

    #@14
    new-instance v0, Lcom/google/android/gms/internal/dz$2;

    #@16
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/dz$2;-><init>(Lcom/google/android/gms/internal/dz;)V

    #@19
    iput-object v0, p0, Lcom/google/android/gms/internal/dz;->qE:Lcom/google/android/gms/internal/bc;

    #@1b
    iput-object p1, p0, Lcom/google/android/gms/internal/dz;->qB:Ljava/lang/String;

    #@1d
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/dz;I)I
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/internal/dz;->pJ:I

    #@2
    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/dz;Lcom/google/android/gms/internal/eb;)Lcom/google/android/gms/internal/eb;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/dz;->qC:Lcom/google/android/gms/internal/eb;

    #@2
    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/dz;)Ljava/lang/Object;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/dz;->ls:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/dz;)Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/dz;->qB:Ljava/lang/String;

    #@2
    return-object v0
.end method


# virtual methods
.method public b(Lcom/google/android/gms/internal/ex;)V
    .registers 4

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/dz;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/dz;->lN:Lcom/google/android/gms/internal/ex;

    #@5
    monitor-exit v1

    #@6
    return-void

    #@7
    :catchall_7
    move-exception v0

    #@8
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    #@9
    throw v0
.end method

.method public bx()Lcom/google/android/gms/internal/eb;
    .registers 4

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/dz;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/dz;->qC:Lcom/google/android/gms/internal/eb;

    #@5
    if-nez v0, :cond_1b

    #@7
    iget v0, p0, Lcom/google/android/gms/internal/dz;->pJ:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1f

    #@9
    const/4 v2, -0x2

    #@a
    if-ne v0, v2, :cond_1b

    #@c
    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/dz;->ls:Ljava/lang/Object;

    #@e
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_11} :catch_12
    .catchall {:try_start_c .. :try_end_11} :catchall_1f

    #@11
    goto :goto_3

    #@12
    :catch_12
    move-exception v0

    #@13
    :try_start_13
    const-string v0, "Ad request service was interrupted."

    #@15
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@18
    const/4 v0, 0x0

    #@19
    monitor-exit v1

    #@1a
    :goto_1a
    return-object v0

    #@1b
    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/dz;->qC:Lcom/google/android/gms/internal/eb;

    #@1d
    monitor-exit v1

    #@1e
    goto :goto_1a

    #@1f
    :catchall_1f
    move-exception v0

    #@20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_1f

    #@21
    throw v0
.end method

.method public getErrorCode()I
    .registers 3

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/dz;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget v0, p0, Lcom/google/android/gms/internal/dz;->pJ:I

    #@5
    monitor-exit v1

    #@6
    return v0

    #@7
    :catchall_7
    move-exception v0

    #@8
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    #@9
    throw v0
.end method
