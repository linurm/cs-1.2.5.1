.class Landroid/support/v4/app/NavUtils$NavUtilsImplBase;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/NavUtils$NavUtilsImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NavUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NavUtilsImplBase"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p1}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    if-nez v1, :cond_8

    #@7
    :goto_7
    return-object v0

    #@8
    :cond_8
    new-instance v2, Landroid/content/ComponentName;

    #@a
    invoke-direct {v2, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@d
    :try_start_d
    invoke-static {p1, v2}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    if-nez v3, :cond_18

    #@13
    invoke-static {v2}, Landroid/support/v4/content/IntentCompat;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@16
    move-result-object v0

    #@17
    goto :goto_7

    #@18
    :cond_18
    new-instance v3, Landroid/content/Intent;

    #@1a
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    #@1d
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_20} :catch_22

    #@20
    move-result-object v0

    #@21
    goto :goto_7

    #@22
    :catch_22
    move-exception v2

    #@23
    const-string v2, "NavUtils"

    #@25
    new-instance v3, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string v4, "getParentActivityIntent: bad parentActivityName \'"

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    const-string v3, "\' in manifest"

    #@36
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    goto :goto_7
.end method

.method public getParentActivityName(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    #@3
    if-nez v1, :cond_6

    #@5
    :cond_5
    :goto_5
    return-object v0

    #@6
    :cond_6
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    #@8
    const-string v2, "android.support.PARENT_ACTIVITY"

    #@a
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    if-eqz v1, :cond_5

    #@10
    const/4 v0, 0x0

    #@11
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v0

    #@15
    const/16 v2, 0x2e

    #@17
    if-ne v0, v2, :cond_2f

    #@19
    new-instance v0, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    goto :goto_5

    #@2f
    :cond_2f
    move-object v0, v1

    #@30
    goto :goto_5
.end method

.method public navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 4

    #@0
    const/high16 v0, 0x4000000

    #@2
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@5
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    #@8
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    #@b
    return-void
.end method

.method public shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z
    .registers 5

    #@0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_14

    #@a
    const-string v1, "android.intent.action.MAIN"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_14

    #@12
    const/4 v0, 0x1

    #@13
    :goto_13
    return v0

    #@14
    :cond_14
    const/4 v0, 0x0

    #@15
    goto :goto_13
.end method
