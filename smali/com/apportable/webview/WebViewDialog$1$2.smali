.class Lcom/apportable/webview/WebViewDialog$1$2;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/webview/WebViewDialog$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/webview/WebViewDialog$1;


# direct methods
.method constructor <init>(Lcom/apportable/webview/WebViewDialog$1;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/webview/WebViewDialog$1$2;->this$1:Lcom/apportable/webview/WebViewDialog$1;

    #@2
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    #@5
    return-void
.end method
