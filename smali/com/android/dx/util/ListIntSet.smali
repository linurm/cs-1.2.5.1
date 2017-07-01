.class public Lcom/android/dx/util/ListIntSet;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/dx/util/IntSet;


# instance fields
.field final ints:Lcom/android/dx/util/IntList;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Lcom/android/dx/util/IntList;

    #@5
    invoke-direct {v0}, Lcom/android/dx/util/IntList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    #@a
    iget-object v0, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    #@c
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->sort()V

    #@f
    return-void
.end method


# virtual methods
.method public add(I)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/dx/util/IntList;->binarysearch(I)I

    #@5
    move-result v0

    #@6
    if-gez v0, :cond_10

    #@8
    iget-object v1, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    #@a
    add-int/lit8 v0, v0, 0x1

    #@c
    neg-int v0, v0

    #@d
    invoke-virtual {v1, v0, p1}, Lcom/android/dx/util/IntList;->insert(II)V

    #@10
    :cond_10
    return-void
.end method

.method public elements()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public has(I)Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/dx/util/IntList;->indexOf(I)I

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

.method public iterator()Lcom/android/dx/util/IntIterator;
    .registers 2

    #@0
    new-instance v0, Lcom/android/dx/util/ListIntSet$1;

    #@2
    invoke-direct {v0, p0}, Lcom/android/dx/util/ListIntSet$1;-><init>(Lcom/android/dx/util/ListIntSet;)V

    #@5
    return-object v0
.end method

.method public merge(Lcom/android/dx/util/IntSet;)V
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    instance-of v1, p1, Lcom/android/dx/util/ListIntSet;

    #@3
    if-eqz v1, :cond_5e

    #@5
    check-cast p1, Lcom/android/dx/util/ListIntSet;

    #@7
    iget-object v1, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    #@9
    invoke-virtual {v1}, Lcom/android/dx/util/IntList;->size()I

    #@c
    move-result v2

    #@d
    iget-object v1, p1, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    #@f
    invoke-virtual {v1}, Lcom/android/dx/util/IntList;->size()I

    #@12
    move-result v3

    #@13
    move v1, v0

    #@14
    :cond_14
    if-ge v1, v3, :cond_36

    #@16
    if-ge v0, v2, :cond_36

    #@18
    :goto_18
    if-ge v1, v3, :cond_34

    #@1a
    iget-object v4, p1, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    #@1c
    invoke-virtual {v4, v1}, Lcom/android/dx/util/IntList;->get(I)I

    #@1f
    move-result v4

    #@20
    iget-object v5, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    #@22
    invoke-virtual {v5, v0}, Lcom/android/dx/util/IntList;->get(I)I

    #@25
    move-result v5

    #@26
    if-ge v4, v5, :cond_34

    #@28
    iget-object v4, p1, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    #@2a
    invoke-virtual {v4, v1}, Lcom/android/dx/util/IntList;->get(I)I

    #@2d
    move-result v4

    #@2e
    invoke-virtual {p0, v4}, Lcom/android/dx/util/ListIntSet;->add(I)V

    #@31
    add-int/lit8 v1, v1, 0x1

    #@33
    goto :goto_18

    #@34
    :cond_34
    if-ne v1, v3, :cond_45

    #@36
    :cond_36
    move v0, v1

    #@37
    :goto_37
    if-ge v0, v3, :cond_58

    #@39
    iget-object v1, p1, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    #@3b
    invoke-virtual {v1, v0}, Lcom/android/dx/util/IntList;->get(I)I

    #@3e
    move-result v1

    #@3f
    invoke-virtual {p0, v1}, Lcom/android/dx/util/ListIntSet;->add(I)V

    #@42
    add-int/lit8 v0, v0, 0x1

    #@44
    goto :goto_37

    #@45
    :cond_45
    :goto_45
    if-ge v0, v2, :cond_14

    #@47
    iget-object v4, p1, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    #@49
    invoke-virtual {v4, v1}, Lcom/android/dx/util/IntList;->get(I)I

    #@4c
    move-result v4

    #@4d
    iget-object v5, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    #@4f
    invoke-virtual {v5, v0}, Lcom/android/dx/util/IntList;->get(I)I

    #@52
    move-result v5

    #@53
    if-lt v4, v5, :cond_14

    #@55
    add-int/lit8 v0, v0, 0x1

    #@57
    goto :goto_45

    #@58
    :cond_58
    iget-object v0, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    #@5a
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->sort()V

    #@5d
    :cond_5d
    :goto_5d
    return-void

    #@5e
    :cond_5e
    instance-of v1, p1, Lcom/android/dx/util/BitIntSet;

    #@60
    if-eqz v1, :cond_7a

    #@62
    check-cast p1, Lcom/android/dx/util/BitIntSet;

    #@64
    :goto_64
    if-ltz v0, :cond_74

    #@66
    iget-object v1, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    #@68
    invoke-virtual {v1, v0}, Lcom/android/dx/util/IntList;->add(I)V

    #@6b
    iget-object v1, p1, Lcom/android/dx/util/BitIntSet;->bits:[I

    #@6d
    add-int/lit8 v0, v0, 0x1

    #@6f
    invoke-static {v1, v0}, Lcom/android/dx/util/Bits;->findFirst([II)I

    #@72
    move-result v0

    #@73
    goto :goto_64

    #@74
    :cond_74
    iget-object v0, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    #@76
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->sort()V

    #@79
    goto :goto_5d

    #@7a
    :cond_7a
    invoke-interface {p1}, Lcom/android/dx/util/IntSet;->iterator()Lcom/android/dx/util/IntIterator;

    #@7d
    move-result-object v0

    #@7e
    :goto_7e
    invoke-interface {v0}, Lcom/android/dx/util/IntIterator;->hasNext()Z

    #@81
    move-result v1

    #@82
    if-eqz v1, :cond_5d

    #@84
    invoke-interface {v0}, Lcom/android/dx/util/IntIterator;->next()I

    #@87
    move-result v1

    #@88
    invoke-virtual {p0, v1}, Lcom/android/dx/util/ListIntSet;->add(I)V

    #@8b
    goto :goto_7e
.end method

.method public remove(I)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/dx/util/IntList;->indexOf(I)I

    #@5
    move-result v0

    #@6
    if-ltz v0, :cond_d

    #@8
    iget-object v1, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    #@a
    invoke-virtual {v1, v0}, Lcom/android/dx/util/IntList;->removeIndex(I)V

    #@d
    :cond_d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
