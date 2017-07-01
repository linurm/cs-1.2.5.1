.class public Lcom/android/dx/ssa/SsaConverter;
.super Ljava/lang/Object;


# static fields
.field public static final DEBUG:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static convertToSsaMethod(Lcom/android/dx/rop/code/RopMethod;IZ)Lcom/android/dx/ssa/SsaMethod;
    .registers 6

    #@0
    invoke-static {p0, p1, p2}, Lcom/android/dx/ssa/SsaMethod;->newFromRopMethod(Lcom/android/dx/rop/code/RopMethod;IZ)Lcom/android/dx/ssa/SsaMethod;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/dx/ssa/SsaConverter;->edgeSplit(Lcom/android/dx/ssa/SsaMethod;)V

    #@7
    invoke-static {v0}, Lcom/android/dx/ssa/LocalVariableExtractor;->extract(Lcom/android/dx/ssa/SsaMethod;)Lcom/android/dx/ssa/LocalVariableInfo;

    #@a
    move-result-object v1

    #@b
    const/4 v2, 0x0

    #@c
    invoke-static {v0, v1, v2}, Lcom/android/dx/ssa/SsaConverter;->placePhiFunctions(Lcom/android/dx/ssa/SsaMethod;Lcom/android/dx/ssa/LocalVariableInfo;I)V

    #@f
    new-instance v1, Lcom/android/dx/ssa/SsaRenamer;

    #@11
    invoke-direct {v1, v0}, Lcom/android/dx/ssa/SsaRenamer;-><init>(Lcom/android/dx/ssa/SsaMethod;)V

    #@14
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaRenamer;->run()V

    #@17
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->makeExitBlock()V

    #@1a
    return-object v0
.end method

.method private static edgeSplit(Lcom/android/dx/ssa/SsaMethod;)V
    .registers 1

    #@0
    invoke-static {p0}, Lcom/android/dx/ssa/SsaConverter;->edgeSplitPredecessors(Lcom/android/dx/ssa/SsaMethod;)V

    #@3
    invoke-static {p0}, Lcom/android/dx/ssa/SsaConverter;->edgeSplitMoveExceptionsAndResults(Lcom/android/dx/ssa/SsaMethod;)V

    #@6
    invoke-static {p0}, Lcom/android/dx/ssa/SsaConverter;->edgeSplitSuccessors(Lcom/android/dx/ssa/SsaMethod;)V

    #@9
    return-void
.end method

.method private static edgeSplitMoveExceptionsAndResults(Lcom/android/dx/ssa/SsaMethod;)V
    .registers 9

    #@0
    const/4 v7, 0x0

    #@1
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@4
    move-result-object v5

    #@5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    add-int/lit8 v0, v0, -0x1

    #@b
    move v4, v0

    #@c
    :goto_c
    if-ltz v4, :cond_78

    #@e
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@14
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->isExitBlock()Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_74

    #@1a
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    #@21
    move-result v1

    #@22
    const/4 v2, 0x1

    #@23
    if-le v1, v2, :cond_74

    #@25
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v1

    #@2d
    check-cast v1, Lcom/android/dx/ssa/SsaInsn;

    #@2f
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->isMoveException()Z

    #@32
    move-result v1

    #@33
    if-eqz v1, :cond_74

    #@35
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    #@3c
    move-result-object v1

    #@3d
    check-cast v1, Ljava/util/BitSet;

    #@3f
    invoke-virtual {v1, v7}, Ljava/util/BitSet;->nextSetBit(I)I

    #@42
    move-result v2

    #@43
    move v3, v2

    #@44
    :goto_44
    if-ltz v3, :cond_6d

    #@46
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@49
    move-result-object v2

    #@4a
    check-cast v2, Lcom/android/dx/ssa/SsaBasicBlock;

    #@4c
    invoke-virtual {v2, v0}, Lcom/android/dx/ssa/SsaBasicBlock;->insertNewSuccessor(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaBasicBlock;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@53
    move-result-object v6

    #@54
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5b
    move-result-object v2

    #@5c
    check-cast v2, Lcom/android/dx/ssa/SsaInsn;

    #@5e
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaInsn;->clone()Lcom/android/dx/ssa/SsaInsn;

    #@61
    move-result-object v2

    #@62
    invoke-virtual {v6, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@65
    add-int/lit8 v2, v3, 0x1

    #@67
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    #@6a
    move-result v2

    #@6b
    move v3, v2

    #@6c
    goto :goto_44

    #@6d
    :cond_6d
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@70
    move-result-object v0

    #@71
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@74
    :cond_74
    add-int/lit8 v0, v4, -0x1

    #@76
    move v4, v0

    #@77
    goto :goto_c

    #@78
    :cond_78
    return-void
.end method

.method private static edgeSplitPredecessors(Lcom/android/dx/ssa/SsaMethod;)V
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    move v1, v0

    #@b
    :goto_b
    if-ltz v1, :cond_20

    #@d
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@13
    invoke-static {v0}, Lcom/android/dx/ssa/SsaConverter;->nodeNeedsUniquePredecessor(Lcom/android/dx/ssa/SsaBasicBlock;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_1c

    #@19
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->insertNewPredecessor()Lcom/android/dx/ssa/SsaBasicBlock;

    #@1c
    :cond_1c
    add-int/lit8 v0, v1, -0x1

    #@1e
    move v1, v0

    #@1f
    goto :goto_b

    #@20
    :cond_20
    return-void
.end method

.method private static edgeSplitSuccessors(Lcom/android/dx/ssa/SsaMethod;)V
    .registers 8

    #@0
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@3
    move-result-object v5

    #@4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    move v3, v0

    #@b
    :goto_b
    if-ltz v3, :cond_42

    #@d
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    move-object v1, v0

    #@12
    check-cast v1, Lcom/android/dx/ssa/SsaBasicBlock;

    #@14
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    move-object v2, v0

    #@1d
    check-cast v2, Ljava/util/BitSet;

    #@1f
    const/4 v0, 0x0

    #@20
    invoke-virtual {v2, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    #@23
    move-result v0

    #@24
    move v4, v0

    #@25
    :goto_25
    if-ltz v4, :cond_3e

    #@27
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@2d
    invoke-static {v1, v0}, Lcom/android/dx/ssa/SsaConverter;->needsNewSuccessor(Lcom/android/dx/ssa/SsaBasicBlock;Lcom/android/dx/ssa/SsaBasicBlock;)Z

    #@30
    move-result v6

    #@31
    if-eqz v6, :cond_36

    #@33
    invoke-virtual {v1, v0}, Lcom/android/dx/ssa/SsaBasicBlock;->insertNewSuccessor(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaBasicBlock;

    #@36
    :cond_36
    add-int/lit8 v0, v4, 0x1

    #@38
    invoke-virtual {v2, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    #@3b
    move-result v0

    #@3c
    move v4, v0

    #@3d
    goto :goto_25

    #@3e
    :cond_3e
    add-int/lit8 v0, v3, -0x1

    #@40
    move v3, v0

    #@41
    goto :goto_b

    #@42
    :cond_42
    return-void
.end method

.method private static needsNewSuccessor(Lcom/android/dx/ssa/SsaBasicBlock;Lcom/android/dx/ssa/SsaBasicBlock;)Z
    .registers 5

    #@0
    const/4 v1, 0x1

    #@1
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v2

    #@9
    add-int/lit8 v2, v2, -0x1

    #@b
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@11
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@14
    move-result-object v2

    #@15
    if-nez v2, :cond_21

    #@17
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@1e
    move-result v0

    #@1f
    if-lez v0, :cond_2d

    #@21
    :cond_21
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    #@28
    move-result v0

    #@29
    if-le v0, v1, :cond_2d

    #@2b
    move v0, v1

    #@2c
    :goto_2c
    return v0

    #@2d
    :cond_2d
    const/4 v0, 0x0

    #@2e
    goto :goto_2c
.end method

.method private static nodeNeedsUniquePredecessor(Lcom/android/dx/ssa/SsaBasicBlock;)Z
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    #@8
    move-result v1

    #@9
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    #@10
    move-result v2

    #@11
    if-le v1, v0, :cond_16

    #@13
    if-le v2, v0, :cond_16

    #@15
    :goto_15
    return v0

    #@16
    :cond_16
    const/4 v0, 0x0

    #@17
    goto :goto_15
.end method

.method private static placePhiFunctions(Lcom/android/dx/ssa/SsaMethod;Lcom/android/dx/ssa/LocalVariableInfo;I)V
    .registers 16

    #@0
    const/4 v3, 0x0

    #@1
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@4
    move-result-object v4

    #@5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v1

    #@9
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    #@c
    move-result v0

    #@d
    sub-int v5, v0, p2

    #@f
    new-instance v0, Lcom/android/dx/ssa/DomFront;

    #@11
    invoke-direct {v0, p0}, Lcom/android/dx/ssa/DomFront;-><init>(Lcom/android/dx/ssa/SsaMethod;)V

    #@14
    invoke-virtual {v0}, Lcom/android/dx/ssa/DomFront;->run()[Lcom/android/dx/ssa/DomFront$DomInfo;

    #@17
    move-result-object v6

    #@18
    new-array v7, v5, [Ljava/util/BitSet;

    #@1a
    new-array v8, v5, [Ljava/util/BitSet;

    #@1c
    move v0, v3

    #@1d
    :goto_1d
    if-ge v0, v5, :cond_30

    #@1f
    new-instance v2, Ljava/util/BitSet;

    #@21
    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>(I)V

    #@24
    aput-object v2, v7, v0

    #@26
    new-instance v2, Ljava/util/BitSet;

    #@28
    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>(I)V

    #@2b
    aput-object v2, v8, v0

    #@2d
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_1d

    #@30
    :cond_30
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@33
    move-result v2

    #@34
    move v1, v3

    #@35
    :goto_35
    if-ge v1, v2, :cond_6d

    #@37
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@3d
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@44
    move-result-object v9

    #@45
    :cond_45
    :goto_45
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@48
    move-result v0

    #@49
    if-eqz v0, :cond_69

    #@4b
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4e
    move-result-object v0

    #@4f
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@51
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@54
    move-result-object v0

    #@55
    if-eqz v0, :cond_45

    #@57
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@5a
    move-result v10

    #@5b
    sub-int/2addr v10, p2

    #@5c
    if-ltz v10, :cond_45

    #@5e
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@61
    move-result v0

    #@62
    sub-int/2addr v0, p2

    #@63
    aget-object v0, v7, v0

    #@65
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    #@68
    goto :goto_45

    #@69
    :cond_69
    add-int/lit8 v0, v1, 0x1

    #@6b
    move v1, v0

    #@6c
    goto :goto_35

    #@6d
    :cond_6d
    move v2, v3

    #@6e
    :goto_6e
    if-ge v2, v5, :cond_cf

    #@70
    aget-object v0, v7, v2

    #@72
    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    #@75
    move-result-object v0

    #@76
    check-cast v0, Ljava/util/BitSet;

    #@78
    :cond_78
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    #@7b
    move-result v1

    #@7c
    if-ltz v1, :cond_cb

    #@7e
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    #@81
    aget-object v1, v6, v1

    #@83
    iget-object v1, v1, Lcom/android/dx/ssa/DomFront$DomInfo;->dominanceFrontiers:Lcom/android/dx/util/IntSet;

    #@85
    invoke-interface {v1}, Lcom/android/dx/util/IntSet;->iterator()Lcom/android/dx/util/IntIterator;

    #@88
    move-result-object v9

    #@89
    :cond_89
    :goto_89
    invoke-interface {v9}, Lcom/android/dx/util/IntIterator;->hasNext()Z

    #@8c
    move-result v1

    #@8d
    if-eqz v1, :cond_78

    #@8f
    invoke-interface {v9}, Lcom/android/dx/util/IntIterator;->next()I

    #@92
    move-result v10

    #@93
    aget-object v1, v8, v2

    #@95
    invoke-virtual {v1, v10}, Ljava/util/BitSet;->get(I)Z

    #@98
    move-result v1

    #@99
    if-nez v1, :cond_89

    #@9b
    aget-object v1, v8, v2

    #@9d
    invoke-virtual {v1, v10}, Ljava/util/BitSet;->set(I)V

    #@a0
    add-int v11, v2, p2

    #@a2
    invoke-virtual {p1, v10}, Lcom/android/dx/ssa/LocalVariableInfo;->getStarts(I)Lcom/android/dx/rop/code/RegisterSpecSet;

    #@a5
    move-result-object v1

    #@a6
    invoke-virtual {v1, v11}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@a9
    move-result-object v12

    #@aa
    if-nez v12, :cond_c1

    #@ac
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@af
    move-result-object v1

    #@b0
    check-cast v1, Lcom/android/dx/ssa/SsaBasicBlock;

    #@b2
    invoke-virtual {v1, v11}, Lcom/android/dx/ssa/SsaBasicBlock;->addPhiInsnForReg(I)V

    #@b5
    :goto_b5
    aget-object v1, v7, v2

    #@b7
    invoke-virtual {v1, v10}, Ljava/util/BitSet;->get(I)Z

    #@ba
    move-result v1

    #@bb
    if-nez v1, :cond_89

    #@bd
    invoke-virtual {v0, v10}, Ljava/util/BitSet;->set(I)V

    #@c0
    goto :goto_89

    #@c1
    :cond_c1
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c4
    move-result-object v1

    #@c5
    check-cast v1, Lcom/android/dx/ssa/SsaBasicBlock;

    #@c7
    invoke-virtual {v1, v12}, Lcom/android/dx/ssa/SsaBasicBlock;->addPhiInsnForReg(Lcom/android/dx/rop/code/RegisterSpec;)V

    #@ca
    goto :goto_b5

    #@cb
    :cond_cb
    add-int/lit8 v0, v2, 0x1

    #@cd
    move v2, v0

    #@ce
    goto :goto_6e

    #@cf
    :cond_cf
    return-void
.end method

.method public static testEdgeSplit(Lcom/android/dx/rop/code/RopMethod;IZ)Lcom/android/dx/ssa/SsaMethod;
    .registers 4

    #@0
    invoke-static {p0, p1, p2}, Lcom/android/dx/ssa/SsaMethod;->newFromRopMethod(Lcom/android/dx/rop/code/RopMethod;IZ)Lcom/android/dx/ssa/SsaMethod;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/dx/ssa/SsaConverter;->edgeSplit(Lcom/android/dx/ssa/SsaMethod;)V

    #@7
    return-object v0
.end method

.method public static testPhiPlacement(Lcom/android/dx/rop/code/RopMethod;IZ)Lcom/android/dx/ssa/SsaMethod;
    .registers 6

    #@0
    invoke-static {p0, p1, p2}, Lcom/android/dx/ssa/SsaMethod;->newFromRopMethod(Lcom/android/dx/rop/code/RopMethod;IZ)Lcom/android/dx/ssa/SsaMethod;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/dx/ssa/SsaConverter;->edgeSplit(Lcom/android/dx/ssa/SsaMethod;)V

    #@7
    invoke-static {v0}, Lcom/android/dx/ssa/LocalVariableExtractor;->extract(Lcom/android/dx/ssa/SsaMethod;)Lcom/android/dx/ssa/LocalVariableInfo;

    #@a
    move-result-object v1

    #@b
    const/4 v2, 0x0

    #@c
    invoke-static {v0, v1, v2}, Lcom/android/dx/ssa/SsaConverter;->placePhiFunctions(Lcom/android/dx/ssa/SsaMethod;Lcom/android/dx/ssa/LocalVariableInfo;I)V

    #@f
    return-object v0
.end method

.method public static updateSsaMethod(Lcom/android/dx/ssa/SsaMethod;I)V
    .registers 3

    #@0
    invoke-static {p0}, Lcom/android/dx/ssa/LocalVariableExtractor;->extract(Lcom/android/dx/ssa/SsaMethod;)Lcom/android/dx/ssa/LocalVariableInfo;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0, p1}, Lcom/android/dx/ssa/SsaConverter;->placePhiFunctions(Lcom/android/dx/ssa/SsaMethod;Lcom/android/dx/ssa/LocalVariableInfo;I)V

    #@7
    new-instance v0, Lcom/android/dx/ssa/SsaRenamer;

    #@9
    invoke-direct {v0, p0, p1}, Lcom/android/dx/ssa/SsaRenamer;-><init>(Lcom/android/dx/ssa/SsaMethod;I)V

    #@c
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaRenamer;->run()V

    #@f
    return-void
.end method
