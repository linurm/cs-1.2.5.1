.class Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImplJellybean;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/TaskStackBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskStackBuilderImplJellybean"
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
.method public getPendingIntent(Landroid/content/Context;[Landroid/content/Intent;IILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .registers 9

    #@0
    const/4 v2, 0x0

    #@1
    new-instance v0, Landroid/content/Intent;

    #@3
    aget-object v1, p2, v2

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@8
    const v1, 0x1000c000

    #@b
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@e
    move-result-object v0

    #@f
    aput-object v0, p2, v2

    #@11
    invoke-static {p1, p3, p2, p4, p5}, Landroid/support/v4/app/TaskStackBuilderJellybean;->getActivitiesPendingIntent(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method
