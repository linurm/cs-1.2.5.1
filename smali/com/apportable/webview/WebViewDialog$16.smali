.class Lcom/apportable/webview/WebViewDialog$16;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/webview/WebViewDialog;->setBackgroundColor(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/webview/WebViewDialog;

.field final synthetic val$color:I


# direct methods
.method constructor <init>(Lcom/apportable/webview/WebViewDialog;I)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/webview/WebViewDialog$16;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@2
    iput p2, p0, Lcom/apportable/webview/WebViewDialog$16;->val$color:I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$16;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@2
    # getter for: Lcom/apportable/webview/WebViewDialog;->mWebView:Lcom/apportable/webview/WebViewDialog$ApportableWebView;
    invoke-static {v0}, Lcom/apportable/webview/WebViewDialog;->access$400(Lcom/apportable/webview/WebViewDialog;)Lcom/apportable/webview/WebViewDialog$ApportableWebView;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_13

    #@8
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$16;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@a
    # getter for: Lcom/apportable/webview/WebViewDialog;->mWebView:Lcom/apportable/webview/WebViewDialog$ApportableWebView;
    invoke-static {v0}, Lcom/apportable/webview/WebViewDialog;->access$400(Lcom/apportable/webview/WebViewDialog;)Lcom/apportable/webview/WebViewDialog$ApportableWebView;

    #@d
    move-result-object v0

    #@e
    iget v1, p0, Lcom/apportable/webview/WebViewDialog$16;->val$color:I

    #@10
    invoke-virtual {v0, v1}, Lcom/apportable/webview/WebViewDialog$ApportableWebView;->setBackgroundColor(I)V

    #@13
    :cond_13
    return-void
.end method
