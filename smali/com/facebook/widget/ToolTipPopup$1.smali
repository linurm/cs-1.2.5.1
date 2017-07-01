.class Lcom/facebook/widget/ToolTipPopup$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/ToolTipPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/ToolTipPopup;


# direct methods
.method constructor <init>(Lcom/facebook/widget/ToolTipPopup;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/widget/ToolTipPopup$1;->this$0:Lcom/facebook/widget/ToolTipPopup;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup$1;->this$0:Lcom/facebook/widget/ToolTipPopup;

    #@2
    # getter for: Lcom/facebook/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/facebook/widget/ToolTipPopup;->access$000(Lcom/facebook/widget/ToolTipPopup;)Ljava/lang/ref/WeakReference;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_35

    #@c
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup$1;->this$0:Lcom/facebook/widget/ToolTipPopup;

    #@e
    # getter for: Lcom/facebook/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/facebook/widget/ToolTipPopup;->access$100(Lcom/facebook/widget/ToolTipPopup;)Landroid/widget/PopupWindow;

    #@11
    move-result-object v0

    #@12
    if-eqz v0, :cond_35

    #@14
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup$1;->this$0:Lcom/facebook/widget/ToolTipPopup;

    #@16
    # getter for: Lcom/facebook/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/facebook/widget/ToolTipPopup;->access$100(Lcom/facebook/widget/ToolTipPopup;)Landroid/widget/PopupWindow;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_35

    #@20
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup$1;->this$0:Lcom/facebook/widget/ToolTipPopup;

    #@22
    # getter for: Lcom/facebook/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/facebook/widget/ToolTipPopup;->access$100(Lcom/facebook/widget/ToolTipPopup;)Landroid/widget/PopupWindow;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_36

    #@2c
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup$1;->this$0:Lcom/facebook/widget/ToolTipPopup;

    #@2e
    # getter for: Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;
    invoke-static {v0}, Lcom/facebook/widget/ToolTipPopup;->access$200(Lcom/facebook/widget/ToolTipPopup;)Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->showBottomArrow()V

    #@35
    :cond_35
    :goto_35
    return-void

    #@36
    :cond_36
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup$1;->this$0:Lcom/facebook/widget/ToolTipPopup;

    #@38
    # getter for: Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;
    invoke-static {v0}, Lcom/facebook/widget/ToolTipPopup;->access$200(Lcom/facebook/widget/ToolTipPopup;)Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v0}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->showTopArrow()V

    #@3f
    goto :goto_35
.end method
