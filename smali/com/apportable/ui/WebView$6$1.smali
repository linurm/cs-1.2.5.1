.class Lcom/apportable/ui/WebView$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/WebView$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/ui/WebView$6;


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebView$6;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/WebView$6$1;->this$1:Lcom/apportable/ui/WebView$6;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebView$6$1;->this$1:Lcom/apportable/ui/WebView$6;

    #@2
    iget-object v0, v0, Lcom/apportable/ui/WebView$6;->this$0:Lcom/apportable/ui/WebView;

    #@4
    # getter for: Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$1400(Lcom/apportable/ui/WebView;)Landroid/webkit/WebView;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_19

    #@a
    iget-object v0, p0, Lcom/apportable/ui/WebView$6$1;->this$1:Lcom/apportable/ui/WebView$6;

    #@c
    iget-object v0, v0, Lcom/apportable/ui/WebView$6;->this$0:Lcom/apportable/ui/WebView;

    #@e
    # getter for: Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$1400(Lcom/apportable/ui/WebView;)Landroid/webkit/WebView;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Lcom/apportable/ui/WebView$6$1;->this$1:Lcom/apportable/ui/WebView$6;

    #@14
    iget-object v1, v1, Lcom/apportable/ui/WebView$6;->val$url:Ljava/lang/String;

    #@16
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    #@19
    :cond_19
    return-void
.end method
