.class Lcom/facebook/Session$TokenRefreshRequest;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TokenRefreshRequest"
.end annotation


# instance fields
.field final messageReceiver:Landroid/os/Messenger;

.field messageSender:Landroid/os/Messenger;

.field final synthetic this$0:Lcom/facebook/Session;


# direct methods
.method constructor <init>(Lcom/facebook/Session;)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/facebook/Session$TokenRefreshRequest;->this$0:Lcom/facebook/Session;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    new-instance v0, Landroid/os/Messenger;

    #@7
    new-instance v1, Lcom/facebook/Session$TokenRefreshRequestHandler;

    #@9
    iget-object v2, p0, Lcom/facebook/Session$TokenRefreshRequest;->this$0:Lcom/facebook/Session;

    #@b
    invoke-direct {v1, v2, p0}, Lcom/facebook/Session$TokenRefreshRequestHandler;-><init>(Lcom/facebook/Session;Lcom/facebook/Session$TokenRefreshRequest;)V

    #@e
    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@11
    iput-object v0, p0, Lcom/facebook/Session$TokenRefreshRequest;->messageReceiver:Landroid/os/Messenger;

    #@13
    const/4 v0, 0x0

    #@14
    iput-object v0, p0, Lcom/facebook/Session$TokenRefreshRequest;->messageSender:Landroid/os/Messenger;

    #@16
    return-void
.end method

.method static synthetic access$1700(Lcom/facebook/Session$TokenRefreshRequest;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/facebook/Session$TokenRefreshRequest;->cleanup()V

    #@3
    return-void
.end method

.method private cleanup()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/Session$TokenRefreshRequest;->this$0:Lcom/facebook/Session;

    #@2
    # getter for: Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;
    invoke-static {v0}, Lcom/facebook/Session;->access$1600(Lcom/facebook/Session;)Lcom/facebook/Session$TokenRefreshRequest;

    #@5
    move-result-object v0

    #@6
    if-ne v0, p0, :cond_e

    #@8
    iget-object v0, p0, Lcom/facebook/Session$TokenRefreshRequest;->this$0:Lcom/facebook/Session;

    #@a
    const/4 v1, 0x0

    #@b
    # setter for: Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;
    invoke-static {v0, v1}, Lcom/facebook/Session;->access$1602(Lcom/facebook/Session;Lcom/facebook/Session$TokenRefreshRequest;)Lcom/facebook/Session$TokenRefreshRequest;

    #@e
    :cond_e
    return-void
.end method

.method private refreshToken()V
    .registers 4

    #@0
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    const-string v1, "access_token"

    #@7
    iget-object v2, p0, Lcom/facebook/Session$TokenRefreshRequest;->this$0:Lcom/facebook/Session;

    #@9
    invoke-virtual {v2}, Lcom/facebook/Session;->getTokenInfo()Lcom/facebook/AccessToken;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    #@1b
    iget-object v0, p0, Lcom/facebook/Session$TokenRefreshRequest;->messageReceiver:Landroid/os/Messenger;

    #@1d
    iput-object v0, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@1f
    :try_start_1f
    iget-object v0, p0, Lcom/facebook/Session$TokenRefreshRequest;->messageSender:Landroid/os/Messenger;

    #@21
    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    #@24
    :goto_24
    return-void

    #@25
    :catch_25
    move-exception v0

    #@26
    invoke-direct {p0}, Lcom/facebook/Session$TokenRefreshRequest;->cleanup()V

    #@29
    goto :goto_24
.end method


# virtual methods
.method public bind()V
    .registers 4

    #@0
    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/facebook/internal/NativeProtocol;->createTokenRefreshIntent(Landroid/content/Context;)Landroid/content/Intent;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_20

    #@a
    # getter for: Lcom/facebook/Session;->staticContext:Landroid/content/Context;
    invoke-static {}, Lcom/facebook/Session;->access$1500()Landroid/content/Context;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_20

    #@15
    iget-object v0, p0, Lcom/facebook/Session$TokenRefreshRequest;->this$0:Lcom/facebook/Session;

    #@17
    new-instance v1, Ljava/util/Date;

    #@19
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    #@1c
    invoke-virtual {v0, v1}, Lcom/facebook/Session;->setLastAttemptedTokenExtendDate(Ljava/util/Date;)V

    #@1f
    :goto_1f
    return-void

    #@20
    :cond_20
    invoke-direct {p0}, Lcom/facebook/Session$TokenRefreshRequest;->cleanup()V

    #@23
    goto :goto_1f
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    #@0
    new-instance v0, Landroid/os/Messenger;

    #@2
    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    #@5
    iput-object v0, p0, Lcom/facebook/Session$TokenRefreshRequest;->messageSender:Landroid/os/Messenger;

    #@7
    invoke-direct {p0}, Lcom/facebook/Session$TokenRefreshRequest;->refreshToken()V

    #@a
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    #@0
    invoke-direct {p0}, Lcom/facebook/Session$TokenRefreshRequest;->cleanup()V

    #@3
    # getter for: Lcom/facebook/Session;->staticContext:Landroid/content/Context;
    invoke-static {}, Lcom/facebook/Session;->access$1500()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@a
    return-void
.end method
