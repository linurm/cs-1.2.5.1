.class Lcom/apportable/iab/IabHelper$4$2;
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
    iput-object p1, p0, Lcom/apportable/iab/IabHelper$4$2;->this$1:Lcom/apportable/iab/IabHelper$4;

    #@2
    iput-object p2, p0, Lcom/apportable/iab/IabHelper$4$2;->val$results:Ljava/util/List;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/apportable/iab/IabHelper$4$2;->this$1:Lcom/apportable/iab/IabHelper$4;

    #@2
    iget-object v0, v0, Lcom/apportable/iab/IabHelper$4;->val$multiListener:Lcom/apportable/iab/IabHelper$OnConsumeMultiFinishedListener;

    #@4
    iget-object v1, p0, Lcom/apportable/iab/IabHelper$4$2;->this$1:Lcom/apportable/iab/IabHelper$4;

    #@6
    iget-object v1, v1, Lcom/apportable/iab/IabHelper$4;->val$purchases:Ljava/util/List;

    #@8
    iget-object v2, p0, Lcom/apportable/iab/IabHelper$4$2;->val$results:Ljava/util/List;

    #@a
    invoke-interface {v0, v1, v2}, Lcom/apportable/iab/IabHelper$OnConsumeMultiFinishedListener;->onConsumeMultiFinished(Ljava/util/List;Ljava/util/List;)V

    #@d
    return-void
.end method
