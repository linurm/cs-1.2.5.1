.class public final Lcom/android/dx/util/FileUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static hasArchiveSuffix(Ljava/lang/String;)Z
    .registers 2

    #@0
    const-string v0, ".zip"

    #@2
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_18

    #@8
    const-string v0, ".jar"

    #@a
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_18

    #@10
    const-string v0, ".apk"

    #@12
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1a

    #@18
    :cond_18
    const/4 v0, 0x1

    #@19
    :goto_19
    return v0

    #@1a
    :cond_1a
    const/4 v0, 0x0

    #@1b
    goto :goto_19
.end method

.method public static readFile(Ljava/io/File;)[B
    .registers 7

    #@0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_1f

    #@6
    new-instance v0, Ljava/lang/RuntimeException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string v2, ": file not found"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    :cond_1f
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    #@22
    move-result v0

    #@23
    if-nez v0, :cond_3e

    #@25
    new-instance v0, Ljava/lang/RuntimeException;

    #@27
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    const-string v2, ": not a file"

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v0

    #@3e
    :cond_3e
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    #@41
    move-result v0

    #@42
    if-nez v0, :cond_5d

    #@44
    new-instance v0, Ljava/lang/RuntimeException;

    #@46
    new-instance v1, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    const-string v2, ": file not readable"

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v0

    #@5d
    :cond_5d
    invoke-virtual {p0}, Ljava/io/File;->length()J

    #@60
    move-result-wide v2

    #@61
    long-to-int v1, v2

    #@62
    int-to-long v4, v1

    #@63
    cmp-long v0, v4, v2

    #@65
    if-eqz v0, :cond_80

    #@67
    new-instance v0, Ljava/lang/RuntimeException;

    #@69
    new-instance v1, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v1

    #@72
    const-string v2, ": file too long"

    #@74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v1

    #@7c
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@7f
    throw v0

    #@80
    :cond_80
    new-array v2, v1, [B

    #@82
    :try_start_82
    new-instance v3, Ljava/io/FileInputStream;

    #@84
    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@87
    const/4 v0, 0x0

    #@88
    :goto_88
    if-lez v1, :cond_c7

    #@8a
    invoke-virtual {v3, v2, v0, v1}, Ljava/io/FileInputStream;->read([BII)I

    #@8d
    move-result v4

    #@8e
    const/4 v5, -0x1

    #@8f
    if-ne v4, v5, :cond_c4

    #@91
    new-instance v0, Ljava/lang/RuntimeException;

    #@93
    new-instance v1, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v1

    #@9c
    const-string v2, ": unexpected EOF"

    #@9e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v1

    #@a2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v1

    #@a6
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@a9
    throw v0
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_aa} :catch_aa

    #@aa
    :catch_aa
    move-exception v0

    #@ab
    new-instance v1, Ljava/lang/RuntimeException;

    #@ad
    new-instance v2, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v2

    #@b6
    const-string v3, ": trouble reading"

    #@b8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v2

    #@bc
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v2

    #@c0
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c3
    throw v1

    #@c4
    :cond_c4
    add-int/2addr v0, v4

    #@c5
    sub-int/2addr v1, v4

    #@c6
    goto :goto_88

    #@c7
    :cond_c7
    :try_start_c7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_ca} :catch_aa

    #@ca
    return-object v2
.end method

.method public static readFile(Ljava/lang/String;)[B
    .registers 2

    #@0
    new-instance v0, Ljava/io/File;

    #@2
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5
    invoke-static {v0}, Lcom/android/dx/util/FileUtils;->readFile(Ljava/io/File;)[B

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method
