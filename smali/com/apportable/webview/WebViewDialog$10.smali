.class Lcom/apportable/webview/WebViewDialog$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/webview/WebViewDialog;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/webview/WebViewDialog;


# direct methods
.method constructor <init>(Lcom/apportable/webview/WebViewDialog;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/webview/WebViewDialog$10;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$10;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@3
    # getter for: Lcom/apportable/webview/WebViewDialog;->mWebView:Lcom/apportable/webview/WebViewDialog$ApportableWebView;
    invoke-static {v0}, Lcom/apportable/webview/WebViewDialog;->access$400(Lcom/apportable/webview/WebViewDialog;)Lcom/apportable/webview/WebViewDialog$ApportableWebView;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_17

    #@9
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$10;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@b
    # getter for: Lcom/apportable/webview/WebViewDialog;->mWebView:Lcom/apportable/webview/WebViewDialog$ApportableWebView;
    invoke-static {v0}, Lcom/apportable/webview/WebViewDialog;->access$400(Lcom/apportable/webview/WebViewDialog;)Lcom/apportable/webview/WebViewDialog$ApportableWebView;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Lcom/apportable/webview/WebViewDialog$ApportableWebView;->destroy()V

    #@12
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$10;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@14
    # setter for: Lcom/apportable/webview/WebViewDialog;->mWebView:Lcom/apportable/webview/WebViewDialog$ApportableWebView;
    invoke-static {v0, v1}, Lcom/apportable/webview/WebViewDialog;->access$402(Lcom/apportable/webview/WebViewDialog;Lcom/apportable/webview/WebViewDialog$ApportableWebView;)Lcom/apportable/webview/WebViewDialog$ApportableWebView;

    #@17
    :cond_17
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$10;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@19
    # getter for: Lcom/apportable/webview/WebViewDialog;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/apportable/webview/WebViewDialog;->access$200(Lcom/apportable/webview/WebViewDialog;)Landroid/app/Dialog;

    #@1c
    move-result-object v0

    #@1d
    if-eqz v0, :cond_2d

    #@1f
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$10;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@21
    # getter for: Lcom/apportable/webview/WebViewDialog;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/apportable/webview/WebViewDialog;->access$200(Lcom/apportable/webview/WebViewDialog;)Landroid/app/Dialog;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    #@28
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$10;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@2a
    # setter for: Lcom/apportable/webview/WebViewDialog;->mDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/apportable/webview/WebViewDialog;->access$202(Lcom/apportable/webview/WebViewDialog;Landroid/app/Dialog;)Landroid/app/Dialog;

    #@2d
    :cond_2d
    return-void
.end method
