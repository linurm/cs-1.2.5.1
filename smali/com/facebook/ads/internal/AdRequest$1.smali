.class Lcom/facebook/ads/internal/AdRequest$1;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/AdRequest;->executeAsync()Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/ads/internal/AdRequest;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/AdRequest;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/ads/internal/AdRequest$1;->this$0:Lcom/facebook/ads/internal/AdRequest;

    #@2
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequest$1;->this$0:Lcom/facebook/ads/internal/AdRequest;

    #@2
    invoke-virtual {v0}, Lcom/facebook/ads/internal/AdRequest;->executeConnectionAndWait()Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    #@0
    check-cast p1, [Ljava/lang/Void;

    #@2
    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/AdRequest$1;->doInBackground([Ljava/lang/Void;)Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected onPostExecute(Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;)V
    .registers 4

    #@0
    if-nez p1, :cond_e

    #@2
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequest$1;->this$0:Lcom/facebook/ads/internal/AdRequest;

    #@4
    # getter for: Lcom/facebook/ads/internal/AdRequest;->callback:Lcom/facebook/ads/internal/AdRequest$Callback;
    invoke-static {v0}, Lcom/facebook/ads/internal/AdRequest;->access$000(Lcom/facebook/ads/internal/AdRequest;)Lcom/facebook/ads/internal/AdRequest$Callback;

    #@7
    move-result-object v0

    #@8
    sget-object v1, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    #@a
    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/AdRequest$Callback;->onError(Lcom/facebook/ads/AdError;)V

    #@d
    :goto_d
    return-void

    #@e
    :cond_e
    iget-object v0, p1, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;->error:Lcom/facebook/ads/AdError;

    #@10
    if-eqz v0, :cond_1e

    #@12
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequest$1;->this$0:Lcom/facebook/ads/internal/AdRequest;

    #@14
    # getter for: Lcom/facebook/ads/internal/AdRequest;->callback:Lcom/facebook/ads/internal/AdRequest$Callback;
    invoke-static {v0}, Lcom/facebook/ads/internal/AdRequest;->access$000(Lcom/facebook/ads/internal/AdRequest;)Lcom/facebook/ads/internal/AdRequest$Callback;

    #@17
    move-result-object v0

    #@18
    iget-object v1, p1, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;->error:Lcom/facebook/ads/AdError;

    #@1a
    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/AdRequest$Callback;->onError(Lcom/facebook/ads/AdError;)V

    #@1d
    goto :goto_d

    #@1e
    :cond_1e
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequest$1;->this$0:Lcom/facebook/ads/internal/AdRequest;

    #@20
    # getter for: Lcom/facebook/ads/internal/AdRequest;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/facebook/ads/internal/AdRequest;->access$100(Lcom/facebook/ads/internal/AdRequest;)Landroid/content/Context;

    #@23
    move-result-object v0

    #@24
    iget-object v1, p1, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;->body:Lorg/json/JSONObject;

    #@26
    invoke-static {v0, v1}, Lcom/facebook/ads/internal/AdResponse;->parseResponse(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/facebook/ads/internal/AdResponse;

    #@29
    move-result-object v0

    #@2a
    iget-object v1, p0, Lcom/facebook/ads/internal/AdRequest$1;->this$0:Lcom/facebook/ads/internal/AdRequest;

    #@2c
    # getter for: Lcom/facebook/ads/internal/AdRequest;->callback:Lcom/facebook/ads/internal/AdRequest$Callback;
    invoke-static {v1}, Lcom/facebook/ads/internal/AdRequest;->access$000(Lcom/facebook/ads/internal/AdRequest;)Lcom/facebook/ads/internal/AdRequest$Callback;

    #@2f
    move-result-object v1

    #@30
    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/AdRequest$Callback;->onCompleted(Lcom/facebook/ads/internal/AdResponse;)V

    #@33
    goto :goto_d
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    #@0
    check-cast p1, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;

    #@2
    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/AdRequest$1;->onPostExecute(Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;)V

    #@5
    return-void
.end method
