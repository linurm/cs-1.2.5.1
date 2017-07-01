.class public Lcom/android/dx/ssa/back/IdenticalBlockCombiner;
.super Ljava/lang/Object;


# instance fields
.field private final blocks:Lcom/android/dx/rop/code/BasicBlockList;

.field private final newBlocks:Lcom/android/dx/rop/code/BasicBlockList;

.field private final ropMethod:Lcom/android/dx/rop/code/RopMethod;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/code/RopMethod;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->ropMethod:Lcom/android/dx/rop/code/RopMethod;

    #@5
    iget-object v0, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->ropMethod:Lcom/android/dx/rop/code/RopMethod;

    #@7
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    #@d
    iget-object v0, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    #@f
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList;->getMutableCopy()Lcom/android/dx/rop/code/BasicBlockList;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/android/dx/rop/code/BasicBlockList;

    #@15
    return-void
.end method

.method private combineBlocks(ILcom/android/dx/util/IntList;)V
    .registers 12

    #@0
    const/4 v1, 0x0

    #@1
    invoke-virtual {p2}, Lcom/android/dx/util/IntList;->size()I

    #@4
    move-result v3

    #@5
    move v2, v1

    #@6
    :goto_6
    if-ge v2, v3, :cond_37

    #@8
    invoke-virtual {p2, v2}, Lcom/android/dx/util/IntList;->get(I)I

    #@b
    move-result v4

    #@c
    iget-object v0, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    #@e
    invoke-virtual {v0, v4}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    #@11
    move-result-object v0

    #@12
    iget-object v5, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->ropMethod:Lcom/android/dx/rop/code/RopMethod;

    #@14
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    #@17
    move-result v0

    #@18
    invoke-virtual {v5, v0}, Lcom/android/dx/rop/code/RopMethod;->labelToPredecessors(I)Lcom/android/dx/util/IntList;

    #@1b
    move-result-object v5

    #@1c
    invoke-virtual {v5}, Lcom/android/dx/util/IntList;->size()I

    #@1f
    move-result v6

    #@20
    move v0, v1

    #@21
    :goto_21
    if-ge v0, v6, :cond_33

    #@23
    iget-object v7, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/android/dx/rop/code/BasicBlockList;

    #@25
    invoke-virtual {v5, v0}, Lcom/android/dx/util/IntList;->get(I)I

    #@28
    move-result v8

    #@29
    invoke-virtual {v7, v8}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    #@2c
    move-result-object v7

    #@2d
    invoke-direct {p0, v7, v4, p1}, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->replaceSucc(Lcom/android/dx/rop/code/BasicBlock;II)V

    #@30
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_21

    #@33
    :cond_33
    add-int/lit8 v0, v2, 0x1

    #@35
    move v2, v0

    #@36
    goto :goto_6

    #@37
    :cond_37
    return-void
.end method

.method private static compareInsns(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/rop/code/BasicBlock;)Z
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/code/BasicBlock;->getInsns()Lcom/android/dx/rop/code/InsnList;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getInsns()Lcom/android/dx/rop/code/InsnList;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/code/InsnList;->contentEquals(Lcom/android/dx/rop/code/InsnList;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method private replaceSucc(Lcom/android/dx/rop/code/BasicBlock;II)V
    .registers 8

    #@0
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->mutableCopy()Lcom/android/dx/util/IntList;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1, p2}, Lcom/android/dx/util/IntList;->indexOf(I)I

    #@b
    move-result v0

    #@c
    invoke-virtual {v1, v0, p3}, Lcom/android/dx/util/IntList;->set(II)V

    #@f
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    #@12
    move-result v0

    #@13
    if-ne v0, p2, :cond_35

    #@15
    :goto_15
    invoke-virtual {v1}, Lcom/android/dx/util/IntList;->setImmutable()V

    #@18
    new-instance v0, Lcom/android/dx/rop/code/BasicBlock;

    #@1a
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    #@1d
    move-result v2

    #@1e
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getInsns()Lcom/android/dx/rop/code/InsnList;

    #@21
    move-result-object v3

    #@22
    invoke-direct {v0, v2, v3, v1, p3}, Lcom/android/dx/rop/code/BasicBlock;-><init>(ILcom/android/dx/rop/code/InsnList;Lcom/android/dx/util/IntList;I)V

    #@25
    iget-object v1, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/android/dx/rop/code/BasicBlockList;

    #@27
    iget-object v2, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/android/dx/rop/code/BasicBlockList;

    #@29
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    #@2c
    move-result v3

    #@2d
    invoke-virtual {v2, v3}, Lcom/android/dx/rop/code/BasicBlockList;->indexOfLabel(I)I

    #@30
    move-result v2

    #@31
    invoke-virtual {v1, v2, v0}, Lcom/android/dx/rop/code/BasicBlockList;->set(ILcom/android/dx/rop/code/BasicBlock;)V

    #@34
    return-void

    #@35
    :cond_35
    move p3, v0

    #@36
    goto :goto_15
.end method


# virtual methods
.method public process()Lcom/android/dx/rop/code/RopMethod;
    .registers 16

    #@0
    const/4 v14, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    iget-object v0, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    #@4
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList;->size()I

    #@7
    move-result v4

    #@8
    new-instance v5, Ljava/util/BitSet;

    #@a
    iget-object v0, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    #@c
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList;->getMaxLabel()I

    #@f
    move-result v0

    #@10
    invoke-direct {v5, v0}, Ljava/util/BitSet;-><init>(I)V

    #@13
    move v3, v2

    #@14
    :goto_14
    if-ge v3, v4, :cond_99

    #@16
    iget-object v0, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    #@18
    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/BasicBlockList;->get(I)Lcom/android/dx/rop/code/BasicBlock;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    #@1f
    move-result v1

    #@20
    invoke-virtual {v5, v1}, Ljava/util/BitSet;->get(I)Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_2a

    #@26
    :cond_26
    add-int/lit8 v0, v3, 0x1

    #@28
    move v3, v0

    #@29
    goto :goto_14

    #@2a
    :cond_2a
    iget-object v1, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->ropMethod:Lcom/android/dx/rop/code/RopMethod;

    #@2c
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    #@2f
    move-result v0

    #@30
    invoke-virtual {v1, v0}, Lcom/android/dx/rop/code/RopMethod;->labelToPredecessors(I)Lcom/android/dx/util/IntList;

    #@33
    move-result-object v6

    #@34
    invoke-virtual {v6}, Lcom/android/dx/util/IntList;->size()I

    #@37
    move-result v7

    #@38
    move v1, v2

    #@39
    :goto_39
    if-ge v1, v7, :cond_26

    #@3b
    invoke-virtual {v6, v1}, Lcom/android/dx/util/IntList;->get(I)I

    #@3e
    move-result v8

    #@3f
    iget-object v0, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    #@41
    invoke-virtual {v0, v8}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    #@44
    move-result-object v9

    #@45
    invoke-virtual {v5, v8}, Ljava/util/BitSet;->get(I)Z

    #@48
    move-result v0

    #@49
    if-nez v0, :cond_65

    #@4b
    invoke-virtual {v9}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    #@4e
    move-result-object v0

    #@4f
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    #@52
    move-result v0

    #@53
    if-gt v0, v14, :cond_65

    #@55
    invoke-virtual {v9}, Lcom/android/dx/rop/code/BasicBlock;->getFirstInsn()Lcom/android/dx/rop/code/Insn;

    #@58
    move-result-object v0

    #@59
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@5c
    move-result-object v0

    #@5d
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    #@60
    move-result v0

    #@61
    const/16 v10, 0x37

    #@63
    if-ne v0, v10, :cond_69

    #@65
    :cond_65
    :goto_65
    add-int/lit8 v0, v1, 0x1

    #@67
    move v1, v0

    #@68
    goto :goto_39

    #@69
    :cond_69
    new-instance v10, Lcom/android/dx/util/IntList;

    #@6b
    invoke-direct {v10}, Lcom/android/dx/util/IntList;-><init>()V

    #@6e
    add-int/lit8 v0, v1, 0x1

    #@70
    :goto_70
    if-ge v0, v7, :cond_95

    #@72
    invoke-virtual {v6, v0}, Lcom/android/dx/util/IntList;->get(I)I

    #@75
    move-result v11

    #@76
    iget-object v12, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    #@78
    invoke-virtual {v12, v11}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    #@7b
    move-result-object v12

    #@7c
    invoke-virtual {v12}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    #@7f
    move-result-object v13

    #@80
    invoke-virtual {v13}, Lcom/android/dx/util/IntList;->size()I

    #@83
    move-result v13

    #@84
    if-ne v13, v14, :cond_92

    #@86
    invoke-static {v9, v12}, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->compareInsns(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/rop/code/BasicBlock;)Z

    #@89
    move-result v12

    #@8a
    if-eqz v12, :cond_92

    #@8c
    invoke-virtual {v10, v11}, Lcom/android/dx/util/IntList;->add(I)V

    #@8f
    invoke-virtual {v5, v11}, Ljava/util/BitSet;->set(I)V

    #@92
    :cond_92
    add-int/lit8 v0, v0, 0x1

    #@94
    goto :goto_70

    #@95
    :cond_95
    invoke-direct {p0, v8, v10}, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->combineBlocks(ILcom/android/dx/util/IntList;)V

    #@98
    goto :goto_65

    #@99
    :cond_99
    add-int/lit8 v0, v4, -0x1

    #@9b
    :goto_9b
    if-ltz v0, :cond_b6

    #@9d
    iget-object v1, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/android/dx/rop/code/BasicBlockList;

    #@9f
    invoke-virtual {v1, v0}, Lcom/android/dx/rop/code/BasicBlockList;->get(I)Lcom/android/dx/rop/code/BasicBlock;

    #@a2
    move-result-object v1

    #@a3
    invoke-virtual {v1}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    #@a6
    move-result v1

    #@a7
    invoke-virtual {v5, v1}, Ljava/util/BitSet;->get(I)Z

    #@aa
    move-result v1

    #@ab
    if-eqz v1, :cond_b3

    #@ad
    iget-object v1, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/android/dx/rop/code/BasicBlockList;

    #@af
    const/4 v2, 0x0

    #@b0
    invoke-virtual {v1, v0, v2}, Lcom/android/dx/rop/code/BasicBlockList;->set(ILcom/android/dx/rop/code/BasicBlock;)V

    #@b3
    :cond_b3
    add-int/lit8 v0, v0, -0x1

    #@b5
    goto :goto_9b

    #@b6
    :cond_b6
    iget-object v0, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/android/dx/rop/code/BasicBlockList;

    #@b8
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList;->shrinkToFit()V

    #@bb
    iget-object v0, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/android/dx/rop/code/BasicBlockList;

    #@bd
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList;->setImmutable()V

    #@c0
    new-instance v0, Lcom/android/dx/rop/code/RopMethod;

    #@c2
    iget-object v1, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/android/dx/rop/code/BasicBlockList;

    #@c4
    iget-object v2, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->ropMethod:Lcom/android/dx/rop/code/RopMethod;

    #@c6
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RopMethod;->getFirstLabel()I

    #@c9
    move-result v2

    #@ca
    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/code/RopMethod;-><init>(Lcom/android/dx/rop/code/BasicBlockList;I)V

    #@cd
    return-object v0
.end method
