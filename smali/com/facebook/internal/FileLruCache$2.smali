.class Lcom/facebook/internal/FileLruCache$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/FileLruCache;->clearCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/internal/FileLruCache;

.field final synthetic val$filesToDelete:[Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/facebook/internal/FileLruCache;[Ljava/io/File;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/facebook/internal/FileLruCache$2;->this$0:Lcom/facebook/internal/FileLruCache;

    #@2
    iput-object p2, p0, Lcom/facebook/internal/FileLruCache$2;->val$filesToDelete:[Ljava/io/File;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    #@0
    iget-object v1, p0, Lcom/facebook/internal/FileLruCache$2;->val$filesToDelete:[Ljava/io/File;

    #@2
    array-length v2, v1

    #@3
    const/4 v0, 0x0

    #@4
    :goto_4
    if-ge v0, v2, :cond_e

    #@6
    aget-object v3, v1, v0

    #@8
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@b
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_4

    #@e
    :cond_e
    return-void
.end method
