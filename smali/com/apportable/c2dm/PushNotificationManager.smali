.class public Lcom/apportable/c2dm/PushNotificationManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "PushNotificationManager"

.field private static singleton:Lcom/apportable/c2dm/PushNotificationManager;


# instance fields
.field private registrationId:Ljava/lang/String;

.field private registrationListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/apportable/c2dm/PushNotificationRegistrationListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private rq:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    sput-object v0, Lcom/apportable/c2dm/PushNotificationManager;->singleton:Lcom/apportable/c2dm/PushNotificationManager;

    #@3
    new-instance v0, Lcom/apportable/c2dm/PushNotificationManager;

    #@5
    invoke-direct {v0}, Lcom/apportable/c2dm/PushNotificationManager;-><init>()V

    #@8
    sput-object v0, Lcom/apportable/c2dm/PushNotificationManager;->singleton:Lcom/apportable/c2dm/PushNotificationManager;

    #@a
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    iput-object v0, p0, Lcom/apportable/c2dm/PushNotificationManager;->registrationId:Ljava/lang/String;

    #@6
    iput-object v0, p0, Lcom/apportable/c2dm/PushNotificationManager;->registrationListeners:Ljava/util/ArrayList;

    #@8
    iput-object v0, p0, Lcom/apportable/c2dm/PushNotificationManager;->rq:Ljava/lang/ref/ReferenceQueue;

    #@a
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lcom/apportable/c2dm/PushNotificationManager;->registrationListeners:Ljava/util/ArrayList;

    #@11
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    #@13
    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    #@16
    iput-object v0, p0, Lcom/apportable/c2dm/PushNotificationManager;->rq:Ljava/lang/ref/ReferenceQueue;

    #@18
    return-void
.end method

.method private drainReferenceQueue()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/c2dm/PushNotificationManager;->rq:Ljava/lang/ref/ReferenceQueue;

    #@2
    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    #@5
    move-result-object v0

    #@6
    :goto_6
    if-eqz v0, :cond_1c

    #@8
    iget-object v1, p0, Lcom/apportable/c2dm/PushNotificationManager;->registrationListeners:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_15

    #@10
    iget-object v1, p0, Lcom/apportable/c2dm/PushNotificationManager;->registrationListeners:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@15
    :cond_15
    iget-object v0, p0, Lcom/apportable/c2dm/PushNotificationManager;->rq:Ljava/lang/ref/ReferenceQueue;

    #@17
    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    #@1a
    move-result-object v0

    #@1b
    goto :goto_6

    #@1c
    :cond_1c
    return-void
.end method

.method public static instance()Lcom/apportable/c2dm/PushNotificationManager;
    .registers 1

    #@0
    sget-object v0, Lcom/apportable/c2dm/PushNotificationManager;->singleton:Lcom/apportable/c2dm/PushNotificationManager;

    #@2
    return-object v0
.end method


# virtual methods
.method public addRegistrationListener(Lcom/apportable/c2dm/PushNotificationRegistrationListener;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/apportable/c2dm/PushNotificationManager;->registrationListeners:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1f

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/lang/ref/WeakReference;

    #@12
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    if-eqz v2, :cond_6

    #@18
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    if-ne v0, p1, :cond_6

    #@1e
    :goto_1e
    return-void

    #@1f
    :cond_1f
    iget-object v0, p0, Lcom/apportable/c2dm/PushNotificationManager;->registrationListeners:Ljava/util/ArrayList;

    #@21
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@23
    iget-object v2, p0, Lcom/apportable/c2dm/PushNotificationManager;->rq:Ljava/lang/ref/ReferenceQueue;

    #@25
    invoke-direct {v1, p1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    #@28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2b
    invoke-direct {p0}, Lcom/apportable/c2dm/PushNotificationManager;->drainReferenceQueue()V

    #@2e
    goto :goto_1e
.end method

.method public getRegistrationId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/c2dm/PushNotificationManager;->registrationId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public register()Ljava/lang/String;
    .registers 8

    #@0
    iget-object v0, p0, Lcom/apportable/c2dm/PushNotificationManager;->registrationId:Ljava/lang/String;

    #@2
    if-nez v0, :cond_99

    #@4
    new-instance v2, Landroid/content/Intent;

    #@6
    const-string v0, "com.google.android.c2dm.intent.REGISTER"

    #@8
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@b
    const-string v0, "com.google.android.gsf"

    #@d
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@10
    :try_start_10

	const-string v0, "ZTAG"

    const-string v1, "PushNotificationManager register()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    
#
	const-string v0, "com.apportable.activity.VerdeActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "playSound"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

#
	const-string v0, "com.apportable.activity.VerdeActivity"

	invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

	move-result-object v0

	const-string v1, "doVibrate"

	const/4 v3, 0x0

	new-array v3, v3, [Ljava/lang/Class;

	invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

	move-result-object v1

	const/4 v3, 0x0

	const/4 v4, 0x0

	new-array v4, v4, [Ljava/lang/Object;

	invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;


#
	
    const-string v0, "com.apportable.activity.VerdeActivity"

    #@12
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@15
    move-result-object v0

    #@16
    const-string v1, "getActivity"

    #@18
    const/4 v3, 0x0

    #@19
    new-array v3, v3, [Ljava/lang/Class;

    #@1b
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@1e
    move-result-object v1

    #@1f
    const/4 v3, 0x0

    #@20
    new-array v3, v3, [Ljava/lang/Object;

    #@22
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Landroid/content/Context;

    #@28
    const-string v1, "com.apportable.utils.MetaData"

    #@2a
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@2d
    move-result-object v1

    #@2e
    const-string v3, "getMetaData"

    #@30
    const/4 v4, 0x0

    #@31
    new-array v4, v4, [Ljava/lang/Class;

    #@33
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@36
    move-result-object v3

    #@37
    const/4 v4, 0x0

    #@38
    new-array v4, v4, [Ljava/lang/Object;

    #@3a
    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    move-result-object v1

    #@3e
    check-cast v1, Landroid/os/Bundle;

    #@40
    new-instance v3, Landroid/content/Intent;

    #@42
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    #@45
    const-string v4, "app"

    #@47
    const/4 v5, 0x0

    #@48
    const/4 v6, 0x0

    #@49
    invoke-static {v0, v5, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@50
    const-string v3, "apportable.c2dm.sender"

    #@52
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@55
    move-result-object v1

    #@56
    new-instance v3, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string v4, "ZTAG"

    #@5d
    const-string v5, "Subscribing to C2DM sender "

    #@5f
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v3

    #@63
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v3

    #@67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v3

    #@6b
    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@6e
    if-eqz v1, :cond_88

    #@70
    const-string v3, "gcm:[0-9]+"

    #@72
    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@75
    move-result v3

    #@76
    if-eqz v3, :cond_7d

    #@78
    const/4 v3, 0x4

    #@79
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@7c
    move-result-object v1

    #@7d
    :cond_7d
    const-string v3, "sender"

    #@7f
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@82
    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_85} :catch_90

    #@85
    :goto_85
    iget-object v0, p0, Lcom/apportable/c2dm/PushNotificationManager;->registrationId:Ljava/lang/String;

    #@87
    :goto_87
    return-object v0

    #@88
    :cond_88
    :try_start_88
    const-string v0, "PushNotificationManager"

    #@8a
    const-string v1, "no account found to register for push notifications!"

    #@8c
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8f} :catch_90

    #@8f
    goto :goto_85

    #@90
    :catch_90
    move-exception v0

    #@91
    const-string v1, "PushNotificationManager"

    #@93
    const-string v2, "Error registering for C2DM"

    #@95
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@98
    goto :goto_85

    #@99
    :cond_99
    iget-object v0, p0, Lcom/apportable/c2dm/PushNotificationManager;->registrationId:Ljava/lang/String;

    #@9b
    goto :goto_87
.end method

.method public setRegistrationId(Ljava/lang/String;)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/apportable/c2dm/PushNotificationManager;->registrationId:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/apportable/c2dm/PushNotificationManager;->registrationListeners:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_26

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/ref/WeakReference;

    #@14
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    if-eqz v2, :cond_8

    #@1a
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Lcom/apportable/c2dm/PushNotificationRegistrationListener;

    #@20
    iget-object v2, p0, Lcom/apportable/c2dm/PushNotificationManager;->registrationId:Ljava/lang/String;

    #@22
    invoke-interface {v0, v2}, Lcom/apportable/c2dm/PushNotificationRegistrationListener;->registrationIdChanged(Ljava/lang/String;)V

    #@25
    goto :goto_8

    #@26
    :cond_26
    invoke-direct {p0}, Lcom/apportable/c2dm/PushNotificationManager;->drainReferenceQueue()V

    #@29
    return-void
.end method
