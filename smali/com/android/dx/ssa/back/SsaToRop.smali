.class public Lcom/android/dx/ssa/back/SsaToRop;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/ssa/back/SsaToRop$PhiVisitor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final interference:Lcom/android/dx/ssa/back/InterferenceGraph;

.field private final minimizeRegisters:Z

.field private final ssaMeth:Lcom/android/dx/ssa/SsaMethod;


# direct methods
.method private constructor <init>(Lcom/android/dx/ssa/SsaMethod;Z)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-boolean p2, p0, Lcom/android/dx/ssa/back/SsaToRop;->minimizeRegisters:Z

    #@5
    iput-object p1, p0, Lcom/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@7
    invoke-static {p1}, Lcom/android/dx/ssa/back/LivenessAnalyzer;->constructInterferenceGraph(Lcom/android/dx/ssa/SsaMethod;)Lcom/android/dx/ssa/back/InterferenceGraph;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/dx/ssa/back/SsaToRop;->interference:Lcom/android/dx/ssa/back/InterferenceGraph;

    #@d
    return-void
.end method

.method static synthetic access$000(Lcom/android/dx/ssa/back/SsaToRop;)Lcom/android/dx/ssa/SsaMethod;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@2
    return-object v0
.end method

.method private convert()Lcom/android/dx/rop/code/RopMethod;
    .registers 6

    #@0
    new-instance v0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;

    #@2
    iget-object v1, p0, Lcom/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@4
    iget-object v2, p0, Lcom/android/dx/ssa/back/SsaToRop;->interference:Lcom/android/dx/ssa/back/InterferenceGraph;

    #@6
    iget-boolean v3, p0, Lcom/android/dx/ssa/back/SsaToRop;->minimizeRegisters:Z

    #@8
    invoke-direct {v0, v1, v2, v3}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;-><init>(Lcom/android/dx/ssa/SsaMethod;Lcom/android/dx/ssa/back/InterferenceGraph;Z)V

    #@b
    invoke-virtual {v0}, Lcom/android/dx/ssa/back/RegisterAllocator;->allocateRegisters()Lcom/android/dx/ssa/RegisterMapper;

    #@e
    move-result-object v1

    #@f
    iget-object v2, p0, Lcom/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@11
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaMethod;->setBackMode()V

    #@14
    iget-object v2, p0, Lcom/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@16
    invoke-virtual {v2, v1}, Lcom/android/dx/ssa/SsaMethod;->mapRegisters(Lcom/android/dx/ssa/RegisterMapper;)V

    #@19
    invoke-direct {p0}, Lcom/android/dx/ssa/back/SsaToRop;->removePhiFunctions()V

    #@1c
    invoke-virtual {v0}, Lcom/android/dx/ssa/back/RegisterAllocator;->wantsParamsMovedHigh()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_25

    #@22
    invoke-direct {p0}, Lcom/android/dx/ssa/back/SsaToRop;->moveParametersToHighRegisters()V

    #@25
    :cond_25
    invoke-direct {p0}, Lcom/android/dx/ssa/back/SsaToRop;->removeEmptyGotos()V

    #@28
    new-instance v0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;

    #@2a
    new-instance v1, Lcom/android/dx/rop/code/RopMethod;

    #@2c
    invoke-direct {p0}, Lcom/android/dx/ssa/back/SsaToRop;->convertBasicBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    #@2f
    move-result-object v2

    #@30
    iget-object v3, p0, Lcom/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@32
    iget-object v4, p0, Lcom/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@34
    invoke-virtual {v4}, Lcom/android/dx/ssa/SsaMethod;->getEntryBlockIndex()I

    #@37
    move-result v4

    #@38
    invoke-virtual {v3, v4}, Lcom/android/dx/ssa/SsaMethod;->blockIndexToRopLabel(I)I

    #@3b
    move-result v3

    #@3c
    invoke-direct {v1, v2, v3}, Lcom/android/dx/rop/code/RopMethod;-><init>(Lcom/android/dx/rop/code/BasicBlockList;I)V

    #@3f
    invoke-direct {v0, v1}, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;-><init>(Lcom/android/dx/rop/code/RopMethod;)V

    #@42
    invoke-virtual {v0}, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->process()Lcom/android/dx/rop/code/RopMethod;

    #@45
    move-result-object v0

    #@46
    return-object v0
.end method

.method private convertBasicBlock(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/rop/code/BasicBlock;
    .registers 7

    #@0
    const/4 v1, -0x1

    #@1
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getRopLabelSuccessorList()Lcom/android/dx/util/IntList;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessorRopLabel()I

    #@8
    move-result v3

    #@9
    iget-object v0, p0, Lcom/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@b
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getExitBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@e
    move-result-object v0

    #@f
    if-nez v0, :cond_40

    #@11
    move v0, v1

    #@12
    :goto_12
    invoke-virtual {v2, v0}, Lcom/android/dx/util/IntList;->contains(I)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_5f

    #@18
    invoke-virtual {v2}, Lcom/android/dx/util/IntList;->size()I

    #@1b
    move-result v0

    #@1c
    const/4 v2, 0x1

    #@1d
    if-le v0, v2, :cond_45

    #@1f
    new-instance v0, Ljava/lang/RuntimeException;

    #@21
    new-instance v1, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string v2, "Exit predecessor must have no other successors"

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getRopLabel()I

    #@2f
    move-result v2

    #@30
    invoke-static {v2}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0

    #@40
    :cond_40
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getRopLabel()I

    #@43
    move-result v0

    #@44
    goto :goto_12

    #@45
    :cond_45
    sget-object v0, Lcom/android/dx/util/IntList;->EMPTY:Lcom/android/dx/util/IntList;

    #@47
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/back/SsaToRop;->verifyValidExitPredecessor(Lcom/android/dx/ssa/SsaBasicBlock;)V

    #@4a
    :goto_4a
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->setImmutable()V

    #@4d
    new-instance v2, Lcom/android/dx/rop/code/BasicBlock;

    #@4f
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getRopLabel()I

    #@52
    move-result v3

    #@53
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@56
    move-result-object v4

    #@57
    invoke-direct {p0, v4}, Lcom/android/dx/ssa/back/SsaToRop;->convertInsns(Ljava/util/ArrayList;)Lcom/android/dx/rop/code/InsnList;

    #@5a
    move-result-object v4

    #@5b
    invoke-direct {v2, v3, v4, v0, v1}, Lcom/android/dx/rop/code/BasicBlock;-><init>(ILcom/android/dx/rop/code/InsnList;Lcom/android/dx/util/IntList;I)V

    #@5e
    return-object v2

    #@5f
    :cond_5f
    move-object v0, v2

    #@60
    move v1, v3

    #@61
    goto :goto_4a
.end method

.method private convertBasicBlocks()Lcom/android/dx/rop/code/BasicBlockList;
    .registers 7

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@3
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@6
    move-result-object v2

    #@7
    iget-object v0, p0, Lcom/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@9
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getExitBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@c
    move-result-object v3

    #@d
    iget-object v0, p0, Lcom/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@f
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->computeReachability()V

    #@12
    iget-object v0, p0, Lcom/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@14
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getCountReachableBlocks()I

    #@17
    move-result v4

    #@18
    if-eqz v3, :cond_4a

    #@1a
    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaBasicBlock;->isReachable()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_4a

    #@20
    const/4 v0, 0x1

    #@21
    :goto_21
    new-instance v5, Lcom/android/dx/rop/code/BasicBlockList;

    #@23
    sub-int v0, v4, v0

    #@25
    invoke-direct {v5, v0}, Lcom/android/dx/rop/code/BasicBlockList;-><init>(I)V

    #@28
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@2b
    move-result-object v2

    #@2c
    :cond_2c
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_4c

    #@32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@38
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->isReachable()Z

    #@3b
    move-result v4

    #@3c
    if-eqz v4, :cond_2c

    #@3e
    if-eq v0, v3, :cond_2c

    #@40
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/back/SsaToRop;->convertBasicBlock(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/rop/code/BasicBlock;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v5, v1, v0}, Lcom/android/dx/rop/code/BasicBlockList;->set(ILcom/android/dx/rop/code/BasicBlock;)V

    #@47
    add-int/lit8 v1, v1, 0x1

    #@49
    goto :goto_2c

    #@4a
    :cond_4a
    move v0, v1

    #@4b
    goto :goto_21

    #@4c
    :cond_4c
    if-eqz v3, :cond_60

    #@4e
    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@51
    move-result-object v0

    #@52
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@55
    move-result v0

    #@56
    if-eqz v0, :cond_60

    #@58
    new-instance v0, Ljava/lang/RuntimeException;

    #@5a
    const-string v1, "Exit block must have no insns when leaving SSA form"

    #@5c
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v0

    #@60
    :cond_60
    return-object v5
.end method

.method private convertInsns(Ljava/util/ArrayList;)Lcom/android/dx/rop/code/InsnList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;)",
            "Lcom/android/dx/rop/code/InsnList;"
        }
    .end annotation

    #@0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v2

    #@4
    new-instance v3, Lcom/android/dx/rop/code/InsnList;

    #@6
    invoke-direct {v3, v2}, Lcom/android/dx/rop/code/InsnList;-><init>(I)V

    #@9
    const/4 v0, 0x0

    #@a
    move v1, v0

    #@b
    :goto_b
    if-ge v1, v2, :cond_1e

    #@d
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@13
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->toRopInsn()Lcom/android/dx/rop/code/Insn;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v3, v1, v0}, Lcom/android/dx/rop/code/InsnList;->set(ILcom/android/dx/rop/code/Insn;)V

    #@1a
    add-int/lit8 v0, v1, 0x1

    #@1c
    move v1, v0

    #@1d
    goto :goto_b

    #@1e
    :cond_1e
    invoke-virtual {v3}, Lcom/android/dx/rop/code/InsnList;->setImmutable()V

    #@21
    return-object v3
.end method

.method public static convertToRopMethod(Lcom/android/dx/ssa/SsaMethod;Z)Lcom/android/dx/rop/code/RopMethod;
    .registers 3

    #@0
    new-instance v0, Lcom/android/dx/ssa/back/SsaToRop;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/dx/ssa/back/SsaToRop;-><init>(Lcom/android/dx/ssa/SsaMethod;Z)V

    #@5
    invoke-direct {v0}, Lcom/android/dx/ssa/back/SsaToRop;->convert()Lcom/android/dx/rop/code/RopMethod;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method private moveParametersToHighRegisters()V
    .registers 7

    #@0
    const/4 v5, 0x1

    #@1
    iget-object v0, p0, Lcom/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@3
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getParamWidth()I

    #@6
    move-result v1

    #@7
    new-instance v2, Lcom/android/dx/ssa/BasicRegisterMapper;

    #@9
    iget-object v0, p0, Lcom/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@b
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    #@e
    move-result v0

    #@f
    invoke-direct {v2, v0}, Lcom/android/dx/ssa/BasicRegisterMapper;-><init>(I)V

    #@12
    iget-object v0, p0, Lcom/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@14
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    #@17
    move-result v3

    #@18
    const/4 v0, 0x0

    #@19
    :goto_19
    if-ge v0, v3, :cond_2c

    #@1b
    if-ge v0, v1, :cond_26

    #@1d
    sub-int v4, v3, v1

    #@1f
    add-int/2addr v4, v0

    #@20
    invoke-virtual {v2, v0, v4, v5}, Lcom/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    #@23
    :goto_23
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_19

    #@26
    :cond_26
    sub-int v4, v0, v1

    #@28
    invoke-virtual {v2, v0, v4, v5}, Lcom/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    #@2b
    goto :goto_23

    #@2c
    :cond_2c
    iget-object v0, p0, Lcom/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@2e
    invoke-virtual {v0, v2}, Lcom/android/dx/ssa/SsaMethod;->mapRegisters(Lcom/android/dx/ssa/RegisterMapper;)V

    #@31
    return-void
.end method

.method private removeEmptyGotos()V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@8
    const/4 v2, 0x0

    #@9
    new-instance v3, Lcom/android/dx/ssa/back/SsaToRop$1;

    #@b
    invoke-direct {v3, p0, v0}, Lcom/android/dx/ssa/back/SsaToRop$1;-><init>(Lcom/android/dx/ssa/back/SsaToRop;Ljava/util/ArrayList;)V

    #@e
    invoke-virtual {v1, v2, v3}, Lcom/android/dx/ssa/SsaMethod;->forEachBlockDepthFirst(ZLcom/android/dx/ssa/SsaBasicBlock$Visitor;)V

    #@11
    return-void
.end method

.method private removePhiFunctions()V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v2

    #@a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_22

    #@10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@16
    new-instance v3, Lcom/android/dx/ssa/back/SsaToRop$PhiVisitor;

    #@18
    invoke-direct {v3, v1}, Lcom/android/dx/ssa/back/SsaToRop$PhiVisitor;-><init>(Ljava/util/ArrayList;)V

    #@1b
    invoke-virtual {v0, v3}, Lcom/android/dx/ssa/SsaBasicBlock;->forEachPhiInsn(Lcom/android/dx/ssa/PhiInsn$Visitor;)V

    #@1e
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->removeAllPhiInsns()V

    #@21
    goto :goto_a

    #@22
    :cond_22
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v1

    #@26
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_36

    #@2c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@32
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->scheduleMovesFromPhis()V

    #@35
    goto :goto_26

    #@36
    :cond_36
    return-void
.end method

.method private verifyValidExitPredecessor(Lcom/android/dx/ssa/SsaBasicBlock;)V
    .registers 5

    #@0
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v1

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@10
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    #@17
    move-result v1

    #@18
    const/4 v2, 0x2

    #@19
    if-eq v1, v2, :cond_27

    #@1b
    sget-object v1, Lcom/android/dx/rop/code/Rops;->THROW:Lcom/android/dx/rop/code/Rop;

    #@1d
    if-eq v0, v1, :cond_27

    #@1f
    new-instance v0, Ljava/lang/RuntimeException;

    #@21
    const-string v1, "Exit predecessor must end in valid exit statement."

    #@23
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    :cond_27
    return-void
.end method


# virtual methods
.method public getRegistersByFrequency()[I
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Lcom/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@3
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    #@6
    move-result v2

    #@7
    new-array v3, v2, [Ljava/lang/Integer;

    #@9
    move v1, v0

    #@a
    :goto_a
    if-ge v1, v2, :cond_15

    #@c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v4

    #@10
    aput-object v4, v3, v1

    #@12
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_a

    #@15
    :cond_15
    new-instance v1, Lcom/android/dx/ssa/back/SsaToRop$2;

    #@17
    invoke-direct {v1, p0}, Lcom/android/dx/ssa/back/SsaToRop$2;-><init>(Lcom/android/dx/ssa/back/SsaToRop;)V

    #@1a
    invoke-static {v3, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    #@1d
    new-array v1, v2, [I

    #@1f
    :goto_1f
    if-ge v0, v2, :cond_2c

    #@21
    aget-object v4, v3, v0

    #@23
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@26
    move-result v4

    #@27
    aput v4, v1, v0

    #@29
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_1f

    #@2c
    :cond_2c
    return-object v1
.end method
