.class Lcom/apportable/cm/MotionManager$Listener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/cm/MotionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Listener"
.end annotation


# static fields
.field private static final EPSILON:F = 0.01f

.field private static final NS2S:F = 1.0E-9f


# instance fields
.field private final deltaRotationVector:[F

.field private mDispatchType:I

.field private mManager:Lcom/apportable/cm/MotionManager;

.field private mRate:I

.field private mRegistered:Z

.field private mType:I

.field private timestamp:F


# direct methods
.method public constructor <init>(Lcom/apportable/cm/MotionManager;II)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x3

    #@4
    iput v0, p0, Lcom/apportable/cm/MotionManager$Listener;->mRate:I

    #@6
    const/4 v0, 0x4

    #@7
    new-array v0, v0, [F

    #@9
    iput-object v0, p0, Lcom/apportable/cm/MotionManager$Listener;->deltaRotationVector:[F

    #@b
    iput-object p1, p0, Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;

    #@d
    iput p3, p0, Lcom/apportable/cm/MotionManager$Listener;->mType:I

    #@f
    iput p2, p0, Lcom/apportable/cm/MotionManager$Listener;->mDispatchType:I

    #@11
    return-void
.end method

.method static synthetic access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;

    #@2
    return-object v0
.end method

.method static synthetic access$900(Lcom/apportable/cm/MotionManager$Listener;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/cm/MotionManager$Listener;->mDispatchType:I

    #@2
    return v0
.end method

.method private normalize(Landroid/hardware/SensorEvent;FFF)F
    .registers 7

    #@0
    const/high16 v0, 0x43b40000    # 360.0f

    #@2
    div-float v0, p2, v0

    #@4
    const v1, 0x40c90fdb

    #@7
    mul-float/2addr v0, v1

    #@8
    return v0
.end method


# virtual methods
.method public getRate()I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/cm/MotionManager$Listener;->mRate:I

    #@2
    return v0
.end method

.method public getType()I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/cm/MotionManager$Listener;->mType:I

    #@2
    return v0
.end method

.method public isRegistered()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/cm/MotionManager$Listener;->mRegistered:Z

    #@2
    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    #@0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 8

    #@0
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    iget v0, p0, Lcom/apportable/cm/MotionManager$Listener;->mType:I

    #@4
    sparse-switch v0, :sswitch_data_8c

    #@7
    :goto_7
    return-void

    #@8
    :sswitch_8
    # getter for: Lcom/apportable/cm/MotionManager;->pastX:[F
    invoke-static {}, Lcom/apportable/cm/MotionManager;->access$000()[F

    #@b
    move-result-object v0

    #@c
    # getter for: Lcom/apportable/cm/MotionManager;->currentSmooth:I
    invoke-static {}, Lcom/apportable/cm/MotionManager;->access$100()I

    #@f
    move-result v1

    #@10
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    #@12
    aget v2, v2, v4

    #@14
    aput v2, v0, v1

    #@16
    # getter for: Lcom/apportable/cm/MotionManager;->pastY:[F
    invoke-static {}, Lcom/apportable/cm/MotionManager;->access$200()[F

    #@19
    move-result-object v0

    #@1a
    # getter for: Lcom/apportable/cm/MotionManager;->currentSmooth:I
    invoke-static {}, Lcom/apportable/cm/MotionManager;->access$100()I

    #@1d
    move-result v1

    #@1e
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    #@20
    aget v2, v2, v5

    #@22
    aput v2, v0, v1

    #@24
    # getter for: Lcom/apportable/cm/MotionManager;->pastZ:[F
    invoke-static {}, Lcom/apportable/cm/MotionManager;->access$300()[F

    #@27
    move-result-object v0

    #@28
    # getter for: Lcom/apportable/cm/MotionManager;->currentSmooth:I
    invoke-static {}, Lcom/apportable/cm/MotionManager;->access$100()I

    #@2b
    move-result v1

    #@2c
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    #@2e
    const/4 v3, 0x2

    #@2f
    aget v2, v2, v3

    #@31
    aput v2, v0, v1

    #@33
    # operator++ for: Lcom/apportable/cm/MotionManager;->currentSmooth:I
    invoke-static {}, Lcom/apportable/cm/MotionManager;->access$108()I

    #@36
    # getter for: Lcom/apportable/cm/MotionManager;->currentSmooth:I
    invoke-static {}, Lcom/apportable/cm/MotionManager;->access$100()I

    #@39
    move-result v0

    #@3a
    const/4 v1, 0x4

    #@3b
    if-ne v0, v1, :cond_49

    #@3d
    # setter for: Lcom/apportable/cm/MotionManager;->currentSmooth:I
    invoke-static {v4}, Lcom/apportable/cm/MotionManager;->access$102(I)I

    #@40
    # getter for: Lcom/apportable/cm/MotionManager;->dataReady:Z
    invoke-static {}, Lcom/apportable/cm/MotionManager;->access$400()Z

    #@43
    move-result v0

    #@44
    if-nez v0, :cond_49

    #@46
    # setter for: Lcom/apportable/cm/MotionManager;->dataReady:Z
    invoke-static {v5}, Lcom/apportable/cm/MotionManager;->access$402(Z)Z

    #@49
    :cond_49
    new-instance v0, Lcom/apportable/cm/MotionManager$Listener$1;

    #@4b
    invoke-direct {v0, p0, p1}, Lcom/apportable/cm/MotionManager$Listener$1;-><init>(Lcom/apportable/cm/MotionManager$Listener;Landroid/hardware/SensorEvent;)V

    #@4e
    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnGlThread(Ljava/lang/Runnable;)V

    #@51
    goto :goto_7

    #@52
    :sswitch_52
    new-instance v1, Lcom/apportable/cm/MotionManager$Listener$2;

    #@54
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    #@56
    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    #@59
    move-result-object v0

    #@5a
    check-cast v0, [F

    #@5c
    invoke-direct {v1, p0, v0}, Lcom/apportable/cm/MotionManager$Listener$2;-><init>(Lcom/apportable/cm/MotionManager$Listener;[F)V

    #@5f
    invoke-static {v1}, Lcom/apportable/utils/ThreadUtils;->runOnGlThread(Ljava/lang/Runnable;)V

    #@62
    goto :goto_7

    #@63
    :sswitch_63
    iget-object v1, p0, Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;

    #@65
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    #@67
    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    #@6a
    move-result-object v0

    #@6b
    check-cast v0, [F

    #@6d
    # setter for: Lcom/apportable/cm/MotionManager;->mGeomagnetic:[F
    invoke-static {v1, v0}, Lcom/apportable/cm/MotionManager;->access$1302(Lcom/apportable/cm/MotionManager;[F)[F

    #@70
    new-instance v0, Lcom/apportable/cm/MotionManager$Listener$3;

    #@72
    invoke-direct {v0, p0}, Lcom/apportable/cm/MotionManager$Listener$3;-><init>(Lcom/apportable/cm/MotionManager$Listener;)V

    #@75
    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnGlThread(Ljava/lang/Runnable;)V

    #@78
    goto :goto_7

    #@79
    :sswitch_79
    new-instance v1, Lcom/apportable/cm/MotionManager$Listener$4;

    #@7b
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    #@7d
    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    #@80
    move-result-object v0

    #@81
    check-cast v0, [F

    #@83
    invoke-direct {v1, p0, v0}, Lcom/apportable/cm/MotionManager$Listener$4;-><init>(Lcom/apportable/cm/MotionManager$Listener;[F)V

    #@86
    invoke-static {v1}, Lcom/apportable/utils/ThreadUtils;->runOnGlThread(Ljava/lang/Runnable;)V

    #@89
    goto/16 :goto_7

    #@8b
    nop

    #@8c
    :sswitch_data_8c
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_63
        0x4 -> :sswitch_52
        0xb -> :sswitch_79
    .end sparse-switch
.end method

.method public setRate(I)V
    .registers 2

    #@0
    return-void
.end method

.method public setRegistered(Z)V
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/apportable/cm/MotionManager$Listener;->mRegistered:Z

    #@2
    return-void
.end method
