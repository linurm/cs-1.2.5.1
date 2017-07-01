.class public Lcom/apportable/c2dm/C2DMRegistrationReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final TAG:Ljava/lang/String; = "C2DMRegistrationReceiver"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    #@0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string v1, "C2DMRegistrationReceiver"

    #@6
    const-string v2, "Registration Receiver called"

    #@8
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_2f

    #@13
    const-string v0, "C2DMRegistrationReceiver"

    #@15
    const-string v1, "Received registration response"

    #@17
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    const-string v0, "registration_id"

    #@1c
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    const-string v1, "error"

    #@22
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    if-nez v1, :cond_30

    #@28
    invoke-static {}, Lcom/apportable/c2dm/PushNotificationManager;->instance()Lcom/apportable/c2dm/PushNotificationManager;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1, v0}, Lcom/apportable/c2dm/PushNotificationManager;->setRegistrationId(Ljava/lang/String;)V

    #@2f
    :cond_2f
    :goto_2f
    return-void

    #@30
    :cond_30
    const-string v0, "C2DMRegistrationReceiver"

    #@32
    new-instance v2, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string v3, "ERROR RECEIVING C2DM REGISTRATION: "

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    goto :goto_2f
.end method
