.class Lbolts/WebViewAppLinkResolver$2;
.super Ljava/lang/Object;

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/WebViewAppLinkResolver;->getAppLinkFromUrlInBackground(Landroid/net/Uri;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Void;",
        "Lbolts/Task",
        "<",
        "Lorg/json/JSONArray;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/WebViewAppLinkResolver;

.field final synthetic val$content:Lbolts/Capture;

.field final synthetic val$contentType:Lbolts/Capture;

.field final synthetic val$url:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lbolts/WebViewAppLinkResolver;Lbolts/Capture;Landroid/net/Uri;Lbolts/Capture;)V
    .registers 5

    #@0
    iput-object p1, p0, Lbolts/WebViewAppLinkResolver$2;->this$0:Lbolts/WebViewAppLinkResolver;

    #@2
    iput-object p2, p0, Lbolts/WebViewAppLinkResolver$2;->val$contentType:Lbolts/Capture;

    #@4
    iput-object p3, p0, Lbolts/WebViewAppLinkResolver$2;->val$url:Landroid/net/Uri;

    #@6
    iput-object p4, p0, Lbolts/WebViewAppLinkResolver$2;->val$content:Lbolts/Capture;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    #@5
    move-result-object v6

    #@6
    new-instance v0, Landroid/webkit/WebView;

    #@8
    iget-object v1, p0, Lbolts/WebViewAppLinkResolver$2;->this$0:Lbolts/WebViewAppLinkResolver;

    #@a
    # getter for: Lbolts/WebViewAppLinkResolver;->context:Landroid/content/Context;
    invoke-static {v1}, Lbolts/WebViewAppLinkResolver;->access$200(Lbolts/WebViewAppLinkResolver;)Landroid/content/Context;

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    #@11
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    #@14
    move-result-object v1

    #@15
    const/4 v2, 0x1

    #@16
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    #@19
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    #@1c
    new-instance v1, Lbolts/WebViewAppLinkResolver$2$1;

    #@1e
    invoke-direct {v1, p0}, Lbolts/WebViewAppLinkResolver$2$1;-><init>(Lbolts/WebViewAppLinkResolver$2;)V

    #@21
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    #@24
    new-instance v1, Lbolts/WebViewAppLinkResolver$2$2;

    #@26
    invoke-direct {v1, p0, v6}, Lbolts/WebViewAppLinkResolver$2$2;-><init>(Lbolts/WebViewAppLinkResolver$2;Lbolts/Task$TaskCompletionSource;)V

    #@29
    const-string v2, "boltsWebViewAppLinkResolverResult"

    #@2b
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    #@2e
    iget-object v1, p0, Lbolts/WebViewAppLinkResolver$2;->val$contentType:Lbolts/Capture;

    #@30
    invoke-virtual {v1}, Lbolts/Capture;->get()Ljava/lang/Object;

    #@33
    move-result-object v1

    #@34
    if-eqz v1, :cond_5d

    #@36
    iget-object v1, p0, Lbolts/WebViewAppLinkResolver$2;->val$contentType:Lbolts/Capture;

    #@38
    invoke-virtual {v1}, Lbolts/Capture;->get()Ljava/lang/Object;

    #@3b
    move-result-object v1

    #@3c
    check-cast v1, Ljava/lang/String;

    #@3e
    const-string v2, ";"

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    aget-object v3, v1, v3

    #@46
    :goto_46
    iget-object v1, p0, Lbolts/WebViewAppLinkResolver$2;->val$url:Landroid/net/Uri;

    #@48
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    iget-object v2, p0, Lbolts/WebViewAppLinkResolver$2;->val$content:Lbolts/Capture;

    #@4e
    invoke-virtual {v2}, Lbolts/Capture;->get()Ljava/lang/Object;

    #@51
    move-result-object v2

    #@52
    check-cast v2, Ljava/lang/String;

    #@54
    move-object v5, v4

    #@55
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@58
    invoke-virtual {v6}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    #@5b
    move-result-object v0

    #@5c
    return-object v0

    #@5d
    :cond_5d
    move-object v3, v4

    #@5e
    goto :goto_46
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    invoke-virtual {p0, p1}, Lbolts/WebViewAppLinkResolver$2;->then(Lbolts/Task;)Lbolts/Task;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
