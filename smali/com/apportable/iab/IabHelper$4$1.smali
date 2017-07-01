.class Lcom/apportable/iab/IabHelper$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/iab/IabHelper$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/iab/IabHelper$4;

.field final synthetic val$results:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/apportable/iab/IabHelper$4;Ljava/util/List;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/iab/IabHelper$4$1;->this$1:Lcom/apportable/iab/IabHelper$4;

    #@2
    iput-object p2, p0, Lcom/apportable/iab/IabHelper$4$1;->val$results:Ljava/util/List;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    #@0
    const/4 v3, 0x0

    #@1
    iget-object v0, p0, Lcom/apportable/iab/IabHelper$4$1;->this$1:Lcom/apportable/iab/IabHelper$4;

    #@3
    iget-object v2, v0, Lcom/apportable/iab/IabHelper$4;->val$singleListener:Lcom/apportable/iab/IabHelper$OnConsumeFinishedListener;

    #@5
    iget-object v0, p0, Lcom/apportable/iab/IabHelper$4$1;->this$1:Lcom/apportable/iab/IabHelper$4;

    #@7
    iget-object v0, v0, Lcom/apportable/iab/IabHelper$4;->val$purchases:Ljava/util/List;

    #@9
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/apportable/iab/Purchase;

    #@f
    iget-object v1, p0, Lcom/apportable/iab/IabHelper$4$1;->val$results:Ljava/util/List;

    #@11
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lcom/apportable/iab/IabResult;

    #@17
    invoke-interface {v2, v0, v1}, Lcom/apportable/iab/IabHelper$OnConsumeFinishedListener;->onConsumeFinished(Lcom/apportable/iab/Purchase;Lcom/apportable/iab/IabResult;)V

    #@1a
    return-void
.end method
