.class Lcom/apportable/iab/IabHelper$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/iab/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/apportable/iab/IabHelper$OnConsumeFinishedListener;Lcom/apportable/iab/IabHelper$OnConsumeMultiFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/iab/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$multiListener:Lcom/apportable/iab/IabHelper$OnConsumeMultiFinishedListener;

.field final synthetic val$purchases:Ljava/util/List;

.field final synthetic val$singleListener:Lcom/apportable/iab/IabHelper$OnConsumeFinishedListener;


# direct methods
.method constructor <init>(Lcom/apportable/iab/IabHelper;Ljava/util/List;Lcom/apportable/iab/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/apportable/iab/IabHelper$OnConsumeMultiFinishedListener;)V
    .registers 6

    #@0
    iput-object p1, p0, Lcom/apportable/iab/IabHelper$4;->this$0:Lcom/apportable/iab/IabHelper;

    #@2
    iput-object p2, p0, Lcom/apportable/iab/IabHelper$4;->val$purchases:Ljava/util/List;

    #@4
    iput-object p3, p0, Lcom/apportable/iab/IabHelper$4;->val$singleListener:Lcom/apportable/iab/IabHelper$OnConsumeFinishedListener;

    #@6
    iput-object p4, p0, Lcom/apportable/iab/IabHelper$4;->val$handler:Landroid/os/Handler;

    #@8
    iput-object p5, p0, Lcom/apportable/iab/IabHelper$4;->val$multiListener:Lcom/apportable/iab/IabHelper$OnConsumeMultiFinishedListener;

    #@a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    #@0
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    iget-object v0, p0, Lcom/apportable/iab/IabHelper$4;->val$purchases:Ljava/util/List;

    #@7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v2

    #@b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_46

    #@11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/apportable/iab/Purchase;

    #@17
    :try_start_17
    iget-object v3, p0, Lcom/apportable/iab/IabHelper$4;->this$0:Lcom/apportable/iab/IabHelper;

    #@19
    invoke-virtual {v3, v0}, Lcom/apportable/iab/IabHelper;->consume(Lcom/apportable/iab/Purchase;)V

    #@1c
    new-instance v3, Lcom/apportable/iab/IabResult;

    #@1e
    new-instance v4, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const/4 v5, 0x0

    #@24
    const-string v6, "Successful consume of sku "

    #@26
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v0}, Lcom/apportable/iab/Purchase;->getSku()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    invoke-direct {v3, v5, v0}, Lcom/apportable/iab/IabResult;-><init>(ILjava/lang/String;)V

    #@39
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Lcom/apportable/iab/IabException; {:try_start_17 .. :try_end_3c} :catch_3d

    #@3c
    goto :goto_b

    #@3d
    :catch_3d
    move-exception v0

    #@3e
    invoke-virtual {v0}, Lcom/apportable/iab/IabException;->getResult()Lcom/apportable/iab/IabResult;

    #@41
    move-result-object v0

    #@42
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@45
    goto :goto_b

    #@46
    :cond_46
    iget-object v0, p0, Lcom/apportable/iab/IabHelper$4;->this$0:Lcom/apportable/iab/IabHelper;

    #@48
    invoke-virtual {v0}, Lcom/apportable/iab/IabHelper;->flagEndAsync()V

    #@4b
    iget-object v0, p0, Lcom/apportable/iab/IabHelper$4;->val$singleListener:Lcom/apportable/iab/IabHelper$OnConsumeFinishedListener;

    #@4d
    if-eqz v0, :cond_59

    #@4f
    iget-object v0, p0, Lcom/apportable/iab/IabHelper$4;->val$handler:Landroid/os/Handler;

    #@51
    new-instance v2, Lcom/apportable/iab/IabHelper$4$1;

    #@53
    invoke-direct {v2, p0, v1}, Lcom/apportable/iab/IabHelper$4$1;-><init>(Lcom/apportable/iab/IabHelper$4;Ljava/util/List;)V

    #@56
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@59
    :cond_59
    iget-object v0, p0, Lcom/apportable/iab/IabHelper$4;->val$multiListener:Lcom/apportable/iab/IabHelper$OnConsumeMultiFinishedListener;

    #@5b
    if-eqz v0, :cond_67

    #@5d
    iget-object v0, p0, Lcom/apportable/iab/IabHelper$4;->val$handler:Landroid/os/Handler;

    #@5f
    new-instance v2, Lcom/apportable/iab/IabHelper$4$2;

    #@61
    invoke-direct {v2, p0, v1}, Lcom/apportable/iab/IabHelper$4$2;-><init>(Lcom/apportable/iab/IabHelper$4;Ljava/util/List;)V

    #@64
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@67
    :cond_67
    return-void
.end method
