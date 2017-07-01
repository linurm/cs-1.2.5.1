.class Lcom/apportable/ui/WebView$3$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/WebView$3$1;->requestFocus(ILandroid/graphics/Rect;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/apportable/ui/WebView$3$1;

.field final synthetic val$direction:I

.field final synthetic val$previouslyFocusedRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebView$3$1;ILandroid/graphics/Rect;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/apportable/ui/WebView$3$1$3;->this$2:Lcom/apportable/ui/WebView$3$1;

    #@2
    iput p2, p0, Lcom/apportable/ui/WebView$3$1$3;->val$direction:I

    #@4
    iput-object p3, p0, Lcom/apportable/ui/WebView$3$1$3;->val$previouslyFocusedRect:Landroid/graphics/Rect;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebView$3$1$3;->this$2:Lcom/apportable/ui/WebView$3$1;

    #@2
    iget v1, p0, Lcom/apportable/ui/WebView$3$1$3;->val$direction:I

    #@4
    iget-object v2, p0, Lcom/apportable/ui/WebView$3$1$3;->val$previouslyFocusedRect:Landroid/graphics/Rect;

    #@6
    # invokes: Lcom/apportable/ui/WebView$3$1;->superRequestFocus(ILandroid/graphics/Rect;)Z
    invoke-static {v0, v1, v2}, Lcom/apportable/ui/WebView$3$1;->access$1800(Lcom/apportable/ui/WebView$3$1;ILandroid/graphics/Rect;)Z

    #@9
    return-void
.end method
