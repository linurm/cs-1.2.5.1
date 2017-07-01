.class Lcom/apportable/ui/WebView$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/WebView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/WebView;


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebView;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    #@2
    new-instance v1, Lcom/apportable/ui/WebView$3$1;

    #@4
    iget-object v2, p0, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    #@6
    invoke-virtual {v2}, Lcom/apportable/ui/WebView;->getContext()Landroid/content/Context;

    #@9
    move-result-object v2

    #@a
    invoke-direct {v1, p0, v2}, Lcom/apportable/ui/WebView$3$1;-><init>(Lcom/apportable/ui/WebView$3;Landroid/content/Context;)V

    #@d
    # setter for: Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0, v1}, Lcom/apportable/ui/WebView;->access$1402(Lcom/apportable/ui/WebView;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    #@10
    iget-object v0, p0, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    #@12
    # invokes: Lcom/apportable/ui/WebView;->initWebView()V
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$2300(Lcom/apportable/ui/WebView;)V

    #@15
    iget-object v0, p0, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    #@17
    # getter for: Lcom/apportable/ui/WebView;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$1600(Lcom/apportable/ui/WebView;)Landroid/os/Handler;

    #@1a
    move-result-object v0

    #@1b
    new-instance v1, Lcom/apportable/ui/WebView$3$2;

    #@1d
    invoke-direct {v1, p0}, Lcom/apportable/ui/WebView$3$2;-><init>(Lcom/apportable/ui/WebView$3;)V

    #@20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@23
    return-void
.end method
