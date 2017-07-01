.class final Lcom/facebook/internal/FileLruCache$ModifiedFile;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/FileLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ModifiedFile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/facebook/internal/FileLruCache$ModifiedFile;",
        ">;"
    }
.end annotation


# static fields
.field private static final HASH_MULTIPLIER:I = 0x25

.field private static final HASH_SEED:I = 0x1d


# instance fields
.field private final file:Ljava/io/File;

.field private final modified:J


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/facebook/internal/FileLruCache$ModifiedFile;->file:Ljava/io/File;

    #@5
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    #@8
    move-result-wide v0

    #@9
    iput-wide v0, p0, Lcom/facebook/internal/FileLruCache$ModifiedFile;->modified:J

    #@b
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/facebook/internal/FileLruCache$ModifiedFile;)I
    .registers 6

    #@0
    invoke-virtual {p0}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->getModified()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p1}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->getModified()J

    #@7
    move-result-wide v2

    #@8
    cmp-long v0, v0, v2

    #@a
    if-gez v0, :cond_e

    #@c
    const/4 v0, -0x1

    #@d
    :goto_d
    return v0

    #@e
    :cond_e
    invoke-virtual {p0}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->getModified()J

    #@11
    move-result-wide v0

    #@12
    invoke-virtual {p1}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->getModified()J

    #@15
    move-result-wide v2

    #@16
    cmp-long v0, v0, v2

    #@18
    if-lez v0, :cond_1c

    #@1a
    const/4 v0, 0x1

    #@1b
    goto :goto_d

    #@1c
    :cond_1c
    invoke-virtual {p0}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->getFile()Ljava/io/File;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {p1}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->getFile()Ljava/io/File;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v0, v1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    #@27
    move-result v0

    #@28
    goto :goto_d
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    #@0
    check-cast p1, Lcom/facebook/internal/FileLruCache$ModifiedFile;

    #@2
    invoke-virtual {p0, p1}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->compareTo(Lcom/facebook/internal/FileLruCache$ModifiedFile;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    instance-of v0, p1, Lcom/facebook/internal/FileLruCache$ModifiedFile;

    #@2
    if-eqz v0, :cond_e

    #@4
    check-cast p1, Lcom/facebook/internal/FileLruCache$ModifiedFile;

    #@6
    invoke-virtual {p0, p1}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->compareTo(Lcom/facebook/internal/FileLruCache$ModifiedFile;)I

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    :goto_d
    return v0

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    goto :goto_d
.end method

.method getFile()Ljava/io/File;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$ModifiedFile;->file:Ljava/io/File;

    #@2
    return-object v0
.end method

.method getModified()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/facebook/internal/FileLruCache$ModifiedFile;->modified:J

    #@2
    return-wide v0
.end method

.method public hashCode()I
    .registers 7

    #@0
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$ModifiedFile;->file:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    #@5
    move-result v0

    #@6
    add-int/lit16 v0, v0, 0x431

    #@8
    mul-int/lit8 v0, v0, 0x25

    #@a
    iget-wide v2, p0, Lcom/facebook/internal/FileLruCache$ModifiedFile;->modified:J

    #@c
    const-wide/32 v4, 0x7fffffff

    #@f
    rem-long/2addr v2, v4

    #@10
    long-to-int v1, v2

    #@11
    add-int/2addr v0, v1

    #@12
    return v0
.end method
