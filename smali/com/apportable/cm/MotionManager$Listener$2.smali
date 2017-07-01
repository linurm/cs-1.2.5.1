.class Lcom/apportable/cm/MotionManager$Listener$2;
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

.field final synthetic val$gyroVector:[F


# direct methods
.method constructor <init>(Lcom/apportable/cm/MotionManager$Listener;[F)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/cm/MotionManager$Listener$2;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    #@2
    iput-object p2, p0, Lcom/apportable/cm/MotionManager$Listener$2;->val$gyroVector:[F

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    #@0
    const/4 v8, 0x2

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    iget-object v0, p0, Lcom/apportable/cm/MotionManager$Listener$2;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    #@5
    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v0}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    #@8
    move-result-object v0

    #@9
    iget-object v1, p0, Lcom/apportable/cm/MotionManager$Listener$2;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    #@b
    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v1}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    #@e
    move-result-object v1

    #@f
    # getter for: Lcom/apportable/cm/MotionManager;->mObject:I
    invoke-static {v1}, Lcom/apportable/cm/MotionManager;->access$800(Lcom/apportable/cm/MotionManager;)I

    #@12
    move-result v1

    #@13
    iget-object v2, p0, Lcom/apportable/cm/MotionManager$Listener$2;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    #@15
    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mDispatchType:I
    invoke-static {v2}, Lcom/apportable/cm/MotionManager$Listener;->access$900(Lcom/apportable/cm/MotionManager$Listener;)I

    #@18
    move-result v2

    #@19
    iget-object v3, p0, Lcom/apportable/cm/MotionManager$Listener$2;->val$gyroVector:[F

    #@1b
    aget v3, v3, v6

    #@1d
    iget-object v4, p0, Lcom/apportable/cm/MotionManager$Listener$2;->val$gyroVector:[F

    #@1f
    aget v4, v4, v7

    #@21
    iget-object v5, p0, Lcom/apportable/cm/MotionManager$Listener$2;->val$gyroVector:[F

    #@23
    aget v5, v5, v8

    #@25
    # invokes: Lcom/apportable/cm/MotionManager;->gyroscope(IIFFF)V
    invoke-static/range {v0 .. v5}, Lcom/apportable/cm/MotionManager;->access$1100(Lcom/apportable/cm/MotionManager;IIFFF)V

    #@28
    iget-object v0, p0, Lcom/apportable/cm/MotionManager$Listener$2;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    #@2a
    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v0}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    #@2d
    move-result-object v0

    #@2e
    iget-object v1, p0, Lcom/apportable/cm/MotionManager$Listener$2;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    #@30
    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v1}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    #@33
    move-result-object v1

    #@34
    # getter for: Lcom/apportable/cm/MotionManager;->mObject:I
    invoke-static {v1}, Lcom/apportable/cm/MotionManager;->access$800(Lcom/apportable/cm/MotionManager;)I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x4

    #@39
    iget-object v3, p0, Lcom/apportable/cm/MotionManager$Listener$2;->val$gyroVector:[F

    #@3b
    aget v3, v3, v6

    #@3d
    iget-object v4, p0, Lcom/apportable/cm/MotionManager$Listener$2;->val$gyroVector:[F

    #@3f
    aget v4, v4, v7

    #@41
    iget-object v5, p0, Lcom/apportable/cm/MotionManager$Listener$2;->val$gyroVector:[F

    #@43
    aget v5, v5, v8

    #@45
    # invokes: Lcom/apportable/cm/MotionManager;->orientation(IIFFF)V
    invoke-static/range {v0 .. v5}, Lcom/apportable/cm/MotionManager;->access$1200(Lcom/apportable/cm/MotionManager;IIFFF)V

    #@48
    return-void
.end method
