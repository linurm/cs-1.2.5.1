.class Lcom/facebook/ads/internal/AdRequestController$ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/AdRequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/ads/internal/AdRequestController;


# direct methods
.method private constructor <init>(Lcom/facebook/ads/internal/AdRequestController;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/ads/internal/AdRequestController$ScreenStateReceiver;->this$0:Lcom/facebook/ads/internal/AdRequestController;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ads/internal/AdRequestController;Lcom/facebook/ads/internal/AdRequestController$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/AdRequestController$ScreenStateReceiver;-><init>(Lcom/facebook/ads/internal/AdRequestController;)V

    #@3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    #@0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string v1, "android.intent.action.SCREEN_OFF"

    #@6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_16

    #@c
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController$ScreenStateReceiver;->this$0:Lcom/facebook/ads/internal/AdRequestController;

    #@e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    # invokes: Lcom/facebook/ads/internal/AdRequestController;->cancelRefresh(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/facebook/ads/internal/AdRequestController;->access$600(Lcom/facebook/ads/internal/AdRequestController;Ljava/lang/String;)V

    #@15
    :cond_15
    :goto_15
    return-void

    #@16
    :cond_16
    const-string v1, "android.intent.action.SCREEN_ON"

    #@18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_15

    #@1e
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController$ScreenStateReceiver;->this$0:Lcom/facebook/ads/internal/AdRequestController;

    #@20
    # getter for: Lcom/facebook/ads/internal/AdRequestController;->currentVisibility:I
    invoke-static {v0}, Lcom/facebook/ads/internal/AdRequestController;->access$700(Lcom/facebook/ads/internal/AdRequestController;)I

    #@23
    move-result v0

    #@24
    if-nez v0, :cond_15

    #@26
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController$ScreenStateReceiver;->this$0:Lcom/facebook/ads/internal/AdRequestController;

    #@28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/AdRequestController;->scheduleRefresh(Ljava/lang/String;)V

    #@2f
    goto :goto_15
.end method
