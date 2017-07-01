.class public final Lcom/android/dx/rop/code/RopMethod;
.super Ljava/lang/Object;


# instance fields
.field private final blocks:Lcom/android/dx/rop/code/BasicBlockList;

.field private exitPredecessors:Lcom/android/dx/util/IntList;

.field private final firstLabel:I

.field private predecessors:[Lcom/android/dx/util/IntList;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/code/BasicBlockList;I)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    if-nez p1, :cond_e

    #@6
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    const-string v1, "blocks == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    if-gez p2, :cond_18

    #@10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string v1, "firstLabel < 0"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    :cond_18
    iput-object p1, p0, Lcom/android/dx/rop/code/RopMethod;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    #@1a
    iput p2, p0, Lcom/android/dx/rop/code/RopMethod;->firstLabel:I

    #@1c
    iput-object v0, p0, Lcom/android/dx/rop/code/RopMethod;->predecessors:[Lcom/android/dx/util/IntList;

    #@1e
    iput-object v0, p0, Lcom/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/android/dx/util/IntList;

    #@20
    return-void
.end method

.method private calcPredecessors()V
    .registers 14

    #@0
    const/16 v12, 0xa

    #@2
    const/4 v1, 0x0

    #@3
    iget-object v0, p0, Lcom/android/dx/rop/code/RopMethod;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    #@5
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList;->getMaxLabel()I

    #@8
    move-result v4

    #@9
    new-array v5, v4, [Lcom/android/dx/util/IntList;

    #@b
    new-instance v6, Lcom/android/dx/util/IntList;

    #@d
    invoke-direct {v6, v12}, Lcom/android/dx/util/IntList;-><init>(I)V

    #@10
    iget-object v0, p0, Lcom/android/dx/rop/code/RopMethod;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    #@12
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList;->size()I

    #@15
    move-result v7

    #@16
    move v3, v1

    #@17
    :goto_17
    if-ge v3, v7, :cond_4d

    #@19
    iget-object v0, p0, Lcom/android/dx/rop/code/RopMethod;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    #@1b
    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/BasicBlockList;->get(I)Lcom/android/dx/rop/code/BasicBlock;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    #@22
    move-result v8

    #@23
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    #@26
    move-result-object v9

    #@27
    invoke-virtual {v9}, Lcom/android/dx/util/IntList;->size()I

    #@2a
    move-result v10

    #@2b
    if-nez v10, :cond_34

    #@2d
    invoke-virtual {v6, v8}, Lcom/android/dx/util/IntList;->add(I)V

    #@30
    :cond_30
    add-int/lit8 v0, v3, 0x1

    #@32
    move v3, v0

    #@33
    goto :goto_17

    #@34
    :cond_34
    move v2, v1

    #@35
    :goto_35
    if-ge v2, v10, :cond_30

    #@37
    invoke-virtual {v9, v2}, Lcom/android/dx/util/IntList;->get(I)I

    #@3a
    move-result v11

    #@3b
    aget-object v0, v5, v11

    #@3d
    if-nez v0, :cond_46

    #@3f
    new-instance v0, Lcom/android/dx/util/IntList;

    #@41
    invoke-direct {v0, v12}, Lcom/android/dx/util/IntList;-><init>(I)V

    #@44
    aput-object v0, v5, v11

    #@46
    :cond_46
    invoke-virtual {v0, v8}, Lcom/android/dx/util/IntList;->add(I)V

    #@49
    add-int/lit8 v0, v2, 0x1

    #@4b
    move v2, v0

    #@4c
    goto :goto_35

    #@4d
    :cond_4d
    move v0, v1

    #@4e
    :goto_4e
    if-ge v0, v4, :cond_5d

    #@50
    aget-object v1, v5, v0

    #@52
    if-eqz v1, :cond_5a

    #@54
    invoke-virtual {v1}, Lcom/android/dx/util/IntList;->sort()V

    #@57
    invoke-virtual {v1}, Lcom/android/dx/util/IntList;->setImmutable()V

    #@5a
    :cond_5a
    add-int/lit8 v0, v0, 0x1

    #@5c
    goto :goto_4e

    #@5d
    :cond_5d
    invoke-virtual {v6}, Lcom/android/dx/util/IntList;->sort()V

    #@60
    invoke-virtual {v6}, Lcom/android/dx/util/IntList;->setImmutable()V

    #@63
    iget v0, p0, Lcom/android/dx/rop/code/RopMethod;->firstLabel:I

    #@65
    aget-object v0, v5, v0

    #@67
    if-nez v0, :cond_6f

    #@69
    iget v0, p0, Lcom/android/dx/rop/code/RopMethod;->firstLabel:I

    #@6b
    sget-object v1, Lcom/android/dx/util/IntList;->EMPTY:Lcom/android/dx/util/IntList;

    #@6d
    aput-object v1, v5, v0

    #@6f
    :cond_6f
    iput-object v5, p0, Lcom/android/dx/rop/code/RopMethod;->predecessors:[Lcom/android/dx/util/IntList;

    #@71
    iput-object v6, p0, Lcom/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/android/dx/util/IntList;

    #@73
    return-void
.end method


# virtual methods
.method public getBlocks()Lcom/android/dx/rop/code/BasicBlockList;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/RopMethod;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    #@2
    return-object v0
.end method

.method public getExitPredecessors()Lcom/android/dx/util/IntList;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/android/dx/util/IntList;

    #@2
    if-nez v0, :cond_7

    #@4
    invoke-direct {p0}, Lcom/android/dx/rop/code/RopMethod;->calcPredecessors()V

    #@7
    :cond_7
    iget-object v0, p0, Lcom/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/android/dx/util/IntList;

    #@9
    return-object v0
.end method

.method public getFirstLabel()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/rop/code/RopMethod;->firstLabel:I

    #@2
    return v0
.end method

.method public labelToPredecessors(I)Lcom/android/dx/util/IntList;
    .registers 5

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/android/dx/util/IntList;

    #@2
    if-nez v0, :cond_7

    #@4
    invoke-direct {p0}, Lcom/android/dx/rop/code/RopMethod;->calcPredecessors()V

    #@7
    :cond_7
    iget-object v0, p0, Lcom/android/dx/rop/code/RopMethod;->predecessors:[Lcom/android/dx/util/IntList;

    #@9
    aget-object v0, v0, p1

    #@b
    if-nez v0, :cond_2a

    #@d
    new-instance v0, Ljava/lang/RuntimeException;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string v2, "no such block: "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-static {p1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    :cond_2a
    return-object v0
.end method

.method public withRegisterOffset(I)Lcom/android/dx/rop/code/RopMethod;
    .registers 5

    #@0
    new-instance v0, Lcom/android/dx/rop/code/RopMethod;

    #@2
    iget-object v1, p0, Lcom/android/dx/rop/code/RopMethod;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    #@4
    invoke-virtual {v1, p1}, Lcom/android/dx/rop/code/BasicBlockList;->withRegisterOffset(I)Lcom/android/dx/rop/code/BasicBlockList;

    #@7
    move-result-object v1

    #@8
    iget v2, p0, Lcom/android/dx/rop/code/RopMethod;->firstLabel:I

    #@a
    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/code/RopMethod;-><init>(Lcom/android/dx/rop/code/BasicBlockList;I)V

    #@d
    iget-object v1, p0, Lcom/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/android/dx/util/IntList;

    #@f
    if-eqz v1, :cond_19

    #@11
    iget-object v1, p0, Lcom/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/android/dx/util/IntList;

    #@13
    iput-object v1, v0, Lcom/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/android/dx/util/IntList;

    #@15
    iget-object v1, p0, Lcom/android/dx/rop/code/RopMethod;->predecessors:[Lcom/android/dx/util/IntList;

    #@17
    iput-object v1, v0, Lcom/android/dx/rop/code/RopMethod;->predecessors:[Lcom/android/dx/util/IntList;

    #@19
    :cond_19
    return-object v0
.end method
