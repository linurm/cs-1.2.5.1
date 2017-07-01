.class Lcom/apportable/cm/MotionManager$Listener$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/cm/MotionManager$Listener;->onSensorChanged(Landroid/hardware/SensorEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/cm/MotionManager$Listener;


# direct methods
.method constructor <init>(Lcom/apportable/cm/MotionManager$Listener;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/cm/MotionManager$Listener$3;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    #@0
    iget-object v0, p0, Lcom/apportable/cm/MotionManager$Listener$3;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    #@2
    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v0}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/apportable/cm/MotionManager$Listener$3;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    #@8
    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v1}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    #@b
    move-result-object v1

    #@c
    # getter for: Lcom/apportable/cm/MotionManager;->mObject:I
    invoke-static {v1}, Lcom/apportable/cm/MotionManager;->access$800(Lcom/apportable/cm/MotionManager;)I

    #@f
    move-result v1

    #@10
    iget-object v2, p0, Lcom/apportable/cm/MotionManager$Listener$3;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    #@12
    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mDispatchType:I
    invoke-static {v2}, Lcom/apportable/cm/MotionManager$Listener;->access$900(Lcom/apportable/cm/MotionManager$Listener;)I

    #@15
    move-result v2

    #@16
    iget-object v3, p0, Lcom/apportable/cm/MotionManager$Listener$3;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    #@18
    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v3}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    #@1b
    move-result-object v3

    #@1c
    # getter for: Lcom/apportable/cm/MotionManager;->mGeomagnetic:[F
    invoke-static {v3}, Lcom/apportable/cm/MotionManager;->access$1300(Lcom/apportable/cm/MotionManager;)[F

    #@1f
    move-result-object v3

    #@20
    const/4 v4, 0x0

    #@21
    aget v3, v3, v4

    #@23
    iget-object v4, p0, Lcom/apportable/cm/MotionManager$Listener$3;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    #@25
    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v4}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    #@28
    move-result-object v4

    #@29
    # getter for: Lcom/apportable/cm/MotionManager;->mGeomagnetic:[F
    invoke-static {v4}, Lcom/apportable/cm/MotionManager;->access$1300(Lcom/apportable/cm/MotionManager;)[F

    #@2c
    move-result-object v4

    #@2d
    const/4 v5, 0x1

    #@2e
    aget v4, v4, v5

    #@30
    iget-object v5, p0, Lcom/apportable/cm/MotionManager$Listener$3;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    #@32
    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v5}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    #@35
    move-result-object v5

    #@36
    # getter for: Lcom/apportable/cm/MotionManager;->mGeomagnetic:[F
    invoke-static {v5}, Lcom/apportable/cm/MotionManager;->access$1300(Lcom/apportable/cm/MotionManager;)[F

    #@39
    move-result-object v5

    #@3a
    const/4 v6, 0x2

    #@3b
    aget v5, v5, v6

    #@3d
    # invokes: Lcom/apportable/cm/MotionManager;->magneticField(IIFFF)V
    invoke-static/range {v0 .. v5}, Lcom/apportable/cm/MotionManager;->access$1400(Lcom/apportable/cm/MotionManager;IIFFF)V

    #@40
    return-void
.end method
