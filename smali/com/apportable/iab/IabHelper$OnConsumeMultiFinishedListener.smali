.class public interface abstract Lcom/apportable/iab/IabHelper$OnConsumeMultiFinishedListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/iab/IabHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnConsumeMultiFinishedListener"
.end annotation


# virtual methods
.method public abstract onConsumeMultiFinished(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/apportable/iab/Purchase;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/apportable/iab/IabResult;",
            ">;)V"
        }
    .end annotation
.end method
