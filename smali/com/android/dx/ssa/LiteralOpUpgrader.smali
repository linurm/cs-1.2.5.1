.class public Lcom/android/dx/ssa/LiteralOpUpgrader;
.super Ljava/lang/Object;


# instance fields
.field private final ssaMeth:Lcom/android/dx/ssa/SsaMethod;


# direct methods
.method private constructor <init>(Lcom/android/dx/ssa/SsaMethod;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/android/dx/ssa/LiteralOpUpgrader;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@5
    return-void
.end method

.method static synthetic access$000(Lcom/android/dx/ssa/LiteralOpUpgrader;Lcom/android/dx/ssa/NormalSsaInsn;)Z
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/LiteralOpUpgrader;->tryReplacingWithConstant(Lcom/android/dx/ssa/NormalSsaInsn;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$100(Lcom/android/dx/rop/code/RegisterSpec;)Z
    .registers 2

    #@0
    invoke-static {p0}, Lcom/android/dx/ssa/LiteralOpUpgrader;->isConstIntZeroOrKnownNull(Lcom/android/dx/rop/code/RegisterSpec;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$200(Lcom/android/dx/ssa/LiteralOpUpgrader;Lcom/android/dx/ssa/NormalSsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;ILcom/android/dx/rop/cst/Constant;)V
    .registers 5

    #@0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/dx/ssa/LiteralOpUpgrader;->replacePlainInsn(Lcom/android/dx/ssa/NormalSsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;ILcom/android/dx/rop/cst/Constant;)V

    #@3
    return-void
.end method

.method private static isConstIntZeroOrKnownNull(Lcom/android/dx/rop/code/RegisterSpec;)Z
    .registers 7

    #@0
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    #@4
    move-result-object v0

    #@5
    instance-of v2, v0, Lcom/android/dx/rop/cst/CstLiteralBits;

    #@7
    if-eqz v2, :cond_19

    #@9
    check-cast v0, Lcom/android/dx/rop/cst/CstLiteralBits;

    #@b
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstLiteralBits;->getLongBits()J

    #@e
    move-result-wide v2

    #@f
    const-wide/16 v4, 0x0

    #@11
    cmp-long v0, v2, v4

    #@13
    if-nez v0, :cond_17

    #@15
    const/4 v0, 0x1

    #@16
    :goto_16
    return v0

    #@17
    :cond_17
    move v0, v1

    #@18
    goto :goto_16

    #@19
    :cond_19
    move v0, v1

    #@1a
    goto :goto_16
.end method

.method public static process(Lcom/android/dx/ssa/SsaMethod;)V
    .registers 2

    #@0
    new-instance v0, Lcom/android/dx/ssa/LiteralOpUpgrader;

    #@2
    invoke-direct {v0, p0}, Lcom/android/dx/ssa/LiteralOpUpgrader;-><init>(Lcom/android/dx/ssa/SsaMethod;)V

    #@5
    invoke-direct {v0}, Lcom/android/dx/ssa/LiteralOpUpgrader;->run()V

    #@8
    return-void
.end method

.method private replacePlainInsn(Lcom/android/dx/ssa/NormalSsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;ILcom/android/dx/rop/cst/Constant;)V
    .registers 11

    #@0
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@7
    move-result-object v0

    #@8
    invoke-static {p3, v0, p2, p4}, Lcom/android/dx/rop/code/Rops;->ropFor(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/rop/code/Rop;

    #@b
    move-result-object v1

    #@c
    if-nez p4, :cond_3e

    #@e
    new-instance v0, Lcom/android/dx/rop/code/PlainInsn;

    #@10
    invoke-virtual {v2}, Lcom/android/dx/rop/code/Insn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@17
    move-result-object v3

    #@18
    invoke-direct {v0, v1, v2, v3, p2}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@1b
    :goto_1b
    new-instance v1, Lcom/android/dx/ssa/NormalSsaInsn;

    #@1d
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@20
    move-result-object v2

    #@21
    invoke-direct {v1, v0, v2}, Lcom/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/ssa/SsaBasicBlock;)V

    #@24
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@2b
    move-result-object v0

    #@2c
    iget-object v2, p0, Lcom/android/dx/ssa/LiteralOpUpgrader;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@2e
    invoke-virtual {v2, p1}, Lcom/android/dx/ssa/SsaMethod;->onInsnRemoved(Lcom/android/dx/ssa/SsaInsn;)V

    #@31
    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    #@34
    move-result v2

    #@35
    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@38
    iget-object v0, p0, Lcom/android/dx/ssa/LiteralOpUpgrader;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@3a
    invoke-virtual {v0, v1}, Lcom/android/dx/ssa/SsaMethod;->onInsnAdded(Lcom/android/dx/ssa/SsaInsn;)V

    #@3d
    return-void

    #@3e
    :cond_3e
    new-instance v0, Lcom/android/dx/rop/code/PlainCstInsn;

    #@40
    invoke-virtual {v2}, Lcom/android/dx/rop/code/Insn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@47
    move-result-object v3

    #@48
    move-object v4, p2

    #@49
    move-object v5, p4

    #@4a
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V

    #@4d
    goto :goto_1b
.end method

.method private run()V
    .registers 4

    #@0
    invoke-static {}, Lcom/android/dx/ssa/Optimizer;->getAdvice()Lcom/android/dx/rop/code/TranslationAdvice;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/dx/ssa/LiteralOpUpgrader;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@6
    new-instance v2, Lcom/android/dx/ssa/LiteralOpUpgrader$1;

    #@8
    invoke-direct {v2, p0, v0}, Lcom/android/dx/ssa/LiteralOpUpgrader$1;-><init>(Lcom/android/dx/ssa/LiteralOpUpgrader;Lcom/android/dx/rop/code/TranslationAdvice;)V

    #@b
    invoke-virtual {v1, v2}, Lcom/android/dx/ssa/SsaMethod;->forEachInsn(Lcom/android/dx/ssa/SsaInsn$Visitor;)V

    #@e
    return-void
.end method

.method private tryReplacingWithConstant(Lcom/android/dx/ssa/NormalSsaInsn;)Z
    .registers 8

    #@0
    const/4 v5, 0x6

    #@1
    const/4 v4, 0x5

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@e
    move-result-object v0

    #@f
    if-eqz v0, :cond_72

    #@11
    iget-object v3, p0, Lcom/android/dx/ssa/LiteralOpUpgrader;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@13
    invoke-virtual {v3, v0}, Lcom/android/dx/ssa/SsaMethod;->isRegALocal(Lcom/android/dx/rop/code/RegisterSpec;)Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_72

    #@19
    invoke-virtual {v2}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    #@1c
    move-result v0

    #@1d
    if-eq v0, v4, :cond_72

    #@1f
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    #@26
    move-result-object v0

    #@27
    invoke-interface {v0}, Lcom/android/dx/rop/type/TypeBearer;->isConstant()Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_72

    #@2d
    invoke-interface {v0}, Lcom/android/dx/rop/type/TypeBearer;->getBasicType()I

    #@30
    move-result v3

    #@31
    if-ne v3, v5, :cond_72

    #@33
    sget-object v3, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    #@35
    check-cast v0, Lcom/android/dx/rop/cst/Constant;

    #@37
    invoke-direct {p0, p1, v3, v4, v0}, Lcom/android/dx/ssa/LiteralOpUpgrader;->replacePlainInsn(Lcom/android/dx/ssa/NormalSsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;ILcom/android/dx/rop/cst/Constant;)V

    #@3a
    invoke-virtual {v2}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    #@3d
    move-result v0

    #@3e
    const/16 v2, 0x38

    #@40
    if-ne v0, v2, :cond_70

    #@42
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    #@4d
    move-result v0

    #@4e
    iget-object v1, p0, Lcom/android/dx/ssa/LiteralOpUpgrader;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@50
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@57
    move-result-object v0

    #@58
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@5a
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@5d
    move-result-object v0

    #@5e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@61
    move-result v1

    #@62
    add-int/lit8 v1, v1, -0x1

    #@64
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@67
    move-result-object v0

    #@68
    check-cast v0, Lcom/android/dx/ssa/NormalSsaInsn;

    #@6a
    sget-object v1, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    #@6c
    const/4 v2, 0x0

    #@6d
    invoke-direct {p0, v0, v1, v5, v2}, Lcom/android/dx/ssa/LiteralOpUpgrader;->replacePlainInsn(Lcom/android/dx/ssa/NormalSsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;ILcom/android/dx/rop/cst/Constant;)V

    #@70
    :cond_70
    const/4 v0, 0x1

    #@71
    :goto_71
    return v0

    #@72
    :cond_72
    move v0, v1

    #@73
    goto :goto_71
.end method
