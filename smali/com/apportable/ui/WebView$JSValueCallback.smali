.class Lcom/apportable/ui/WebView$JSValueCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JSValueCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mOwner:Lcom/apportable/ui/WebView;

.field final synthetic this$0:Lcom/apportable/ui/WebView;


# direct methods
.method public constructor <init>(Lcom/apportable/ui/WebView;Lcom/apportable/ui/WebView;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/ui/WebView$JSValueCallback;->this$0:Lcom/apportable/ui/WebView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    iput-object p2, p0, Lcom/apportable/ui/WebView$JSValueCallback;->mOwner:Lcom/apportable/ui/WebView;

    #@7
    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .registers 2

    #@0
    check-cast p1, Ljava/lang/String;

    #@2
    invoke-virtual {p0, p1}, Lcom/apportable/ui/WebView$JSValueCallback;->onReceiveValue(Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebView$JSValueCallback;->this$0:Lcom/apportable/ui/WebView;

    #@2
    # getter for: Lcom/apportable/ui/WebView;->mJsTimeout:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$000(Lcom/apportable/ui/WebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_21

    #@c
    iget-object v0, p0, Lcom/apportable/ui/WebView$JSValueCallback;->mOwner:Lcom/apportable/ui/WebView;

    #@e
    # getter for: Lcom/apportable/ui/WebView;->mJsResult:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$100(Lcom/apportable/ui/WebView;)Ljava/util/concurrent/atomic/AtomicReference;

    #@11
    move-result-object v0

    #@12
    if-eqz p1, :cond_22

    #@14
    :goto_14
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@17
    iget-object v0, p0, Lcom/apportable/ui/WebView$JSValueCallback;->mOwner:Lcom/apportable/ui/WebView;

    #@19
    # getter for: Lcom/apportable/ui/WebView;->mJsFinished:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$200(Lcom/apportable/ui/WebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1c
    move-result-object v0

    #@1d
    const/4 v1, 0x1

    #@1e
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@21
    :cond_21
    return-void

    #@22
    :cond_22
    const-string p1, ""

    #@24
    goto :goto_14
.end method
