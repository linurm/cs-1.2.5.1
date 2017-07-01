.class public abstract Lcom/facebook/internal/PlatformServiceClient;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/PlatformServiceClient$CompletedListener;
    }
.end annotation


# instance fields
.field private final applicationId:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private listener:Lcom/facebook/internal/PlatformServiceClient$CompletedListener;

.field private final protocolVersion:I

.field private replyMessage:I

.field private requestMessage:I

.field private running:Z

.field private sender:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILjava/lang/String;)V
    .registers 7

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_a

    #@9
    move-object p1, v0

    #@a
    :cond_a
    iput-object p1, p0, Lcom/facebook/internal/PlatformServiceClient;->context:Landroid/content/Context;

    #@c
    iput p2, p0, Lcom/facebook/internal/PlatformServiceClient;->requestMessage:I

    #@e
    iput p3, p0, Lcom/facebook/internal/PlatformServiceClient;->replyMessage:I

    #@10
    iput-object p5, p0, Lcom/facebook/internal/PlatformServiceClient;->applicationId:Ljava/lang/String;

    #@12
    iput p4, p0, Lcom/facebook/internal/PlatformServiceClient;->protocolVersion:I

    #@14
    new-instance v0, Lcom/facebook/internal/PlatformServiceClient$1;

    #@16
    invoke-direct {v0, p0}, Lcom/facebook/internal/PlatformServiceClient$1;-><init>(Lcom/facebook/internal/PlatformServiceClient;)V

    #@19
    iput-object v0, p0, Lcom/facebook/internal/PlatformServiceClient;->handler:Landroid/os/Handler;

    #@1b
    return-void
.end method

.method private callback(Landroid/os/Bundle;)V
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/facebook/internal/PlatformServiceClient;->running:Z

    #@2
    if-nez v0, :cond_5

    #@4
    :cond_4
    :goto_4
    return-void

    #@5
    :cond_5
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/facebook/internal/PlatformServiceClient;->running:Z

    #@8
    iget-object v0, p0, Lcom/facebook/internal/PlatformServiceClient;->listener:Lcom/facebook/internal/PlatformServiceClient$CompletedListener;

    #@a
    if-eqz v0, :cond_4

    #@c
    invoke-interface {v0, p1}, Lcom/facebook/internal/PlatformServiceClient$CompletedListener;->completed(Landroid/os/Bundle;)V

    #@f
    goto :goto_4
.end method

.method private sendMessage()V
    .registers 5

    #@0
    const/4 v3, 0x0

    #@1
    new-instance v0, Landroid/os/Bundle;

    #@3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@6
    const-string v1, "com.facebook.platform.extra.APPLICATION_ID"

    #@8
    iget-object v2, p0, Lcom/facebook/internal/PlatformServiceClient;->applicationId:Ljava/lang/String;

    #@a
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    invoke-virtual {p0, v0}, Lcom/facebook/internal/PlatformServiceClient;->populateRequestBundle(Landroid/os/Bundle;)V

    #@10
    iget v1, p0, Lcom/facebook/internal/PlatformServiceClient;->requestMessage:I

    #@12
    invoke-static {v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@15
    move-result-object v1

    #@16
    iget v2, p0, Lcom/facebook/internal/PlatformServiceClient;->protocolVersion:I

    #@18
    iput v2, v1, Landroid/os/Message;->arg1:I

    #@1a
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    #@1d
    new-instance v0, Landroid/os/Messenger;

    #@1f
    iget-object v2, p0, Lcom/facebook/internal/PlatformServiceClient;->handler:Landroid/os/Handler;

    #@21
    invoke-direct {v0, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@24
    iput-object v0, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@26
    :try_start_26
    iget-object v0, p0, Lcom/facebook/internal/PlatformServiceClient;->sender:Landroid/os/Messenger;

    #@28
    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c

    #@2b
    :goto_2b
    return-void

    #@2c
    :catch_2c
    move-exception v0

    #@2d
    invoke-direct {p0, v3}, Lcom/facebook/internal/PlatformServiceClient;->callback(Landroid/os/Bundle;)V

    #@30
    goto :goto_2b
.end method


# virtual methods
.method public cancel()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/facebook/internal/PlatformServiceClient;->running:Z

    #@3
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/internal/PlatformServiceClient;->context:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .registers 4

    #@0
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    iget v1, p0, Lcom/facebook/internal/PlatformServiceClient;->replyMessage:I

    #@4
    if-ne v0, v1, :cond_1b

    #@6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@9
    move-result-object v0

    #@a
    const-string v1, "com.facebook.platform.status.ERROR_TYPE"

    #@c
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    if-eqz v1, :cond_1c

    #@12
    const/4 v0, 0x0

    #@13
    invoke-direct {p0, v0}, Lcom/facebook/internal/PlatformServiceClient;->callback(Landroid/os/Bundle;)V

    #@16
    :goto_16
    iget-object v0, p0, Lcom/facebook/internal/PlatformServiceClient;->context:Landroid/content/Context;

    #@18
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@1b
    :cond_1b
    return-void

    #@1c
    :cond_1c
    invoke-direct {p0, v0}, Lcom/facebook/internal/PlatformServiceClient;->callback(Landroid/os/Bundle;)V

    #@1f
    goto :goto_16
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    #@0
    new-instance v0, Landroid/os/Messenger;

    #@2
    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    #@5
    iput-object v0, p0, Lcom/facebook/internal/PlatformServiceClient;->sender:Landroid/os/Messenger;

    #@7
    invoke-direct {p0}, Lcom/facebook/internal/PlatformServiceClient;->sendMessage()V

    #@a
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    #@0
    const/4 v1, 0x0

    #@1
    iput-object v1, p0, Lcom/facebook/internal/PlatformServiceClient;->sender:Landroid/os/Messenger;

    #@3
    iget-object v0, p0, Lcom/facebook/internal/PlatformServiceClient;->context:Landroid/content/Context;

    #@5
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@8
    invoke-direct {p0, v1}, Lcom/facebook/internal/PlatformServiceClient;->callback(Landroid/os/Bundle;)V

    #@b
    return-void
.end method

.method protected abstract populateRequestBundle(Landroid/os/Bundle;)V
.end method

.method public setCompletedListener(Lcom/facebook/internal/PlatformServiceClient$CompletedListener;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/internal/PlatformServiceClient;->listener:Lcom/facebook/internal/PlatformServiceClient$CompletedListener;

    #@2
    return-void
.end method

.method public start()Z
    .registers 5

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    iget-boolean v2, p0, Lcom/facebook/internal/PlatformServiceClient;->running:Z

    #@4
    if-eqz v2, :cond_7

    #@6
    :cond_6
    :goto_6
    return v0

    #@7
    :cond_7
    iget-object v2, p0, Lcom/facebook/internal/PlatformServiceClient;->context:Landroid/content/Context;

    #@9
    iget v3, p0, Lcom/facebook/internal/PlatformServiceClient;->protocolVersion:I

    #@b
    invoke-static {v2, v3}, Lcom/facebook/internal/NativeProtocol;->getLatestAvailableProtocolVersionForService(Landroid/content/Context;I)I

    #@e
    move-result v2

    #@f
    const/4 v3, -0x1

    #@10
    if-eq v2, v3, :cond_6

    #@12
    iget-object v2, p0, Lcom/facebook/internal/PlatformServiceClient;->context:Landroid/content/Context;

    #@14
    invoke-static {v2}, Lcom/facebook/internal/NativeProtocol;->createPlatformServiceIntent(Landroid/content/Context;)Landroid/content/Intent;

    #@17
    move-result-object v2

    #@18
    if-eqz v2, :cond_6

    #@1a
    iput-boolean v1, p0, Lcom/facebook/internal/PlatformServiceClient;->running:Z

    #@1c
    iget-object v0, p0, Lcom/facebook/internal/PlatformServiceClient;->context:Landroid/content/Context;

    #@1e
    invoke-virtual {v0, v2, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@21
    move v0, v1

    #@22
    goto :goto_6
.end method
