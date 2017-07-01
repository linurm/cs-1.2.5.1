.class Lcom/apportable/ui/WebView$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/WebView$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/ui/WebView$5;


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebView$5;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/WebView$5$1;->this$1:Lcom/apportable/ui/WebView$5;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    #@0
    const/4 v4, 0x0

    #@1
    iget-object v0, p0, Lcom/apportable/ui/WebView$5$1;->this$1:Lcom/apportable/ui/WebView$5;

    #@3
    iget-object v0, v0, Lcom/apportable/ui/WebView$5;->this$0:Lcom/apportable/ui/WebView;

    #@5
    # getter for: Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$1400(Lcom/apportable/ui/WebView;)Landroid/webkit/WebView;

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_21

    #@b
    iget-object v0, p0, Lcom/apportable/ui/WebView$5$1;->this$1:Lcom/apportable/ui/WebView$5;

    #@d
    iget-object v0, v0, Lcom/apportable/ui/WebView$5;->this$0:Lcom/apportable/ui/WebView;

    #@f
    # getter for: Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$1400(Lcom/apportable/ui/WebView;)Landroid/webkit/WebView;

    #@12
    move-result-object v0

    #@13
    iget-object v1, p0, Lcom/apportable/ui/WebView$5$1;->this$1:Lcom/apportable/ui/WebView$5;

    #@15
    iget-object v1, v1, Lcom/apportable/ui/WebView$5;->val$baseURL:Ljava/lang/String;

    #@17
    iget-object v2, p0, Lcom/apportable/ui/WebView$5$1;->this$1:Lcom/apportable/ui/WebView$5;

    #@19
    iget-object v2, v2, Lcom/apportable/ui/WebView$5;->val$html:Ljava/lang/String;

    #@1b
    const-string v3, "text/html"

    #@1d
    move-object v5, v4

    #@1e
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@21
    :cond_21
    return-void
.end method
