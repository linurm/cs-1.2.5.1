.class final Lcom/facebook/AppEventsLogger$1;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AppEventsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/facebook/AppEventsLogger$EventSuppression;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    #@3
    const-string v0, "fb_mobile_activate_app"

    #@5
    new-instance v1, Lcom/facebook/AppEventsLogger$EventSuppression;

    #@7
    const/16 v2, 0x12c

    #@9
    sget-object v3, Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;->RESET_TIMEOUT_WHEN_LOG_ATTEMPTED:Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    #@b
    invoke-direct {v1, v2, v3}, Lcom/facebook/AppEventsLogger$EventSuppression;-><init>(ILcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;)V

    #@e
    invoke-virtual {p0, v0, v1}, Lcom/facebook/AppEventsLogger$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    return-void
.end method
