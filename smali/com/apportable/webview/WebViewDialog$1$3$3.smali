.class Lcom/apportable/webview/WebViewDialog$1$3$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/webview/WebViewDialog$1$3;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/apportable/webview/WebViewDialog$1$3;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$errorCode:I

.field final synthetic val$failingUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apportable/webview/WebViewDialog$1$3;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/apportable/webview/WebViewDialog$1$3$3;->this$2:Lcom/apportable/webview/WebViewDialog$1$3;

    #@2
    iput p2, p0, Lcom/apportable/webview/WebViewDialog$1$3$3;->val$errorCode:I

    #@4
    iput-object p3, p0, Lcom/apportable/webview/WebViewDialog$1$3$3;->val$description:Ljava/lang/String;

    #@6
    iput-object p4, p0, Lcom/apportable/webview/WebViewDialog$1$3$3;->val$failingUrl:Ljava/lang/String;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$1$3$3;->this$2:Lcom/apportable/webview/WebViewDialog$1$3;

    #@2
    iget-object v0, v0, Lcom/apportable/webview/WebViewDialog$1$3;->this$1:Lcom/apportable/webview/WebViewDialog$1;

    #@4
    iget-object v0, v0, Lcom/apportable/webview/WebViewDialog$1;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@6
    iget-object v1, p0, Lcom/apportable/webview/WebViewDialog$1$3$3;->this$2:Lcom/apportable/webview/WebViewDialog$1$3;

    #@8
    iget-object v1, v1, Lcom/apportable/webview/WebViewDialog$1$3;->this$1:Lcom/apportable/webview/WebViewDialog$1;

    #@a
    iget-object v1, v1, Lcom/apportable/webview/WebViewDialog$1;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@c
    iget v1, v1, Lcom/apportable/webview/WebViewDialog;->mObject:I

    #@e
    iget v2, p0, Lcom/apportable/webview/WebViewDialog$1$3$3;->val$errorCode:I

    #@10
    iget-object v3, p0, Lcom/apportable/webview/WebViewDialog$1$3$3;->val$description:Ljava/lang/String;

    #@12
    iget-object v4, p0, Lcom/apportable/webview/WebViewDialog$1$3$3;->val$failingUrl:Ljava/lang/String;

    #@14
    # invokes: Lcom/apportable/webview/WebViewDialog;->onReceivedError(IILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/apportable/webview/WebViewDialog;->access$700(Lcom/apportable/webview/WebViewDialog;IILjava/lang/String;Ljava/lang/String;)V

    #@17
    return-void
.end method
