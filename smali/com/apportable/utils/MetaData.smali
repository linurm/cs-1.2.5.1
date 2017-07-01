.class public Lcom/apportable/utils/MetaData;
.super Ljava/lang/Object;


# static fields
.field static sMetaData:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    sput-object v0, Lcom/apportable/utils/MetaData;->sMetaData:Landroid/os/Bundle;

    #@3
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getMetaData()Landroid/os/Bundle;
    .registers 4

    #@0
    sget-object v0, Lcom/apportable/utils/MetaData;->sMetaData:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_1d

    #@4
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Lcom/apportable/app/VerdeApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    #@b
    move-result-object v2

    #@c
    const/4 v0, 0x0

    #@d
    :try_start_d
    invoke-virtual {v1}, Lcom/apportable/app/VerdeApplication;->getPackageName()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    const/16 v3, 0x80

    #@13
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_16} :catch_20

    #@16
    move-result-object v0

    #@17
    :goto_17
    if-eqz v0, :cond_29

    #@19
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    #@1b
    sput-object v0, Lcom/apportable/utils/MetaData;->sMetaData:Landroid/os/Bundle;

    #@1d
    :cond_1d
    :goto_1d
    sget-object v0, Lcom/apportable/utils/MetaData;->sMetaData:Landroid/os/Bundle;

    #@1f
    return-object v0

    #@20
    :catch_20
    move-exception v1

    #@21
    const-string v1, "MetaData"

    #@23
    const-string v2, "Unable to fetch application info for com.apportable.app.VerdeApplication"

    #@25
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    goto :goto_17

    #@29
    :cond_29
    const-string v0, "MetaData"

    #@2b
    const-string v1, "Unable to aquire metadata for application"

    #@2d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    new-instance v0, Landroid/os/Bundle;

    #@32
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@35
    sput-object v0, Lcom/apportable/utils/MetaData;->sMetaData:Landroid/os/Bundle;

    #@37
    goto :goto_1d
.end method
