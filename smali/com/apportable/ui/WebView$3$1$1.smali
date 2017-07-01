.class Lcom/apportable/ui/WebView$3$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/WebView$3$1;->requestLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/apportable/ui/WebView$3$1;


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebView$3$1;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/WebView$3$1$1;->this$2:Lcom/apportable/ui/WebView$3$1;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebView$3$1$1;->this$2:Lcom/apportable/ui/WebView$3$1;

    #@2
    # invokes: Lcom/apportable/ui/WebView$3$1;->superRequestLayout()V
    invoke-static {v0}, Lcom/apportable/ui/WebView$3$1;->access$1500(Lcom/apportable/ui/WebView$3$1;)V

    #@5
    return-void
.end method
