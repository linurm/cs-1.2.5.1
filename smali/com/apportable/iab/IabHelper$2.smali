.class Lcom/apportable/iab/IabHelper$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/iab/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/apportable/iab/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/iab/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/apportable/iab/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreSkus:Ljava/util/List;

.field final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/apportable/iab/IabHelper;ZLjava/util/List;Landroid/os/Handler;Lcom/apportable/iab/IabHelper$QueryInventoryFinishedListener;)V
    .registers 6

    #@0
    iput-object p1, p0, Lcom/apportable/iab/IabHelper$2;->this$0:Lcom/apportable/iab/IabHelper;

    #@2
    iput-boolean p2, p0, Lcom/apportable/iab/IabHelper$2;->val$querySkuDetails:Z

    #@4
    iput-object p3, p0, Lcom/apportable/iab/IabHelper$2;->val$moreSkus:Ljava/util/List;

    #@6
    iput-object p4, p0, Lcom/apportable/iab/IabHelper$2;->val$handler:Landroid/os/Handler;

    #@8
    iput-object p5, p0, Lcom/apportable/iab/IabHelper$2;->val$listener:Lcom/apportable/iab/IabHelper$QueryInventoryFinishedListener;

    #@a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    #@0
    new-instance v0, Lcom/apportable/iab/IabResult;

    #@2
    const/4 v1, 0x0

    #@3
    const-string v2, "Inventory refresh successful."

    #@5
    invoke-direct {v0, v1, v2}, Lcom/apportable/iab/IabResult;-><init>(ILjava/lang/String;)V

    #@8
    const/4 v1, 0x0

    #@9
    :try_start_9
    iget-object v2, p0, Lcom/apportable/iab/IabHelper$2;->this$0:Lcom/apportable/iab/IabHelper;

    #@b
    iget-boolean v3, p0, Lcom/apportable/iab/IabHelper$2;->val$querySkuDetails:Z

    #@d
    iget-object v4, p0, Lcom/apportable/iab/IabHelper$2;->val$moreSkus:Ljava/util/List;

    #@f
    invoke-virtual {v2, v3, v4}, Lcom/apportable/iab/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/apportable/iab/Inventory;
    :try_end_12
    .catch Lcom/apportable/iab/IabException; {:try_start_9 .. :try_end_12} :catch_23

    #@12
    move-result-object v1

    #@13
    :goto_13
    iget-object v2, p0, Lcom/apportable/iab/IabHelper$2;->this$0:Lcom/apportable/iab/IabHelper;

    #@15
    invoke-virtual {v2}, Lcom/apportable/iab/IabHelper;->flagEndAsync()V

    #@18
    iget-object v2, p0, Lcom/apportable/iab/IabHelper$2;->val$handler:Landroid/os/Handler;

    #@1a
    new-instance v3, Lcom/apportable/iab/IabHelper$2$1;

    #@1c
    invoke-direct {v3, p0, v0, v1}, Lcom/apportable/iab/IabHelper$2$1;-><init>(Lcom/apportable/iab/IabHelper$2;Lcom/apportable/iab/IabResult;Lcom/apportable/iab/Inventory;)V

    #@1f
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@22
    return-void

    #@23
    :catch_23
    move-exception v0

    #@24
    invoke-virtual {v0}, Lcom/apportable/iab/IabException;->getResult()Lcom/apportable/iab/IabResult;

    #@27
    move-result-object v0

    #@28
    goto :goto_13
.end method
