.class Lcom/facebook/android/Facebook$TokenRefreshConnectionHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/android/Facebook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TokenRefreshConnectionHandler"
.end annotation


# instance fields
.field connectionWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/facebook/android/Facebook$TokenRefreshServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field facebookWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/facebook/android/Facebook;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/facebook/android/Facebook;Lcom/facebook/android/Facebook$TokenRefreshServiceConnection;)V
    .registers 4

    #@0
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@3
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Lcom/facebook/android/Facebook$TokenRefreshConnectionHandler;->facebookWeakReference:Ljava/lang/ref/WeakReference;

    #@a
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@c
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@f
    iput-object v0, p0, Lcom/facebook/android/Facebook$TokenRefreshConnectionHandler;->connectionWeakReference:Ljava/lang/ref/WeakReference;

    #@11
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    #@0
    iget-object v0, p0, Lcom/facebook/android/Facebook$TokenRefreshConnectionHandler;->facebookWeakReference:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/facebook/android/Facebook;

    #@8
    iget-object v1, p0, Lcom/facebook/android/Facebook$TokenRefreshConnectionHandler;->connectionWeakReference:Ljava/lang/ref/WeakReference;

    #@a
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Lcom/facebook/android/Facebook$TokenRefreshServiceConnection;

    #@10
    if-eqz v0, :cond_14

    #@12
    if-nez v1, :cond_15

    #@14
    :cond_14
    :goto_14
    return-void

    #@15
    :cond_15
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@18
    move-result-object v2

    #@19
    const-string v3, "access_token"

    #@1b
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@22
    move-result-object v3

    #@23
    const-string v4, "expires_in"

    #@25
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    #@28
    move-result-wide v4

    #@29
    const-wide/16 v6, 0x3e8

    #@2b
    mul-long/2addr v4, v6

    #@2c
    if-eqz v2, :cond_5f

    #@2e
    invoke-virtual {v0, v2}, Lcom/facebook/android/Facebook;->setAccessToken(Ljava/lang/String;)V

    #@31
    invoke-virtual {v0, v4, v5}, Lcom/facebook/android/Facebook;->setAccessExpires(J)V

    #@34
    # getter for: Lcom/facebook/android/Facebook;->session:Lcom/facebook/Session;
    invoke-static {v0}, Lcom/facebook/android/Facebook;->access$200(Lcom/facebook/android/Facebook;)Lcom/facebook/Session;

    #@37
    move-result-object v0

    #@38
    if-eqz v0, :cond_41

    #@3a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@3d
    move-result-object v2

    #@3e
    invoke-static {v0, v2}, Lcom/facebook/LegacyHelper;->extendTokenCompleted(Lcom/facebook/Session;Landroid/os/Bundle;)V

    #@41
    :cond_41
    iget-object v0, v1, Lcom/facebook/android/Facebook$TokenRefreshServiceConnection;->serviceListener:Lcom/facebook/android/Facebook$ServiceListener;

    #@43
    if-eqz v0, :cond_59

    #@45
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@48
    move-result-object v0

    #@49
    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    #@4c
    move-result-object v0

    #@4d
    check-cast v0, Landroid/os/Bundle;

    #@4f
    const-string v2, "expires_in"

    #@51
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@54
    iget-object v2, v1, Lcom/facebook/android/Facebook$TokenRefreshServiceConnection;->serviceListener:Lcom/facebook/android/Facebook$ServiceListener;

    #@56
    invoke-interface {v2, v0}, Lcom/facebook/android/Facebook$ServiceListener;->onComplete(Landroid/os/Bundle;)V

    #@59
    :cond_59
    :goto_59
    iget-object v0, v1, Lcom/facebook/android/Facebook$TokenRefreshServiceConnection;->applicationsContext:Landroid/content/Context;

    #@5b
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@5e
    goto :goto_14

    #@5f
    :cond_5f
    iget-object v0, v1, Lcom/facebook/android/Facebook$TokenRefreshServiceConnection;->serviceListener:Lcom/facebook/android/Facebook$ServiceListener;

    #@61
    if-eqz v0, :cond_59

    #@63
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@66
    move-result-object v0

    #@67
    const-string v2, "error"

    #@69
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@6c
    move-result-object v0

    #@6d
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@70
    move-result-object v2

    #@71
    const-string v3, "error_code"

    #@73
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@76
    move-result v2

    #@77
    if-eqz v2, :cond_8f

    #@79
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@7c
    move-result-object v2

    #@7d
    const-string v3, "error_code"

    #@7f
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@82
    move-result v2

    #@83
    iget-object v3, v1, Lcom/facebook/android/Facebook$TokenRefreshServiceConnection;->serviceListener:Lcom/facebook/android/Facebook$ServiceListener;

    #@85
    new-instance v4, Lcom/facebook/android/FacebookError;

    #@87
    const/4 v5, 0x0

    #@88
    invoke-direct {v4, v0, v5, v2}, Lcom/facebook/android/FacebookError;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@8b
    invoke-interface {v3, v4}, Lcom/facebook/android/Facebook$ServiceListener;->onFacebookError(Lcom/facebook/android/FacebookError;)V

    #@8e
    goto :goto_59

    #@8f
    :cond_8f
    iget-object v2, v1, Lcom/facebook/android/Facebook$TokenRefreshServiceConnection;->serviceListener:Lcom/facebook/android/Facebook$ServiceListener;

    #@91
    if-eqz v0, :cond_9c

    #@93
    :goto_93
    new-instance v3, Ljava/lang/Error;

    #@95
    invoke-direct {v3, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@98
    invoke-interface {v2, v3}, Lcom/facebook/android/Facebook$ServiceListener;->onError(Ljava/lang/Error;)V

    #@9b
    goto :goto_59

    #@9c
    :cond_9c
    const-string v0, "Unknown service error"

    #@9e
    goto :goto_93
.end method
