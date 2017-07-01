.class Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/vending/licensing/LicenseCheckerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

.field final synthetic val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;


# direct methods
.method constructor <init>(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;Lcom/google/android/vending/licensing/APKExpansionPolicy;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    #@2
    iput-object p2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public allow(I)V
    .registers 14

    #@0
    const/16 v11, 0xc8

    #@2
    const/4 v7, 0x0

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;

    #@5
    invoke-virtual {v0}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->getExpansionURLCount()I

    #@8
    move-result v8

    #@9
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    #@b
    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    #@d
    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDB(Landroid/content/Context;)Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    #@10
    move-result-object v1

    #@11
    if-eqz v8, :cond_a3

    #@13
    move v2, v7

    #@14
    move v6, v7

    #@15
    :goto_15
    if-ge v2, v8, :cond_a4

    #@17
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;

    #@19
    invoke-virtual {v0, v2}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->getExpansionFileName(I)Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    if-eqz v3, :cond_117

    #@1f
    new-instance v9, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@21
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    #@23
    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    #@25
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    invoke-direct {v9, v2, v3, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@2c
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;

    #@2e
    invoke-virtual {v0, v2}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->getExpansionFileSize(I)J

    #@31
    move-result-wide v4

    #@32
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    #@34
    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    #@36
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->handleFileUpdated(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;ILjava/lang/String;J)Z

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_54

    #@3c
    or-int/lit8 v0, v6, -0x1

    #@3e
    invoke-virtual {v9}, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->resetDownload()V

    #@41
    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;

    #@43
    invoke-virtual {v3, v2}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->getExpansionURL(I)Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    iput-object v3, v9, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mUri:Ljava/lang/String;

    #@49
    iput-wide v4, v9, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    #@4b
    iput v0, v9, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    #@4d
    invoke-virtual {v1, v9}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z

    #@50
    :goto_50
    add-int/lit8 v2, v2, 0x1

    #@52
    move v6, v0

    #@53
    goto :goto_15

    #@54
    :cond_54
    iget-object v0, v9, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    #@56
    invoke-virtual {v1, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDownloadInfoByFileName(Ljava/lang/String;)Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@59
    move-result-object v0

    #@5a
    if-nez v0, :cond_91

    #@5c
    new-instance v0, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string v3, "LVLDL"

    #@63
    const-string v10, "file "

    #@65
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v0

    #@69
    iget-object v10, v9, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    #@6b
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v0

    #@6f
    const-string v10, " found. Not downloading."

    #@71
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v0

    #@75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v0

    #@79
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7c
    const/16 v0, 0xc8

    #@7e
    iput v0, v9, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    #@80
    iput-wide v4, v9, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    #@82
    iput-wide v4, v9, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    #@84
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;

    #@86
    invoke-virtual {v0, v2}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->getExpansionURL(I)Ljava/lang/String;

    #@89
    move-result-object v0

    #@8a
    iput-object v0, v9, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mUri:Ljava/lang/String;

    #@8c
    invoke-virtual {v1, v9}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z

    #@8f
    move v0, v6

    #@90
    goto :goto_50

    #@91
    :cond_91
    iget v3, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    #@93
    if-eq v3, v11, :cond_117

    #@95
    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;

    #@97
    invoke-virtual {v3, v2}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->getExpansionURL(I)Ljava/lang/String;

    #@9a
    move-result-object v3

    #@9b
    iput-object v3, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mUri:Ljava/lang/String;

    #@9d
    invoke-virtual {v1, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z
    :try_end_a0
    .catchall {:try_start_3 .. :try_end_a0} :catchall_f6

    #@a0
    or-int/lit8 v0, v6, -0x1

    #@a2
    goto :goto_50

    #@a3
    :cond_a3
    move v6, v7

    #@a4
    :cond_a4
    :try_start_a4
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    #@a6
    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    #@a8
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@ab
    move-result-object v0

    #@ac
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    #@ae
    iget-object v2, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    #@b0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@b3
    move-result-object v2

    #@b4
    const/4 v3, 0x0

    #@b5
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@b8
    move-result-object v0

    #@b9
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    #@bb
    invoke-virtual {v1, v0, v6}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateMetadata(II)Z

    #@be
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    #@c0
    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    #@c2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@c5
    move-result-object v0

    #@c6
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    #@c8
    iget-object v1, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    #@ca
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    #@cc
    iget-object v2, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    #@ce
    # getter for: Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$000(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Landroid/app/PendingIntent;

    #@d1
    move-result-object v2

    #@d2
    invoke-static {v1, v2, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)I
    :try_end_d5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a4 .. :try_end_d5} :catch_ea
    .catchall {:try_start_a4 .. :try_end_d5} :catchall_f6

    #@d5
    move-result v0

    #@d6
    packed-switch v0, :pswitch_data_11a

    #@d9
    :goto_d9
    # invokes: Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V
    invoke-static {v7}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$100(Z)V

    #@dc
    return-void

    #@dd
    :pswitch_dd
    :try_start_dd
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    #@df
    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    #@e1
    # getter for: Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;
    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$200(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    #@e4
    move-result-object v0

    #@e5
    const/4 v1, 0x5

    #@e6
    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V
    :try_end_e9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_dd .. :try_end_e9} :catch_ea
    .catchall {:try_start_dd .. :try_end_e9} :catchall_f6

    #@e9
    goto :goto_d9

    #@ea
    :catch_ea
    move-exception v0

    #@eb
    :try_start_eb
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    #@ee
    new-instance v0, Ljava/lang/RuntimeException;

    #@f0
    const-string v1, "Error with getting information from package name"

    #@f2
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@f5
    throw v0
    :try_end_f6
    .catchall {:try_start_eb .. :try_end_f6} :catchall_f6

    #@f6
    :catchall_f6
    move-exception v0

    #@f7
    # invokes: Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V
    invoke-static {v7}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$100(Z)V

    #@fa
    throw v0

    #@fb
    :pswitch_fb
    :try_start_fb
    const-string v0, "LVLDL"

    #@fd
    const-string v1, "In LVL checking loop!"

    #@ff
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@102
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    #@104
    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    #@106
    # getter for: Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;
    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$200(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    #@109
    move-result-object v0

    #@10a
    const/16 v1, 0xf

    #@10c
    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V

    #@10f
    new-instance v0, Ljava/lang/RuntimeException;

    #@111
    const-string v1, "Error with LVL checking and database integrity"

    #@113
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@116
    throw v0
    :try_end_117
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_fb .. :try_end_117} :catch_ea
    .catchall {:try_start_fb .. :try_end_117} :catchall_f6

    #@117
    :cond_117
    move v0, v6

    #@118
    goto/16 :goto_50

    #@11a
    :pswitch_data_11a
    .packed-switch 0x0
        :pswitch_dd
        :pswitch_fb
    .end packed-switch
.end method

.method public applicationError(I)V
    .registers 5

    #@0
    const/4 v2, 0x0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    #@3
    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    #@5
    # getter for: Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;
    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$200(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    #@8
    move-result-object v0

    #@9
    const/16 v1, 0x10

    #@b
    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_12

    #@e
    # invokes: Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V
    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$100(Z)V

    #@11
    return-void

    #@12
    :catchall_12
    move-exception v0

    #@13
    # invokes: Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V
    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$100(Z)V

    #@16
    throw v0
.end method

.method public dontAllow(I)V
    .registers 5

    #@0
    const/4 v2, 0x0

    #@1
    sparse-switch p1, :sswitch_data_2a

    #@4
    :goto_4
    # invokes: Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V
    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$100(Z)V

    #@7
    return-void

    #@8
    :sswitch_8
    :try_start_8
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    #@a
    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    #@c
    # getter for: Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;
    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$200(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    #@f
    move-result-object v0

    #@10
    const/16 v1, 0xf

    #@12
    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_16

    #@15
    goto :goto_4

    #@16
    :catchall_16
    move-exception v0

    #@17
    # invokes: Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V
    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$100(Z)V

    #@1a
    throw v0

    #@1b
    :sswitch_1b
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    #@1d
    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    #@1f
    # getter for: Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;
    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$200(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    #@22
    move-result-object v0

    #@23
    const/16 v1, 0x10

    #@25
    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_16

    #@28
    goto :goto_4

    #@29
    nop

    #@2a
    :sswitch_data_2a
    .sparse-switch
        0x123 -> :sswitch_1b
        0x231 -> :sswitch_8
    .end sparse-switch
.end method
