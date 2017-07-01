.class Lcom/facebook/Settings$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/Settings$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/Settings$2;

.field final synthetic val$response:Lcom/facebook/Response;


# direct methods
.method constructor <init>(Lcom/facebook/Settings$2;Lcom/facebook/Response;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/facebook/Settings$2$1;->this$0:Lcom/facebook/Settings$2;

    #@2
    iput-object p2, p0, Lcom/facebook/Settings$2$1;->val$response:Lcom/facebook/Response;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/Settings$2$1;->this$0:Lcom/facebook/Settings$2;

    #@2
    iget-object v0, v0, Lcom/facebook/Settings$2;->val$callback:Lcom/facebook/Request$Callback;

    #@4
    iget-object v1, p0, Lcom/facebook/Settings$2$1;->val$response:Lcom/facebook/Response;

    #@6
    invoke-interface {v0, v1}, Lcom/facebook/Request$Callback;->onCompleted(Lcom/facebook/Response;)V

    #@9
    return-void
.end method
