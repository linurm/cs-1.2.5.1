.class public Lcom/android/dx/ssa/SCCP;
.super Ljava/lang/Object;


# static fields
.field private static final CONSTANT:I = 0x1

.field private static final TOP:I = 0x0

.field private static final VARYING:I = 0x2


# instance fields
.field private branchWorklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private cfgPhiWorklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation
.end field

.field private cfgWorklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation
.end field

.field private executableBlocks:Ljava/util/BitSet;

.field private latticeConstants:[Lcom/android/dx/rop/cst/Constant;

.field private latticeValues:[I

.field private regCount:I

.field private ssaMeth:Lcom/android/dx/ssa/SsaMethod;

.field private ssaWorklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private varyingWorklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/dx/ssa/SsaMethod;)V
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    iput-object p1, p0, Lcom/android/dx/ssa/SCCP;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@6
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Lcom/android/dx/ssa/SCCP;->regCount:I

    #@c
    iget v0, p0, Lcom/android/dx/ssa/SCCP;->regCount:I

    #@e
    new-array v0, v0, [I

    #@10
    iput-object v0, p0, Lcom/android/dx/ssa/SCCP;->latticeValues:[I

    #@12
    iget v0, p0, Lcom/android/dx/ssa/SCCP;->regCount:I

    #@14
    new-array v0, v0, [Lcom/android/dx/rop/cst/Constant;

    #@16
    iput-object v0, p0, Lcom/android/dx/ssa/SCCP;->latticeConstants:[Lcom/android/dx/rop/cst/Constant;

    #@18
    new-instance v0, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/dx/ssa/SCCP;->cfgWorklist:Ljava/util/ArrayList;

    #@1f
    new-instance v0, Ljava/util/ArrayList;

    #@21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@24
    iput-object v0, p0, Lcom/android/dx/ssa/SCCP;->cfgPhiWorklist:Ljava/util/ArrayList;

    #@26
    new-instance v0, Ljava/util/BitSet;

    #@28
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@2f
    move-result v2

    #@30
    invoke-direct {v0, v2}, Ljava/util/BitSet;-><init>(I)V

    #@33
    iput-object v0, p0, Lcom/android/dx/ssa/SCCP;->executableBlocks:Ljava/util/BitSet;

    #@35
    new-instance v0, Ljava/util/ArrayList;

    #@37
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@3a
    iput-object v0, p0, Lcom/android/dx/ssa/SCCP;->ssaWorklist:Ljava/util/ArrayList;

    #@3c
    new-instance v0, Ljava/util/ArrayList;

    #@3e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@41
    iput-object v0, p0, Lcom/android/dx/ssa/SCCP;->varyingWorklist:Ljava/util/ArrayList;

    #@43
    new-instance v0, Ljava/util/ArrayList;

    #@45
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@48
    iput-object v0, p0, Lcom/android/dx/ssa/SCCP;->branchWorklist:Ljava/util/ArrayList;

    #@4a
    move v0, v1

    #@4b
    :goto_4b
    iget v2, p0, Lcom/android/dx/ssa/SCCP;->regCount:I

    #@4d
    if-ge v0, v2, :cond_5b

    #@4f
    iget-object v2, p0, Lcom/android/dx/ssa/SCCP;->latticeValues:[I

    #@51
    aput v1, v2, v0

    #@53
    iget-object v2, p0, Lcom/android/dx/ssa/SCCP;->latticeConstants:[Lcom/android/dx/rop/cst/Constant;

    #@55
    const/4 v3, 0x0

    #@56
    aput-object v3, v2, v0

    #@58
    add-int/lit8 v0, v0, 0x1

    #@5a
    goto :goto_4b

    #@5b
    :cond_5b
    return-void
.end method

.method private addBlockToWorklist(Lcom/android/dx/ssa/SsaBasicBlock;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->executableBlocks:Ljava/util/BitSet;

    #@2
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@5
    move-result v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1b

    #@c
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->cfgWorklist:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@11
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->executableBlocks:Ljava/util/BitSet;

    #@13
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@16
    move-result v1

    #@17
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    #@1a
    :goto_1a
    return-void

    #@1b
    :cond_1b
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->cfgPhiWorklist:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@20
    goto :goto_1a
.end method

.method private addUsersToWorklist(II)V
    .registers 6

    #@0
    const/4 v0, 0x2

    #@1
    if-ne p2, v0, :cond_1f

    #@3
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_3b

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@19
    iget-object v2, p0, Lcom/android/dx/ssa/SCCP;->varyingWorklist:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1e
    goto :goto_d

    #@1f
    :cond_1f
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@21
    invoke-virtual {v0, p1}, Lcom/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    #@24
    move-result-object v0

    #@25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v1

    #@29
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_3b

    #@2f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@35
    iget-object v2, p0, Lcom/android/dx/ssa/SCCP;->ssaWorklist:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3a
    goto :goto_29

    #@3b
    :cond_3b
    return-void
.end method

.method private static latticeValName(I)Ljava/lang/String;
    .registers 2

    #@0
    packed-switch p0, :pswitch_data_10

    #@3
    const-string v0, "UNKNOWN"

    #@5
    :goto_5
    return-object v0

    #@6
    :pswitch_6
    const-string v0, "TOP"

    #@8
    goto :goto_5

    #@9
    :pswitch_9
    const-string v0, "CONSTANT"

    #@b
    goto :goto_5

    #@c
    :pswitch_c
    const-string v0, "VARYING"

    #@e
    goto :goto_5

    #@f
    nop

    #@10
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method public static process(Lcom/android/dx/ssa/SsaMethod;)V
    .registers 2

    #@0
    new-instance v0, Lcom/android/dx/ssa/SCCP;

    #@2
    invoke-direct {v0, p0}, Lcom/android/dx/ssa/SCCP;-><init>(Lcom/android/dx/ssa/SsaMethod;)V

    #@5
    invoke-direct {v0}, Lcom/android/dx/ssa/SCCP;->run()V

    #@8
    return-void
.end method

.method private replaceBranches()V
    .registers 10

    #@0
    const/4 v4, -0x1

    #@1
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->branchWorklist:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v5

    #@7
    :cond_7
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_59

    #@d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@13
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@16
    move-result-object v6

    #@17
    invoke-virtual {v6}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessorList()Lcom/android/dx/util/IntList;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Lcom/android/dx/util/IntList;->size()I

    #@1e
    move-result v7

    #@1f
    const/4 v1, 0x0

    #@20
    move v3, v1

    #@21
    move v2, v4

    #@22
    :goto_22
    if-ge v3, v7, :cond_39

    #@24
    invoke-virtual {v6}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessorList()Lcom/android/dx/util/IntList;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, v3}, Lcom/android/dx/util/IntList;->get(I)I

    #@2b
    move-result v1

    #@2c
    iget-object v8, p0, Lcom/android/dx/ssa/SCCP;->executableBlocks:Ljava/util/BitSet;

    #@2e
    invoke-virtual {v8, v1}, Ljava/util/BitSet;->get(I)Z

    #@31
    move-result v8

    #@32
    if-nez v8, :cond_57

    #@34
    :goto_34
    add-int/lit8 v2, v3, 0x1

    #@36
    move v3, v2

    #@37
    move v2, v1

    #@38
    goto :goto_22

    #@39
    :cond_39
    const/4 v1, 0x2

    #@3a
    if-ne v7, v1, :cond_7

    #@3c
    if-eq v2, v4, :cond_7

    #@3e
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    #@41
    move-result-object v0

    #@42
    new-instance v1, Lcom/android/dx/rop/code/PlainInsn;

    #@44
    sget-object v3, Lcom/android/dx/rop/code/Rops;->GOTO:Lcom/android/dx/rop/code/Rop;

    #@46
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Insn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@49
    move-result-object v0

    #@4a
    const/4 v7, 0x0

    #@4b
    sget-object v8, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    #@4d
    invoke-direct {v1, v3, v0, v7, v8}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@50
    invoke-virtual {v6, v1}, Lcom/android/dx/ssa/SsaBasicBlock;->replaceLastInsn(Lcom/android/dx/rop/code/Insn;)V

    #@53
    invoke-virtual {v6, v2}, Lcom/android/dx/ssa/SsaBasicBlock;->removeSuccessor(I)V

    #@56
    goto :goto_7

    #@57
    :cond_57
    move v1, v2

    #@58
    goto :goto_34

    #@59
    :cond_59
    return-void
.end method

.method private replaceConstants()V
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    move v2, v0

    #@2
    :goto_2
    iget v0, p0, Lcom/android/dx/ssa/SCCP;->regCount:I

    #@4
    if-ge v2, v0, :cond_77

    #@6
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->latticeValues:[I

    #@8
    aget v0, v0, v2

    #@a
    const/4 v1, 0x1

    #@b
    if-eq v0, v1, :cond_11

    #@d
    :cond_d
    add-int/lit8 v0, v2, 0x1

    #@f
    move v2, v0

    #@10
    goto :goto_2

    #@11
    :cond_11
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->latticeConstants:[Lcom/android/dx/rop/cst/Constant;

    #@13
    aget-object v0, v0, v2

    #@15
    instance-of v0, v0, Lcom/android/dx/rop/cst/TypedConstant;

    #@17
    if-eqz v0, :cond_d

    #@19
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@1b
    invoke-virtual {v0, v2}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    #@26
    move-result-object v0

    #@27
    invoke-interface {v0}, Lcom/android/dx/rop/type/TypeBearer;->isConstant()Z

    #@2a
    move-result v0

    #@2b
    if-nez v0, :cond_d

    #@2d
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@30
    move-result-object v3

    #@31
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->latticeConstants:[Lcom/android/dx/rop/cst/Constant;

    #@33
    aget-object v0, v0, v2

    #@35
    check-cast v0, Lcom/android/dx/rop/cst/TypedConstant;

    #@37
    invoke-virtual {v3, v0}, Lcom/android/dx/rop/code/RegisterSpec;->withType(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {v1, v0}, Lcom/android/dx/ssa/SsaInsn;->setResult(Lcom/android/dx/rop/code/RegisterSpec;)V

    #@3e
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@40
    invoke-virtual {v0, v2}, Lcom/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    #@43
    move-result-object v0

    #@44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@47
    move-result-object v3

    #@48
    :cond_48
    :goto_48
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@4b
    move-result v0

    #@4c
    if-eqz v0, :cond_d

    #@4e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@51
    move-result-object v0

    #@52
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@54
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->isPhiOrMove()Z

    #@57
    move-result v1

    #@58
    if-nez v1, :cond_48

    #@5a
    move-object v1, v0

    #@5b
    check-cast v1, Lcom/android/dx/ssa/NormalSsaInsn;

    #@5d
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@60
    move-result-object v0

    #@61
    invoke-virtual {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->indexOfRegister(I)I

    #@64
    move-result v4

    #@65
    invoke-virtual {v0, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@68
    move-result-object v5

    #@69
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->latticeConstants:[Lcom/android/dx/rop/cst/Constant;

    #@6b
    aget-object v0, v0, v2

    #@6d
    check-cast v0, Lcom/android/dx/rop/cst/TypedConstant;

    #@6f
    invoke-virtual {v5, v0}, Lcom/android/dx/rop/code/RegisterSpec;->withType(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    #@72
    move-result-object v0

    #@73
    invoke-virtual {v1, v4, v0}, Lcom/android/dx/ssa/NormalSsaInsn;->changeOneSource(ILcom/android/dx/rop/code/RegisterSpec;)V

    #@76
    goto :goto_48

    #@77
    :cond_77
    return-void
.end method

.method private run()V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getEntryBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/SCCP;->addBlockToWorklist(Lcom/android/dx/ssa/SsaBasicBlock;)V

    #@9
    :cond_9
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->cfgWorklist:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_29

    #@11
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->cfgPhiWorklist:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_29

    #@19
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->ssaWorklist:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_29

    #@21
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->varyingWorklist:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@26
    move-result v0

    #@27
    if-nez v0, :cond_cd

    #@29
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->cfgWorklist:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@2e
    move-result v0

    #@2f
    if-nez v0, :cond_45

    #@31
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->cfgWorklist:Ljava/util/ArrayList;

    #@33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@36
    move-result v0

    #@37
    iget-object v1, p0, Lcom/android/dx/ssa/SCCP;->cfgWorklist:Ljava/util/ArrayList;

    #@39
    add-int/lit8 v0, v0, -0x1

    #@3b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@41
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/SCCP;->simulateBlock(Lcom/android/dx/ssa/SsaBasicBlock;)V

    #@44
    goto :goto_29

    #@45
    :cond_45
    :goto_45
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->cfgPhiWorklist:Ljava/util/ArrayList;

    #@47
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@4a
    move-result v0

    #@4b
    if-nez v0, :cond_61

    #@4d
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->cfgPhiWorklist:Ljava/util/ArrayList;

    #@4f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@52
    move-result v0

    #@53
    iget-object v1, p0, Lcom/android/dx/ssa/SCCP;->cfgPhiWorklist:Ljava/util/ArrayList;

    #@55
    add-int/lit8 v0, v0, -0x1

    #@57
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@5a
    move-result-object v0

    #@5b
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@5d
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/SCCP;->simulatePhiBlock(Lcom/android/dx/ssa/SsaBasicBlock;)V

    #@60
    goto :goto_45

    #@61
    :cond_61
    :goto_61
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->varyingWorklist:Ljava/util/ArrayList;

    #@63
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@66
    move-result v0

    #@67
    if-nez v0, :cond_97

    #@69
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->varyingWorklist:Ljava/util/ArrayList;

    #@6b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@6e
    move-result v0

    #@6f
    iget-object v1, p0, Lcom/android/dx/ssa/SCCP;->varyingWorklist:Ljava/util/ArrayList;

    #@71
    add-int/lit8 v0, v0, -0x1

    #@73
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@76
    move-result-object v0

    #@77
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@79
    iget-object v1, p0, Lcom/android/dx/ssa/SCCP;->executableBlocks:Ljava/util/BitSet;

    #@7b
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@7e
    move-result-object v2

    #@7f
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@82
    move-result v2

    #@83
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    #@86
    move-result v1

    #@87
    if-eqz v1, :cond_61

    #@89
    instance-of v1, v0, Lcom/android/dx/ssa/PhiInsn;

    #@8b
    if-eqz v1, :cond_93

    #@8d
    check-cast v0, Lcom/android/dx/ssa/PhiInsn;

    #@8f
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/SCCP;->simulatePhi(Lcom/android/dx/ssa/PhiInsn;)V

    #@92
    goto :goto_61

    #@93
    :cond_93
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/SCCP;->simulateStmt(Lcom/android/dx/ssa/SsaInsn;)V

    #@96
    goto :goto_61

    #@97
    :cond_97
    :goto_97
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->ssaWorklist:Ljava/util/ArrayList;

    #@99
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@9c
    move-result v0

    #@9d
    if-nez v0, :cond_9

    #@9f
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->ssaWorklist:Ljava/util/ArrayList;

    #@a1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@a4
    move-result v0

    #@a5
    iget-object v1, p0, Lcom/android/dx/ssa/SCCP;->ssaWorklist:Ljava/util/ArrayList;

    #@a7
    add-int/lit8 v0, v0, -0x1

    #@a9
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@ac
    move-result-object v0

    #@ad
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@af
    iget-object v1, p0, Lcom/android/dx/ssa/SCCP;->executableBlocks:Ljava/util/BitSet;

    #@b1
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@b4
    move-result-object v2

    #@b5
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@b8
    move-result v2

    #@b9
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    #@bc
    move-result v1

    #@bd
    if-eqz v1, :cond_97

    #@bf
    instance-of v1, v0, Lcom/android/dx/ssa/PhiInsn;

    #@c1
    if-eqz v1, :cond_c9

    #@c3
    check-cast v0, Lcom/android/dx/ssa/PhiInsn;

    #@c5
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/SCCP;->simulatePhi(Lcom/android/dx/ssa/PhiInsn;)V

    #@c8
    goto :goto_97

    #@c9
    :cond_c9
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/SCCP;->simulateStmt(Lcom/android/dx/ssa/SsaInsn;)V

    #@cc
    goto :goto_97

    #@cd
    :cond_cd
    invoke-direct {p0}, Lcom/android/dx/ssa/SCCP;->replaceConstants()V

    #@d0
    invoke-direct {p0}, Lcom/android/dx/ssa/SCCP;->replaceBranches()V

    #@d3
    return-void
.end method

.method private setLatticeValueTo(IILcom/android/dx/rop/cst/Constant;)Z
    .registers 7

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    if-eq p2, v0, :cond_11

    #@4
    iget-object v2, p0, Lcom/android/dx/ssa/SCCP;->latticeValues:[I

    #@6
    aget v2, v2, p1

    #@8
    if-eq v2, p2, :cond_f

    #@a
    iget-object v1, p0, Lcom/android/dx/ssa/SCCP;->latticeValues:[I

    #@c
    aput p2, v1, p1

    #@e
    :goto_e
    return v0

    #@f
    :cond_f
    move v0, v1

    #@10
    goto :goto_e

    #@11
    :cond_11
    iget-object v2, p0, Lcom/android/dx/ssa/SCCP;->latticeValues:[I

    #@13
    aget v2, v2, p1

    #@15
    if-ne v2, p2, :cond_21

    #@17
    iget-object v2, p0, Lcom/android/dx/ssa/SCCP;->latticeConstants:[Lcom/android/dx/rop/cst/Constant;

    #@19
    aget-object v2, v2, p1

    #@1b
    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    if-nez v2, :cond_2a

    #@21
    :cond_21
    iget-object v1, p0, Lcom/android/dx/ssa/SCCP;->latticeValues:[I

    #@23
    aput p2, v1, p1

    #@25
    iget-object v1, p0, Lcom/android/dx/ssa/SCCP;->latticeConstants:[Lcom/android/dx/rop/cst/Constant;

    #@27
    aput-object p3, v1, p1

    #@29
    goto :goto_e

    #@2a
    :cond_2a
    move v0, v1

    #@2b
    goto :goto_e
.end method

.method private simulateBlock(Lcom/android/dx/ssa/SsaBasicBlock;)V
    .registers 5

    #@0
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_22

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@14
    instance-of v2, v0, Lcom/android/dx/ssa/PhiInsn;

    #@16
    if-eqz v2, :cond_1e

    #@18
    check-cast v0, Lcom/android/dx/ssa/PhiInsn;

    #@1a
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/SCCP;->simulatePhi(Lcom/android/dx/ssa/PhiInsn;)V

    #@1d
    goto :goto_8

    #@1e
    :cond_1e
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/SCCP;->simulateStmt(Lcom/android/dx/ssa/SsaInsn;)V

    #@21
    goto :goto_8

    #@22
    :cond_22
    return-void
.end method

.method private simulateBranch(Lcom/android/dx/ssa/SsaInsn;)V
    .registers 11

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x1

    #@3
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@6
    move-result-object v5

    #@7
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@a
    move-result-object v6

    #@b
    invoke-virtual {v5}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    #@e
    move-result v1

    #@f
    const/4 v2, 0x4

    #@10
    if-ne v1, v2, :cond_5f

    #@12
    invoke-virtual {v6, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@19
    move-result v2

    #@1a
    iget-object v7, p0, Lcom/android/dx/ssa/SCCP;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@1c
    invoke-virtual {v7, v1}, Lcom/android/dx/ssa/SsaMethod;->isRegALocal(Lcom/android/dx/rop/code/RegisterSpec;)Z

    #@1f
    move-result v1

    #@20
    if-nez v1, :cond_15d

    #@22
    iget-object v1, p0, Lcom/android/dx/ssa/SCCP;->latticeValues:[I

    #@24
    aget v1, v1, v2

    #@26
    if-ne v1, v3, :cond_15d

    #@28
    iget-object v1, p0, Lcom/android/dx/ssa/SCCP;->latticeConstants:[Lcom/android/dx/rop/cst/Constant;

    #@2a
    aget-object v1, v1, v2

    #@2c
    :goto_2c
    invoke-virtual {v6}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@2f
    move-result v2

    #@30
    const/4 v7, 0x2

    #@31
    if-ne v2, v7, :cond_15a

    #@33
    invoke-virtual {v6, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@3a
    move-result v7

    #@3b
    iget-object v8, p0, Lcom/android/dx/ssa/SCCP;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@3d
    invoke-virtual {v8, v2}, Lcom/android/dx/ssa/SsaMethod;->isRegALocal(Lcom/android/dx/rop/code/RegisterSpec;)Z

    #@40
    move-result v2

    #@41
    if-nez v2, :cond_15a

    #@43
    iget-object v2, p0, Lcom/android/dx/ssa/SCCP;->latticeValues:[I

    #@45
    aget v2, v2, v7

    #@47
    if-ne v2, v3, :cond_15a

    #@49
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->latticeConstants:[Lcom/android/dx/rop/cst/Constant;

    #@4b
    aget-object v2, v0, v7

    #@4d
    :goto_4d
    if-eqz v1, :cond_cb

    #@4f
    invoke-virtual {v6}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@52
    move-result v0

    #@53
    if-ne v0, v3, :cond_cb

    #@55
    move-object v0, v1

    #@56
    check-cast v0, Lcom/android/dx/rop/cst/TypedConstant;

    #@58
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/TypedConstant;->getBasicType()I

    #@5b
    move-result v0

    #@5c
    packed-switch v0, :pswitch_data_160

    #@5f
    :cond_5f
    :goto_5f
    move v0, v4

    #@60
    move v1, v4

    #@61
    :goto_61
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@64
    move-result-object v2

    #@65
    if-eqz v0, :cond_136

    #@67
    if-eqz v1, :cond_12c

    #@69
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessorList()Lcom/android/dx/util/IntList;

    #@6c
    move-result-object v0

    #@6d
    invoke-virtual {v0, v3}, Lcom/android/dx/util/IntList;->get(I)I

    #@70
    move-result v0

    #@71
    :goto_71
    iget-object v1, p0, Lcom/android/dx/ssa/SCCP;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@73
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@76
    move-result-object v1

    #@77
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7a
    move-result-object v0

    #@7b
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@7d
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/SCCP;->addBlockToWorklist(Lcom/android/dx/ssa/SsaBasicBlock;)V

    #@80
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->branchWorklist:Ljava/util/ArrayList;

    #@82
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@85
    :cond_85
    return-void

    #@86
    :pswitch_86
    check-cast v1, Lcom/android/dx/rop/cst/CstInteger;

    #@88
    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    #@8b
    move-result v0

    #@8c
    invoke-virtual {v5}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    #@8f
    move-result v1

    #@90
    packed-switch v1, :pswitch_data_166

    #@93
    new-instance v0, Ljava/lang/RuntimeException;

    #@95
    const-string v1, "Unexpected op"

    #@97
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@9a
    throw v0

    #@9b
    :pswitch_9b
    if-nez v0, :cond_a1

    #@9d
    move v0, v3

    #@9e
    :goto_9e
    move v1, v0

    #@9f
    move v0, v3

    #@a0
    goto :goto_61

    #@a1
    :cond_a1
    move v0, v4

    #@a2
    goto :goto_9e

    #@a3
    :pswitch_a3
    if-eqz v0, :cond_a9

    #@a5
    move v0, v3

    #@a6
    :goto_a6
    move v1, v0

    #@a7
    move v0, v3

    #@a8
    goto :goto_61

    #@a9
    :cond_a9
    move v0, v4

    #@aa
    goto :goto_a6

    #@ab
    :pswitch_ab
    if-gez v0, :cond_b1

    #@ad
    move v0, v3

    #@ae
    :goto_ae
    move v1, v0

    #@af
    move v0, v3

    #@b0
    goto :goto_61

    #@b1
    :cond_b1
    move v0, v4

    #@b2
    goto :goto_ae

    #@b3
    :pswitch_b3
    if-ltz v0, :cond_b9

    #@b5
    move v0, v3

    #@b6
    :goto_b6
    move v1, v0

    #@b7
    move v0, v3

    #@b8
    goto :goto_61

    #@b9
    :cond_b9
    move v0, v4

    #@ba
    goto :goto_b6

    #@bb
    :pswitch_bb
    if-gtz v0, :cond_c1

    #@bd
    move v0, v3

    #@be
    :goto_be
    move v1, v0

    #@bf
    move v0, v3

    #@c0
    goto :goto_61

    #@c1
    :cond_c1
    move v0, v4

    #@c2
    goto :goto_be

    #@c3
    :pswitch_c3
    if-lez v0, :cond_c9

    #@c5
    move v0, v3

    #@c6
    :goto_c6
    move v1, v0

    #@c7
    move v0, v3

    #@c8
    goto :goto_61

    #@c9
    :cond_c9
    move v0, v4

    #@ca
    goto :goto_c6

    #@cb
    :cond_cb
    if-eqz v1, :cond_5f

    #@cd
    if-eqz v2, :cond_5f

    #@cf
    move-object v0, v1

    #@d0
    check-cast v0, Lcom/android/dx/rop/cst/TypedConstant;

    #@d2
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/TypedConstant;->getBasicType()I

    #@d5
    move-result v0

    #@d6
    packed-switch v0, :pswitch_data_176

    #@d9
    goto :goto_5f

    #@da
    :pswitch_da
    check-cast v1, Lcom/android/dx/rop/cst/CstInteger;

    #@dc
    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    #@df
    move-result v1

    #@e0
    move-object v0, v2

    #@e1
    check-cast v0, Lcom/android/dx/rop/cst/CstInteger;

    #@e3
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    #@e6
    move-result v0

    #@e7
    invoke-virtual {v5}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    #@ea
    move-result v2

    #@eb
    packed-switch v2, :pswitch_data_17c

    #@ee
    new-instance v0, Ljava/lang/RuntimeException;

    #@f0
    const-string v1, "Unexpected op"

    #@f2
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@f5
    throw v0

    #@f6
    :pswitch_f6
    if-ne v1, v0, :cond_fd

    #@f8
    move v0, v3

    #@f9
    :goto_f9
    move v1, v0

    #@fa
    move v0, v3

    #@fb
    goto/16 :goto_61

    #@fd
    :cond_fd
    move v0, v4

    #@fe
    goto :goto_f9

    #@ff
    :pswitch_ff
    if-eq v1, v0, :cond_106

    #@101
    move v0, v3

    #@102
    :goto_102
    move v1, v0

    #@103
    move v0, v3

    #@104
    goto/16 :goto_61

    #@106
    :cond_106
    move v0, v4

    #@107
    goto :goto_102

    #@108
    :pswitch_108
    if-ge v1, v0, :cond_10f

    #@10a
    move v0, v3

    #@10b
    :goto_10b
    move v1, v0

    #@10c
    move v0, v3

    #@10d
    goto/16 :goto_61

    #@10f
    :cond_10f
    move v0, v4

    #@110
    goto :goto_10b

    #@111
    :pswitch_111
    if-lt v1, v0, :cond_118

    #@113
    move v0, v3

    #@114
    :goto_114
    move v1, v0

    #@115
    move v0, v3

    #@116
    goto/16 :goto_61

    #@118
    :cond_118
    move v0, v4

    #@119
    goto :goto_114

    #@11a
    :pswitch_11a
    if-gt v1, v0, :cond_121

    #@11c
    move v0, v3

    #@11d
    :goto_11d
    move v1, v0

    #@11e
    move v0, v3

    #@11f
    goto/16 :goto_61

    #@121
    :cond_121
    move v0, v4

    #@122
    goto :goto_11d

    #@123
    :pswitch_123
    if-le v1, v0, :cond_12a

    #@125
    move v0, v3

    #@126
    :goto_126
    move v1, v0

    #@127
    move v0, v3

    #@128
    goto/16 :goto_61

    #@12a
    :cond_12a
    move v0, v4

    #@12b
    goto :goto_126

    #@12c
    :cond_12c
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessorList()Lcom/android/dx/util/IntList;

    #@12f
    move-result-object v0

    #@130
    invoke-virtual {v0, v4}, Lcom/android/dx/util/IntList;->get(I)I

    #@133
    move-result v0

    #@134
    goto/16 :goto_71

    #@136
    :cond_136
    :goto_136
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessorList()Lcom/android/dx/util/IntList;

    #@139
    move-result-object v0

    #@13a
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    #@13d
    move-result v0

    #@13e
    if-ge v4, v0, :cond_85

    #@140
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessorList()Lcom/android/dx/util/IntList;

    #@143
    move-result-object v0

    #@144
    invoke-virtual {v0, v4}, Lcom/android/dx/util/IntList;->get(I)I

    #@147
    move-result v0

    #@148
    iget-object v1, p0, Lcom/android/dx/ssa/SCCP;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@14a
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@14d
    move-result-object v1

    #@14e
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@151
    move-result-object v0

    #@152
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@154
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/SCCP;->addBlockToWorklist(Lcom/android/dx/ssa/SsaBasicBlock;)V

    #@157
    add-int/lit8 v4, v4, 0x1

    #@159
    goto :goto_136

    #@15a
    :cond_15a
    move-object v2, v0

    #@15b
    goto/16 :goto_4d

    #@15d
    :cond_15d
    move-object v1, v0

    #@15e
    goto/16 :goto_2c

    #@160
    :pswitch_data_160
    .packed-switch 0x6
        :pswitch_86
    .end packed-switch

    #@166
    :pswitch_data_166
    .packed-switch 0x7
        :pswitch_9b
        :pswitch_a3
        :pswitch_ab
        :pswitch_b3
        :pswitch_bb
        :pswitch_c3
    .end packed-switch

    #@176
    :pswitch_data_176
    .packed-switch 0x6
        :pswitch_da
    .end packed-switch

    #@17c
    :pswitch_data_17c
    .packed-switch 0x7
        :pswitch_f6
        :pswitch_ff
        :pswitch_108
        :pswitch_111
        :pswitch_11a
        :pswitch_123
    .end packed-switch
.end method

.method private simulateMath(Lcom/android/dx/ssa/SsaInsn;I)Lcom/android/dx/rop/cst/Constant;
    .registers 11

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    #@e
    move-result v6

    #@f
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@12
    move-result-object v7

    #@13
    invoke-virtual {v7, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@1a
    move-result v1

    #@1b
    iget-object v2, p0, Lcom/android/dx/ssa/SCCP;->latticeValues:[I

    #@1d
    aget v2, v2, v1

    #@1f
    if-eq v2, v5, :cond_33

    #@21
    move-object v1, v3

    #@22
    :goto_22
    invoke-virtual {v7}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@25
    move-result v2

    #@26
    if-ne v2, v5, :cond_38

    #@28
    check-cast v0, Lcom/android/dx/rop/code/CstInsn;

    #@2a
    invoke-virtual {v0}, Lcom/android/dx/rop/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    #@2d
    move-result-object v2

    #@2e
    :goto_2e
    if-eqz v1, :cond_32

    #@30
    if-nez v2, :cond_4d

    #@32
    :cond_32
    :goto_32
    return-object v3

    #@33
    :cond_33
    iget-object v2, p0, Lcom/android/dx/ssa/SCCP;->latticeConstants:[Lcom/android/dx/rop/cst/Constant;

    #@35
    aget-object v1, v2, v1

    #@37
    goto :goto_22

    #@38
    :cond_38
    invoke-virtual {v7, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@3f
    move-result v0

    #@40
    iget-object v2, p0, Lcom/android/dx/ssa/SCCP;->latticeValues:[I

    #@42
    aget v2, v2, v0

    #@44
    if-eq v2, v5, :cond_48

    #@46
    move-object v2, v3

    #@47
    goto :goto_2e

    #@48
    :cond_48
    iget-object v2, p0, Lcom/android/dx/ssa/SCCP;->latticeConstants:[Lcom/android/dx/rop/cst/Constant;

    #@4a
    aget-object v2, v2, v0

    #@4c
    goto :goto_2e

    #@4d
    :cond_4d
    packed-switch p2, :pswitch_data_9e

    #@50
    goto :goto_32

    #@51
    :pswitch_51
    move-object v0, v1

    #@52
    check-cast v0, Lcom/android/dx/rop/cst/CstInteger;

    #@54
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    #@57
    move-result v1

    #@58
    move-object v0, v2

    #@59
    check-cast v0, Lcom/android/dx/rop/cst/CstInteger;

    #@5b
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    #@5e
    move-result v0

    #@5f
    packed-switch v6, :pswitch_data_a4

    #@62
    :pswitch_62
    new-instance v0, Ljava/lang/RuntimeException;

    #@64
    const-string v1, "Unexpected op"

    #@66
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@69
    throw v0

    #@6a
    :pswitch_6a
    add-int/2addr v0, v1

    #@6b
    :goto_6b
    if-nez v4, :cond_32

    #@6d
    invoke-static {v0}, Lcom/android/dx/rop/cst/CstInteger;->make(I)Lcom/android/dx/rop/cst/CstInteger;

    #@70
    move-result-object v3

    #@71
    goto :goto_32

    #@72
    :pswitch_72
    invoke-virtual {v7}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@75
    move-result v2

    #@76
    if-ne v2, v5, :cond_7a

    #@78
    sub-int/2addr v0, v1

    #@79
    goto :goto_6b

    #@7a
    :cond_7a
    sub-int v0, v1, v0

    #@7c
    goto :goto_6b

    #@7d
    :pswitch_7d
    mul-int/2addr v0, v1

    #@7e
    goto :goto_6b

    #@7f
    :pswitch_7f
    if-nez v0, :cond_84

    #@81
    move v0, v4

    #@82
    move v4, v5

    #@83
    goto :goto_6b

    #@84
    :cond_84
    div-int v0, v1, v0

    #@86
    goto :goto_6b

    #@87
    :pswitch_87
    and-int/2addr v0, v1

    #@88
    goto :goto_6b

    #@89
    :pswitch_89
    or-int/2addr v0, v1

    #@8a
    goto :goto_6b

    #@8b
    :pswitch_8b
    xor-int/2addr v0, v1

    #@8c
    goto :goto_6b

    #@8d
    :pswitch_8d
    shl-int v0, v1, v0

    #@8f
    goto :goto_6b

    #@90
    :pswitch_90
    shr-int v0, v1, v0

    #@92
    goto :goto_6b

    #@93
    :pswitch_93
    ushr-int v0, v1, v0

    #@95
    goto :goto_6b

    #@96
    :pswitch_96
    if-nez v0, :cond_9b

    #@98
    move v0, v4

    #@99
    move v4, v5

    #@9a
    goto :goto_6b

    #@9b
    :cond_9b
    rem-int v0, v1, v0

    #@9d
    goto :goto_6b

    #@9e
    :pswitch_data_9e
    .packed-switch 0x6
        :pswitch_51
    .end packed-switch

    #@a4
    :pswitch_data_a4
    .packed-switch 0xe
        :pswitch_6a
        :pswitch_72
        :pswitch_7d
        :pswitch_7f
        :pswitch_96
        :pswitch_62
        :pswitch_87
        :pswitch_89
        :pswitch_8b
        :pswitch_8d
        :pswitch_90
        :pswitch_93
    .end packed-switch
.end method

.method private simulatePhi(Lcom/android/dx/ssa/PhiInsn;)V
    .registers 14

    #@0
    const/4 v3, 0x2

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p1}, Lcom/android/dx/ssa/PhiInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@a
    move-result v6

    #@b
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->latticeValues:[I

    #@d
    aget v0, v0, v6

    #@f
    if-ne v0, v3, :cond_12

    #@11
    :cond_11
    :goto_11
    return-void

    #@12
    :cond_12
    invoke-virtual {p1}, Lcom/android/dx/ssa/PhiInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@15
    move-result-object v7

    #@16
    invoke-virtual {v7}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@19
    move-result v8

    #@1a
    const/4 v0, 0x0

    #@1b
    move v5, v1

    #@1c
    :goto_1c
    if-ge v5, v8, :cond_4f

    #@1e
    invoke-virtual {p1, v5}, Lcom/android/dx/ssa/PhiInsn;->predBlockIndexForSourcesIndex(I)I

    #@21
    move-result v9

    #@22
    invoke-virtual {v7, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@29
    move-result v10

    #@2a
    iget-object v4, p0, Lcom/android/dx/ssa/SCCP;->latticeValues:[I

    #@2c
    aget v4, v4, v10

    #@2e
    iget-object v11, p0, Lcom/android/dx/ssa/SCCP;->executableBlocks:Ljava/util/BitSet;

    #@30
    invoke-virtual {v11, v9}, Ljava/util/BitSet;->get(I)Z

    #@33
    move-result v9

    #@34
    if-nez v9, :cond_3a

    #@36
    :cond_36
    :goto_36
    add-int/lit8 v4, v5, 0x1

    #@38
    move v5, v4

    #@39
    goto :goto_1c

    #@3a
    :cond_3a
    if-ne v4, v2, :cond_59

    #@3c
    if-nez v0, :cond_44

    #@3e
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->latticeConstants:[Lcom/android/dx/rop/cst/Constant;

    #@40
    aget-object v0, v0, v10

    #@42
    move v1, v2

    #@43
    goto :goto_36

    #@44
    :cond_44
    iget-object v4, p0, Lcom/android/dx/ssa/SCCP;->latticeConstants:[Lcom/android/dx/rop/cst/Constant;

    #@46
    aget-object v4, v4, v10

    #@48
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v4

    #@4c
    if-nez v4, :cond_36

    #@4e
    move v1, v3

    #@4f
    :cond_4f
    :goto_4f
    invoke-direct {p0, v6, v1, v0}, Lcom/android/dx/ssa/SCCP;->setLatticeValueTo(IILcom/android/dx/rop/cst/Constant;)Z

    #@52
    move-result v0

    #@53
    if-eqz v0, :cond_11

    #@55
    invoke-direct {p0, v6, v1}, Lcom/android/dx/ssa/SCCP;->addUsersToWorklist(II)V

    #@58
    goto :goto_11

    #@59
    :cond_59
    move v1, v4

    #@5a
    goto :goto_4f
.end method

.method private simulatePhiBlock(Lcom/android/dx/ssa/SsaBasicBlock;)V
    .registers 5

    #@0
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1e

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@14
    instance-of v2, v0, Lcom/android/dx/ssa/PhiInsn;

    #@16
    if-eqz v2, :cond_1e

    #@18
    check-cast v0, Lcom/android/dx/ssa/PhiInsn;

    #@1a
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/SCCP;->simulatePhi(Lcom/android/dx/ssa/PhiInsn;)V

    #@1d
    goto :goto_8

    #@1e
    :cond_1e
    return-void
.end method

.method private simulateStmt(Lcom/android/dx/ssa/SsaInsn;)V
    .registers 9

    #@0
    const/4 v2, 0x2

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v3, 0x1

    #@3
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    #@e
    move-result v0

    #@f
    if-ne v0, v3, :cond_1b

    #@11
    invoke-virtual {v1}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->isCallLike()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_1e

    #@1b
    :cond_1b
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/SCCP;->simulateBranch(Lcom/android/dx/ssa/SsaInsn;)V

    #@1e
    :cond_1e
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    #@25
    move-result v4

    #@26
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@29
    move-result-object v0

    #@2a
    if-nez v0, :cond_4a

    #@2c
    const/16 v0, 0x11

    #@2e
    if-eq v4, v0, :cond_34

    #@30
    const/16 v0, 0x12

    #@32
    if-ne v4, v0, :cond_5d

    #@34
    :cond_34
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessor()Lcom/android/dx/ssa/SsaBasicBlock;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@43
    move-result-object v0

    #@44
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@46
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@49
    move-result-object v0

    #@4a
    :cond_4a
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@4d
    move-result v5

    #@4e
    sparse-switch v4, :sswitch_data_a6

    #@51
    :cond_51
    const/4 v0, 0x0

    #@52
    move-object v1, v0

    #@53
    move v0, v2

    #@54
    :goto_54
    invoke-direct {p0, v5, v0, v1}, Lcom/android/dx/ssa/SCCP;->setLatticeValueTo(IILcom/android/dx/rop/cst/Constant;)Z

    #@57
    move-result v1

    #@58
    if-eqz v1, :cond_5d

    #@5a
    invoke-direct {p0, v5, v0}, Lcom/android/dx/ssa/SCCP;->addUsersToWorklist(II)V

    #@5d
    :cond_5d
    return-void

    #@5e
    :sswitch_5e
    move-object v0, v1

    #@5f
    check-cast v0, Lcom/android/dx/rop/code/CstInsn;

    #@61
    invoke-virtual {v0}, Lcom/android/dx/rop/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    #@64
    move-result-object v0

    #@65
    move-object v1, v0

    #@66
    move v0, v3

    #@67
    goto :goto_54

    #@68
    :sswitch_68
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@6b
    move-result-object v0

    #@6c
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@6f
    move-result v0

    #@70
    if-ne v0, v3, :cond_51

    #@72
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@75
    move-result-object v0

    #@76
    invoke-virtual {v0, v6}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@79
    move-result-object v0

    #@7a
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@7d
    move-result v1

    #@7e
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->latticeValues:[I

    #@80
    aget v0, v0, v1

    #@82
    iget-object v2, p0, Lcom/android/dx/ssa/SCCP;->latticeConstants:[Lcom/android/dx/rop/cst/Constant;

    #@84
    aget-object v1, v2, v1

    #@86
    goto :goto_54

    #@87
    :sswitch_87
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getBasicType()I

    #@8a
    move-result v0

    #@8b
    invoke-direct {p0, p1, v0}, Lcom/android/dx/ssa/SCCP;->simulateMath(Lcom/android/dx/ssa/SsaInsn;I)Lcom/android/dx/rop/cst/Constant;

    #@8e
    move-result-object v0

    #@8f
    if-eqz v0, :cond_a3

    #@91
    move-object v1, v0

    #@92
    move v0, v3

    #@93
    goto :goto_54

    #@94
    :sswitch_94
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->latticeValues:[I

    #@96
    aget v0, v0, v5

    #@98
    if-ne v0, v3, :cond_51

    #@9a
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->latticeValues:[I

    #@9c
    aget v0, v0, v5

    #@9e
    iget-object v1, p0, Lcom/android/dx/ssa/SCCP;->latticeConstants:[Lcom/android/dx/rop/cst/Constant;

    #@a0
    aget-object v1, v1, v5

    #@a2
    goto :goto_54

    #@a3
    :cond_a3
    move-object v1, v0

    #@a4
    move v0, v2

    #@a5
    goto :goto_54

    #@a6
    :sswitch_data_a6
    .sparse-switch
        0x2 -> :sswitch_68
        0x5 -> :sswitch_5e
        0xe -> :sswitch_87
        0xf -> :sswitch_87
        0x10 -> :sswitch_87
        0x11 -> :sswitch_87
        0x12 -> :sswitch_87
        0x14 -> :sswitch_87
        0x15 -> :sswitch_87
        0x16 -> :sswitch_87
        0x17 -> :sswitch_87
        0x18 -> :sswitch_87
        0x19 -> :sswitch_87
        0x38 -> :sswitch_94
    .end sparse-switch
.end method
