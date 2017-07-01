.class public Landroid/support/v4/content/ContextCompat;
.super Ljava/lang/Object;


# static fields
.field private static final DIR_ANDROID:Ljava/lang/String; = "Android"

.field private static final DIR_CACHE:Ljava/lang/String; = "cache"

.field private static final DIR_DATA:Ljava/lang/String; = "data"

.field private static final DIR_FILES:Ljava/lang/String; = "files"

.field private static final DIR_OBB:Ljava/lang/String; = "obb"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    if-ge v2, v3, :cond_1e

    #@6
    aget-object v4, p1, v2

    #@8
    if-nez v1, :cond_14

    #@a
    new-instance v0, Ljava/io/File;

    #@c
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

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
    if-eqz v4, :cond_1c

    #@16
    new-instance v0, Ljava/io/File;

    #@18
    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1b
    goto :goto_f

    #@1c
    :cond_1c
    move-object v0, v1

    #@1d
    goto :goto_f

    #@1e
    :cond_1e
    return-object v1
.end method

.method public static getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;
    .registers 7

    #@0
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@4
    const/16 v1, 0x13

    #@6
    if-lt v0, v1, :cond_d

    #@8
    invoke-static {p0}, Landroid/support/v4/content/ContextCompatKitKat;->getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;

    #@b
    move-result-object v0

    #@c
    :goto_c
    return-object v0

    #@d
    :cond_d
    const/16 v1, 0x8

    #@f
    if-lt v0, v1, :cond_1b

    #@11
    invoke-static {p0}, Landroid/support/v4/content/ContextCompatFroyo;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    #@14
    move-result-object v0

    #@15
    move-object v1, v0

    #@16
    :goto_16
    new-array v0, v5, [Ljava/io/File;

    #@18
    aput-object v1, v0, v4

    #@1a
    goto :goto_c

    #@1b
    :cond_1b
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    #@1e
    move-result-object v0

    #@1f
    const/4 v1, 0x4

    #@20
    new-array v1, v1, [Ljava/lang/String;

    #@22
    const-string v2, "Android"

    #@24
    aput-object v2, v1, v4

    #@26
    const-string v2, "data"

    #@28
    aput-object v2, v1, v5

    #@2a
    const/4 v2, 0x2

    #@2b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    aput-object v3, v1, v2

    #@31
    const/4 v2, 0x3

    #@32
    const-string v3, "cache"

    #@34
    aput-object v3, v1, v2

    #@36
    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@39
    move-result-object v0

    #@3a
    move-object v1, v0

    #@3b
    goto :goto_16
.end method

.method public static getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;
    .registers 8

    #@0
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@4
    const/16 v1, 0x13

    #@6
    if-lt v0, v1, :cond_d

    #@8
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatKitKat;->getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    #@b
    move-result-object v0

    #@c
    :goto_c
    return-object v0

    #@d
    :cond_d
    const/16 v1, 0x8

    #@f
    if-lt v0, v1, :cond_1b

    #@11
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatFroyo;->getExternalFilesDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    #@14
    move-result-object v0

    #@15
    :goto_15
    new-array v1, v5, [Ljava/io/File;

    #@17
    aput-object v0, v1, v4

    #@19
    move-object v0, v1

    #@1a
    goto :goto_c

    #@1b
    :cond_1b
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    #@1e
    move-result-object v0

    #@1f
    const/4 v1, 0x5

    #@20
    new-array v1, v1, [Ljava/lang/String;

    #@22
    const-string v2, "Android"

    #@24
    aput-object v2, v1, v4

    #@26
    const-string v2, "data"

    #@28
    aput-object v2, v1, v5

    #@2a
    const/4 v2, 0x2

    #@2b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    aput-object v3, v1, v2

    #@31
    const/4 v2, 0x3

    #@32
    const-string v3, "files"

    #@34
    aput-object v3, v1, v2

    #@36
    const/4 v2, 0x4

    #@37
    aput-object p1, v1, v2

    #@39
    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@3c
    move-result-object v0

    #@3d
    goto :goto_15
.end method

.method public static getObbDirs(Landroid/content/Context;)[Ljava/io/File;
    .registers 7

    #@0
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@4
    const/16 v1, 0x13

    #@6
    if-lt v0, v1, :cond_d

    #@8
    invoke-static {p0}, Landroid/support/v4/content/ContextCompatKitKat;->getObbDirs(Landroid/content/Context;)[Ljava/io/File;

    #@b
    move-result-object v0

    #@c
    :goto_c
    return-object v0

    #@d
    :cond_d
    const/16 v1, 0xb

    #@f
    if-lt v0, v1, :cond_1b

    #@11
    invoke-static {p0}, Landroid/support/v4/content/ContextCompatHoneycomb;->getObbDir(Landroid/content/Context;)Ljava/io/File;

    #@14
    move-result-object v0

    #@15
    move-object v1, v0

    #@16
    :goto_16
    new-array v0, v5, [Ljava/io/File;

    #@18
    aput-object v1, v0, v4

    #@1a
    goto :goto_c

    #@1b
    :cond_1b
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    #@1e
    move-result-object v0

    #@1f
    const/4 v1, 0x3

    #@20
    new-array v1, v1, [Ljava/lang/String;

    #@22
    const-string v2, "Android"

    #@24
    aput-object v2, v1, v4

    #@26
    const-string v2, "obb"

    #@28
    aput-object v2, v1, v5

    #@2a
    const/4 v2, 0x2

    #@2b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    aput-object v3, v1, v2

    #@31
    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@34
    move-result-object v0

    #@35
    move-object v1, v0

    #@36
    goto :goto_16
.end method

.method public static startActivities(Landroid/content/Context;[Landroid/content/Intent;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Landroid/support/v4/content/ContextCompat;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@3
    const/16 v2, 0x10

    #@5
    if-lt v1, v2, :cond_b

    #@7
    invoke-static {p0, p1, p2}, Landroid/support/v4/content/ContextCompatJellybean;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V

    #@a
    :goto_a
    return v0

    #@b
    :cond_b
    const/16 v2, 0xb

    #@d
    if-lt v1, v2, :cond_13

    #@f
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatHoneycomb;->startActivities(Landroid/content/Context;[Landroid/content/Intent;)V

    #@12
    goto :goto_a

    #@13
    :cond_13
    const/4 v0, 0x0

    #@14
    goto :goto_a
.end method
