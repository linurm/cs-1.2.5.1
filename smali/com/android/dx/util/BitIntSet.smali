.class public Lcom/android/dx/util/BitIntSet;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/dx/util/IntSet;


# instance fields
.field bits:[I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-static {p1}, Lcom/android/dx/util/Bits;->makeBitSet(I)[I

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/dx/util/BitIntSet;->bits:[I

    #@9
    return-void
.end method

.method private ensureCapacity(I)V
    .registers 6

    #@0
    const/4 v3, 0x0

    #@1
    iget-object v0, p0, Lcom/android/dx/util/BitIntSet;->bits:[I

    #@3
    invoke-static {v0}, Lcom/android/dx/util/Bits;->getMax([I)I

    #@6
    move-result v0

    #@7
    if-lt p1, v0, :cond_25

    #@9
    add-int/lit8 v0, p1, 0x1

    #@b
    iget-object v1, p0, Lcom/android/dx/util/BitIntSet;->bits:[I

    #@d
    invoke-static {v1}, Lcom/android/dx/util/Bits;->getMax([I)I

    #@10
    move-result v1

    #@11
    mul-int/lit8 v1, v1, 0x2

    #@13
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@16
    move-result v0

    #@17
    invoke-static {v0}, Lcom/android/dx/util/Bits;->makeBitSet(I)[I

    #@1a
    move-result-object v0

    #@1b
    iget-object v1, p0, Lcom/android/dx/util/BitIntSet;->bits:[I

    #@1d
    iget-object v2, p0, Lcom/android/dx/util/BitIntSet;->bits:[I

    #@1f
    array-length v2, v2

    #@20
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@23
    iput-object v0, p0, Lcom/android/dx/util/BitIntSet;->bits:[I

    #@25
    :cond_25
    return-void
.end method


# virtual methods
.method public add(I)V
    .registers 4

    #@0
    invoke-direct {p0, p1}, Lcom/android/dx/util/BitIntSet;->ensureCapacity(I)V

    #@3
    iget-object v0, p0, Lcom/android/dx/util/BitIntSet;->bits:[I

    #@5
    const/4 v1, 0x1

    #@6
    invoke-static {v0, p1, v1}, Lcom/android/dx/util/Bits;->set([IIZ)V

    #@9
    return-void
.end method

.method public elements()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/util/BitIntSet;->bits:[I

    #@2
    invoke-static {v0}, Lcom/android/dx/util/Bits;->bitCount([I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public has(I)Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/util/BitIntSet;->bits:[I

    #@2
    invoke-static {v0}, Lcom/android/dx/util/Bits;->getMax([I)I

    #@5
    move-result v0

    #@6
    if-ge p1, v0, :cond_12

    #@8
    iget-object v0, p0, Lcom/android/dx/util/BitIntSet;->bits:[I

    #@a
    invoke-static {v0, p1}, Lcom/android/dx/util/Bits;->get([II)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_12

    #@10
    const/4 v0, 0x1

    #@11
    :goto_11
    return v0

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    goto :goto_11
.end method

.method public iterator()Lcom/android/dx/util/IntIterator;
    .registers 2

    #@0
    new-instance v0, Lcom/android/dx/util/BitIntSet$1;

    #@2
    invoke-direct {v0, p0}, Lcom/android/dx/util/BitIntSet$1;-><init>(Lcom/android/dx/util/BitIntSet;)V

    #@5
    return-object v0
.end method

.method public merge(Lcom/android/dx/util/IntSet;)V
    .registers 6

    #@0
    instance-of v0, p1, Lcom/android/dx/util/BitIntSet;

    #@2
    if-eqz v0, :cond_19

    #@4
    check-cast p1, Lcom/android/dx/util/BitIntSet;

    #@6
    iget-object v0, p1, Lcom/android/dx/util/BitIntSet;->bits:[I

    #@8
    invoke-static {v0}, Lcom/android/dx/util/Bits;->getMax([I)I

    #@b
    move-result v0

    #@c
    add-int/lit8 v0, v0, 0x1

    #@e
    invoke-direct {p0, v0}, Lcom/android/dx/util/BitIntSet;->ensureCapacity(I)V

    #@11
    iget-object v0, p0, Lcom/android/dx/util/BitIntSet;->bits:[I

    #@13
    iget-object v1, p1, Lcom/android/dx/util/BitIntSet;->bits:[I

    #@15
    invoke-static {v0, v1}, Lcom/android/dx/util/Bits;->or([I[I)V

    #@18
    :cond_18
    return-void

    #@19
    :cond_19
    instance-of v0, p1, Lcom/android/dx/util/ListIntSet;

    #@1b
    if-eqz v0, :cond_4a

    #@1d
    check-cast p1, Lcom/android/dx/util/ListIntSet;

    #@1f
    iget-object v0, p1, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    #@21
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    #@24
    move-result v0

    #@25
    if-lez v0, :cond_32

    #@27
    iget-object v1, p1, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    #@29
    add-int/lit8 v0, v0, -0x1

    #@2b
    invoke-virtual {v1, v0}, Lcom/android/dx/util/IntList;->get(I)I

    #@2e
    move-result v0

    #@2f
    invoke-direct {p0, v0}, Lcom/android/dx/util/BitIntSet;->ensureCapacity(I)V

    #@32
    :cond_32
    const/4 v0, 0x0

    #@33
    :goto_33
    iget-object v1, p1, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    #@35
    invoke-virtual {v1}, Lcom/android/dx/util/IntList;->size()I

    #@38
    move-result v1

    #@39
    if-ge v0, v1, :cond_18

    #@3b
    iget-object v1, p0, Lcom/android/dx/util/BitIntSet;->bits:[I

    #@3d
    iget-object v2, p1, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    #@3f
    invoke-virtual {v2, v0}, Lcom/android/dx/util/IntList;->get(I)I

    #@42
    move-result v2

    #@43
    const/4 v3, 0x1

    #@44
    invoke-static {v1, v2, v3}, Lcom/android/dx/util/Bits;->set([IIZ)V

    #@47
    add-int/lit8 v0, v0, 0x1

    #@49
    goto :goto_33

    #@4a
    :cond_4a
    invoke-interface {p1}, Lcom/android/dx/util/IntSet;->iterator()Lcom/android/dx/util/IntIterator;

    #@4d
    move-result-object v0

    #@4e
    :goto_4e
    invoke-interface {v0}, Lcom/android/dx/util/IntIterator;->hasNext()Z

    #@51
    move-result v1

    #@52
    if-eqz v1, :cond_18

    #@54
    invoke-interface {v0}, Lcom/android/dx/util/IntIterator;->next()I

    #@57
    move-result v1

    #@58
    invoke-virtual {p0, v1}, Lcom/android/dx/util/BitIntSet;->add(I)V

    #@5b
    goto :goto_4e
.end method

.method public remove(I)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/util/BitIntSet;->bits:[I

    #@2
    invoke-static {v0}, Lcom/android/dx/util/Bits;->getMax([I)I

    #@5
    move-result v0

    #@6
    if-ge p1, v0, :cond_e

    #@8
    iget-object v0, p0, Lcom/android/dx/util/BitIntSet;->bits:[I

    #@a
    const/4 v1, 0x0

    #@b
    invoke-static {v0, p1, v1}, Lcom/android/dx/util/Bits;->set([IIZ)V

    #@e
    :cond_e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    new-instance v3, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const/16 v0, 0x7b

    #@8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b
    const/4 v0, 0x1

    #@c
    iget-object v2, p0, Lcom/android/dx/util/BitIntSet;->bits:[I

    #@e
    invoke-static {v2, v1}, Lcom/android/dx/util/Bits;->findFirst([II)I

    #@11
    move-result v2

    #@12
    :goto_12
    if-ltz v2, :cond_29

    #@14
    if-nez v0, :cond_1b

    #@16
    const-string v0, ", "

    #@18
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    :cond_1b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    iget-object v0, p0, Lcom/android/dx/util/BitIntSet;->bits:[I

    #@20
    add-int/lit8 v2, v2, 0x1

    #@22
    invoke-static {v0, v2}, Lcom/android/dx/util/Bits;->findFirst([II)I

    #@25
    move-result v0

    #@26
    move v2, v0

    #@27
    move v0, v1

    #@28
    goto :goto_12

    #@29
    :cond_29
    const/16 v0, 0x7d

    #@2b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    return-object v0
.end method
