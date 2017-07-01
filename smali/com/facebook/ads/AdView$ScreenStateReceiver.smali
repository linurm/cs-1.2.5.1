.class Lcom/facebook/ads/AdView$ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/ads/AdView;


# direct methods
.method private constructor <init>(Lcom/facebook/ads/AdView;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/ads/AdView$ScreenStateReceiver;->this$0:Lcom/facebook/ads/AdView;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ads/AdView;Lcom/facebook/ads/AdView$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/facebook/ads/AdView$ScreenStateReceiver;-><init>(Lcom/facebook/ads/AdView;)V

    #@3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    #@0
    const-string v0, "android.intent.action.SCREEN_OFF"

    #@2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_16

    #@c
    iget-object v0, p0, Lcom/facebook/ads/AdView$ScreenStateReceiver;->this$0:Lcom/facebook/ads/AdView;

    #@e
    # getter for: Lcom/facebook/ads/AdView;->adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$400(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/HtmlAdHandler;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Lcom/facebook/ads/internal/HtmlAdHandler;->cancelImpressionRetry()V

    #@15
    :goto_15
    return-void

    #@16
    :cond_16
    iget-object v0, p0, Lcom/facebook/ads/AdView$ScreenStateReceiver;->this$0:Lcom/facebook/ads/AdView;

    #@18
    # getter for: Lcom/facebook/ads/AdView;->adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$400(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/HtmlAdHandler;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Lcom/facebook/ads/internal/HtmlAdHandler;->scheduleImpressionRetry()V

    #@1f
    goto :goto_15
.end method
