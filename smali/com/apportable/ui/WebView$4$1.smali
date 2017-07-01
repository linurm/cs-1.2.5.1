.class Lcom/apportable/ui/WebView$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/WebView$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/ui/WebView$4;


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebView$4;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/WebView$4$1;->this$1:Lcom/apportable/ui/WebView$4;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebView$4$1;->this$1:Lcom/apportable/ui/WebView$4;

    #@2
    iget-object v0, v0, Lcom/apportable/ui/WebView$4;->this$0:Lcom/apportable/ui/WebView;

    #@4
    # getter for: Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$1400(Lcom/apportable/ui/WebView;)Landroid/webkit/WebView;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_2b

    #@a
    iget-object v0, p0, Lcom/apportable/ui/WebView$4$1;->this$1:Lcom/apportable/ui/WebView$4;

    #@c
    iget-object v0, v0, Lcom/apportable/ui/WebView$4;->this$0:Lcom/apportable/ui/WebView;

    #@e
    # getter for: Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$1400(Lcom/apportable/ui/WebView;)Landroid/webkit/WebView;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Lcom/apportable/ui/WebView$4$1;->this$1:Lcom/apportable/ui/WebView$4;

    #@14
    iget-object v1, v1, Lcom/apportable/ui/WebView$4;->val$baseURL:Ljava/lang/String;

    #@16
    new-instance v2, Ljava/lang/String;

    #@18
    iget-object v3, p0, Lcom/apportable/ui/WebView$4$1;->this$1:Lcom/apportable/ui/WebView$4;

    #@1a
    iget-object v3, v3, Lcom/apportable/ui/WebView$4;->val$data:[B

    #@1c
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    #@1f
    iget-object v3, p0, Lcom/apportable/ui/WebView$4$1;->this$1:Lcom/apportable/ui/WebView$4;

    #@21
    iget-object v3, v3, Lcom/apportable/ui/WebView$4;->val$mimeType:Ljava/lang/String;

    #@23
    iget-object v4, p0, Lcom/apportable/ui/WebView$4$1;->this$1:Lcom/apportable/ui/WebView$4;

    #@25
    iget-object v4, v4, Lcom/apportable/ui/WebView$4;->val$encodingName:Ljava/lang/String;

    #@27
    const/4 v5, 0x0

    #@28
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@2b
    :cond_2b
    return-void
.end method
