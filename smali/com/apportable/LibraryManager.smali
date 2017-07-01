.class public Lcom/apportable/LibraryManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/LibraryManager$CorruptedAPKException;,
        Lcom/apportable/LibraryManager$InvalidArchitectureException;,
        Lcom/apportable/LibraryManager$LibraryInfo;,
        Lcom/apportable/LibraryManager$NotEnoughSpaceException;,
        Lcom/apportable/LibraryManager$PermissionException;
    }
.end annotation


# static fields
.field private static final ASSETS_LIB_PATH_FMT:Ljava/lang/String; = "assets/.apportable/lib/%s"

.field private static final COMPRESSED_EXT:Ljava/lang/String; = ".7z"

.field private static final LIBRARY_FILE_FMT:Ljava/lang/String; = "lib%s.so"

.field private static final OUT_LIB_PATH_BASE:Ljava/lang/String; = "usr/lib"

.field private static final OUT_LIB_PATH_FMT:Ljava/lang/String; = "usr/lib/%s"

.field private static final PATCH_LIBS_PATH_FMT:Ljava/lang/String; = "libs/%s"

.field private static final SO_EXT:Ljava/lang/String; = ".so"

.field private static final STANDARD_LIB_PATH_FMT:Ljava/lang/String; = "lib/%s"

.field private static final TAG:Ljava/lang/String; = "LibraryManager"

.field private static final UNPACKED_PATCH_DIRECTORY_NAME:Ljava/lang/String; = "current"

.field private static cpuinfo:Ljava/lang/String;


# instance fields
.field private mAPK:Ljava/util/zip/ZipFile;

.field private mActivity:Landroid/app/Activity;

.field private mNativeDebuggingActive:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    sput-object v0, Lcom/apportable/LibraryManager;->cpuinfo:Ljava/lang/String;

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    #@5
    new-instance v0, Ljava/util/zip/ZipFile;

    #@7
    iget-object v1, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    #@9
    const/4 v2, 0x0

    #@a
    invoke-static {v1, v2}, Lcom/apportable/LibraryManager;->getApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;

    #@d
    move-result-object v1

    #@e
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@10
    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    #@13
    iput-object v0, p0, Lcom/apportable/LibraryManager;->mAPK:Ljava/util/zip/ZipFile;

    #@15
    iput-boolean p2, p0, Lcom/apportable/LibraryManager;->mNativeDebuggingActive:Z

    #@17
    return-void
.end method

.method private close()V
    .registers 2

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/apportable/LibraryManager;->mAPK:Ljava/util/zip/ZipFile;

    #@2
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    :goto_5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    goto :goto_5
.end method

.method private static close(Ljava/io/Closeable;)V
    .registers 2

    #@0
    if-eqz p0, :cond_5

    #@2
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    #@5
    :cond_5
    :goto_5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    goto :goto_5
.end method

.method private static deletePath(Ljava/io/File;)Z
    .registers 7

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_8

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_28

    #@e
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    move-object v2, v1

    #@13
    :goto_13
    if-eqz v2, :cond_2b

    #@15
    array-length v3, v2

    #@16
    const/4 v1, 0x0

    #@17
    :goto_17
    if-ge v1, v3, :cond_2b

    #@19
    new-instance v4, Ljava/io/File;

    #@1b
    aget-object v5, v2, v1

    #@1d
    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@20
    invoke-static {v4}, Lcom/apportable/LibraryManager;->deletePath(Ljava/io/File;)Z

    #@23
    move-result v4

    #@24
    add-int/lit8 v1, v1, 0x1

    #@26
    and-int/2addr v0, v4

    #@27
    goto :goto_17

    #@28
    :cond_28
    const/4 v1, 0x0

    #@29
    move-object v2, v1

    #@2a
    goto :goto_13

    #@2b
    :cond_2b
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    #@2e
    move-result v1

    #@2f
    and-int/2addr v0, v1

    #@30
    goto :goto_7
.end method

.method private extractLibrary(Lcom/apportable/LibraryManager$LibraryInfo;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v3, 0x2

    #@2
    const/4 v9, 0x1

    #@3
    const/4 v8, 0x0

    #@4
    iget-object v0, p1, Lcom/apportable/LibraryManager$LibraryInfo;->patchPath:Ljava/io/File;

    #@6
    if-eqz v0, :cond_92

    #@8
    const-string v0, "LibraryManager"

    #@a
    const-string v2, "Copying \'%s\' -> \'%s\'..."

    #@c
    new-array v3, v3, [Ljava/lang/Object;

    #@e
    iget-object v4, p1, Lcom/apportable/LibraryManager$LibraryInfo;->patchPath:Ljava/io/File;

    #@10
    aput-object v4, v3, v8

    #@12
    iget-object v4, p1, Lcom/apportable/LibraryManager$LibraryInfo;->outPath:Ljava/io/File;

    #@14
    aput-object v4, v3, v9

    #@16
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    :goto_1d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@20
    move-result-wide v2

    #@21
    :try_start_21
    iget-object v0, p1, Lcom/apportable/LibraryManager$LibraryInfo;->patchPath:Ljava/io/File;

    #@23
    if-eqz v0, :cond_ad

    #@25
    new-instance v0, Ljava/io/FileInputStream;

    #@27
    iget-object v4, p1, Lcom/apportable/LibraryManager$LibraryInfo;->patchPath:Ljava/io/File;

    #@29
    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2c} :catch_fd
    .catchall {:try_start_21 .. :try_end_2c} :catchall_8d

    #@2c
    :goto_2c
    :try_start_2c
    new-instance v1, Ljava/io/File;

    #@2e
    new-instance v4, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    iget-object v5, p1, Lcom/apportable/LibraryManager$LibraryInfo;->outPath:Ljava/io/File;

    #@35
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    const-string v5, ".tmp"

    #@3f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@4a
    new-instance v4, Ljava/io/FileOutputStream;

    #@4c
    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_4f} :catch_83
    .catchall {:try_start_2c .. :try_end_4f} :catchall_c1

    #@4f
    const/high16 v5, 0x10000

    #@51
    :try_start_51
    new-array v5, v5, [B

    #@53
    :goto_53
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_bc

    #@56
    move-result v6

    #@57
    const/4 v7, -0x1

    #@58
    if-ne v6, v7, :cond_b7

    #@5a
    :try_start_5a
    invoke-static {v4}, Lcom/apportable/LibraryManager;->close(Ljava/io/Closeable;)V

    #@5d
    iget-object v4, p1, Lcom/apportable/LibraryManager$LibraryInfo;->outPath:Ljava/io/File;

    #@5f
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    #@62
    iget-object v4, p1, Lcom/apportable/LibraryManager$LibraryInfo;->outPath:Ljava/io/File;

    #@64
    invoke-virtual {v1, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@67
    move-result v4

    #@68
    if-nez v4, :cond_c6

    #@6a
    new-instance v2, Lcom/apportable/LibraryManager$PermissionException;

    #@6c
    new-instance v3, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string v4, "failed to rename "

    #@73
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v3

    #@77
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v1

    #@7b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v1

    #@7f
    invoke-direct {v2, v1}, Lcom/apportable/LibraryManager$PermissionException;-><init>(Ljava/lang/String;)V

    #@82
    throw v2
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_83} :catch_83
    .catchall {:try_start_5a .. :try_end_83} :catchall_c1

    #@83
    :catch_83
    move-exception v1

    #@84
    move-object v10, v1

    #@85
    move-object v1, v0

    #@86
    move-object v0, v10

    #@87
    :goto_87
    :try_start_87
    iget-object v2, p1, Lcom/apportable/LibraryManager$LibraryInfo;->outPath:Ljava/io/File;

    #@89
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@8c
    throw v0
    :try_end_8d
    .catchall {:try_start_87 .. :try_end_8d} :catchall_8d

    #@8d
    :catchall_8d
    move-exception v0

    #@8e
    :goto_8e
    invoke-static {v1}, Lcom/apportable/LibraryManager;->close(Ljava/io/Closeable;)V

    #@91
    throw v0

    #@92
    :cond_92
    const-string v0, "LibraryManager"

    #@94
    const-string v2, "Extracting \'%s\' -> \'%s\'..."

    #@96
    new-array v3, v3, [Ljava/lang/Object;

    #@98
    iget-object v4, p1, Lcom/apportable/LibraryManager$LibraryInfo;->apkEntry:Ljava/util/zip/ZipEntry;

    #@9a
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@9d
    move-result-object v4

    #@9e
    aput-object v4, v3, v8

    #@a0
    iget-object v4, p1, Lcom/apportable/LibraryManager$LibraryInfo;->outPath:Ljava/io/File;

    #@a2
    aput-object v4, v3, v9

    #@a4
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@a7
    move-result-object v2

    #@a8
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ab
    goto/16 :goto_1d

    #@ad
    :cond_ad
    :try_start_ad
    iget-object v0, p0, Lcom/apportable/LibraryManager;->mAPK:Ljava/util/zip/ZipFile;

    #@af
    iget-object v4, p1, Lcom/apportable/LibraryManager$LibraryInfo;->apkEntry:Ljava/util/zip/ZipEntry;

    #@b1
    invoke-virtual {v0, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b4} :catch_fd
    .catchall {:try_start_ad .. :try_end_b4} :catchall_8d

    #@b4
    move-result-object v0

    #@b5
    goto/16 :goto_2c

    #@b7
    :cond_b7
    const/4 v7, 0x0

    #@b8
    :try_start_b8
    invoke-virtual {v4, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_bb
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_bc

    #@bb
    goto :goto_53

    #@bc
    :catchall_bc
    move-exception v1

    #@bd
    :try_start_bd
    invoke-static {v4}, Lcom/apportable/LibraryManager;->close(Ljava/io/Closeable;)V

    #@c0
    throw v1

    #@c1
    :catchall_c1
    move-exception v1

    #@c2
    move-object v10, v1

    #@c3
    move-object v1, v0

    #@c4
    move-object v0, v10

    #@c5
    goto :goto_8e

    #@c6
    :cond_c6
    const/4 v1, 0x0

    #@c7
    iput-boolean v1, p1, Lcom/apportable/LibraryManager$LibraryInfo;->needsExtraction:Z
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c9} :catch_83
    .catchall {:try_start_bd .. :try_end_c9} :catchall_c1

    #@c9
    invoke-static {v0}, Lcom/apportable/LibraryManager;->close(Ljava/io/Closeable;)V

    #@cc
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@cf
    move-result-wide v0

    #@d0
    sub-long/2addr v0, v2

    #@d1
    iget-object v2, p1, Lcom/apportable/LibraryManager$LibraryInfo;->patchPath:Ljava/io/File;

    #@d3
    if-eqz v2, :cond_e9

    #@d5
    const-string v2, "LibraryManager"

    #@d7
    const-string v3, "Copied in %d ms"

    #@d9
    new-array v4, v9, [Ljava/lang/Object;

    #@db
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@de
    move-result-object v0

    #@df
    aput-object v0, v4, v8

    #@e1
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@e4
    move-result-object v0

    #@e5
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@e8
    :goto_e8
    return-void

    #@e9
    :cond_e9
    const-string v2, "LibraryManager"

    #@eb
    const-string v3, "Extracted in %d ms"

    #@ed
    new-array v4, v9, [Ljava/lang/Object;

    #@ef
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@f2
    move-result-object v0

    #@f3
    aput-object v0, v4, v8

    #@f5
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@f8
    move-result-object v0

    #@f9
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@fc
    goto :goto_e8

    #@fd
    :catch_fd
    move-exception v0

    #@fe
    goto :goto_87
.end method

.method private getABIs()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    #@7
    const-string v2, "x86"

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_2e

    #@f
    const-string v1, "armeabi"

    #@11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@14
    const-string v1, "armeabi-v7a"

    #@16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@19
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    #@1b
    const-string v2, "armeabi"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@20
    move-result v1

    #@21
    if-nez v1, :cond_28

    #@23
    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    #@25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@28
    :cond_28
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    #@2a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2d
    :goto_2d
    return-object v0

    #@2e
    :cond_2e
    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    #@30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@33
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    #@35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@38
    goto :goto_2d
.end method

.method private getAPKLibraries()Ljava/util/Map;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/apportable/LibraryManager$LibraryInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    new-instance v3, Ljava/util/HashMap;

    #@2
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@5
    new-instance v4, Ljava/util/ArrayList;

    #@7
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@a
    new-instance v5, Ljava/util/HashSet;

    #@c
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    #@f
    new-instance v2, Ljava/util/HashSet;

    #@11
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    #@14
    move-result-object v0

    #@15
    const-string v1, "apportable.abi_list"

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    const-string v1, "\\s+"

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@24
    move-result-object v0

    #@25
    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@28
    invoke-direct {p0}, Lcom/apportable/LibraryManager;->getABIs()Ljava/util/ArrayList;

    #@2b
    move-result-object v6

    #@2c
    invoke-static {}, Lcom/apportable/LibraryManager;->neonSupported()Z

    #@2f
    move-result v7

    #@30
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    #@33
    move-result-object v0

    #@34
    const-string v1, "apportable.abi_list"

    #@36
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    const-string v1, "\\s+"

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@3f
    move-result-object v8

    #@40
    if-nez v7, :cond_2a5

    #@42
    const-string v0, "armv7a-neon"

    #@44
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@47
    move-result v0

    #@48
    if-eqz v0, :cond_2a5

    #@4a
    const/4 v0, 0x0

    #@4b
    aget-object v0, v8, v0

    #@4d
    const-string v1, "armv7a"

    #@4f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v0

    #@53
    if-nez v0, :cond_2a5

    #@55
    const/4 v0, 0x0

    #@56
    move v1, v0

    #@57
    :goto_57
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5a
    move-result-object v9

    #@5b
    :cond_5b
    :goto_5b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@5e
    move-result v0

    #@5f
    if-eqz v0, :cond_137

    #@61
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@64
    move-result-object v0

    #@65
    check-cast v0, Ljava/lang/String;

    #@67
    const-string v10, "LibraryManager"

    #@69
    const-string v11, "Scanning ABI %s"

    #@6b
    const/4 v12, 0x1

    #@6c
    new-array v12, v12, [Ljava/lang/Object;

    #@6e
    const/4 v13, 0x0

    #@6f
    aput-object v0, v12, v13

    #@71
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@74
    move-result-object v11

    #@75
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@78
    const-string v10, "armeabi-v7"

    #@7a
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@7d
    move-result v10

    #@7e
    if-eqz v10, :cond_104

    #@80
    const-string v0, "armv7a"

    #@82
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@85
    move-result v0

    #@86
    if-eqz v0, :cond_9e

    #@88
    new-instance v0, Ljava/io/File;

    #@8a
    const-string v10, "assets/.apportable/lib/%s"

    #@8c
    const/4 v11, 0x1

    #@8d
    new-array v11, v11, [Ljava/lang/Object;

    #@8f
    const/4 v12, 0x0

    #@90
    const-string v13, "armeabi-v7a"

    #@92
    aput-object v13, v11, v12

    #@94
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@97
    move-result-object v10

    #@98
    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@9b
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9e
    :cond_9e
    if-eqz v1, :cond_c9

    #@a0
    const-string v0, "armv7a"

    #@a2
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@a5
    move-result v0

    #@a6
    if-nez v0, :cond_b0

    #@a8
    const-string v0, "armv7a-neon"

    #@aa
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@ad
    move-result v0

    #@ae
    if-eqz v0, :cond_c9

    #@b0
    :cond_b0
    new-instance v0, Ljava/io/File;

    #@b2
    const-string v10, "lib/%s"

    #@b4
    const/4 v11, 0x1

    #@b5
    new-array v11, v11, [Ljava/lang/Object;

    #@b7
    const/4 v12, 0x0

    #@b8
    const-string v13, "armeabi-v7a"

    #@ba
    aput-object v13, v11, v12

    #@bc
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@bf
    move-result-object v10

    #@c0
    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@c3
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c6
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@c9
    :cond_c9
    const-string v0, "armv7a-neon"

    #@cb
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@ce
    move-result v0

    #@cf
    if-eqz v0, :cond_5b

    #@d1
    if-eqz v7, :cond_5b

    #@d3
    new-instance v0, Ljava/io/File;

    #@d5
    const-string v10, "assets/.apportable/lib/%s"

    #@d7
    const/4 v11, 0x1

    #@d8
    new-array v11, v11, [Ljava/lang/Object;

    #@da
    const/4 v12, 0x0

    #@db
    const-string v13, "armeabi-v7a-neon"

    #@dd
    aput-object v13, v11, v12

    #@df
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@e2
    move-result-object v10

    #@e3
    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@e6
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e9
    new-instance v0, Ljava/io/File;

    #@eb
    const-string v10, "lib/%s"

    #@ed
    const/4 v11, 0x1

    #@ee
    new-array v11, v11, [Ljava/lang/Object;

    #@f0
    const/4 v12, 0x0

    #@f1
    const-string v13, "armeabi-v7a-neon"

    #@f3
    aput-object v13, v11, v12

    #@f5
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@f8
    move-result-object v10

    #@f9
    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@fc
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ff
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@102
    goto/16 :goto_5b

    #@104
    :cond_104
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@107
    move-result v10

    #@108
    if-eqz v10, :cond_5b

    #@10a
    new-instance v10, Ljava/io/File;

    #@10c
    const-string v11, "assets/.apportable/lib/%s"

    #@10e
    const/4 v12, 0x1

    #@10f
    new-array v12, v12, [Ljava/lang/Object;

    #@111
    const/4 v13, 0x0

    #@112
    aput-object v0, v12, v13

    #@114
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@117
    move-result-object v11

    #@118
    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@11b
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@11e
    new-instance v10, Ljava/io/File;

    #@120
    const-string v11, "lib/%s"

    #@122
    const/4 v12, 0x1

    #@123
    new-array v12, v12, [Ljava/lang/Object;

    #@125
    const/4 v13, 0x0

    #@126
    aput-object v0, v12, v13

    #@128
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@12b
    move-result-object v0

    #@12c
    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@12f
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@132
    invoke-interface {v5, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@135
    goto/16 :goto_5b

    #@137
    :cond_137
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@13a
    move-result v0

    #@13b
    if-nez v0, :cond_14c

    #@13d
    new-instance v0, Lcom/apportable/LibraryManager$InvalidArchitectureException;

    #@13f
    new-instance v1, Ljava/util/ArrayList;

    #@141
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@144
    move-result-object v2

    #@145
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@148
    invoke-direct {v0, v6, v1}, Lcom/apportable/LibraryManager$InvalidArchitectureException;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    #@14b
    throw v0

    #@14c
    :cond_14c
    new-instance v6, Ljava/util/ArrayList;

    #@14e
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@151
    iget-object v0, p0, Lcom/apportable/LibraryManager;->mAPK:Ljava/util/zip/ZipFile;

    #@153
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    #@156
    move-result-object v2

    #@157
    :cond_157
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@15a
    move-result v0

    #@15b
    if-eqz v0, :cond_190

    #@15d
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@160
    move-result-object v0

    #@161
    check-cast v0, Ljava/util/zip/ZipEntry;

    #@163
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    #@166
    move-result v1

    #@167
    if-nez v1, :cond_157

    #@169
    new-instance v7, Ljava/io/File;

    #@16b
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@16e
    move-result-object v1

    #@16f
    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@172
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@175
    move-result-object v8

    #@176
    :cond_176
    :goto_176
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@179
    move-result v1

    #@17a
    if-eqz v1, :cond_157

    #@17c
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17f
    move-result-object v1

    #@180
    check-cast v1, Ljava/io/File;

    #@182
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@185
    move-result-object v9

    #@186
    invoke-virtual {v1, v9}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    #@189
    move-result v1

    #@18a
    if-eqz v1, :cond_176

    #@18c
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@18f
    goto :goto_176

    #@190
    :cond_190
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@193
    move-result-object v7

    #@194
    :cond_194
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@197
    move-result v0

    #@198
    if-eqz v0, :cond_203

    #@19a
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19d
    move-result-object v0

    #@19e
    check-cast v0, Ljava/io/File;

    #@1a0
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@1a3
    move-result-object v8

    #@1a4
    :cond_1a4
    :goto_1a4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@1a7
    move-result v1

    #@1a8
    if-eqz v1, :cond_194

    #@1aa
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1ad
    move-result-object v1

    #@1ae
    check-cast v1, Ljava/util/zip/ZipEntry;

    #@1b0
    new-instance v2, Ljava/io/File;

    #@1b2
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@1b5
    move-result-object v9

    #@1b6
    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1b9
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@1bc
    move-result-object v9

    #@1bd
    invoke-virtual {v0, v9}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    #@1c0
    move-result v9

    #@1c1
    if-eqz v9, :cond_1a4

    #@1c3
    new-instance v9, Lcom/apportable/LibraryManager$LibraryInfo;

    #@1c5
    const/4 v10, 0x0

    #@1c6
    invoke-direct {v9, v10}, Lcom/apportable/LibraryManager$LibraryInfo;-><init>(Lcom/apportable/LibraryManager$1;)V

    #@1c9
    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@1cc
    move-result v10

    #@1cd
    iput-boolean v10, v9, Lcom/apportable/LibraryManager$LibraryInfo;->isStandard:Z

    #@1cf
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    #@1d2
    move-result-object v2

    #@1d3
    const-string v10, ".so.7z"

    #@1d5
    invoke-virtual {v2, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@1d8
    move-result v10

    #@1d9
    if-eqz v10, :cond_1fa

    #@1db
    const/4 v10, 0x0

    #@1dc
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@1df
    move-result v11

    #@1e0
    const-string v12, ".7z"

    #@1e2
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    #@1e5
    move-result v12

    #@1e6
    sub-int/2addr v11, v12

    #@1e7
    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1ea
    move-result-object v2

    #@1eb
    const/4 v10, 0x1

    #@1ec
    iput-boolean v10, v9, Lcom/apportable/LibraryManager$LibraryInfo;->isCompressed:Z

    #@1ee
    :cond_1ee
    iput-object v2, v9, Lcom/apportable/LibraryManager$LibraryInfo;->fileName:Ljava/lang/String;

    #@1f0
    iput-object v1, v9, Lcom/apportable/LibraryManager$LibraryInfo;->apkEntry:Ljava/util/zip/ZipEntry;

    #@1f2
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@1f5
    move-result-object v1

    #@1f6
    invoke-interface {v3, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f9
    goto :goto_1a4

    #@1fa
    :cond_1fa
    const-string v10, ".so"

    #@1fc
    invoke-virtual {v2, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@1ff
    move-result v10

    #@200
    if-nez v10, :cond_1ee

    #@202
    goto :goto_1a4

    #@203
    :cond_203
    iget-object v0, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    #@205
    invoke-static {v0}, Lcom/apportable/LibraryManager;->isApplicationDebuggable(Landroid/content/Context;)Z

    #@208
    move-result v0

    #@209
    if-eqz v0, :cond_2a9

    #@20b
    new-instance v1, Ljava/io/File;

    #@20d
    iget-object v0, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    #@20f
    const-string v2, "external_patch"

    #@211
    const/4 v5, 0x3

    #@212
    invoke-virtual {v0, v2, v5}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    #@215
    move-result-object v0

    #@216
    const-string v2, "current"

    #@218
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@21b
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@21e
    move-result-object v2

    #@21f
    :cond_21f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@222
    move-result v0

    #@223
    if-eqz v0, :cond_2a9

    #@225
    new-instance v4, Ljava/io/File;

    #@227
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22a
    move-result-object v0

    #@22b
    check-cast v0, Ljava/io/File;

    #@22d
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@230
    move-result-object v0

    #@231
    invoke-direct {v4, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@234
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    #@237
    move-result v0

    #@238
    if-eqz v0, :cond_21f

    #@23a
    const-string v0, "LibraryManager"

    #@23c
    new-instance v5, Ljava/lang/StringBuilder;

    #@23e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@241
    const-string v6, "Probing "

    #@243
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@246
    move-result-object v5

    #@247
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@24a
    move-result-object v6

    #@24b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24e
    move-result-object v5

    #@24f
    const-string v6, " for libs"

    #@251
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@254
    move-result-object v5

    #@255
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@258
    move-result-object v5

    #@259
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25c
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@25f
    move-result-object v4

    #@260
    array-length v5, v4

    #@261
    const/4 v0, 0x0

    #@262
    :goto_262
    if-ge v0, v5, :cond_21f

    #@264
    aget-object v6, v4, v0

    #@266
    const-string v7, "LibraryManager"

    #@268
    new-instance v8, Ljava/lang/StringBuilder;

    #@26a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@26d
    const-string v9, "Found "

    #@26f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@272
    move-result-object v8

    #@273
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@276
    move-result-object v9

    #@277
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27a
    move-result-object v8

    #@27b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27e
    move-result-object v8

    #@27f
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@282
    new-instance v7, Lcom/apportable/LibraryManager$LibraryInfo;

    #@284
    const/4 v8, 0x0

    #@285
    invoke-direct {v7, v8}, Lcom/apportable/LibraryManager$LibraryInfo;-><init>(Lcom/apportable/LibraryManager$1;)V

    #@288
    const/4 v8, 0x0

    #@289
    iput-boolean v8, v7, Lcom/apportable/LibraryManager$LibraryInfo;->isCompressed:Z

    #@28b
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    #@28e
    move-result-object v8

    #@28f
    iput-object v8, v7, Lcom/apportable/LibraryManager$LibraryInfo;->fileName:Ljava/lang/String;

    #@291
    iput-object v6, v7, Lcom/apportable/LibraryManager$LibraryInfo;->patchPath:Ljava/io/File;

    #@293
    const/4 v6, 0x0

    #@294
    iput-boolean v6, v7, Lcom/apportable/LibraryManager$LibraryInfo;->needsExtraction:Z

    #@296
    const/4 v6, 0x0

    #@297
    iput-boolean v6, v7, Lcom/apportable/LibraryManager$LibraryInfo;->isStandard:Z

    #@299
    iget-object v6, v7, Lcom/apportable/LibraryManager$LibraryInfo;->fileName:Ljava/lang/String;

    #@29b
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@29e
    move-result-object v6

    #@29f
    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a2
    add-int/lit8 v0, v0, 0x1

    #@2a4
    goto :goto_262

    #@2a5
    :cond_2a5
    const/4 v0, 0x1

    #@2a6
    move v1, v0

    #@2a7
    goto/16 :goto_57

    #@2a9
    :cond_2a9
    return-object v3
.end method

.method private static getApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;
    .registers 4

    #@0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_d

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    :catch_d
    move-exception v0

    #@e
    new-instance v1, Ljava/lang/RuntimeException;

    #@10
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@13
    throw v1
.end method

.method public static getCPUInfo()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    sget-object v0, Lcom/apportable/LibraryManager;->cpuinfo:Ljava/lang/String;

    #@3
    if-nez v0, :cond_25

    #@5
    new-instance v2, Ljava/io/FileInputStream;

    #@7
    const-string v0, "/proc/cpuinfo"

    #@9
    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    #@c
    const/16 v0, 0x1000

    #@e
    new-array v3, v0, [B

    #@10
    move v0, v1

    #@11
    :goto_11
    array-length v4, v3

    #@12
    sub-int/2addr v4, v0

    #@13
    invoke-virtual {v2, v3, v0, v4}, Ljava/io/FileInputStream;->read([BII)I

    #@16
    move-result v4

    #@17
    if-lez v4, :cond_1b

    #@19
    add-int/2addr v0, v4

    #@1a
    goto :goto_11

    #@1b
    :cond_1b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    #@1e
    new-instance v2, Ljava/lang/String;

    #@20
    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([BII)V

    #@23
    sput-object v2, Lcom/apportable/LibraryManager;->cpuinfo:Ljava/lang/String;

    #@25
    :cond_25
    sget-object v0, Lcom/apportable/LibraryManager;->cpuinfo:Ljava/lang/String;

    #@27
    return-object v0
.end method

.method private static getNativeLibraryPath(Landroid/content/Context;)Ljava/io/File;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Lcom/apportable/LibraryManager;->getApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;

    #@4
    move-result-object v1

    #@5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@7
    const/16 v2, 0x9

    #@9
    if-lt v0, v2, :cond_13

    #@b
    new-instance v0, Ljava/io/File;

    #@d
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@f
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@12
    :goto_12
    return-object v0

    #@13
    :cond_13
    new-instance v0, Ljava/io/File;

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string v3, "/data/data/"

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    const-string v2, "/lib"

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@33
    goto :goto_12
.end method

.method private static getPackageInfo(Landroid/content/Context;I)Landroid/content/pm/PackageInfo;
    .registers 4

    #@0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_d

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    :catch_d
    move-exception v0

    #@e
    new-instance v1, Ljava/lang/RuntimeException;

    #@10
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@13
    throw v1
.end method

.method private initializeLibv()V
    .registers 10

    #@0
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    iget-object v0, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    #@5
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@c
    move-result-object v2

    #@d
    iget-object v0, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    #@f
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@12
    move-result-object v0

    #@13
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@15
    and-int/lit8 v0, v0, 0x2

    #@17
    if-eqz v0, :cond_20

    #@19
    const-string v0, "DEBUG_BUILD"

    #@1b
    const-string v3, "1"

    #@1d
    invoke-static {v0, v3}, Lcom/apportable/LibraryLoader;->setenv(Ljava/lang/String;Ljava/lang/String;)V

    #@20
    :cond_20
    iget-boolean v0, p0, Lcom/apportable/LibraryManager;->mNativeDebuggingActive:Z

    #@22
    if-eqz v0, :cond_88

    #@24
    iget-object v0, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    #@26
    invoke-static {v0}, Lcom/apportable/LibraryManager;->isApplicationDebuggable(Landroid/content/Context;)Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_88

    #@2c
    if-eqz v2, :cond_88

    #@2e
    const-string v0, "1"

    #@30
    const-string v3, "EARLY_LIFECYCLE_DEBUG"

    #@32
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_88

    #@3c
    invoke-static {}, Lcom/apportable/LibraryLoader;->debugWait()V

    #@3f
    :cond_3f
    :goto_3f
    if-eqz v2, :cond_be

    #@41
    new-array v3, v6, [Ljava/lang/String;

    #@43
    const-string v0, "XCTest"

    #@45
    aput-object v0, v3, v1

    #@47
    const-string v0, "XCTestObserverClass"

    #@49
    aput-object v0, v3, v5

    #@4b
    const/4 v0, 0x7

    #@4c
    new-array v4, v0, [Ljava/lang/String;

    #@4e
    const-string v0, "PROFILE"

    #@50
    aput-object v0, v4, v1

    #@52
    const-string v0, "NSZombieEnabled"

    #@54
    aput-object v0, v4, v5

    #@56
    const-string v0, "NSUnrecognizedForwardingDisabled"

    #@58
    aput-object v0, v4, v6

    #@5a
    const/4 v0, 0x3

    #@5b
    const-string v5, "MallocCorruptionAbort"

    #@5d
    aput-object v5, v4, v0

    #@5f
    const/4 v0, 0x4

    #@60
    const-string v5, "MallocGuardEdges"

    #@62
    aput-object v5, v4, v0

    #@64
    const/4 v0, 0x5

    #@65
    const-string v5, "MallocScribble"

    #@67
    aput-object v5, v4, v0

    #@69
    const/4 v0, 0x6

    #@6a
    const-string v5, "ApportableRunLongRunningTestsKey"

    #@6c
    aput-object v5, v4, v0

    #@6e
    array-length v5, v4

    #@6f
    move v0, v1

    #@70
    :goto_70
    if-ge v0, v5, :cond_ac

    #@72
    aget-object v6, v4, v0

    #@74
    const-string v7, "1"

    #@76
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@79
    move-result-object v8

    #@7a
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7d
    move-result v7

    #@7e
    if-eqz v7, :cond_85

    #@80
    const-string v7, "YES"

    #@82
    invoke-static {v6, v7}, Lcom/apportable/LibraryLoader;->setenv(Ljava/lang/String;Ljava/lang/String;)V

    #@85
    :cond_85
    add-int/lit8 v0, v0, 0x1

    #@87
    goto :goto_70

    #@88
    :cond_88
    iget-boolean v0, p0, Lcom/apportable/LibraryManager;->mNativeDebuggingActive:Z

    #@8a
    if-eqz v0, :cond_3f

    #@8c
    iget-object v0, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    #@8e
    invoke-static {v0}, Lcom/apportable/LibraryManager;->isApplicationDebuggable(Landroid/content/Context;)Z

    #@91
    move-result v0

    #@92
    if-eqz v0, :cond_3f

    #@94
    if-eqz v2, :cond_3f

    #@96
    const-string v0, "1"

    #@98
    const-string v3, "WAIT_FOR_ATTACH"

    #@9a
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@9d
    move-result-object v3

    #@9e
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a1
    move-result v0

    #@a2
    if-eqz v0, :cond_3f

    #@a4
    const-string v0, "WAIT_FOR_ATTACH"

    #@a6
    const-string v3, "1"

    #@a8
    invoke-static {v0, v3}, Lcom/apportable/LibraryLoader;->setenv(Ljava/lang/String;Ljava/lang/String;)V

    #@ab
    goto :goto_3f

    #@ac
    :cond_ac
    array-length v4, v3

    #@ad
    move v0, v1

    #@ae
    :goto_ae
    if-ge v0, v4, :cond_cd

    #@b0
    aget-object v5, v3, v0

    #@b2
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@b5
    move-result-object v6

    #@b6
    if-eqz v6, :cond_bb

    #@b8
    invoke-static {v5, v6}, Lcom/apportable/LibraryLoader;->setenv(Ljava/lang/String;Ljava/lang/String;)V

    #@bb
    :cond_bb
    add-int/lit8 v0, v0, 0x1

    #@bd
    goto :goto_ae

    #@be
    :cond_be
    iget-object v0, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    #@c0
    invoke-static {v0}, Lcom/apportable/LibraryManager;->isApplicationDebuggable(Landroid/content/Context;)Z

    #@c3
    move-result v0

    #@c4
    if-nez v0, :cond_cd

    #@c6
    const-string v0, "NSUnrecognizedForwardingDisabled"

    #@c8
    const-string v2, "YES"

    #@ca
    invoke-static {v0, v2}, Lcom/apportable/LibraryLoader;->setenv(Ljava/lang/String;Ljava/lang/String;)V

    #@cd
    :cond_cd
    iget-object v0, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    #@cf
    const/16 v2, 0x80

    #@d1
    invoke-static {v0, v2}, Lcom/apportable/LibraryManager;->getApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;

    #@d4
    move-result-object v0

    #@d5
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    #@d7
    const-string v0, "VERSION_CODE"

    #@d9
    iget-object v3, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    #@db
    invoke-static {v3, v1}, Lcom/apportable/LibraryManager;->getPackageInfo(Landroid/content/Context;I)Landroid/content/pm/PackageInfo;

    #@de
    move-result-object v3

    #@df
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    #@e1
    invoke-static {v0, v3}, Lcom/apportable/LibraryLoader;->setenv(Ljava/lang/String;Ljava/lang/String;)V

    #@e4
    const-string v0, "VERSION_NAME"

    #@e6
    new-instance v3, Ljava/lang/StringBuilder;

    #@e8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@eb
    const-string v4, ""

    #@ed
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v3

    #@f1
    iget-object v4, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    #@f3
    invoke-static {v4, v1}, Lcom/apportable/LibraryManager;->getPackageInfo(Landroid/content/Context;I)Landroid/content/pm/PackageInfo;

    #@f6
    move-result-object v1

    #@f7
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    #@f9
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v1

    #@fd
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@100
    move-result-object v1

    #@101
    invoke-static {v0, v1}, Lcom/apportable/LibraryLoader;->setenv(Ljava/lang/String;Ljava/lang/String;)V

    #@104
    if-eqz v2, :cond_126

    #@106
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@109
    move-result-object v0

    #@10a
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@10d
    move-result-object v1

    #@10e
    :goto_10e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@111
    move-result v0

    #@112
    if-eqz v0, :cond_126

    #@114
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@117
    move-result-object v0

    #@118
    check-cast v0, Ljava/lang/String;

    #@11a
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@11d
    move-result-object v3

    #@11e
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@121
    move-result-object v3

    #@122
    invoke-static {v0, v3}, Lcom/apportable/LibraryLoader;->setenv(Ljava/lang/String;Ljava/lang/String;)V

    #@125
    goto :goto_10e

    #@126
    :cond_126
    const-string v0, "LOCALE"

    #@128
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@12b
    move-result-object v1

    #@12c
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@12f
    move-result-object v1

    #@130
    invoke-static {v0, v1}, Lcom/apportable/LibraryLoader;->setenv(Ljava/lang/String;Ljava/lang/String;)V

    #@133
    const-string v0, "LANGUAGES"

    #@135
    invoke-direct {p0}, Lcom/apportable/LibraryManager;->languages()Ljava/lang/String;

    #@138
    move-result-object v1

    #@139
    invoke-static {v0, v1}, Lcom/apportable/LibraryLoader;->setenv(Ljava/lang/String;Ljava/lang/String;)V

    #@13c
    const-string v0, "TZ"

    #@13e
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@141
    move-result-object v1

    #@142
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@145
    move-result-object v1

    #@146
    invoke-static {v0, v1}, Lcom/apportable/LibraryLoader;->setenv(Ljava/lang/String;Ljava/lang/String;)V

    #@149
    const-string v0, "HOME"

    #@14b
    iget-object v1, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    #@14d
    invoke-virtual {v1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    #@150
    move-result-object v1

    #@151
    invoke-static {v0, v1}, Lcom/apportable/LibraryManager;->setPath(Ljava/lang/String;Ljava/io/File;)V

    #@154
    const-string v0, "TMP"

    #@156
    iget-object v1, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    #@158
    invoke-virtual {v1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    #@15b
    move-result-object v1

    #@15c
    invoke-static {v0, v1}, Lcom/apportable/LibraryManager;->setPath(Ljava/lang/String;Ljava/io/File;)V

    #@15f
    const-string v0, "TEMP"

    #@161
    iget-object v1, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    #@163
    invoke-virtual {v1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    #@166
    move-result-object v1

    #@167
    invoke-static {v0, v1}, Lcom/apportable/LibraryManager;->setPath(Ljava/lang/String;Ljava/io/File;)V

    #@16a
    const-string v0, "TMPDIR"

    #@16c
    iget-object v1, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    #@16e
    invoke-virtual {v1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    #@171
    move-result-object v1

    #@172
    invoke-static {v0, v1}, Lcom/apportable/LibraryManager;->setPath(Ljava/lang/String;Ljava/io/File;)V

    #@175
    const-string v0, "TEMPDIR"

    #@177
    iget-object v1, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    #@179
    invoke-virtual {v1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    #@17c
    move-result-object v1

    #@17d
    invoke-static {v0, v1}, Lcom/apportable/LibraryManager;->setPath(Ljava/lang/String;Ljava/io/File;)V

    #@180
    const-string v0, "CACHEDIR"

    #@182
    iget-object v1, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    #@184
    invoke-virtual {v1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    #@187
    move-result-object v1

    #@188
    invoke-static {v0, v1}, Lcom/apportable/LibraryManager;->setPath(Ljava/lang/String;Ljava/io/File;)V

    #@18b
    const-string v0, "EXTERNAL_CACHEDIR"

    #@18d
    iget-object v1, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    #@18f
    invoke-virtual {v1}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    #@192
    move-result-object v1

    #@193
    invoke-static {v0, v1}, Lcom/apportable/LibraryManager;->setPath(Ljava/lang/String;Ljava/io/File;)V

    #@196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@198
    const/16 v1, 0xb

    #@19a
    if-lt v0, v1, :cond_208

    #@19c
    const-string v0, "OBBDIR"

    #@19e
    iget-object v1, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    #@1a0
    invoke-virtual {v1}, Landroid/app/Activity;->getObbDir()Ljava/io/File;

    #@1a3
    move-result-object v1

    #@1a4
    invoke-static {v0, v1}, Lcom/apportable/LibraryManager;->setPath(Ljava/lang/String;Ljava/io/File;)V

    #@1a7
    :goto_1a7
    const-string v0, "PACKAGE_CODE_PATH"

    #@1a9
    iget-object v1, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    #@1ab
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageCodePath()Ljava/lang/String;

    #@1ae
    move-result-object v1

    #@1af
    invoke-static {v0, v1}, Lcom/apportable/LibraryLoader;->setenv(Ljava/lang/String;Ljava/lang/String;)V

    #@1b2
    const-string v0, "PACKAGE_RESOURCE_PATH"

    #@1b4
    iget-object v1, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    #@1b6
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageResourcePath()Ljava/lang/String;

    #@1b9
    move-result-object v1

    #@1ba
    invoke-static {v0, v1}, Lcom/apportable/LibraryLoader;->setenv(Ljava/lang/String;Ljava/lang/String;)V

    #@1bd
    const-string v0, "PACKAGE_NAME"

    #@1bf
    iget-object v1, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    #@1c1
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@1c4
    move-result-object v1

    #@1c5
    invoke-static {v0, v1}, Lcom/apportable/LibraryLoader;->setenv(Ljava/lang/String;Ljava/lang/String;)V

    #@1c8
    const-string v0, "ANDROID_DATA_DIRECTORY"

    #@1ca
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@1cd
    move-result-object v1

    #@1ce
    invoke-static {v0, v1}, Lcom/apportable/LibraryManager;->setPath(Ljava/lang/String;Ljava/io/File;)V

    #@1d1
    const-string v0, "ANDROID_DOWNLOAD_DIRECTORY"

    #@1d3
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    #@1d6
    move-result-object v1

    #@1d7
    invoke-static {v0, v1}, Lcom/apportable/LibraryManager;->setPath(Ljava/lang/String;Ljava/io/File;)V

    #@1da
    const-string v0, "ANDROID_EXTERNAL_STORAGE"

    #@1dc
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    #@1df
    move-result-object v1

    #@1e0
    invoke-static {v0, v1}, Lcom/apportable/LibraryManager;->setPath(Ljava/lang/String;Ljava/io/File;)V

    #@1e3
    const-string v0, "CFFIXED_USER_HOME"

    #@1e5
    iget-object v1, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    #@1e7
    invoke-virtual {v1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    #@1ea
    move-result-object v1

    #@1eb
    invoke-static {v0, v1}, Lcom/apportable/LibraryManager;->setPath(Ljava/lang/String;Ljava/io/File;)V

    #@1ee
    const-string v0, "CFProcessPath"

    #@1f0
    new-instance v1, Ljava/io/File;

    #@1f2
    iget-object v2, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    #@1f4
    invoke-virtual {v2}, Landroid/app/Activity;->getPackageCodePath()Ljava/lang/String;

    #@1f7
    move-result-object v2

    #@1f8
    iget-object v3, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    #@1fa
    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@1fd
    move-result-object v3

    #@1fe
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@201
    invoke-static {v0, v1}, Lcom/apportable/LibraryManager;->setPath(Ljava/lang/String;Ljava/io/File;)V

    #@204
    invoke-static {}, Lcom/apportable/LibraryLoader;->init()V

    #@207
    return-void

    #@208
    :cond_208
    const-string v0, "OBBDIR"

    #@20a
    new-instance v1, Ljava/io/File;

    #@20c
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    #@20f
    move-result-object v2

    #@210
    new-instance v3, Ljava/lang/StringBuilder;

    #@212
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@215
    const-string v4, "Android/obb/"

    #@217
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21a
    move-result-object v3

    #@21b
    iget-object v4, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    #@21d
    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@220
    move-result-object v4

    #@221
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@224
    move-result-object v3

    #@225
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@228
    move-result-object v3

    #@229
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@22c
    invoke-static {v0, v1}, Lcom/apportable/LibraryManager;->setPath(Ljava/lang/String;Ljava/io/File;)V

    #@22f
    goto/16 :goto_1a7
.end method

.method private static isApplicationDebuggable(Landroid/content/Context;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Lcom/apportable/LibraryManager;->getApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;

    #@4
    move-result-object v1

    #@5
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    #@7
    and-int/lit8 v1, v1, 0x2

    #@9
    if-eqz v1, :cond_c

    #@b
    const/4 v0, 0x1

    #@c
    :cond_c
    return v0
.end method

.method private languages()Ljava/lang/String;
    .registers 6

    #@0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-direct {p0, v1}, Lcom/apportable/LibraryManager;->localeName(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    #@f
    move-result-object v2

    #@10
    new-instance v3, Lcom/apportable/LibraryManager$1;

    #@12
    invoke-direct {v3, p0, v0}, Lcom/apportable/LibraryManager$1;-><init>(Lcom/apportable/LibraryManager;Ljava/util/Locale;)V

    #@15
    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    #@18
    new-instance v3, Ljava/util/LinkedHashSet;

    #@1a
    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    #@1d
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@20
    array-length v1, v2

    #@21
    const/4 v0, 0x0

    #@22
    :goto_22
    if-ge v0, v1, :cond_34

    #@24
    aget-object v4, v2, v0

    #@26
    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    invoke-direct {p0, v4}, Lcom/apportable/LibraryManager;->localeName(Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@31
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_22

    #@34
    :cond_34
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@37
    move-result-object v1

    #@38
    new-instance v2, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@40
    move-result v0

    #@41
    if-eqz v0, :cond_5c

    #@43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@46
    move-result-object v0

    #@47
    check-cast v0, Ljava/lang/String;

    #@49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@50
    move-result v0

    #@51
    if-eqz v0, :cond_59

    #@53
    const-string v0, ", "

    #@55
    :goto_55
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    goto :goto_3d

    #@59
    :cond_59
    const-string v0, ""

    #@5b
    goto :goto_55

    #@5c
    :cond_5c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v0

    #@60
    return-object v0
.end method

.method private loadLibraries()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v8, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    iget-object v0, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    #@4
    invoke-static {v0, v2}, Lcom/apportable/LibraryManager;->getPackageInfo(Landroid/content/Context;I)Landroid/content/pm/PackageInfo;

    #@7
    move-result-object v0

    #@8
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    #@a
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    invoke-direct {p0, v0}, Lcom/apportable/LibraryManager;->purgeOldVersions(Ljava/lang/String;)V

    #@11
    invoke-direct {p0}, Lcom/apportable/LibraryManager;->getAPKLibraries()Ljava/util/Map;

    #@14
    move-result-object v3

    #@15
    invoke-interface {v3}, Ljava/util/Map;->size()I

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_23

    #@1b
    new-instance v0, Lcom/apportable/LibraryManager$CorruptedAPKException;

    #@1d
    const-string v1, "no libraries found in the APK"

    #@1f
    invoke-direct {v0, v1}, Lcom/apportable/LibraryManager$CorruptedAPKException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    :cond_23
    new-instance v1, Ljava/io/File;

    #@25
    iget-object v4, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    #@27
    invoke-virtual {v4}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    #@2a
    move-result-object v4

    #@2b
    const-string v5, "usr/lib/%s"

    #@2d
    new-array v6, v8, [Ljava/lang/Object;

    #@2f
    aput-object v0, v6, v2

    #@31
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    invoke-direct {v1, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@38
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@3b
    move-result v0

    #@3c
    if-nez v0, :cond_54

    #@3e
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    #@41
    move-result v0

    #@42
    if-nez v0, :cond_54

    #@44
    new-instance v0, Lcom/apportable/LibraryManager$PermissionException;

    #@46
    const-string v3, "failed to create \'%s\'"

    #@48
    new-array v4, v8, [Ljava/lang/Object;

    #@4a
    aput-object v1, v4, v2

    #@4c
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    invoke-direct {v0, v1}, Lcom/apportable/LibraryManager$PermissionException;-><init>(Ljava/lang/String;)V

    #@53
    throw v0

    #@54
    :cond_54
    invoke-direct {p0, v3, v1}, Lcom/apportable/LibraryManager;->realizeLibraries(Ljava/util/Map;Ljava/io/File;)V

    #@57
    iget-object v0, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    #@59
    const/16 v1, 0x80

    #@5b
    invoke-static {v0, v1}, Lcom/apportable/LibraryManager;->getApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;

    #@5e
    move-result-object v0

    #@5f
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    #@61
    const-string v1, "android.app.libs"

    #@63
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@66
    move-result-object v0

    #@67
    const-string v1, "\\s+"

    #@69
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@6c
    move-result-object v4

    #@6d
    array-length v5, v4

    #@6e
    move v1, v2

    #@6f
    :goto_6f
    if-ge v1, v5, :cond_a7

    #@71
    aget-object v6, v4, v1

    #@73
    const-string v0, "lib%s.so"

    #@75
    new-array v7, v8, [Ljava/lang/Object;

    #@77
    aput-object v6, v7, v2

    #@79
    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@7c
    move-result-object v7

    #@7d
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@80
    move-result-object v0

    #@81
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@84
    move-result-object v0

    #@85
    check-cast v0, Lcom/apportable/LibraryManager$LibraryInfo;

    #@87
    if-nez v0, :cond_99

    #@89
    new-instance v0, Lcom/apportable/LibraryManager$CorruptedAPKException;

    #@8b
    const-string v1, "%s not found in the APK"

    #@8d
    new-array v3, v8, [Ljava/lang/Object;

    #@8f
    aput-object v7, v3, v2

    #@91
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@94
    move-result-object v1

    #@95
    invoke-direct {v0, v1}, Lcom/apportable/LibraryManager$CorruptedAPKException;-><init>(Ljava/lang/String;)V

    #@98
    throw v0

    #@99
    :cond_99
    iget-boolean v7, v0, Lcom/apportable/LibraryManager$LibraryInfo;->needsExtraction:Z

    #@9b
    if-eqz v7, :cond_a0

    #@9d
    invoke-direct {p0, v0}, Lcom/apportable/LibraryManager;->extractLibrary(Lcom/apportable/LibraryManager$LibraryInfo;)V

    #@a0
    :cond_a0
    invoke-direct {p0, v6, v0}, Lcom/apportable/LibraryManager;->loadLibrary(Ljava/lang/String;Lcom/apportable/LibraryManager$LibraryInfo;)V

    #@a3
    add-int/lit8 v0, v1, 0x1

    #@a5
    move v1, v0

    #@a6
    goto :goto_6f

    #@a7
    :cond_a7
    return-void
.end method

.method public static loadLibraries(Landroid/app/Activity;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@4
    move-result-object v1

    #@5
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    #@7
    and-int/lit8 v1, v1, 0x2

    #@9
    if-eqz v1, :cond_4f

    #@b
    new-instance v1, Lcom/apportable/AppEnvironment;

    #@d
    new-instance v2, Ljava/io/File;

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string v4, "/data/local/tmp/"

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    const-string v4, ".env"

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@2f
    invoke-direct {v1, v2}, Lcom/apportable/AppEnvironment;-><init>(Ljava/io/File;)V

    #@32
    const-string v2, "DEBUGGER_PATH"

    #@34
    invoke-virtual {v1, v2}, Lcom/apportable/AppEnvironment;->get(Ljava/lang/String;)Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    if-eqz v2, :cond_4f

    #@3a
    new-instance v3, Ljava/io/File;

    #@3c
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@3f
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    #@42
    move-result v3

    #@43
    if-eqz v3, :cond_4f

    #@45
    const-string v0, "DEBUGGER_PORT"

    #@47
    invoke-virtual {v1, v0}, Lcom/apportable/AppEnvironment;->getInt(Ljava/lang/String;)I

    #@4a
    move-result v0

    #@4b
    invoke-static {v2, v0}, Lcom/apportable/verde/DebuggerSupport;->startGdbServer(Ljava/lang/String;I)V

    #@4e
    const/4 v0, 0x1

    #@4f
    :cond_4f
    new-instance v1, Lcom/apportable/LibraryManager;

    #@51
    invoke-direct {v1, p0, v0}, Lcom/apportable/LibraryManager;-><init>(Landroid/app/Activity;Z)V

    #@54
    :try_start_54
    invoke-direct {v1}, Lcom/apportable/LibraryManager;->loadLibraries()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_5b

    #@57
    invoke-direct {v1}, Lcom/apportable/LibraryManager;->close()V

    #@5a
    return-void

    #@5b
    :catchall_5b
    move-exception v0

    #@5c
    invoke-direct {v1}, Lcom/apportable/LibraryManager;->close()V

    #@5f
    throw v0
.end method

.method private loadLibrary(Ljava/lang/String;Lcom/apportable/LibraryManager$LibraryInfo;)V
    .registers 12

    #@0
    const/4 v6, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@5
    move-result-wide v0

    #@6
    iget-boolean v2, p2, Lcom/apportable/LibraryManager$LibraryInfo;->isStandard:Z

    #@8
    if-eqz v2, :cond_43

    #@a
    const-string v2, "LibraryManager"

    #@c
    const-string v3, "Loading library \'%s\'..."

    #@e
    new-array v4, v6, [Ljava/lang/Object;

    #@10
    aput-object p1, v4, v8

    #@12
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@1c
    :goto_1c
    iget-object v2, p2, Lcom/apportable/LibraryManager$LibraryInfo;->fileName:Ljava/lang/String;

    #@1e
    const-string v3, "libv.so"

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_29

    #@26
    invoke-direct {p0}, Lcom/apportable/LibraryManager;->initializeLibv()V

    #@29
    :cond_29
    const-string v2, "LibraryManager"

    #@2b
    const-string v3, "Loaded in %d ms"

    #@2d
    new-array v4, v6, [Ljava/lang/Object;

    #@2f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@32
    move-result-wide v6

    #@33
    sub-long v0, v6, v0

    #@35
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@38
    move-result-object v0

    #@39
    aput-object v0, v4, v8

    #@3b
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    return-void

    #@43
    :cond_43
    iget-object v2, p2, Lcom/apportable/LibraryManager$LibraryInfo;->patchPath:Ljava/io/File;

    #@45
    if-eqz v2, :cond_66

    #@47
    const-string v2, "LibraryManager"

    #@49
    const-string v3, "Loading patched library \'%s\'"

    #@4b
    new-array v4, v6, [Ljava/lang/Object;

    #@4d
    iget-object v5, p2, Lcom/apportable/LibraryManager$LibraryInfo;->patchPath:Ljava/io/File;

    #@4f
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@52
    move-result-object v5

    #@53
    aput-object v5, v4, v8

    #@55
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@58
    move-result-object v3

    #@59
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    iget-object v2, p2, Lcom/apportable/LibraryManager$LibraryInfo;->patchPath:Ljava/io/File;

    #@5e
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    #@65
    goto :goto_1c

    #@66
    :cond_66
    const-string v2, "LibraryManager"

    #@68
    const-string v3, "Loading \'%s\'..."

    #@6a
    new-array v4, v6, [Ljava/lang/Object;

    #@6c
    iget-object v5, p2, Lcom/apportable/LibraryManager$LibraryInfo;->outPath:Ljava/io/File;

    #@6e
    aput-object v5, v4, v8

    #@70
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@73
    move-result-object v3

    #@74
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@77
    iget-object v2, p2, Lcom/apportable/LibraryManager$LibraryInfo;->outPath:Ljava/io/File;

    #@79
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@7c
    move-result-object v2

    #@7d
    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    #@80
    goto :goto_1c
.end method

.method private localeName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string v1, "zh_hans"

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_14

    #@c
    const-string v1, "zh-hans"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_17

    #@14
    :cond_14
    const-string v0, "zh-Hans"

    #@16
    :goto_16
    return-object v0

    #@17
    :cond_17
    const-string v1, "zh_hant"

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_27

    #@1f
    const-string v1, "zh-hant"

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_2a

    #@27
    :cond_27
    const-string v0, "zh-Hant"

    #@29
    goto :goto_16

    #@2a
    :cond_2a
    const-string v1, "_"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    const/4 v1, 0x0

    #@31
    aget-object v0, v0, v1

    #@33
    goto :goto_16
.end method

.method public static neonSupported()Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    :try_start_1
    invoke-static {}, Lcom/apportable/LibraryManager;->getCPUInfo()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    const-string v2, "neon"

    #@7
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_10

    #@a
    move-result v1

    #@b
    const/4 v2, -0x1

    #@c
    if-eq v1, v2, :cond_f

    #@e
    const/4 v0, 0x1

    #@f
    :cond_f
    :goto_f
    return v0

    #@10
    :catch_10
    move-exception v1

    #@11
    goto :goto_f
.end method

.method private purgeOldVersions(Ljava/lang/String;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    #@2
    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    #@8
    invoke-virtual {v1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    #@b
    move-result-object v1

    #@c
    new-instance v2, Ljava/io/File;

    #@e
    const-string v3, "usr/lib"

    #@10
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@13
    invoke-direct {p0, v2, p1}, Lcom/apportable/LibraryManager;->purgeVersions(Ljava/io/File;Ljava/lang/String;)V

    #@16
    new-instance v2, Ljava/io/File;

    #@18
    const-string v3, "apportable-lib"

    #@1a
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1d
    invoke-static {v2}, Lcom/apportable/LibraryManager;->deletePath(Ljava/io/File;)Z

    #@20
    new-instance v2, Ljava/io/File;

    #@22
    const-string v3, "apportable-lib"

    #@24
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@27
    invoke-static {v2}, Lcom/apportable/LibraryManager;->deletePath(Ljava/io/File;)Z

    #@2a
    new-instance v1, Ljava/io/File;

    #@2c
    const-string v2, ".apportable"

    #@2e
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@31
    invoke-static {v1}, Lcom/apportable/LibraryManager;->deletePath(Ljava/io/File;)Z

    #@34
    return-void
.end method

.method private purgeVersions(Ljava/io/File;Ljava/lang/String;)V
    .registers 8

    #@0
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    if-eqz v1, :cond_1e

    #@6
    array-length v2, v1

    #@7
    const/4 v0, 0x0

    #@8
    :goto_8
    if-ge v0, v2, :cond_1e

    #@a
    aget-object v3, v1, v0

    #@c
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_15

    #@12
    :goto_12
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_8

    #@15
    :cond_15
    new-instance v4, Ljava/io/File;

    #@17
    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1a
    invoke-static {v4}, Lcom/apportable/LibraryManager;->deletePath(Ljava/io/File;)Z

    #@1d
    goto :goto_12

    #@1e
    :cond_1e
    return-void
.end method

.method private realizeLibraries(Ljava/util/Map;Ljava/io/File;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/apportable/LibraryManager$LibraryInfo;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v8, 0x0

    #@1
    iget-object v0, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    #@3
    invoke-static {v0}, Lcom/apportable/LibraryManager;->getNativeLibraryPath(Landroid/content/Context;)Ljava/io/File;

    #@6
    move-result-object v1

    #@7
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@a
    move-result-object v0

    #@b
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v2

    #@f
    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_7a

    #@15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/apportable/LibraryManager$LibraryInfo;

    #@1b
    iget-object v3, v0, Lcom/apportable/LibraryManager$LibraryInfo;->patchPath:Ljava/io/File;

    #@1d
    if-nez v3, :cond_f

    #@1f
    new-instance v3, Ljava/io/File;

    #@21
    iget-object v4, v0, Lcom/apportable/LibraryManager$LibraryInfo;->fileName:Ljava/lang/String;

    #@23
    invoke-direct {v3, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@26
    iput-object v3, v0, Lcom/apportable/LibraryManager$LibraryInfo;->outPath:Ljava/io/File;

    #@28
    const/4 v3, 0x1

    #@29
    iput-boolean v3, v0, Lcom/apportable/LibraryManager$LibraryInfo;->needsExtraction:Z

    #@2b
    iget-boolean v3, v0, Lcom/apportable/LibraryManager$LibraryInfo;->isStandard:Z

    #@2d
    if-eqz v3, :cond_4e

    #@2f
    new-instance v3, Ljava/io/File;

    #@31
    iget-object v4, v0, Lcom/apportable/LibraryManager$LibraryInfo;->fileName:Ljava/lang/String;

    #@33
    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@36
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    #@39
    move-result v4

    #@3a
    if-eqz v4, :cond_71

    #@3c
    invoke-virtual {v3}, Ljava/io/File;->length()J

    #@3f
    move-result-wide v4

    #@40
    iget-object v6, v0, Lcom/apportable/LibraryManager$LibraryInfo;->apkEntry:Ljava/util/zip/ZipEntry;

    #@42
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getSize()J

    #@45
    move-result-wide v6

    #@46
    cmp-long v4, v4, v6

    #@48
    if-nez v4, :cond_71

    #@4a
    iput-object v3, v0, Lcom/apportable/LibraryManager$LibraryInfo;->outPath:Ljava/io/File;

    #@4c
    iput-boolean v8, v0, Lcom/apportable/LibraryManager$LibraryInfo;->needsExtraction:Z

    #@4e
    :cond_4e
    :goto_4e
    iget-boolean v3, v0, Lcom/apportable/LibraryManager$LibraryInfo;->needsExtraction:Z

    #@50
    if-eqz v3, :cond_f

    #@52
    iget-object v3, v0, Lcom/apportable/LibraryManager$LibraryInfo;->outPath:Ljava/io/File;

    #@54
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    #@57
    move-result v3

    #@58
    if-eqz v3, :cond_f

    #@5a
    iget-boolean v3, v0, Lcom/apportable/LibraryManager$LibraryInfo;->isCompressed:Z

    #@5c
    if-nez v3, :cond_6e

    #@5e
    iget-object v3, v0, Lcom/apportable/LibraryManager$LibraryInfo;->outPath:Ljava/io/File;

    #@60
    invoke-virtual {v3}, Ljava/io/File;->length()J

    #@63
    move-result-wide v4

    #@64
    iget-object v3, v0, Lcom/apportable/LibraryManager$LibraryInfo;->apkEntry:Ljava/util/zip/ZipEntry;

    #@66
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    #@69
    move-result-wide v6

    #@6a
    cmp-long v3, v4, v6

    #@6c
    if-nez v3, :cond_74

    #@6e
    :cond_6e
    iput-boolean v8, v0, Lcom/apportable/LibraryManager$LibraryInfo;->needsExtraction:Z

    #@70
    goto :goto_f

    #@71
    :cond_71
    iput-boolean v8, v0, Lcom/apportable/LibraryManager$LibraryInfo;->isStandard:Z

    #@73
    goto :goto_4e

    #@74
    :cond_74
    iget-object v0, v0, Lcom/apportable/LibraryManager$LibraryInfo;->outPath:Ljava/io/File;

    #@76
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@79
    goto :goto_f

    #@7a
    :cond_7a
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@7d
    move-result-object v0

    #@7e
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@81
    move-result-object v4

    #@82
    const-wide/16 v2, 0x0

    #@84
    :goto_84
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@87
    move-result v0

    #@88
    if-eqz v0, :cond_ac

    #@8a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8d
    move-result-object v0

    #@8e
    check-cast v0, Lcom/apportable/LibraryManager$LibraryInfo;

    #@90
    iget-boolean v1, v0, Lcom/apportable/LibraryManager$LibraryInfo;->needsExtraction:Z

    #@92
    if-eqz v1, :cond_ca

    #@94
    iget-boolean v1, v0, Lcom/apportable/LibraryManager$LibraryInfo;->isCompressed:Z

    #@96
    if-eqz v1, :cond_a4

    #@98
    iget-object v0, v0, Lcom/apportable/LibraryManager$LibraryInfo;->apkEntry:Ljava/util/zip/ZipEntry;

    #@9a
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    #@9d
    move-result-wide v0

    #@9e
    const-wide/16 v6, 0x8

    #@a0
    mul-long/2addr v0, v6

    #@a1
    add-long/2addr v0, v2

    #@a2
    :goto_a2
    move-wide v2, v0

    #@a3
    goto :goto_84

    #@a4
    :cond_a4
    iget-object v0, v0, Lcom/apportable/LibraryManager$LibraryInfo;->apkEntry:Ljava/util/zip/ZipEntry;

    #@a6
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    #@a9
    move-result-wide v0

    #@aa
    add-long/2addr v0, v2

    #@ab
    goto :goto_a2

    #@ac
    :cond_ac
    new-instance v0, Landroid/os/StatFs;

    #@ae
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@b1
    move-result-object v1

    #@b2
    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    #@b5
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    #@b8
    move-result v1

    #@b9
    int-to-long v4, v1

    #@ba
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    #@bd
    move-result v0

    #@be
    int-to-long v0, v0

    #@bf
    mul-long/2addr v0, v4

    #@c0
    cmp-long v4, v2, v0

    #@c2
    if-lez v4, :cond_cc

    #@c4
    new-instance v4, Lcom/apportable/LibraryManager$NotEnoughSpaceException;

    #@c6
    invoke-direct {v4, v2, v3, v0, v1}, Lcom/apportable/LibraryManager$NotEnoughSpaceException;-><init>(JJ)V

    #@c9
    throw v4

    #@ca
    :cond_ca
    move-wide v0, v2

    #@cb
    goto :goto_a2

    #@cc
    :cond_cc
    return-void
.end method

.method private static setPath(Ljava/lang/String;Ljava/io/File;)V
    .registers 3

    #@0
    if-eqz p1, :cond_9

    #@2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-static {p0, v0}, Lcom/apportable/LibraryLoader;->setenv(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    :cond_9
    return-void
.end method
