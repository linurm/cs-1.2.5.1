.class final Lcom/apportable/MPMetricsSupport$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/MPMetricsSupport;->getTrackingProperties()Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic val$superProperties:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/util/HashMap;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/MPMetricsSupport$1;->val$superProperties:Ljava/util/HashMap;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    #@0
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@3
    move-result-object v0

    #@4
    # invokes: Lcom/apportable/MPMetricsSupport;->getAdvertisingID(Lcom/apportable/activity/VerdeActivity;)Ljava/lang/String;
    invoke-static {v0}, Lcom/apportable/MPMetricsSupport;->access$000(Lcom/apportable/activity/VerdeActivity;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_11

    #@a
    iget-object v1, p0, Lcom/apportable/MPMetricsSupport$1;->val$superProperties:Ljava/util/HashMap;

    #@c
    const-string v2, "advertising_id"

    #@e
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    :cond_11
    return-void
.end method
