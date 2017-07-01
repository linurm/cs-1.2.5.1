.class Lcom/facebook/UiLifecycleHelper$ActiveSessionBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/UiLifecycleHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActiveSessionBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/UiLifecycleHelper;


# direct methods
.method private constructor <init>(Lcom/facebook/UiLifecycleHelper;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/UiLifecycleHelper$ActiveSessionBroadcastReceiver;->this$0:Lcom/facebook/UiLifecycleHelper;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/UiLifecycleHelper;Lcom/facebook/UiLifecycleHelper$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/facebook/UiLifecycleHelper$ActiveSessionBroadcastReceiver;-><init>(Lcom/facebook/UiLifecycleHelper;)V

    #@3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    #@0
    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_SET"

    #@2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_24

    #@c
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    #@f
    move-result-object v0

    #@10
    if-eqz v0, :cond_23

    #@12
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper$ActiveSessionBroadcastReceiver;->this$0:Lcom/facebook/UiLifecycleHelper;

    #@14
    # getter for: Lcom/facebook/UiLifecycleHelper;->callback:Lcom/facebook/Session$StatusCallback;
    invoke-static {v1}, Lcom/facebook/UiLifecycleHelper;->access$100(Lcom/facebook/UiLifecycleHelper;)Lcom/facebook/Session$StatusCallback;

    #@17
    move-result-object v1

    #@18
    if-eqz v1, :cond_23

    #@1a
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper$ActiveSessionBroadcastReceiver;->this$0:Lcom/facebook/UiLifecycleHelper;

    #@1c
    # getter for: Lcom/facebook/UiLifecycleHelper;->callback:Lcom/facebook/Session$StatusCallback;
    invoke-static {v1}, Lcom/facebook/UiLifecycleHelper;->access$100(Lcom/facebook/UiLifecycleHelper;)Lcom/facebook/Session$StatusCallback;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v0, v1}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    #@23
    :cond_23
    :goto_23
    return-void

    #@24
    :cond_24
    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_UNSET"

    #@26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_23

    #@30
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    #@33
    move-result-object v0

    #@34
    if-eqz v0, :cond_23

    #@36
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper$ActiveSessionBroadcastReceiver;->this$0:Lcom/facebook/UiLifecycleHelper;

    #@38
    # getter for: Lcom/facebook/UiLifecycleHelper;->callback:Lcom/facebook/Session$StatusCallback;
    invoke-static {v1}, Lcom/facebook/UiLifecycleHelper;->access$100(Lcom/facebook/UiLifecycleHelper;)Lcom/facebook/Session$StatusCallback;

    #@3b
    move-result-object v1

    #@3c
    if-eqz v1, :cond_23

    #@3e
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper$ActiveSessionBroadcastReceiver;->this$0:Lcom/facebook/UiLifecycleHelper;

    #@40
    # getter for: Lcom/facebook/UiLifecycleHelper;->callback:Lcom/facebook/Session$StatusCallback;
    invoke-static {v1}, Lcom/facebook/UiLifecycleHelper;->access$100(Lcom/facebook/UiLifecycleHelper;)Lcom/facebook/Session$StatusCallback;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v0, v1}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    #@47
    goto :goto_23
.end method
