.class public Lcom/android/dx/ssa/back/FirstFitAllocator;
.super Lcom/android/dx/ssa/back/RegisterAllocator;


# static fields
.field private static final PRESLOT_PARAMS:Z = true


# instance fields
.field private final mapped:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(Lcom/android/dx/ssa/SsaMethod;Lcom/android/dx/ssa/back/InterferenceGraph;)V
    .registers 5

    #@0
    invoke-direct {p0, p1, p2}, Lcom/android/dx/ssa/back/RegisterAllocator;-><init>(Lcom/android/dx/ssa/SsaMethod;Lcom/android/dx/ssa/back/InterferenceGraph;)V

    #@3
    new-instance v0, Ljava/util/BitSet;

    #@5
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    #@8
    move-result v1

    #@9
    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    #@c
    iput-object v0, p0, Lcom/android/dx/ssa/back/FirstFitAllocator;->mapped:Ljava/util/BitSet;

    #@e
    return-void
.end method

.method private paramNumberFromMoveParam(Lcom/android/dx/ssa/NormalSsaInsn;)I
    .registers 3

    #@0
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/dx/rop/code/CstInsn;

    #@6
    invoke-virtual {v0}, Lcom/android/dx/rop/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/dx/rop/cst/CstInteger;

    #@c
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    #@f
    move-result v0

    #@10
    return v0
.end method


# virtual methods
.method public allocateRegisters()Lcom/android/dx/ssa/RegisterMapper;
    .registers 13

    #@0
    const/4 v3, 0x0

    #@1
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@3
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    #@6
    move-result v7

    #@7
    new-instance v8, Lcom/android/dx/ssa/BasicRegisterMapper;

    #@9
    invoke-direct {v8, v7}, Lcom/android/dx/ssa/BasicRegisterMapper;-><init>(I)V

    #@c
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@e
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getParamWidth()I

    #@11
    move-result v1

    #@12
    move v6, v3

    #@13
    :goto_13
    if-ge v6, v7, :cond_93

    #@15
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitAllocator;->mapped:Ljava/util/BitSet;

    #@17
    invoke-virtual {v0, v6}, Ljava/util/BitSet;->get(I)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_23

    #@1d
    move v0, v1

    #@1e
    :goto_1e
    add-int/lit8 v1, v6, 0x1

    #@20
    move v6, v1

    #@21
    move v1, v0

    #@22
    goto :goto_13

    #@23
    :cond_23
    invoke-virtual {p0, v6}, Lcom/android/dx/ssa/back/FirstFitAllocator;->getCategoryForSsaReg(I)I

    #@26
    move-result v5

    #@27
    new-instance v9, Lcom/android/dx/util/BitIntSet;

    #@29
    invoke-direct {v9, v7}, Lcom/android/dx/util/BitIntSet;-><init>(I)V

    #@2c
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitAllocator;->interference:Lcom/android/dx/ssa/back/InterferenceGraph;

    #@2e
    invoke-virtual {v0, v6, v9}, Lcom/android/dx/ssa/back/InterferenceGraph;->mergeInterferenceSet(ILcom/android/dx/util/IntSet;)V

    #@31
    invoke-virtual {p0, v6}, Lcom/android/dx/ssa/back/FirstFitAllocator;->isDefinitionMoveParam(I)Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_5f

    #@37
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@39
    invoke-virtual {v0, v6}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    #@3c
    move-result-object v0

    #@3d
    check-cast v0, Lcom/android/dx/ssa/NormalSsaInsn;

    #@3f
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/back/FirstFitAllocator;->paramNumberFromMoveParam(Lcom/android/dx/ssa/NormalSsaInsn;)I

    #@42
    move-result v0

    #@43
    invoke-virtual {v8, v6, v0, v5}, Lcom/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    #@46
    const/4 v2, 0x1

    #@47
    :goto_47
    add-int/lit8 v4, v6, 0x1

    #@49
    move v11, v4

    #@4a
    move v4, v5

    #@4b
    move v5, v11

    #@4c
    :goto_4c
    if-ge v5, v7, :cond_89

    #@4e
    iget-object v10, p0, Lcom/android/dx/ssa/back/FirstFitAllocator;->mapped:Ljava/util/BitSet;

    #@50
    invoke-virtual {v10, v5}, Ljava/util/BitSet;->get(I)Z

    #@53
    move-result v10

    #@54
    if-nez v10, :cond_5c

    #@56
    invoke-virtual {p0, v5}, Lcom/android/dx/ssa/back/FirstFitAllocator;->isDefinitionMoveParam(I)Z

    #@59
    move-result v10

    #@5a
    if-eqz v10, :cond_65

    #@5c
    :cond_5c
    :goto_5c
    add-int/lit8 v5, v5, 0x1

    #@5e
    goto :goto_4c

    #@5f
    :cond_5f
    invoke-virtual {v8, v6, v1, v5}, Lcom/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    #@62
    move v0, v1

    #@63
    move v2, v3

    #@64
    goto :goto_47

    #@65
    :cond_65
    invoke-interface {v9, v5}, Lcom/android/dx/util/IntSet;->has(I)Z

    #@68
    move-result v10

    #@69
    if-nez v10, :cond_5c

    #@6b
    if-eqz v2, :cond_73

    #@6d
    invoke-virtual {p0, v5}, Lcom/android/dx/ssa/back/FirstFitAllocator;->getCategoryForSsaReg(I)I

    #@70
    move-result v10

    #@71
    if-lt v4, v10, :cond_5c

    #@73
    :cond_73
    iget-object v10, p0, Lcom/android/dx/ssa/back/FirstFitAllocator;->interference:Lcom/android/dx/ssa/back/InterferenceGraph;

    #@75
    invoke-virtual {v10, v5, v9}, Lcom/android/dx/ssa/back/InterferenceGraph;->mergeInterferenceSet(ILcom/android/dx/util/IntSet;)V

    #@78
    invoke-virtual {p0, v5}, Lcom/android/dx/ssa/back/FirstFitAllocator;->getCategoryForSsaReg(I)I

    #@7b
    move-result v10

    #@7c
    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    #@7f
    move-result v4

    #@80
    invoke-virtual {v8, v5, v0, v4}, Lcom/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    #@83
    iget-object v10, p0, Lcom/android/dx/ssa/back/FirstFitAllocator;->mapped:Ljava/util/BitSet;

    #@85
    invoke-virtual {v10, v5}, Ljava/util/BitSet;->set(I)V

    #@88
    goto :goto_5c

    #@89
    :cond_89
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitAllocator;->mapped:Ljava/util/BitSet;

    #@8b
    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    #@8e
    if-nez v2, :cond_94

    #@90
    add-int v0, v1, v4

    #@92
    goto :goto_1e

    #@93
    :cond_93
    return-object v8

    #@94
    :cond_94
    move v0, v1

    #@95
    goto :goto_1e
.end method

.method public wantsParamsMovedHigh()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method
