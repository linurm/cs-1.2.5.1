.class Lcom/apportable/ui/WebView$WebViewClient$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/WebView$WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/ui/WebView$WebViewClient;

.field final synthetic val$canGoBack:Z

.field final synthetic val$canGoForward:Z

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$errorCode:I

.field final synthetic val$failingUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebView$WebViewClient;ZZLjava/lang/String;ILjava/lang/String;)V
    .registers 7

    #@0
    iput-object p1, p0, Lcom/apportable/ui/WebView$WebViewClient$3;->this$1:Lcom/apportable/ui/WebView$WebViewClient;

    #@2
    iput-boolean p2, p0, Lcom/apportable/ui/WebView$WebViewClient$3;->val$canGoBack:Z

    #@4
    iput-boolean p3, p0, Lcom/apportable/ui/WebView$WebViewClient$3;->val$canGoForward:Z

    #@6
    iput-object p4, p0, Lcom/apportable/ui/WebView$WebViewClient$3;->val$failingUrl:Ljava/lang/String;

    #@8
    iput p5, p0, Lcom/apportable/ui/WebView$WebViewClient$3;->val$errorCode:I

    #@a
    iput-object p6, p0, Lcom/apportable/ui/WebView$WebViewClient$3;->val$description:Ljava/lang/String;

    #@c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@f
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebView$WebViewClient$3;->this$1:Lcom/apportable/ui/WebView$WebViewClient;

    #@2
    # getter for: Lcom/apportable/ui/WebView$WebViewClient;->mOwner:Lcom/apportable/ui/WebView;
    invoke-static {v0}, Lcom/apportable/ui/WebView$WebViewClient;->access$500(Lcom/apportable/ui/WebView$WebViewClient;)Lcom/apportable/ui/WebView;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    # setter for: Lcom/apportable/ui/WebView;->mLoading:Z
    invoke-static {v0, v1}, Lcom/apportable/ui/WebView;->access$602(Lcom/apportable/ui/WebView;Z)Z

    #@a
    iget-object v0, p0, Lcom/apportable/ui/WebView$WebViewClient$3;->this$1:Lcom/apportable/ui/WebView$WebViewClient;

    #@c
    # getter for: Lcom/apportable/ui/WebView$WebViewClient;->mOwner:Lcom/apportable/ui/WebView;
    invoke-static {v0}, Lcom/apportable/ui/WebView$WebViewClient;->access$500(Lcom/apportable/ui/WebView$WebViewClient;)Lcom/apportable/ui/WebView;

    #@f
    move-result-object v0

    #@10
    iget-boolean v1, p0, Lcom/apportable/ui/WebView$WebViewClient$3;->val$canGoBack:Z

    #@12
    # setter for: Lcom/apportable/ui/WebView;->mCanGoBack:Z
    invoke-static {v0, v1}, Lcom/apportable/ui/WebView;->access$702(Lcom/apportable/ui/WebView;Z)Z

    #@15
    iget-object v0, p0, Lcom/apportable/ui/WebView$WebViewClient$3;->this$1:Lcom/apportable/ui/WebView$WebViewClient;

    #@17
    # getter for: Lcom/apportable/ui/WebView$WebViewClient;->mOwner:Lcom/apportable/ui/WebView;
    invoke-static {v0}, Lcom/apportable/ui/WebView$WebViewClient;->access$500(Lcom/apportable/ui/WebView$WebViewClient;)Lcom/apportable/ui/WebView;

    #@1a
    move-result-object v0

    #@1b
    iget-boolean v1, p0, Lcom/apportable/ui/WebView$WebViewClient$3;->val$canGoForward:Z

    #@1d
    # setter for: Lcom/apportable/ui/WebView;->mCanGoForward:Z
    invoke-static {v0, v1}, Lcom/apportable/ui/WebView;->access$802(Lcom/apportable/ui/WebView;Z)Z

    #@20
    iget-object v0, p0, Lcom/apportable/ui/WebView$WebViewClient$3;->this$1:Lcom/apportable/ui/WebView$WebViewClient;

    #@22
    # getter for: Lcom/apportable/ui/WebView$WebViewClient;->mOwner:Lcom/apportable/ui/WebView;
    invoke-static {v0}, Lcom/apportable/ui/WebView$WebViewClient;->access$500(Lcom/apportable/ui/WebView$WebViewClient;)Lcom/apportable/ui/WebView;

    #@25
    move-result-object v0

    #@26
    # getter for: Lcom/apportable/ui/WebView;->mRequestUrl:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$900(Lcom/apportable/ui/WebView;)Ljava/util/concurrent/atomic/AtomicReference;

    #@29
    move-result-object v0

    #@2a
    iget-object v1, p0, Lcom/apportable/ui/WebView$WebViewClient$3;->val$failingUrl:Ljava/lang/String;

    #@2c
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@2f
    iget-object v0, p0, Lcom/apportable/ui/WebView$WebViewClient$3;->this$1:Lcom/apportable/ui/WebView$WebViewClient;

    #@31
    # getter for: Lcom/apportable/ui/WebView$WebViewClient;->mOwner:Lcom/apportable/ui/WebView;
    invoke-static {v0}, Lcom/apportable/ui/WebView$WebViewClient;->access$500(Lcom/apportable/ui/WebView$WebViewClient;)Lcom/apportable/ui/WebView;

    #@34
    move-result-object v0

    #@35
    iget-object v1, p0, Lcom/apportable/ui/WebView$WebViewClient$3;->this$1:Lcom/apportable/ui/WebView$WebViewClient;

    #@37
    # getter for: Lcom/apportable/ui/WebView$WebViewClient;->mOwner:Lcom/apportable/ui/WebView;
    invoke-static {v1}, Lcom/apportable/ui/WebView$WebViewClient;->access$500(Lcom/apportable/ui/WebView$WebViewClient;)Lcom/apportable/ui/WebView;

    #@3a
    move-result-object v1

    #@3b
    iget v1, v1, Lcom/apportable/ui/WebView;->mObject:I

    #@3d
    iget v2, p0, Lcom/apportable/ui/WebView$WebViewClient$3;->val$errorCode:I

    #@3f
    iget-object v3, p0, Lcom/apportable/ui/WebView$WebViewClient$3;->val$description:Ljava/lang/String;

    #@41
    iget-object v4, p0, Lcom/apportable/ui/WebView$WebViewClient$3;->val$failingUrl:Ljava/lang/String;

    #@43
    # invokes: Lcom/apportable/ui/WebView;->onReceivedError(IILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/apportable/ui/WebView;->access$1200(Lcom/apportable/ui/WebView;IILjava/lang/String;Ljava/lang/String;)V

    #@46
    return-void
.end method
