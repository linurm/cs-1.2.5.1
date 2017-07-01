.class Lcom/apportable/ui/Window$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/Window;->makeKeyAndOrderFront()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private previousHeight:I

.field final synthetic this$0:Lcom/apportable/ui/Window;

.field final synthetic val$layout:Lcom/apportable/ui/Window$WindowLayout;


# direct methods
.method constructor <init>(Lcom/apportable/ui/Window;Lcom/apportable/ui/Window$WindowLayout;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/apportable/ui/Window$2;->this$0:Lcom/apportable/ui/Window;

    #@2
    iput-object p2, p0, Lcom/apportable/ui/Window$2;->val$layout:Lcom/apportable/ui/Window$WindowLayout;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    const/4 v0, 0x0

    #@8
    iput v0, p0, Lcom/apportable/ui/Window$2;->previousHeight:I

    #@a
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    #@0
    new-instance v0, Landroid/graphics/Rect;

    #@2
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@5
    iget-object v1, p0, Lcom/apportable/ui/Window$2;->val$layout:Lcom/apportable/ui/Window$WindowLayout;

    #@7
    invoke-virtual {v1, v0}, Lcom/apportable/ui/Window$WindowLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    #@a
    iget-object v1, p0, Lcom/apportable/ui/Window$2;->val$layout:Lcom/apportable/ui/Window$WindowLayout;

    #@c
    invoke-virtual {v1}, Lcom/apportable/ui/Window$WindowLayout;->getRootView()Landroid/view/View;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    #@13
    move-result v1

    #@14
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    #@16
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@18
    sub-int v0, v2, v0

    #@1a
    sub-int v0, v1, v0

    #@1c
    const/16 v1, 0x64

    #@1e
    if-ge v0, v1, :cond_21

    #@20
    const/4 v0, 0x0

    #@21
    :cond_21
    iget v1, p0, Lcom/apportable/ui/Window$2;->previousHeight:I

    #@23
    if-eq v0, v1, :cond_30

    #@25
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@28
    move-result-object v1

    #@29
    iget v2, p0, Lcom/apportable/ui/Window$2;->previousHeight:I

    #@2b
    invoke-virtual {v1, v2, v0}, Lcom/apportable/activity/VerdeActivity;->onSoftKeyboardChanged(II)V

    #@2e
    iput v0, p0, Lcom/apportable/ui/Window$2;->previousHeight:I

    #@30
    :cond_30
    return-void
.end method
