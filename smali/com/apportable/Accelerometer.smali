.class public Lcom/apportable/Accelerometer;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final DELAY:J = 0xfL

.field private static final SMOOTHING_DISTANCE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Accelerometer"

.field private static currentSmooth:I

.field private static dataReady:Z

.field private static pastX:[F

.field private static pastY:[F

.field private static pastZ:[F


# instance fields
.field private isLandscapeDevice:Z

.field private lastEvent:J

.field private mAccelerometer:Landroid/hardware/Sensor;

.field private mContext:Landroid/content/Context;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x3

    #@2
    new-array v0, v1, [F

    #@4
    sput-object v0, Lcom/apportable/Accelerometer;->pastX:[F

    #@6
    new-array v0, v1, [F

    #@8
    sput-object v0, Lcom/apportable/Accelerometer;->pastY:[F

    #@a
    new-array v0, v1, [F

    #@c
    sput-object v0, Lcom/apportable/Accelerometer;->pastZ:[F

    #@e
    sput-boolean v2, Lcom/apportable/Accelerometer;->dataReady:Z

    #@10
    sput v2, Lcom/apportable/Accelerometer;->currentSmooth:I

    #@12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    #@0
    const/4 v3, 0x2

    #@1
    const/4 v2, 0x1

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    const-wide/16 v0, -0x1

    #@7
    iput-wide v0, p0, Lcom/apportable/Accelerometer;->lastEvent:J

    #@9
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Lcom/apportable/Accelerometer;->isLandscapeDevice:Z

    #@c
    iput-object p1, p0, Lcom/apportable/Accelerometer;->mContext:Landroid/content/Context;

    #@e
    iget-object v0, p0, Lcom/apportable/Accelerometer;->mContext:Landroid/content/Context;

    #@10
    const-string v1, "sensor"

    #@12
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/hardware/SensorManager;

    #@18
    iput-object v0, p0, Lcom/apportable/Accelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    #@1a
    iget-object v0, p0, Lcom/apportable/Accelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    #@1c
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Lcom/apportable/Accelerometer;->mAccelerometer:Landroid/hardware/Sensor;

    #@22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@29
    move-result-object v0

    #@2a
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    #@2c
    const-string v0, "window"

    #@2e
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Landroid/view/WindowManager;

    #@34
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    #@3b
    move-result v0

    #@3c
    if-ne v1, v3, :cond_42

    #@3e
    if-eqz v0, :cond_49

    #@40
    if-eq v0, v3, :cond_49

    #@42
    :cond_42
    if-ne v1, v2, :cond_4b

    #@44
    if-eq v0, v2, :cond_49

    #@46
    const/4 v1, 0x3

    #@47
    if-ne v0, v1, :cond_4b

    #@49
    :cond_49
    iput-boolean v2, p0, Lcom/apportable/Accelerometer;->isLandscapeDevice:Z

    #@4b
    :cond_4b
    return-void
.end method

.method private native onSensorChanged(FFFJ)V
.end method


# virtual methods
.method public disable()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/Accelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    #@2
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    #@5
    return-void
.end method

.method public enable()V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/apportable/Accelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    #@2
    iget-object v1, p0, Lcom/apportable/Accelerometer;->mAccelerometer:Landroid/hardware/Sensor;

    #@4
    const/4 v2, 0x1

    #@5
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    #@8
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    #@0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 14

    #@0
    const/4 v8, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    const v11, 0x411ce80a

    #@6
    const/high16 v10, 0x40400000    # 3.0f

    #@8
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    #@a
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    #@d
    move-result v1

    #@e
    if-eq v1, v8, :cond_11

    #@10
    :cond_10
    :goto_10
    return-void

    #@11
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@14
    move-result-wide v2

    #@15
    sget-object v1, Lcom/apportable/Accelerometer;->pastX:[F

    #@17
    sget v5, Lcom/apportable/Accelerometer;->currentSmooth:I

    #@19
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    #@1b
    aget v6, v6, v4

    #@1d
    aput v6, v1, v5

    #@1f
    sget-object v1, Lcom/apportable/Accelerometer;->pastY:[F

    #@21
    sget v5, Lcom/apportable/Accelerometer;->currentSmooth:I

    #@23
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    #@25
    aget v6, v6, v8

    #@27
    aput v6, v1, v5

    #@29
    sget-object v1, Lcom/apportable/Accelerometer;->pastZ:[F

    #@2b
    sget v5, Lcom/apportable/Accelerometer;->currentSmooth:I

    #@2d
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    #@2f
    const/4 v7, 0x2

    #@30
    aget v6, v6, v7

    #@32
    aput v6, v1, v5

    #@34
    sget v1, Lcom/apportable/Accelerometer;->currentSmooth:I

    #@36
    add-int/lit8 v1, v1, 0x1

    #@38
    sput v1, Lcom/apportable/Accelerometer;->currentSmooth:I

    #@3a
    sget v1, Lcom/apportable/Accelerometer;->currentSmooth:I

    #@3c
    const/4 v5, 0x3

    #@3d
    if-ne v1, v5, :cond_47

    #@3f
    sput v4, Lcom/apportable/Accelerometer;->currentSmooth:I

    #@41
    sget-boolean v1, Lcom/apportable/Accelerometer;->dataReady:Z

    #@43
    if-nez v1, :cond_47

    #@45
    sput-boolean v8, Lcom/apportable/Accelerometer;->dataReady:Z

    #@47
    :cond_47
    iget-wide v6, p0, Lcom/apportable/Accelerometer;->lastEvent:J

    #@49
    sub-long v6, v2, v6

    #@4b
    const-wide/16 v8, 0xf

    #@4d
    cmp-long v1, v6, v8

    #@4f
    if-lez v1, :cond_10

    #@51
    iput-wide v2, p0, Lcom/apportable/Accelerometer;->lastEvent:J

    #@53
    move v3, v4

    #@54
    move v2, v0

    #@55
    move v1, v0

    #@56
    :goto_56
    const/4 v5, 0x3

    #@57
    if-ge v3, v5, :cond_6e

    #@59
    sget-boolean v5, Lcom/apportable/Accelerometer;->dataReady:Z

    #@5b
    if-nez v5, :cond_84

    #@5d
    sget-object v0, Lcom/apportable/Accelerometer;->pastX:[F

    #@5f
    aget v0, v0, v4

    #@61
    mul-float v1, v10, v0

    #@63
    sget-object v0, Lcom/apportable/Accelerometer;->pastY:[F

    #@65
    aget v0, v0, v4

    #@67
    mul-float v2, v10, v0

    #@69
    sget-object v0, Lcom/apportable/Accelerometer;->pastZ:[F

    #@6b
    aget v0, v0, v4

    #@6d
    mul-float/2addr v0, v10

    #@6e
    :cond_6e
    div-float/2addr v1, v10

    #@6f
    div-float v3, v2, v10

    #@71
    div-float/2addr v0, v10

    #@72
    iget-boolean v2, p0, Lcom/apportable/Accelerometer;->isLandscapeDevice:Z

    #@74
    if-eqz v2, :cond_96

    #@76
    div-float v2, v1, v11

    #@78
    neg-float v1, v3

    #@79
    div-float/2addr v1, v11

    #@7a
    neg-float v0, v0

    #@7b
    div-float v3, v0, v11

    #@7d
    :goto_7d
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    #@7f
    move-object v0, p0

    #@80
    invoke-direct/range {v0 .. v5}, Lcom/apportable/Accelerometer;->onSensorChanged(FFFJ)V

    #@83
    goto :goto_10

    #@84
    :cond_84
    sget-object v5, Lcom/apportable/Accelerometer;->pastX:[F

    #@86
    aget v5, v5, v3

    #@88
    sget-object v6, Lcom/apportable/Accelerometer;->pastY:[F

    #@8a
    aget v6, v6, v3

    #@8c
    sget-object v7, Lcom/apportable/Accelerometer;->pastZ:[F

    #@8e
    aget v7, v7, v3

    #@90
    add-int/lit8 v3, v3, 0x1

    #@92
    add-float/2addr v0, v7

    #@93
    add-float/2addr v2, v6

    #@94
    add-float/2addr v1, v5

    #@95
    goto :goto_56

    #@96
    :cond_96
    neg-float v1, v1

    #@97
    div-float/2addr v1, v11

    #@98
    neg-float v2, v3

    #@99
    div-float/2addr v2, v11

    #@9a
    neg-float v0, v0

    #@9b
    div-float v3, v0, v11

    #@9d
    goto :goto_7d
.end method
