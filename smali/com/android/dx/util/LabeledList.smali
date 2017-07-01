.class public Lcom/android/dx/util/LabeledList;
.super Lcom/android/dx/util/FixedSizeList;


# instance fields
.field private final labelToIndex:Lcom/android/dx/util/IntList;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/android/dx/util/FixedSizeList;-><init>(I)V

    #@3
    new-instance v0, Lcom/android/dx/util/IntList;

    #@5
    invoke-direct {v0, p1}, Lcom/android/dx/util/IntList;-><init>(I)V

    #@8
    iput-object v0, p0, Lcom/android/dx/util/LabeledList;->labelToIndex:Lcom/android/dx/util/IntList;

    #@a
    return-void
.end method

.method public constructor <init>(Lcom/android/dx/util/LabeledList;)V
    .registers 5

    #@0
    invoke-virtual {p1}, Lcom/android/dx/util/LabeledList;->size()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/dx/util/FixedSizeList;-><init>(I)V

    #@7
    iget-object v0, p1, Lcom/android/dx/util/LabeledList;->labelToIndex:Lcom/android/dx/util/IntList;

    #@9
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->mutableCopy()Lcom/android/dx/util/IntList;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/dx/util/LabeledList;->labelToIndex:Lcom/android/dx/util/IntList;

    #@f
    invoke-virtual {p1}, Lcom/android/dx/util/LabeledList;->size()I

    #@12
    move-result v1

    #@13
    const/4 v0, 0x0

    #@14
    :goto_14
    if-ge v0, v1, :cond_22

    #@16
    invoke-virtual {p1, v0}, Lcom/android/dx/util/LabeledList;->get0(I)Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    if-eqz v2, :cond_1f

    #@1c
    invoke-virtual {p0, v0, v2}, Lcom/android/dx/util/LabeledList;->set0(ILjava/lang/Object;)V

    #@1f
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_14

    #@22
    :cond_22
    return-void
.end method

.method private addLabelIndex(II)V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/android/dx/util/LabeledList;->labelToIndex:Lcom/android/dx/util/IntList;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    #@5
    move-result v1

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    sub-int v2, p1, v1

    #@9
    if-gt v0, v2, :cond_14

    #@b
    iget-object v2, p0, Lcom/android/dx/util/LabeledList;->labelToIndex:Lcom/android/dx/util/IntList;

    #@d
    const/4 v3, -0x1

    #@e
    invoke-virtual {v2, v3}, Lcom/android/dx/util/IntList;->add(I)V

    #@11
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_7

    #@14
    :cond_14
    iget-object v0, p0, Lcom/android/dx/util/LabeledList;->labelToIndex:Lcom/android/dx/util/IntList;

    #@16
    invoke-virtual {v0, p1, p2}, Lcom/android/dx/util/IntList;->set(II)V

    #@19
    return-void
.end method

.method private rebuildLabelToIndex()V
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/android/dx/util/LabeledList;->size()I

    #@3
    move-result v2

    #@4
    const/4 v0, 0x0

    #@5
    move v1, v0

    #@6
    :goto_6
    if-ge v1, v2, :cond_1d

    #@8
    invoke-virtual {p0, v1}, Lcom/android/dx/util/LabeledList;->get0(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lcom/android/dx/util/LabeledItem;

    #@e
    if-eqz v0, :cond_19

    #@10
    iget-object v3, p0, Lcom/android/dx/util/LabeledList;->labelToIndex:Lcom/android/dx/util/IntList;

    #@12
    invoke-interface {v0}, Lcom/android/dx/util/LabeledItem;->getLabel()I

    #@15
    move-result v0

    #@16
    invoke-virtual {v3, v0, v1}, Lcom/android/dx/util/IntList;->set(II)V

    #@19
    :cond_19
    add-int/lit8 v0, v1, 0x1

    #@1b
    move v1, v0

    #@1c
    goto :goto_6

    #@1d
    :cond_1d
    return-void
.end method

.method private removeLabel(I)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/util/LabeledList;->labelToIndex:Lcom/android/dx/util/IntList;

    #@2
    const/4 v1, -0x1

    #@3
    invoke-virtual {v0, p1, v1}, Lcom/android/dx/util/IntList;->set(II)V

    #@6
    return-void
.end method


# virtual methods
.method public final getLabelsInOrder()[I
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/android/dx/util/LabeledList;->size()I

    #@3
    move-result v2

    #@4
    new-array v3, v2, [I

    #@6
    const/4 v0, 0x0

    #@7
    move v1, v0

    #@8
    :goto_8
    if-ge v1, v2, :cond_35

    #@a
    invoke-virtual {p0, v1}, Lcom/android/dx/util/LabeledList;->get0(I)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/dx/util/LabeledItem;

    #@10
    if-nez v0, :cond_2b

    #@12
    new-instance v0, Ljava/lang/NullPointerException;

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string v3, "null at index "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    :cond_2b
    invoke-interface {v0}, Lcom/android/dx/util/LabeledItem;->getLabel()I

    #@2e
    move-result v0

    #@2f
    aput v0, v3, v1

    #@31
    add-int/lit8 v0, v1, 0x1

    #@33
    move v1, v0

    #@34
    goto :goto_8

    #@35
    :cond_35
    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    #@38
    return-object v3
.end method

.method public final getMaxLabel()I
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/util/LabeledList;->labelToIndex:Lcom/android/dx/util/IntList;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    #@5
    move-result v0

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    :goto_8
    if-ltz v0, :cond_15

    #@a
    iget-object v1, p0, Lcom/android/dx/util/LabeledList;->labelToIndex:Lcom/android/dx/util/IntList;

    #@c
    invoke-virtual {v1, v0}, Lcom/android/dx/util/IntList;->get(I)I

    #@f
    move-result v1

    #@10
    if-gez v1, :cond_15

    #@12
    add-int/lit8 v0, v0, -0x1

    #@14
    goto :goto_8

    #@15
    :cond_15
    add-int/lit8 v0, v0, 0x1

    #@17
    iget-object v1, p0, Lcom/android/dx/util/LabeledList;->labelToIndex:Lcom/android/dx/util/IntList;

    #@19
    invoke-virtual {v1, v0}, Lcom/android/dx/util/IntList;->shrink(I)V

    #@1c
    return v0
.end method

.method public final indexOfLabel(I)I
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/util/LabeledList;->labelToIndex:Lcom/android/dx/util/IntList;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    #@5
    move-result v0

    #@6
    if-lt p1, v0, :cond_a

    #@8
    const/4 v0, -0x1

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    iget-object v0, p0, Lcom/android/dx/util/LabeledList;->labelToIndex:Lcom/android/dx/util/IntList;

    #@c
    invoke-virtual {v0, p1}, Lcom/android/dx/util/IntList;->get(I)I

    #@f
    move-result v0

    #@10
    goto :goto_9
.end method

.method protected set(ILcom/android/dx/util/LabeledItem;)V
    .registers 4

    #@0
    invoke-virtual {p0, p1}, Lcom/android/dx/util/LabeledList;->getOrNull0(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/dx/util/LabeledItem;

    #@6
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/util/LabeledList;->set0(ILjava/lang/Object;)V

    #@9
    if-eqz v0, :cond_12

    #@b
    invoke-interface {v0}, Lcom/android/dx/util/LabeledItem;->getLabel()I

    #@e
    move-result v0

    #@f
    invoke-direct {p0, v0}, Lcom/android/dx/util/LabeledList;->removeLabel(I)V

    #@12
    :cond_12
    if-eqz p2, :cond_1b

    #@14
    invoke-interface {p2}, Lcom/android/dx/util/LabeledItem;->getLabel()I

    #@17
    move-result v0

    #@18
    invoke-direct {p0, v0, p1}, Lcom/android/dx/util/LabeledList;->addLabelIndex(II)V

    #@1b
    :cond_1b
    return-void
.end method

.method public shrinkToFit()V
    .registers 1

    #@0
    invoke-super {p0}, Lcom/android/dx/util/FixedSizeList;->shrinkToFit()V

    #@3
    invoke-direct {p0}, Lcom/android/dx/util/LabeledList;->rebuildLabelToIndex()V

    #@6
    return-void
.end method
