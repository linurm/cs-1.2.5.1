.class public Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;,
        Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$RetryDownload;,
        Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;,
        Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

.field private mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

.field private final mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

.field private mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mContext:Landroid/content/Context;

    #@5
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@7
    iput-object p2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    #@9
    iput-object p3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    #@b
    invoke-static {p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDB(Landroid/content/Context;)Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    #@11
    new-instance v0, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string v1, "APKXDL (Linux; U; Android "

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    const-string v1, ";"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    const-string v1, "; "

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    const-string v1, "/"

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    const-string v1, ")"

    #@4e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    invoke-virtual {p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getPackageName()Ljava/lang/String;

    #@55
    move-result-object v1

    #@56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v0

    #@5e
    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mUserAgent:Ljava/lang/String;

    #@60
    return-void
.end method

.method private addRequestHeaders(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;Lorg/apache/http/client/methods/HttpGet;)V
    .registers 6

    #@0
    iget-boolean v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mContinuingDownload:Z

    #@2
    if-eqz v0, :cond_2f

    #@4
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    #@6
    if-eqz v0, :cond_f

    #@8
    const-string v0, "If-Match"

    #@a
    iget-object v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    #@c
    invoke-virtual {p2, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    :cond_f
    const-string v0, "Range"

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string v2, "bytes="

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    iget v2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    const-string v2, "-"

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {p2, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    #@2f
    :cond_2f
    return-void
.end method

.method private cannotResume(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)Z
    .registers 3

    #@0
    iget v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    #@2
    if-lez v0, :cond_a

    #@4
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

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

.method private checkConnectivity(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    #@0
    const/16 v2, 0xc3

    #@2
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    #@4
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    #@6
    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getNetworkAvailabilityState(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;)I

    #@9
    move-result v0

    #@a
    packed-switch v0, :pswitch_data_32

    #@d
    :pswitch_d
    return-void

    #@e
    :pswitch_e
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    #@10
    const-string v1, "waiting for network to return"

    #@12
    invoke-direct {v0, p0, v2, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    #@15
    throw v0

    #@16
    :pswitch_16
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    #@18
    const/16 v1, 0xc4

    #@1a
    const-string v2, "waiting for wifi or for download over cellular to be authorized"

    #@1c
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    #@1f
    throw v0

    #@20
    :pswitch_20
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    #@22
    const-string v1, "roaming is not allowed"

    #@24
    invoke-direct {v0, p0, v2, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    #@27
    throw v0

    #@28
    :pswitch_28
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    #@2a
    const/16 v1, 0xc5

    #@2c
    const-string v2, "waiting for wifi"

    #@2e
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    #@31
    throw v0

    #@32
    :pswitch_data_32
    .packed-switch 0x2
        :pswitch_e
        :pswitch_28
        :pswitch_d
        :pswitch_20
        :pswitch_16
    .end packed-switch
.end method

.method private checkPausedOrCanceled(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    #@2
    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getControl()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-ne v0, v1, :cond_12

    #@9
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    #@b
    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getStatus()I

    #@e
    move-result v0

    #@f
    packed-switch v0, :pswitch_data_22

    #@12
    :cond_12
    return-void

    #@13
    :pswitch_13
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    #@15
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    #@17
    invoke-virtual {v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getStatus()I

    #@1a
    move-result v1

    #@1b
    const-string v2, "download paused"

    #@1d
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    #@20
    throw v0

    #@21
    nop

    #@22
    :pswitch_data_22
    .packed-switch 0xc1
        :pswitch_13
    .end packed-switch
.end method

.method private cleanupDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;I)V
    .registers 5

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->closeDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V

    #@3
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    #@5
    if-eqz v0, :cond_1a

    #@7
    invoke-static {p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->isStatusError(I)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1a

    #@d
    new-instance v0, Ljava/io/File;

    #@f
    iget-object v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    #@11
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@14
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@17
    const/4 v0, 0x0

    #@18
    iput-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    #@1a
    :cond_1a
    return-void
.end method

.method private closeDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    #@2
    if-eqz v0, :cond_c

    #@4
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    #@6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    #@9
    const/4 v0, 0x0

    #@a
    iput-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    #@c
    :cond_c
    :goto_c
    return-void

    #@d
    :catch_d
    move-exception v0

    #@e
    goto :goto_c
.end method

.method private executeDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;Lorg/apache/http/client/methods/HttpGet;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;,
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$RetryDownload;
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$1;)V

    #@6
    const/16 v1, 0x1000

    #@8
    new-array v1, v1, [B

    #@a
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->checkPausedOrCanceled(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V

    #@d
    invoke-direct {p0, p1, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->setupDestinationFile(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)V

    #@10
    invoke-direct {p0, v0, p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->addRequestHeaders(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;Lorg/apache/http/client/methods/HttpGet;)V

    #@13
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->checkConnectivity(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V

    #@16
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    #@18
    const/4 v3, 0x3

    #@19
    invoke-virtual {v2, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V

    #@1c
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->sendRequest(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->handleExceptionalStatus(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V

    #@23
    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->processResponseHeaders(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V

    #@26
    invoke-direct {p0, p1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->openResponseEntity(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;

    #@29
    move-result-object v2

    #@2a
    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    #@2c
    const/4 v4, 0x4

    #@2d
    invoke-virtual {v3, v4}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V

    #@30
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->transferData(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;[BLjava/io/InputStream;)V

    #@33
    return-void
.end method

.method private finalizeDestinationFile(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->syncDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V

    #@3
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    #@5
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    #@7
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@9
    iget-object v2, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    #@b
    invoke-static {v1, v2}, Lcom/google/android/vending/expansion/downloader/Helpers;->generateSaveFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    iget-object v2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    #@11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_51

    #@17
    new-instance v2, Ljava/io/File;

    #@19
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1c
    new-instance v0, Ljava/io/File;

    #@1e
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@21
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@23
    iget-wide v4, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    #@25
    const-wide/16 v6, -0x1

    #@27
    cmp-long v1, v4, v6

    #@29
    if-eqz v1, :cond_47

    #@2b
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@2d
    iget-wide v4, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    #@2f
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@31
    iget-wide v6, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    #@33
    cmp-long v1, v4, v6

    #@35
    if-nez v1, :cond_47

    #@37
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@3a
    move-result v0

    #@3b
    if-nez v0, :cond_51

    #@3d
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    #@3f
    const/16 v1, 0x1ec

    #@41
    const-string v2, "unable to finalize destination file"

    #@43
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    #@46
    throw v0

    #@47
    :cond_47
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    #@49
    const/16 v1, 0x1e7

    #@4b
    const-string v2, "file delivered with incorrect size. probably due to network not browser configured"

    #@4d
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    #@50
    throw v0

    #@51
    :cond_51
    return-void
.end method

.method private getFinalStatusForHttpError(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)I
    .registers 5

    #@0
    const/4 v2, 0x1

    #@1
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    #@3
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    #@5
    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getNetworkAvailabilityState(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;)I

    #@8
    move-result v0

    #@9
    if-eq v0, v2, :cond_e

    #@b
    const/16 v0, 0xc3

    #@d
    :goto_d
    return v0

    #@e
    :cond_e
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@10
    iget v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    #@12
    const/4 v1, 0x5

    #@13
    if-ge v0, v1, :cond_1a

    #@15
    iput-boolean v2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mCountRetry:Z

    #@17
    const/16 v0, 0xc2

    #@19
    goto :goto_d

    #@1a
    :cond_1a
    const-string v0, "LVLDL"

    #@1c
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string v2, "reached max retries for "

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@29
    iget v2, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    const/16 v0, 0x1ef

    #@38
    goto :goto_d
.end method

.method private handleEndOfStream(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@2
    iget v1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    #@4
    int-to-long v2, v1

    #@5
    iput-wide v2, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    #@7
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    #@9
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@b
    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z

    #@e
    iget-object v0, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    #@10
    if-eqz v0, :cond_2f

    #@12
    iget v0, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    #@14
    iget-object v1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    #@16
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@19
    move-result v1

    #@1a
    if-eq v0, v1, :cond_2f

    #@1c
    const/4 v0, 0x1

    #@1d
    :goto_1d
    if-eqz v0, :cond_3d

    #@1f
    invoke-direct {p0, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->cannotResume(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_31

    #@25
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    #@27
    const/16 v1, 0x1e9

    #@29
    const-string v2, "mismatched content length"

    #@2b
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    #@2e
    throw v0

    #@2f
    :cond_2f
    const/4 v0, 0x0

    #@30
    goto :goto_1d

    #@31
    :cond_31
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    #@33
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->getFinalStatusForHttpError(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)I

    #@36
    move-result v1

    #@37
    const-string v2, "closed socket before end of file"

    #@39
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    #@3c
    throw v0

    #@3d
    :cond_3d
    return-void
.end method

.method private handleExceptionalStatus(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;,
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$RetryDownload;
        }
    .end annotation

    #@0
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    #@7
    move-result v1

    #@8
    const/16 v0, 0x1f7

    #@a
    if-ne v1, v0, :cond_16

    #@c
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@e
    iget v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    #@10
    const/4 v2, 0x5

    #@11
    if-ge v0, v2, :cond_16

    #@13
    invoke-direct {p0, p1, p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->handleServiceUnavailable(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lorg/apache/http/HttpResponse;)V

    #@16
    :cond_16
    const/16 v0, 0x12d

    #@18
    if-eq v1, v0, :cond_26

    #@1a
    const/16 v0, 0x12e

    #@1c
    if-eq v1, v0, :cond_26

    #@1e
    const/16 v0, 0x12f

    #@20
    if-eq v1, v0, :cond_26

    #@22
    const/16 v0, 0x133

    #@24
    if-ne v1, v0, :cond_29

    #@26
    :cond_26
    invoke-direct {p0, p1, p3, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->handleRedirect(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lorg/apache/http/HttpResponse;I)V

    #@29
    :cond_29
    iget-boolean v0, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mContinuingDownload:Z

    #@2b
    if-eqz v0, :cond_35

    #@2d
    const/16 v0, 0xce

    #@2f
    :goto_2f
    if-eq v1, v0, :cond_38

    #@31
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->handleOtherStatus(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;I)V

    #@34
    :goto_34
    return-void

    #@35
    :cond_35
    const/16 v0, 0xc8

    #@37
    goto :goto_2f

    #@38
    :cond_38
    const/4 v0, 0x0

    #@39
    iput v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRedirectCount:I

    #@3b
    goto :goto_34
.end method

.method private handleOtherStatus(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    #@0
    invoke-static {p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->isStatusError(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_20

    #@6
    move v0, p3

    #@7
    :goto_7
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string v3, "http error "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    #@1f
    throw v1

    #@20
    :cond_20
    const/16 v0, 0x12c

    #@22
    if-lt p3, v0, :cond_2b

    #@24
    const/16 v0, 0x190

    #@26
    if-ge p3, v0, :cond_2b

    #@28
    const/16 v0, 0x1ed

    #@2a
    goto :goto_7

    #@2b
    :cond_2b
    iget-boolean v0, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mContinuingDownload:Z

    #@2d
    if-eqz v0, :cond_36

    #@2f
    const/16 v0, 0xc8

    #@31
    if-ne p3, v0, :cond_36

    #@33
    const/16 v0, 0x1e9

    #@35
    goto :goto_7

    #@36
    :cond_36
    const/16 v0, 0x1ee

    #@38
    goto :goto_7
.end method

.method private handleRedirect(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lorg/apache/http/HttpResponse;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;,
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$RetryDownload;
        }
    .end annotation

    #@0
    iget v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRedirectCount:I

    #@2
    const/4 v1, 0x5

    #@3
    if-lt v0, v1, :cond_f

    #@5
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    #@7
    const/16 v1, 0x1f1

    #@9
    const-string v2, "too many redirects"

    #@b
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    #@e
    throw v0

    #@f
    :cond_f
    const-string v0, "Location"

    #@11
    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    #@14
    move-result-object v0

    #@15
    if-nez v0, :cond_18

    #@17
    return-void

    #@18
    :cond_18
    :try_start_18
    new-instance v1, Ljava/net/URI;

    #@1a
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@1c
    iget-object v2, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mUri:Ljava/lang/String;

    #@1e
    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    #@21
    new-instance v2, Ljava/net/URI;

    #@23
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    #@2a
    invoke-virtual {v1, v2}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_31
    .catch Ljava/net/URISyntaxException; {:try_start_18 .. :try_end_31} :catch_4b

    #@31
    move-result-object v0

    #@32
    iget v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRedirectCount:I

    #@34
    add-int/lit8 v1, v1, 0x1

    #@36
    iput v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRedirectCount:I

    #@38
    iput-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    #@3a
    const/16 v1, 0x12d

    #@3c
    if-eq p3, v1, :cond_42

    #@3e
    const/16 v1, 0x12f

    #@40
    if-ne p3, v1, :cond_44

    #@42
    :cond_42
    iput-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mNewUri:Ljava/lang/String;

    #@44
    :cond_44
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$RetryDownload;

    #@46
    const/4 v1, 0x0

    #@47
    invoke-direct {v0, p0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$RetryDownload;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$1;)V

    #@4a
    throw v0

    #@4b
    :catch_4b
    move-exception v0

    #@4c
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    #@4e
    const/16 v1, 0x1ef

    #@50
    const-string v2, "Couldn\'t resolve redirect URI"

    #@52
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    #@55
    throw v0
.end method

.method private handleServiceUnavailable(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lorg/apache/http/HttpResponse;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    #@0
    const v2, 0x15180

    #@3
    const/16 v1, 0x1e

    #@5
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mCountRetry:Z

    #@8
    const-string v0, "Retry-After"

    #@a
    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    #@d
    move-result-object v0

    #@e
    if-eqz v0, :cond_21

    #@10
    :try_start_10
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@17
    move-result v0

    #@18
    iput v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    #@1a
    iget v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    #@1c
    if-gez v0, :cond_2b

    #@1e
    const/4 v0, 0x0

    #@1f
    iput v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_21} :catch_47

    #@21
    :cond_21
    :goto_21
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    #@23
    const/16 v1, 0xc2

    #@25
    const-string v2, "got 503 Service Unavailable, will retry later"

    #@27
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    #@2a
    throw v0

    #@2b
    :cond_2b
    :try_start_2b
    iget v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    #@2d
    if-ge v0, v1, :cond_49

    #@2f
    const/16 v0, 0x1e

    #@31
    iput v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    #@33
    :cond_33
    :goto_33
    iget v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    #@35
    sget-object v1, Lcom/google/android/vending/expansion/downloader/Helpers;->sRandom:Ljava/util/Random;

    #@37
    const/16 v2, 0x1f

    #@39
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    #@3c
    move-result v1

    #@3d
    add-int/2addr v0, v1

    #@3e
    iput v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    #@40
    iget v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    #@42
    mul-int/lit16 v0, v0, 0x3e8

    #@44
    iput v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    #@46
    goto :goto_21

    #@47
    :catch_47
    move-exception v0

    #@48
    goto :goto_21

    #@49
    :cond_49
    iget v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    #@4b
    if-le v0, v2, :cond_33

    #@4d
    const v0, 0x15180

    #@50
    iput v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I
    :try_end_52
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_52} :catch_47

    #@52
    goto :goto_33
.end method

.method private static final isLocalHost(Ljava/lang/String;)Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    :cond_3
    :goto_3
    return v0

    #@4
    :cond_4
    :try_start_4
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    if-eqz v1, :cond_3

    #@e
    const-string v2, "localhost"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@13
    move-result v2

    #@14
    if-nez v2, :cond_26

    #@16
    const-string v2, "127.0.0.1"

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-nez v2, :cond_26

    #@1e
    const-string v2, "[::1]"

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_23} :catch_28

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_3

    #@26
    :cond_26
    const/4 v0, 0x1

    #@27
    goto :goto_3

    #@28
    :catch_28
    move-exception v1

    #@29
    goto :goto_3
.end method

.method private logNetworkState()V
    .registers 4

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "Net "

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v1

    #@b
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    #@d
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    #@f
    invoke-virtual {v0, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getNetworkAvailabilityState(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;)I

    #@12
    move-result v0

    #@13
    const/4 v2, 0x1

    #@14
    if-ne v0, v2, :cond_26

    #@16
    const-string v0, "Up"

    #@18
    :goto_18
    const-string v2, "LVLDL"

    #@1a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    return-void

    #@26
    :cond_26
    const-string v0, "Down"

    #@28
    goto :goto_18
.end method

.method private notifyDownloadCompleted(IZIIZLjava/lang/String;)V
    .registers 8

    #@0
    invoke-direct/range {p0 .. p6}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->updateDownloadDatabase(IZIIZLjava/lang/String;)V

    #@3
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->isStatusCompleted(I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_9

    #@9
    :cond_9
    return-void
.end method

.method private openResponseEntity(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    #@0
    :try_start_0
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    :catch_9
    move-exception v0

    #@a
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->logNetworkState()V

    #@d
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    #@f
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->getFinalStatusForHttpError(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)I

    #@12
    move-result v2

    #@13
    new-instance v3, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string v4, "while getting entity: "

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-direct {v1, p0, v2, v3, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    #@2d
    throw v1
.end method

.method private processResponseHeaders(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    #@0
    iget-boolean v0, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mContinuingDownload:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    :goto_4
    return-void

    #@5
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->readResponseHeaders(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V

    #@8
    :try_start_8
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    #@a
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@c
    iget-object v1, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    #@e
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@10
    iget-wide v2, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    #@12
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->generateSaveFile(Ljava/lang/String;J)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;
    :try_end_18
    .catch Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError; {:try_start_8 .. :try_end_18} :catch_28

    #@18
    :try_start_18
    new-instance v0, Ljava/io/FileOutputStream;

    #@1a
    iget-object v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    #@1c
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    #@1f
    iput-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_21} :catch_33

    #@21
    :cond_21
    :goto_21
    invoke-direct {p0, p1, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->updateDatabaseFromHeaders(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)V

    #@24
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->checkConnectivity(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V

    #@27
    goto :goto_4

    #@28
    :catch_28
    move-exception v0

    #@29
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    #@2b
    iget v2, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;->mStatus:I

    #@2d
    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;->mMessage:Ljava/lang/String;

    #@2f
    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    #@32
    throw v1

    #@33
    :catch_33
    move-exception v0

    #@34
    new-instance v1, Ljava/io/File;

    #@36
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    #@38
    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/Helpers;->getSaveFilePath(Landroid/content/Context;)Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@3f
    :try_start_3f
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    #@42
    move-result v1

    #@43
    if-eqz v1, :cond_21

    #@45
    new-instance v1, Ljava/io/FileOutputStream;

    #@47
    iget-object v2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    #@49
    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    #@4c
    iput-object v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_4e} :catch_4f

    #@4e
    goto :goto_21

    #@4f
    :catch_4f
    move-exception v1

    #@50
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    #@52
    const/16 v2, 0x1ec

    #@54
    new-instance v3, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string v4, "while opening destination file: "

    #@5b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v3

    #@67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v3

    #@6b
    invoke-direct {v1, p0, v2, v3, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    #@6e
    throw v1
.end method

.method private readFromResponse(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;[BLjava/io/InputStream;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p4, p3}, Ljava/io/InputStream;->read([B)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    #@3
    move-result v0

    #@4
    return v0

    #@5
    :catch_5
    move-exception v0

    #@6
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->logNetworkState()V

    #@9
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@b
    iget v2, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    #@d
    int-to-long v2, v2

    #@e
    iput-wide v2, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    #@10
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    #@12
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@14
    invoke-virtual {v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z

    #@17
    invoke-direct {p0, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->cannotResume(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_42

    #@1d
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    #@1f
    const/16 v2, 0x1e9

    #@21
    new-instance v3, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string v4, "while reading response: "

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    const-string v4, ", can\'t resume interrupted download with no ETag"

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-direct {v1, p0, v2, v3, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    #@41
    throw v1

    #@42
    :cond_42
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    #@44
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->getFinalStatusForHttpError(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)I

    #@47
    move-result v2

    #@48
    new-instance v3, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string v4, "while reading response: "

    #@4f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v3

    #@5f
    invoke-direct {v1, p0, v2, v3, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    #@62
    throw v1
.end method

.method private readResponseHeaders(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    #@0
    const-string v0, "Content-Disposition"

    #@2
    invoke-interface {p3, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_e

    #@8
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderContentDisposition:Ljava/lang/String;

    #@e
    :cond_e
    const-string v0, "Content-Location"

    #@10
    invoke-interface {p3, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    #@13
    move-result-object v0

    #@14
    if-eqz v0, :cond_1c

    #@16
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderContentLocation:Ljava/lang/String;

    #@1c
    :cond_1c
    const-string v0, "ETag"

    #@1e
    invoke-interface {p3, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    #@21
    move-result-object v0

    #@22
    if-eqz v0, :cond_2a

    #@24
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    #@2a
    :cond_2a
    const/4 v0, 0x0

    #@2b
    const-string v1, "Transfer-Encoding"

    #@2d
    invoke-interface {p3, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    #@30
    move-result-object v1

    #@31
    if-eqz v1, :cond_37

    #@33
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    :cond_37
    const-string v1, "Content-Type"

    #@39
    invoke-interface {p3, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    #@3c
    move-result-object v1

    #@3d
    if-eqz v1, :cond_55

    #@3f
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    const-string v2, "application/vnd.android.obb"

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v1

    #@49
    if-nez v1, :cond_55

    #@4b
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    #@4d
    const/16 v1, 0x1e7

    #@4f
    const-string v2, "file delivered with incorrect Mime type"

    #@51
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    #@54
    throw v0

    #@55
    :cond_55
    if-nez v0, :cond_80

    #@57
    const-string v1, "Content-Length"

    #@59
    invoke-interface {p3, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    #@5c
    move-result-object v1

    #@5d
    if-eqz v1, :cond_80

    #@5f
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    iput-object v1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    #@65
    iget-object v1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    #@67
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@6a
    move-result-wide v2

    #@6b
    const-wide/16 v4, -0x1

    #@6d
    cmp-long v1, v2, v4

    #@6f
    if-eqz v1, :cond_80

    #@71
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@73
    iget-wide v4, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    #@75
    cmp-long v1, v2, v4

    #@77
    if-eqz v1, :cond_80

    #@79
    const-string v1, "LVLDL"

    #@7b
    const-string v2, "Incorrect file size delivered."

    #@7d
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@80
    :cond_80
    iget-object v1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    #@82
    if-nez v1, :cond_9b

    #@84
    if-eqz v0, :cond_8e

    #@86
    const-string v1, "chunked"

    #@88
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@8b
    move-result v0

    #@8c
    if-nez v0, :cond_9b

    #@8e
    :cond_8e
    const/4 v0, 0x1

    #@8f
    :goto_8f
    if-eqz v0, :cond_9d

    #@91
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    #@93
    const/16 v1, 0x1ef

    #@95
    const-string v2, "can\'t know size of download, giving up"

    #@97
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    #@9a
    throw v0

    #@9b
    :cond_9b
    const/4 v0, 0x0

    #@9c
    goto :goto_8f

    #@9d
    :cond_9d
    return-void
.end method

.method private reportProgress(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)V
    .registers 9

    #@0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    iget v2, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    #@6
    iget v3, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesNotified:I

    #@8
    sub-int/2addr v2, v3

    #@9
    const/16 v3, 0x1000

    #@b
    if-le v2, v3, :cond_38

    #@d
    iget-wide v2, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mTimeLastNotification:J

    #@f
    sub-long v2, v0, v2

    #@11
    const-wide/16 v4, 0x3e8

    #@13
    cmp-long v2, v2, v4

    #@15
    if-lez v2, :cond_38

    #@17
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@19
    iget v3, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    #@1b
    int-to-long v4, v3

    #@1c
    iput-wide v4, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    #@1e
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    #@20
    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@22
    invoke-virtual {v2, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownloadCurrentBytes(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)V

    #@25
    iget v2, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    #@27
    iput v2, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesNotified:I

    #@29
    iput-wide v0, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mTimeLastNotification:J

    #@2b
    iget v0, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesThisSession:I

    #@2d
    int-to-long v0, v0

    #@2e
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    #@30
    iget-wide v2, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mBytesSoFar:J

    #@32
    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    #@34
    add-long/2addr v0, v2

    #@35
    invoke-virtual {v4, v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->notifyUpdateBytes(J)V

    #@38
    :cond_38
    return-void
.end method

.method private sendRequest(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p2, p3}, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_25

    #@3
    move-result-object v0

    #@4
    return-object v0

    #@5
    :catch_5
    move-exception v0

    #@6
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    #@8
    const/16 v2, 0x1ef

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string v4, "while trying to execute request: "

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-direct {v1, p0, v2, v3, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    #@24
    throw v1

    #@25
    :catch_25
    move-exception v0

    #@26
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->logNetworkState()V

    #@29
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    #@2b
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->getFinalStatusForHttpError(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)I

    #@2e
    move-result v2

    #@2f
    new-instance v3, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string v4, "while trying to execute request: "

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    invoke-direct {v1, p0, v2, v3, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    #@49
    throw v1
.end method

.method private setupDestinationFile(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    #@0
    const/16 v7, 0x1ec

    #@2
    const/4 v6, 0x1

    #@3
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    #@5
    if-eqz v0, :cond_34

    #@7
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    #@9
    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/Helpers;->isFilenameValid(Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_17

    #@f
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    #@11
    const-string v1, "found invalid internal destination filename"

    #@13
    invoke-direct {v0, p0, v7, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    #@16
    throw v0

    #@17
    :cond_17
    new-instance v0, Ljava/io/File;

    #@19
    iget-object v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    #@1b
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1e
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_34

    #@24
    invoke-virtual {v0}, Ljava/io/File;->length()J

    #@27
    move-result-wide v2

    #@28
    const-wide/16 v4, 0x0

    #@2a
    cmp-long v1, v2, v4

    #@2c
    if-nez v1, :cond_3c

    #@2e
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@31
    const/4 v0, 0x0

    #@32
    iput-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    #@34
    :cond_34
    :goto_34
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    #@36
    if-eqz v0, :cond_3b

    #@38
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->closeDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V

    #@3b
    :cond_3b
    return-void

    #@3c
    :cond_3c
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@3e
    iget-object v1, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mETag:Ljava/lang/String;

    #@40
    if-nez v1, :cond_4f

    #@42
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@45
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    #@47
    const/16 v1, 0x1e9

    #@49
    const-string v2, "Trying to resume a download that can\'t be resumed"

    #@4b
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    #@4e
    throw v0

    #@4f
    :cond_4f
    :try_start_4f
    new-instance v0, Ljava/io/FileOutputStream;

    #@51
    iget-object v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    #@53
    const/4 v4, 0x1

    #@54
    invoke-direct {v0, v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    #@57
    iput-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;
    :try_end_59
    .catch Ljava/io/FileNotFoundException; {:try_start_4f .. :try_end_59} :catch_79

    #@59
    long-to-int v0, v2

    #@5a
    iput v0, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    #@5c
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@5e
    iget-wide v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    #@60
    const-wide/16 v2, -0x1

    #@62
    cmp-long v0, v0, v2

    #@64
    if-eqz v0, :cond_70

    #@66
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@68
    iget-wide v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    #@6a
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@6d
    move-result-object v0

    #@6e
    iput-object v0, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    #@70
    :cond_70
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@72
    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mETag:Ljava/lang/String;

    #@74
    iput-object v0, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    #@76
    iput-boolean v6, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mContinuingDownload:Z

    #@78
    goto :goto_34

    #@79
    :catch_79
    move-exception v0

    #@7a
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    #@7c
    new-instance v2, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    const-string v3, "while opening destination for resuming: "

    #@83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v2

    #@87
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    #@8a
    move-result-object v3

    #@8b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v2

    #@8f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v2

    #@93
    invoke-direct {v1, p0, v7, v2, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    #@96
    throw v1
.end method

.method private syncDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V
    .registers 7

    #@0
    const/4 v2, 0x0

    #@1
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    #@3
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    #@5
    const/4 v3, 0x1

    #@6
    invoke-direct {v1, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_9} :catch_28
    .catch Ljava/io/SyncFailedException; {:try_start_1 .. :try_end_9} :catch_66
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_a6
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_9} :catch_e7
    .catchall {:try_start_1 .. :try_end_9} :catchall_12f

    #@9
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_10} :catch_124
    .catch Ljava/io/SyncFailedException; {:try_start_9 .. :try_end_10} :catch_127
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10} :catch_12a
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_10} :catch_12d
    .catchall {:try_start_9 .. :try_end_10} :catchall_10b

    #@10
    if-eqz v1, :cond_15

    #@12
    :try_start_12
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_15} :catch_1f

    #@15
    :cond_15
    :goto_15
    return-void

    #@16
    :catch_16
    move-exception v0

    #@17
    const-string v1, "LVLDL"

    #@19
    const-string v2, "IOException while closing synced file: "

    #@1b
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1e
    goto :goto_15

    #@1f
    :catch_1f
    move-exception v0

    #@20
    const-string v1, "LVLDL"

    #@22
    const-string v2, "exception while closing file: "

    #@24
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@27
    goto :goto_15

    #@28
    :catch_28
    move-exception v0

    #@29
    move-object v1, v2

    #@2a
    :goto_2a
    :try_start_2a
    new-instance v2, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string v3, "LVLDL"

    #@31
    const-string v4, "file "

    #@33
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    iget-object v4, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    #@39
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    const-string v4, " not found: "

    #@3f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_2a .. :try_end_4e} :catchall_10b

    #@4e
    if-eqz v1, :cond_15

    #@50
    :try_start_50
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54
    .catch Ljava/lang/RuntimeException; {:try_start_50 .. :try_end_53} :catch_5d

    #@53
    goto :goto_15

    #@54
    :catch_54
    move-exception v0

    #@55
    const-string v1, "LVLDL"

    #@57
    const-string v2, "IOException while closing synced file: "

    #@59
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5c
    goto :goto_15

    #@5d
    :catch_5d
    move-exception v0

    #@5e
    const-string v1, "LVLDL"

    #@60
    const-string v2, "exception while closing file: "

    #@62
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@65
    goto :goto_15

    #@66
    :catch_66
    move-exception v0

    #@67
    move-object v1, v2

    #@68
    :goto_68
    :try_start_68
    new-instance v2, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string v3, "LVLDL"

    #@6f
    const-string v4, "file "

    #@71
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v2

    #@75
    iget-object v4, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    #@77
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v2

    #@7b
    const-string v4, " sync failed: "

    #@7d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v2

    #@81
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v0

    #@85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v0

    #@89
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catchall {:try_start_68 .. :try_end_8c} :catchall_132

    #@8c
    if-eqz v1, :cond_15

    #@8e
    :try_start_8e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_92
    .catch Ljava/lang/RuntimeException; {:try_start_8e .. :try_end_91} :catch_9c

    #@91
    goto :goto_15

    #@92
    :catch_92
    move-exception v0

    #@93
    const-string v1, "LVLDL"

    #@95
    const-string v2, "IOException while closing synced file: "

    #@97
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9a
    goto/16 :goto_15

    #@9c
    :catch_9c
    move-exception v0

    #@9d
    const-string v1, "LVLDL"

    #@9f
    const-string v2, "exception while closing file: "

    #@a1
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a4
    goto/16 :goto_15

    #@a6
    :catch_a6
    move-exception v0

    #@a7
    move-object v1, v2

    #@a8
    :goto_a8
    :try_start_a8
    new-instance v2, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    const-string v3, "LVLDL"

    #@af
    const-string v4, "IOException trying to sync "

    #@b1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v2

    #@b5
    iget-object v4, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    #@b7
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v2

    #@bb
    const-string v4, ": "

    #@bd
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v2

    #@c1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v0

    #@c5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c8
    move-result-object v0

    #@c9
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cc
    .catchall {:try_start_a8 .. :try_end_cc} :catchall_132

    #@cc
    if-eqz v1, :cond_15

    #@ce
    :try_start_ce
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d1} :catch_d3
    .catch Ljava/lang/RuntimeException; {:try_start_ce .. :try_end_d1} :catch_dd

    #@d1
    goto/16 :goto_15

    #@d3
    :catch_d3
    move-exception v0

    #@d4
    const-string v1, "LVLDL"

    #@d6
    const-string v2, "IOException while closing synced file: "

    #@d8
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@db
    goto/16 :goto_15

    #@dd
    :catch_dd
    move-exception v0

    #@de
    const-string v1, "LVLDL"

    #@e0
    const-string v2, "exception while closing file: "

    #@e2
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@e5
    goto/16 :goto_15

    #@e7
    :catch_e7
    move-exception v0

    #@e8
    move-object v1, v2

    #@e9
    :goto_e9
    :try_start_e9
    const-string v2, "LVLDL"

    #@eb
    const-string v3, "exception while syncing file: "

    #@ed
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f0
    .catchall {:try_start_e9 .. :try_end_f0} :catchall_132

    #@f0
    if-eqz v1, :cond_15

    #@f2
    :try_start_f2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_f5} :catch_f7
    .catch Ljava/lang/RuntimeException; {:try_start_f2 .. :try_end_f5} :catch_101

    #@f5
    goto/16 :goto_15

    #@f7
    :catch_f7
    move-exception v0

    #@f8
    const-string v1, "LVLDL"

    #@fa
    const-string v2, "IOException while closing synced file: "

    #@fc
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@ff
    goto/16 :goto_15

    #@101
    :catch_101
    move-exception v0

    #@102
    const-string v1, "LVLDL"

    #@104
    const-string v2, "exception while closing file: "

    #@106
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@109
    goto/16 :goto_15

    #@10b
    :catchall_10b
    move-exception v0

    #@10c
    :goto_10c
    if-eqz v1, :cond_111

    #@10e
    :try_start_10e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_111} :catch_112
    .catch Ljava/lang/RuntimeException; {:try_start_10e .. :try_end_111} :catch_11b

    #@111
    :cond_111
    :goto_111
    throw v0

    #@112
    :catch_112
    move-exception v1

    #@113
    const-string v2, "LVLDL"

    #@115
    const-string v3, "IOException while closing synced file: "

    #@117
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11a
    goto :goto_111

    #@11b
    :catch_11b
    move-exception v1

    #@11c
    const-string v2, "LVLDL"

    #@11e
    const-string v3, "exception while closing file: "

    #@120
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@123
    goto :goto_111

    #@124
    :catch_124
    move-exception v0

    #@125
    goto/16 :goto_2a

    #@127
    :catch_127
    move-exception v0

    #@128
    goto/16 :goto_68

    #@12a
    :catch_12a
    move-exception v0

    #@12b
    goto/16 :goto_a8

    #@12d
    :catch_12d
    move-exception v0

    #@12e
    goto :goto_e9

    #@12f
    :catchall_12f
    move-exception v0

    #@130
    move-object v1, v2

    #@131
    goto :goto_10c

    #@132
    :catchall_132
    move-exception v0

    #@133
    goto :goto_10c
.end method

.method private transferData(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;[BLjava/io/InputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    #@0
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->readFromResponse(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;[BLjava/io/InputStream;)I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_b

    #@7
    invoke-direct {p0, p1, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->handleEndOfStream(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)V

    #@a
    return-void

    #@b
    :cond_b
    const/4 v1, 0x1

    #@c
    iput-boolean v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mGotData:Z

    #@e
    invoke-direct {p0, p1, p3, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->writeDataToDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;[BI)V

    #@11
    iget v1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    #@13
    add-int/2addr v1, v0

    #@14
    iput v1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    #@16
    iget v1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesThisSession:I

    #@18
    add-int/2addr v0, v1

    #@19
    iput v0, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesThisSession:I

    #@1b
    invoke-direct {p0, p1, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->reportProgress(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)V

    #@1e
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->checkPausedOrCanceled(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V

    #@21
    goto :goto_0
.end method

.method private updateDatabaseFromHeaders(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@2
    iget-object v1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    #@4
    iput-object v1, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mETag:Ljava/lang/String;

    #@6
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    #@8
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@a
    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z

    #@d
    return-void
.end method

.method private updateDownloadDatabase(IZIIZLjava/lang/String;)V
    .registers 11

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@2
    iput p1, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    #@4
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@6
    iput p3, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mRetryAfter:I

    #@8
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@a
    iput p4, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mRedirectCount:I

    #@c
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@11
    move-result-wide v2

    #@12
    iput-wide v2, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mLastMod:J

    #@14
    if-nez p2, :cond_23

    #@16
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@18
    const/4 v1, 0x0

    #@19
    iput v1, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    #@1b
    :goto_1b
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    #@1d
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@1f
    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z

    #@22
    return-void

    #@23
    :cond_23
    if-eqz p5, :cond_2b

    #@25
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@27
    const/4 v1, 0x1

    #@28
    iput v1, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    #@2a
    goto :goto_1b

    #@2b
    :cond_2b
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@2d
    iget v1, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    #@2f
    add-int/lit8 v1, v1, 0x1

    #@31
    iput v1, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    #@33
    goto :goto_1b
.end method

.method private userAgent()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mUserAgent:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method private writeDataToDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;[BI)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    #@0
    :try_start_0
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    #@2
    if-nez v0, :cond_e

    #@4
    new-instance v0, Ljava/io/FileOutputStream;

    #@6
    iget-object v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    #@c
    iput-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    #@e
    :cond_e
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    #@10
    const/4 v1, 0x0

    #@11
    invoke-virtual {v0, p2, v1, p3}, Ljava/io/FileOutputStream;->write([BII)V

    #@14
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->closeDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_17} :catch_18

    #@17
    return-void

    #@18
    :catch_18
    move-exception v0

    #@19
    invoke-static {}, Lcom/google/android/vending/expansion/downloader/Helpers;->isExternalMediaMounted()Z

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_29

    #@1f
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    #@21
    const/16 v1, 0x1f3

    #@23
    const-string v2, "external media not mounted while writing destination file"

    #@25
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    #@28
    throw v0

    #@29
    :cond_29
    iget-object v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    #@2b
    invoke-static {v1}, Lcom/google/android/vending/expansion/downloader/Helpers;->getFilesystemRoot(Ljava/lang/String;)Ljava/io/File;

    #@2e
    move-result-object v1

    #@2f
    invoke-static {v1}, Lcom/google/android/vending/expansion/downloader/Helpers;->getAvailableBytes(Ljava/io/File;)J

    #@32
    move-result-wide v2

    #@33
    int-to-long v4, p3

    #@34
    cmp-long v1, v2, v4

    #@36
    if-gez v1, :cond_42

    #@38
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    #@3a
    const/16 v2, 0x1f2

    #@3c
    const-string v3, "insufficient space while writing destination file"

    #@3e
    invoke-direct {v1, p0, v2, v3, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    #@41
    throw v1

    #@42
    :cond_42
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    #@44
    const/16 v2, 0x1ec

    #@46
    new-instance v3, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string v4, "while writing destination file: "

    #@4d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v3

    #@5d
    invoke-direct {v1, p0, v2, v3, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    #@60
    throw v1
.end method


# virtual methods
.method public getPreferredHttpHost(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpHost;
    .registers 7

    #@0
    invoke-static {p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->isLocalHost(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_20

    #@6
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    #@8
    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->isWiFi()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_20

    #@e
    invoke-static {p1}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    if-eqz v1, :cond_20

    #@14
    new-instance v0, Lorg/apache/http/HttpHost;

    #@16
    invoke-static {p1}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    #@19
    move-result v2

    #@1a
    const-string v3, "http"

    #@1c
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@1f
    :goto_1f
    return-object v0

    #@20
    :cond_20
    const/4 v0, 0x0

    #@21
    goto :goto_1f
.end method

.method public run()V
    .registers 12

    #@0
    const/16 v9, 0xc8

    #@2
    const/4 v4, 0x1

    #@3
    const/16 v1, 0x1eb

    #@5
    const/4 v2, 0x0

    #@6
    const/16 v0, 0xa

    #@8
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    #@b
    new-instance v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;

    #@d
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@f
    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    #@11
    invoke-direct {v6, v0, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)V

    #@14
    :try_start_14
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mContext:Landroid/content/Context;

    #@16
    const-string v3, "power"

    #@18
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Landroid/os/PowerManager;

    #@1e
    const/4 v3, 0x1

    #@1f
    const-string v5, "LVLDL"

    #@21
    invoke-virtual {v0, v3, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    :try_end_24
    .catch Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest; {:try_start_14 .. :try_end_24} :catch_13b
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_24} :catch_134
    .catchall {:try_start_14 .. :try_end_24} :catchall_10f

    #@24
    move-result-object v3

    #@25
    :try_start_25
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@28
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->userAgent()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    iget-object v5, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mContext:Landroid/content/Context;

    #@2e
    invoke-static {v0, v5}, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;
    :try_end_31
    .catch Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest; {:try_start_25 .. :try_end_31} :catch_58
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_31} :catch_144
    .catchall {:try_start_25 .. :try_end_31} :catchall_12e

    #@31
    move-result-object v2

    #@32
    const/4 v0, 0x0

    #@33
    :goto_33
    if-nez v0, :cond_ef

    #@35
    :try_start_35
    invoke-virtual {v2}, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    #@38
    move-result-object v5

    #@39
    iget-object v7, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mContext:Landroid/content/Context;

    #@3b
    iget-object v8, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    #@3d
    invoke-virtual {p0, v7, v8}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->getPreferredHttpHost(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpHost;

    #@40
    move-result-object v7

    #@41
    invoke-static {v5, v7}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    #@44
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    #@46
    iget-object v7, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    #@48
    invoke-direct {v5, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_4b
    .catch Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest; {:try_start_35 .. :try_end_4b} :catch_58
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_4b} :catch_a9
    .catchall {:try_start_35 .. :try_end_4b} :catchall_12e

    #@4b
    :try_start_4b
    invoke-direct {p0, v6, v2, v5}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->executeDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;Lorg/apache/http/client/methods/HttpGet;)V
    :try_end_4e
    .catch Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$RetryDownload; {:try_start_4b .. :try_end_4e} :catch_53
    .catchall {:try_start_4b .. :try_end_4e} :catchall_a4

    #@4e
    :try_start_4e
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    #@51
    move v0, v4

    #@52
    goto :goto_33

    #@53
    :catch_53
    move-exception v7

    #@54
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_57
    .catch Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest; {:try_start_4e .. :try_end_57} :catch_58
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_57} :catch_a9
    .catchall {:try_start_4e .. :try_end_57} :catchall_12e

    #@57
    goto :goto_33

    #@58
    :catch_58
    move-exception v0

    #@59
    :goto_59
    :try_start_59
    new-instance v4, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string v5, "LVLDL"

    #@60
    const-string v7, "Aborting request for download "

    #@62
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v4

    #@66
    iget-object v7, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@68
    iget-object v7, v7, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    #@6a
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v4

    #@6e
    const-string v7, ": "

    #@70
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v4

    #@74
    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;->getMessage()Ljava/lang/String;

    #@77
    move-result-object v7

    #@78
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v4

    #@7c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v4

    #@80
    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@83
    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;->printStackTrace()V

    #@86
    iget v1, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;->mFinalStatus:I
    :try_end_88
    .catchall {:try_start_59 .. :try_end_88} :catchall_131

    #@88
    if-eqz v3, :cond_8d

    #@8a
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@8d
    :cond_8d
    if-eqz v2, :cond_92

    #@8f
    invoke-virtual {v2}, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->close()V

    #@92
    :cond_92
    invoke-direct {p0, v6, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->cleanupDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;I)V

    #@95
    iget-boolean v2, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mCountRetry:Z

    #@97
    iget v3, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    #@99
    iget v4, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRedirectCount:I

    #@9b
    iget-boolean v5, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mGotData:Z

    #@9d
    iget-object v6, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    #@9f
    move-object v0, p0

    #@a0
    invoke-direct/range {v0 .. v6}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->notifyDownloadCompleted(IZIIZLjava/lang/String;)V

    #@a3
    :goto_a3
    return-void

    #@a4
    :catchall_a4
    move-exception v0

    #@a5
    :try_start_a5
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    #@a8
    throw v0
    :try_end_a9
    .catch Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest; {:try_start_a5 .. :try_end_a9} :catch_58
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_a9} :catch_a9
    .catchall {:try_start_a5 .. :try_end_a9} :catchall_12e

    #@a9
    :catch_a9
    move-exception v0

    #@aa
    move-object v10, v0

    #@ab
    move-object v0, v2

    #@ac
    move-object v2, v10

    #@ad
    :goto_ad
    :try_start_ad
    new-instance v4, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    const-string v5, "LVLDL"

    #@b4
    const-string v7, "Exception for "

    #@b6
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v4

    #@ba
    iget-object v7, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@bc
    iget-object v7, v7, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    #@be
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v4

    #@c2
    const-string v7, ": "

    #@c4
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v4

    #@c8
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v2

    #@cc
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v2

    #@d0
    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d3
    .catchall {:try_start_ad .. :try_end_d3} :catchall_13f

    #@d3
    if-eqz v3, :cond_d8

    #@d5
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@d8
    :cond_d8
    if-eqz v0, :cond_dd

    #@da
    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->close()V

    #@dd
    :cond_dd
    invoke-direct {p0, v6, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->cleanupDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;I)V

    #@e0
    iget-boolean v2, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mCountRetry:Z

    #@e2
    iget v3, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    #@e4
    iget v4, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRedirectCount:I

    #@e6
    iget-boolean v5, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mGotData:Z

    #@e8
    iget-object v6, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    #@ea
    move-object v0, p0

    #@eb
    invoke-direct/range {v0 .. v6}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->notifyDownloadCompleted(IZIIZLjava/lang/String;)V

    #@ee
    goto :goto_a3

    #@ef
    :cond_ef
    :try_start_ef
    invoke-direct {p0, v6}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->finalizeDestinationFile(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V
    :try_end_f2
    .catch Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest; {:try_start_ef .. :try_end_f2} :catch_58
    .catch Ljava/lang/Throwable; {:try_start_ef .. :try_end_f2} :catch_a9
    .catchall {:try_start_ef .. :try_end_f2} :catchall_12e

    #@f2
    if-eqz v3, :cond_f7

    #@f4
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@f7
    :cond_f7
    if-eqz v2, :cond_fc

    #@f9
    invoke-virtual {v2}, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->close()V

    #@fc
    :cond_fc
    invoke-direct {p0, v6, v9}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->cleanupDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;I)V

    #@ff
    iget-boolean v2, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mCountRetry:Z

    #@101
    iget v3, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    #@103
    iget v4, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRedirectCount:I

    #@105
    iget-boolean v5, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mGotData:Z

    #@107
    iget-object v6, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    #@109
    move-object v0, p0

    #@10a
    move v1, v9

    #@10b
    invoke-direct/range {v0 .. v6}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->notifyDownloadCompleted(IZIIZLjava/lang/String;)V

    #@10e
    goto :goto_a3

    #@10f
    :catchall_10f
    move-exception v0

    #@110
    move-object v3, v2

    #@111
    move-object v7, v0

    #@112
    :goto_112
    if-eqz v3, :cond_117

    #@114
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@117
    :cond_117
    if-eqz v2, :cond_11c

    #@119
    invoke-virtual {v2}, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->close()V

    #@11c
    :cond_11c
    invoke-direct {p0, v6, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->cleanupDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;I)V

    #@11f
    iget-boolean v2, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mCountRetry:Z

    #@121
    iget v3, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    #@123
    iget v4, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRedirectCount:I

    #@125
    iget-boolean v5, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mGotData:Z

    #@127
    iget-object v6, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    #@129
    move-object v0, p0

    #@12a
    invoke-direct/range {v0 .. v6}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->notifyDownloadCompleted(IZIIZLjava/lang/String;)V

    #@12d
    throw v7

    #@12e
    :catchall_12e
    move-exception v0

    #@12f
    :goto_12f
    move-object v7, v0

    #@130
    goto :goto_112

    #@131
    :catchall_131
    move-exception v0

    #@132
    move-object v7, v0

    #@133
    goto :goto_112

    #@134
    :catch_134
    move-exception v0

    #@135
    move-object v3, v2

    #@136
    move-object v10, v0

    #@137
    move-object v0, v2

    #@138
    move-object v2, v10

    #@139
    goto/16 :goto_ad

    #@13b
    :catch_13b
    move-exception v0

    #@13c
    move-object v3, v2

    #@13d
    goto/16 :goto_59

    #@13f
    :catchall_13f
    move-exception v2

    #@140
    move-object v10, v2

    #@141
    move-object v2, v0

    #@142
    move-object v0, v10

    #@143
    goto :goto_12f

    #@144
    :catch_144
    move-exception v0

    #@145
    move-object v10, v0

    #@146
    move-object v0, v2

    #@147
    move-object v2, v10

    #@148
    goto/16 :goto_ad
.end method
