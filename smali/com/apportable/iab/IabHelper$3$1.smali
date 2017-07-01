.class Lcom/apportable/iab/IabHelper$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/iab/IabHelper$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/iab/IabHelper$3;

.field final synthetic val$inv_f:Lcom/apportable/iab/Inventory;

.field final synthetic val$result_f:Lcom/apportable/iab/IabResult;


# direct methods
.method constructor <init>(Lcom/apportable/iab/IabHelper$3;Lcom/apportable/iab/IabResult;Lcom/apportable/iab/Inventory;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/apportable/iab/IabHelper$3$1;->this$1:Lcom/apportable/iab/IabHelper$3;

    #@2
    iput-object p2, p0, Lcom/apportable/iab/IabHelper$3$1;->val$result_f:Lcom/apportable/iab/IabResult;

    #@4
    iput-object p3, p0, Lcom/apportable/iab/IabHelper$3$1;->val$inv_f:Lcom/apportable/iab/Inventory;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/apportable/iab/IabHelper$3$1;->this$1:Lcom/apportable/iab/IabHelper$3;

    #@2
    iget-object v0, v0, Lcom/apportable/iab/IabHelper$3;->val$listener:Lcom/apportable/iab/IabHelper$QueryInventoryFinishedListener;

    #@4
    iget-object v1, p0, Lcom/apportable/iab/IabHelper$3$1;->val$result_f:Lcom/apportable/iab/IabResult;

    #@6
    iget-object v2, p0, Lcom/apportable/iab/IabHelper$3$1;->val$inv_f:Lcom/apportable/iab/Inventory;

    #@8
    invoke-interface {v0, v1, v2}, Lcom/apportable/iab/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/apportable/iab/IabResult;Lcom/apportable/iab/Inventory;)V

    #@b
    return-void
.end method
