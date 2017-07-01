.class public Lcom/facebook/ads/internal/AdAnalogData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/AdAnalogData$AdSensorEventListener;
    }
.end annotation


# static fields
.field private static accelerometer:Landroid/hardware/Sensor;

.field private static volatile accelerometerValues:[F

.field private static analogInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static gyroscope:Landroid/hardware/Sensor;

.field private static volatile gyroscopeValues:[F

.field private static sensorDimensions:[Ljava/lang/String;

.field private static sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    sput-object v0, Lcom/facebook/ads/internal/AdAnalogData;->sensorManager:Landroid/hardware/SensorManager;

    #@3
    sput-object v0, Lcom/facebook/ads/internal/AdAnalogData;->accelerometer:Landroid/hardware/Sensor;

    #@5
    sput-object v0, Lcom/facebook/ads/internal/AdAnalogData;->gyroscope:Landroid/hardware/Sensor;

    #@7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@9
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@c
    sput-object v0, Lcom/facebook/ads/internal/AdAnalogData;->analogInfo:Ljava/util/Map;

    #@e
    const/4 v0, 0x3

    #@f
    new-array v0, v0, [Ljava/lang/String;

    #@11
    const/4 v1, 0x0

    #@12
    const-string v2, "x"

    #@14
    aput-object v2, v0, v1

    #@16
    const/4 v1, 0x1

    #@17
    const-string v2, "y"

    #@19
    aput-object v2, v0, v1

    #@1b
    const/4 v1, 0x2

    #@1c
    const-string v2, "z"

    #@1e
    aput-object v2, v0, v1

    #@20
    sput-object v0, Lcom/facebook/ads/internal/AdAnalogData;->sensorDimensions:[Ljava/lang/String;

    #@22
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$100()Landroid/hardware/Sensor;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/ads/internal/AdAnalogData;->accelerometer:Landroid/hardware/Sensor;

    #@2
    return-object v0
.end method

.method static synthetic access$202([F)[F
    .registers 1

    #@0
    sput-object p0, Lcom/facebook/ads/internal/AdAnalogData;->accelerometerValues:[F

    #@2
    return-object p0
.end method

.method static synthetic access$300()Landroid/hardware/Sensor;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/ads/internal/AdAnalogData;->gyroscope:Landroid/hardware/Sensor;

    #@2
    return-object v0
.end method

.method static synthetic access$402([F)[F
    .registers 1

    #@0
    sput-object p0, Lcom/facebook/ads/internal/AdAnalogData;->gyroscopeValues:[F

    #@2
    return-object p0
.end method

.method public static getAnalogInfo()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sget-object v1, Lcom/facebook/ads/internal/AdAnalogData;->analogInfo:Ljava/util/Map;

    #@7
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    #@a
    invoke-static {v0}, Lcom/facebook/ads/internal/AdAnalogData;->putSensorData(Ljava/util/Map;)V

    #@d
    return-object v0
.end method

.method private static putBatteryData(Landroid/content/Context;)V
    .registers 8

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v6, -0x1

    #@3
    const/4 v0, 0x0

    #@4
    new-instance v3, Landroid/content/IntentFilter;

    #@6
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    #@8
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@b
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@e
    move-result-object v0

    #@f
    if-nez v0, :cond_12

    #@11
    :goto_11
    return-void

    #@12
    :cond_12
    const-string v3, "level"

    #@14
    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@17
    move-result v4

    #@18
    const-string v3, "scale"

    #@1a
    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@1d
    move-result v5

    #@1e
    const-string v3, "status"

    #@20
    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@23
    move-result v0

    #@24
    const/4 v3, 0x2

    #@25
    if-eq v0, v3, :cond_2a

    #@27
    const/4 v3, 0x5

    #@28
    if-ne v0, v3, :cond_4e

    #@2a
    :cond_2a
    move v3, v1

    #@2b
    :goto_2b
    const/4 v0, 0x0

    #@2c
    if-lez v5, :cond_34

    #@2e
    int-to-float v0, v4

    #@2f
    int-to-float v4, v5

    #@30
    div-float/2addr v0, v4

    #@31
    const/high16 v4, 0x42c80000    # 100.0f

    #@33
    mul-float/2addr v0, v4

    #@34
    :cond_34
    sget-object v4, Lcom/facebook/ads/internal/AdAnalogData;->analogInfo:Ljava/util/Map;

    #@36
    const-string v5, "battery"

    #@38
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@3b
    move-result-object v0

    #@3c
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    sget-object v4, Lcom/facebook/ads/internal/AdAnalogData;->analogInfo:Ljava/util/Map;

    #@41
    if-eqz v3, :cond_50

    #@43
    move v0, v1

    #@44
    :goto_44
    const-string v1, "charging"

    #@46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@49
    move-result-object v0

    #@4a
    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4d
    goto :goto_11

    #@4e
    :cond_4e
    move v3, v2

    #@4f
    goto :goto_2b

    #@50
    :cond_50
    move v0, v2

    #@51
    goto :goto_44
.end method

.method private static putDiskInfo(Landroid/content/Context;)V
    .registers 7

    #@0
    new-instance v0, Landroid/os/StatFs;

    #@2
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    #@d
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    #@10
    move-result v1

    #@11
    int-to-long v2, v1

    #@12
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    #@15
    move-result v0

    #@16
    int-to-long v0, v0

    #@17
    sget-object v4, Lcom/facebook/ads/internal/AdAnalogData;->analogInfo:Ljava/util/Map;

    #@19
    const-string v5, "free_space"

    #@1b
    mul-long/2addr v0, v2

    #@1c
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1f
    move-result-object v0

    #@20
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    return-void
.end method

.method private static putMemoryInfo(Landroid/content/Context;)V
    .registers 7

    #@0
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    #@2
    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    #@5
    const-string v0, "activity"

    #@7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/app/ActivityManager;

    #@d
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    #@10
    sget-object v0, Lcom/facebook/ads/internal/AdAnalogData;->analogInfo:Ljava/util/Map;

    #@12
    const-string v2, "available_memory"

    #@14
    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    #@16
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    return-void
.end method

.method private static putSensorData(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    sget-object v2, Lcom/facebook/ads/internal/AdAnalogData;->accelerometerValues:[F

    #@3
    sget-object v3, Lcom/facebook/ads/internal/AdAnalogData;->gyroscopeValues:[F

    #@5
    if-eqz v2, :cond_2e

    #@7
    move v0, v1

    #@8
    :goto_8
    array-length v4, v2

    #@9
    if-ge v0, v4, :cond_2e

    #@b
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string v5, "accelerometer_"

    #@12
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    sget-object v5, Lcom/facebook/ads/internal/AdAnalogData;->sensorDimensions:[Ljava/lang/String;

    #@18
    aget-object v5, v5, v0

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    aget v5, v2, v0

    #@24
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@27
    move-result-object v5

    #@28
    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_8

    #@2e
    :cond_2e
    if-eqz v3, :cond_56

    #@30
    :goto_30
    array-length v0, v3

    #@31
    if-ge v1, v0, :cond_56

    #@33
    new-instance v0, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string v2, "rotation_"

    #@3a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    sget-object v2, Lcom/facebook/ads/internal/AdAnalogData;->sensorDimensions:[Ljava/lang/String;

    #@40
    aget-object v2, v2, v1

    #@42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    aget v2, v3, v1

    #@4c
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@4f
    move-result-object v2

    #@50
    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    add-int/lit8 v1, v1, 0x1

    #@55
    goto :goto_30

    #@56
    :cond_56
    return-void
.end method

.method public static startUpdate(Landroid/content/Context;)V
    .registers 5

    #@0
    const-class v0, Lcom/facebook/ads/internal/AdAnalogData;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    invoke-static {p0}, Lcom/facebook/ads/internal/AdAnalogData;->putMemoryInfo(Landroid/content/Context;)V

    #@6
    invoke-static {p0}, Lcom/facebook/ads/internal/AdAnalogData;->putDiskInfo(Landroid/content/Context;)V

    #@9
    invoke-static {p0}, Lcom/facebook/ads/internal/AdAnalogData;->putBatteryData(Landroid/content/Context;)V

    #@c
    sget-object v0, Lcom/facebook/ads/internal/AdAnalogData;->sensorManager:Landroid/hardware/SensorManager;

    #@e
    if-nez v0, :cond_22

    #@10
    const-string v0, "sensor"

    #@12
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/hardware/SensorManager;

    #@18
    sput-object v0, Lcom/facebook/ads/internal/AdAnalogData;->sensorManager:Landroid/hardware/SensorManager;

    #@1a
    sget-object v0, Lcom/facebook/ads/internal/AdAnalogData;->sensorManager:Landroid/hardware/SensorManager;
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_61

    #@1c
    if-nez v0, :cond_22

    #@1e
    :cond_1e
    :goto_1e
    const-class v0, Lcom/facebook/ads/internal/AdAnalogData;

    #@20
    monitor-exit v0

    #@21
    return-void

    #@22
    :cond_22
    :try_start_22
    sget-object v0, Lcom/facebook/ads/internal/AdAnalogData;->accelerometer:Landroid/hardware/Sensor;

    #@24
    if-nez v0, :cond_2f

    #@26
    sget-object v0, Lcom/facebook/ads/internal/AdAnalogData;->sensorManager:Landroid/hardware/SensorManager;

    #@28
    const/4 v1, 0x1

    #@29
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    #@2c
    move-result-object v0

    #@2d
    sput-object v0, Lcom/facebook/ads/internal/AdAnalogData;->accelerometer:Landroid/hardware/Sensor;

    #@2f
    :cond_2f
    sget-object v0, Lcom/facebook/ads/internal/AdAnalogData;->gyroscope:Landroid/hardware/Sensor;

    #@31
    if-nez v0, :cond_3c

    #@33
    sget-object v0, Lcom/facebook/ads/internal/AdAnalogData;->sensorManager:Landroid/hardware/SensorManager;

    #@35
    const/4 v1, 0x4

    #@36
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    #@39
    move-result-object v0

    #@3a
    sput-object v0, Lcom/facebook/ads/internal/AdAnalogData;->gyroscope:Landroid/hardware/Sensor;

    #@3c
    :cond_3c
    sget-object v0, Lcom/facebook/ads/internal/AdAnalogData;->accelerometer:Landroid/hardware/Sensor;

    #@3e
    if-eqz v0, :cond_4e

    #@40
    sget-object v0, Lcom/facebook/ads/internal/AdAnalogData;->sensorManager:Landroid/hardware/SensorManager;

    #@42
    new-instance v1, Lcom/facebook/ads/internal/AdAnalogData$AdSensorEventListener;

    #@44
    const/4 v2, 0x0

    #@45
    invoke-direct {v1, v2}, Lcom/facebook/ads/internal/AdAnalogData$AdSensorEventListener;-><init>(Lcom/facebook/ads/internal/AdAnalogData$1;)V

    #@48
    sget-object v2, Lcom/facebook/ads/internal/AdAnalogData;->accelerometer:Landroid/hardware/Sensor;

    #@4a
    const/4 v3, 0x3

    #@4b
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    #@4e
    :cond_4e
    sget-object v0, Lcom/facebook/ads/internal/AdAnalogData;->gyroscope:Landroid/hardware/Sensor;

    #@50
    if-eqz v0, :cond_1e

    #@52
    sget-object v0, Lcom/facebook/ads/internal/AdAnalogData;->sensorManager:Landroid/hardware/SensorManager;

    #@54
    new-instance v1, Lcom/facebook/ads/internal/AdAnalogData$AdSensorEventListener;

    #@56
    const/4 v2, 0x0

    #@57
    invoke-direct {v1, v2}, Lcom/facebook/ads/internal/AdAnalogData$AdSensorEventListener;-><init>(Lcom/facebook/ads/internal/AdAnalogData$1;)V

    #@5a
    sget-object v2, Lcom/facebook/ads/internal/AdAnalogData;->gyroscope:Landroid/hardware/Sensor;

    #@5c
    const/4 v3, 0x3

    #@5d
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_60
    .catchall {:try_start_22 .. :try_end_60} :catchall_61

    #@60
    goto :goto_1e

    #@61
    :catchall_61
    move-exception v0

    #@62
    const-class v1, Lcom/facebook/ads/internal/AdAnalogData;

    #@64
    monitor-exit v1

    #@65
    throw v0
.end method

.method public static stopUpdate(Lcom/facebook/ads/internal/AdAnalogData$AdSensorEventListener;)V
    .registers 3

    #@0
    const-class v0, Lcom/facebook/ads/internal/AdAnalogData;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sget-object v0, Lcom/facebook/ads/internal/AdAnalogData;->sensorManager:Landroid/hardware/SensorManager;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_11

    #@5
    if-nez v0, :cond_b

    #@7
    :goto_7
    const-class v0, Lcom/facebook/ads/internal/AdAnalogData;

    #@9
    monitor-exit v0

    #@a
    return-void

    #@b
    :cond_b
    :try_start_b
    sget-object v0, Lcom/facebook/ads/internal/AdAnalogData;->sensorManager:Landroid/hardware/SensorManager;

    #@d
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    #@10
    goto :goto_7

    #@11
    :catchall_11
    move-exception v0

    #@12
    const-class v1, Lcom/facebook/ads/internal/AdAnalogData;

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method
