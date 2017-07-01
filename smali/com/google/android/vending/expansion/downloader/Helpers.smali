.class public Lcom/google/android/vending/expansion/downloader/Helpers;
.super Ljava/lang/Object;


# static fields
.field private static final CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

.field public static sRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    new-instance v0, Ljava/util/Random;

    #@2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@5
    move-result-wide v2

    #@6
    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    #@9
    sput-object v0, Lcom/google/android/vending/expansion/downloader/Helpers;->sRandom:Ljava/util/Random;

    #@b
    const-string v0, "attachment;\\s*filename\\s*=\\s*\"([^\"]*)\""

    #@d
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@10
    move-result-object v0

    #@11
    sput-object v0, Lcom/google/android/vending/expansion/downloader/Helpers;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    #@13
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static deleteFile(Ljava/lang/String;)V
    .registers 5

    #@0
    :try_start_0
    new-instance v0, Ljava/io/File;

    #@2
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    #@8
    :goto_8
    return-void

    #@9
    :catch_9
    move-exception v0

    #@a
    const-string v1, "LVLDL"

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string v3, "file: \'"

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    const-string v3, "\' couldn\'t be deleted"

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@28
    goto :goto_8
.end method

.method public static doesFileExist(Landroid/content/Context;Ljava/lang/String;JZ)Z
    .registers 9

    #@0
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {p0, p1}, Lcom/google/android/vending/expansion/downloader/Helpers;->generateSaveFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1e

    #@f
    invoke-virtual {v0}, Ljava/io/File;->length()J

    #@12
    move-result-wide v2

    #@13
    cmp-long v1, v2, p2

    #@15
    if-nez v1, :cond_19

    #@17
    const/4 v0, 0x1

    #@18
    :goto_18
    return v0

    #@19
    :cond_19
    if-eqz p4, :cond_1e

    #@1b
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@1e
    :cond_1e
    const/4 v0, 0x0

    #@1f
    goto :goto_18
.end method

.method public static generateSaveFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
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
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method public static getAvailableBytes(Ljava/io/File;)J
    .registers 7

    #@0
    new-instance v0, Landroid/os/StatFs;

    #@2
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    #@9
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    #@c
    move-result v1

    #@d
    int-to-long v2, v1

    #@e
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    #@11
    move-result v0

    #@12
    int-to-long v0, v0

    #@13
    const-wide/16 v4, 0x4

    #@15
    sub-long/2addr v2, v4

    #@16
    mul-long/2addr v0, v2

    #@17
    return-wide v0
.end method

.method public static getDownloadProgressPercent(JJ)Ljava/lang/String;
    .registers 8

    #@0
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p2, v0

    #@4
    if-nez v0, :cond_9

    #@6
    const-string v0, ""

    #@8
    :goto_8
    return-object v0

    #@9
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-wide/16 v2, 0x64

    #@10
    mul-long/2addr v2, p0

    #@11
    div-long/2addr v2, p2

    #@12
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    const-string v1, "%"

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    goto :goto_8
.end method

.method public static getDownloadProgressString(JJ)Ljava/lang/String;
    .registers 12

    #@0
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/high16 v4, 0x49800000    # 1048576.0f

    #@4
    const-wide/16 v0, 0x0

    #@6
    cmp-long v0, p2, v0

    #@8
    if-nez v0, :cond_d

    #@a
    const-string v0, ""

    #@c
    :goto_c
    return-object v0

    #@d
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string v1, "%.2f"

    #@14
    new-array v2, v6, [Ljava/lang/Object;

    #@16
    long-to-float v3, p0

    #@17
    div-float/2addr v3, v4

    #@18
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@1b
    move-result-object v3

    #@1c
    aput-object v3, v2, v5

    #@1e
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    const-string v1, "MB /"

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    const-string v1, "%.2f"

    #@2e
    new-array v2, v6, [Ljava/lang/Object;

    #@30
    long-to-float v3, p2

    #@31
    div-float/2addr v3, v4

    #@32
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@35
    move-result-object v3

    #@36
    aput-object v3, v2, v5

    #@38
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    const-string v1, "MB"

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    goto :goto_c
.end method

.method public static getDownloadProgressStringNotification(JJ)Ljava/lang/String;
    .registers 6

    #@0
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p2, v0

    #@4
    if-nez v0, :cond_9

    #@6
    const-string v0, ""

    #@8
    :goto_8
    return-object v0

    #@9
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloadProgressString(JJ)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string v1, " ("

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloadProgressPercent(JJ)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    const-string v1, ")"

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    goto :goto_8
.end method

.method public static getDownloaderStringResourceIDFromState(I)I
    .registers 2

    #@0
    packed-switch p0, :pswitch_data_3c

    #@3
    sget v0, Lcom/android/vending/expansion/downloader/R$string;->state_unknown:I

    #@5
    :goto_5
    return v0

    #@6
    :pswitch_6
    sget v0, Lcom/android/vending/expansion/downloader/R$string;->state_idle:I

    #@8
    goto :goto_5

    #@9
    :pswitch_9
    sget v0, Lcom/android/vending/expansion/downloader/R$string;->state_fetching_url:I

    #@b
    goto :goto_5

    #@c
    :pswitch_c
    sget v0, Lcom/android/vending/expansion/downloader/R$string;->state_connecting:I

    #@e
    goto :goto_5

    #@f
    :pswitch_f
    sget v0, Lcom/android/vending/expansion/downloader/R$string;->state_downloading:I

    #@11
    goto :goto_5

    #@12
    :pswitch_12
    sget v0, Lcom/android/vending/expansion/downloader/R$string;->state_completed:I

    #@14
    goto :goto_5

    #@15
    :pswitch_15
    sget v0, Lcom/android/vending/expansion/downloader/R$string;->state_paused_network_unavailable:I

    #@17
    goto :goto_5

    #@18
    :pswitch_18
    sget v0, Lcom/android/vending/expansion/downloader/R$string;->state_paused_by_request:I

    #@1a
    goto :goto_5

    #@1b
    :pswitch_1b
    sget v0, Lcom/android/vending/expansion/downloader/R$string;->state_paused_wifi_disabled:I

    #@1d
    goto :goto_5

    #@1e
    :pswitch_1e
    sget v0, Lcom/android/vending/expansion/downloader/R$string;->state_paused_wifi_unavailable:I

    #@20
    goto :goto_5

    #@21
    :pswitch_21
    sget v0, Lcom/android/vending/expansion/downloader/R$string;->state_paused_wifi_disabled:I

    #@23
    goto :goto_5

    #@24
    :pswitch_24
    sget v0, Lcom/android/vending/expansion/downloader/R$string;->state_paused_wifi_unavailable:I

    #@26
    goto :goto_5

    #@27
    :pswitch_27
    sget v0, Lcom/android/vending/expansion/downloader/R$string;->state_paused_roaming:I

    #@29
    goto :goto_5

    #@2a
    :pswitch_2a
    sget v0, Lcom/android/vending/expansion/downloader/R$string;->state_paused_network_setup_failure:I

    #@2c
    goto :goto_5

    #@2d
    :pswitch_2d
    sget v0, Lcom/android/vending/expansion/downloader/R$string;->state_paused_sdcard_unavailable:I

    #@2f
    goto :goto_5

    #@30
    :pswitch_30
    sget v0, Lcom/android/vending/expansion/downloader/R$string;->state_failed_unlicensed:I

    #@32
    goto :goto_5

    #@33
    :pswitch_33
    sget v0, Lcom/android/vending/expansion/downloader/R$string;->state_failed_fetching_url:I

    #@35
    goto :goto_5

    #@36
    :pswitch_36
    sget v0, Lcom/android/vending/expansion/downloader/R$string;->state_failed_sdcard_full:I

    #@38
    goto :goto_5

    #@39
    :pswitch_39
    sget v0, Lcom/android/vending/expansion/downloader/R$string;->state_failed_cancelled:I

    #@3b
    goto :goto_5

    #@3c
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
    .end packed-switch
.end method

.method public static getExpansionAPKFileName(Landroid/content/Context;ZI)Ljava/lang/String;
    .registers 5

    #@0
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    if-eqz p1, :cond_2a

    #@7
    const-string v0, "main."

    #@9
    :goto_9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string v1, "."

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string v1, ".obb"

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    return-object v0

    #@2a
    :cond_2a
    const-string v0, "patch."

    #@2c
    goto :goto_9
.end method

.method public static getFilesystemRoot(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    #@0
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_f

    #@e
    :cond_e
    return-object v0

    #@f
    :cond_f
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1a
    move-result v1

    #@1b
    if-nez v1, :cond_e

    #@1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1f
    new-instance v1, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string v2, "Cannot determine filesystem root for "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw v0
.end method

.method public static getSaveFilePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    #@0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    sget-object v1, Lcom/google/android/vending/expansion/downloader/Constants;->EXP_PATH:Ljava/lang/String;

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method

.method public static getSpeedString(F)Ljava/lang/String;
    .registers 6

    #@0
    const-string v0, "%.2f"

    #@2
    const/4 v1, 0x1

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    const/4 v2, 0x0

    #@6
    const/high16 v3, 0x447a0000    # 1000.0f

    #@8
    mul-float/2addr v3, p0

    #@9
    const/high16 v4, 0x44800000    # 1024.0f

    #@b
    div-float/2addr v3, v4

    #@c
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@f
    move-result-object v3

    #@10
    aput-object v3, v1, v2

    #@12
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public static getTimeRemaining(J)Ljava/lang/String;
    .registers 6

    #@0
    const-wide/32 v0, 0x36ee80

    #@3
    cmp-long v0, p0, v0

    #@5
    if-lez v0, :cond_27

    #@7
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@9
    const-string v1, "HH:mm"

    #@b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@e
    move-result-object v2

    #@f
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@12
    :goto_12
    new-instance v1, Ljava/util/Date;

    #@14
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    #@1b
    move-result v2

    #@1c
    int-to-long v2, v2

    #@1d
    sub-long v2, p0, v2

    #@1f
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@22
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    return-object v0

    #@27
    :cond_27
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@29
    const-string v1, "mm:ss"

    #@2b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@2e
    move-result-object v2

    #@2f
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@32
    goto :goto_12
.end method

.method public static isExternalMediaMounted()Z
    .registers 2

    #@0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string v1, "mounted"

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_e

    #@c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0

    #@e
    :cond_e
    const/4 v0, 0x1

    #@f
    goto :goto_d
.end method

.method public static isFilenameValid(Ljava/lang/String;)Z
    .registers 3

    #@0
    const-string v0, "/+"

    #@2
    const-string v1, "/"

    #@4
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_24

    #@16
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_26

    #@24
    :cond_24
    const/4 v0, 0x1

    #@25
    :goto_25
    return v0

    #@26
    :cond_26
    const/4 v0, 0x0

    #@27
    goto :goto_25
.end method

.method static parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    :try_start_0
    sget-object v0, Lcom/google/android/vending/expansion/downloader/Helpers;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    #@2
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_13

    #@c
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_10} :catch_12

    #@10
    move-result-object v0

    #@11
    :goto_11
    return-object v0

    #@12
    :catch_12
    move-exception v0

    #@13
    :cond_13
    const/4 v0, 0x0

    #@14
    goto :goto_11
.end method
