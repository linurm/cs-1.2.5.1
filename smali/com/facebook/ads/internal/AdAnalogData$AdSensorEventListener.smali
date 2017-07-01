.class Lcom/facebook/ads/internal/AdAnalogData$AdSensorEventListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/AdAnalogData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdSensorEventListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ads/internal/AdAnalogData$1;)V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/facebook/ads/internal/AdAnalogData$AdSensorEventListener;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    #@0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 4

    #@0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    #@2
    # getter for: Lcom/facebook/ads/internal/AdAnalogData;->accelerometer:Landroid/hardware/Sensor;
    invoke-static {}, Lcom/facebook/ads/internal/AdAnalogData;->access$100()Landroid/hardware/Sensor;

    #@5
    move-result-object v1

    #@6
    if-ne v0, v1, :cond_11

    #@8
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    #@a
    # setter for: Lcom/facebook/ads/internal/AdAnalogData;->accelerometerValues:[F
    invoke-static {v0}, Lcom/facebook/ads/internal/AdAnalogData;->access$202([F)[F

    #@d
    :cond_d
    :goto_d
    invoke-static {p0}, Lcom/facebook/ads/internal/AdAnalogData;->stopUpdate(Lcom/facebook/ads/internal/AdAnalogData$AdSensorEventListener;)V

    #@10
    return-void

    #@11
    :cond_11
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    #@13
    # getter for: Lcom/facebook/ads/internal/AdAnalogData;->gyroscope:Landroid/hardware/Sensor;
    invoke-static {}, Lcom/facebook/ads/internal/AdAnalogData;->access$300()Landroid/hardware/Sensor;

    #@16
    move-result-object v1

    #@17
    if-ne v0, v1, :cond_d

    #@19
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    #@1b
    # setter for: Lcom/facebook/ads/internal/AdAnalogData;->gyroscopeValues:[F
    invoke-static {v0}, Lcom/facebook/ads/internal/AdAnalogData;->access$402([F)[F

    #@1e
    goto :goto_d
.end method
