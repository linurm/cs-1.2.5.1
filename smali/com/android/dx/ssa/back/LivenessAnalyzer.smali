.class public Lcom/android/dx/ssa/back/LivenessAnalyzer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;
    }
.end annotation


# instance fields
.field private blockN:Lcom/android/dx/ssa/SsaBasicBlock;

.field private final interference:Lcom/android/dx/ssa/back/InterferenceGraph;

.field private final liveOutBlocks:Ljava/util/BitSet;

.field private nextFunction:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

.field private final regV:I

.field private final ssaMeth:Lcom/android/dx/ssa/SsaMethod;

.field private statementIndex:I

.field private final visitedBlocks:Ljava/util/BitSet;


# direct methods
.method private constructor <init>(Lcom/android/dx/ssa/SsaMethod;ILcom/android/dx/ssa/back/InterferenceGraph;)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v0

    #@b
    iput-object p1, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@d
    iput p2, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->regV:I

    #@f
    new-instance v1, Ljava/util/BitSet;

    #@11
    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    #@14
    iput-object v1, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->visitedBlocks:Ljava/util/BitSet;

    #@16
    new-instance v1, Ljava/util/BitSet;

    #@18
    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    #@1b
    iput-object v1, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->liveOutBlocks:Ljava/util/BitSet;

    #@1d
    iput-object p3, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->interference:Lcom/android/dx/ssa/back/InterferenceGraph;

    #@1f
    return-void
.end method

.method private static coInterferePhis(Lcom/android/dx/ssa/SsaMethod;Lcom/android/dx/ssa/back/InterferenceGraph;)V
    .registers 10

    #@0
    const/4 v2, 0x0

    #@1
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v4

    #@9
    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_4d

    #@f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@15
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getPhiInsns()Ljava/util/List;

    #@18
    move-result-object v5

    #@19
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@1c
    move-result v6

    #@1d
    move v3, v2

    #@1e
    :goto_1e
    if-ge v3, v6, :cond_9

    #@20
    move v1, v2

    #@21
    :goto_21
    if-ge v1, v6, :cond_49

    #@23
    if-ne v3, v1, :cond_29

    #@25
    :goto_25
    add-int/lit8 v0, v1, 0x1

    #@27
    move v1, v0

    #@28
    goto :goto_21

    #@29
    :cond_29
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@2f
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@36
    move-result v7

    #@37
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@3d
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@44
    move-result v0

    #@45
    invoke-virtual {p1, v7, v0}, Lcom/android/dx/ssa/back/InterferenceGraph;->add(II)V

    #@48
    goto :goto_25

    #@49
    :cond_49
    add-int/lit8 v0, v3, 0x1

    #@4b
    move v3, v0

    #@4c
    goto :goto_1e

    #@4d
    :cond_4d
    return-void
.end method

.method public static constructInterferenceGraph(Lcom/android/dx/ssa/SsaMethod;)Lcom/android/dx/ssa/back/InterferenceGraph;
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    #@3
    move-result v1

    #@4
    new-instance v2, Lcom/android/dx/ssa/back/InterferenceGraph;

    #@6
    invoke-direct {v2, v1}, Lcom/android/dx/ssa/back/InterferenceGraph;-><init>(I)V

    #@9
    const/4 v0, 0x0

    #@a
    :goto_a
    if-ge v0, v1, :cond_17

    #@c
    new-instance v3, Lcom/android/dx/ssa/back/LivenessAnalyzer;

    #@e
    invoke-direct {v3, p0, v0, v2}, Lcom/android/dx/ssa/back/LivenessAnalyzer;-><init>(Lcom/android/dx/ssa/SsaMethod;ILcom/android/dx/ssa/back/InterferenceGraph;)V

    #@11
    invoke-virtual {v3}, Lcom/android/dx/ssa/back/LivenessAnalyzer;->run()V

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_a

    #@17
    :cond_17
    invoke-static {p0, v2}, Lcom/android/dx/ssa/back/LivenessAnalyzer;->coInterferePhis(Lcom/android/dx/ssa/SsaMethod;Lcom/android/dx/ssa/back/InterferenceGraph;)V

    #@1a
    return-object v2
.end method

.method private handleTailRecursion()V
    .registers 3

    #@0
    :goto_0
    iget-object v0, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->nextFunction:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@2
    sget-object v1, Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->DONE:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@4
    if-eq v0, v1, :cond_2c

    #@6
    sget-object v0, Lcom/android/dx/ssa/back/LivenessAnalyzer$1;->$SwitchMap$com$android$dx$ssa$back$LivenessAnalyzer$NextFunction:[I

    #@8
    iget-object v1, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->nextFunction:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@a
    invoke-virtual {v1}, Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->ordinal()I

    #@d
    move-result v1

    #@e
    aget v0, v0, v1

    #@10
    packed-switch v0, :pswitch_data_2e

    #@13
    goto :goto_0

    #@14
    :pswitch_14
    sget-object v0, Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->DONE:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@16
    iput-object v0, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->nextFunction:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@18
    invoke-direct {p0}, Lcom/android/dx/ssa/back/LivenessAnalyzer;->liveInAtStatement()V

    #@1b
    goto :goto_0

    #@1c
    :pswitch_1c
    sget-object v0, Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->DONE:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@1e
    iput-object v0, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->nextFunction:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@20
    invoke-direct {p0}, Lcom/android/dx/ssa/back/LivenessAnalyzer;->liveOutAtStatement()V

    #@23
    goto :goto_0

    #@24
    :pswitch_24
    sget-object v0, Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->DONE:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@26
    iput-object v0, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->nextFunction:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@28
    invoke-direct {p0}, Lcom/android/dx/ssa/back/LivenessAnalyzer;->liveOutAtBlock()V

    #@2b
    goto :goto_0

    #@2c
    :cond_2c
    return-void

    #@2d
    nop

    #@2e
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_14
        :pswitch_1c
        :pswitch_24
    .end packed-switch
.end method

.method private liveInAtStatement()V
    .registers 3

    #@0
    iget v0, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->statementIndex:I

    #@2
    if-nez v0, :cond_17

    #@4
    iget-object v0, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->blockN:Lcom/android/dx/ssa/SsaBasicBlock;

    #@6
    iget v1, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->regV:I

    #@8
    invoke-virtual {v0, v1}, Lcom/android/dx/ssa/SsaBasicBlock;->addLiveIn(I)V

    #@b
    iget-object v0, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->blockN:Lcom/android/dx/ssa/SsaBasicBlock;

    #@d
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->liveOutBlocks:Ljava/util/BitSet;

    #@13
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    #@16
    :goto_16
    return-void

    #@17
    :cond_17
    iget v0, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->statementIndex:I

    #@19
    add-int/lit8 v0, v0, -0x1

    #@1b
    iput v0, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->statementIndex:I

    #@1d
    sget-object v0, Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->LIVE_OUT_AT_STATEMENT:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@1f
    iput-object v0, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->nextFunction:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@21
    goto :goto_16
.end method

.method private liveOutAtBlock()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->visitedBlocks:Ljava/util/BitSet;

    #@2
    iget-object v1, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->blockN:Lcom/android/dx/ssa/SsaBasicBlock;

    #@4
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@7
    move-result v1

    #@8
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_32

    #@e
    iget-object v0, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->visitedBlocks:Ljava/util/BitSet;

    #@10
    iget-object v1, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->blockN:Lcom/android/dx/ssa/SsaBasicBlock;

    #@12
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@15
    move-result v1

    #@16
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    #@19
    iget-object v0, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->blockN:Lcom/android/dx/ssa/SsaBasicBlock;

    #@1b
    iget v1, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->regV:I

    #@1d
    invoke-virtual {v0, v1}, Lcom/android/dx/ssa/SsaBasicBlock;->addLiveOut(I)V

    #@20
    iget-object v0, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->blockN:Lcom/android/dx/ssa/SsaBasicBlock;

    #@22
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@29
    move-result v0

    #@2a
    add-int/lit8 v0, v0, -0x1

    #@2c
    iput v0, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->statementIndex:I

    #@2e
    sget-object v0, Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->LIVE_OUT_AT_STATEMENT:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@30
    iput-object v0, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->nextFunction:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@32
    :cond_32
    return-void
.end method

.method private liveOutAtStatement()V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->blockN:Lcom/android/dx/ssa/SsaBasicBlock;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@5
    move-result-object v0

    #@6
    iget v1, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->statementIndex:I

    #@8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@e
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@11
    move-result-object v1

    #@12
    iget v2, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->regV:I

    #@14
    invoke-virtual {v0, v2}, Lcom/android/dx/ssa/SsaInsn;->isResultReg(I)Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_2b

    #@1a
    if-eqz v1, :cond_27

    #@1c
    iget-object v0, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->interference:Lcom/android/dx/ssa/back/InterferenceGraph;

    #@1e
    iget v2, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->regV:I

    #@20
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@23
    move-result v1

    #@24
    invoke-virtual {v0, v2, v1}, Lcom/android/dx/ssa/back/InterferenceGraph;->add(II)V

    #@27
    :cond_27
    sget-object v0, Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->LIVE_IN_AT_STATEMENT:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@29
    iput-object v0, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->nextFunction:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@2b
    :cond_2b
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@2
    iget v1, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->regV:I

    #@4
    invoke-virtual {v0, v1}, Lcom/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_6a

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@18
    sget-object v2, Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->DONE:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@1a
    iput-object v2, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->nextFunction:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@1c
    instance-of v2, v0, Lcom/android/dx/ssa/PhiInsn;

    #@1e
    if-eqz v2, :cond_44

    #@20
    check-cast v0, Lcom/android/dx/ssa/PhiInsn;

    #@22
    iget v2, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->regV:I

    #@24
    iget-object v3, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@26
    invoke-virtual {v0, v2, v3}, Lcom/android/dx/ssa/PhiInsn;->predBlocksForReg(ILcom/android/dx/ssa/SsaMethod;)Ljava/util/List;

    #@29
    move-result-object v0

    #@2a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@2d
    move-result-object v2

    #@2e
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@31
    move-result v0

    #@32
    if-eqz v0, :cond_c

    #@34
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@37
    move-result-object v0

    #@38
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@3a
    iput-object v0, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->blockN:Lcom/android/dx/ssa/SsaBasicBlock;

    #@3c
    sget-object v0, Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->LIVE_OUT_AT_BLOCK:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@3e
    iput-object v0, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->nextFunction:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@40
    invoke-direct {p0}, Lcom/android/dx/ssa/back/LivenessAnalyzer;->handleTailRecursion()V

    #@43
    goto :goto_2e

    #@44
    :cond_44
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@47
    move-result-object v2

    #@48
    iput-object v2, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->blockN:Lcom/android/dx/ssa/SsaBasicBlock;

    #@4a
    iget-object v2, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->blockN:Lcom/android/dx/ssa/SsaBasicBlock;

    #@4c
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@53
    move-result v0

    #@54
    iput v0, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->statementIndex:I

    #@56
    iget v0, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->statementIndex:I

    #@58
    if-gez v0, :cond_62

    #@5a
    new-instance v0, Ljava/lang/RuntimeException;

    #@5c
    const-string v1, "insn not found in it\'s own block"

    #@5e
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@61
    throw v0

    #@62
    :cond_62
    sget-object v0, Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->LIVE_IN_AT_STATEMENT:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@64
    iput-object v0, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->nextFunction:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@66
    invoke-direct {p0}, Lcom/android/dx/ssa/back/LivenessAnalyzer;->handleTailRecursion()V

    #@69
    goto :goto_c

    #@6a
    :cond_6a
    :goto_6a
    iget-object v0, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->liveOutBlocks:Ljava/util/BitSet;

    #@6c
    const/4 v1, 0x0

    #@6d
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    #@70
    move-result v1

    #@71
    if-ltz v1, :cond_8e

    #@73
    iget-object v0, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@75
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@78
    move-result-object v0

    #@79
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7c
    move-result-object v0

    #@7d
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@7f
    iput-object v0, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->blockN:Lcom/android/dx/ssa/SsaBasicBlock;

    #@81
    iget-object v0, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->liveOutBlocks:Ljava/util/BitSet;

    #@83
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    #@86
    sget-object v0, Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->LIVE_OUT_AT_BLOCK:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@88
    iput-object v0, p0, Lcom/android/dx/ssa/back/LivenessAnalyzer;->nextFunction:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@8a
    invoke-direct {p0}, Lcom/android/dx/ssa/back/LivenessAnalyzer;->handleTailRecursion()V

    #@8d
    goto :goto_6a

    #@8e
    :cond_8e
    return-void
.end method
