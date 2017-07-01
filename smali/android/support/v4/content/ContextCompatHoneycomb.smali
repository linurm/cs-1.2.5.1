.class Landroid/support/v4/content/ContextCompatHoneycomb;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getObbDir(Landroid/content/Context;)Ljava/io/File;
    .registers 2

    #@0
    invoke-virtual {p0}, Landroid/content/Context;->getObbDir()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static startActivities(Landroid/content/Context;[Landroid/content/Intent;)V
    .registers 2

    #@0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivities([Landroid/content/Intent;)V

    #@3
    return-void
.end method
