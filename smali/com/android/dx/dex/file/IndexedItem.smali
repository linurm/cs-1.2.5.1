.class public abstract Lcom/android/dx/dex/file/IndexedItem;
.super Lcom/android/dx/dex/file/Item;


# instance fields
.field private index:I


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/android/dx/dex/file/Item;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/dx/dex/file/IndexedItem;->index:I

    #@6
    return-void
.end method


# virtual methods
.method public final getIndex()I
    .registers 3

    #@0
    iget v0, p0, Lcom/android/dx/dex/file/IndexedItem;->index:I

    #@2
    if-gez v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string v1, "index not yet set"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iget v0, p0, Lcom/android/dx/dex/file/IndexedItem;->index:I

    #@e
    return v0
.end method

.method public final hasIndex()Z
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/dex/file/IndexedItem;->index:I

    #@2
    if-ltz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method public final indexString()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const/16 v1, 0x5b

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    iget v1, p0, Lcom/android/dx/dex/file/IndexedItem;->index:I

    #@d
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    const/16 v1, 0x5d

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public final setIndex(I)V
    .registers 4

    #@0
    iget v0, p0, Lcom/android/dx/dex/file/IndexedItem;->index:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_d

    #@5
    new-instance v0, Ljava/lang/RuntimeException;

    #@7
    const-string v1, "index already set"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    iput p1, p0, Lcom/android/dx/dex/file/IndexedItem;->index:I

    #@f
    return-void
.end method
