.class Lcom/apportable/ui/WebView$3$1$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/WebView$3$1;->onVisibilityChanged(Lcom/apportable/ui/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/apportable/ui/WebView$3$1;

.field final synthetic val$changedView:Lcom/apportable/ui/View;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebView$3$1;Lcom/apportable/ui/View;I)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/apportable/ui/WebView$3$1$6;->this$2:Lcom/apportable/ui/WebView$3$1;

    #@2
    iput-object p2, p0, Lcom/apportable/ui/WebView$3$1$6;->val$changedView:Lcom/apportable/ui/View;

    #@4
    iput p3, p0, Lcom/apportable/ui/WebView$3$1$6;->val$visibility:I

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebView$3$1$6;->this$2:Lcom/apportable/ui/WebView$3$1;

    #@2
    iget-object v1, p0, Lcom/apportable/ui/WebView$3$1$6;->val$changedView:Lcom/apportable/ui/View;

    #@4
    iget v2, p0, Lcom/apportable/ui/WebView$3$1$6;->val$visibility:I

    #@6
    # invokes: Lcom/apportable/ui/WebView$3$1;->superOnVisibilityChanged(Lcom/apportable/ui/View;I)V
    invoke-static {v0, v1, v2}, Lcom/apportable/ui/WebView$3$1;->access$2100(Lcom/apportable/ui/WebView$3$1;Lcom/apportable/ui/View;I)V

    #@9
    return-void
.end method
