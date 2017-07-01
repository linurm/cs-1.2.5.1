.class Lcom/apportable/ui/WebView$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/WebView;->setUseWideViewPort(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/WebView;

.field final synthetic val$_enabled:Z


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebView;Z)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/ui/WebView$9;->this$0:Lcom/apportable/ui/WebView;

    #@2
    iput-boolean p2, p0, Lcom/apportable/ui/WebView$9;->val$_enabled:Z

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebView$9;->this$0:Lcom/apportable/ui/WebView;

    #@2
    # getter for: Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$1400(Lcom/apportable/ui/WebView;)Landroid/webkit/WebView;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    #@9
    move-result-object v0

    #@a
    iget-boolean v1, p0, Lcom/apportable/ui/WebView$9;->val$_enabled:Z

    #@c
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    #@f
    return-void
.end method
