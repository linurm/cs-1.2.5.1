.class final Landroid/support/v4/util/MapCollections$KeySet;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/util/MapCollections;


# direct methods
.method constructor <init>(Landroid/support/v4/util/MapCollections;)V
    .registers 2

    #@0
    iput-object p1, p0, Landroid/support/v4/util/MapCollections$KeySet;->this$0:Landroid/support/v4/util/MapCollections;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    #@0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)Z"
        }
    .end annotation

    #@0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public clear()V
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/util/MapCollections$KeySet;->this$0:Landroid/support/v4/util/MapCollections;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/util/MapCollections;->colClear()V

    #@5
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/util/MapCollections$KeySet;->this$0:Landroid/support/v4/util/MapCollections;

    #@2
    invoke-virtual {v0, p1}, Landroid/support/v4/util/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    if-ltz v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    goto :goto_9
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    iget-object v0, p0, Landroid/support/v4/util/MapCollections$KeySet;->this$0:Landroid/support/v4/util/MapCollections;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/util/MapCollections;->colGetMap()Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p1}, Landroid/support/v4/util/MapCollections;->containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    invoke-static {p0, p1}, Landroid/support/v4/util/MapCollections;->equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public hashCode()I
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Landroid/support/v4/util/MapCollections$KeySet;->this$0:Landroid/support/v4/util/MapCollections;

    #@3
    invoke-virtual {v0}, Landroid/support/v4/util/MapCollections;->colGetSize()I

    #@6
    move-result v0

    #@7
    add-int/lit8 v0, v0, -0x1

    #@9
    move v2, v0

    #@a
    move v3, v1

    #@b
    :goto_b
    if-ltz v2, :cond_20

    #@d
    iget-object v0, p0, Landroid/support/v4/util/MapCollections$KeySet;->this$0:Landroid/support/v4/util/MapCollections;

    #@f
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    if-nez v0, :cond_1b

    #@15
    move v0, v1

    #@16
    :goto_16
    add-int/2addr v3, v0

    #@17
    add-int/lit8 v0, v2, -0x1

    #@19
    move v2, v0

    #@1a
    goto :goto_b

    #@1b
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@1e
    move-result v0

    #@1f
    goto :goto_16

    #@20
    :cond_20
    return v3
.end method

.method public isEmpty()Z
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/util/MapCollections$KeySet;->this$0:Landroid/support/v4/util/MapCollections;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/util/MapCollections;->colGetSize()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    goto :goto_9
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    #@0
    new-instance v0, Landroid/support/v4/util/MapCollections$ArrayIterator;

    #@2
    iget-object v1, p0, Landroid/support/v4/util/MapCollections$KeySet;->this$0:Landroid/support/v4/util/MapCollections;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Landroid/support/v4/util/MapCollections$ArrayIterator;-><init>(Landroid/support/v4/util/MapCollections;I)V

    #@8
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    #@0
    iget-object v0, p0, Landroid/support/v4/util/MapCollections$KeySet;->this$0:Landroid/support/v4/util/MapCollections;

    #@2
    invoke-virtual {v0, p1}, Landroid/support/v4/util/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    if-ltz v0, :cond_f

    #@8
    iget-object v1, p0, Landroid/support/v4/util/MapCollections$KeySet;->this$0:Landroid/support/v4/util/MapCollections;

    #@a
    invoke-virtual {v1, v0}, Landroid/support/v4/util/MapCollections;->colRemoveAt(I)V

    #@d
    const/4 v0, 0x1

    #@e
    :goto_e
    return v0

    #@f
    :cond_f
    const/4 v0, 0x0

    #@10
    goto :goto_e
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    iget-object v0, p0, Landroid/support/v4/util/MapCollections$KeySet;->this$0:Landroid/support/v4/util/MapCollections;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/util/MapCollections;->colGetMap()Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p1}, Landroid/support/v4/util/MapCollections;->removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    iget-object v0, p0, Landroid/support/v4/util/MapCollections$KeySet;->this$0:Landroid/support/v4/util/MapCollections;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/util/MapCollections;->colGetMap()Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p1}, Landroid/support/v4/util/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public size()I
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/util/MapCollections$KeySet;->this$0:Landroid/support/v4/util/MapCollections;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/util/MapCollections;->colGetSize()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/util/MapCollections$KeySet;->this$0:Landroid/support/v4/util/MapCollections;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Landroid/support/v4/util/MapCollections;->toArrayHelper(I)[Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Landroid/support/v4/util/MapCollections$KeySet;->this$0:Landroid/support/v4/util/MapCollections;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p1, v1}, Landroid/support/v4/util/MapCollections;->toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method
