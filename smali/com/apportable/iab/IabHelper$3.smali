.class Lcom/apportable/iab/IabHelper$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/iab/IabHelper;->querySkuDetailsAsync(Ljava/util/List;Lcom/apportable/iab/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/iab/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/apportable/iab/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$skus:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/apportable/iab/IabHelper;Ljava/util/List;Landroid/os/Handler;Lcom/apportable/iab/IabHelper$QueryInventoryFinishedListener;)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/apportable/iab/IabHelper$3;->this$0:Lcom/apportable/iab/IabHelper;

    #@2
    iput-object p2, p0, Lcom/apportable/iab/IabHelper$3;->val$skus:Ljava/util/List;

    #@4
    iput-object p3, p0, Lcom/apportable/iab/IabHelper$3;->val$handler:Landroid/os/Handler;

    #@6
    iput-object p4, p0, Lcom/apportable/iab/IabHelper$3;->val$listener:Lcom/apportable/iab/IabHelper$QueryInventoryFinishedListener;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
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
    :try_start_8
    new-instance v1, Lcom/apportable/iab/Inventory;

    #@a
    invoke-direct {v1}, Lcom/apportable/iab/Inventory;-><init>()V

    #@d
    iget-object v2, p0, Lcom/apportable/iab/IabHelper$3;->this$0:Lcom/apportable/iab/IabHelper;

    #@f
    const-string v3, "inapp"

    #@11
    iget-object v4, p0, Lcom/apportable/iab/IabHelper$3;->val$skus:Ljava/util/List;

    #@13
    invoke-virtual {v2, v3, v1, v4}, Lcom/apportable/iab/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/apportable/iab/Inventory;Ljava/util/List;)I

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_42

    #@19
    new-instance v0, Lcom/apportable/iab/IabException;

    #@1b
    const-string v1, "Error refreshing inventory (querying prices of items)."

    #@1d
    invoke-direct {v0, v2, v1}, Lcom/apportable/iab/IabException;-><init>(ILjava/lang/String;)V

    #@20
    throw v0
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_21} :catch_21
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_21} :catch_5c
    .catch Lcom/apportable/iab/IabException; {:try_start_8 .. :try_end_21} :catch_2c

    #@21
    :catch_21
    move-exception v0

    #@22
    :try_start_22
    new-instance v1, Lcom/apportable/iab/IabException;

    #@24
    const/16 v2, -0x3e9

    #@26
    const-string v3, "Remote exception while refreshing inventory."

    #@28
    invoke-direct {v1, v2, v3, v0}, Lcom/apportable/iab/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    #@2b
    throw v1
    :try_end_2c
    .catch Lcom/apportable/iab/IabException; {:try_start_22 .. :try_end_2c} :catch_2c

    #@2c
    :catch_2c
    move-exception v0

    #@2d
    invoke-virtual {v0}, Lcom/apportable/iab/IabException;->getResult()Lcom/apportable/iab/IabResult;

    #@30
    move-result-object v0

    #@31
    const/4 v1, 0x0

    #@32
    :cond_32
    iget-object v2, p0, Lcom/apportable/iab/IabHelper$3;->this$0:Lcom/apportable/iab/IabHelper;

    #@34
    invoke-virtual {v2}, Lcom/apportable/iab/IabHelper;->flagEndAsync()V

    #@37
    iget-object v2, p0, Lcom/apportable/iab/IabHelper$3;->val$handler:Landroid/os/Handler;

    #@39
    new-instance v3, Lcom/apportable/iab/IabHelper$3$1;

    #@3b
    invoke-direct {v3, p0, v0, v1}, Lcom/apportable/iab/IabHelper$3$1;-><init>(Lcom/apportable/iab/IabHelper$3;Lcom/apportable/iab/IabResult;Lcom/apportable/iab/Inventory;)V

    #@3e
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@41
    return-void

    #@42
    :cond_42
    :try_start_42
    iget-object v2, p0, Lcom/apportable/iab/IabHelper$3;->this$0:Lcom/apportable/iab/IabHelper;

    #@44
    iget-boolean v2, v2, Lcom/apportable/iab/IabHelper;->mSubscriptionsSupported:Z

    #@46
    if-eqz v2, :cond_32

    #@48
    iget-object v2, p0, Lcom/apportable/iab/IabHelper$3;->this$0:Lcom/apportable/iab/IabHelper;

    #@4a
    const-string v3, "subs"

    #@4c
    iget-object v4, p0, Lcom/apportable/iab/IabHelper$3;->val$skus:Ljava/util/List;

    #@4e
    invoke-virtual {v2, v3, v1, v4}, Lcom/apportable/iab/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/apportable/iab/Inventory;Ljava/util/List;)I

    #@51
    move-result v2

    #@52
    if-eqz v2, :cond_32

    #@54
    new-instance v0, Lcom/apportable/iab/IabException;

    #@56
    const-string v1, "Error refreshing inventory (querying prices of subscriptions)."

    #@58
    invoke-direct {v0, v2, v1}, Lcom/apportable/iab/IabException;-><init>(ILjava/lang/String;)V

    #@5b
    throw v0
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_5c} :catch_21
    .catch Lorg/json/JSONException; {:try_start_42 .. :try_end_5c} :catch_5c
    .catch Lcom/apportable/iab/IabException; {:try_start_42 .. :try_end_5c} :catch_2c

    #@5c
    :catch_5c
    move-exception v0

    #@5d
    :try_start_5d
    new-instance v1, Lcom/apportable/iab/IabException;

    #@5f
    const/16 v2, -0x3ea

    #@61
    const-string v3, "Error parsing JSON response while refreshing inventory."

    #@63
    invoke-direct {v1, v2, v3, v0}, Lcom/apportable/iab/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    #@66
    throw v1
    :try_end_67
    .catch Lcom/apportable/iab/IabException; {:try_start_5d .. :try_end_67} :catch_2c
.end method
