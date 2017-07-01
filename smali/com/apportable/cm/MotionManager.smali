.class public Lcom/apportable/cm/MotionManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/cm/MotionManager$Listener;
    }
.end annotation


# static fields
.field private static final ACCELEROMETER:I = 0x1

.field private static final DEVICE_MOTION:I = 0x4

.field private static final GRAVITY_ACCELERATION:F = 9.81f

.field private static final GYRO:I = 0x2

.field private static final MAGNETOMETER:I = 0x3

.field private static final SMOOTHING_DISTANCE:I = 0x4

.field private static currentSmooth:I

.field private static dataReady:Z

.field private static pastX:[F

.field private static pastY:[F

.field private static pastZ:[F


# instance fields
.field private accelerometerListener:Lcom/apportable/cm/MotionManager$Listener;

.field private deviceMotionAccelerometerListener:Lcom/apportable/cm/MotionManager$Listener;

.field private deviceMotionGyroListener:Lcom/apportable/cm/MotionManager$Listener;

.field private deviceMotionMagnetometerListener:Lcom/apportable/cm/MotionManager$Listener;

.field private gravityListener:Lcom/apportable/cm/MotionManager$Listener;

.field private gyroListener:Lcom/apportable/cm/MotionManager$Listener;

.field private isLandscapeDevice:Z

.field private mGeomagnetic:[F

.field private mGravity:[F

.field private mObject:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private magnetometerListener:Lcom/apportable/cm/MotionManager$Listener;

.field private orientationListener:Lcom/apportable/cm/MotionManager$Listener;

.field private rotationVectorListener:Lcom/apportable/cm/MotionManager$Listener;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x4

    #@2
    new-array v0, v1, [F

    #@4
    sput-object v0, Lcom/apportable/cm/MotionManager;->pastX:[F

    #@6
    new-array v0, v1, [F

    #@8
    sput-object v0, Lcom/apportable/cm/MotionManager;->pastY:[F

    #@a
    new-array v0, v1, [F

    #@c
    sput-object v0, Lcom/apportable/cm/MotionManager;->pastZ:[F

    #@e
    sput-boolean v2, Lcom/apportable/cm/MotionManager;->dataReady:Z

    #@10
    sput v2, Lcom/apportable/cm/MotionManager;->currentSmooth:I

    #@12
    return-void
.end method

.method public constructor <init>(I)V
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x4

    #@5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    iput v0, p0, Lcom/apportable/cm/MotionManager;->mObject:I

    #@a
    iput-boolean v0, p0, Lcom/apportable/cm/MotionManager;->isLandscapeDevice:Z

    #@c
    new-array v0, v6, [F

    #@e
    iput-object v0, p0, Lcom/apportable/cm/MotionManager;->mGravity:[F

    #@10
    new-array v0, v6, [F

    #@12
    fill-array-data v0, :array_94

    #@15
    iput-object v0, p0, Lcom/apportable/cm/MotionManager;->mGeomagnetic:[F

    #@17
    iput p1, p0, Lcom/apportable/cm/MotionManager;->mObject:I

    #@19
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    #@1c
    move-result-object v1

    #@1d
    const-string v0, "sensor"

    #@1f
    invoke-virtual {v1, v0}, Lcom/apportable/app/VerdeApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/hardware/SensorManager;

    #@25
    iput-object v0, p0, Lcom/apportable/cm/MotionManager;->mSensorManager:Landroid/hardware/SensorManager;

    #@27
    new-instance v0, Lcom/apportable/cm/MotionManager$Listener;

    #@29
    invoke-direct {v0, p0, v4, v4}, Lcom/apportable/cm/MotionManager$Listener;-><init>(Lcom/apportable/cm/MotionManager;II)V

    #@2c
    iput-object v0, p0, Lcom/apportable/cm/MotionManager;->accelerometerListener:Lcom/apportable/cm/MotionManager$Listener;

    #@2e
    new-instance v0, Lcom/apportable/cm/MotionManager$Listener;

    #@30
    invoke-direct {v0, p0, v5, v3}, Lcom/apportable/cm/MotionManager$Listener;-><init>(Lcom/apportable/cm/MotionManager;II)V

    #@33
    iput-object v0, p0, Lcom/apportable/cm/MotionManager;->gyroListener:Lcom/apportable/cm/MotionManager$Listener;

    #@35
    new-instance v0, Lcom/apportable/cm/MotionManager$Listener;

    #@37
    invoke-direct {v0, p0, v6, v5}, Lcom/apportable/cm/MotionManager$Listener;-><init>(Lcom/apportable/cm/MotionManager;II)V

    #@3a
    iput-object v0, p0, Lcom/apportable/cm/MotionManager;->magnetometerListener:Lcom/apportable/cm/MotionManager$Listener;

    #@3c
    new-instance v0, Lcom/apportable/cm/MotionManager$Listener;

    #@3e
    invoke-direct {v0, p0, v3, v4}, Lcom/apportable/cm/MotionManager$Listener;-><init>(Lcom/apportable/cm/MotionManager;II)V

    #@41
    iput-object v0, p0, Lcom/apportable/cm/MotionManager;->deviceMotionAccelerometerListener:Lcom/apportable/cm/MotionManager$Listener;

    #@43
    new-instance v0, Lcom/apportable/cm/MotionManager$Listener;

    #@45
    invoke-direct {v0, p0, v3, v3}, Lcom/apportable/cm/MotionManager$Listener;-><init>(Lcom/apportable/cm/MotionManager;II)V

    #@48
    iput-object v0, p0, Lcom/apportable/cm/MotionManager;->deviceMotionGyroListener:Lcom/apportable/cm/MotionManager$Listener;

    #@4a
    new-instance v0, Lcom/apportable/cm/MotionManager$Listener;

    #@4c
    invoke-direct {v0, p0, v3, v5}, Lcom/apportable/cm/MotionManager$Listener;-><init>(Lcom/apportable/cm/MotionManager;II)V

    #@4f
    iput-object v0, p0, Lcom/apportable/cm/MotionManager;->deviceMotionMagnetometerListener:Lcom/apportable/cm/MotionManager$Listener;

    #@51
    new-instance v0, Lcom/apportable/cm/MotionManager$Listener;

    #@53
    const/16 v2, 0x9

    #@55
    invoke-direct {v0, p0, v3, v2}, Lcom/apportable/cm/MotionManager$Listener;-><init>(Lcom/apportable/cm/MotionManager;II)V

    #@58
    iput-object v0, p0, Lcom/apportable/cm/MotionManager;->gravityListener:Lcom/apportable/cm/MotionManager$Listener;

    #@5a
    new-instance v0, Lcom/apportable/cm/MotionManager$Listener;

    #@5c
    const/16 v2, 0xb

    #@5e
    invoke-direct {v0, p0, v3, v2}, Lcom/apportable/cm/MotionManager$Listener;-><init>(Lcom/apportable/cm/MotionManager;II)V

    #@61
    iput-object v0, p0, Lcom/apportable/cm/MotionManager;->rotationVectorListener:Lcom/apportable/cm/MotionManager$Listener;

    #@63
    new-instance v0, Lcom/apportable/cm/MotionManager$Listener;

    #@65
    invoke-direct {v0, p0, v3, v6}, Lcom/apportable/cm/MotionManager$Listener;-><init>(Lcom/apportable/cm/MotionManager;II)V

    #@68
    iput-object v0, p0, Lcom/apportable/cm/MotionManager;->orientationListener:Lcom/apportable/cm/MotionManager$Listener;

    #@6a
    invoke-virtual {v1}, Lcom/apportable/app/VerdeApplication;->getResources()Landroid/content/res/Resources;

    #@6d
    move-result-object v0

    #@6e
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@71
    move-result-object v0

    #@72
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    #@74
    const-string v0, "window"

    #@76
    invoke-virtual {v1, v0}, Lcom/apportable/app/VerdeApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@79
    move-result-object v0

    #@7a
    check-cast v0, Landroid/view/WindowManager;

    #@7c
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@7f
    move-result-object v0

    #@80
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    #@83
    move-result v0

    #@84
    if-ne v2, v5, :cond_8a

    #@86
    if-eqz v0, :cond_90

    #@88
    if-eq v0, v5, :cond_90

    #@8a
    :cond_8a
    if-ne v2, v4, :cond_92

    #@8c
    if-eq v0, v4, :cond_90

    #@8e
    if-ne v0, v6, :cond_92

    #@90
    :cond_90
    iput-boolean v4, p0, Lcom/apportable/cm/MotionManager;->isLandscapeDevice:Z

    #@92
    :cond_92
    return-void

    #@93
    nop

    #@94
    :array_94
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private native acceleration(IIFFF)V
.end method

.method static synthetic access$000()[F
    .registers 1

    #@0
    sget-object v0, Lcom/apportable/cm/MotionManager;->pastX:[F

    #@2
    return-object v0
.end method

.method static synthetic access$100()I
    .registers 1

    #@0
    sget v0, Lcom/apportable/cm/MotionManager;->currentSmooth:I

    #@2
    return v0
.end method

.method static synthetic access$1000(Lcom/apportable/cm/MotionManager;IIFFF)V
    .registers 6

    #@0
    invoke-direct/range {p0 .. p5}, Lcom/apportable/cm/MotionManager;->acceleration(IIFFF)V

    #@3
    return-void
.end method

.method static synthetic access$102(I)I
    .registers 1

    #@0
    sput p0, Lcom/apportable/cm/MotionManager;->currentSmooth:I

    #@2
    return p0
.end method

.method static synthetic access$108()I
    .registers 2

    #@0
    sget v0, Lcom/apportable/cm/MotionManager;->currentSmooth:I

    #@2
    add-int/lit8 v1, v0, 0x1

    #@4
    sput v1, Lcom/apportable/cm/MotionManager;->currentSmooth:I

    #@6
    return v0
.end method

.method static synthetic access$1100(Lcom/apportable/cm/MotionManager;IIFFF)V
    .registers 6

    #@0
    invoke-direct/range {p0 .. p5}, Lcom/apportable/cm/MotionManager;->gyroscope(IIFFF)V

    #@3
    return-void
.end method

.method static synthetic access$1200(Lcom/apportable/cm/MotionManager;IIFFF)V
    .registers 6

    #@0
    invoke-direct/range {p0 .. p5}, Lcom/apportable/cm/MotionManager;->orientation(IIFFF)V

    #@3
    return-void
.end method

.method static synthetic access$1300(Lcom/apportable/cm/MotionManager;)[F
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->mGeomagnetic:[F

    #@2
    return-object v0
.end method

.method static synthetic access$1302(Lcom/apportable/cm/MotionManager;[F)[F
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/cm/MotionManager;->mGeomagnetic:[F

    #@2
    return-object p1
.end method

.method static synthetic access$1400(Lcom/apportable/cm/MotionManager;IIFFF)V
    .registers 6

    #@0
    invoke-direct/range {p0 .. p5}, Lcom/apportable/cm/MotionManager;->magneticField(IIFFF)V

    #@3
    return-void
.end method

.method static synthetic access$1500(Lcom/apportable/cm/MotionManager;IIFFF)V
    .registers 6

    #@0
    invoke-direct/range {p0 .. p5}, Lcom/apportable/cm/MotionManager;->gravity(IIFFF)V

    #@3
    return-void
.end method

.method static synthetic access$1600(Lcom/apportable/cm/MotionManager;IIFFFFFFFFF)V
    .registers 12

    #@0
    invoke-direct/range {p0 .. p11}, Lcom/apportable/cm/MotionManager;->rotation(IIFFFFFFFFF)V

    #@3
    return-void
.end method

.method static synthetic access$200()[F
    .registers 1

    #@0
    sget-object v0, Lcom/apportable/cm/MotionManager;->pastY:[F

    #@2
    return-object v0
.end method

.method static synthetic access$300()[F
    .registers 1

    #@0
    sget-object v0, Lcom/apportable/cm/MotionManager;->pastZ:[F

    #@2
    return-object v0
.end method

.method static synthetic access$400()Z
    .registers 1

    #@0
    sget-boolean v0, Lcom/apportable/cm/MotionManager;->dataReady:Z

    #@2
    return v0
.end method

.method static synthetic access$402(Z)Z
    .registers 1

    #@0
    sput-boolean p0, Lcom/apportable/cm/MotionManager;->dataReady:Z

    #@2
    return p0
.end method

.method static synthetic access$600(Lcom/apportable/cm/MotionManager;)Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/cm/MotionManager;->isLandscapeDevice:Z

    #@2
    return v0
.end method

.method static synthetic access$700(Lcom/apportable/cm/MotionManager;)[F
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->mGravity:[F

    #@2
    return-object v0
.end method

.method static synthetic access$702(Lcom/apportable/cm/MotionManager;[F)[F
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/cm/MotionManager;->mGravity:[F

    #@2
    return-object p1
.end method

.method static synthetic access$800(Lcom/apportable/cm/MotionManager;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/cm/MotionManager;->mObject:I

    #@2
    return v0
.end method

.method private native gravity(IIFFF)V
.end method

.method private native gyroscope(IIFFF)V
.end method

.method private isSensorAvailable(Lcom/apportable/cm/MotionManager$Listener;)Z
    .registers 4

    #@0
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->mSensorManager:Landroid/hardware/SensorManager;

    #@2
    invoke-virtual {p1}, Lcom/apportable/cm/MotionManager$Listener;->getType()I

    #@5
    move-result v1

    #@6
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    :goto_d
    return v0

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    goto :goto_d
.end method

.method private native magneticField(IIFFF)V
.end method

.method private native orientation(IIFFF)V
.end method

.method private native rotation(IIFFFFFFFFF)V
.end method

.method private setListenerRate(Lcom/apportable/cm/MotionManager$Listener;I)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p1}, Lcom/apportable/cm/MotionManager$Listener;->isRegistered()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_b

    #@7
    const/4 v0, 0x1

    #@8
    invoke-direct {p0, p1}, Lcom/apportable/cm/MotionManager;->stopListener(Lcom/apportable/cm/MotionManager$Listener;)V

    #@b
    :cond_b
    invoke-virtual {p1, p2}, Lcom/apportable/cm/MotionManager$Listener;->setRate(I)V

    #@e
    if-eqz v0, :cond_13

    #@10
    invoke-direct {p0, p1}, Lcom/apportable/cm/MotionManager;->startListener(Lcom/apportable/cm/MotionManager$Listener;)V

    #@13
    :cond_13
    return-void
.end method

.method private startListener(Lcom/apportable/cm/MotionManager$Listener;)V
    .registers 5

    #@0
    invoke-virtual {p1}, Lcom/apportable/cm/MotionManager$Listener;->isRegistered()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_1d

    #@6
    const/4 v0, 0x1

    #@7
    invoke-virtual {p1, v0}, Lcom/apportable/cm/MotionManager$Listener;->setRegistered(Z)V

    #@a
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->mSensorManager:Landroid/hardware/SensorManager;

    #@c
    iget-object v1, p0, Lcom/apportable/cm/MotionManager;->mSensorManager:Landroid/hardware/SensorManager;

    #@e
    invoke-virtual {p1}, Lcom/apportable/cm/MotionManager$Listener;->getType()I

    #@11
    move-result v2

    #@12
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p1}, Lcom/apportable/cm/MotionManager$Listener;->getRate()I

    #@19
    move-result v2

    #@1a
    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    #@1d
    :cond_1d
    return-void
.end method

.method private stopListener(Lcom/apportable/cm/MotionManager$Listener;)V
    .registers 3

    #@0
    invoke-virtual {p1}, Lcom/apportable/cm/MotionManager$Listener;->isRegistered()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_f

    #@6
    const/4 v0, 0x0

    #@7
    invoke-virtual {p1, v0}, Lcom/apportable/cm/MotionManager$Listener;->setRegistered(Z)V

    #@a
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->mSensorManager:Landroid/hardware/SensorManager;

    #@c
    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    #@f
    :cond_f
    return-void
.end method


# virtual methods
.method public isAccelerometerAvailable()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->accelerometerListener:Lcom/apportable/cm/MotionManager$Listener;

    #@2
    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->isSensorAvailable(Lcom/apportable/cm/MotionManager$Listener;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    goto :goto_9
.end method

.method public isDeviceMotionAvailable()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->deviceMotionAccelerometerListener:Lcom/apportable/cm/MotionManager$Listener;

    #@2
    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->isSensorAvailable(Lcom/apportable/cm/MotionManager$Listener;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_32

    #@8
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->deviceMotionGyroListener:Lcom/apportable/cm/MotionManager$Listener;

    #@a
    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->isSensorAvailable(Lcom/apportable/cm/MotionManager$Listener;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_32

    #@10
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->deviceMotionMagnetometerListener:Lcom/apportable/cm/MotionManager$Listener;

    #@12
    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->isSensorAvailable(Lcom/apportable/cm/MotionManager$Listener;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_32

    #@18
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->gravityListener:Lcom/apportable/cm/MotionManager$Listener;

    #@1a
    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->isSensorAvailable(Lcom/apportable/cm/MotionManager$Listener;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_32

    #@20
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->rotationVectorListener:Lcom/apportable/cm/MotionManager$Listener;

    #@22
    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->isSensorAvailable(Lcom/apportable/cm/MotionManager$Listener;)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_32

    #@28
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->orientationListener:Lcom/apportable/cm/MotionManager$Listener;

    #@2a
    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->isSensorAvailable(Lcom/apportable/cm/MotionManager$Listener;)Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_32

    #@30
    const/4 v0, 0x1

    #@31
    :goto_31
    return v0

    #@32
    :cond_32
    const/4 v0, 0x0

    #@33
    goto :goto_31
.end method

.method public isGyroAvailable()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->gyroListener:Lcom/apportable/cm/MotionManager$Listener;

    #@2
    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->isSensorAvailable(Lcom/apportable/cm/MotionManager$Listener;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    goto :goto_9
.end method

.method public isMagnetometerAvailable()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->magnetometerListener:Lcom/apportable/cm/MotionManager$Listener;

    #@2
    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->isSensorAvailable(Lcom/apportable/cm/MotionManager$Listener;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    goto :goto_9
.end method

.method public setAccelerometerUpdateInterval(I)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->accelerometerListener:Lcom/apportable/cm/MotionManager$Listener;

    #@2
    invoke-direct {p0, v0, p1}, Lcom/apportable/cm/MotionManager;->setListenerRate(Lcom/apportable/cm/MotionManager$Listener;I)V

    #@5
    return-void
.end method

.method public setDeviceMotionUpdateInterval(I)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->deviceMotionAccelerometerListener:Lcom/apportable/cm/MotionManager$Listener;

    #@2
    invoke-direct {p0, v0, p1}, Lcom/apportable/cm/MotionManager;->setListenerRate(Lcom/apportable/cm/MotionManager$Listener;I)V

    #@5
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->deviceMotionGyroListener:Lcom/apportable/cm/MotionManager$Listener;

    #@7
    invoke-direct {p0, v0, p1}, Lcom/apportable/cm/MotionManager;->setListenerRate(Lcom/apportable/cm/MotionManager$Listener;I)V

    #@a
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->deviceMotionMagnetometerListener:Lcom/apportable/cm/MotionManager$Listener;

    #@c
    invoke-direct {p0, v0, p1}, Lcom/apportable/cm/MotionManager;->setListenerRate(Lcom/apportable/cm/MotionManager$Listener;I)V

    #@f
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->gravityListener:Lcom/apportable/cm/MotionManager$Listener;

    #@11
    invoke-direct {p0, v0, p1}, Lcom/apportable/cm/MotionManager;->setListenerRate(Lcom/apportable/cm/MotionManager$Listener;I)V

    #@14
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->rotationVectorListener:Lcom/apportable/cm/MotionManager$Listener;

    #@16
    invoke-direct {p0, v0, p1}, Lcom/apportable/cm/MotionManager;->setListenerRate(Lcom/apportable/cm/MotionManager$Listener;I)V

    #@19
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->orientationListener:Lcom/apportable/cm/MotionManager$Listener;

    #@1b
    invoke-direct {p0, v0, p1}, Lcom/apportable/cm/MotionManager;->setListenerRate(Lcom/apportable/cm/MotionManager$Listener;I)V

    #@1e
    return-void
.end method

.method public setGyroUpdateInterval(I)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->gyroListener:Lcom/apportable/cm/MotionManager$Listener;

    #@2
    invoke-direct {p0, v0, p1}, Lcom/apportable/cm/MotionManager;->setListenerRate(Lcom/apportable/cm/MotionManager$Listener;I)V

    #@5
    return-void
.end method

.method public setMagnetometerUpdateInterval(I)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->magnetometerListener:Lcom/apportable/cm/MotionManager$Listener;

    #@2
    invoke-direct {p0, v0, p1}, Lcom/apportable/cm/MotionManager;->setListenerRate(Lcom/apportable/cm/MotionManager$Listener;I)V

    #@5
    return-void
.end method

.method public setObject(I)V
    .registers 2

    #@0
    iput p1, p0, Lcom/apportable/cm/MotionManager;->mObject:I

    #@2
    return-void
.end method

.method public startAccelerometerUpdates()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->accelerometerListener:Lcom/apportable/cm/MotionManager$Listener;

    #@2
    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->startListener(Lcom/apportable/cm/MotionManager$Listener;)V

    #@5
    return-void
.end method

.method public startDeviceMotionUpdates()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->deviceMotionAccelerometerListener:Lcom/apportable/cm/MotionManager$Listener;

    #@2
    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->startListener(Lcom/apportable/cm/MotionManager$Listener;)V

    #@5
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->deviceMotionGyroListener:Lcom/apportable/cm/MotionManager$Listener;

    #@7
    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->startListener(Lcom/apportable/cm/MotionManager$Listener;)V

    #@a
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->deviceMotionMagnetometerListener:Lcom/apportable/cm/MotionManager$Listener;

    #@c
    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->startListener(Lcom/apportable/cm/MotionManager$Listener;)V

    #@f
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->gravityListener:Lcom/apportable/cm/MotionManager$Listener;

    #@11
    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->startListener(Lcom/apportable/cm/MotionManager$Listener;)V

    #@14
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->rotationVectorListener:Lcom/apportable/cm/MotionManager$Listener;

    #@16
    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->startListener(Lcom/apportable/cm/MotionManager$Listener;)V

    #@19
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->orientationListener:Lcom/apportable/cm/MotionManager$Listener;

    #@1b
    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->startListener(Lcom/apportable/cm/MotionManager$Listener;)V

    #@1e
    return-void
.end method

.method public startGyroUpdates()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->gyroListener:Lcom/apportable/cm/MotionManager$Listener;

    #@2
    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->startListener(Lcom/apportable/cm/MotionManager$Listener;)V

    #@5
    return-void
.end method

.method public startMagnetometerUpdates()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->magnetometerListener:Lcom/apportable/cm/MotionManager$Listener;

    #@2
    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->startListener(Lcom/apportable/cm/MotionManager$Listener;)V

    #@5
    return-void
.end method

.method public stopAccelerometerUpdates()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->accelerometerListener:Lcom/apportable/cm/MotionManager$Listener;

    #@2
    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->stopListener(Lcom/apportable/cm/MotionManager$Listener;)V

    #@5
    return-void
.end method

.method public stopDeviceMotionUpdates()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->deviceMotionAccelerometerListener:Lcom/apportable/cm/MotionManager$Listener;

    #@2
    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->stopListener(Lcom/apportable/cm/MotionManager$Listener;)V

    #@5
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->deviceMotionGyroListener:Lcom/apportable/cm/MotionManager$Listener;

    #@7
    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->stopListener(Lcom/apportable/cm/MotionManager$Listener;)V

    #@a
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->deviceMotionMagnetometerListener:Lcom/apportable/cm/MotionManager$Listener;

    #@c
    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->stopListener(Lcom/apportable/cm/MotionManager$Listener;)V

    #@f
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->gravityListener:Lcom/apportable/cm/MotionManager$Listener;

    #@11
    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->stopListener(Lcom/apportable/cm/MotionManager$Listener;)V

    #@14
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->rotationVectorListener:Lcom/apportable/cm/MotionManager$Listener;

    #@16
    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->stopListener(Lcom/apportable/cm/MotionManager$Listener;)V

    #@19
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->orientationListener:Lcom/apportable/cm/MotionManager$Listener;

    #@1b
    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->stopListener(Lcom/apportable/cm/MotionManager$Listener;)V

    #@1e
    return-void
.end method

.method public stopGyroUpdates()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->gyroListener:Lcom/apportable/cm/MotionManager$Listener;

    #@2
    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->stopListener(Lcom/apportable/cm/MotionManager$Listener;)V

    #@5
    return-void
.end method

.method public stopMagnetometerUpdates()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->magnetometerListener:Lcom/apportable/cm/MotionManager$Listener;

    #@2
    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->stopListener(Lcom/apportable/cm/MotionManager$Listener;)V

    #@5
    return-void
.end method
