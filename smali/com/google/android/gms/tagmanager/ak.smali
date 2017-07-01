.class Lcom/google/android/gms/tagmanager/ak;
.super Ljava/lang/Object;


# direct methods
.method static N(Ljava/lang/String;)Z
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {}, Lcom/google/android/gms/tagmanager/ak;->version()I

    #@5
    move-result v2

    #@6
    const/16 v3, 0x9

    #@8
    if-ge v2, v3, :cond_c

    #@a
    move v0, v1

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    new-instance v2, Ljava/io/File;

    #@e
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@11
    invoke-virtual {v2, v1, v1}, Ljava/io/File;->setReadable(ZZ)Z

    #@14
    invoke-virtual {v2, v1, v1}, Ljava/io/File;->setWritable(ZZ)Z

    #@17
    invoke-virtual {v2, v0, v0}, Ljava/io/File;->setReadable(ZZ)Z

    #@1a
    invoke-virtual {v2, v0, v0}, Ljava/io/File;->setWritable(ZZ)Z

    #@1d
    goto :goto_b
.end method

.method public static version()I
    .registers 2

    #@0
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    #@2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_5} :catch_7

    #@5
    move-result v0

    #@6
    :goto_6
    return v0

    #@7
    :catch_7
    move-exception v0

    #@8
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string v1, "Invalid version number: "

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@20
    const/4 v0, 0x0

    #@21
    goto :goto_6
.end method
