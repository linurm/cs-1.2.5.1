.class Lcom/facebook/RequestProgress$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/RequestProgress;->reportProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/RequestProgress;

.field final synthetic val$callbackCopy:Lcom/facebook/Request$OnProgressCallback;

.field final synthetic val$currentCopy:J

.field final synthetic val$maxProgressCopy:J


# direct methods
.method constructor <init>(Lcom/facebook/RequestProgress;Lcom/facebook/Request$OnProgressCallback;JJ)V
    .registers 8

    #@0
    iput-object p1, p0, Lcom/facebook/RequestProgress$1;->this$0:Lcom/facebook/RequestProgress;

    #@2
    iput-object p2, p0, Lcom/facebook/RequestProgress$1;->val$callbackCopy:Lcom/facebook/Request$OnProgressCallback;

    #@4
    iput-wide p3, p0, Lcom/facebook/RequestProgress$1;->val$currentCopy:J

    #@6
    iput-wide p5, p0, Lcom/facebook/RequestProgress$1;->val$maxProgressCopy:J

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/facebook/RequestProgress$1;->val$callbackCopy:Lcom/facebook/Request$OnProgressCallback;

    #@2
    iget-wide v2, p0, Lcom/facebook/RequestProgress$1;->val$currentCopy:J

    #@4
    iget-wide v4, p0, Lcom/facebook/RequestProgress$1;->val$maxProgressCopy:J

    #@6
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/facebook/Request$OnProgressCallback;->onProgress(JJ)V

    #@9
    return-void
.end method
