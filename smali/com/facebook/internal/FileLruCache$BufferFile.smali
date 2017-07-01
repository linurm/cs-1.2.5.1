.class Lcom/facebook/internal/FileLruCache$BufferFile;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/FileLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferFile"
.end annotation


# static fields
.field private static final FILE_NAME_PREFIX:Ljava/lang/String; = "buffer"

.field private static final filterExcludeBufferFiles:Ljava/io/FilenameFilter;

.field private static final filterExcludeNonBufferFiles:Ljava/io/FilenameFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/facebook/internal/FileLruCache$BufferFile$1;

    #@2
    invoke-direct {v0}, Lcom/facebook/internal/FileLruCache$BufferFile$1;-><init>()V

    #@5
    sput-object v0, Lcom/facebook/internal/FileLruCache$BufferFile;->filterExcludeBufferFiles:Ljava/io/FilenameFilter;

    #@7
    new-instance v0, Lcom/facebook/internal/FileLruCache$BufferFile$2;

    #@9
    invoke-direct {v0}, Lcom/facebook/internal/FileLruCache$BufferFile$2;-><init>()V

    #@c
    sput-object v0, Lcom/facebook/internal/FileLruCache$BufferFile;->filterExcludeNonBufferFiles:Ljava/io/FilenameFilter;

    #@e
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static deleteAll(Ljava/io/File;)V
    .registers 5

    #@0
    invoke-static {}, Lcom/facebook/internal/FileLruCache$BufferFile;->excludeNonBufferFiles()Ljava/io/FilenameFilter;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    #@7
    move-result-object v1

    #@8
    if-eqz v1, :cond_16

    #@a
    array-length v2, v1

    #@b
    const/4 v0, 0x0

    #@c
    :goto_c
    if-ge v0, v2, :cond_16

    #@e
    aget-object v3, v1, v0

    #@10
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@13
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_c

    #@16
    :cond_16
    return-void
.end method

.method static excludeBufferFiles()Ljava/io/FilenameFilter;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/internal/FileLruCache$BufferFile;->filterExcludeBufferFiles:Ljava/io/FilenameFilter;

    #@2
    return-object v0
.end method

.method static excludeNonBufferFiles()Ljava/io/FilenameFilter;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/internal/FileLruCache$BufferFile;->filterExcludeNonBufferFiles:Ljava/io/FilenameFilter;

    #@2
    return-object v0
.end method

.method static newFile(Ljava/io/File;)Ljava/io/File;
    .registers 5

    #@0
    new-instance v0, Ljava/io/File;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string v2, "buffer"

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    # getter for: Lcom/facebook/internal/FileLruCache;->bufferIndex:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {}, Lcom/facebook/internal/FileLruCache;->access$300()Ljava/util/concurrent/atomic/AtomicLong;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    #@14
    move-result-wide v2

    #@15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@28
    return-object v0
.end method
