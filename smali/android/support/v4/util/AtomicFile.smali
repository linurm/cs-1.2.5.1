.class public Landroid/support/v4/util/AtomicFile;
.super Ljava/lang/Object;


# instance fields
.field private final mBackupName:Ljava/io/File;

.field private final mBaseName:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    #@5
    new-instance v0, Ljava/io/File;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string v2, ".bak"

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@21
    iput-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    #@23
    return-void
.end method

.method static sync(Ljava/io/FileOutputStream;)Z
    .registers 2

    #@0
    if-eqz p0, :cond_9

    #@2
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_b

    #@9
    :cond_9
    const/4 v0, 0x1

    #@a
    :goto_a
    return v0

    #@b
    :catch_b
    move-exception v0

    #@c
    const/4 v0, 0x0

    #@d
    goto :goto_a
.end method


# virtual methods
.method public delete()V
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@5
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    #@7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@a
    return-void
.end method

.method public failWrite(Ljava/io/FileOutputStream;)V
    .registers 5

    #@0
    if-eqz p1, :cond_14

    #@2
    invoke-static {p1}, Landroid/support/v4/util/AtomicFile;->sync(Ljava/io/FileOutputStream;)Z

    #@5
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    #@8
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    #@a
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@d
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    #@f
    iget-object v1, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    #@11
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_14} :catch_15

    #@14
    :cond_14
    :goto_14
    return-void

    #@15
    :catch_15
    move-exception v0

    #@16
    const-string v1, "AtomicFile"

    #@18
    const-string v2, "failWrite: Got exception:"

    #@1a
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    goto :goto_14
.end method

.method public finishWrite(Ljava/io/FileOutputStream;)V
    .registers 5

    #@0
    if-eqz p1, :cond_d

    #@2
    invoke-static {p1}, Landroid/support/v4/util/AtomicFile;->sync(Ljava/io/FileOutputStream;)Z

    #@5
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    #@8
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    #@a
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_d} :catch_e

    #@d
    :cond_d
    :goto_d
    return-void

    #@e
    :catch_e
    move-exception v0

    #@f
    const-string v1, "AtomicFile"

    #@11
    const-string v2, "finishWrite: Got exception:"

    #@13
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16
    goto :goto_d
.end method

.method public getBaseFile()Ljava/io/File;
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    #@2
    return-object v0
.end method

.method public openRead()Ljava/io/FileInputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_14

    #@8
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    #@a
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@d
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    #@f
    iget-object v1, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    #@11
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@14
    :cond_14
    new-instance v0, Ljava/io/FileInputStream;

    #@16
    iget-object v1, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    #@18
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@1b
    return-object v0
.end method

.method public readFully()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0}, Landroid/support/v4/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@4
    move-result-object v3

    #@5
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    #@8
    move-result v0

    #@9
    new-array v0, v0, [B

    #@b
    :goto_b
    array-length v2, v0

    #@c
    sub-int/2addr v2, v1

    #@d
    invoke-virtual {v3, v0, v1, v2}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_2b

    #@10
    move-result v2

    #@11
    if-gtz v2, :cond_17

    #@13
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    #@16
    return-object v0

    #@17
    :cond_17
    add-int/2addr v2, v1

    #@18
    :try_start_18
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    #@1b
    move-result v1

    #@1c
    array-length v4, v0

    #@1d
    sub-int/2addr v4, v2

    #@1e
    if-le v1, v4, :cond_30

    #@20
    add-int/2addr v1, v2

    #@21
    new-array v1, v1, [B

    #@23
    const/4 v4, 0x0

    #@24
    const/4 v5, 0x0

    #@25
    invoke-static {v0, v4, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_2b

    #@28
    move-object v0, v1

    #@29
    move v1, v2

    #@2a
    goto :goto_b

    #@2b
    :catchall_2b
    move-exception v0

    #@2c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    #@2f
    throw v0

    #@30
    :cond_30
    move v1, v2

    #@31
    goto :goto_b
.end method

.method public startWrite()Ljava/io/FileOutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_40

    #@8
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    #@a
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_48

    #@10
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    #@12
    iget-object v1, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    #@14
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_40

    #@1a
    const-string v0, "AtomicFile"

    #@1c
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string v2, "Couldn\'t rename file "

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    iget-object v2, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    const-string v2, " to backup file "

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    iget-object v2, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    :cond_40
    :goto_40
    :try_start_40
    new-instance v0, Ljava/io/FileOutputStream;

    #@42
    iget-object v1, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    #@44
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_47
    .catch Ljava/io/FileNotFoundException; {:try_start_40 .. :try_end_47} :catch_4e

    #@47
    :goto_47
    return-object v0

    #@48
    :cond_48
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    #@4a
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@4d
    goto :goto_40

    #@4e
    :catch_4e
    move-exception v0

    #@4f
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    #@51
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@54
    move-result-object v0

    #@55
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    #@58
    move-result v0

    #@59
    if-nez v0, :cond_76

    #@5b
    new-instance v0, Ljava/io/IOException;

    #@5d
    new-instance v1, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string v2, "Couldn\'t create directory "

    #@64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v1

    #@68
    iget-object v2, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    #@6a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v1

    #@6e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v1

    #@72
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@75
    throw v0

    #@76
    :cond_76
    :try_start_76
    new-instance v0, Ljava/io/FileOutputStream;

    #@78
    iget-object v1, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    #@7a
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7d
    .catch Ljava/io/FileNotFoundException; {:try_start_76 .. :try_end_7d} :catch_7e

    #@7d
    goto :goto_47

    #@7e
    :catch_7e
    move-exception v0

    #@7f
    new-instance v0, Ljava/io/IOException;

    #@81
    new-instance v1, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string v2, "Couldn\'t create "

    #@88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v1

    #@8c
    iget-object v2, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    #@8e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v1

    #@92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v1

    #@96
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@99
    throw v0
.end method
