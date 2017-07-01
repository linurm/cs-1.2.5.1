.class Lcom/google/android/gms/analytics/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/m;


# static fields
.field private static tH:Lcom/google/android/gms/analytics/h;

.field private static final tq:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private tI:Ljava/lang/String;

.field private tJ:Z

.field private final tK:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/analytics/h;->tq:Ljava/lang/Object;

    #@7
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/google/android/gms/analytics/h;->tJ:Z

    #@6
    new-instance v0, Ljava/lang/Object;

    #@8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@b
    iput-object v0, p0, Lcom/google/android/gms/analytics/h;->tK:Ljava/lang/Object;

    #@d
    iput-object p1, p0, Lcom/google/android/gms/analytics/h;->mContext:Landroid/content/Context;

    #@f
    invoke-direct {p0}, Lcom/google/android/gms/analytics/h;->cz()V

    #@12
    return-void
.end method

.method private K(Ljava/lang/String;)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    :try_start_1
    const-string v1, "Storing clientId."

    #@3
    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@6
    iget-object v1, p0, Lcom/google/android/gms/analytics/h;->mContext:Landroid/content/Context;

    #@8
    const-string v2, "gaClientId"

    #@a
    const/4 v3, 0x0

    #@b
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    #@16
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_19} :catch_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_19} :catch_22

    #@19
    const/4 v0, 0x1

    #@1a
    :goto_1a
    return v0

    #@1b
    :catch_1b
    move-exception v1

    #@1c
    const-string v1, "Error creating clientId file."

    #@1e
    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V

    #@21
    goto :goto_1a

    #@22
    :catch_22
    move-exception v1

    #@23
    const-string v1, "Error writing to clientId file."

    #@25
    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V

    #@28
    goto :goto_1a
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/h;)Ljava/lang/Object;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/h;->tK:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/h;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/analytics/h;->tI:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/h;Z)Z
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/google/android/gms/analytics/h;->tJ:Z

    #@2
    return p1
.end method

.method public static cv()Lcom/google/android/gms/analytics/h;
    .registers 2

    #@0
    sget-object v1, Lcom/google/android/gms/analytics/h;->tq:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    sget-object v0, Lcom/google/android/gms/analytics/h;->tH:Lcom/google/android/gms/analytics/h;

    #@5
    monitor-exit v1

    #@6
    return-object v0

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

.method private cx()Ljava/lang/String;
    .registers 5

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/h;->tJ:Z

    #@2
    if-nez v0, :cond_1a

    #@4
    iget-object v1, p0, Lcom/google/android/gms/analytics/h;->tK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    :try_start_7
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/h;->tJ:Z

    #@9
    if-nez v0, :cond_19

    #@b
    const-string v0, "Waiting for clientId to load"

    #@d
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_3a

    #@10
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/google/android/gms/analytics/h;->tK:Ljava/lang/Object;

    #@12
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_15} :catch_22
    .catchall {:try_start_10 .. :try_end_15} :catchall_3a

    #@15
    :goto_15
    :try_start_15
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/h;->tJ:Z

    #@17
    if-eqz v0, :cond_10

    #@19
    :cond_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_3a

    #@1a
    :cond_1a
    const-string v0, "Loaded clientId"

    #@1c
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@1f
    iget-object v0, p0, Lcom/google/android/gms/analytics/h;->tI:Ljava/lang/String;

    #@21
    return-object v0

    #@22
    :catch_22
    move-exception v0

    #@23
    :try_start_23
    new-instance v2, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string v3, "Exception while waiting for clientId: "

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V

    #@39
    goto :goto_15

    #@3a
    :catchall_3a
    move-exception v0

    #@3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_23 .. :try_end_3c} :catchall_3a

    #@3c
    throw v0
.end method

.method private cz()V
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/analytics/h$1;

    #@2
    const-string v1, "client_id_fetcher"

    #@4
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/analytics/h$1;-><init>(Lcom/google/android/gms/analytics/h;Ljava/lang/String;)V

    #@7
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@a
    return-void
.end method

.method public static u(Landroid/content/Context;)V
    .registers 3

    #@0
    sget-object v1, Lcom/google/android/gms/analytics/h;->tq:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    sget-object v0, Lcom/google/android/gms/analytics/h;->tH:Lcom/google/android/gms/analytics/h;

    #@5
    if-nez v0, :cond_e

    #@7
    new-instance v0, Lcom/google/android/gms/analytics/h;

    #@9
    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/h;-><init>(Landroid/content/Context;)V

    #@c
    sput-object v0, Lcom/google/android/gms/analytics/h;->tH:Lcom/google/android/gms/analytics/h;

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


# virtual methods
.method public J(Ljava/lang/String;)Z
    .registers 3

    #@0
    const-string v0, "&cid"

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method cA()Ljava/lang/String;
    .registers 7

    #@0
    const/4 v1, 0x0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/h;->mContext:Landroid/content/Context;

    #@3
    const-string v2, "gaClientId"

    #@5
    invoke-virtual {v0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    #@8
    move-result-object v2

    #@9
    const/16 v0, 0x80

    #@b
    new-array v3, v0, [B

    #@d
    const/4 v0, 0x0

    #@e
    const/16 v4, 0x80

    #@10
    invoke-virtual {v2, v3, v0, v4}, Ljava/io/FileInputStream;->read([BII)I

    #@13
    move-result v4

    #@14
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    #@17
    move-result v0

    #@18
    if-lez v0, :cond_31

    #@1a
    const-string v0, "clientId file seems corrupted, deleting it."

    #@1c
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V

    #@1f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    #@22
    iget-object v0, p0, Lcom/google/android/gms/analytics/h;->mContext:Landroid/content/Context;

    #@24
    const-string v2, "gaClientId"

    #@26
    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_29} :catch_44
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_29} :catch_58

    #@29
    move-object v0, v1

    #@2a
    :goto_2a
    if-nez v0, :cond_30

    #@2c
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/h;->cy()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    :cond_30
    return-object v0

    #@31
    :cond_31
    if-gtz v4, :cond_47

    #@33
    :try_start_33
    const-string v0, "clientId file seems empty, deleting it."

    #@35
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V

    #@38
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    #@3b
    iget-object v0, p0, Lcom/google/android/gms/analytics/h;->mContext:Landroid/content/Context;

    #@3d
    const-string v2, "gaClientId"

    #@3f
    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    #@42
    move-object v0, v1

    #@43
    goto :goto_2a

    #@44
    :catch_44
    move-exception v0

    #@45
    move-object v0, v1

    #@46
    goto :goto_2a

    #@47
    :cond_47
    new-instance v0, Ljava/lang/String;

    #@49
    const/4 v5, 0x0

    #@4a
    invoke-direct {v0, v3, v5, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_4d
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_4d} :catch_44
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_4d} :catch_58

    #@4d
    :try_start_4d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    #@50
    const-string v1, "Loaded client id from disk."

    #@52
    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/io/FileNotFoundException; {:try_start_4d .. :try_end_55} :catch_56
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_55} :catch_67

    #@55
    goto :goto_2a

    #@56
    :catch_56
    move-exception v1

    #@57
    goto :goto_2a

    #@58
    :catch_58
    move-exception v0

    #@59
    move-object v0, v1

    #@5a
    :goto_5a
    const-string v1, "Error reading clientId file, deleting it."

    #@5c
    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V

    #@5f
    iget-object v1, p0, Lcom/google/android/gms/analytics/h;->mContext:Landroid/content/Context;

    #@61
    const-string v2, "gaClientId"

    #@63
    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    #@66
    goto :goto_2a

    #@67
    :catch_67
    move-exception v1

    #@68
    goto :goto_5a
.end method

.method cw()Ljava/lang/String;
    .registers 3

    #@0
    iget-object v1, p0, Lcom/google/android/gms/analytics/h;->tK:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/h;->cy()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/google/android/gms/analytics/h;->tI:Ljava/lang/String;

    #@9
    iget-object v0, p0, Lcom/google/android/gms/analytics/h;->tI:Ljava/lang/String;

    #@b
    monitor-exit v1

    #@c
    return-object v0

    #@d
    :catchall_d
    move-exception v0

    #@e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    #@f
    throw v0
.end method

.method protected cy()Ljava/lang/String;
    .registers 3

    #@0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    :try_start_c
    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/h;->K(Ljava/lang/String;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_15

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_14

    #@12
    const-string v0, "0"

    #@14
    :cond_14
    :goto_14
    return-object v0

    #@15
    :catch_15
    move-exception v0

    #@16
    const/4 v0, 0x0

    #@17
    goto :goto_14
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    const-string v0, "&cid"

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_d

    #@8
    invoke-direct {p0}, Lcom/google/android/gms/analytics/h;->cx()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    :goto_c
    return-object v0

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    goto :goto_c
.end method
