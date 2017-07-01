.class Lcom/google/android/gms/analytics/t;
.super Ljava/lang/Thread;

# interfaces
.implements Lcom/google/android/gms/analytics/f;


# static fields
.field private static uO:Lcom/google/android/gms/analytics/t;


# instance fields
.field private volatile mClosed:Z

.field private final mContext:Landroid/content/Context;

.field private final uK:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile uL:Z

.field private volatile uM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/fd;",
            ">;"
        }
    .end annotation
.end field

.field private volatile uN:Ljava/lang/String;

.field private volatile uP:Lcom/google/android/gms/analytics/ag;


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
    iput-object v0, p0, Lcom/google/android/gms/analytics/t;->uK:Ljava/util/concurrent/LinkedBlockingQueue;

    #@d
    iput-boolean v1, p0, Lcom/google/android/gms/analytics/t;->uL:Z

    #@f
    iput-boolean v1, p0, Lcom/google/android/gms/analytics/t;->mClosed:Z

    #@11
    if-eqz p1, :cond_1d

    #@13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/google/android/gms/analytics/t;->mContext:Landroid/content/Context;

    #@19
    :goto_19
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/t;->start()V

    #@1c
    return-void

    #@1d
    :cond_1d
    iput-object p1, p0, Lcom/google/android/gms/analytics/t;->mContext:Landroid/content/Context;

    #@1f
    goto :goto_19
.end method

.method static O(Ljava/lang/String;)I
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_2c

    #@7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@a
    move-result v0

    #@b
    const/4 v1, 0x0

    #@c
    add-int/lit8 v0, v0, -0x1

    #@e
    move v4, v0

    #@f
    move v0, v1

    #@10
    move v1, v4

    #@11
    :goto_11
    if-ltz v1, :cond_2c

    #@13
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v2

    #@17
    shl-int/lit8 v0, v0, 0x6

    #@19
    const v3, 0xfffffff

    #@1c
    and-int/2addr v0, v3

    #@1d
    add-int/2addr v0, v2

    #@1e
    shl-int/lit8 v2, v2, 0xe

    #@20
    add-int/2addr v0, v2

    #@21
    const/high16 v2, 0xfe00000

    #@23
    and-int/2addr v2, v0

    #@24
    if-eqz v2, :cond_29

    #@26
    shr-int/lit8 v2, v2, 0x15

    #@28
    xor-int/2addr v0, v2

    #@29
    :cond_29
    add-int/lit8 v1, v1, -0x1

    #@2b
    goto :goto_11

    #@2c
    :cond_2c
    return v0
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/t;)Landroid/content/Context;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/t;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/t;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/analytics/t;->uN:Ljava/lang/String;

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

.method static synthetic a(Lcom/google/android/gms/analytics/t;Ljava/util/Map;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/t;->s(Ljava/util/Map;)V

    #@3
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/t;)Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/t;->uN:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/t;Ljava/util/Map;)Z
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/t;->r(Ljava/util/Map;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/analytics/t;)Ljava/util/List;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/t;->uM:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/analytics/t;Ljava/util/Map;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/t;->t(Ljava/util/Map;)V

    #@3
    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/analytics/t;)Lcom/google/android/gms/analytics/ag;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/t;->uP:Lcom/google/android/gms/analytics/ag;

    #@2
    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/analytics/t;Ljava/util/Map;)Ljava/lang/String;
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/t;->q(Ljava/util/Map;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private q(Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    const-string v0, "useSecure"

    #@2
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1d

    #@8
    const-string v0, "useSecure"

    #@a
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/lang/String;

    #@10
    const/4 v1, 0x1

    #@11
    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/ak;->d(Ljava/lang/String;Z)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1a

    #@17
    const-string v0, "https:"

    #@19
    :goto_19
    return-object v0

    #@1a
    :cond_1a
    const-string v0, "http:"

    #@1c
    goto :goto_19

    #@1d
    :cond_1d
    const-string v0, "https:"

    #@1f
    goto :goto_19
.end method

.method private r(Ljava/util/Map;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    #@0
    const/4 v2, 0x1

    #@1
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    #@3
    const/4 v1, 0x0

    #@4
    const-string v0, "&sf"

    #@6
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    if-nez v0, :cond_e

    #@c
    move v0, v1

    #@d
    :goto_d
    return v0

    #@e
    :cond_e
    const-string v0, "&sf"

    #@10
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/lang/String;

    #@16
    invoke-static {v0, v8, v9}, Lcom/google/android/gms/analytics/ak;->a(Ljava/lang/String;D)D

    #@19
    move-result-wide v4

    #@1a
    cmpl-double v0, v4, v8

    #@1c
    if-ltz v0, :cond_20

    #@1e
    move v0, v1

    #@1f
    goto :goto_d

    #@20
    :cond_20
    const-string v0, "&cid"

    #@22
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Ljava/lang/String;

    #@28
    invoke-static {v0}, Lcom/google/android/gms/analytics/t;->O(Ljava/lang/String;)I

    #@2b
    move-result v0

    #@2c
    rem-int/lit16 v0, v0, 0x2710

    #@2e
    int-to-double v6, v0

    #@2f
    mul-double/2addr v4, v8

    #@30
    cmpl-double v0, v6, v4

    #@32
    if-ltz v0, :cond_56

    #@34
    const-string v0, "&t"

    #@36
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    if-nez v0, :cond_4d

    #@3c
    const-string v0, "unknown"

    #@3e
    :goto_3e
    const-string v3, "%s hit sampled out"

    #@40
    new-array v4, v2, [Ljava/lang/Object;

    #@42
    aput-object v0, v4, v1

    #@44
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@4b
    move v0, v2

    #@4c
    goto :goto_d

    #@4d
    :cond_4d
    const-string v0, "&t"

    #@4f
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@52
    move-result-object v0

    #@53
    check-cast v0, Ljava/lang/String;

    #@55
    goto :goto_3e

    #@56
    :cond_56
    move v0, v1

    #@57
    goto :goto_d
.end method

.method private s(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/t;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/analytics/a;->s(Landroid/content/Context;)Lcom/google/android/gms/analytics/m;

    #@5
    move-result-object v0

    #@6
    const-string v1, "&adid"

    #@8
    const-string v2, "&adid"

    #@a
    invoke-interface {v0, v2}, Lcom/google/android/gms/analytics/m;->getValue(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/analytics/ak;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    #@11
    const-string v1, "&ate"

    #@13
    const-string v2, "&ate"

    #@15
    invoke-interface {v0, v2}, Lcom/google/android/gms/analytics/m;->getValue(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/analytics/ak;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    return-void
.end method

.method private t(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-static {}, Lcom/google/android/gms/analytics/g;->cu()Lcom/google/android/gms/analytics/g;

    #@3
    move-result-object v0

    #@4
    const-string v1, "&an"

    #@6
    const-string v2, "&an"

    #@8
    invoke-interface {v0, v2}, Lcom/google/android/gms/analytics/m;->getValue(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/analytics/ak;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    #@f
    const-string v1, "&av"

    #@11
    const-string v2, "&av"

    #@13
    invoke-interface {v0, v2}, Lcom/google/android/gms/analytics/m;->getValue(Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/analytics/ak;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    const-string v1, "&aid"

    #@1c
    const-string v2, "&aid"

    #@1e
    invoke-interface {v0, v2}, Lcom/google/android/gms/analytics/m;->getValue(Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/analytics/ak;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    #@25
    const-string v1, "&aiid"

    #@27
    const-string v2, "&aiid"

    #@29
    invoke-interface {v0, v2}, Lcom/google/android/gms/analytics/m;->getValue(Ljava/lang/String;)Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/analytics/ak;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    #@30
    const-string v0, "&v"

    #@32
    const-string v1, "1"

    #@34
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    return-void
.end method

.method static x(Landroid/content/Context;)Lcom/google/android/gms/analytics/t;
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/analytics/t;->uO:Lcom/google/android/gms/analytics/t;

    #@2
    if-nez v0, :cond_b

    #@4
    new-instance v0, Lcom/google/android/gms/analytics/t;

    #@6
    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/t;-><init>(Landroid/content/Context;)V

    #@9
    sput-object v0, Lcom/google/android/gms/analytics/t;->uO:Lcom/google/android/gms/analytics/t;

    #@b
    :cond_b
    sget-object v0, Lcom/google/android/gms/analytics/t;->uO:Lcom/google/android/gms/analytics/t;

    #@d
    return-object v0
.end method

.method static y(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    :try_start_1
    const-string v1, "gaInstallData"

    #@3
    invoke-virtual {p0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    #@6
    move-result-object v1

    #@7
    const/16 v2, 0x2000

    #@9
    new-array v2, v2, [B

    #@b
    const/4 v3, 0x0

    #@c
    const/16 v4, 0x2000

    #@e
    invoke-virtual {v1, v2, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    #@11
    move-result v3

    #@12
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    #@15
    move-result v4

    #@16
    if-lez v4, :cond_26

    #@18
    const-string v2, "Too much campaign data, ignoring it."

    #@1a
    invoke-static {v2}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V

    #@1d
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    #@20
    const-string v1, "gaInstallData"

    #@22
    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    #@25
    :goto_25
    return-object v0

    #@26
    :cond_26
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    #@29
    const-string v1, "gaInstallData"

    #@2b
    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    #@2e
    if-gtz v3, :cond_3d

    #@30
    const-string v1, "Campaign file is empty."

    #@32
    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_35} :catch_36
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_35} :catch_5b

    #@35
    goto :goto_25

    #@36
    :catch_36
    move-exception v1

    #@37
    const-string v1, "No campaign data found."

    #@39
    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->B(Ljava/lang/String;)V

    #@3c
    goto :goto_25

    #@3d
    :cond_3d
    :try_start_3d
    new-instance v1, Ljava/lang/String;

    #@3f
    const/4 v4, 0x0

    #@40
    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([BII)V

    #@43
    new-instance v2, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string v3, "Campaign found: "

    #@4a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    invoke-static {v2}, Lcom/google/android/gms/analytics/aa;->B(Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_59} :catch_36
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_59} :catch_5b

    #@59
    move-object v0, v1

    #@5a
    goto :goto_25

    #@5b
    :catch_5b
    move-exception v1

    #@5c
    const-string v1, "Error reading campaign data."

    #@5e
    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V

    #@61
    const-string v1, "gaInstallData"

    #@63
    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    #@66
    goto :goto_25
.end method


# virtual methods
.method a(Ljava/lang/Runnable;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/t;->uK:Ljava/util/concurrent/LinkedBlockingQueue;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public cl()V
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/analytics/t$3;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/t$3;-><init>(Lcom/google/android/gms/analytics/t;)V

    #@5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/t;->a(Ljava/lang/Runnable;)V

    #@8
    return-void
.end method

.method public cq()V
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/analytics/t$2;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/t$2;-><init>(Lcom/google/android/gms/analytics/t;)V

    #@5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/t;->a(Ljava/lang/Runnable;)V

    #@8
    return-void
.end method

.method public cs()V
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/analytics/t$4;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/t$4;-><init>(Lcom/google/android/gms/analytics/t;)V

    #@5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/t;->a(Ljava/lang/Runnable;)V

    #@8
    return-void
.end method

.method public ct()Ljava/util/concurrent/LinkedBlockingQueue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/t;->uK:Ljava/util/concurrent/LinkedBlockingQueue;

    #@2
    return-object v0
.end method

.method public getThread()Ljava/lang/Thread;
    .registers 1

    #@0
    return-object p0
.end method

.method protected init()V
    .registers 8

    #@0
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    iget-object v0, p0, Lcom/google/android/gms/analytics/t;->uP:Lcom/google/android/gms/analytics/ag;

    #@4
    invoke-interface {v0}, Lcom/google/android/gms/analytics/ag;->cL()V

    #@7
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v0, p0, Lcom/google/android/gms/analytics/t;->uM:Ljava/util/List;

    #@e
    iget-object v0, p0, Lcom/google/android/gms/analytics/t;->uM:Ljava/util/List;

    #@10
    new-instance v1, Lcom/google/android/gms/internal/fd;

    #@12
    const-string v2, "appendVersion"

    #@14
    const-string v3, "&_v"

    #@16
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    const-string v4, "ma4.0.2"

    #@1c
    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/fd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1f
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@22
    iget-object v0, p0, Lcom/google/android/gms/analytics/t;->uM:Ljava/util/List;

    #@24
    new-instance v1, Lcom/google/android/gms/internal/fd;

    #@26
    const-string v2, "appendQueueTime"

    #@28
    const-string v3, "&qt"

    #@2a
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    invoke-direct {v1, v2, v3, v6}, Lcom/google/android/gms/internal/fd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@31
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@34
    iget-object v0, p0, Lcom/google/android/gms/analytics/t;->uM:Ljava/util/List;

    #@36
    new-instance v1, Lcom/google/android/gms/internal/fd;

    #@38
    const-string v2, "appendCacheBuster"

    #@3a
    const-string v3, "&z"

    #@3c
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    invoke-direct {v1, v2, v3, v6}, Lcom/google/android/gms/internal/fd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@43
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@46
    return-void
.end method

.method public p(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    new-instance v1, Ljava/util/HashMap;

    #@2
    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #@5
    const-string v0, "&ht"

    #@7
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/lang/String;

    #@d
    if-eqz v0, :cond_12

    #@f
    :try_start_f
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_12} :catch_2a

    #@12
    :cond_12
    :goto_12
    if-nez v0, :cond_21

    #@14
    const-string v0, "&ht"

    #@16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@19
    move-result-wide v2

    #@1a
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    :cond_21
    new-instance v0, Lcom/google/android/gms/analytics/t$1;

    #@23
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/analytics/t$1;-><init>(Lcom/google/android/gms/analytics/t;Ljava/util/Map;)V

    #@26
    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/t;->a(Ljava/lang/Runnable;)V

    #@29
    return-void

    #@2a
    :catch_2a
    move-exception v0

    #@2b
    const/4 v0, 0x0

    #@2c
    goto :goto_12
.end method

.method public run()V
    .registers 5

    #@0
    const/4 v3, 0x1

    #@1
    const/16 v0, 0xa

    #@3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    #@6
    const-wide/16 v0, 0x1388

    #@8
    :try_start_8
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_b} :catch_68

    #@b
    :goto_b
    :try_start_b
    iget-object v0, p0, Lcom/google/android/gms/analytics/t;->uP:Lcom/google/android/gms/analytics/ag;

    #@d
    if-nez v0, :cond_18

    #@f
    new-instance v0, Lcom/google/android/gms/analytics/s;

    #@11
    iget-object v1, p0, Lcom/google/android/gms/analytics/t;->mContext:Landroid/content/Context;

    #@13
    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/analytics/s;-><init>(Landroid/content/Context;Lcom/google/android/gms/analytics/f;)V

    #@16
    iput-object v0, p0, Lcom/google/android/gms/analytics/t;->uP:Lcom/google/android/gms/analytics/ag;

    #@18
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/t;->init()V

    #@1b
    iget-object v0, p0, Lcom/google/android/gms/analytics/t;->mContext:Landroid/content/Context;

    #@1d
    invoke-static {v0}, Lcom/google/android/gms/analytics/t;->y(Landroid/content/Context;)Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Lcom/google/android/gms/analytics/t;->uN:Ljava/lang/String;

    #@23
    const-string v0, "Initialized GA Thread"

    #@25
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_28} :catch_6f

    #@28
    :cond_28
    :goto_28
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/t;->mClosed:Z

    #@2a
    if-nez v0, :cond_92

    #@2c
    :try_start_2c
    iget-object v0, p0, Lcom/google/android/gms/analytics/t;->uK:Ljava/util/concurrent/LinkedBlockingQueue;

    #@2e
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Ljava/lang/Runnable;

    #@34
    iget-boolean v1, p0, Lcom/google/android/gms/analytics/t;->uL:Z

    #@36
    if-nez v1, :cond_28

    #@38
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_3b} :catch_3c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_3b} :catch_45

    #@3b
    goto :goto_28

    #@3c
    :catch_3c
    move-exception v0

    #@3d
    :try_start_3d
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->B(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_44} :catch_45

    #@44
    goto :goto_28

    #@45
    :catch_45
    move-exception v0

    #@46
    new-instance v1, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string v2, "Error on GAThread: "

    #@4d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/t;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    #@54
    move-result-object v0

    #@55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v0

    #@59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v0

    #@5d
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V

    #@60
    const-string v0, "Google Analytics is shutting down."

    #@62
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V

    #@65
    iput-boolean v3, p0, Lcom/google/android/gms/analytics/t;->uL:Z

    #@67
    goto :goto_28

    #@68
    :catch_68
    move-exception v0

    #@69
    const-string v0, "sleep interrupted in GAThread initialize"

    #@6b
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@6e
    goto :goto_b

    #@6f
    :catch_6f
    move-exception v0

    #@70
    new-instance v1, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string v2, "Error initializing the GAThread: "

    #@77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v1

    #@7b
    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/t;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    #@7e
    move-result-object v0

    #@7f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v0

    #@83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v0

    #@87
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V

    #@8a
    const-string v0, "Google Analytics will not start up."

    #@8c
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V

    #@8f
    iput-boolean v3, p0, Lcom/google/android/gms/analytics/t;->uL:Z

    #@91
    goto :goto_28

    #@92
    :cond_92
    return-void
.end method
