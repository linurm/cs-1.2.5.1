.class Lcom/apportable/webview/WebViewDialog$1$3$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/webview/WebViewDialog$1$3;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/apportable/webview/WebViewDialog$1$3;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apportable/webview/WebViewDialog$1$3;Ljava/lang/String;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/webview/WebViewDialog$1$3$2;->this$2:Lcom/apportable/webview/WebViewDialog$1$3;

    #@2
    iput-object p2, p0, Lcom/apportable/webview/WebViewDialog$1$3$2;->val$url:Ljava/lang/String;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$1$3$2;->this$2:Lcom/apportable/webview/WebViewDialog$1$3;

    #@2
    iget-object v0, v0, Lcom/apportable/webview/WebViewDialog$1$3;->this$1:Lcom/apportable/webview/WebViewDialog$1;

    #@4
    iget-object v0, v0, Lcom/apportable/webview/WebViewDialog$1;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@6
    iget-object v1, p0, Lcom/apportable/webview/WebViewDialog$1$3$2;->this$2:Lcom/apportable/webview/WebViewDialog$1$3;

    #@8
    iget-object v1, v1, Lcom/apportable/webview/WebViewDialog$1$3;->this$1:Lcom/apportable/webview/WebViewDialog$1;

    #@a
    iget-object v1, v1, Lcom/apportable/webview/WebViewDialog$1;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@c
    iget v1, v1, Lcom/apportable/webview/WebViewDialog;->mObject:I

    #@e
    iget-object v2, p0, Lcom/apportable/webview/WebViewDialog$1$3$2;->val$url:Ljava/lang/String;

    #@10
    # invokes: Lcom/apportable/webview/WebViewDialog;->onPageStarted(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/apportable/webview/WebViewDialog;->access$600(Lcom/apportable/webview/WebViewDialog;ILjava/lang/String;)V

    #@13
    return-void
.end method
