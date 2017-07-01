.class public Lcom/apportable/Installation;
.super Ljava/lang/Object;


# static fields
.field private static final INSTALLATION:Ljava/lang/String; = "INSTALLATION"

.field private static final INSTALLATION_NEW:I = 0x1

.field private static final INSTALLATION_NOT_NEW:I = 0x2

.field private static final INSTALLATION_UNKNOWN:I

.field private static newInstallState:I

.field private static sID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    sput-object v0, Lcom/apportable/Installation;->sID:Ljava/lang/String;

    #@3
    const/4 v0, 0x0

    #@4
    sput v0, Lcom/apportable/Installation;->newInstallState:I

    #@6
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static id(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    #@0
    const-class v0, Lcom/apportable/Installation;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sget-object v0, Lcom/apportable/Installation;->sID:Ljava/lang/String;

    #@5
    if-nez v0, :cond_21

    #@7
    new-instance v0, Ljava/io/File;

    #@9
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    #@c
    move-result-object v1

    #@d
    const-string v2, "INSTALLATION"

    #@f
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_35

    #@12
    :try_start_12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_27

    #@18
    const/4 v1, 0x2

    #@19
    sput v1, Lcom/apportable/Installation;->newInstallState:I

    #@1b
    :goto_1b
    invoke-static {v0}, Lcom/apportable/Installation;->readInstallationFile(Ljava/io/File;)Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    sput-object v0, Lcom/apportable/Installation;->sID:Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_21} :catch_2e
    .catchall {:try_start_12 .. :try_end_21} :catchall_35

    #@21
    :cond_21
    :try_start_21
    sget-object v0, Lcom/apportable/Installation;->sID:Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_35

    #@23
    const-class v1, Lcom/apportable/Installation;

    #@25
    monitor-exit v1

    #@26
    return-object v0

    #@27
    :cond_27
    const/4 v1, 0x1

    #@28
    :try_start_28
    sput v1, Lcom/apportable/Installation;->newInstallState:I

    #@2a
    invoke-static {v0}, Lcom/apportable/Installation;->writeInstallationFile(Ljava/io/File;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2d} :catch_2e
    .catchall {:try_start_28 .. :try_end_2d} :catchall_35

    #@2d
    goto :goto_1b

    #@2e
    :catch_2e
    move-exception v0

    #@2f
    :try_start_2f
    new-instance v1, Ljava/lang/RuntimeException;

    #@31
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@34
    throw v1
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_35

    #@35
    :catchall_35
    move-exception v0

    #@36
    const-class v1, Lcom/apportable/Installation;

    #@38
    monitor-exit v1

    #@39
    throw v0
.end method

.method public static isNewInstall(Landroid/content/Context;)Z
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    sget v1, Lcom/apportable/Installation;->newInstallState:I

    #@3
    if-nez v1, :cond_1c

    #@5
    new-instance v1, Ljava/io/File;

    #@7
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    #@a
    move-result-object v2

    #@b
    const-string v3, "INSTALLATION"

    #@d
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@10
    :try_start_10
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_19

    #@16
    const/4 v1, 0x2

    #@17
    sput v1, Lcom/apportable/Installation;->newInstallState:I

    #@19
    :cond_19
    const/4 v1, 0x1

    #@1a
    sput v1, Lcom/apportable/Installation;->newInstallState:I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1c} :catch_21

    #@1c
    :cond_1c
    sget v1, Lcom/apportable/Installation;->newInstallState:I

    #@1e
    if-ne v1, v0, :cond_28

    #@20
    :goto_20
    return v0

    #@21
    :catch_21
    move-exception v0

    #@22
    new-instance v1, Ljava/lang/RuntimeException;

    #@24
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@27
    throw v1

    #@28
    :cond_28
    const/4 v0, 0x0

    #@29
    goto :goto_20
.end method

.method private static readInstallationFile(Ljava/io/File;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    new-instance v0, Ljava/io/RandomAccessFile;

    #@2
    const-string v1, "r"

    #@4
    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@7
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    #@a
    move-result-wide v2

    #@b
    long-to-int v1, v2

    #@c
    new-array v1, v1, [B

    #@e
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    #@11
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    #@14
    new-instance v0, Ljava/lang/String;

    #@16
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    #@19
    return-object v0
.end method

.method private static writeInstallationFile(Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    new-instance v0, Ljava/io/FileOutputStream;

    #@2
    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    #@14
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    #@17
    return-void
.end method
