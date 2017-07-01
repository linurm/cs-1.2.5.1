.class Lcom/apportable/ui/WebView$3$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/WebView$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/ui/WebView$3;


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebView$3;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/WebView$3$2;->this$1:Lcom/apportable/ui/WebView$3;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebView$3$2;->this$1:Lcom/apportable/ui/WebView$3;

    #@2
    iget-object v0, v0, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    #@4
    iget-object v1, p0, Lcom/apportable/ui/WebView$3$2;->this$1:Lcom/apportable/ui/WebView$3;

    #@6
    iget-object v1, v1, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    #@8
    # getter for: Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/apportable/ui/WebView;->access$1400(Lcom/apportable/ui/WebView;)Landroid/webkit/WebView;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Lcom/apportable/ui/WebView;->setContentView(Landroid/view/View;)V

    #@f
    return-void
.end method
