.class public abstract Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;
.super Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/IDownloaderService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;,
        Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$InnerBroadcastReceiver;,
        Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;
    }
.end annotation


# static fields
.field public static final ACTION_DOWNLOADS_CHANGED:Ljava/lang/String; = "downloadsChanged"

.field public static final ACTION_DOWNLOAD_COMPLETE:Ljava/lang/String; = "lvldownloader.intent.action.DOWNLOAD_COMPLETE"

.field public static final ACTION_DOWNLOAD_STATUS:Ljava/lang/String; = "lvldownloader.intent.action.DOWNLOAD_STATUS"

.field public static final CONTROL_PAUSED:I = 0x1

.field public static final CONTROL_RUN:I = 0x0

.field public static final DOWNLOAD_REQUIRED:I = 0x2

.field public static final EXTRA_FILE_NAME:Ljava/lang/String; = "downloadId"

.field public static final EXTRA_IS_WIFI_REQUIRED:Ljava/lang/String; = "isWifiRequired"

.field public static final EXTRA_MESSAGE_HANDLER:Ljava/lang/String; = "EMH"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "EPN"

.field public static final EXTRA_PENDING_INTENT:Ljava/lang/String; = "EPI"

.field public static final EXTRA_STATUS_CURRENT_FILE_SIZE:Ljava/lang/String; = "CFS"

.field public static final EXTRA_STATUS_CURRENT_PROGRESS:Ljava/lang/String; = "CFP"

.field public static final EXTRA_STATUS_STATE:Ljava/lang/String; = "ESS"

.field public static final EXTRA_STATUS_TOTAL_PROGRESS:Ljava/lang/String; = "TFP"

.field public static final EXTRA_STATUS_TOTAL_SIZE:Ljava/lang/String; = "ETS"

.field private static final LOG_TAG:Ljava/lang/String; = "LVLDL"

.field public static final LVL_CHECK_REQUIRED:I = 0x1

.field public static final NETWORK_CANNOT_USE_ROAMING:I = 0x5

.field public static final NETWORK_MOBILE:I = 0x1

.field public static final NETWORK_NO_CONNECTION:I = 0x2

.field public static final NETWORK_OK:I = 0x1

.field public static final NETWORK_RECOMMENDED_UNUSABLE_DUE_TO_SIZE:I = 0x4

.field public static final NETWORK_TYPE_DISALLOWED_BY_REQUESTOR:I = 0x6

.field public static final NETWORK_UNUSABLE_DUE_TO_SIZE:I = 0x3

.field public static final NETWORK_WIFI:I = 0x2

.field public static final NO_DOWNLOAD_REQUIRED:I = 0x0

.field private static final SMOOTHING_FACTOR:F = 0.005f

.field public static final STATUS_CANCELED:I = 0x1ea

.field public static final STATUS_CANNOT_RESUME:I = 0x1e9

.field public static final STATUS_DEVICE_NOT_FOUND_ERROR:I = 0x1f3

.field public static final STATUS_FILE_ALREADY_EXISTS_ERROR:I = 0x1e8

.field public static final STATUS_FILE_DELIVERED_INCORRECTLY:I = 0x1e7

.field public static final STATUS_FILE_ERROR:I = 0x1ec

.field public static final STATUS_FORBIDDEN:I = 0x193

.field public static final STATUS_HTTP_DATA_ERROR:I = 0x1ef

.field public static final STATUS_HTTP_EXCEPTION:I = 0x1f0

.field public static final STATUS_INSUFFICIENT_SPACE_ERROR:I = 0x1f2

.field public static final STATUS_PAUSED_BY_APP:I = 0xc1

.field public static final STATUS_PENDING:I = 0xbe

.field public static final STATUS_QUEUED_FOR_WIFI:I = 0xc5

.field public static final STATUS_QUEUED_FOR_WIFI_OR_CELLULAR_PERMISSION:I = 0xc4

.field public static final STATUS_RUNNING:I = 0xc0

.field public static final STATUS_SUCCESS:I = 0xc8

.field public static final STATUS_TOO_MANY_REDIRECTS:I = 0x1f1

.field public static final STATUS_UNHANDLED_HTTP_CODE:I = 0x1ee

.field public static final STATUS_UNHANDLED_REDIRECT:I = 0x1ed

.field public static final STATUS_UNKNOWN_ERROR:I = 0x1eb

.field public static final STATUS_WAITING_FOR_NETWORK:I = 0xc3

.field public static final STATUS_WAITING_TO_RETRY:I = 0xc2

.field private static final TEMP_EXT:Ljava/lang/String; = ".tmp"

.field public static final VISIBILITY_HIDDEN:I = 0x2

.field public static final VISIBILITY_VISIBLE:I = 0x0

.field public static final VISIBILITY_VISIBLE_NOTIFY_COMPLETED:I = 0x1

.field private static sIsRunning:Z


# instance fields
.field private mAlarmIntent:Landroid/app/PendingIntent;

.field mAverageDownloadSpeed:F

.field mBytesAtSample:J

.field mBytesSoFar:J

.field private mClientMessenger:Landroid/os/Messenger;

.field private mConnReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mControl:I

.field mFileCount:I

.field private mIsAtLeast3G:Z

.field private mIsAtLeast4G:Z

.field private mIsCellularConnection:Z

.field private mIsConnected:Z

.field private mIsFailover:Z

.field private mIsRoaming:Z

.field mMillisecondsAtSample:J

.field private mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private final mServiceMessenger:Landroid/os/Messenger;

.field private final mServiceStub:Lcom/google/android/vending/expansion/downloader/IStub;

.field private mStateChanged:Z

.field private mStatus:I

.field mTotalLength:J

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    const-string v0, "LVLDownloadService"

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;-><init>(Ljava/lang/String;)V

    #@5
    invoke-static {p0}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller;->CreateStub(Lcom/google/android/vending/expansion/downloader/IDownloaderService;)Lcom/google/android/vending/expansion/downloader/IStub;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mServiceStub:Lcom/google/android/vending/expansion/downloader/IStub;

    #@b
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mServiceStub:Lcom/google/android/vending/expansion/downloader/IStub;

    #@d
    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/IStub;->getMessenger()Landroid/os/Messenger;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mServiceMessenger:Landroid/os/Messenger;

    #@13
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Landroid/app/PendingIntent;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPendingIntent:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPendingIntent:Landroid/app/PendingIntent;

    #@2
    return-object p1
.end method

.method static synthetic access$100(Z)V
    .registers 1

    #@0
    invoke-static {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V

    #@3
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    #@2
    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mStateChanged:Z

    #@2
    return v0
.end method

.method static synthetic access$400()Z
    .registers 1

    #@0
    invoke-static {}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->isServiceRunning()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private cancelAlarms()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAlarmIntent:Landroid/app/PendingIntent;

    #@2
    if-eqz v0, :cond_15

    #@4
    const-string v0, "alarm"

    #@6
    invoke-virtual {p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/app/AlarmManager;

    #@c
    if-nez v0, :cond_16

    #@e
    const-string v0, "LVLDL"

    #@10
    const-string v1, "couldn\'t get alarm manager"

    #@12
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    :cond_15
    :goto_15
    return-void

    #@16
    :cond_16
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAlarmIntent:Landroid/app/PendingIntent;

    #@18
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@1b
    const/4 v0, 0x0

    #@1c
    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAlarmIntent:Landroid/app/PendingIntent;

    #@1e
    goto :goto_15
.end method

.method private static isLVLCheckRequired(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;Landroid/content/pm/PackageInfo;)Z
    .registers 4

    #@0
    iget v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mVersionCode:I

    #@2
    iget v1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    #@4
    if-eq v0, v1, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method

.method private static isServiceRunning()Z
    .registers 2

    #@0
    const-class v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sget-boolean v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->sIsRunning:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_9

    #@5
    const-class v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    #@7
    monitor-exit v1

    #@8
    return v0

    #@9
    :catchall_9
    move-exception v0

    #@a
    const-class v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public static isStatusClientError(I)Z
    .registers 2

    #@0
    const/16 v0, 0x190

    #@2
    if-lt p0, v0, :cond_a

    #@4
    const/16 v0, 0x1f4

    #@6
    if-ge p0, v0, :cond_a

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

.method public static isStatusCompleted(I)Z
    .registers 2

    #@0
    const/16 v0, 0xc8

    #@2
    if-lt p0, v0, :cond_8

    #@4
    const/16 v0, 0x12c

    #@6
    if-lt p0, v0, :cond_10

    #@8
    :cond_8
    const/16 v0, 0x190

    #@a
    if-lt p0, v0, :cond_12

    #@c
    const/16 v0, 0x258

    #@e
    if-ge p0, v0, :cond_12

    #@10
    :cond_10
    const/4 v0, 0x1

    #@11
    :goto_11
    return v0

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    goto :goto_11
.end method

.method public static isStatusError(I)Z
    .registers 2

    #@0
    const/16 v0, 0x190

    #@2
    if-lt p0, v0, :cond_a

    #@4
    const/16 v0, 0x258

    #@6
    if-ge p0, v0, :cond_a

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

.method public static isStatusInformational(I)Z
    .registers 2

    #@0
    const/16 v0, 0x64

    #@2
    if-lt p0, v0, :cond_a

    #@4
    const/16 v0, 0xc8

    #@6
    if-ge p0, v0, :cond_a

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

.method public static isStatusServerError(I)Z
    .registers 2

    #@0
    const/16 v0, 0x1f4

    #@2
    if-lt p0, v0, :cond_a

    #@4
    const/16 v0, 0x258

    #@6
    if-ge p0, v0, :cond_a

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

.method public static isStatusSuccess(I)Z
    .registers 2

    #@0
    const/16 v0, 0xc8

    #@2
    if-lt p0, v0, :cond_a

    #@4
    const/16 v0, 0x12c

    #@6
    if-ge p0, v0, :cond_a

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

.method private scheduleAlarm(J)V
    .registers 10

    #@0
    const/4 v5, 0x0

    #@1
    const-string v0, "alarm"

    #@3
    invoke-virtual {p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/app/AlarmManager;

    #@9
    if-nez v0, :cond_13

    #@b
    const-string v0, "LVLDL"

    #@d
    const-string v1, "couldn\'t get alarm manager"

    #@f
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    :goto_12
    return-void

    #@13
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getAlarmReceiverClassName()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    new-instance v2, Landroid/content/Intent;

    #@19
    const-string v3, "android.intent.action.DOWNLOAD_WAKEUP"

    #@1b
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1e
    const-string v3, "EPI"

    #@20
    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPendingIntent:Landroid/app/PendingIntent;

    #@22
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@25
    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getPackageName()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@2c
    const/high16 v1, 0x40000000    # 2.0f

    #@2e
    invoke-static {p0, v5, v2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@31
    move-result-object v1

    #@32
    iput-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAlarmIntent:Landroid/app/PendingIntent;

    #@34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@37
    move-result-wide v2

    #@38
    add-long/2addr v2, p1

    #@39
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAlarmIntent:Landroid/app/PendingIntent;

    #@3b
    invoke-virtual {v0, v5, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    #@3e
    goto :goto_12
.end method

.method private static setServiceRunning(Z)V
    .registers 3

    #@0
    const-class v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sput-boolean p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->sIsRunning:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_9

    #@5
    const-class v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    #@7
    monitor-exit v0

    #@8
    return-void

    #@9
    :catchall_9
    move-exception v0

    #@a
    const-class v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public static startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-static {p0, p1, v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public static startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    const/4 v3, 0x2

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@a
    move-result-object v4

    #@b
    invoke-virtual {v0, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@e
    move-result-object v0

    #@f
    invoke-static {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDB(Landroid/content/Context;)Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    #@12
    move-result-object v4

    #@13
    invoke-static {v4, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->isLVLCheckRequired(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;Landroid/content/pm/PackageInfo;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_52

    #@19
    move v0, v1

    #@1a
    :goto_1a
    iget v5, v4, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mStatus:I

    #@1c
    if-nez v5, :cond_3f

    #@1e
    invoke-virtual {v4}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDownloads()[Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@21
    move-result-object v5

    #@22
    if-eqz v5, :cond_38

    #@24
    array-length v6, v5

    #@25
    :goto_25
    if-ge v2, v6, :cond_38

    #@27
    aget-object v7, v5, v2

    #@29
    iget-object v8, v7, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    #@2b
    iget-wide v10, v7, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    #@2d
    invoke-static {p0, v8, v10, v11, v1}, Lcom/google/android/vending/expansion/downloader/Helpers;->doesFileExist(Landroid/content/Context;Ljava/lang/String;JZ)Z

    #@30
    move-result v7

    #@31
    if-nez v7, :cond_3c

    #@33
    const/4 v0, -0x1

    #@34
    invoke-virtual {v4, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateStatus(I)Z

    #@37
    move v0, v3

    #@38
    :cond_38
    :goto_38
    packed-switch v0, :pswitch_data_54

    #@3b
    :goto_3b
    return v0

    #@3c
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    #@3e
    goto :goto_25

    #@3f
    :cond_3f
    move v0, v3

    #@40
    goto :goto_38

    #@41
    :pswitch_41
    new-instance v1, Landroid/content/Intent;

    #@43
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@46
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@49
    const-string v2, "EPI"

    #@4b
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@4e
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    #@51
    goto :goto_3b

    #@52
    :cond_52
    move v0, v2

    #@53
    goto :goto_1a

    #@54
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_41
        :pswitch_41
    .end packed-switch
.end method

.method public static startDownloadServiceIfRequired(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Class;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    const-string v0, "EPI"

    #@2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/PendingIntent;

    #@8
    invoke-static {p0, v0, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method private updateNetworkState(Landroid/net/NetworkInfo;)V
    .registers 10

    #@0
    const/4 v6, -0x1

    #@1
    const/4 v0, 0x0

    #@2
    iget-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsConnected:Z

    #@4
    iget-boolean v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsFailover:Z

    #@6
    iget-boolean v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsCellularConnection:Z

    #@8
    iget-boolean v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsRoaming:Z

    #@a
    iget-boolean v5, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast3G:Z

    #@c
    if-eqz p1, :cond_47

    #@e
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isRoaming()Z

    #@11
    move-result v6

    #@12
    iput-boolean v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsRoaming:Z

    #@14
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    #@17
    move-result v6

    #@18
    iput-boolean v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsFailover:Z

    #@1a
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    #@1d
    move-result v6

    #@1e
    iput-boolean v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsConnected:Z

    #@20
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    #@23
    move-result v6

    #@24
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    #@27
    move-result v7

    #@28
    invoke-direct {p0, v6, v7}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->updateNetworkType(II)V

    #@2b
    :goto_2b
    iget-boolean v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mStateChanged:Z

    #@2d
    if-nez v6, :cond_43

    #@2f
    iget-boolean v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsConnected:Z

    #@31
    if-ne v1, v6, :cond_43

    #@33
    iget-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsFailover:Z

    #@35
    if-ne v2, v1, :cond_43

    #@37
    iget-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsCellularConnection:Z

    #@39
    if-ne v3, v1, :cond_43

    #@3b
    iget-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsRoaming:Z

    #@3d
    if-ne v4, v1, :cond_43

    #@3f
    iget-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast3G:Z

    #@41
    if-eq v5, v1, :cond_44

    #@43
    :cond_43
    const/4 v0, 0x1

    #@44
    :cond_44
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mStateChanged:Z

    #@46
    return-void

    #@47
    :cond_47
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsRoaming:Z

    #@49
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsFailover:Z

    #@4b
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsConnected:Z

    #@4d
    invoke-direct {p0, v6, v6}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->updateNetworkType(II)V

    #@50
    goto :goto_2b
.end method

.method private updateNetworkType(II)V
    .registers 5

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    packed-switch p1, :pswitch_data_30

    #@5
    :goto_5
    :pswitch_5
    return-void

    #@6
    :pswitch_6
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsCellularConnection:Z

    #@8
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast3G:Z

    #@a
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast4G:Z

    #@c
    goto :goto_5

    #@d
    :pswitch_d
    iput-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsCellularConnection:Z

    #@f
    iput-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast3G:Z

    #@11
    iput-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast4G:Z

    #@13
    goto :goto_5

    #@14
    :pswitch_14
    iput-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsCellularConnection:Z

    #@16
    packed-switch p2, :pswitch_data_48

    #@19
    :pswitch_19
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsCellularConnection:Z

    #@1b
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast3G:Z

    #@1d
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast4G:Z

    #@1f
    goto :goto_5

    #@20
    :pswitch_20
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast3G:Z

    #@22
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast4G:Z

    #@24
    goto :goto_5

    #@25
    :pswitch_25
    iput-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast3G:Z

    #@27
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast4G:Z

    #@29
    goto :goto_5

    #@2a
    :pswitch_2a
    iput-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast3G:Z

    #@2c
    iput-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast4G:Z

    #@2e
    goto :goto_5

    #@2f
    nop

    #@30
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_14
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_d
        :pswitch_6
        :pswitch_5
        :pswitch_6
    .end packed-switch

    #@48
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_20
        :pswitch_20
        :pswitch_25
        :pswitch_20
        :pswitch_25
        :pswitch_25
        :pswitch_20
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_20
        :pswitch_19
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
    .end packed-switch
.end method


# virtual methods
.method public generateSaveFile(Ljava/lang/String;J)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;
        }
    .end annotation

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->generateTempSaveFileName(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Ljava/io/File;

    #@6
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@9
    invoke-static {}, Lcom/google/android/vending/expansion/downloader/Helpers;->isExternalMediaMounted()Z

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_31

    #@f
    const-string v1, "LVLDL"

    #@11
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string v3, "External media not mounted: "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;

    #@29
    const/16 v1, 0x1f3

    #@2b
    const-string v2, "external media is not yet mounted"

    #@2d
    invoke-direct {v0, v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;-><init>(ILjava/lang/String;)V

    #@30
    throw v0

    #@31
    :cond_31
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_59

    #@37
    const-string v1, "LVLDL"

    #@39
    new-instance v2, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string v3, "File already exists: "

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;

    #@51
    const/16 v1, 0x1e8

    #@53
    const-string v2, "requested destination file already exists"

    #@55
    invoke-direct {v0, v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;-><init>(ILjava/lang/String;)V

    #@58
    throw v0

    #@59
    :cond_59
    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/Helpers;->getFilesystemRoot(Ljava/lang/String;)Ljava/io/File;

    #@5c
    move-result-object v1

    #@5d
    invoke-static {v1}, Lcom/google/android/vending/expansion/downloader/Helpers;->getAvailableBytes(Ljava/io/File;)J

    #@60
    move-result-wide v2

    #@61
    cmp-long v1, v2, p2

    #@63
    if-gez v1, :cond_6f

    #@65
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;

    #@67
    const/16 v1, 0x1f2

    #@69
    const-string v2, "insufficient space on external storage"

    #@6b
    invoke-direct {v0, v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;-><init>(ILjava/lang/String;)V

    #@6e
    throw v0

    #@6f
    :cond_6f
    return-object v0
.end method

.method public generateTempSaveFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-static {p0}, Lcom/google/android/vending/expansion/downloader/Helpers;->getSaveFilePath(Landroid/content/Context;)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    const-string v1, ".tmp"

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method

.method public abstract getAlarmReceiverClassName()Ljava/lang/String;
.end method

.method public getControl()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mControl:I

    #@2
    return v0
.end method

.method public getLogMessageForNetworkError(I)Ljava/lang/String;
    .registers 3

    #@0
    packed-switch p1, :pswitch_data_16

    #@3
    const-string v0, "unknown error with network connectivity"

    #@5
    :goto_5
    return-object v0

    #@6
    :pswitch_6
    const-string v0, "download size exceeds recommended limit for mobile network"

    #@8
    goto :goto_5

    #@9
    :pswitch_9
    const-string v0, "download size exceeds limit for mobile network"

    #@b
    goto :goto_5

    #@c
    :pswitch_c
    const-string v0, "no network connection available"

    #@e
    goto :goto_5

    #@f
    :pswitch_f
    const-string v0, "download cannot use the current network connection because it is roaming"

    #@11
    goto :goto_5

    #@12
    :pswitch_12
    const-string v0, "download was requested to not use the current network type"

    #@14
    goto :goto_5

    #@15
    nop

    #@16
    :pswitch_data_16
    .packed-switch 0x2
        :pswitch_c
        :pswitch_9
        :pswitch_6
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method public getNetworkAvailabilityState(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;)I
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    iget-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsConnected:Z

    #@3
    if-eqz v1, :cond_18

    #@5
    iget-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsCellularConnection:Z

    #@7
    if-nez v1, :cond_a

    #@9
    :cond_9
    :goto_9
    return v0

    #@a
    :cond_a
    iget v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mFlags:I

    #@c
    iget-boolean v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsRoaming:Z

    #@e
    if-eqz v2, :cond_12

    #@10
    const/4 v0, 0x5

    #@11
    goto :goto_9

    #@12
    :cond_12
    and-int/lit8 v1, v1, 0x1

    #@14
    if-nez v1, :cond_9

    #@16
    const/4 v0, 0x6

    #@17
    goto :goto_9

    #@18
    :cond_18
    const/4 v0, 0x2

    #@19
    goto :goto_9
.end method

.method public abstract getPublicKey()Ljava/lang/String;
.end method

.method public abstract getSALT()[B
.end method

.method public getStatus()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mStatus:I

    #@2
    return v0
.end method

.method public handleFileUpdated(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;ILjava/lang/String;J)Z
    .registers 10

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    invoke-virtual {p1, p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDownloadInfoByFileName(Ljava/lang/String;)Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@5
    move-result-object v2

    #@6
    if-eqz v2, :cond_25

    #@8
    iget-object v2, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    #@a
    if-eqz v2, :cond_25

    #@c
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_13

    #@12
    :cond_12
    :goto_12
    return v0

    #@13
    :cond_13
    new-instance v3, Ljava/io/File;

    #@15
    invoke-static {p0, v2}, Lcom/google/android/vending/expansion/downloader/Helpers;->generateSaveFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1c
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_25

    #@22
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@25
    :cond_25
    invoke-static {p0, p3, p4, p5, v1}, Lcom/google/android/vending/expansion/downloader/Helpers;->doesFileExist(Landroid/content/Context;Ljava/lang/String;JZ)Z

    #@28
    move-result v2

    #@29
    if-nez v2, :cond_12

    #@2b
    move v0, v1

    #@2c
    goto :goto_12
.end method

.method public isWiFi()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsConnected:Z

    #@2
    if-eqz v0, :cond_a

    #@4
    iget-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsCellularConnection:Z

    #@6
    if-nez v0, :cond_a

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

.method public notifyUpdateBytes(J)V
    .registers 12

    #@0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v0

    #@4
    const-wide/16 v2, 0x0

    #@6
    iget-wide v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mMillisecondsAtSample:J

    #@8
    cmp-long v2, v2, v4

    #@a
    if-eqz v2, :cond_6f

    #@c
    iget-wide v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mMillisecondsAtSample:J

    #@e
    iget-wide v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mBytesAtSample:J

    #@10
    sub-long v4, p1, v4

    #@12
    long-to-float v4, v4

    #@13
    sub-long v2, v0, v2

    #@15
    long-to-float v2, v2

    #@16
    div-float v2, v4, v2

    #@18
    const/4 v3, 0x0

    #@19
    iget v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAverageDownloadSpeed:F

    #@1b
    cmpl-float v3, v3, v4

    #@1d
    if-eqz v3, :cond_6c

    #@1f
    const v3, 0x3ba3d70a    # 0.005f

    #@22
    mul-float/2addr v2, v3

    #@23
    const v3, 0x3f7eb852    # 0.995f

    #@26
    iget v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAverageDownloadSpeed:F

    #@28
    mul-float/2addr v3, v4

    #@29
    add-float/2addr v2, v3

    #@2a
    iput v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAverageDownloadSpeed:F

    #@2c
    :goto_2c
    iget-wide v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mTotalLength:J

    #@2e
    sub-long/2addr v2, p1

    #@2f
    long-to-float v2, v2

    #@30
    iget v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAverageDownloadSpeed:F

    #@32
    div-float/2addr v2, v3

    #@33
    float-to-long v6, v2

    #@34
    :goto_34
    iput-wide v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mMillisecondsAtSample:J

    #@36
    iput-wide p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mBytesAtSample:J

    #@38
    const-string v0, "DownloaderService.java"

    #@3a
    new-instance v1, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string v2, ">notifyUpdateBytes:totalBytesSoFar:"

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    const-string v2, " mNotification:"

    #@4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    #@5e
    new-instance v1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    #@60
    iget-wide v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mTotalLength:J

    #@62
    iget v8, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAverageDownloadSpeed:F

    #@64
    move-wide v4, p1

    #@65
    invoke-direct/range {v1 .. v8}, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;-><init>(JJJF)V

    #@68
    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadProgress(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V

    #@6b
    return-void

    #@6c
    :cond_6c
    iput v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAverageDownloadSpeed:F

    #@6e
    goto :goto_2c

    #@6f
    :cond_6f
    const-wide/16 v6, -0x1

    #@71
    goto :goto_34
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    #@0
    const-string v0, "LVLDL"

    #@2
    const-string v1, "Service Bound"

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mServiceMessenger:Landroid/os/Messenger;

    #@9
    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public onClientUpdated(Landroid/os/Messenger;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mClientMessenger:Landroid/os/Messenger;

    #@2
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    #@4
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mClientMessenger:Landroid/os/Messenger;

    #@6
    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->setMessenger(Landroid/os/Messenger;)V

    #@9
    return-void
.end method

.method public onCreate()V
    .registers 4

    #@0
    invoke-super {p0}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->onCreate()V

    #@3
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getPackageManager()Landroid/content/pm/PackageManager;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getPackageName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    const/4 v2, 0x0

    #@c
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPackageInfo:Landroid/content/pm/PackageInfo;

    #@12
    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getPackageManager()Landroid/content/pm/PackageManager;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@1d
    move-result-object v0

    #@1e
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    #@20
    invoke-direct {v1, p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    #@23
    iput-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_25} :catch_26

    #@25
    :goto_25
    return-void

    #@26
    :catch_26
    move-exception v0

    #@27
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    #@2a
    goto :goto_25
.end method

.method public onDestroy()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    #@2
    if-eqz v0, :cond_c

    #@4
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    #@6
    invoke-virtual {p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@9
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    #@c
    :cond_c
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mServiceStub:Lcom/google/android/vending/expansion/downloader/IStub;

    #@e
    invoke-interface {v0, p0}, Lcom/google/android/vending/expansion/downloader/IStub;->disconnect(Landroid/content/Context;)V

    #@11
    invoke-super {p0}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->onDestroy()V

    #@14
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 16

    #@0
    const/16 v12, 0xc8

    #@2
    const/4 v2, 0x1

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V

    #@7
    :try_start_7
    invoke-static {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDB(Landroid/content/Context;)Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    #@a
    move-result-object v3

    #@b
    const-string v0, "EPI"

    #@d
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/app/PendingIntent;

    #@13
    if-eqz v0, :cond_2b

    #@15
    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    #@17
    invoke-virtual {v4, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->setClientIntent(Landroid/app/PendingIntent;)V

    #@1a
    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPendingIntent:Landroid/app/PendingIntent;

    #@1c
    :goto_1c
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPackageInfo:Landroid/content/pm/PackageInfo;

    #@1e
    invoke-static {v3, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->isLVLCheckRequired(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;Landroid/content/pm/PackageInfo;)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_47

    #@24
    invoke-virtual {p0, p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->updateLVL(Landroid/content/Context;)V
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_37

    #@27
    invoke-static {v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V

    #@2a
    :goto_2a
    return-void

    #@2b
    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPendingIntent:Landroid/app/PendingIntent;

    #@2d
    if-eqz v0, :cond_3c

    #@2f
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    #@31
    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPendingIntent:Landroid/app/PendingIntent;

    #@33
    invoke-virtual {v0, v4}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->setClientIntent(Landroid/app/PendingIntent;)V
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_37

    #@36
    goto :goto_1c

    #@37
    :catchall_37
    move-exception v0

    #@38
    invoke-static {v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V

    #@3b
    throw v0

    #@3c
    :cond_3c
    :try_start_3c
    const-string v0, "LVLDL"

    #@3e
    const-string v2, "Downloader started in bad state without notification intent."

    #@40
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_37

    #@43
    invoke-static {v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V

    #@46
    goto :goto_2a

    #@47
    :cond_47
    :try_start_47
    invoke-virtual {v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDownloads()[Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@4a
    move-result-object v4

    #@4b
    const-wide/16 v6, 0x0

    #@4d
    iput-wide v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mBytesSoFar:J

    #@4f
    const-wide/16 v6, 0x0

    #@51
    iput-wide v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mTotalLength:J

    #@53
    array-length v0, v4

    #@54
    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mFileCount:I

    #@56
    array-length v5, v4
    :try_end_57
    .catchall {:try_start_47 .. :try_end_57} :catchall_37

    #@57
    move v0, v1

    #@58
    :goto_58
    if-ge v0, v5, :cond_83

    #@5a
    aget-object v6, v4, v0

    #@5c
    :try_start_5c
    iget v7, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    #@5e
    if-ne v7, v12, :cond_72

    #@60
    iget-object v7, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    #@62
    iget-wide v8, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    #@64
    const/4 v10, 0x1

    #@65
    invoke-static {p0, v7, v8, v9, v10}, Lcom/google/android/vending/expansion/downloader/Helpers;->doesFileExist(Landroid/content/Context;Ljava/lang/String;JZ)Z

    #@68
    move-result v7

    #@69
    if-nez v7, :cond_72

    #@6b
    const/4 v7, 0x0

    #@6c
    iput v7, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    #@6e
    const-wide/16 v8, 0x0

    #@70
    iput-wide v8, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    #@72
    :cond_72
    iget-wide v8, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mTotalLength:J

    #@74
    iget-wide v10, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    #@76
    add-long/2addr v8, v10

    #@77
    iput-wide v8, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mTotalLength:J

    #@79
    iget-wide v8, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mBytesSoFar:J

    #@7b
    iget-wide v6, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    #@7d
    add-long/2addr v6, v8

    #@7e
    iput-wide v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mBytesSoFar:J

    #@80
    add-int/lit8 v0, v0, 0x1

    #@82
    goto :goto_58

    #@83
    :cond_83
    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->pollNetworkState()V

    #@86
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    #@88
    if-nez v0, :cond_a2

    #@8a
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$InnerBroadcastReceiver;

    #@8c
    invoke-direct {v0, p0, p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$InnerBroadcastReceiver;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;Landroid/app/Service;)V

    #@8f
    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    #@91
    new-instance v0, Landroid/content/IntentFilter;

    #@93
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    #@95
    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@98
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    #@9a
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@9d
    iget-object v5, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    #@9f
    invoke-virtual {p0, v5, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@a2
    :cond_a2
    array-length v5, v4
    :try_end_a3
    .catchall {:try_start_5c .. :try_end_a3} :catchall_37

    #@a3
    move v0, v1

    #@a4
    :goto_a4
    if-ge v0, v5, :cond_140

    #@a6
    aget-object v6, v4, v0

    #@a8
    :try_start_a8
    iget-wide v8, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    #@aa
    iget v7, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    #@ac
    if-eq v7, v12, :cond_c3

    #@ae
    new-instance v7, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;

    #@b0
    iget-object v10, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    #@b2
    invoke-direct {v7, v6, p0, v10}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;)V

    #@b5
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->cancelAlarms()V

    #@b8
    const-wide/16 v10, 0x1388

    #@ba
    invoke-direct {p0, v10, v11}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->scheduleAlarm(J)V

    #@bd
    invoke-virtual {v7}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->run()V

    #@c0
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->cancelAlarms()V

    #@c3
    :cond_c3
    invoke-virtual {v3, v6}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateFromDb(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z

    #@c6
    iget v7, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    #@c8
    sparse-switch v7, :sswitch_data_14c

    #@cb
    const/16 v0, 0x13

    #@cd
    move v2, v0

    #@ce
    move v0, v1

    #@cf
    :goto_cf
    if-eqz v0, :cond_13c

    #@d1
    const-wide/32 v4, 0xea60

    #@d4
    invoke-direct {p0, v4, v5}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->scheduleAlarm(J)V

    #@d7
    :goto_d7
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    #@d9
    invoke-virtual {v0, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V
    :try_end_dc
    .catchall {:try_start_a8 .. :try_end_dc} :catchall_37

    #@dc
    invoke-static {v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V

    #@df
    goto/16 :goto_2a

    #@e1
    :sswitch_e1
    :try_start_e1
    invoke-virtual {p0, p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->updateLVL(Landroid/content/Context;)V
    :try_end_e4
    .catchall {:try_start_e1 .. :try_end_e4} :catchall_37

    #@e4
    invoke-static {v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V

    #@e7
    goto/16 :goto_2a

    #@e9
    :sswitch_e9
    :try_start_e9
    iget-wide v10, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mBytesSoFar:J

    #@eb
    iget-wide v6, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    #@ed
    sub-long/2addr v6, v8

    #@ee
    add-long/2addr v6, v10

    #@ef
    iput-wide v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mBytesSoFar:J

    #@f1
    iget-object v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPackageInfo:Landroid/content/pm/PackageInfo;

    #@f3
    iget v6, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    #@f5
    const/4 v7, 0x0

    #@f6
    invoke-virtual {v3, v6, v7}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateMetadata(II)Z

    #@f9
    add-int/lit8 v0, v0, 0x1

    #@fb
    goto :goto_a4

    #@fc
    :sswitch_fc
    const/16 v0, 0xd

    #@fe
    const-wide/16 v4, 0x0

    #@100
    iput-wide v4, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    #@102
    invoke-virtual {v3, v6}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z

    #@105
    move v13, v2

    #@106
    move v2, v0

    #@107
    move v0, v13

    #@108
    goto :goto_cf

    #@109
    :sswitch_109
    const/4 v0, 0x7

    #@10a
    move v2, v0

    #@10b
    move v0, v1

    #@10c
    goto :goto_cf

    #@10d
    :sswitch_10d
    const/4 v0, 0x6

    #@10e
    move v13, v2

    #@10f
    move v2, v0

    #@110
    move v0, v13

    #@111
    goto :goto_cf

    #@112
    :sswitch_112
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mWifiManager:Landroid/net/wifi/WifiManager;

    #@114
    if-eqz v0, :cond_124

    #@116
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mWifiManager:Landroid/net/wifi/WifiManager;

    #@118
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    #@11b
    move-result v0

    #@11c
    if-nez v0, :cond_124

    #@11e
    const/16 v0, 0x8

    #@120
    move v13, v2

    #@121
    move v2, v0

    #@122
    move v0, v13

    #@123
    goto :goto_cf

    #@124
    :cond_124
    const/16 v0, 0x9

    #@126
    move v13, v2

    #@127
    move v2, v0

    #@128
    move v0, v13

    #@129
    goto :goto_cf

    #@12a
    :sswitch_12a
    const/16 v0, 0x12

    #@12c
    move v13, v2

    #@12d
    move v2, v0

    #@12e
    move v0, v13

    #@12f
    goto :goto_cf

    #@130
    :sswitch_130
    const/16 v0, 0x11

    #@132
    move v13, v2

    #@133
    move v2, v0

    #@134
    move v0, v13

    #@135
    goto :goto_cf

    #@136
    :sswitch_136
    const/16 v0, 0xe

    #@138
    move v13, v2

    #@139
    move v2, v0

    #@13a
    move v0, v13

    #@13b
    goto :goto_cf

    #@13c
    :cond_13c
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->cancelAlarms()V

    #@13f
    goto :goto_d7

    #@140
    :cond_140
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    #@142
    const/4 v2, 0x5

    #@143
    invoke-virtual {v0, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V
    :try_end_146
    .catchall {:try_start_e9 .. :try_end_146} :catchall_37

    #@146
    invoke-static {v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V

    #@149
    goto/16 :goto_2a

    #@14b
    nop

    #@14c
    :sswitch_data_14c
    .sparse-switch
        0xc1 -> :sswitch_109
        0xc2 -> :sswitch_10d
        0xc3 -> :sswitch_10d
        0xc4 -> :sswitch_112
        0xc5 -> :sswitch_112
        0xc8 -> :sswitch_e9
        0x193 -> :sswitch_e1
        0x1e7 -> :sswitch_fc
        0x1ea -> :sswitch_12a
        0x1f2 -> :sswitch_130
        0x1f3 -> :sswitch_136
    .end sparse-switch
.end method

.method pollNetworkState()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    #@2
    if-nez v0, :cond_e

    #@4
    const-string v0, "connectivity"

    #@6
    invoke-virtual {p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/net/ConnectivityManager;

    #@c
    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    #@e
    :cond_e
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mWifiManager:Landroid/net/wifi/WifiManager;

    #@10
    if-nez v0, :cond_1c

    #@12
    const-string v0, "wifi"

    #@14
    invoke-virtual {p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/net/wifi/WifiManager;

    #@1a
    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mWifiManager:Landroid/net/wifi/WifiManager;

    #@1c
    :cond_1c
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    #@1e
    if-nez v0, :cond_28

    #@20
    const-string v0, "LVLDL"

    #@22
    const-string v1, "couldn\'t get connectivity manager to poll network state"

    #@24
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    :goto_27
    return-void

    #@28
    :cond_28
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    #@2a
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    #@2d
    move-result-object v0

    #@2e
    invoke-direct {p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->updateNetworkState(Landroid/net/NetworkInfo;)V

    #@31
    goto :goto_27
.end method

.method public requestAbortDownload()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mControl:I

    #@3
    const/16 v0, 0x1ea

    #@5
    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mStatus:I

    #@7
    return-void
.end method

.method public requestContinueDownload()V
    .registers 4

    #@0
    iget v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mControl:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_8

    #@5
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mControl:I

    #@8
    :cond_8
    new-instance v0, Landroid/content/Intent;

    #@a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@11
    const-string v1, "EPI"

    #@13
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPendingIntent:Landroid/app/PendingIntent;

    #@15
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@18
    invoke-virtual {p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    #@1b
    return-void
.end method

.method public requestDownloadStatus()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    #@2
    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->resendState()V

    #@5
    return-void
.end method

.method public requestPauseDownload()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mControl:I

    #@3
    const/16 v0, 0xc1

    #@5
    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mStatus:I

    #@7
    return-void
.end method

.method public setDownloadFlags(I)V
    .registers 3

    #@0
    invoke-static {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDB(Landroid/content/Context;)Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateFlags(I)Z

    #@7
    return-void
.end method

.method protected shouldStop()Z
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDB(Landroid/content/Context;)Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    #@3
    move-result-object v0

    #@4
    iget v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mStatus:I

    #@6
    if-nez v0, :cond_a

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

.method public updateLVL(Landroid/content/Context;)V
    .registers 6

    #@0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Landroid/os/Handler;

    #@6
    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@9
    move-result-object v2

    #@a
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@d
    new-instance v2, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    #@f
    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPendingIntent:Landroid/app/PendingIntent;

    #@11
    invoke-direct {v2, p0, v0, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;Landroid/content/Context;Landroid/app/PendingIntent;)V

    #@14
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@17
    return-void
.end method
