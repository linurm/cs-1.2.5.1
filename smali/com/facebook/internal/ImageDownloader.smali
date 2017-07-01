.class public Lcom/facebook/internal/ImageDownloader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;,
        Lcom/facebook/internal/ImageDownloader$DownloadImageWorkItem;,
        Lcom/facebook/internal/ImageDownloader$DownloaderContext;,
        Lcom/facebook/internal/ImageDownloader$RequestKey;
    }
.end annotation


# static fields
.field private static final CACHE_READ_QUEUE_MAX_CONCURRENT:I = 0x2

.field private static final DOWNLOAD_QUEUE_MAX_CONCURRENT:I = 0x8

.field private static cacheReadQueue:Lcom/facebook/internal/WorkQueue;

.field private static downloadQueue:Lcom/facebook/internal/WorkQueue;

.field private static handler:Landroid/os/Handler;

.field private static final pendingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/internal/ImageDownloader$RequestKey;",
            "Lcom/facebook/internal/ImageDownloader$DownloaderContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Lcom/facebook/internal/WorkQueue;

    #@2
    const/16 v1, 0x8

    #@4
    invoke-direct {v0, v1}, Lcom/facebook/internal/WorkQueue;-><init>(I)V

    #@7
    sput-object v0, Lcom/facebook/internal/ImageDownloader;->downloadQueue:Lcom/facebook/internal/WorkQueue;

    #@9
    new-instance v0, Lcom/facebook/internal/WorkQueue;

    #@b
    const/4 v1, 0x2

    #@c
    invoke-direct {v0, v1}, Lcom/facebook/internal/WorkQueue;-><init>(I)V

    #@f
    sput-object v0, Lcom/facebook/internal/ImageDownloader;->cacheReadQueue:Lcom/facebook/internal/WorkQueue;

    #@11
    new-instance v0, Ljava/util/HashMap;

    #@13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@16
    sput-object v0, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    #@18
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;Z)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/facebook/internal/ImageDownloader;->readFromCache(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;Z)V

    #@3
    return-void
.end method

.method static synthetic access$200(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;)V
    .registers 2

    #@0
    invoke-static {p0, p1}, Lcom/facebook/internal/ImageDownloader;->download(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;)V

    #@3
    return-void
.end method

.method public static cancelRequest(Lcom/facebook/internal/ImageRequest;)Z
    .registers 6

    #@0
    const/4 v1, 0x1

    #@1
    new-instance v2, Lcom/facebook/internal/ImageDownloader$RequestKey;

    #@3
    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getImageUri()Ljava/net/URI;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getCallerTag()Ljava/lang/Object;

    #@a
    move-result-object v3

    #@b
    invoke-direct {v2, v0, v3}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Ljava/net/URI;Ljava/lang/Object;)V

    #@e
    sget-object v3, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    #@10
    monitor-enter v3

    #@11
    :try_start_11
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    #@13
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    #@19
    if-eqz v0, :cond_33

    #@1b
    iget-object v4, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/internal/WorkQueue$WorkItem;

    #@1d
    invoke-interface {v4}, Lcom/facebook/internal/WorkQueue$WorkItem;->cancel()Z

    #@20
    move-result v4

    #@21
    if-eqz v4, :cond_2b

    #@23
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    #@25
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move v0, v1

    #@29
    :goto_29
    monitor-exit v3

    #@2a
    return v0

    #@2b
    :cond_2b
    const/4 v2, 0x1

    #@2c
    iput-boolean v2, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    #@2e
    move v0, v1

    #@2f
    goto :goto_29

    #@30
    :catchall_30
    move-exception v0

    #@31
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_11 .. :try_end_32} :catchall_30

    #@32
    throw v0

    #@33
    :cond_33
    const/4 v0, 0x0

    #@34
    goto :goto_29
.end method

.method public static clearCache(Landroid/content/Context;)V
    .registers 1

    #@0
    invoke-static {p0}, Lcom/facebook/internal/ImageResponseCache;->clearCache(Landroid/content/Context;)V

    #@3
    invoke-static {p0}, Lcom/facebook/internal/UrlRedirectCache;->clearCache(Landroid/content/Context;)V

    #@6
    return-void
.end method

.method private static download(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;)V
    .registers 13

    #@0
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    :try_start_3
    new-instance v0, Ljava/net/URL;

    #@5
    iget-object v2, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Ljava/net/URI;

    #@7
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@e
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_14} :catch_ca
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_14} :catch_ba
    .catchall {:try_start_3 .. :try_end_14} :catchall_b0

    #@14
    const/4 v2, 0x0

    #@15
    :try_start_15
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    #@18
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    #@1b
    move-result v2

    #@1c
    sparse-switch v2, :sswitch_data_e6

    #@1f
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_22} :catch_d0
    .catch Ljava/net/URISyntaxException; {:try_start_15 .. :try_end_22} :catch_bf
    .catchall {:try_start_15 .. :try_end_22} :catchall_e4

    #@22
    move-result-object v5

    #@23
    :try_start_23
    new-instance v2, Ljava/io/InputStreamReader;

    #@25
    invoke-direct {v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@28
    const/16 v6, 0x80

    #@2a
    new-array v6, v6, [C

    #@2c
    new-instance v7, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    :goto_31
    const/4 v8, 0x0

    #@32
    array-length v9, v6

    #@33
    invoke-virtual {v2, v6, v8, v9}, Ljava/io/InputStreamReader;->read([CII)I

    #@36
    move-result v8

    #@37
    if-lez v8, :cond_95

    #@39
    const/4 v9, 0x0

    #@3a
    invoke-virtual {v7, v6, v9, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_3d} :catch_3e
    .catch Ljava/net/URISyntaxException; {:try_start_23 .. :try_end_3d} :catch_a2
    .catchall {:try_start_23 .. :try_end_3d} :catchall_e1

    #@3d
    goto :goto_31

    #@3e
    :catch_3e
    move-exception v2

    #@3f
    move-object v10, v2

    #@40
    move-object v2, v5

    #@41
    move-object v5, v10

    #@42
    move-object v10, v2

    #@43
    move-object v2, v0

    #@44
    move-object v0, v10

    #@45
    :goto_45
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    #@48
    invoke-static {v2}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    #@4b
    :goto_4b
    if-eqz v3, :cond_50

    #@4d
    invoke-static {p0, v5, v1, v4}, Lcom/facebook/internal/ImageDownloader;->issueResponse(Lcom/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    #@50
    :cond_50
    return-void

    #@51
    :sswitch_51
    :try_start_51
    const-string v2, "location"

    #@53
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    #@5a
    move-result v3

    #@5b
    if-nez v3, :cond_dd

    #@5d
    new-instance v3, Ljava/net/URI;

    #@5f
    invoke-direct {v3, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    #@62
    iget-object v2, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Ljava/net/URI;

    #@64
    invoke-static {p1, v2, v3}, Lcom/facebook/internal/UrlRedirectCache;->cacheUriRedirect(Landroid/content/Context;Ljava/net/URI;Ljava/net/URI;)V

    #@67
    invoke-static {p0}, Lcom/facebook/internal/ImageDownloader;->removePendingRequest(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    #@6a
    move-result-object v2

    #@6b
    if-eqz v2, :cond_7e

    #@6d
    iget-boolean v5, v2, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    #@6f
    if-nez v5, :cond_7e

    #@71
    iget-object v2, v2, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    #@73
    new-instance v5, Lcom/facebook/internal/ImageDownloader$RequestKey;

    #@75
    iget-object v6, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    #@77
    invoke-direct {v5, v3, v6}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Ljava/net/URI;Ljava/lang/Object;)V

    #@7a
    const/4 v3, 0x0

    #@7b
    invoke-static {v2, v5, v3}, Lcom/facebook/internal/ImageDownloader;->enqueueCacheRead(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_7e} :catch_d6
    .catch Ljava/net/URISyntaxException; {:try_start_51 .. :try_end_7e} :catch_c4
    .catchall {:try_start_51 .. :try_end_7e} :catchall_e4

    #@7e
    :cond_7e
    move-object v2, v1

    #@7f
    move v3, v4

    #@80
    move-object v5, v1

    #@81
    :goto_81
    invoke-static {v5}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    #@84
    invoke-static {v0}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    #@87
    move-object v5, v2

    #@88
    goto :goto_4b

    #@89
    :sswitch_89
    :try_start_89
    invoke-static {p1, v0}, Lcom/facebook/internal/ImageResponseCache;->interceptAndCacheImageStream(Landroid/content/Context;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_d0
    .catch Ljava/net/URISyntaxException; {:try_start_89 .. :try_end_8c} :catch_bf
    .catchall {:try_start_89 .. :try_end_8c} :catchall_e4

    #@8c
    move-result-object v5

    #@8d
    :try_start_8d
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    #@90
    move-result-object v2

    #@91
    move-object v10, v2

    #@92
    move-object v2, v1

    #@93
    move-object v1, v10

    #@94
    goto :goto_81

    #@95
    :cond_95
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    #@98
    new-instance v2, Lcom/facebook/FacebookException;

    #@9a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v6

    #@9e
    invoke-direct {v2, v6}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_a1} :catch_3e
    .catch Ljava/net/URISyntaxException; {:try_start_8d .. :try_end_a1} :catch_a2
    .catchall {:try_start_8d .. :try_end_a1} :catchall_e1

    #@a1
    goto :goto_81

    #@a2
    :catch_a2
    move-exception v2

    #@a3
    move-object v10, v2

    #@a4
    move-object v2, v5

    #@a5
    move-object v5, v10

    #@a6
    move-object v10, v2

    #@a7
    move-object v2, v0

    #@a8
    move-object v0, v10

    #@a9
    :goto_a9
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    #@ac
    invoke-static {v2}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    #@af
    goto :goto_4b

    #@b0
    :catchall_b0
    move-exception v0

    #@b1
    move-object v2, v0

    #@b2
    move-object v0, v1

    #@b3
    :goto_b3
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    #@b6
    invoke-static {v0}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    #@b9
    throw v2

    #@ba
    :catch_ba
    move-exception v0

    #@bb
    move-object v2, v1

    #@bc
    move-object v5, v0

    #@bd
    move-object v0, v1

    #@be
    goto :goto_a9

    #@bf
    :catch_bf
    move-exception v2

    #@c0
    move-object v5, v2

    #@c1
    move-object v2, v0

    #@c2
    move-object v0, v1

    #@c3
    goto :goto_a9

    #@c4
    :catch_c4
    move-exception v2

    #@c5
    move v3, v4

    #@c6
    move-object v5, v2

    #@c7
    move-object v2, v0

    #@c8
    move-object v0, v1

    #@c9
    goto :goto_a9

    #@ca
    :catch_ca
    move-exception v0

    #@cb
    move-object v2, v1

    #@cc
    move-object v5, v0

    #@cd
    move-object v0, v1

    #@ce
    goto/16 :goto_45

    #@d0
    :catch_d0
    move-exception v2

    #@d1
    move-object v5, v2

    #@d2
    move-object v2, v0

    #@d3
    move-object v0, v1

    #@d4
    goto/16 :goto_45

    #@d6
    :catch_d6
    move-exception v2

    #@d7
    move v3, v4

    #@d8
    move-object v5, v2

    #@d9
    move-object v2, v0

    #@da
    move-object v0, v1

    #@db
    goto/16 :goto_45

    #@dd
    :cond_dd
    move-object v2, v1

    #@de
    move v3, v4

    #@df
    move-object v5, v1

    #@e0
    goto :goto_81

    #@e1
    :catchall_e1
    move-exception v2

    #@e2
    move-object v1, v5

    #@e3
    goto :goto_b3

    #@e4
    :catchall_e4
    move-exception v2

    #@e5
    goto :goto_b3

    #@e6
    :sswitch_data_e6
    .sparse-switch
        0xc8 -> :sswitch_89
        0x12d -> :sswitch_51
        0x12e -> :sswitch_51
    .end sparse-switch
.end method

.method public static downloadAsync(Lcom/facebook/internal/ImageRequest;)V
    .registers 4

    #@0
    if-nez p0, :cond_3

    #@2
    :goto_2
    return-void

    #@3
    :cond_3
    new-instance v1, Lcom/facebook/internal/ImageDownloader$RequestKey;

    #@5
    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getImageUri()Ljava/net/URI;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getCallerTag()Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v1, v0, v2}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Ljava/net/URI;Ljava/lang/Object;)V

    #@10
    sget-object v2, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    #@12
    monitor-enter v2

    #@13
    :try_start_13
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    #@15
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    #@1b
    if-eqz v0, :cond_2c

    #@1d
    iput-object p0, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    #@1f
    const/4 v1, 0x0

    #@20
    iput-boolean v1, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    #@22
    iget-object v0, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/internal/WorkQueue$WorkItem;

    #@24
    invoke-interface {v0}, Lcom/facebook/internal/WorkQueue$WorkItem;->moveToFront()V

    #@27
    :goto_27
    monitor-exit v2

    #@28
    goto :goto_2

    #@29
    :catchall_29
    move-exception v0

    #@2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_29

    #@2b
    throw v0

    #@2c
    :cond_2c
    :try_start_2c
    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->isCachedRedirectAllowed()Z

    #@2f
    move-result v0

    #@30
    invoke-static {p0, v1, v0}, Lcom/facebook/internal/ImageDownloader;->enqueueCacheRead(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_29

    #@33
    goto :goto_27
.end method

.method private static enqueueCacheRead(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V
    .registers 6

    #@0
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->cacheReadQueue:Lcom/facebook/internal/WorkQueue;

    #@2
    new-instance v1, Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;

    #@4
    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getContext()Landroid/content/Context;

    #@7
    move-result-object v2

    #@8
    invoke-direct {v1, v2, p1, p2}, Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;-><init>(Landroid/content/Context;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V

    #@b
    invoke-static {p0, p1, v0, v1}, Lcom/facebook/internal/ImageDownloader;->enqueueRequest(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V

    #@e
    return-void
.end method

.method private static enqueueDownload(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;)V
    .registers 5

    #@0
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->downloadQueue:Lcom/facebook/internal/WorkQueue;

    #@2
    new-instance v1, Lcom/facebook/internal/ImageDownloader$DownloadImageWorkItem;

    #@4
    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getContext()Landroid/content/Context;

    #@7
    move-result-object v2

    #@8
    invoke-direct {v1, v2, p1}, Lcom/facebook/internal/ImageDownloader$DownloadImageWorkItem;-><init>(Landroid/content/Context;Lcom/facebook/internal/ImageDownloader$RequestKey;)V

    #@b
    invoke-static {p0, p1, v0, v1}, Lcom/facebook/internal/ImageDownloader;->enqueueRequest(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V

    #@e
    return-void
.end method

.method private static enqueueRequest(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V
    .registers 7

    #@0
    sget-object v1, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    new-instance v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    #@5
    const/4 v2, 0x0

    #@6
    invoke-direct {v0, v2}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;-><init>(Lcom/facebook/internal/ImageDownloader$1;)V

    #@9
    iput-object p0, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    #@b
    sget-object v2, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    #@d
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    invoke-virtual {p2, p3}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/internal/WorkQueue$WorkItem;

    #@13
    move-result-object v2

    #@14
    iput-object v2, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/internal/WorkQueue$WorkItem;

    #@16
    monitor-exit v1

    #@17
    return-void

    #@18
    :catchall_18
    move-exception v0

    #@19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    #@1a
    throw v0
.end method

.method private static getHandler()Landroid/os/Handler;
    .registers 2

    #@0
    const-class v0, Lcom/facebook/internal/ImageDownloader;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->handler:Landroid/os/Handler;

    #@5
    if-nez v0, :cond_12

    #@7
    new-instance v0, Landroid/os/Handler;

    #@9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@c
    move-result-object v1

    #@d
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@10
    sput-object v0, Lcom/facebook/internal/ImageDownloader;->handler:Landroid/os/Handler;

    #@12
    :cond_12
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->handler:Landroid/os/Handler;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_18

    #@14
    const-class v1, Lcom/facebook/internal/ImageDownloader;

    #@16
    monitor-exit v1

    #@17
    return-object v0

    #@18
    :catchall_18
    move-exception v0

    #@19
    const-class v1, Lcom/facebook/internal/ImageDownloader;

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method private static issueResponse(Lcom/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V
    .registers 11

    #@0
    invoke-static {p0}, Lcom/facebook/internal/ImageDownloader;->removePendingRequest(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_21

    #@6
    iget-boolean v1, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    #@8
    if-nez v1, :cond_21

    #@a
    iget-object v1, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    #@c
    invoke-virtual {v1}, Lcom/facebook/internal/ImageRequest;->getCallback()Lcom/facebook/internal/ImageRequest$Callback;

    #@f
    move-result-object v5

    #@10
    if-eqz v5, :cond_21

    #@12
    invoke-static {}, Lcom/facebook/internal/ImageDownloader;->getHandler()Landroid/os/Handler;

    #@15
    move-result-object v6

    #@16
    new-instance v0, Lcom/facebook/internal/ImageDownloader$1;

    #@18
    move-object v2, p1

    #@19
    move v3, p3

    #@1a
    move-object v4, p2

    #@1b
    invoke-direct/range {v0 .. v5}, Lcom/facebook/internal/ImageDownloader$1;-><init>(Lcom/facebook/internal/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/internal/ImageRequest$Callback;)V

    #@1e
    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@21
    :cond_21
    return-void
.end method

.method public static prioritizeRequest(Lcom/facebook/internal/ImageRequest;)V
    .registers 4

    #@0
    new-instance v0, Lcom/facebook/internal/ImageDownloader$RequestKey;

    #@2
    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getImageUri()Ljava/net/URI;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getCallerTag()Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Ljava/net/URI;Ljava/lang/Object;)V

    #@d
    sget-object v1, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    #@f
    monitor-enter v1

    #@10
    :try_start_10
    sget-object v2, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    #@12
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    #@18
    if-eqz v0, :cond_1f

    #@1a
    iget-object v0, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/internal/WorkQueue$WorkItem;

    #@1c
    invoke-interface {v0}, Lcom/facebook/internal/WorkQueue$WorkItem;->moveToFront()V

    #@1f
    :cond_1f
    monitor-exit v1

    #@20
    return-void

    #@21
    :catchall_21
    move-exception v0

    #@22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_21

    #@23
    throw v0
.end method

.method private static readFromCache(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;Z)V
    .registers 7

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    if-eqz p2, :cond_38

    #@4
    iget-object v0, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Ljava/net/URI;

    #@6
    invoke-static {p1, v0}, Lcom/facebook/internal/UrlRedirectCache;->getRedirectedUri(Landroid/content/Context;Ljava/net/URI;)Ljava/net/URI;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_38

    #@c
    invoke-static {v0, p1}, Lcom/facebook/internal/ImageResponseCache;->getCachedImageStream(Ljava/net/URI;Landroid/content/Context;)Ljava/io/InputStream;

    #@f
    move-result-object v0

    #@10
    if-eqz v0, :cond_13

    #@12
    const/4 v2, 0x1

    #@13
    :cond_13
    :goto_13
    if-nez v2, :cond_1b

    #@15
    iget-object v0, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Ljava/net/URI;

    #@17
    invoke-static {v0, p1}, Lcom/facebook/internal/ImageResponseCache;->getCachedImageStream(Ljava/net/URI;Landroid/content/Context;)Ljava/io/InputStream;

    #@1a
    move-result-object v0

    #@1b
    :cond_1b
    if-eqz v0, :cond_28

    #@1d
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    #@20
    move-result-object v3

    #@21
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    #@24
    invoke-static {p0, v1, v3, v2}, Lcom/facebook/internal/ImageDownloader;->issueResponse(Lcom/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    #@27
    :cond_27
    :goto_27
    return-void

    #@28
    :cond_28
    invoke-static {p0}, Lcom/facebook/internal/ImageDownloader;->removePendingRequest(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    #@2b
    move-result-object v0

    #@2c
    if-eqz v0, :cond_27

    #@2e
    iget-boolean v1, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    #@30
    if-nez v1, :cond_27

    #@32
    iget-object v0, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    #@34
    invoke-static {v0, p0}, Lcom/facebook/internal/ImageDownloader;->enqueueDownload(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;)V

    #@37
    goto :goto_27

    #@38
    :cond_38
    move-object v0, v1

    #@39
    goto :goto_13
.end method

.method private static removePendingRequest(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    .registers 3

    #@0
    sget-object v1, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    #@5
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    #@b
    monitor-exit v1

    #@c
    return-object v0

    #@d
    :catchall_d
    move-exception v0

    #@e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    #@f
    throw v0
.end method
