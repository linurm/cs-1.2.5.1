.class Lcom/facebook/internal/ImageResponseCache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/ImageResponseCache$BufferedHttpInputStream;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;

.field private static volatile imageCache:Lcom/facebook/internal/FileLruCache;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-class v0, Lcom/facebook/internal/ImageResponseCache;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/facebook/internal/ImageResponseCache;->TAG:Ljava/lang/String;

    #@8
    return-void
.end method

.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static clearCache(Landroid/content/Context;)V
    .registers 7

    #@0
    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/ImageResponseCache;->getCache(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;

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
    sget-object v3, Lcom/facebook/internal/ImageResponseCache;->TAG:Ljava/lang/String;

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
    const-class v0, Lcom/facebook/internal/ImageResponseCache;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sget-object v0, Lcom/facebook/internal/ImageResponseCache;->imageCache:Lcom/facebook/internal/FileLruCache;

    #@5
    if-nez v0, :cond_19

    #@7
    new-instance v0, Lcom/facebook/internal/FileLruCache;

    #@9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@c
    move-result-object v1

    #@d
    sget-object v2, Lcom/facebook/internal/ImageResponseCache;->TAG:Ljava/lang/String;

    #@f
    new-instance v3, Lcom/facebook/internal/FileLruCache$Limits;

    #@11
    invoke-direct {v3}, Lcom/facebook/internal/FileLruCache$Limits;-><init>()V

    #@14
    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/internal/FileLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V

    #@17
    sput-object v0, Lcom/facebook/internal/ImageResponseCache;->imageCache:Lcom/facebook/internal/FileLruCache;

    #@19
    :cond_19
    sget-object v0, Lcom/facebook/internal/ImageResponseCache;->imageCache:Lcom/facebook/internal/FileLruCache;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1f

    #@1b
    const-class v1, Lcom/facebook/internal/ImageResponseCache;

    #@1d
    monitor-exit v1

    #@1e
    return-object v0

    #@1f
    :catchall_1f
    move-exception v0

    #@20
    const-class v1, Lcom/facebook/internal/ImageResponseCache;

    #@22
    monitor-exit v1

    #@23
    throw v0
.end method

.method static getCachedImageStream(Ljava/net/URI;Landroid/content/Context;)Ljava/io/InputStream;
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p0, :cond_15

    #@3
    invoke-static {p0}, Lcom/facebook/internal/ImageResponseCache;->isCDNURL(Ljava/net/URI;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_15

    #@9
    :try_start_9
    invoke-static {p1}, Lcom/facebook/internal/ImageResponseCache;->getCache(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v1, v2}, Lcom/facebook/internal/FileLruCache;->get(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_14} :catch_16

    #@14
    move-result-object v0

    #@15
    :cond_15
    :goto_15
    return-object v0

    #@16
    :catch_16
    move-exception v1

    #@17
    sget-object v2, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    #@19
    const/4 v3, 0x5

    #@1a
    sget-object v4, Lcom/facebook/internal/ImageResponseCache;->TAG:Ljava/lang/String;

    #@1c
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-static {v2, v3, v4, v1}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    #@23
    goto :goto_15
.end method

.method static interceptAndCacheImageStream(Landroid/content/Context;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    #@4
    move-result v1

    #@5
    const/16 v2, 0xc8

    #@7
    if-ne v1, v2, :cond_2c

    #@9
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    #@10
    move-result-object v0

    #@11
    :try_start_11
    invoke-virtual {v1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    #@14
    move-result-object v2

    #@15
    invoke-static {v2}, Lcom/facebook/internal/ImageResponseCache;->isCDNURL(Ljava/net/URI;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_2c

    #@1b
    invoke-static {p0}, Lcom/facebook/internal/ImageResponseCache;->getCache(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    new-instance v3, Lcom/facebook/internal/ImageResponseCache$BufferedHttpInputStream;

    #@25
    invoke-direct {v3, v0, p1}, Lcom/facebook/internal/ImageResponseCache$BufferedHttpInputStream;-><init>(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    #@28
    invoke-virtual {v2, v1, v3}, Lcom/facebook/internal/FileLruCache;->interceptAndPut(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_2b} :catch_2d
    .catch Ljava/net/URISyntaxException; {:try_start_11 .. :try_end_2b} :catch_2f

    #@2b
    move-result-object v0

    #@2c
    :cond_2c
    :goto_2c
    return-object v0

    #@2d
    :catch_2d
    move-exception v1

    #@2e
    goto :goto_2c

    #@2f
    :catch_2f
    move-exception v1

    #@30
    goto :goto_2c
.end method

.method private static isCDNURL(Ljava/net/URI;)Z
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    if-eqz p0, :cond_20

    #@3
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    const-string v2, "fbcdn.net"

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_10

    #@f
    :cond_f
    :goto_f
    return v0

    #@10
    :cond_10
    const-string v2, "fbcdn"

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_20

    #@18
    const-string v2, "akamaihd.net"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@1d
    move-result v1

    #@1e
    if-nez v1, :cond_f

    #@20
    :cond_20
    const/4 v0, 0x0

    #@21
    goto :goto_f
.end method
