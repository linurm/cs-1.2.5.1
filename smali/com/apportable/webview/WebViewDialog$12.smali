.class Lcom/apportable/webview/WebViewDialog$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/webview/WebViewDialog;->hide()V
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
    iput-object p1, p0, Lcom/apportable/webview/WebViewDialog$12;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$12;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@2
    # getter for: Lcom/apportable/webview/WebViewDialog;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/apportable/webview/WebViewDialog;->access$200(Lcom/apportable/webview/WebViewDialog;)Landroid/app/Dialog;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    #@9
    return-void
.end method
