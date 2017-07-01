.class Lcom/apportable/ui/WebView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/WebView;->initWebView()V
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
    iput-object p1, p0, Lcom/apportable/ui/WebView$2;->this$0:Lcom/apportable/ui/WebView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    #@0
    const/4 v0, 0x4

    #@1
    if-ne p2, v0, :cond_e

    #@3
    iget-object v0, p0, Lcom/apportable/ui/WebView$2;->this$0:Lcom/apportable/ui/WebView;

    #@5
    # getter for: Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$1400(Lcom/apportable/ui/WebView;)Landroid/webkit/WebView;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    #@c
    const/4 v0, 0x1

    #@d
    :goto_d
    return v0

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    goto :goto_d
.end method
