.class Lcom/apportable/webview/WebViewDialog$15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/webview/WebViewDialog;->setFrame(Landroid/graphics/RectF;)V
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
    iput-object p1, p0, Lcom/apportable/webview/WebViewDialog$15;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$15;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@2
    # getter for: Lcom/apportable/webview/WebViewDialog;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/apportable/webview/WebViewDialog;->access$200(Lcom/apportable/webview/WebViewDialog;)Landroid/app/Dialog;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_91

    #@8
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$15;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@a
    # getter for: Lcom/apportable/webview/WebViewDialog;->mFrame:Landroid/graphics/RectF;
    invoke-static {v0}, Lcom/apportable/webview/WebViewDialog;->access$900(Lcom/apportable/webview/WebViewDialog;)Landroid/graphics/RectF;

    #@d
    move-result-object v0

    #@e
    iget v0, v0, Landroid/graphics/RectF;->left:F

    #@10
    iget-object v1, p0, Lcom/apportable/webview/WebViewDialog$15;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@12
    # getter for: Lcom/apportable/webview/WebViewDialog;->mFrame:Landroid/graphics/RectF;
    invoke-static {v1}, Lcom/apportable/webview/WebViewDialog;->access$900(Lcom/apportable/webview/WebViewDialog;)Landroid/graphics/RectF;

    #@15
    move-result-object v1

    #@16
    iget v1, v1, Landroid/graphics/RectF;->right:F

    #@18
    cmpl-float v0, v0, v1

    #@1a
    if-gez v0, :cond_30

    #@1c
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$15;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@1e
    # getter for: Lcom/apportable/webview/WebViewDialog;->mFrame:Landroid/graphics/RectF;
    invoke-static {v0}, Lcom/apportable/webview/WebViewDialog;->access$900(Lcom/apportable/webview/WebViewDialog;)Landroid/graphics/RectF;

    #@21
    move-result-object v0

    #@22
    iget v0, v0, Landroid/graphics/RectF;->top:F

    #@24
    iget-object v1, p0, Lcom/apportable/webview/WebViewDialog$15;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@26
    # getter for: Lcom/apportable/webview/WebViewDialog;->mFrame:Landroid/graphics/RectF;
    invoke-static {v1}, Lcom/apportable/webview/WebViewDialog;->access$900(Lcom/apportable/webview/WebViewDialog;)Landroid/graphics/RectF;

    #@29
    move-result-object v1

    #@2a
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    #@2c
    cmpl-float v0, v0, v1

    #@2e
    if-ltz v0, :cond_39

    #@30
    :cond_30
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$15;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@32
    # getter for: Lcom/apportable/webview/WebViewDialog;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/apportable/webview/WebViewDialog;->access$200(Lcom/apportable/webview/WebViewDialog;)Landroid/app/Dialog;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    #@39
    :cond_39
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$15;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@3b
    # getter for: Lcom/apportable/webview/WebViewDialog;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/apportable/webview/WebViewDialog;->access$200(Lcom/apportable/webview/WebViewDialog;)Landroid/app/Dialog;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@46
    move-result-object v0

    #@47
    iget-object v1, p0, Lcom/apportable/webview/WebViewDialog$15;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@49
    # getter for: Lcom/apportable/webview/WebViewDialog;->mFrame:Landroid/graphics/RectF;
    invoke-static {v1}, Lcom/apportable/webview/WebViewDialog;->access$900(Lcom/apportable/webview/WebViewDialog;)Landroid/graphics/RectF;

    #@4c
    move-result-object v1

    #@4d
    iget v1, v1, Landroid/graphics/RectF;->left:F

    #@4f
    float-to-int v1, v1

    #@50
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@52
    iget-object v1, p0, Lcom/apportable/webview/WebViewDialog$15;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@54
    # getter for: Lcom/apportable/webview/WebViewDialog;->mFrame:Landroid/graphics/RectF;
    invoke-static {v1}, Lcom/apportable/webview/WebViewDialog;->access$900(Lcom/apportable/webview/WebViewDialog;)Landroid/graphics/RectF;

    #@57
    move-result-object v1

    #@58
    iget v1, v1, Landroid/graphics/RectF;->top:F

    #@5a
    float-to-int v1, v1

    #@5b
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    #@5d
    iget-object v1, p0, Lcom/apportable/webview/WebViewDialog$15;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@5f
    # getter for: Lcom/apportable/webview/WebViewDialog;->mFrame:Landroid/graphics/RectF;
    invoke-static {v1}, Lcom/apportable/webview/WebViewDialog;->access$900(Lcom/apportable/webview/WebViewDialog;)Landroid/graphics/RectF;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    #@66
    move-result v1

    #@67
    float-to-int v1, v1

    #@68
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    #@6a
    iget-object v1, p0, Lcom/apportable/webview/WebViewDialog$15;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@6c
    # getter for: Lcom/apportable/webview/WebViewDialog;->mFrame:Landroid/graphics/RectF;
    invoke-static {v1}, Lcom/apportable/webview/WebViewDialog;->access$900(Lcom/apportable/webview/WebViewDialog;)Landroid/graphics/RectF;

    #@6f
    move-result-object v1

    #@70
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    #@73
    move-result v1

    #@74
    float-to-int v1, v1

    #@75
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    #@77
    iget-object v1, p0, Lcom/apportable/webview/WebViewDialog$15;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@79
    # getter for: Lcom/apportable/webview/WebViewDialog;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/apportable/webview/WebViewDialog;->access$200(Lcom/apportable/webview/WebViewDialog;)Landroid/app/Dialog;

    #@7c
    move-result-object v1

    #@7d
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@80
    move-result-object v1

    #@81
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    #@84
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$15;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@86
    # getter for: Lcom/apportable/webview/WebViewDialog;->mShowing:Z
    invoke-static {v0}, Lcom/apportable/webview/WebViewDialog;->access$1000(Lcom/apportable/webview/WebViewDialog;)Z

    #@89
    move-result v0

    #@8a
    if-eqz v0, :cond_91

    #@8c
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$15;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@8e
    invoke-virtual {v0}, Lcom/apportable/webview/WebViewDialog;->show()V

    #@91
    :cond_91
    return-void
.end method
