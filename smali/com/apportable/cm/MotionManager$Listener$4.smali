.class Lcom/apportable/cm/MotionManager$Listener$4;
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

.field final synthetic val$rotationVector:[F


# direct methods
.method constructor <init>(Lcom/apportable/cm/MotionManager$Listener;[F)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/cm/MotionManager$Listener$4;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    #@2
    iput-object p2, p0, Lcom/apportable/cm/MotionManager$Listener$4;->val$rotationVector:[F

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    #@0
    const/4 v10, 0x4

    #@1
    const/4 v9, 0x3

    #@2
    const/4 v8, 0x2

    #@3
    const/4 v7, 0x1

    #@4
    const/4 v6, 0x0

    #@5
    new-array v0, v10, [F

    #@7
    const/16 v0, 0x9

    #@9
    new-array v11, v0, [F

    #@b
    const/16 v0, 0x9

    #@d
    new-array v0, v0, [F

    #@f
    new-array v0, v9, [F

    #@11
    iget-object v1, p0, Lcom/apportable/cm/MotionManager$Listener$4;->val$rotationVector:[F

    #@13
    invoke-static {v11, v1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    #@16
    invoke-static {v11, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    #@19
    iget-object v0, p0, Lcom/apportable/cm/MotionManager$Listener$4;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    #@1b
    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v0}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    #@1e
    move-result-object v0

    #@1f
    iget-object v1, p0, Lcom/apportable/cm/MotionManager$Listener$4;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    #@21
    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v1}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    #@24
    move-result-object v1

    #@25
    # getter for: Lcom/apportable/cm/MotionManager;->mObject:I
    invoke-static {v1}, Lcom/apportable/cm/MotionManager;->access$800(Lcom/apportable/cm/MotionManager;)I

    #@28
    move-result v1

    #@29
    iget-object v2, p0, Lcom/apportable/cm/MotionManager$Listener$4;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    #@2b
    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mDispatchType:I
    invoke-static {v2}, Lcom/apportable/cm/MotionManager$Listener;->access$900(Lcom/apportable/cm/MotionManager$Listener;)I

    #@2e
    move-result v2

    #@2f
    iget-object v3, p0, Lcom/apportable/cm/MotionManager$Listener$4;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    #@31
    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v3}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    #@34
    move-result-object v3

    #@35
    # getter for: Lcom/apportable/cm/MotionManager;->mGravity:[F
    invoke-static {v3}, Lcom/apportable/cm/MotionManager;->access$700(Lcom/apportable/cm/MotionManager;)[F

    #@38
    move-result-object v3

    #@39
    aget v3, v3, v6

    #@3b
    iget-object v4, p0, Lcom/apportable/cm/MotionManager$Listener$4;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    #@3d
    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v4}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    #@40
    move-result-object v4

    #@41
    # getter for: Lcom/apportable/cm/MotionManager;->mGravity:[F
    invoke-static {v4}, Lcom/apportable/cm/MotionManager;->access$700(Lcom/apportable/cm/MotionManager;)[F

    #@44
    move-result-object v4

    #@45
    aget v4, v4, v7

    #@47
    iget-object v5, p0, Lcom/apportable/cm/MotionManager$Listener$4;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    #@49
    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v5}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    #@4c
    move-result-object v5

    #@4d
    # getter for: Lcom/apportable/cm/MotionManager;->mGravity:[F
    invoke-static {v5}, Lcom/apportable/cm/MotionManager;->access$700(Lcom/apportable/cm/MotionManager;)[F

    #@50
    move-result-object v5

    #@51
    aget v5, v5, v8

    #@53
    # invokes: Lcom/apportable/cm/MotionManager;->gravity(IIFFF)V
    invoke-static/range {v0 .. v5}, Lcom/apportable/cm/MotionManager;->access$1500(Lcom/apportable/cm/MotionManager;IIFFF)V

    #@56
    iget-object v0, p0, Lcom/apportable/cm/MotionManager$Listener$4;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    #@58
    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v0}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    #@5b
    move-result-object v0

    #@5c
    iget-object v1, p0, Lcom/apportable/cm/MotionManager$Listener$4;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    #@5e
    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v1}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    #@61
    move-result-object v1

    #@62
    # getter for: Lcom/apportable/cm/MotionManager;->mObject:I
    invoke-static {v1}, Lcom/apportable/cm/MotionManager;->access$800(Lcom/apportable/cm/MotionManager;)I

    #@65
    move-result v1

    #@66
    iget-object v2, p0, Lcom/apportable/cm/MotionManager$Listener$4;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    #@68
    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mDispatchType:I
    invoke-static {v2}, Lcom/apportable/cm/MotionManager$Listener;->access$900(Lcom/apportable/cm/MotionManager$Listener;)I

    #@6b
    move-result v2

    #@6c
    aget v3, v11, v6

    #@6e
    aget v4, v11, v7

    #@70
    aget v5, v11, v8

    #@72
    aget v6, v11, v9

    #@74
    aget v7, v11, v10

    #@76
    const/4 v8, 0x5

    #@77
    aget v8, v11, v8

    #@79
    const/4 v9, 0x6

    #@7a
    aget v9, v11, v9

    #@7c
    const/4 v10, 0x7

    #@7d
    aget v10, v11, v10

    #@7f
    const/16 v12, 0x8

    #@81
    aget v11, v11, v12

    #@83
    # invokes: Lcom/apportable/cm/MotionManager;->rotation(IIFFFFFFFFF)V
    invoke-static/range {v0 .. v11}, Lcom/apportable/cm/MotionManager;->access$1600(Lcom/apportable/cm/MotionManager;IIFFFFFFFFF)V

    #@86
    return-void
.end method
