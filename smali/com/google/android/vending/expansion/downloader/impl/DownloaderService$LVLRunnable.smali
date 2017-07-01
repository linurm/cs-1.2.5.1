.class Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LVLRunnable"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;


# direct methods
.method constructor <init>(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;Landroid/content/Context;Landroid/app/PendingIntent;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    iput-object p2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    #@7
    # setter for: Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPendingIntent:Landroid/app/PendingIntent;
    invoke-static {p1, p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$002(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    #@a
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    #@0
    const/4 v0, 0x1

    #@1
    # invokes: Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V
    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$100(Z)V

    #@4
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    #@6
    # getter for: Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;
    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$200(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    #@9
    move-result-object v0

    #@a
    const/4 v1, 0x2

    #@b
    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V

    #@e
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    #@10
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@13
    move-result-object v0

    #@14
    const-string v1, "android_id"

    #@16
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    new-instance v1, Lcom/google/android/vending/licensing/APKExpansionPolicy;

    #@1c
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    #@1e
    new-instance v3, Lcom/google/android/vending/licensing/AESObfuscator;

    #@20
    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    #@22
    invoke-virtual {v4}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getSALT()[B

    #@25
    move-result-object v4

    #@26
    iget-object v5, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    #@28
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    invoke-direct {v3, v4, v5, v0}, Lcom/google/android/vending/licensing/AESObfuscator;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    #@2f
    invoke-direct {v1, v2, v3}, Lcom/google/android/vending/licensing/APKExpansionPolicy;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Obfuscator;)V

    #@32
    invoke-virtual {v1}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->resetPolicy()V

    #@35
    new-instance v0, Lcom/google/android/vending/licensing/LicenseChecker;

    #@37
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    #@39
    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    #@3b
    invoke-virtual {v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getPublicKey()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/vending/licensing/LicenseChecker;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Policy;Ljava/lang/String;)V

    #@42
    new-instance v2, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;

    #@44
    invoke-direct {v2, p0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;Lcom/google/android/vending/licensing/APKExpansionPolicy;)V

    #@47
    invoke-virtual {v0, v2}, Lcom/google/android/vending/licensing/LicenseChecker;->checkAccess(Lcom/google/android/vending/licensing/LicenseCheckerCallback;)V

    #@4a
    return-void
.end method
