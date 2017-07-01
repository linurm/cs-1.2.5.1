.class Lcom/google/android/gms/tagmanager/as;
.super Ljava/lang/Thread;

# interfaces
.implements Lcom/google/android/gms/tagmanager/ar;


# static fields
.field private static afI:Lcom/google/android/gms/tagmanager/as;


# instance fields
.field private final afH:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile afJ:Lcom/google/android/gms/tagmanager/at;

.field private volatile mClosed:Z

.field private final mContext:Landroid/content/Context;

.field private volatile uL:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    #@0
    const/4 v1, 0x0

    #@1
    const-string v0, "GAThread"

    #@3
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@6
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    #@8
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    #@b
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/as;->afH:Ljava/util/concurrent/LinkedBlockingQueue;

    #@d
    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/as;->uL:Z

    #@f
    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/as;->mClosed:Z

    #@11
    if-eqz p1, :cond_1d

    #@13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/as;->mContext:Landroid/content/Context;

    #@19
    :goto_19
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/as;->start()V

    #@1c
    return-void

    #@1d
    :cond_1d
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/as;->mContext:Landroid/content/Context;

    #@1f
    goto :goto_19
.end method

.method static P(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/as;
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/as;->afI:Lcom/google/android/gms/tagmanager/as;

    #@2
    if-nez v0, :cond_b

    #@4
    new-instance v0, Lcom/google/android/gms/tagmanager/as;

    #@6
    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/as;-><init>(Landroid/content/Context;)V

    #@9
    sput-object v0, Lcom/google/android/gms/tagmanager/as;->afI:Lcom/google/android/gms/tagmanager/as;

    #@b
    :cond_b
    sget-object v0, Lcom/google/android/gms/tagmanager/as;->afI:Lcom/google/android/gms/tagmanager/as;

    #@d
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/as;)Lcom/google/android/gms/tagmanager/at;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/as;->afJ:Lcom/google/android/gms/tagmanager/at;

    #@2
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/as;Lcom/google/android/gms/tagmanager/at;)Lcom/google/android/gms/tagmanager/at;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/as;->afJ:Lcom/google/android/gms/tagmanager/at;

    #@2
    return-object p1
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    #@0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    new-instance v1, Ljava/io/PrintStream;

    #@7
    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    #@a
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    #@d
    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    #@10
    new-instance v1, Ljava/lang/String;

    #@12
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@15
    move-result-object v0

    #@16
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    #@19
    return-object v1
.end method

.method static synthetic b(Lcom/google/android/gms/tagmanager/as;)Landroid/content/Context;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/as;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/as;->afH:Ljava/util/concurrent/LinkedBlockingQueue;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method b(Ljava/lang/String;J)V
    .registers 12

    #@0
    new-instance v1, Lcom/google/android/gms/tagmanager/as$1;

    #@2
    move-object v2, p0

    #@3
    move-object v3, p0

    #@4
    move-wide v4, p2

    #@5
    move-object v6, p1

    #@6
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/tagmanager/as$1;-><init>(Lcom/google/android/gms/tagmanager/as;Lcom/google/android/gms/tagmanager/ar;JLjava/lang/String;)V

    #@9
    invoke-virtual {p0, v1}, Lcom/google/android/gms/tagmanager/as;->a(Ljava/lang/Runnable;)V

    #@c
    return-void
.end method

.method public bU(Ljava/lang/String;)V
    .registers 4

    #@0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/tagmanager/as;->b(Ljava/lang/String;J)V

    #@7
    return-void
.end method

.method public run()V
    .registers 4

    #@0
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/as;->mClosed:Z

    #@2
    if-nez v0, :cond_41

    #@4
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/as;->afH:Ljava/util/concurrent/LinkedBlockingQueue;

    #@6
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/Runnable;

    #@c
    iget-boolean v1, p0, Lcom/google/android/gms/tagmanager/as;->uL:Z

    #@e
    if-nez v1, :cond_0

    #@10
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_13} :catch_14
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_13} :catch_1d

    #@13
    goto :goto_0

    #@14
    :catch_14
    move-exception v0

    #@15
    :try_start_15
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->B(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1c} :catch_1d

    #@1c
    goto :goto_0

    #@1d
    :catch_1d
    move-exception v0

    #@1e
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string v2, "Error on GAThread: "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/as;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@38
    const-string v0, "Google Analytics is shutting down."

    #@3a
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@3d
    const/4 v0, 0x1

    #@3e
    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/as;->uL:Z

    #@40
    goto :goto_0

    #@41
    :cond_41
    return-void
.end method
