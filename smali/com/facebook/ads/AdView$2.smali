.class Lcom/facebook/ads/AdView$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/AdRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/AdView;->createAdRequestCallback()Lcom/facebook/ads/internal/AdRequest$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/ads/AdView;


# direct methods
.method constructor <init>(Lcom/facebook/ads/AdView;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/ads/internal/AdResponse;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #@2
    # getter for: Lcom/facebook/ads/AdView;->adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$400(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/HtmlAdHandler;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/facebook/ads/internal/HtmlAdHandler;->cancelImpressionRetry()V

    #@9
    invoke-virtual {p1}, Lcom/facebook/ads/internal/AdResponse;->getDataModel()Lcom/facebook/ads/internal/AdDataModel;

    #@c
    move-result-object v1

    #@d
    if-eqz v1, :cond_3a

    #@f
    instance-of v0, v1, Lcom/facebook/ads/internal/HtmlAdDataModel;

    #@11
    if-eqz v0, :cond_3a

    #@13
    iget-object v0, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #@15
    # getter for: Lcom/facebook/ads/AdView;->adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$400(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/HtmlAdHandler;

    #@18
    move-result-object v2

    #@19
    move-object v0, v1

    #@1a
    check-cast v0, Lcom/facebook/ads/internal/HtmlAdDataModel;

    #@1c
    invoke-virtual {v2, v0}, Lcom/facebook/ads/internal/HtmlAdHandler;->setAdDataModel(Lcom/facebook/ads/internal/HtmlAdDataModel;)V

    #@1f
    iget-object v0, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #@21
    check-cast v1, Lcom/facebook/ads/internal/HtmlAdDataModel;

    #@23
    # invokes: Lcom/facebook/ads/AdView;->updateView(Lcom/facebook/ads/internal/HtmlAdDataModel;)V
    invoke-static {v0, v1}, Lcom/facebook/ads/AdView;->access$600(Lcom/facebook/ads/AdView;Lcom/facebook/ads/internal/HtmlAdDataModel;)V

    #@26
    iget-object v0, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #@28
    # getter for: Lcom/facebook/ads/AdView;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$500(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    #@2b
    move-result-object v0

    #@2c
    if-eqz v0, :cond_39

    #@2e
    iget-object v0, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #@30
    # getter for: Lcom/facebook/ads/AdView;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$500(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    #@33
    move-result-object v0

    #@34
    iget-object v1, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #@36
    invoke-interface {v0, v1}, Lcom/facebook/ads/AdListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    #@39
    :cond_39
    :goto_39
    return-void

    #@3a
    :cond_3a
    if-nez v1, :cond_70

    #@3c
    iget-object v0, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #@3e
    # getter for: Lcom/facebook/ads/AdView;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$500(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    #@41
    move-result-object v0

    #@42
    if-eqz v0, :cond_59

    #@44
    iget-object v0, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #@46
    # getter for: Lcom/facebook/ads/AdView;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$500(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    #@49
    move-result-object v1

    #@4a
    iget-object v2, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #@4c
    invoke-virtual {p1}, Lcom/facebook/ads/internal/AdResponse;->getError()Lcom/facebook/ads/AdError;

    #@4f
    move-result-object v0

    #@50
    if-eqz v0, :cond_6d

    #@52
    invoke-virtual {p1}, Lcom/facebook/ads/internal/AdResponse;->getError()Lcom/facebook/ads/AdError;

    #@55
    move-result-object v0

    #@56
    :goto_56
    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/AdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    #@59
    :cond_59
    iget-object v0, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #@5b
    # getter for: Lcom/facebook/ads/AdView;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$200(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/AdRequestController;

    #@5e
    move-result-object v0

    #@5f
    if-eqz v0, :cond_39

    #@61
    iget-object v0, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #@63
    # getter for: Lcom/facebook/ads/AdView;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$200(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/AdRequestController;

    #@66
    move-result-object v0

    #@67
    const-string v1, "on no fill"

    #@69
    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/AdRequestController;->scheduleRefresh(Ljava/lang/String;)V

    #@6c
    goto :goto_39

    #@6d
    :cond_6d
    sget-object v0, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    #@6f
    goto :goto_56

    #@70
    :cond_70
    iget-object v0, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #@72
    # getter for: Lcom/facebook/ads/AdView;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$500(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    #@75
    move-result-object v0

    #@76
    if-eqz v0, :cond_85

    #@78
    iget-object v0, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #@7a
    # getter for: Lcom/facebook/ads/AdView;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$500(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    #@7d
    move-result-object v0

    #@7e
    iget-object v1, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #@80
    sget-object v2, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    #@82
    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/AdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    #@85
    :cond_85
    iget-object v0, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #@87
    # getter for: Lcom/facebook/ads/AdView;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$200(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/AdRequestController;

    #@8a
    move-result-object v0

    #@8b
    if-eqz v0, :cond_39

    #@8d
    iget-object v0, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #@8f
    # getter for: Lcom/facebook/ads/AdView;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$200(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/AdRequestController;

    #@92
    move-result-object v0

    #@93
    const-string v1, "on internal error"

    #@95
    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/AdRequestController;->scheduleRefresh(Ljava/lang/String;)V

    #@98
    goto :goto_39
.end method

.method public onError(Lcom/facebook/ads/AdError;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #@2
    # getter for: Lcom/facebook/ads/AdView;->adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$400(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/HtmlAdHandler;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/facebook/ads/internal/HtmlAdHandler;->cancelImpressionRetry()V

    #@9
    iget-object v0, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #@b
    # getter for: Lcom/facebook/ads/AdView;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$500(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    #@e
    move-result-object v0

    #@f
    if-eqz v0, :cond_1c

    #@11
    iget-object v0, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #@13
    # getter for: Lcom/facebook/ads/AdView;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$500(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    #@16
    move-result-object v0

    #@17
    iget-object v1, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #@19
    invoke-interface {v0, v1, p1}, Lcom/facebook/ads/AdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    #@1c
    :cond_1c
    return-void
.end method
