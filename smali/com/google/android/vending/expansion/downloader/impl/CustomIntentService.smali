.class public abstract Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CancellableIntentService"

.field private static final WHAT_MESSAGE:I = -0xa


# instance fields
.field private mName:Ljava/lang/String;

.field private mRedelivery:Z

.field private volatile mServiceHandler:Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mName:Ljava/lang/String;

    #@5
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onCreate()V
    .registers 4

    #@0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    #@3
    new-instance v0, Landroid/os/HandlerThread;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string v2, "IntentService["

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mName:Ljava/lang/String;

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string v2, "]"

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@23
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    #@26
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@29
    move-result-object v0

    #@2a
    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mServiceLooper:Landroid/os/Looper;

    #@2c
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;

    #@2e
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mServiceLooper:Landroid/os/Looper;

    #@30
    invoke-direct {v0, p0, v1}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;-><init>(Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;Landroid/os/Looper;)V

    #@33
    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mServiceHandler:Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;

    #@35
    return-void
.end method

.method public onDestroy()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mServiceLooper:Landroid/os/Looper;

    #@2
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_11

    #@8
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_11

    #@e
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    #@11
    :cond_11
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mServiceLooper:Landroid/os/Looper;

    #@13
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    #@16
    const-string v0, "CancellableIntentService"

    #@18
    const-string v1, "onDestroy"

    #@1a
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    return-void
.end method

.method protected abstract onHandleIntent(Landroid/content/Intent;)V
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 5

    #@0
    const/16 v1, -0xa

    #@2
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mServiceHandler:Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;->hasMessages(I)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_1b

    #@a
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mServiceHandler:Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;

    #@c
    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    #@f
    move-result-object v0

    #@10
    iput p2, v0, Landroid/os/Message;->arg1:I

    #@12
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@14
    iput v1, v0, Landroid/os/Message;->what:I

    #@16
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mServiceHandler:Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;

    #@18
    invoke-virtual {v1, v0}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    #@1b
    :cond_1b
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    #@0
    invoke-virtual {p0, p1, p3}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->onStart(Landroid/content/Intent;I)V

    #@3
    iget-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mRedelivery:Z

    #@5
    if-eqz v0, :cond_9

    #@7
    const/4 v0, 0x3

    #@8
    :goto_8
    return v0

    #@9
    :cond_9
    const/4 v0, 0x2

    #@a
    goto :goto_8
.end method

.method public setIntentRedelivery(Z)V
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mRedelivery:Z

    #@2
    return-void
.end method

.method protected abstract shouldStop()Z
.end method
