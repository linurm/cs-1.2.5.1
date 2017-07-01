.class Lcom/apportable/ui/Device$1;
.super Lcom/apportable/ApportableOrientationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/Device;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastEvent:J

.field private mCurrentOrientation:I

.field final synthetic this$0:Lcom/apportable/ui/Device;


# direct methods
.method constructor <init>(Lcom/apportable/ui/Device;Landroid/content/Context;)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/apportable/ui/Device$1;->this$0:Lcom/apportable/ui/Device;

    #@2
    invoke-direct {p0, p2}, Lcom/apportable/ApportableOrientationEventListener;-><init>(Landroid/content/Context;)V

    #@5
    const/4 v0, -0x2

    #@6
    iput v0, p0, Lcom/apportable/ui/Device$1;->mCurrentOrientation:I

    #@8
    const-wide/16 v0, -0x1

    #@a
    iput-wide v0, p0, Lcom/apportable/ui/Device$1;->lastEvent:J

    #@c
    return-void
.end method


# virtual methods
.method public onOrientationChangedWithCompatibilityAdjustments(I)V
    .registers 8

    #@0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    iget v2, p0, Lcom/apportable/ui/Device$1;->mCurrentOrientation:I

    #@6
    if-eq p1, v2, :cond_29

    #@8
    iget-object v2, p0, Lcom/apportable/ui/Device$1;->this$0:Lcom/apportable/ui/Device;

    #@a
    # getter for: Lcom/apportable/ui/Device;->mObject:I
    invoke-static {v2}, Lcom/apportable/ui/Device;->access$000(Lcom/apportable/ui/Device;)I

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_29

    #@10
    iget-wide v2, p0, Lcom/apportable/ui/Device$1;->lastEvent:J

    #@12
    sub-long v2, v0, v2

    #@14
    const-wide/16 v4, 0x190

    #@16
    cmp-long v2, v2, v4

    #@18
    if-lez v2, :cond_29

    #@1a
    iput-wide v0, p0, Lcom/apportable/ui/Device$1;->lastEvent:J

    #@1c
    iput p1, p0, Lcom/apportable/ui/Device$1;->mCurrentOrientation:I

    #@1e
    iget-object v0, p0, Lcom/apportable/ui/Device$1;->this$0:Lcom/apportable/ui/Device;

    #@20
    iget-object v1, p0, Lcom/apportable/ui/Device$1;->this$0:Lcom/apportable/ui/Device;

    #@22
    # getter for: Lcom/apportable/ui/Device;->mObject:I
    invoke-static {v1}, Lcom/apportable/ui/Device;->access$000(Lcom/apportable/ui/Device;)I

    #@25
    move-result v1

    #@26
    # invokes: Lcom/apportable/ui/Device;->nativeOnOrientationChanged(II)V
    invoke-static {v0, v1, p1}, Lcom/apportable/ui/Device;->access$100(Lcom/apportable/ui/Device;II)V

    #@29
    :cond_29
    return-void
.end method
