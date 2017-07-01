.class public Landroid/support/v4/content/FileProvider;
.super Landroid/content/ContentProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/FileProvider$PathStrategy;,
        Landroid/support/v4/content/FileProvider$SimplePathStrategy;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PATH:Ljava/lang/String; = "path"

.field private static final COLUMNS:[Ljava/lang/String;

.field private static final DEVICE_ROOT:Ljava/io/File;

.field private static final META_DATA_FILE_PROVIDER_PATHS:Ljava/lang/String; = "android.support.FILE_PROVIDER_PATHS"

.field private static final TAG_CACHE_PATH:Ljava/lang/String; = "cache-path"

.field private static final TAG_EXTERNAL:Ljava/lang/String; = "external-path"

.field private static final TAG_FILES_PATH:Ljava/lang/String; = "files-path"

.field private static final TAG_ROOT_PATH:Ljava/lang/String; = "root-path"

.field private static sCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/content/FileProvider$PathStrategy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const/4 v1, 0x0

    #@4
    const-string v2, "_display_name"

    #@6
    aput-object v2, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    const-string v2, "_size"

    #@b
    aput-object v2, v0, v1

    #@d
    sput-object v0, Landroid/support/v4/content/FileProvider;->COLUMNS:[Ljava/lang/String;

    #@f
    new-instance v0, Ljava/io/File;

    #@11
    const-string v1, "/"

    #@13
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@16
    sput-object v0, Landroid/support/v4/content/FileProvider;->DEVICE_ROOT:Ljava/io/File;

    #@18
    new-instance v0, Ljava/util/HashMap;

    #@1a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1d
    sput-object v0, Landroid/support/v4/content/FileProvider;->sCache:Ljava/util/HashMap;

    #@1f
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    #@3
    return-void
.end method

.method private static varargs buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .registers 7

    #@0
    array-length v3, p1

    #@1
    const/4 v0, 0x0

    #@2
    move v2, v0

    #@3
    move-object v1, p0

    #@4
    :goto_4
    if-ge v2, v3, :cond_16

    #@6
    aget-object v4, p1, v2

    #@8
    if-eqz v4, :cond_14

    #@a
    new-instance v0, Ljava/io/File;

    #@c
    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@f
    :goto_f
    add-int/lit8 v1, v2, 0x1

    #@11
    move v2, v1

    #@12
    move-object v1, v0

    #@13
    goto :goto_4

    #@14
    :cond_14
    move-object v0, v1

    #@15
    goto :goto_f

    #@16
    :cond_16
    return-object v1
.end method

.method private static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 4

    #@0
    const/4 v1, 0x0

    #@1
    new-array v0, p1, [Ljava/lang/Object;

    #@3
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@6
    return-object v0
.end method

.method private static copyOf([Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4

    #@0
    const/4 v1, 0x0

    #@1
    new-array v0, p1, [Ljava/lang/String;

    #@3
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@6
    return-object v0
.end method

.method private static getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$PathStrategy;
    .registers 6

    #@0
    sget-object v1, Landroid/support/v4/content/FileProvider;->sCache:Ljava/util/HashMap;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    sget-object v0, Landroid/support/v4/content/FileProvider;->sCache:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/support/v4/content/FileProvider$PathStrategy;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_21

    #@b
    if-nez v0, :cond_16

    #@d
    :try_start_d
    invoke-static {p0, p1}, Landroid/support/v4/content/FileProvider;->parsePathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$PathStrategy;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_18
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_10} :catch_24
    .catchall {:try_start_d .. :try_end_10} :catchall_21

    #@10
    move-result-object v0

    #@11
    :try_start_11
    sget-object v2, Landroid/support/v4/content/FileProvider;->sCache:Ljava/util/HashMap;

    #@13
    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    :cond_16
    monitor-exit v1

    #@17
    return-object v0

    #@18
    :catch_18
    move-exception v0

    #@19
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string v3, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    #@1d
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@20
    throw v2

    #@21
    :catchall_21
    move-exception v0

    #@22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_21

    #@23
    throw v0

    #@24
    :catch_24
    move-exception v0

    #@25
    :try_start_25
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@27
    const-string v3, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    #@29
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2c
    throw v2
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_21
.end method

.method public static getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    .registers 4

    #@0
    invoke-static {p0, p1}, Landroid/support/v4/content/FileProvider;->getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$PathStrategy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p2}, Landroid/support/v4/content/FileProvider$PathStrategy;->getUriForFile(Ljava/io/File;)Landroid/net/Uri;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static modeToMode(Ljava/lang/String;)I
    .registers 4

    #@0
    const-string v0, "r"

    #@2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_b

    #@8
    const/high16 v0, 0x10000000

    #@a
    :goto_a
    return v0

    #@b
    :cond_b
    const-string v0, "w"

    #@d
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_1b

    #@13
    const-string v0, "wt"

    #@15
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_1e

    #@1b
    :cond_1b
    const/high16 v0, 0x2c000000

    #@1d
    goto :goto_a

    #@1e
    :cond_1e
    const-string v0, "wa"

    #@20
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_29

    #@26
    const/high16 v0, 0x2a000000

    #@28
    goto :goto_a

    #@29
    :cond_29
    const-string v0, "rw"

    #@2b
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_34

    #@31
    const/high16 v0, 0x38000000

    #@33
    goto :goto_a

    #@34
    :cond_34
    const-string v0, "rwt"

    #@36
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_3f

    #@3c
    const/high16 v0, 0x3c000000    # 0.0078125f

    #@3e
    goto :goto_a

    #@3f
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@41
    new-instance v1, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string v2, "Invalid mode: "

    #@48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@57
    throw v0
.end method

.method private static parsePathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$PathStrategy;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    const/4 v7, 0x1

    #@3
    new-instance v2, Landroid/support/v4/content/FileProvider$SimplePathStrategy;

    #@5
    invoke-direct {v2, p1}, Landroid/support/v4/content/FileProvider$SimplePathStrategy;-><init>(Ljava/lang/String;)V

    #@8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@b
    move-result-object v0

    #@c
    const/16 v3, 0x80

    #@e
    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@15
    move-result-object v3

    #@16
    const-string v4, "android.support.FILE_PROVIDER_PATHS"

    #@18
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/ProviderInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@1b
    move-result-object v3

    #@1c
    if-nez v3, :cond_26

    #@1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@20
    const-string v1, "Missing android.support.FILE_PROVIDER_PATHS meta-data"

    #@22
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    :cond_26
    :goto_26
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    #@29
    move-result v0

    #@2a
    if-eq v0, v7, :cond_96

    #@2c
    const/4 v4, 0x2

    #@2d
    if-ne v0, v4, :cond_26

    #@2f
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    const-string v4, "name"

    #@35
    invoke-interface {v3, v1, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    const-string v5, "path"

    #@3b
    invoke-interface {v3, v1, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    const-string v6, "root-path"

    #@41
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v6

    #@45
    if-eqz v6, :cond_57

    #@47
    sget-object v0, Landroid/support/v4/content/FileProvider;->DEVICE_ROOT:Ljava/io/File;

    #@49
    new-array v6, v7, [Ljava/lang/String;

    #@4b
    aput-object v5, v6, v8

    #@4d
    invoke-static {v0, v6}, Landroid/support/v4/content/FileProvider;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@50
    move-result-object v0

    #@51
    :goto_51
    if-eqz v0, :cond_26

    #@53
    invoke-virtual {v2, v4, v0}, Landroid/support/v4/content/FileProvider$SimplePathStrategy;->addRoot(Ljava/lang/String;Ljava/io/File;)V

    #@56
    goto :goto_26

    #@57
    :cond_57
    const-string v6, "files-path"

    #@59
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v6

    #@5d
    if-eqz v6, :cond_6c

    #@5f
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    #@62
    move-result-object v0

    #@63
    new-array v6, v7, [Ljava/lang/String;

    #@65
    aput-object v5, v6, v8

    #@67
    invoke-static {v0, v6}, Landroid/support/v4/content/FileProvider;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@6a
    move-result-object v0

    #@6b
    goto :goto_51

    #@6c
    :cond_6c
    const-string v6, "cache-path"

    #@6e
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@71
    move-result v6

    #@72
    if-eqz v6, :cond_81

    #@74
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    #@77
    move-result-object v0

    #@78
    new-array v6, v7, [Ljava/lang/String;

    #@7a
    aput-object v5, v6, v8

    #@7c
    invoke-static {v0, v6}, Landroid/support/v4/content/FileProvider;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@7f
    move-result-object v0

    #@80
    goto :goto_51

    #@81
    :cond_81
    const-string v6, "external-path"

    #@83
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@86
    move-result v0

    #@87
    if-eqz v0, :cond_97

    #@89
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    #@8c
    move-result-object v0

    #@8d
    new-array v6, v7, [Ljava/lang/String;

    #@8f
    aput-object v5, v6, v8

    #@91
    invoke-static {v0, v6}, Landroid/support/v4/content/FileProvider;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@94
    move-result-object v0

    #@95
    goto :goto_51

    #@96
    :cond_96
    return-object v2

    #@97
    :cond_97
    move-object v0, v1

    #@98
    goto :goto_51
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 5

    #@0
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    #@3
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    #@5
    if-eqz v0, :cond_f

    #@7
    new-instance v0, Ljava/lang/SecurityException;

    #@9
    const-string v1, "Provider must not be exported"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    :cond_f
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    #@11
    if-nez v0, :cond_1b

    #@13
    new-instance v0, Ljava/lang/SecurityException;

    #@15
    const-string v1, "Provider must grant uri permissions"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    :cond_1b
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    #@1d
    invoke-static {p1, v0}, Landroid/support/v4/content/FileProvider;->getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$PathStrategy;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;

    #@23
    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    #@0
    iget-object v0, p0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;

    #@2
    invoke-interface {v0, p1}, Landroid/support/v4/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

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

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5

    #@0
    iget-object v0, p0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;

    #@2
    invoke-interface {v0, p1}, Landroid/support/v4/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    const/16 v2, 0x2e

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@f
    move-result v1

    #@10
    if-ltz v1, :cond_27

    #@12
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    add-int/lit8 v1, v1, 0x1

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    if-eqz v0, :cond_27

    #@26
    :goto_26
    return-object v0

    #@27
    :cond_27
    const-string v0, "application/octet-stream"

    #@29
    goto :goto_26
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5

    #@0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v1, "No external inserts"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method

.method public onCreate()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;

    #@2
    invoke-interface {v0, p1}, Landroid/support/v4/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    invoke-static {p2}, Landroid/support/v4/content/FileProvider;->modeToMode(Ljava/lang/String;)I

    #@9
    move-result v1

    #@a
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;

    #@3
    invoke-interface {v1, p1}, Landroid/support/v4/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    #@6
    move-result-object v3

    #@7
    if-nez p2, :cond_b

    #@9
    sget-object p2, Landroid/support/v4/content/FileProvider;->COLUMNS:[Ljava/lang/String;

    #@b
    :cond_b
    array-length v1, p2

    #@c
    new-array v4, v1, [Ljava/lang/String;

    #@e
    array-length v1, p2

    #@f
    new-array v5, v1, [Ljava/lang/Object;

    #@11
    array-length v6, p2

    #@12
    move v2, v0

    #@13
    move v1, v0

    #@14
    :goto_14
    if-ge v2, v6, :cond_4a

    #@16
    aget-object v0, p2, v2

    #@18
    const-string v7, "_display_name"

    #@1a
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v7

    #@1e
    if-eqz v7, :cond_31

    #@20
    const-string v0, "_display_name"

    #@22
    aput-object v0, v4, v1

    #@24
    add-int/lit8 v0, v1, 0x1

    #@26
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    #@29
    move-result-object v7

    #@2a
    aput-object v7, v5, v1

    #@2c
    :goto_2c
    add-int/lit8 v1, v2, 0x1

    #@2e
    move v2, v1

    #@2f
    move v1, v0

    #@30
    goto :goto_14

    #@31
    :cond_31
    const-string v7, "_size"

    #@33
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_5c

    #@39
    const-string v0, "_size"

    #@3b
    aput-object v0, v4, v1

    #@3d
    add-int/lit8 v0, v1, 0x1

    #@3f
    invoke-virtual {v3}, Ljava/io/File;->length()J

    #@42
    move-result-wide v8

    #@43
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@46
    move-result-object v7

    #@47
    aput-object v7, v5, v1

    #@49
    goto :goto_2c

    #@4a
    :cond_4a
    invoke-static {v4, v1}, Landroid/support/v4/content/FileProvider;->copyOf([Ljava/lang/String;I)[Ljava/lang/String;

    #@4d
    move-result-object v0

    #@4e
    invoke-static {v5, v1}, Landroid/support/v4/content/FileProvider;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@51
    move-result-object v1

    #@52
    new-instance v2, Landroid/database/MatrixCursor;

    #@54
    const/4 v3, 0x1

    #@55
    invoke-direct {v2, v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    #@58
    invoke-virtual {v2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    #@5b
    return-object v2

    #@5c
    :cond_5c
    move v0, v1

    #@5d
    goto :goto_2c
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7

    #@0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v1, "No external updates"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method
