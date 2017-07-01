.class Lcom/apportable/ui/WebView$10;
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

.field final synthetic val$jsCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebView;Ljava/lang/String;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/ui/WebView$10;->this$0:Lcom/apportable/ui/WebView;

    #@2
    iput-object p2, p0, Lcom/apportable/ui/WebView$10;->val$jsCode:Ljava/lang/String;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebView$10;->this$0:Lcom/apportable/ui/WebView;

    #@2
    # getter for: Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$1400(Lcom/apportable/ui/WebView;)Landroid/webkit/WebView;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/apportable/ui/WebView$10;->val$jsCode:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    #@b
    return-void
.end method
