.class Lcom/facebook/widget/GraphObjectPagingLoader$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/GraphObjectPagingLoader;->startLoading(Lcom/facebook/Request;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/GraphObjectPagingLoader;

.field final synthetic val$batch:Lcom/facebook/RequestBatch;


# direct methods
.method constructor <init>(Lcom/facebook/widget/GraphObjectPagingLoader;Lcom/facebook/RequestBatch;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectPagingLoader$3;->this$0:Lcom/facebook/widget/GraphObjectPagingLoader;

    #@2
    iput-object p2, p0, Lcom/facebook/widget/GraphObjectPagingLoader$3;->val$batch:Lcom/facebook/RequestBatch;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader$3;->val$batch:Lcom/facebook/RequestBatch;

    #@2
    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAsync(Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;

    #@5
    return-void
.end method
