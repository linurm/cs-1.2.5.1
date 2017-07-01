.class final Landroid/support/v4/util/MapCollections$MapIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field mEnd:I

.field mEntryValid:Z

.field mIndex:I

.field final synthetic this$0:Landroid/support/v4/util/MapCollections;


# direct methods
.method constructor <init>(Landroid/support/v4/util/MapCollections;)V
    .registers 3

    #@0
    iput-object p1, p0, Landroid/support/v4/util/MapCollections$MapIterator;->this$0:Landroid/support/v4/util/MapCollections;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mEntryValid:Z

    #@8
    invoke-virtual {p1}, Landroid/support/v4/util/MapCollections;->colGetSize()I

    #@b
    move-result v0

    #@c
    add-int/lit8 v0, v0, -0x1

    #@e
    iput v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mEnd:I

    #@10
    const/4 v0, -0x1

    #@11
    iput v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I

    #@13
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    iget-boolean v2, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mEntryValid:Z

    #@4
    if-nez v2, :cond_e

    #@6
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string v1, "This container does not support retaining Map.Entry objects"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    instance-of v2, p1, Ljava/util/Map$Entry;

    #@10
    if-nez v2, :cond_13

    #@12
    :cond_12
    :goto_12
    return v0

    #@13
    :cond_13
    check-cast p1, Ljava/util/Map$Entry;

    #@15
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    iget-object v3, p0, Landroid/support/v4/util/MapCollections$MapIterator;->this$0:Landroid/support/v4/util/MapCollections;

    #@1b
    iget v4, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I

    #@1d
    invoke-virtual {v3, v4, v0}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3}, Landroid/support/v4/util/ContainerHelpers;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_12

    #@27
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    iget-object v3, p0, Landroid/support/v4/util/MapCollections$MapIterator;->this$0:Landroid/support/v4/util/MapCollections;

    #@2d
    iget v4, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I

    #@2f
    invoke-virtual {v3, v4, v1}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@32
    move-result-object v3

    #@33
    invoke-static {v2, v3}, Landroid/support/v4/util/ContainerHelpers;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_12

    #@39
    move v0, v1

    #@3a
    goto :goto_12
.end method

.method public getKey()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    iget-boolean v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mEntryValid:Z

    #@2
    if-nez v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string v1, "This container does not support retaining Map.Entry objects"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iget-object v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->this$0:Landroid/support/v4/util/MapCollections;

    #@e
    iget v1, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I

    #@10
    const/4 v2, 0x0

    #@11
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    #@0
    iget-boolean v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mEntryValid:Z

    #@2
    if-nez v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string v1, "This container does not support retaining Map.Entry objects"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iget-object v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->this$0:Landroid/support/v4/util/MapCollections;

    #@e
    iget v1, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I

    #@10
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public hasNext()Z
    .registers 3

    #@0
    iget v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I

    #@2
    iget v1, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mEnd:I

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

.method public final hashCode()I
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    iget-boolean v1, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mEntryValid:Z

    #@3
    if-nez v1, :cond_d

    #@5
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string v1, "This container does not support retaining Map.Entry objects"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    iget-object v1, p0, Landroid/support/v4/util/MapCollections$MapIterator;->this$0:Landroid/support/v4/util/MapCollections;

    #@f
    iget v2, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I

    #@11
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    iget-object v2, p0, Landroid/support/v4/util/MapCollections$MapIterator;->this$0:Landroid/support/v4/util/MapCollections;

    #@17
    iget v3, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I

    #@19
    const/4 v4, 0x1

    #@1a
    invoke-virtual {v2, v3, v4}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    if-nez v1, :cond_25

    #@20
    move v1, v0

    #@21
    :goto_21
    if-nez v2, :cond_2a

    #@23
    :goto_23
    xor-int/2addr v0, v1

    #@24
    return v0

    #@25
    :cond_25
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@28
    move-result v1

    #@29
    goto :goto_21

    #@2a
    :cond_2a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@2d
    move-result v0

    #@2e
    goto :goto_23
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Landroid/support/v4/util/MapCollections$MapIterator;->next()Ljava/util/Map$Entry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    iget v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I

    #@6
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mEntryValid:Z

    #@9
    return-object p0
.end method

.method public remove()V
    .registers 3

    #@0
    iget-boolean v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mEntryValid:Z

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
    iget-object v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->this$0:Landroid/support/v4/util/MapCollections;

    #@c
    iget v1, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I

    #@e
    invoke-virtual {v0, v1}, Landroid/support/v4/util/MapCollections;->colRemoveAt(I)V

    #@11
    iget v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I

    #@13
    add-int/lit8 v0, v0, -0x1

    #@15
    iput v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I

    #@17
    iget v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mEnd:I

    #@19
    add-int/lit8 v0, v0, -0x1

    #@1b
    iput v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mEnd:I

    #@1d
    const/4 v0, 0x0

    #@1e
    iput-boolean v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mEntryValid:Z

    #@20
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    #@0
    iget-boolean v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mEntryValid:Z

    #@2
    if-nez v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string v1, "This container does not support retaining Map.Entry objects"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iget-object v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->this$0:Landroid/support/v4/util/MapCollections;

    #@e
    iget v1, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I

    #@10
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/MapCollections;->colSetValue(ILjava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Landroid/support/v4/util/MapCollections$MapIterator;->getKey()Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string v1, "="

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {p0}, Landroid/support/v4/util/MapCollections$MapIterator;->getValue()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method
