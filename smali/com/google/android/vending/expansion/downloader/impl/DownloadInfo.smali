.class public Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
.super Ljava/lang/Object;


# instance fields
.field public mControl:I

.field public mCurrentBytes:J

.field public mETag:Ljava/lang/String;

.field public final mFileName:Ljava/lang/String;

.field public mFuzz:I

.field public final mIndex:I

.field mInitialized:Z

.field public mLastMod:J

.field public mNumFailed:I

.field public mRedirectCount:I

.field public mRetryAfter:I

.field public mStatus:I

.field public mTotalBytes:J

.field public mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    sget-object v0, Lcom/google/android/vending/expansion/downloader/Helpers;->sRandom:Ljava/util/Random;

    #@5
    const/16 v1, 0x3e9

    #@7
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    #@a
    move-result v0

    #@b
    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFuzz:I

    #@d
    iput-object p2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    #@f
    iput p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mIndex:I

    #@11
    return-void
.end method


# virtual methods
.method public logVerboseInfo()V
    .registers 5

    #@0
    const-string v0, "LVLDL"

    #@2
    const-string v1, "Service adding new entry"

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    const-string v0, "LVLDL"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string v2, "FILENAME: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    const-string v0, "LVLDL"

    #@23
    new-instance v1, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string v2, "URI     : "

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mUri:Ljava/lang/String;

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    const-string v0, "LVLDL"

    #@3d
    new-instance v1, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string v2, "FILENAME: "

    #@44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    #@4a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    const-string v0, "LVLDL"

    #@57
    new-instance v1, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string v2, "CONTROL : "

    #@5e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    iget v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mControl:I

    #@64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67
    move-result-object v1

    #@68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v1

    #@6c
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@6f
    const-string v0, "LVLDL"

    #@71
    new-instance v1, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string v2, "STATUS  : "

    #@78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v1

    #@7c
    iget v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    #@7e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@81
    move-result-object v1

    #@82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v1

    #@86
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@89
    const-string v0, "LVLDL"

    #@8b
    new-instance v1, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    const-string v2, "FAILED_C: "

    #@92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v1

    #@96
    iget v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    #@98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v1

    #@9c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v1

    #@a0
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@a3
    const-string v0, "LVLDL"

    #@a5
    new-instance v1, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    const-string v2, "RETRY_AF: "

    #@ac
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v1

    #@b0
    iget v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mRetryAfter:I

    #@b2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v1

    #@b6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v1

    #@ba
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@bd
    const-string v0, "LVLDL"

    #@bf
    new-instance v1, Ljava/lang/StringBuilder;

    #@c1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c4
    const-string v2, "REDIRECT: "

    #@c6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v1

    #@ca
    iget v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mRedirectCount:I

    #@cc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v1

    #@d0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d3
    move-result-object v1

    #@d4
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d7
    const-string v0, "LVLDL"

    #@d9
    new-instance v1, Ljava/lang/StringBuilder;

    #@db
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@de
    const-string v2, "LAST_MOD: "

    #@e0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v1

    #@e4
    iget-wide v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mLastMod:J

    #@e6
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v1

    #@ea
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ed
    move-result-object v1

    #@ee
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@f1
    const-string v0, "LVLDL"

    #@f3
    new-instance v1, Ljava/lang/StringBuilder;

    #@f5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f8
    const-string v2, "TOTAL   : "

    #@fa
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v1

    #@fe
    iget-wide v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    #@100
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@103
    move-result-object v1

    #@104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@107
    move-result-object v1

    #@108
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@10b
    const-string v0, "LVLDL"

    #@10d
    new-instance v1, Ljava/lang/StringBuilder;

    #@10f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@112
    const-string v2, "CURRENT : "

    #@114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v1

    #@118
    iget-wide v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    #@11a
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v1

    #@11e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@121
    move-result-object v1

    #@122
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@125
    const-string v0, "LVLDL"

    #@127
    new-instance v1, Ljava/lang/StringBuilder;

    #@129
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12c
    const-string v2, "ETAG    : "

    #@12e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v1

    #@132
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mETag:Ljava/lang/String;

    #@134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v1

    #@138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13b
    move-result-object v1

    #@13c
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@13f
    return-void
.end method

.method public resetDownload()V
    .registers 5

    #@0
    const-wide/16 v2, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    iput-wide v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    #@5
    const-string v0, ""

    #@7
    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mETag:Ljava/lang/String;

    #@9
    iput-wide v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mLastMod:J

    #@b
    iput v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    #@d
    iput v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mControl:I

    #@f
    iput v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    #@11
    iput v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mRetryAfter:I

    #@13
    iput v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mRedirectCount:I

    #@15
    return-void
.end method

.method public restartTime(J)J
    .registers 8

    #@0
    iget v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    #@2
    if-nez v0, :cond_5

    #@4
    :goto_4
    return-wide p1

    #@5
    :cond_5
    iget v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mRetryAfter:I

    #@7
    if-lez v0, :cond_11

    #@9
    iget-wide v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mLastMod:J

    #@b
    iget v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mRetryAfter:I

    #@d
    int-to-long v2, v2

    #@e
    add-long p1, v0, v2

    #@10
    goto :goto_4

    #@11
    :cond_11
    iget-wide v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mLastMod:J

    #@13
    iget v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFuzz:I

    #@15
    add-int/lit16 v2, v2, 0x3e8

    #@17
    mul-int/lit8 v2, v2, 0x1e

    #@19
    const/4 v3, 0x1

    #@1a
    iget v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    #@1c
    add-int/lit8 v4, v4, -0x1

    #@1e
    shl-int/2addr v3, v4

    #@1f
    mul-int/2addr v2, v3

    #@20
    int-to-long v2, v2

    #@21
    add-long p1, v0, v2

    #@23
    goto :goto_4
.end method
