.class final Landroid/support/v4/util/MapCollections$ArrayIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ArrayIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field mCanRemove:Z

.field mIndex:I

.field final mOffset:I

.field mSize:I

.field final synthetic this$0:Landroid/support/v4/util/MapCollections;


# direct methods
.method constructor <init>(Landroid/support/v4/util/MapCollections;I)V
    .registers 4

    #@0
    iput-object p1, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->this$0:Landroid/support/v4/util/MapCollections;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mCanRemove:Z

    #@8
    iput p2, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mOffset:I

    #@a
    invoke-virtual {p1}, Landroid/support/v4/util/MapCollections;->colGetSize()I

    #@d
    move-result v0

    #@e
    iput v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mSize:I

    #@10
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    #@0
    iget v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mIndex:I

    #@2
    iget v1, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mSize:I

    #@4
    if-ge v0, v1, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->this$0:Landroid/support/v4/util/MapCollections;

    #@2
    iget v1, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mIndex:I

    #@4
    iget v2, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mOffset:I

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    iget v1, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mIndex:I

    #@c
    add-int/lit8 v1, v1, 0x1

    #@e
    iput v1, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mIndex:I

    #@10
    const/4 v1, 0x1

    #@11
    iput-boolean v1, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mCanRemove:Z

    #@13
    return-object v0
.end method

.method public remove()V
    .registers 3

    #@0
    iget-boolean v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mCanRemove:Z

    #@2
    if-nez v0, :cond_a

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v0

    #@a
    :cond_a
    iget v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mIndex:I

    #@c
    add-int/lit8 v0, v0, -0x1

    #@e
    iput v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mIndex:I

    #@10
    iget v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mSize:I

    #@12
    add-int/lit8 v0, v0, -0x1

    #@14
    iput v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mSize:I

    #@16
    const/4 v0, 0x0

    #@17
    iput-boolean v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mCanRemove:Z

    #@19
    iget-object v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->this$0:Landroid/support/v4/util/MapCollections;

    #@1b
    iget v1, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mIndex:I

    #@1d
    invoke-virtual {v0, v1}, Landroid/support/v4/util/MapCollections;->colRemoveAt(I)V

    #@20
    return-void
.end method
