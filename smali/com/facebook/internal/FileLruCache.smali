.class public final Lcom/facebook/internal/FileLruCache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/FileLruCache$BufferFile;,
        Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;,
        Lcom/facebook/internal/FileLruCache$CopyingInputStream;,
        Lcom/facebook/internal/FileLruCache$Limits;,
        Lcom/facebook/internal/FileLruCache$ModifiedFile;,
        Lcom/facebook/internal/FileLruCache$StreamCloseCallback;,
        Lcom/facebook/internal/FileLruCache$StreamHeader;
    }
.end annotation


# static fields
.field private static final HEADER_CACHEKEY_KEY:Ljava/lang/String; = "key"

.field private static final HEADER_CACHE_CONTENT_TAG_KEY:Ljava/lang/String; = "tag"

.field static final TAG:Ljava/lang/String;

.field private static final bufferIndex:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final directory:Ljava/io/File;

.field private isTrimInProgress:Z

.field private isTrimPending:Z

.field private lastClearCacheTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private final limits:Lcom/facebook/internal/FileLruCache$Limits;

.field private final lock:Ljava/lang/Object;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-class v0, Lcom/facebook/internal/FileLruCache;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    #@8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    #@a
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    #@d
    sput-object v0, Lcom/facebook/internal/FileLruCache;->bufferIndex:Ljava/util/concurrent/atomic/AtomicLong;

    #@f
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V
    .registers 8

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    #@5
    const-wide/16 v2, 0x0

    #@7
    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    #@a
    iput-object v0, p0, Lcom/facebook/internal/FileLruCache;->lastClearCacheTime:Ljava/util/concurrent/atomic/AtomicLong;

    #@c
    iput-object p2, p0, Lcom/facebook/internal/FileLruCache;->tag:Ljava/lang/String;

    #@e
    iput-object p3, p0, Lcom/facebook/internal/FileLruCache;->limits:Lcom/facebook/internal/FileLruCache$Limits;

    #@10
    new-instance v0, Ljava/io/File;

    #@12
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    #@15
    move-result-object v1

    #@16
    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@19
    iput-object v0, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    #@1b
    new-instance v0, Ljava/lang/Object;

    #@1d
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@20
    iput-object v0, p0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    #@22
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    #@24
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@27
    move-result v0

    #@28
    if-nez v0, :cond_32

    #@2a
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    #@2c
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_37

    #@32
    :cond_32
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    #@34
    invoke-static {v0}, Lcom/facebook/internal/FileLruCache$BufferFile;->deleteAll(Ljava/io/File;)V

    #@37
    :cond_37
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/internal/FileLruCache;)Ljava/util/concurrent/atomic/AtomicLong;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache;->lastClearCacheTime:Ljava/util/concurrent/atomic/AtomicLong;

    #@2
    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/internal/FileLruCache;Ljava/lang/String;Ljava/io/File;)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/FileLruCache;->renameToTargetAndTrim(Ljava/lang/String;Ljava/io/File;)V

    #@3
    return-void
.end method

.method static synthetic access$200(Lcom/facebook/internal/FileLruCache;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/facebook/internal/FileLruCache;->trim()V

    #@3
    return-void
.end method

.method static synthetic access$300()Ljava/util/concurrent/atomic/AtomicLong;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/internal/FileLruCache;->bufferIndex:Ljava/util/concurrent/atomic/AtomicLong;

    #@2
    return-object v0
.end method

.method private postTrim()V
    .registers 4

    #@0
    iget-object v1, p0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-boolean v0, p0, Lcom/facebook/internal/FileLruCache;->isTrimPending:Z

    #@5
    if-nez v0, :cond_16

    #@7
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lcom/facebook/internal/FileLruCache;->isTrimPending:Z

    #@a
    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    #@d
    move-result-object v0

    #@e
    new-instance v2, Lcom/facebook/internal/FileLruCache$3;

    #@10
    invoke-direct {v2, p0}, Lcom/facebook/internal/FileLruCache$3;-><init>(Lcom/facebook/internal/FileLruCache;)V

    #@13
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@16
    :cond_16
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

.method private renameToTargetAndTrim(Ljava/lang/String;Ljava/io/File;)V
    .registers 6

    #@0
    new-instance v0, Ljava/io/File;

    #@2
    iget-object v1, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    #@4
    invoke-static {p1}, Lcom/facebook/internal/Utility;->md5hash(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@b
    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_14

    #@11
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    #@14
    :cond_14
    invoke-direct {p0}, Lcom/facebook/internal/FileLruCache;->postTrim()V

    #@17
    return-void
.end method

.method private trim()V
    .registers 19

    #@0
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    #@4
    monitor-enter v3

    #@5
    const/4 v2, 0x0

    #@6
    :try_start_6
    move-object/from16 v0, p0

    #@8
    iput-boolean v2, v0, Lcom/facebook/internal/FileLruCache;->isTrimPending:Z

    #@a
    const/4 v2, 0x1

    #@b
    move-object/from16 v0, p0

    #@d
    iput-boolean v2, v0, Lcom/facebook/internal/FileLruCache;->isTrimInProgress:Z

    #@f
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_7d

    #@10
    :try_start_10
    sget-object v2, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    #@12
    sget-object v3, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    #@14
    const-string v4, "trim started"

    #@16
    invoke-static {v2, v3, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    #@19
    new-instance v8, Ljava/util/PriorityQueue;

    #@1b
    invoke-direct {v8}, Ljava/util/PriorityQueue;-><init>()V

    #@1e
    const-wide/16 v2, 0x0

    #@20
    const-wide/16 v4, 0x0

    #@22
    move-object/from16 v0, p0

    #@24
    iget-object v6, v0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    #@26
    invoke-static {}, Lcom/facebook/internal/FileLruCache$BufferFile;->excludeBufferFiles()Ljava/io/FilenameFilter;

    #@29
    move-result-object v7

    #@2a
    invoke-virtual {v6, v7}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    #@2d
    move-result-object v7

    #@2e
    if-eqz v7, :cond_ff

    #@30
    array-length v9, v7
    :try_end_31
    .catchall {:try_start_10 .. :try_end_31} :catchall_e8

    #@31
    const/4 v6, 0x0

    #@32
    :goto_32
    if-ge v6, v9, :cond_ff

    #@34
    aget-object v10, v7, v6

    #@36
    :try_start_36
    new-instance v11, Lcom/facebook/internal/FileLruCache$ModifiedFile;

    #@38
    invoke-direct {v11, v10}, Lcom/facebook/internal/FileLruCache$ModifiedFile;-><init>(Ljava/io/File;)V

    #@3b
    invoke-virtual {v8, v11}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    #@3e
    sget-object v12, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    #@40
    sget-object v13, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    #@42
    new-instance v14, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string v15, "  trim considering time="

    #@49
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v14

    #@4d
    invoke-virtual {v11}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->getModified()J

    #@50
    move-result-wide v16

    #@51
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@54
    move-result-object v15

    #@55
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v14

    #@59
    const-string v15, " name="

    #@5b
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v14

    #@5f
    invoke-virtual {v11}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->getFile()Ljava/io/File;

    #@62
    move-result-object v11

    #@63
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    #@66
    move-result-object v11

    #@67
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v11

    #@6b
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v11

    #@6f
    invoke-static {v12, v13, v11}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    #@72
    invoke-virtual {v10}, Ljava/io/File;->length()J
    :try_end_75
    .catchall {:try_start_36 .. :try_end_75} :catchall_e8

    #@75
    move-result-wide v10

    #@76
    add-int/lit8 v6, v6, 0x1

    #@78
    const-wide/16 v12, 0x1

    #@7a
    add-long/2addr v4, v12

    #@7b
    add-long/2addr v2, v10

    #@7c
    goto :goto_32

    #@7d
    :catchall_7d
    move-exception v2

    #@7e
    :try_start_7e
    monitor-exit v3
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    #@7f
    throw v2

    #@80
    :goto_80
    :try_start_80
    move-object/from16 v0, p0

    #@82
    iget-object v2, v0, Lcom/facebook/internal/FileLruCache;->limits:Lcom/facebook/internal/FileLruCache$Limits;

    #@84
    invoke-virtual {v2}, Lcom/facebook/internal/FileLruCache$Limits;->getByteCount()I

    #@87
    move-result v2

    #@88
    int-to-long v2, v2

    #@89
    cmp-long v2, v4, v2

    #@8b
    if-gtz v2, :cond_9a

    #@8d
    move-object/from16 v0, p0

    #@8f
    iget-object v2, v0, Lcom/facebook/internal/FileLruCache;->limits:Lcom/facebook/internal/FileLruCache$Limits;

    #@91
    invoke-virtual {v2}, Lcom/facebook/internal/FileLruCache$Limits;->getFileCount()I

    #@94
    move-result v2

    #@95
    int-to-long v2, v2

    #@96
    cmp-long v2, v6, v2

    #@98
    if-lez v2, :cond_d2

    #@9a
    :cond_9a
    invoke-virtual {v8}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    #@9d
    move-result-object v2

    #@9e
    check-cast v2, Lcom/facebook/internal/FileLruCache$ModifiedFile;

    #@a0
    invoke-virtual {v2}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->getFile()Ljava/io/File;

    #@a3
    move-result-object v9

    #@a4
    sget-object v2, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    #@a6
    sget-object v3, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    #@a8
    new-instance v10, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    const-string v11, "  trim removing "

    #@af
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v10

    #@b3
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    #@b6
    move-result-object v11

    #@b7
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v10

    #@bb
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v10

    #@bf
    invoke-static {v2, v3, v10}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    #@c2
    invoke-virtual {v9}, Ljava/io/File;->length()J

    #@c5
    move-result-wide v2

    #@c6
    sub-long v2, v4, v2

    #@c8
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_cb
    .catchall {:try_start_80 .. :try_end_cb} :catchall_e8

    #@cb
    const-wide/16 v4, 0x1

    #@cd
    sub-long v4, v6, v4

    #@cf
    move-wide v6, v4

    #@d0
    move-wide v4, v2

    #@d1
    goto :goto_80

    #@d2
    :cond_d2
    move-object/from16 v0, p0

    #@d4
    iget-object v3, v0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    #@d6
    monitor-enter v3

    #@d7
    const/4 v2, 0x0

    #@d8
    :try_start_d8
    move-object/from16 v0, p0

    #@da
    iput-boolean v2, v0, Lcom/facebook/internal/FileLruCache;->isTrimInProgress:Z

    #@dc
    move-object/from16 v0, p0

    #@de
    iget-object v2, v0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    #@e0
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    #@e3
    monitor-exit v3

    #@e4
    return-void

    #@e5
    :catchall_e5
    move-exception v2

    #@e6
    monitor-exit v3
    :try_end_e7
    .catchall {:try_start_d8 .. :try_end_e7} :catchall_e5

    #@e7
    throw v2

    #@e8
    :catchall_e8
    move-exception v2

    #@e9
    move-object/from16 v0, p0

    #@eb
    iget-object v3, v0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    #@ed
    monitor-enter v3

    #@ee
    const/4 v4, 0x0

    #@ef
    :try_start_ef
    move-object/from16 v0, p0

    #@f1
    iput-boolean v4, v0, Lcom/facebook/internal/FileLruCache;->isTrimInProgress:Z

    #@f3
    move-object/from16 v0, p0

    #@f5
    iget-object v4, v0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    #@f7
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    #@fa
    monitor-exit v3
    :try_end_fb
    .catchall {:try_start_ef .. :try_end_fb} :catchall_fc

    #@fb
    throw v2

    #@fc
    :catchall_fc
    move-exception v2

    #@fd
    :try_start_fd
    monitor-exit v3
    :try_end_fe
    .catchall {:try_start_fd .. :try_end_fe} :catchall_fc

    #@fe
    throw v2

    #@ff
    :cond_ff
    move-wide v6, v4

    #@100
    move-wide v4, v2

    #@101
    goto/16 :goto_80
.end method


# virtual methods
.method public clearCache()V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    #@2
    invoke-static {}, Lcom/facebook/internal/FileLruCache$BufferFile;->excludeBufferFiles()Ljava/io/FilenameFilter;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    #@9
    move-result-object v0

    #@a
    iget-object v1, p0, Lcom/facebook/internal/FileLruCache;->lastClearCacheTime:Ljava/util/concurrent/atomic/AtomicLong;

    #@c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@f
    move-result-wide v2

    #@10
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    #@13
    if-eqz v0, :cond_21

    #@15
    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    #@18
    move-result-object v1

    #@19
    new-instance v2, Lcom/facebook/internal/FileLruCache$2;

    #@1b
    invoke-direct {v2, p0, v0}, Lcom/facebook/internal/FileLruCache$2;-><init>(Lcom/facebook/internal/FileLruCache;[Ljava/io/File;)V

    #@1e
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@21
    :cond_21
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/facebook/internal/FileLruCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    new-instance v2, Ljava/io/File;

    #@3
    iget-object v1, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    #@5
    invoke-static {p1}, Lcom/facebook/internal/Utility;->md5hash(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    :try_start_c
    new-instance v3, Ljava/io/FileInputStream;

    #@e
    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_8a

    #@11
    new-instance v1, Ljava/io/BufferedInputStream;

    #@13
    const/16 v4, 0x2000

    #@15
    invoke-direct {v1, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    #@18
    :try_start_18
    invoke-static {v1}, Lcom/facebook/internal/FileLruCache$StreamHeader;->readHeader(Ljava/io/InputStream;)Lorg/json/JSONObject;
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_85

    #@1b
    move-result-object v3

    #@1c
    if-nez v3, :cond_22

    #@1e
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    #@21
    :goto_21
    return-object v0

    #@22
    :cond_22
    :try_start_22
    const-string v4, "key"

    #@24
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    if-eqz v4, :cond_30

    #@2a
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_85

    #@2d
    move-result v4

    #@2e
    if-nez v4, :cond_34

    #@30
    :cond_30
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    #@33
    goto :goto_21

    #@34
    :cond_34
    :try_start_34
    const-string v4, "tag"

    #@36
    const/4 v5, 0x0

    #@37
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    if-nez p2, :cond_3f

    #@3d
    if-nez v3, :cond_47

    #@3f
    :cond_3f
    if-eqz p2, :cond_4b

    #@41
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_44
    .catchall {:try_start_34 .. :try_end_44} :catchall_85

    #@44
    move-result v3

    #@45
    if-nez v3, :cond_4b

    #@47
    :cond_47
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    #@4a
    goto :goto_21

    #@4b
    :cond_4b
    :try_start_4b
    new-instance v0, Ljava/util/Date;

    #@4d
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    #@50
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    #@53
    move-result-wide v4

    #@54
    sget-object v0, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    #@56
    sget-object v3, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    #@58
    new-instance v6, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string v7, "Setting lastModified to "

    #@5f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v6

    #@63
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@66
    move-result-object v7

    #@67
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v6

    #@6b
    const-string v7, " for "

    #@6d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v6

    #@71
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    #@74
    move-result-object v7

    #@75
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v6

    #@79
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v6

    #@7d
    invoke-static {v0, v3, v6}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    #@80
    invoke-virtual {v2, v4, v5}, Ljava/io/File;->setLastModified(J)Z
    :try_end_83
    .catchall {:try_start_4b .. :try_end_83} :catchall_85

    #@83
    move-object v0, v1

    #@84
    goto :goto_21

    #@85
    :catchall_85
    move-exception v0

    #@86
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    #@89
    throw v0

    #@8a
    :catch_8a
    move-exception v1

    #@8b
    goto :goto_21
.end method

.method public interceptAndPut(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    new-instance v0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;

    #@2
    invoke-virtual {p0, p1}, Lcom/facebook/internal/FileLruCache;->openPutStream(Ljava/lang/String;)Ljava/io/OutputStream;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, p2, v1}, Lcom/facebook/internal/FileLruCache$CopyingInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    #@9
    return-object v0
.end method

.method openPutStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/facebook/internal/FileLruCache;->openPutStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public openPutStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v5, 0x5

    #@1
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    #@3
    invoke-static {v0}, Lcom/facebook/internal/FileLruCache$BufferFile;->newFile(Ljava/io/File;)Ljava/io/File;

    #@6
    move-result-object v4

    #@7
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    #@a
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_2d

    #@10
    new-instance v0, Ljava/io/IOException;

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string v2, "Could not create file at "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    :cond_2d
    :try_start_2d
    new-instance v6, Ljava/io/FileOutputStream;

    #@2f
    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_32} :catch_62

    #@32
    new-instance v7, Ljava/io/BufferedOutputStream;

    #@34
    new-instance v8, Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;

    #@36
    new-instance v0, Lcom/facebook/internal/FileLruCache$1;

    #@38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3b
    move-result-wide v2

    #@3c
    move-object v1, p0

    #@3d
    move-object v5, p1

    #@3e
    invoke-direct/range {v0 .. v5}, Lcom/facebook/internal/FileLruCache$1;-><init>(Lcom/facebook/internal/FileLruCache;JLjava/io/File;Ljava/lang/String;)V

    #@41
    invoke-direct {v8, v6, v0}, Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;-><init>(Ljava/io/OutputStream;Lcom/facebook/internal/FileLruCache$StreamCloseCallback;)V

    #@44
    const/16 v0, 0x2000

    #@46
    invoke-direct {v7, v8, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    #@49
    :try_start_49
    new-instance v0, Lorg/json/JSONObject;

    #@4b
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    #@4e
    const-string v1, "key"

    #@50
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@53
    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    #@56
    move-result v1

    #@57
    if-nez v1, :cond_5e

    #@59
    const-string v1, "tag"

    #@5b
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@5e
    :cond_5e
    invoke-static {v7, v0}, Lcom/facebook/internal/FileLruCache$StreamHeader;->writeHeader(Ljava/io/OutputStream;Lorg/json/JSONObject;)V
    :try_end_61
    .catch Lorg/json/JSONException; {:try_start_49 .. :try_end_61} :catch_87
    .catchall {:try_start_49 .. :try_end_61} :catchall_ad

    #@61
    return-object v7

    #@62
    :catch_62
    move-exception v0

    #@63
    sget-object v1, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    #@65
    sget-object v2, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    #@67
    new-instance v3, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string v4, "Error creating buffer output stream: "

    #@6e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v3

    #@72
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v3

    #@76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v3

    #@7a
    invoke-static {v1, v5, v2, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    #@7d
    new-instance v1, Ljava/io/IOException;

    #@7f
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    #@82
    move-result-object v0

    #@83
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@86
    throw v1

    #@87
    :catch_87
    move-exception v0

    #@88
    :try_start_88
    sget-object v1, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    #@8a
    sget-object v2, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    #@8c
    new-instance v3, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    const/4 v4, 0x5

    #@92
    const-string v5, "Error creating JSON header for cache file: "

    #@94
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v3

    #@98
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v3

    #@9c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v3

    #@a0
    invoke-static {v1, v4, v2, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    #@a3
    new-instance v1, Ljava/io/IOException;

    #@a5
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    #@a8
    move-result-object v0

    #@a9
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@ac
    throw v1
    :try_end_ad
    .catchall {:try_start_88 .. :try_end_ad} :catchall_ad

    #@ad
    :catchall_ad
    move-exception v0

    #@ae
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V

    #@b1
    throw v0
.end method

.method sizeInBytesForTest()J
    .registers 9

    #@0
    iget-object v1, p0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :goto_3
    :try_start_3
    iget-boolean v0, p0, Lcom/facebook/internal/FileLruCache;->isTrimPending:Z

    #@5
    if-nez v0, :cond_b

    #@7
    iget-boolean v0, p0, Lcom/facebook/internal/FileLruCache;->isTrimInProgress:Z
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_2c

    #@9
    if-eqz v0, :cond_13

    #@b
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    #@d
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_11
    .catchall {:try_start_b .. :try_end_10} :catchall_2c

    #@10
    goto :goto_3

    #@11
    :catch_11
    move-exception v0

    #@12
    goto :goto_3

    #@13
    :cond_13
    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_2c

    #@14
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    #@16
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@19
    move-result-object v3

    #@1a
    const-wide/16 v0, 0x0

    #@1c
    if-eqz v3, :cond_2f

    #@1e
    array-length v4, v3

    #@1f
    const/4 v2, 0x0

    #@20
    :goto_20
    if-ge v2, v4, :cond_2f

    #@22
    aget-object v5, v3, v2

    #@24
    invoke-virtual {v5}, Ljava/io/File;->length()J

    #@27
    move-result-wide v6

    #@28
    add-int/lit8 v2, v2, 0x1

    #@2a
    add-long/2addr v0, v6

    #@2b
    goto :goto_20

    #@2c
    :catchall_2c
    move-exception v0

    #@2d
    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    #@2e
    throw v0

    #@2f
    :cond_2f
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "{FileLruCache: tag:"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    iget-object v1, p0, Lcom/facebook/internal/FileLruCache;->tag:Ljava/lang/String;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string v1, " file:"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    iget-object v1, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    #@19
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    const-string v1, "}"

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    return-object v0
.end method
