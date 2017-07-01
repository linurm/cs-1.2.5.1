.class Lcom/apportable/ui/WebView$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/WebView;->jsEvaluationRunnable(Ljava/lang/String;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/WebView;

.field final synthetic val$js:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebView;Ljava/lang/String;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/ui/WebView$11;->this$0:Lcom/apportable/ui/WebView;

    #@2
    iput-object p2, p0, Lcom/apportable/ui/WebView$11;->val$js:Ljava/lang/String;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    #@0
    const/4 v6, 0x1

    #@1
    :try_start_1
    const-class v0, Landroid/webkit/WebView;

    #@3
    const-string v1, "evaluateJavascript"

    #@5
    const/4 v2, 0x2

    #@6
    new-array v2, v2, [Ljava/lang/Class;

    #@8
    const/4 v3, 0x0

    #@9
    const-class v4, Ljava/lang/String;

    #@b
    aput-object v4, v2, v3

    #@d
    const/4 v3, 0x1

    #@e
    const-class v4, Landroid/webkit/ValueCallback;

    #@10
    aput-object v4, v2, v3

    #@12
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@15
    move-result-object v0

    #@16
    iget-object v1, p0, Lcom/apportable/ui/WebView$11;->this$0:Lcom/apportable/ui/WebView;

    #@18
    # getter for: Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/apportable/ui/WebView;->access$1400(Lcom/apportable/ui/WebView;)Landroid/webkit/WebView;

    #@1b
    move-result-object v1

    #@1c
    iget-object v2, p0, Lcom/apportable/ui/WebView$11;->val$js:Ljava/lang/String;

    #@1e
    new-instance v3, Lcom/apportable/ui/WebView$JSValueCallback;

    #@20
    iget-object v4, p0, Lcom/apportable/ui/WebView$11;->this$0:Lcom/apportable/ui/WebView;

    #@22
    iget-object v5, p0, Lcom/apportable/ui/WebView$11;->this$0:Lcom/apportable/ui/WebView;

    #@24
    invoke-direct {v3, v4, v5}, Lcom/apportable/ui/WebView$JSValueCallback;-><init>(Lcom/apportable/ui/WebView;Lcom/apportable/ui/WebView;)V

    #@27
    const/4 v4, 0x2

    #@28
    new-array v4, v4, [Ljava/lang/Object;

    #@2a
    const/4 v5, 0x0

    #@2b
    aput-object v2, v4, v5

    #@2d
    const/4 v2, 0x1

    #@2e
    aput-object v3, v4, v2

    #@30
    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_33} :catch_34

    #@33
    :cond_33
    :goto_33
    return-void

    #@34
    :catch_34
    move-exception v0

    #@35
    iget-object v0, p0, Lcom/apportable/ui/WebView$11;->this$0:Lcom/apportable/ui/WebView;

    #@37
    # getter for: Lcom/apportable/ui/WebView;->mJsTimeout:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$000(Lcom/apportable/ui/WebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@3e
    move-result v0

    #@3f
    if-nez v0, :cond_33

    #@41
    iget-object v0, p0, Lcom/apportable/ui/WebView$11;->this$0:Lcom/apportable/ui/WebView;

    #@43
    # getter for: Lcom/apportable/ui/WebView;->mJsResult:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$100(Lcom/apportable/ui/WebView;)Ljava/util/concurrent/atomic/AtomicReference;

    #@46
    move-result-object v0

    #@47
    const-string v1, ""

    #@49
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@4c
    iget-object v0, p0, Lcom/apportable/ui/WebView$11;->this$0:Lcom/apportable/ui/WebView;

    #@4e
    # getter for: Lcom/apportable/ui/WebView;->mJsFinished:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$200(Lcom/apportable/ui/WebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@51
    move-result-object v0

    #@52
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@55
    goto :goto_33
.end method
