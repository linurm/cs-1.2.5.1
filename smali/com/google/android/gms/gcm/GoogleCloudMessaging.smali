.class public Lcom/google/android/gms/gcm/GoogleCloudMessaging;
.super Ljava/lang/Object;


# static fields
.field public static final ERROR_MAIN_THREAD:Ljava/lang/String; = "MAIN_THREAD"

.field public static final ERROR_SERVICE_NOT_AVAILABLE:Ljava/lang/String; = "SERVICE_NOT_AVAILABLE"

.field public static final MESSAGE_TYPE_DELETED:Ljava/lang/String; = "deleted_messages"

.field public static final MESSAGE_TYPE_MESSAGE:Ljava/lang/String; = "gcm"

.field public static final MESSAGE_TYPE_SEND_ERROR:Ljava/lang/String; = "send_error"

.field static Us:Lcom/google/android/gms/gcm/GoogleCloudMessaging;


# instance fields
.field private Ut:Landroid/app/PendingIntent;

.field final Uu:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private Uv:Landroid/os/Handler;

.field private Uw:Landroid/os/Messenger;

.field private kO:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->Uu:Ljava/util/concurrent/BlockingQueue;

    #@a
    new-instance v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging$1;

    #@c
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging$1;-><init>(Lcom/google/android/gms/gcm/GoogleCloudMessaging;Landroid/os/Looper;)V

    #@13
    iput-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->Uv:Landroid/os/Handler;

    #@15
    new-instance v0, Landroid/os/Messenger;

    #@17
    iget-object v1, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->Uv:Landroid/os/Handler;

    #@19
    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@1c
    iput-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->Uw:Landroid/os/Messenger;

    #@1e
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;JILandroid/os/Bundle;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@7
    move-result-object v1

    #@8
    if-ne v0, v1, :cond_12

    #@a
    new-instance v0, Ljava/io/IOException;

    #@c
    const-string v1, "MAIN_THREAD"

    #@e
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    :cond_12
    if-nez p1, :cond_1c

    #@14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    const-string v1, "Missing \'to\'"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    :cond_1c
    new-instance v0, Landroid/content/Intent;

    #@1e
    const-string v1, "com.google.android.gcm.intent.SEND"

    #@20
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@23
    invoke-virtual {v0, p6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@26
    invoke-virtual {p0, v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->h(Landroid/content/Intent;)V

    #@29
    const-string v1, "com.google.android.gms"

    #@2b
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@2e
    const-string v1, "google.to"

    #@30
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@33
    const-string v1, "google.message_id"

    #@35
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@38
    const-string v1, "google.ttl"

    #@3a
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@41
    const-string v1, "google.delay"

    #@43
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@4a
    iget-object v1, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->kO:Landroid/content/Context;

    #@4c
    const-string v2, "com.google.android.gtalkservice.permission.GTALK_SERVICE"

    #@4e
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    #@51
    return-void
.end method

.method private varargs c([Ljava/lang/String;)V
    .registers 6

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->d([Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Landroid/content/Intent;

    #@6
    const-string v2, "com.google.android.c2dm.intent.REGISTER"

    #@8
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@b
    const-string v2, "com.google.android.gms"

    #@d
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@10
    const-string v2, "google.messenger"

    #@12
    iget-object v3, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->Uw:Landroid/os/Messenger;

    #@14
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@17
    invoke-virtual {p0, v1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->h(Landroid/content/Intent;)V

    #@1a
    const-string v2, "sender"

    #@1c
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1f
    iget-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->kO:Landroid/content/Context;

    #@21
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    #@24
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .registers 3

    #@0
    const-class v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sget-object v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->Us:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    #@5
    if-nez v0, :cond_12

    #@7
    new-instance v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    #@9
    invoke-direct {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;-><init>()V

    #@c
    sput-object v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->Us:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    #@e
    sget-object v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->Us:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    #@10
    iput-object p0, v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->kO:Landroid/content/Context;

    #@12
    :cond_12
    sget-object v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->Us:Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_18

    #@14
    const-class v1, Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    #@16
    monitor-exit v1

    #@17
    return-object v0

    #@18
    :catchall_18
    move-exception v0

    #@19
    const-class v1, Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method private iO()V
    .registers 4

    #@0
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string v1, "com.google.android.c2dm.intent.UNREGISTER"

    #@4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7
    const-string v1, "com.google.android.gms"

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@c
    iget-object v1, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->Uu:Ljava/util/concurrent/BlockingQueue;

    #@e
    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    #@11
    const-string v1, "google.messenger"

    #@13
    iget-object v2, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->Uw:Landroid/os/Messenger;

    #@15
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@18
    invoke-virtual {p0, v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->h(Landroid/content/Intent;)V

    #@1b
    iget-object v1, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->kO:Landroid/content/Context;

    #@1d
    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    #@20
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->iP()V

    #@3
    return-void
.end method

.method varargs d([Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    #@0
    if-eqz p1, :cond_5

    #@2
    array-length v0, p1

    #@3
    if-nez v0, :cond_d

    #@5
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string v1, "No senderIds"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    const/4 v0, 0x0

    #@10
    aget-object v0, p1, v0

    #@12
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@15
    const/4 v0, 0x1

    #@16
    :goto_16
    array-length v2, p1

    #@17
    if-ge v0, v2, :cond_27

    #@19
    const/16 v2, 0x2c

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    aget-object v3, p1, v0

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_16

    #@27
    :cond_27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    return-object v0
.end method

.method public getMessageType(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4

    #@0
    const-string v0, "com.google.android.c2dm.intent.RECEIVE"

    #@2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_e

    #@c
    const/4 v0, 0x0

    #@d
    :cond_d
    :goto_d
    return-object v0

    #@e
    :cond_e
    const-string v0, "message_type"

    #@10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    if-nez v0, :cond_d

    #@16
    const-string v0, "gcm"

    #@18
    goto :goto_d
.end method

.method h(Landroid/content/Intent;)V
    .registers 6

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->Ut:Landroid/app/PendingIntent;

    #@3
    if-nez v0, :cond_19

    #@5
    new-instance v0, Landroid/content/Intent;

    #@7
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@a
    const-string v1, "com.google.example.invalidpackage"

    #@c
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@f
    iget-object v1, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->kO:Landroid/content/Context;

    #@11
    const/4 v2, 0x0

    #@12
    const/4 v3, 0x0

    #@13
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->Ut:Landroid/app/PendingIntent;

    #@19
    :cond_19
    const-string v0, "app"

    #@1b
    iget-object v1, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->Ut:Landroid/app/PendingIntent;

    #@1d
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    #@20
    monitor-exit p0

    #@21
    return-void

    #@22
    :catchall_22
    move-exception v0

    #@23
    monitor-exit p0

    #@24
    throw v0
.end method

.method iP()V
    .registers 2

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->Ut:Landroid/app/PendingIntent;

    #@3
    if-eqz v0, :cond_d

    #@5
    iget-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->Ut:Landroid/app/PendingIntent;

    #@7
    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    #@a
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->Ut:Landroid/app/PendingIntent;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    #@d
    :cond_d
    monitor-exit p0

    #@e
    return-void

    #@f
    :catchall_f
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method public varargs register([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@7
    move-result-object v1

    #@8
    if-ne v0, v1, :cond_12

    #@a
    new-instance v0, Ljava/io/IOException;

    #@c
    const-string v1, "MAIN_THREAD"

    #@e
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->Uu:Ljava/util/concurrent/BlockingQueue;

    #@14
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    #@17
    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->c([Ljava/lang/String;)V

    #@1a
    :try_start_1a
    iget-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->Uu:Ljava/util/concurrent/BlockingQueue;

    #@1c
    const-wide/16 v2, 0x1388

    #@1e
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@20
    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/content/Intent;

    #@26
    if-nez v0, :cond_3b

    #@28
    new-instance v0, Ljava/io/IOException;

    #@2a
    const-string v1, "SERVICE_NOT_AVAILABLE"

    #@2c
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_30} :catch_30

    #@30
    :catch_30
    move-exception v0

    #@31
    new-instance v1, Ljava/io/IOException;

    #@33
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v1

    #@3b
    :cond_3b
    :try_start_3b
    const-string v1, "registration_id"

    #@3d
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    if-eqz v1, :cond_44

    #@43
    return-object v1

    #@44
    :cond_44
    const-string v1, "error"

    #@46
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@49
    const-string v1, "error"

    #@4b
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    if-eqz v0, :cond_57

    #@51
    new-instance v1, Ljava/io/IOException;

    #@53
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@56
    throw v1

    #@57
    :cond_57
    new-instance v0, Ljava/io/IOException;

    #@59
    const-string v1, "SERVICE_NOT_AVAILABLE"

    #@5b
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v0
    :try_end_5f
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_5f} :catch_30
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v6, -0x1

    #@1
    move-object v1, p0

    #@2
    move-object v2, p1

    #@3
    move-object v3, p2

    #@4
    move-wide v4, p3

    #@5
    move-object v7, p5

    #@6
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->a(Ljava/lang/String;Ljava/lang/String;JILandroid/os/Bundle;)V

    #@9
    return-void
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const-wide/16 v4, -0x1

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move-object v3, p2

    #@5
    move-object v6, p3

    #@6
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->send(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    #@9
    return-void
.end method

.method public unregister()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@7
    move-result-object v1

    #@8
    if-ne v0, v1, :cond_12

    #@a
    new-instance v0, Ljava/io/IOException;

    #@c
    const-string v1, "MAIN_THREAD"

    #@e
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    :cond_12
    invoke-direct {p0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->iO()V

    #@15
    :try_start_15
    iget-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->Uu:Ljava/util/concurrent/BlockingQueue;

    #@17
    const-wide/16 v2, 0x1388

    #@19
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@1b
    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Landroid/content/Intent;

    #@21
    if-nez v0, :cond_36

    #@23
    new-instance v0, Ljava/io/IOException;

    #@25
    const-string v1, "SERVICE_NOT_AVAILABLE"

    #@27
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_2b} :catch_2b

    #@2b
    :catch_2b
    move-exception v0

    #@2c
    new-instance v1, Ljava/io/IOException;

    #@2e
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@35
    throw v1

    #@36
    :cond_36
    :try_start_36
    const-string v1, "unregistered"

    #@38
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    if-eqz v1, :cond_3f

    #@3e
    return-void

    #@3f
    :cond_3f
    const-string v1, "error"

    #@41
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    if-eqz v0, :cond_4d

    #@47
    new-instance v1, Ljava/io/IOException;

    #@49
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v1

    #@4d
    :cond_4d
    new-instance v0, Ljava/io/IOException;

    #@4f
    const-string v1, "SERVICE_NOT_AVAILABLE"

    #@51
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@54
    throw v0
    :try_end_55
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_55} :catch_2b
.end method
