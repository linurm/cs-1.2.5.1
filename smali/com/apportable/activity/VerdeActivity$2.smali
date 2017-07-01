.class Lcom/apportable/activity/VerdeActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/VerdeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/activity/VerdeActivity;


# direct methods
.method constructor <init>(Lcom/apportable/activity/VerdeActivity;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/activity/VerdeActivity$2;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    #@0
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$2;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@2
    const/4 v1, 0x0

    #@3
    iget-object v2, p0, Lcom/apportable/activity/VerdeActivity$2;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@5
    invoke-virtual {v2}, Lcom/apportable/activity/VerdeActivity;->getIntent()Landroid/content/Intent;

    #@8
    move-result-object v2

    #@9
    iget-object v3, p0, Lcom/apportable/activity/VerdeActivity$2;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@b
    invoke-virtual {v3}, Lcom/apportable/activity/VerdeActivity;->getIntent()Landroid/content/Intent;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    #@12
    move-result v3

    #@13
    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@16
    move-result-object v1

    #@17
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$2;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@19
    const-string v2, "alarm"

    #@1b
    invoke-virtual {v0, v2}, Lcom/apportable/activity/VerdeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Landroid/app/AlarmManager;

    #@21
    const/4 v2, 0x1

    #@22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@25
    move-result-wide v4

    #@26
    const-wide/16 v6, 0x64

    #@28
    add-long/2addr v4, v6

    #@29
    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    #@2c
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@2f
    move-result v0

    #@30
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    #@33
    return-void
.end method
