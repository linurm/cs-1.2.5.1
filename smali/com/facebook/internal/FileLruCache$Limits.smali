.class public final Lcom/facebook/internal/FileLruCache$Limits;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/FileLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Limits"
.end annotation


# instance fields
.field private byteCount:I

.field private fileCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/16 v0, 0x400

    #@5
    iput v0, p0, Lcom/facebook/internal/FileLruCache$Limits;->fileCount:I

    #@7
    const/high16 v0, 0x100000

    #@9
    iput v0, p0, Lcom/facebook/internal/FileLruCache$Limits;->byteCount:I

    #@b
    return-void
.end method


# virtual methods
.method getByteCount()I
    .registers 2

    #@0
    iget v0, p0, Lcom/facebook/internal/FileLruCache$Limits;->byteCount:I

    #@2
    return v0
.end method

.method getFileCount()I
    .registers 2

    #@0
    iget v0, p0, Lcom/facebook/internal/FileLruCache$Limits;->fileCount:I

    #@2
    return v0
.end method

.method setByteCount(I)V
    .registers 4

    #@0
    if-gez p1, :cond_a

    #@2
    new-instance v0, Ljava/security/InvalidParameterException;

    #@4
    const-string v1, "Cache byte-count limit must be >= 0"

    #@6
    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    iput p1, p0, Lcom/facebook/internal/FileLruCache$Limits;->byteCount:I

    #@c
    return-void
.end method

.method setFileCount(I)V
    .registers 4

    #@0
    if-gez p1, :cond_a

    #@2
    new-instance v0, Ljava/security/InvalidParameterException;

    #@4
    const-string v1, "Cache file count limit must be >= 0"

    #@6
    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    iput p1, p0, Lcom/facebook/internal/FileLruCache$Limits;->fileCount:I

    #@c
    return-void
.end method
