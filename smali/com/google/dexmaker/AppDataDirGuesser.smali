.class Lcom/google/dexmaker/AppDataDirGuesser;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private getPathFromThisClassLoader(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    const/4 v2, -0x1

    #@1
    :try_start_1
    const-string v0, "path"

    #@3
    invoke-virtual {p2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@6
    move-result-object v0

    #@7
    const/4 v1, 0x1

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@b
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_11} :catch_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_11} :catch_34
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_11} :catch_36

    #@11
    :cond_11
    :goto_11
    return-object v0

    #@12
    :catch_12
    move-exception v0

    #@13
    :goto_13
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    const/16 v1, 0x5b

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    #@1c
    move-result v1

    #@1d
    if-ne v1, v2, :cond_2d

    #@1f
    :goto_1f
    const/16 v1, 0x5d

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    #@24
    move-result v1

    #@25
    if-eq v1, v2, :cond_11

    #@27
    const/4 v2, 0x0

    #@28
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    goto :goto_11

    #@2d
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    goto :goto_1f

    #@34
    :catch_34
    move-exception v0

    #@35
    goto :goto_13

    #@36
    :catch_36
    move-exception v0

    #@37
    goto :goto_13
.end method

.method private guessSuitableClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    #@0
    const-class v0, Lcom/google/dexmaker/AppDataDirGuesser;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static splitPathList(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    #@0
    const-string v0, "dexPath="

    #@2
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1b

    #@8
    const-string v0, "dexPath="

    #@a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@d
    move-result v0

    #@e
    const/16 v1, 0x2c

    #@10
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    #@13
    move-result v1

    #@14
    const/4 v2, -0x1

    #@15
    if-ne v1, v2, :cond_22

    #@17
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1a
    move-result-object p0

    #@1b
    :cond_1b
    :goto_1b
    const-string v0, ":"

    #@1d
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    return-object v0

    #@22
    :cond_22
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@25
    move-result-object p0

    #@26
    goto :goto_1b
.end method


# virtual methods
.method fileOrDirExists(Ljava/io/File;)Z
    .registers 3

    #@0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public guess()Ljava/io/File;
    .registers 3

    #@0
    :try_start_0
    invoke-direct {p0}, Lcom/google/dexmaker/AppDataDirGuesser;->guessSuitableClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    const-string v1, "dalvik.system.PathClassLoader"

    #@6
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    invoke-direct {p0, v0, v1}, Lcom/google/dexmaker/AppDataDirGuesser;->getPathFromThisClassLoader(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p0, v0}, Lcom/google/dexmaker/AppDataDirGuesser;->guessPath(Ljava/lang/String;)[Ljava/io/File;

    #@14
    move-result-object v0

    #@15
    array-length v1, v0
    :try_end_16
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_16} :catch_1c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_16} :catch_1f

    #@16
    if-lez v1, :cond_1d

    #@18
    const/4 v1, 0x0

    #@19
    aget-object v0, v0, v1

    #@1b
    :goto_1b
    return-object v0

    #@1c
    :catch_1c
    move-exception v0

    #@1d
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    #@1e
    goto :goto_1b

    #@1f
    :catch_1f
    move-exception v0

    #@20
    goto :goto_1d
.end method

.method guessPath(Ljava/lang/String;)[Ljava/io/File;
    .registers 11

    #@0
    new-instance v3, Ljava/util/ArrayList;

    #@2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@5
    invoke-static {p1}, Lcom/google/dexmaker/AppDataDirGuesser;->splitPathList(Ljava/lang/String;)[Ljava/lang/String;

    #@8
    move-result-object v4

    #@9
    array-length v5, v4

    #@a
    const/4 v0, 0x0

    #@b
    move v2, v0

    #@c
    :goto_c
    if-ge v2, v5, :cond_79

    #@e
    aget-object v6, v4, v2

    #@10
    const-string v0, "/data/app/"

    #@12
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_1c

    #@18
    :cond_18
    :goto_18
    add-int/lit8 v0, v2, 0x1

    #@1a
    move v2, v0

    #@1b
    goto :goto_c

    #@1c
    :cond_1c
    const-string v0, "/data/app/"

    #@1e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@21
    move-result v7

    #@22
    const-string v0, ".apk"

    #@24
    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@27
    move-result v0

    #@28
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@2b
    move-result v1

    #@2c
    add-int/lit8 v1, v1, -0x4

    #@2e
    if-ne v0, v1, :cond_18

    #@30
    const-string v1, "-"

    #@32
    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@35
    move-result v1

    #@36
    const/4 v8, -0x1

    #@37
    if-eq v1, v8, :cond_3a

    #@39
    move v0, v1

    #@3a
    :cond_3a
    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    new-instance v1, Ljava/io/File;

    #@40
    new-instance v6, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string v7, "/data/data/"

    #@47
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v6

    #@4b
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v0

    #@4f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v0

    #@53
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@56
    invoke-virtual {p0, v1}, Lcom/google/dexmaker/AppDataDirGuesser;->isWriteableDirectory(Ljava/io/File;)Z

    #@59
    move-result v0

    #@5a
    if-eqz v0, :cond_18

    #@5c
    new-instance v0, Ljava/io/File;

    #@5e
    const-string v6, "cache"

    #@60
    invoke-direct {v0, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@63
    invoke-virtual {p0, v0}, Lcom/google/dexmaker/AppDataDirGuesser;->fileOrDirExists(Ljava/io/File;)Z

    #@66
    move-result v1

    #@67
    if-nez v1, :cond_6f

    #@69
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    #@6c
    move-result v1

    #@6d
    if-eqz v1, :cond_18

    #@6f
    :cond_6f
    invoke-virtual {p0, v0}, Lcom/google/dexmaker/AppDataDirGuesser;->isWriteableDirectory(Ljava/io/File;)Z

    #@72
    move-result v1

    #@73
    if-eqz v1, :cond_18

    #@75
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@78
    goto :goto_18

    #@79
    :cond_79
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@7c
    move-result v0

    #@7d
    new-array v0, v0, [Ljava/io/File;

    #@7f
    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@82
    move-result-object v0

    #@83
    check-cast v0, [Ljava/io/File;

    #@85
    return-object v0
.end method

.method isWriteableDirectory(Ljava/io/File;)Z
    .registers 3

    #@0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_e

    #@6
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    :goto_d
    return v0

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    goto :goto_d
.end method
