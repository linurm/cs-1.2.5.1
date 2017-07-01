.class Lcom/facebook/internal/UrlRedirectCache;
.super Ljava/lang/Object;


# static fields
.field private static final REDIRECT_CONTENT_TAG:Ljava/lang/String;

.field static final TAG:Ljava/lang/String;

.field private static volatile urlRedirectCache:Lcom/facebook/internal/FileLruCache;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const-class v0, Lcom/facebook/internal/UrlRedirectCache;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/facebook/internal/UrlRedirectCache;->TAG:Ljava/lang/String;

    #@8
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    sget-object v1, Lcom/facebook/internal/UrlRedirectCache;->TAG:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string v1, "_Redirect"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    sput-object v0, Lcom/facebook/internal/UrlRedirectCache;->REDIRECT_CONTENT_TAG:Ljava/lang/String;

    #@1f
    return-void
.end method

.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static cacheUriRedirect(Landroid/content/Context;Ljava/net/URI;Ljava/net/URI;)V
    .registers 7

    #@0
    const/4 v1, 0x0

    #@1
    if-eqz p1, :cond_5

    #@3
    if-nez p2, :cond_6

    #@5
    :cond_5
    :goto_5
    return-void

    #@6
    :cond_6
    :try_start_6
    invoke-static {p0}, Lcom/facebook/internal/UrlRedirectCache;->getCache(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    sget-object v3, Lcom/facebook/internal/UrlRedirectCache;->REDIRECT_CONTENT_TAG:Ljava/lang/String;

    #@10
    invoke-virtual {v0, v2, v3}, Lcom/facebook/internal/FileLruCache;->openPutStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_13} :catch_23
    .catchall {:try_start_6 .. :try_end_13} :catchall_2d

    #@13
    move-result-object v1

    #@14
    :try_start_14
    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1f} :catch_23
    .catchall {:try_start_14 .. :try_end_1f} :catchall_28

    #@1f
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    #@22
    goto :goto_5

    #@23
    :catch_23
    move-exception v0

    #@24
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    #@27
    goto :goto_5

    #@28
    :catchall_28
    move-exception v0

    #@29
    :goto_29
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    #@2c
    throw v0

    #@2d
    :catchall_2d
    move-exception v0

    #@2e
    goto :goto_29
.end method

.method static clearCache(Landroid/content/Context;)V
    .registers 7

    #@0
    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/UrlRedirectCache;->getCache(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/facebook/internal/FileLruCache;->clearCache()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    #@7
    :goto_7
    return-void

    #@8
    :catch_8
    move-exception v0

    #@9
    sget-object v1, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    #@b
    const/4 v2, 0x5

    #@c
    sget-object v3, Lcom/facebook/internal/UrlRedirectCache;->TAG:Ljava/lang/String;

    #@e
    new-instance v4, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string v5, "clearCache failed "

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    invoke-static {v1, v2, v3, v0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    #@28
    goto :goto_7
.end method

.method static getCache(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const-class v0, Lcom/facebook/internal/UrlRedirectCache;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sget-object v0, Lcom/facebook/internal/UrlRedirectCache;->urlRedirectCache:Lcom/facebook/internal/FileLruCache;

    #@5
    if-nez v0, :cond_19

    #@7
    new-instance v0, Lcom/facebook/internal/FileLruCache;

    #@9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@c
    move-result-object v1

    #@d
    sget-object v2, Lcom/facebook/internal/UrlRedirectCache;->TAG:Ljava/lang/String;

    #@f
    new-instance v3, Lcom/facebook/internal/FileLruCache$Limits;

    #@11
    invoke-direct {v3}, Lcom/facebook/internal/FileLruCache$Limits;-><init>()V

    #@14
    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/internal/FileLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V

    #@17
    sput-object v0, Lcom/facebook/internal/UrlRedirectCache;->urlRedirectCache:Lcom/facebook/internal/FileLruCache;

    #@19
    :cond_19
    sget-object v0, Lcom/facebook/internal/UrlRedirectCache;->urlRedirectCache:Lcom/facebook/internal/FileLruCache;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1f

    #@1b
    const-class v1, Lcom/facebook/internal/UrlRedirectCache;

    #@1d
    monitor-exit v1

    #@1e
    return-object v0

    #@1f
    :catchall_1f
    move-exception v0

    #@20
    const-class v1, Lcom/facebook/internal/UrlRedirectCache;

    #@22
    monitor-exit v1

    #@23
    throw v0
.end method

.method static getRedirectedUri(Landroid/content/Context;Ljava/net/URI;)Ljava/net/URI;
    .registers 10

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    if-nez p1, :cond_5

    #@4
    :goto_4
    return-object v0

    #@5
    :cond_5
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    :try_start_9
    invoke-static {p0}, Lcom/facebook/internal/UrlRedirectCache;->getCache(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;
    :try_end_c
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_c} :catch_68
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_53
    .catchall {:try_start_9 .. :try_end_c} :catchall_6e

    #@c
    move-result-object v4

    #@d
    move-object v3, v2

    #@e
    move-object v2, v0

    #@f
    :goto_f
    :try_start_f
    sget-object v5, Lcom/facebook/internal/UrlRedirectCache;->REDIRECT_CONTENT_TAG:Ljava/lang/String;

    #@11
    invoke-virtual {v4, v3, v5}, Lcom/facebook/internal/FileLruCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    #@14
    move-result-object v5

    #@15
    if-eqz v5, :cond_43

    #@17
    new-instance v1, Ljava/io/InputStreamReader;

    #@19
    invoke-direct {v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1c
    .catch Ljava/net/URISyntaxException; {:try_start_f .. :try_end_1c} :catch_6b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1c} :catch_65
    .catchall {:try_start_f .. :try_end_1c} :catchall_61

    #@1c
    const/16 v2, 0x80

    #@1e
    :try_start_1e
    new-array v2, v2, [C

    #@20
    new-instance v3, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    :goto_25
    const/4 v5, 0x0

    #@26
    array-length v6, v2

    #@27
    invoke-virtual {v1, v2, v5, v6}, Ljava/io/InputStreamReader;->read([CII)I

    #@2a
    move-result v5

    #@2b
    if-lez v5, :cond_37

    #@2d
    const/4 v6, 0x0

    #@2e
    invoke-virtual {v3, v2, v6, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_31
    .catch Ljava/net/URISyntaxException; {:try_start_1e .. :try_end_31} :catch_32
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_31} :catch_70
    .catchall {:try_start_1e .. :try_end_31} :catchall_59

    #@31
    goto :goto_25

    #@32
    :catch_32
    move-exception v2

    #@33
    :goto_33
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    #@36
    goto :goto_4

    #@37
    :cond_37
    :try_start_37
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    #@3a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3d
    .catch Ljava/net/URISyntaxException; {:try_start_37 .. :try_end_3d} :catch_32
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3d} :catch_70
    .catchall {:try_start_37 .. :try_end_3d} :catchall_59

    #@3d
    move-result-object v3

    #@3e
    const/4 v2, 0x1

    #@3f
    move v7, v2

    #@40
    move-object v2, v1

    #@41
    move v1, v7

    #@42
    goto :goto_f

    #@43
    :cond_43
    if-eqz v1, :cond_4f

    #@45
    :try_start_45
    new-instance v1, Ljava/net/URI;

    #@47
    invoke-direct {v1, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/net/URISyntaxException; {:try_start_45 .. :try_end_4a} :catch_6b
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4a} :catch_65
    .catchall {:try_start_45 .. :try_end_4a} :catchall_61

    #@4a
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    #@4d
    move-object v0, v1

    #@4e
    goto :goto_4

    #@4f
    :cond_4f
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    #@52
    goto :goto_4

    #@53
    :catch_53
    move-exception v1

    #@54
    move-object v1, v0

    #@55
    :goto_55
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    #@58
    goto :goto_4

    #@59
    :catchall_59
    move-exception v0

    #@5a
    move-object v7, v1

    #@5b
    move-object v1, v0

    #@5c
    move-object v0, v7

    #@5d
    :goto_5d
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    #@60
    throw v1

    #@61
    :catchall_61
    move-exception v0

    #@62
    move-object v1, v0

    #@63
    move-object v0, v2

    #@64
    goto :goto_5d

    #@65
    :catch_65
    move-exception v1

    #@66
    move-object v1, v2

    #@67
    goto :goto_55

    #@68
    :catch_68
    move-exception v1

    #@69
    move-object v1, v0

    #@6a
    goto :goto_33

    #@6b
    :catch_6b
    move-exception v1

    #@6c
    move-object v1, v2

    #@6d
    goto :goto_33

    #@6e
    :catchall_6e
    move-exception v1

    #@6f
    goto :goto_5d

    #@70
    :catch_70
    move-exception v2

    #@71
    goto :goto_55
.end method
