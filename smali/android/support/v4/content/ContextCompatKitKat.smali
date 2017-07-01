.class Landroid/support/v4/content/ContextCompatKitKat;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;
    .registers 2

    #@0
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getObbDirs(Landroid/content/Context;)[Ljava/io/File;
    .registers 2

    #@0
    invoke-virtual {p0}, Landroid/content/Context;->getObbDirs()[Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
