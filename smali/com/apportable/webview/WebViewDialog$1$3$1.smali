.class Lcom/apportable/webview/WebViewDialog$1$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/webview/WebViewDialog$1$3;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/apportable/webview/WebViewDialog$1$3;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/apportable/webview/WebViewDialog$1$3;Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/apportable/webview/WebViewDialog$1$3$1;->this$2:Lcom/apportable/webview/WebViewDialog$1$3;

    #@2
    iput-object p2, p0, Lcom/apportable/webview/WebViewDialog$1$3$1;->val$view:Landroid/webkit/WebView;

    #@4
    iput-object p3, p0, Lcom/apportable/webview/WebViewDialog$1$3$1;->val$url:Ljava/lang/String;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$1$3$1;->val$view:Landroid/webkit/WebView;

    #@2
    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    #@5
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$1$3$1;->this$2:Lcom/apportable/webview/WebViewDialog$1$3;

    #@7
    iget-object v0, v0, Lcom/apportable/webview/WebViewDialog$1$3;->this$1:Lcom/apportable/webview/WebViewDialog$1;

    #@9
    iget-object v0, v0, Lcom/apportable/webview/WebViewDialog$1;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@b
    iget-object v1, p0, Lcom/apportable/webview/WebViewDialog$1$3$1;->this$2:Lcom/apportable/webview/WebViewDialog$1$3;

    #@d
    iget-object v1, v1, Lcom/apportable/webview/WebViewDialog$1$3;->this$1:Lcom/apportable/webview/WebViewDialog$1;

    #@f
    iget-object v1, v1, Lcom/apportable/webview/WebViewDialog$1;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@11
    iget v1, v1, Lcom/apportable/webview/WebViewDialog;->mObject:I

    #@13
    iget-object v2, p0, Lcom/apportable/webview/WebViewDialog$1$3$1;->val$url:Ljava/lang/String;

    #@15
    # invokes: Lcom/apportable/webview/WebViewDialog;->onPageFinished(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/apportable/webview/WebViewDialog;->access$500(Lcom/apportable/webview/WebViewDialog;ILjava/lang/String;)V

    #@18
    return-void
.end method
