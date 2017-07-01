.class public Lcom/apportable/c2dm/RemoteNotifications;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apportable/c2dm/PushNotificationRegistrationListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-static {}, Lcom/apportable/c2dm/PushNotificationManager;->instance()Lcom/apportable/c2dm/PushNotificationManager;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, p0}, Lcom/apportable/c2dm/PushNotificationManager;->addRegistrationListener(Lcom/apportable/c2dm/PushNotificationRegistrationListener;)V

    #@a
    return-void
.end method


# virtual methods
.method public register()V
    .registers 2

    #@0
    invoke-static {}, Lcom/apportable/c2dm/PushNotificationManager;->instance()Lcom/apportable/c2dm/PushNotificationManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/apportable/c2dm/PushNotificationManager;->register()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_d

    #@a
    invoke-virtual {p0, v0}, Lcom/apportable/c2dm/RemoteNotifications;->registrationIdChanged(Ljava/lang/String;)V

    #@d
    :cond_d
    return-void
.end method

.method public native registrationIdChanged(Ljava/lang/String;)V
.end method
