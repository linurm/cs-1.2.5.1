.class public Lcom/apportable/AppEnvironment;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final ANDROID_DATA_DIRECTORY:Ljava/lang/String; = "ANDROID_DATA_DIRECTORY"

.field public static final ANDROID_DOWNLOAD_DIRECTORY:Ljava/lang/String; = "ANDROID_DOWNLOAD_DIRECTORY"

.field public static final ANDROID_EXTERNAL_STORAGE:Ljava/lang/String; = "ANDROID_EXTERNAL_STORAGE"

.field public static final CACHEDIR:Ljava/lang/String; = "CACHEDIR"

.field public static final CFFIXED_USER_HOME:Ljava/lang/String; = "CFFIXED_USER_HOME"

.field public static final CFPROCESSPATH:Ljava/lang/String; = "CFProcessPath"

.field public static final DEBUGGER_PATH:Ljava/lang/String; = "DEBUGGER_PATH"

.field public static final DEBUGGER_PORT:Ljava/lang/String; = "DEBUGGER_PORT"

.field public static final DEBUG_BUILD:Ljava/lang/String; = "DEBUG_BUILD"

.field public static final EARLY_LIFECYCLE_DEBUG:Ljava/lang/String; = "EARLY_LIFECYCLE_DEBUG"

.field public static final EXTERNAL_CACHEDIR:Ljava/lang/String; = "EXTERNAL_CACHEDIR"

.field public static final HOME:Ljava/lang/String; = "HOME"

.field public static final LANGUAGES:Ljava/lang/String; = "LANGUAGES"

.field public static final LOCALE:Ljava/lang/String; = "LOCALE"

.field public static final MALLOCCORRUPTIONABORT:Ljava/lang/String; = "MallocCorruptionAbort"

.field public static final MALLOCGUARDEDGES:Ljava/lang/String; = "MallocGuardEdges"

.field public static final MALLOCSCRIBBLE:Ljava/lang/String; = "MallocScribble"

.field public static final NSUNRECOGNIZEDFORWARDINGDISABLED:Ljava/lang/String; = "NSUnrecognizedForwardingDisabled"

.field public static final NSZOMBIEENABLED:Ljava/lang/String; = "NSZombieEnabled"

.field public static final OBBDIR:Ljava/lang/String; = "OBBDIR"

.field public static final PACKAGE_CODE_PATH:Ljava/lang/String; = "PACKAGE_CODE_PATH"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "PACKAGE_NAME"

.field public static final PACKAGE_RESOURCE_PATH:Ljava/lang/String; = "PACKAGE_RESOURCE_PATH"

.field public static final PROFILE:Ljava/lang/String; = "PROFILE"

.field private static final TAG:Ljava/lang/String; = "Environment"

.field public static final TEMP:Ljava/lang/String; = "TEMP"

.field public static final TEMPDIR:Ljava/lang/String; = "TEMPDIR"

.field public static final TMP:Ljava/lang/String; = "TMP"

.field public static final TMPDIR:Ljava/lang/String; = "TMPDIR"

.field public static final TZ:Ljava/lang/String; = "TZ"

.field public static final WAIT_FOR_ATTACH:Ljava/lang/String; = "WAIT_FOR_ATTACH"


# instance fields
.field private mValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/apportable/AppEnvironment;->mValues:Ljava/util/Map;

    #@a
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 9

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v6, 0x2

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    new-instance v0, Ljava/util/HashMap;

    #@7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@a
    iput-object v0, p0, Lcom/apportable/AppEnvironment;->mValues:Ljava/util/Map;

    #@c
    if-eqz p1, :cond_6e

    #@e
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_6e

    #@14
    new-instance v3, Ljava/util/HashMap;

    #@16
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@19
    :try_start_19
    new-instance v1, Ljava/io/FileInputStream;

    #@1b
    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_7f
    .catchall {:try_start_19 .. :try_end_1e} :catchall_77

    #@1e
    :try_start_1e
    new-instance v0, Ljava/io/BufferedReader;

    #@20
    new-instance v2, Ljava/io/InputStreamReader;

    #@22
    const-string v4, "UTF-8"

    #@24
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@27
    move-result-object v4

    #@28
    invoke-direct {v2, v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    #@2b
    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@2e
    :cond_2e
    :goto_2e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    if-eqz v2, :cond_6f

    #@34
    const-string v4, "Environment"

    #@36
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    const-string v4, "="

    #@3b
    const/4 v5, 0x2

    #@3c
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    array-length v4, v2

    #@41
    if-ne v4, v6, :cond_2e

    #@43
    const/4 v4, 0x0

    #@44
    aget-object v4, v2, v4

    #@46
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@49
    move-result-object v4

    #@4a
    const/4 v5, 0x1

    #@4b
    aget-object v2, v2, v5

    #@4d
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_54} :catch_55
    .catchall {:try_start_1e .. :try_end_54} :catchall_86

    #@54
    goto :goto_2e

    #@55
    :catch_55
    move-exception v0

    #@56
    move-object v0, v1

    #@57
    :goto_57
    if-eqz v0, :cond_5c

    #@59
    :try_start_59
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_82

    #@5c
    :cond_5c
    :goto_5c
    iget-object v0, p0, Lcom/apportable/AppEnvironment;->mValues:Ljava/util/Map;

    #@5e
    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    #@61
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    #@64
    move-result v0

    #@65
    if-nez v0, :cond_6e

    #@67
    const-string v0, "Environment"

    #@69
    const-string v1, "Unable to unlink previous environment"

    #@6b
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6e
    :cond_6e
    return-void

    #@6f
    :cond_6f
    if-eqz v1, :cond_5c

    #@71
    :try_start_71
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75

    #@74
    goto :goto_5c

    #@75
    :catch_75
    move-exception v0

    #@76
    goto :goto_5c

    #@77
    :catchall_77
    move-exception v0

    #@78
    move-object v1, v2

    #@79
    :goto_79
    if-eqz v1, :cond_7e

    #@7b
    :try_start_7b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_84

    #@7e
    :cond_7e
    :goto_7e
    throw v0

    #@7f
    :catch_7f
    move-exception v0

    #@80
    move-object v0, v2

    #@81
    goto :goto_57

    #@82
    :catch_82
    move-exception v0

    #@83
    goto :goto_5c

    #@84
    :catch_84
    move-exception v1

    #@85
    goto :goto_7e

    #@86
    :catchall_86
    move-exception v0

    #@87
    goto :goto_79
.end method

.method private static getBooleanFlag(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4

    #@0
    if-nez p1, :cond_4

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    return v0

    #@4
    :cond_4
    const-string v0, "1"

    #@6
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    goto :goto_3
.end method


# virtual methods
.method public applyBoolean(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    #@0
    invoke-static {p1, p2}, Lcom/apportable/AppEnvironment;->getBooleanFlag(Ljava/lang/String;Landroid/os/Bundle;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_b

    #@6
    const-string v0, "YES"

    #@8
    invoke-virtual {p0, p1, v0}, Lcom/apportable/AppEnvironment;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    :cond_b
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/AppEnvironment;->mValues:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/apportable/AppEnvironment;->mValues:Ljava/util/Map;

    #@3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/lang/String;

    #@9
    if-nez v0, :cond_d

    #@b
    move v0, v1

    #@c
    :goto_c
    return v0

    #@d
    :cond_d
    const-string v2, "1"

    #@f
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_35

    #@15
    const-string v2, "YES"

    #@17
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v2

    #@1b
    if-nez v2, :cond_35

    #@1d
    const-string v2, "yes"

    #@1f
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v2

    #@23
    if-nez v2, :cond_35

    #@25
    const-string v2, "TRUE"

    #@27
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v2

    #@2b
    if-nez v2, :cond_35

    #@2d
    const-string v2, "true"

    #@2f
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_37

    #@35
    :cond_35
    const/4 v0, 0x1

    #@36
    goto :goto_c

    #@37
    :cond_37
    move v0, v1

    #@38
    goto :goto_c
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/AppEnvironment;->mValues:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    if-nez v0, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@f
    move-result v0

    #@10
    goto :goto_b
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/apportable/AppEnvironment;->mValues:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/io/File;)V
    .registers 5

    #@0
    if-eqz p2, :cond_b

    #@2
    iget-object v0, p0, Lcom/apportable/AppEnvironment;->mValues:Ljava/util/Map;

    #@4
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    :cond_b
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    if-eqz p2, :cond_7

    #@2
    iget-object v0, p0, Lcom/apportable/AppEnvironment;->mValues:Ljava/util/Map;

    #@4
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    :cond_7
    return-void
.end method
