.class Lcom/apportable/cm/MotionManager$Listener$1;
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

.field final synthetic val$event:Landroid/hardware/SensorEvent;


# direct methods
.method constructor <init>(Lcom/apportable/cm/MotionManager$Listener;Landroid/hardware/SensorEvent;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/cm/MotionManager$Listener$1;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    #@2
    iput-object p2, p0, Lcom/apportable/cm/MotionManager$Listener$1;->val$event:Landroid/hardware/SensorEvent;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    const v9, 0x411cf5c3    # 9.81f

    #@5
    const/high16 v8, 0x40800000    # 4.0f

    #@7
    move v3, v4

    #@8
    move v0, v2

    #@9
    move v1, v2

    #@a
    :goto_a
    const/4 v5, 0x4

    #@b
    if-ge v3, v5, :cond_29

    #@d
    # getter for: Lcom/apportable/cm/MotionManager;->dataReady:Z
    invoke-static {}, Lcom/apportable/cm/MotionManager;->access$400()Z

    #@10
    move-result v5

    #@11
    if-nez v5, :cond_6d

    #@13
    # getter for: Lcom/apportable/cm/MotionManager;->pastX:[F
    invoke-static {}, Lcom/apportable/cm/MotionManager;->access$000()[F

    #@16
    move-result-object v0

    #@17
    aget v0, v0, v4

    #@19
    mul-float v1, v8, v0

    #@1b
    # getter for: Lcom/apportable/cm/MotionManager;->pastY:[F
    invoke-static {}, Lcom/apportable/cm/MotionManager;->access$200()[F

    #@1e
    move-result-object v0

    #@1f
    aget v0, v0, v4

    #@21
    mul-float/2addr v0, v8

    #@22
    # getter for: Lcom/apportable/cm/MotionManager;->pastZ:[F
    invoke-static {}, Lcom/apportable/cm/MotionManager;->access$300()[F

    #@25
    move-result-object v2

    #@26
    aget v2, v2, v4

    #@28
    mul-float/2addr v2, v8

    #@29
    :cond_29
    div-float/2addr v1, v8

    #@2a
    div-float/2addr v0, v8

    #@2b
    div-float/2addr v2, v8

    #@2c
    iget-object v3, p0, Lcom/apportable/cm/MotionManager$Listener$1;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    #@2e
    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v3}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    #@31
    move-result-object v3

    #@32
    # getter for: Lcom/apportable/cm/MotionManager;->isLandscapeDevice:Z
    invoke-static {v3}, Lcom/apportable/cm/MotionManager;->access$600(Lcom/apportable/cm/MotionManager;)Z

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_85

    #@38
    div-float v4, v1, v9

    #@3a
    neg-float v0, v0

    #@3b
    div-float v3, v0, v9

    #@3d
    neg-float v0, v2

    #@3e
    div-float v5, v0, v9

    #@40
    :goto_40
    iget-object v0, p0, Lcom/apportable/cm/MotionManager$Listener$1;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    #@42
    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v0}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    #@45
    move-result-object v1

    #@46
    iget-object v0, p0, Lcom/apportable/cm/MotionManager$Listener$1;->val$event:Landroid/hardware/SensorEvent;

    #@48
    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    #@4a
    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    #@4d
    move-result-object v0

    #@4e
    check-cast v0, [F

    #@50
    # setter for: Lcom/apportable/cm/MotionManager;->mGravity:[F
    invoke-static {v1, v0}, Lcom/apportable/cm/MotionManager;->access$702(Lcom/apportable/cm/MotionManager;[F)[F

    #@53
    iget-object v0, p0, Lcom/apportable/cm/MotionManager$Listener$1;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    #@55
    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v0}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    #@58
    move-result-object v0

    #@59
    iget-object v1, p0, Lcom/apportable/cm/MotionManager$Listener$1;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    #@5b
    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v1}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    #@5e
    move-result-object v1

    #@5f
    # getter for: Lcom/apportable/cm/MotionManager;->mObject:I
    invoke-static {v1}, Lcom/apportable/cm/MotionManager;->access$800(Lcom/apportable/cm/MotionManager;)I

    #@62
    move-result v1

    #@63
    iget-object v2, p0, Lcom/apportable/cm/MotionManager$Listener$1;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    #@65
    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mDispatchType:I
    invoke-static {v2}, Lcom/apportable/cm/MotionManager$Listener;->access$900(Lcom/apportable/cm/MotionManager$Listener;)I

    #@68
    move-result v2

    #@69
    # invokes: Lcom/apportable/cm/MotionManager;->acceleration(IIFFF)V
    invoke-static/range {v0 .. v5}, Lcom/apportable/cm/MotionManager;->access$1000(Lcom/apportable/cm/MotionManager;IIFFF)V

    #@6c
    return-void

    #@6d
    :cond_6d
    # getter for: Lcom/apportable/cm/MotionManager;->pastX:[F
    invoke-static {}, Lcom/apportable/cm/MotionManager;->access$000()[F

    #@70
    move-result-object v5

    #@71
    aget v5, v5, v3

    #@73
    # getter for: Lcom/apportable/cm/MotionManager;->pastY:[F
    invoke-static {}, Lcom/apportable/cm/MotionManager;->access$200()[F

    #@76
    move-result-object v6

    #@77
    aget v6, v6, v3

    #@79
    # getter for: Lcom/apportable/cm/MotionManager;->pastZ:[F
    invoke-static {}, Lcom/apportable/cm/MotionManager;->access$300()[F

    #@7c
    move-result-object v7

    #@7d
    aget v7, v7, v3

    #@7f
    add-int/lit8 v3, v3, 0x1

    #@81
    add-float/2addr v2, v7

    #@82
    add-float/2addr v0, v6

    #@83
    add-float/2addr v1, v5

    #@84
    goto :goto_a

    #@85
    :cond_85
    neg-float v1, v1

    #@86
    div-float v3, v1, v9

    #@88
    neg-float v0, v0

    #@89
    div-float v4, v0, v9

    #@8b
    neg-float v0, v2

    #@8c
    div-float v5, v0, v9

    #@8e
    goto :goto_40
.end method
