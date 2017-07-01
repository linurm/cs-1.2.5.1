.class public Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;
.super Lcom/android/dx/ssa/back/RegisterAllocator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final invokeRangeInsns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/ssa/NormalSsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final localVariables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/dx/rop/code/LocalItem;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/rop/code/RegisterSpec;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

.field private final minimizeRegisters:Z

.field private final moveResultPseudoInsns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/ssa/NormalSsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final paramRangeEnd:I

.field private final phiInsns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/ssa/PhiInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final reservedRopRegs:Ljava/util/BitSet;

.field private final ssaRegsMapped:Ljava/util/BitSet;

.field private final usedRopRegs:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(Lcom/android/dx/ssa/SsaMethod;Lcom/android/dx/ssa/back/InterferenceGraph;Z)V
    .registers 7

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
    iput-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    #@e
    new-instance v0, Lcom/android/dx/ssa/InterferenceRegisterMapper;

    #@10
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    #@13
    move-result v1

    #@14
    invoke-direct {v0, p2, v1}, Lcom/android/dx/ssa/InterferenceRegisterMapper;-><init>(Lcom/android/dx/ssa/back/InterferenceGraph;I)V

    #@17
    iput-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    #@19
    iput-boolean p3, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->minimizeRegisters:Z

    #@1b
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getParamWidth()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    #@21
    new-instance v0, Ljava/util/BitSet;

    #@23
    iget v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    #@25
    mul-int/lit8 v1, v1, 0x2

    #@27
    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    #@2a
    iput-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    #@2c
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    #@2e
    const/4 v1, 0x0

    #@2f
    iget v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    #@31
    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(II)V

    #@34
    new-instance v0, Ljava/util/BitSet;

    #@36
    iget v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    #@38
    mul-int/lit8 v1, v1, 0x2

    #@3a
    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    #@3d
    iput-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->usedRopRegs:Ljava/util/BitSet;

    #@3f
    new-instance v0, Ljava/util/TreeMap;

    #@41
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    #@44
    iput-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    #@46
    new-instance v0, Ljava/util/ArrayList;

    #@48
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@4b
    iput-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->moveResultPseudoInsns:Ljava/util/ArrayList;

    #@4d
    new-instance v0, Ljava/util/ArrayList;

    #@4f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@52
    iput-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->invokeRangeInsns:Ljava/util/ArrayList;

    #@54
    new-instance v0, Ljava/util/ArrayList;

    #@56
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@59
    iput-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->phiInsns:Ljava/util/ArrayList;

    #@5b
    return-void
.end method

.method static synthetic access$000(Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/Map;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/ArrayList;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->moveResultPseudoInsns:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic access$200(Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/ArrayList;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->invokeRangeInsns:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic access$300(Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/ArrayList;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->phiInsns:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method private addMapping(Lcom/android/dx/rop/code/RegisterSpec;I)V
    .registers 7

    #@0
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    #@6
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_12

    #@c
    invoke-direct {p0, p1, p2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapReg(Lcom/android/dx/rop/code/RegisterSpec;I)Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_1a

    #@12
    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    #@14
    const-string v1, "attempt to add invalid register mapping"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    :cond_1a
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@1d
    move-result v1

    #@1e
    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    #@20
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@23
    move-result v3

    #@24
    invoke-virtual {v2, v3, p2, v1}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->addMapping(III)V

    #@27
    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    #@29
    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    #@2c
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->usedRopRegs:Ljava/util/BitSet;

    #@2e
    add-int/2addr v1, p2

    #@2f
    invoke-virtual {v0, p2, v1}, Ljava/util/BitSet;->set(II)V

    #@32
    return-void
.end method

.method private adjustAndMapSourceRangeRange(Lcom/android/dx/ssa/NormalSsaInsn;)V
    .registers 14

    #@0
    const/4 v3, 0x0

    #@1
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findRangeAndAdjust(Lcom/android/dx/ssa/NormalSsaInsn;)I

    #@4
    move-result v0

    #@5
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@8
    move-result-object v6

    #@9
    invoke-virtual {v6}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@c
    move-result v7

    #@d
    move v4, v3

    #@e
    move v5, v0

    #@f
    :goto_f
    if-ge v4, v7, :cond_60

    #@11
    invoke-virtual {v6, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@18
    move-result v1

    #@19
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@1c
    move-result v8

    #@1d
    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    #@1f
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_2c

    #@25
    :cond_25
    add-int/lit8 v0, v4, 0x1

    #@27
    add-int v1, v5, v8

    #@29
    move v4, v0

    #@2a
    move v5, v1

    #@2b
    goto :goto_f

    #@2c
    :cond_2c
    invoke-direct {p0, v1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getLocalItemForReg(I)Lcom/android/dx/rop/code/LocalItem;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {p0, v0, v5}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/android/dx/rop/code/RegisterSpec;I)V

    #@33
    if-eqz v1, :cond_25

    #@35
    invoke-direct {p0, v5, v8}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->markReserved(II)V

    #@38
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    #@3a
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Ljava/util/ArrayList;

    #@40
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@43
    move-result v9

    #@44
    move v2, v3

    #@45
    :goto_45
    if-ge v2, v9, :cond_25

    #@47
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4a
    move-result-object v1

    #@4b
    check-cast v1, Lcom/android/dx/rop/code/RegisterSpec;

    #@4d
    const/4 v10, -0x1

    #@4e
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@51
    move-result v11

    #@52
    invoke-virtual {v6, v11}, Lcom/android/dx/rop/code/RegisterSpecList;->indexOfRegister(I)I

    #@55
    move-result v11

    #@56
    if-eq v10, v11, :cond_5c

    #@58
    :goto_58
    add-int/lit8 v1, v2, 0x1

    #@5a
    move v2, v1

    #@5b
    goto :goto_45

    #@5c
    :cond_5c
    invoke-direct {p0, v1, v5, v8}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapReg(Lcom/android/dx/rop/code/RegisterSpec;II)Z

    #@5f
    goto :goto_58

    #@60
    :cond_60
    return-void
.end method

.method private analyzeInstructions()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@2
    new-instance v1, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;

    #@4
    invoke-direct {v1, p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;-><init>(Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)V

    #@7
    invoke-virtual {v0, v1}, Lcom/android/dx/ssa/SsaMethod;->forEachInsn(Lcom/android/dx/ssa/SsaInsn$Visitor;)V

    #@a
    return-void
.end method

.method private canMapReg(Lcom/android/dx/rop/code/RegisterSpec;I)Z
    .registers 4

    #@0
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, p2, v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->spansParamRange(II)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_14

    #@a
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    #@c
    invoke-virtual {v0, p1, p2}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->interferes(Lcom/android/dx/rop/code/RegisterSpec;I)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_14

    #@12
    const/4 v0, 0x1

    #@13
    :goto_13
    return v0

    #@14
    :cond_14
    const/4 v0, 0x0

    #@15
    goto :goto_13
.end method

.method private canMapRegs(Ljava/util/ArrayList;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/rop/code/RegisterSpec;",
            ">;I)Z"
        }
    .end annotation

    #@0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_24

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/dx/rop/code/RegisterSpec;

    #@10
    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    #@12
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@15
    move-result v3

    #@16
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    #@19
    move-result v2

    #@1a
    if-nez v2, :cond_4

    #@1c
    invoke-direct {p0, v0, p2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapReg(Lcom/android/dx/rop/code/RegisterSpec;I)Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_4

    #@22
    const/4 v0, 0x0

    #@23
    :goto_23
    return v0

    #@24
    :cond_24
    const/4 v0, 0x1

    #@25
    goto :goto_23
.end method

.method private findAnyFittingRange(Lcom/android/dx/ssa/NormalSsaInsn;I[ILjava/util/BitSet;)I
    .registers 7

    #@0
    iget v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    #@2
    :goto_2
    invoke-direct {p0, v0, p2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    #@5
    move-result v0

    #@6
    invoke-direct {p0, v0, p1, p3, p4}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->fitPlanForRange(ILcom/android/dx/ssa/NormalSsaInsn;[ILjava/util/BitSet;)I

    #@9
    move-result v1

    #@a
    if-ltz v1, :cond_d

    #@c
    return v0

    #@d
    :cond_d
    add-int/lit8 v0, v0, 0x1

    #@f
    invoke-virtual {p4}, Ljava/util/BitSet;->clear()V

    #@12
    goto :goto_2
.end method

.method private findNextUnreservedRopReg(II)I
    .registers 7

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/BitSet;->nextClearBit(I)I

    #@5
    move-result v0

    #@6
    :goto_6
    const/4 v1, 0x1

    #@7
    :goto_7
    if-ge v1, p2, :cond_16

    #@9
    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    #@b
    add-int v3, v0, v1

    #@d
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_16

    #@13
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_7

    #@16
    :cond_16
    if-ne v1, p2, :cond_19

    #@18
    return v0

    #@19
    :cond_19
    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    #@1b
    add-int/2addr v0, v1

    #@1c
    invoke-virtual {v2, v0}, Ljava/util/BitSet;->nextClearBit(I)I

    #@1f
    move-result v0

    #@20
    goto :goto_6
.end method

.method private findRangeAndAdjust(Lcom/android/dx/ssa/NormalSsaInsn;)I
    .registers 15

    #@0
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@3
    move-result-object v9

    #@4
    invoke-virtual {v9}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@7
    move-result v10

    #@8
    new-array v11, v10, [I

    #@a
    const/4 v1, 0x0

    #@b
    const/4 v0, 0x0

    #@c
    move v8, v0

    #@d
    move v0, v1

    #@e
    :goto_e
    if-ge v0, v10, :cond_23

    #@10
    invoke-virtual {v9, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@17
    move-result v1

    #@18
    aput v1, v11, v0

    #@1a
    aget v2, v11, v0

    #@1c
    add-int/lit8 v1, v0, 0x1

    #@1e
    add-int v0, v2, v8

    #@20
    move v8, v0

    #@21
    move v0, v1

    #@22
    goto :goto_e

    #@23
    :cond_23
    const/4 v3, 0x0

    #@24
    const/4 v0, 0x0

    #@25
    const/4 v4, -0x1

    #@26
    const/high16 v2, -0x80000000

    #@28
    const/4 v1, 0x0

    #@29
    move v7, v1

    #@2a
    move v1, v4

    #@2b
    :goto_2b
    if-ge v7, v10, :cond_70

    #@2d
    invoke-virtual {v9, v7}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@34
    move-result v4

    #@35
    if-eqz v7, :cond_3c

    #@37
    add-int/lit8 v5, v7, -0x1

    #@39
    aget v5, v11, v5

    #@3b
    sub-int/2addr v3, v5

    #@3c
    :cond_3c
    iget-object v5, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    #@3e
    invoke-virtual {v5, v4}, Ljava/util/BitSet;->get(I)Z

    #@41
    move-result v5

    #@42
    if-nez v5, :cond_48

    #@44
    :cond_44
    add-int/lit8 v4, v7, 0x1

    #@46
    move v7, v4

    #@47
    goto :goto_2b

    #@48
    :cond_48
    iget-object v5, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    #@4a
    invoke-virtual {v5, v4}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    #@4d
    move-result v4

    #@4e
    add-int v6, v4, v3

    #@50
    if-ltz v6, :cond_44

    #@52
    invoke-direct {p0, v6, v8}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->spansParamRange(II)Z

    #@55
    move-result v4

    #@56
    if-nez v4, :cond_44

    #@58
    new-instance v4, Ljava/util/BitSet;

    #@5a
    invoke-direct {v4, v10}, Ljava/util/BitSet;-><init>(I)V

    #@5d
    invoke-direct {p0, v6, p1, v11, v4}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->fitPlanForRange(ILcom/android/dx/ssa/NormalSsaInsn;[ILjava/util/BitSet;)I

    #@60
    move-result v12

    #@61
    if-ltz v12, :cond_44

    #@63
    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    #@66
    move-result v5

    #@67
    sub-int v5, v12, v5

    #@69
    if-le v5, v2, :cond_6e

    #@6b
    move-object v0, v4

    #@6c
    move v2, v5

    #@6d
    move v1, v6

    #@6e
    :cond_6e
    if-ne v12, v8, :cond_44

    #@70
    :cond_70
    const/4 v2, -0x1

    #@71
    if-ne v1, v2, :cond_7c

    #@73
    new-instance v0, Ljava/util/BitSet;

    #@75
    invoke-direct {v0, v10}, Ljava/util/BitSet;-><init>(I)V

    #@78
    invoke-direct {p0, p1, v8, v11, v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findAnyFittingRange(Lcom/android/dx/ssa/NormalSsaInsn;I[ILjava/util/BitSet;)I

    #@7b
    move-result v1

    #@7c
    :cond_7c
    const/4 v2, 0x0

    #@7d
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    #@80
    move-result v2

    #@81
    :goto_81
    if-ltz v2, :cond_95

    #@83
    invoke-virtual {v9, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@86
    move-result-object v3

    #@87
    invoke-virtual {p0, p1, v3}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->insertMoveBefore(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;

    #@8a
    move-result-object v3

    #@8b
    invoke-virtual {p1, v2, v3}, Lcom/android/dx/ssa/NormalSsaInsn;->changeOneSource(ILcom/android/dx/rop/code/RegisterSpec;)V

    #@8e
    add-int/lit8 v2, v2, 0x1

    #@90
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    #@93
    move-result v2

    #@94
    goto :goto_81

    #@95
    :cond_95
    return v1
.end method

.method private findRopRegForLocal(II)I
    .registers 7

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->usedRopRegs:Ljava/util/BitSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/BitSet;->nextClearBit(I)I

    #@5
    move-result v0

    #@6
    :goto_6
    const/4 v1, 0x1

    #@7
    :goto_7
    if-ge v1, p2, :cond_16

    #@9
    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->usedRopRegs:Ljava/util/BitSet;

    #@b
    add-int v3, v0, v1

    #@d
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_16

    #@13
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_7

    #@16
    :cond_16
    if-ne v1, p2, :cond_19

    #@18
    return v0

    #@19
    :cond_19
    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->usedRopRegs:Ljava/util/BitSet;

    #@1b
    add-int/2addr v0, v1

    #@1c
    invoke-virtual {v2, v0}, Ljava/util/BitSet;->nextClearBit(I)I

    #@1f
    move-result v0

    #@20
    goto :goto_6
.end method

.method private fitPlanForRange(ILcom/android/dx/ssa/NormalSsaInsn;[ILjava/util/BitSet;)I
    .registers 16

    #@0
    invoke-virtual {p2}, Lcom/android/dx/ssa/NormalSsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@7
    move-result v4

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {p2}, Lcom/android/dx/ssa/NormalSsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getLiveOutRegs()Lcom/android/dx/util/IntSet;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p0, v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaSetToSpecs(Lcom/android/dx/util/IntSet;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@14
    move-result-object v5

    #@15
    new-instance v6, Ljava/util/BitSet;

    #@17
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@19
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    #@1c
    move-result v0

    #@1d
    invoke-direct {v6, v0}, Ljava/util/BitSet;-><init>(I)V

    #@20
    const/4 v0, 0x0

    #@21
    move v2, v0

    #@22
    move v0, p1

    #@23
    :goto_23
    if-ge v2, v4, :cond_54

    #@25
    invoke-virtual {v3, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@28
    move-result-object v7

    #@29
    invoke-virtual {v7}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@2c
    move-result v8

    #@2d
    aget v9, p3, v2

    #@2f
    if-eqz v2, :cond_36

    #@31
    add-int/lit8 v10, v2, -0x1

    #@33
    aget v10, p3, v10

    #@35
    add-int/2addr v0, v10

    #@36
    :cond_36
    iget-object v10, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    #@38
    invoke-virtual {v10, v8}, Ljava/util/BitSet;->get(I)Z

    #@3b
    move-result v10

    #@3c
    if-eqz v10, :cond_4d

    #@3e
    iget-object v10, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    #@40
    invoke-virtual {v10, v8}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    #@43
    move-result v10

    #@44
    if-ne v10, v0, :cond_4d

    #@46
    add-int/2addr v1, v9

    #@47
    :goto_47
    invoke-virtual {v6, v8}, Ljava/util/BitSet;->set(I)V

    #@4a
    add-int/lit8 v2, v2, 0x1

    #@4c
    goto :goto_23

    #@4d
    :cond_4d
    invoke-direct {p0, v0, v9}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->rangeContainsReserved(II)Z

    #@50
    move-result v10

    #@51
    if-eqz v10, :cond_55

    #@53
    const/4 v1, -0x1

    #@54
    :cond_54
    :goto_54
    return v1

    #@55
    :cond_55
    iget-object v10, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    #@57
    invoke-virtual {v10, v8}, Ljava/util/BitSet;->get(I)Z

    #@5a
    move-result v10

    #@5b
    if-nez v10, :cond_6b

    #@5d
    invoke-direct {p0, v7, v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapReg(Lcom/android/dx/rop/code/RegisterSpec;I)Z

    #@60
    move-result v7

    #@61
    if-eqz v7, :cond_6b

    #@63
    invoke-virtual {v6, v8}, Ljava/util/BitSet;->get(I)Z

    #@66
    move-result v7

    #@67
    if-nez v7, :cond_6b

    #@69
    add-int/2addr v1, v9

    #@6a
    goto :goto_47

    #@6b
    :cond_6b
    iget-object v7, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    #@6d
    invoke-virtual {v7, v5, v0, v9}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->areAnyPinned(Lcom/android/dx/rop/code/RegisterSpecList;II)Z

    #@70
    move-result v7

    #@71
    if-nez v7, :cond_7f

    #@73
    iget-object v7, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    #@75
    invoke-virtual {v7, v3, v0, v9}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->areAnyPinned(Lcom/android/dx/rop/code/RegisterSpecList;II)Z

    #@78
    move-result v7

    #@79
    if-nez v7, :cond_7f

    #@7b
    invoke-virtual {p4, v2}, Ljava/util/BitSet;->set(I)V

    #@7e
    goto :goto_47

    #@7f
    :cond_7f
    const/4 v1, -0x1

    #@80
    goto :goto_54
.end method

.method private getLocalItemForReg(I)Lcom/android/dx/rop/code/LocalItem;
    .registers 6

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v2

    #@a
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_39

    #@10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/util/Map$Entry;

    #@16
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v3

    #@20
    :cond_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_a

    #@26
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v1

    #@2a
    check-cast v1, Lcom/android/dx/rop/code/RegisterSpec;

    #@2c
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@2f
    move-result v1

    #@30
    if-ne v1, p1, :cond_20

    #@32
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Lcom/android/dx/rop/code/LocalItem;

    #@38
    :goto_38
    return-object v0

    #@39
    :cond_39
    const/4 v0, 0x0

    #@3a
    goto :goto_38
.end method

.method private getParameterIndexForReg(I)I
    .registers 6

    #@0
    const/4 v0, -0x1

    #@1
    iget-object v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@3
    invoke-virtual {v1, p1}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    #@6
    move-result-object v1

    #@7
    if-nez v1, :cond_a

    #@9
    :cond_9
    :goto_9
    return v0

    #@a
    :cond_a
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@d
    move-result-object v2

    #@e
    if-eqz v2, :cond_9

    #@10
    invoke-virtual {v2}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    #@13
    move-result v2

    #@14
    const/4 v3, 0x3

    #@15
    if-ne v2, v3, :cond_9

    #@17
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lcom/android/dx/rop/code/CstInsn;

    #@1d
    invoke-virtual {v0}, Lcom/android/dx/rop/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lcom/android/dx/rop/cst/CstInteger;

    #@23
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    #@26
    move-result v0

    #@27
    goto :goto_9
.end method

.method private handleCheckCastResults()V
    .registers 13

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->moveResultPseudoInsns:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v6

    #@8
    :cond_8
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_f4

    #@e
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/dx/ssa/NormalSsaInsn;

    #@14
    invoke-virtual {v0}, Lcom/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@17
    move-result-object v7

    #@18
    invoke-virtual {v7}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@1b
    move-result v8

    #@1c
    invoke-virtual {v0}, Lcom/android/dx/ssa/NormalSsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    #@27
    move-result v1

    #@28
    if-ne v1, v2, :cond_8

    #@2a
    iget-object v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@2c
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    #@33
    move-result v0

    #@34
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v0

    #@38
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@3a
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@41
    move-result v1

    #@42
    add-int/lit8 v1, v1, -0x1

    #@44
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@47
    move-result-object v0

    #@48
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@4a
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    #@51
    move-result v1

    #@52
    const/16 v4, 0x2b

    #@54
    if-ne v1, v4, :cond_8

    #@56
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v1, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@5d
    move-result-object v9

    #@5e
    invoke-virtual {v9}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@61
    move-result v10

    #@62
    invoke-virtual {v9}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@65
    move-result v11

    #@66
    iget-object v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    #@68
    invoke-virtual {v1, v8}, Ljava/util/BitSet;->get(I)Z

    #@6b
    move-result v1

    #@6c
    iget-object v4, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    #@6e
    invoke-virtual {v4, v10}, Ljava/util/BitSet;->get(I)Z

    #@71
    move-result v4

    #@72
    if-nez v4, :cond_b6

    #@74
    move v5, v2

    #@75
    :goto_75
    and-int/2addr v5, v1

    #@76
    if-eqz v5, :cond_f2

    #@78
    iget-object v4, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    #@7a
    invoke-virtual {v4, v8}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    #@7d
    move-result v4

    #@7e
    invoke-direct {p0, v9, v4, v11}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapReg(Lcom/android/dx/rop/code/RegisterSpec;II)Z

    #@81
    move-result v4

    #@82
    move v5, v4

    #@83
    :goto_83
    if-nez v1, :cond_b8

    #@85
    move v4, v2

    #@86
    :goto_86
    and-int/2addr v4, v5

    #@87
    if-eqz v4, :cond_93

    #@89
    iget-object v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    #@8b
    invoke-virtual {v1, v10}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    #@8e
    move-result v1

    #@8f
    invoke-direct {p0, v7, v1, v11}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapReg(Lcom/android/dx/rop/code/RegisterSpec;II)Z

    #@92
    move-result v1

    #@93
    :cond_93
    if-eqz v1, :cond_97

    #@95
    if-nez v5, :cond_ba

    #@97
    :cond_97
    iget v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    #@99
    invoke-direct {p0, v1, v11}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    #@9c
    move-result v1

    #@9d
    new-instance v4, Ljava/util/ArrayList;

    #@9f
    const/4 v5, 0x2

    #@a0
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    #@a3
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a6
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a9
    :goto_a9
    invoke-direct {p0, v4, v1, v11, v3}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapRegs(Ljava/util/ArrayList;IIZ)Z

    #@ac
    move-result v5

    #@ad
    if-nez v5, :cond_ba

    #@af
    add-int/lit8 v1, v1, 0x1

    #@b1
    invoke-direct {p0, v1, v11}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    #@b4
    move-result v1

    #@b5
    goto :goto_a9

    #@b6
    :cond_b6
    move v5, v3

    #@b7
    goto :goto_75

    #@b8
    :cond_b8
    move v4, v3

    #@b9
    goto :goto_86

    #@ba
    :cond_ba
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    #@bd
    move-result-object v1

    #@be
    invoke-virtual {v1}, Lcom/android/dx/rop/code/Insn;->getCatches()Lcom/android/dx/rop/type/TypeList;

    #@c1
    move-result-object v1

    #@c2
    invoke-interface {v1}, Lcom/android/dx/rop/type/TypeList;->size()I

    #@c5
    move-result v1

    #@c6
    if-eqz v1, :cond_f0

    #@c8
    move v1, v2

    #@c9
    :goto_c9
    iget-object v4, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    #@cb
    invoke-virtual {v4, v8}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    #@ce
    move-result v4

    #@cf
    iget-object v5, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    #@d1
    invoke-virtual {v5, v10}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    #@d4
    move-result v5

    #@d5
    if-eq v4, v5, :cond_8

    #@d7
    if-nez v1, :cond_8

    #@d9
    move-object v1, v0

    #@da
    check-cast v1, Lcom/android/dx/ssa/NormalSsaInsn;

    #@dc
    invoke-virtual {p0, v0, v9}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->insertMoveBefore(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;

    #@df
    move-result-object v5

    #@e0
    invoke-virtual {v1, v3, v5}, Lcom/android/dx/ssa/NormalSsaInsn;->changeOneSource(ILcom/android/dx/rop/code/RegisterSpec;)V

    #@e3
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@e6
    move-result-object v0

    #@e7
    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@ea
    move-result-object v0

    #@eb
    invoke-direct {p0, v0, v4}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/android/dx/rop/code/RegisterSpec;I)V

    #@ee
    goto/16 :goto_8

    #@f0
    :cond_f0
    move v1, v3

    #@f1
    goto :goto_c9

    #@f2
    :cond_f2
    move v5, v4

    #@f3
    goto :goto_83

    #@f4
    :cond_f4
    return-void
.end method

.method private handleInvokeRangeInsns()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->invokeRangeInsns:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_16

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/dx/ssa/NormalSsaInsn;

    #@12
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->adjustAndMapSourceRangeRange(Lcom/android/dx/ssa/NormalSsaInsn;)V

    #@15
    goto :goto_6

    #@16
    :cond_16
    return-void
.end method

.method private handleLocalAssociatedOther()V
    .registers 13

    #@0
    const/4 v8, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    #@4
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v9

    #@c
    :cond_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_5b

    #@12
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Ljava/util/ArrayList;

    #@18
    iget v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    #@1a
    move v2, v3

    #@1b
    move v4, v1

    #@1c
    :goto_1c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1f
    move-result v10

    #@20
    move v7, v3

    #@21
    move v6, v8

    #@22
    :goto_22
    if-ge v7, v10, :cond_42

    #@24
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    check-cast v1, Lcom/android/dx/rop/code/RegisterSpec;

    #@2a
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@2d
    move-result v5

    #@2e
    iget-object v11, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    #@30
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@33
    move-result v1

    #@34
    invoke-virtual {v11, v1}, Ljava/util/BitSet;->get(I)Z

    #@37
    move-result v1

    #@38
    if-nez v1, :cond_59

    #@3a
    if-le v5, v6, :cond_59

    #@3c
    move v1, v5

    #@3d
    :goto_3d
    add-int/lit8 v5, v7, 0x1

    #@3f
    move v7, v5

    #@40
    move v6, v1

    #@41
    goto :goto_22

    #@42
    :cond_42
    invoke-direct {p0, v4, v6}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findRopRegForLocal(II)I

    #@45
    move-result v4

    #@46
    invoke-direct {p0, v0, v4}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapRegs(Ljava/util/ArrayList;I)Z

    #@49
    move-result v1

    #@4a
    if-eqz v1, :cond_57

    #@4c
    invoke-direct {p0, v0, v4, v6, v8}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapRegs(Ljava/util/ArrayList;IIZ)Z

    #@4f
    move-result v1

    #@50
    :goto_50
    if-nez v1, :cond_c

    #@52
    add-int/lit8 v2, v4, 0x1

    #@54
    move v4, v2

    #@55
    move v2, v1

    #@56
    goto :goto_1c

    #@57
    :cond_57
    move v1, v2

    #@58
    goto :goto_50

    #@59
    :cond_59
    move v1, v6

    #@5a
    goto :goto_3d

    #@5b
    :cond_5b
    return-void
.end method

.method private handleLocalAssociatedParams()V
    .registers 8

    #@0
    const/4 v3, 0x0

    #@1
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    #@3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@6
    move-result-object v0

    #@7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v5

    #@b
    :cond_b
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_47

    #@11
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/util/ArrayList;

    #@17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v6

    #@1b
    const/4 v1, -0x1

    #@1c
    move v2, v3

    #@1d
    :goto_1d
    if-ge v2, v6, :cond_44

    #@1f
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Lcom/android/dx/rop/code/RegisterSpec;

    #@25
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@28
    move-result v4

    #@29
    invoke-direct {p0, v4}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getParameterIndexForReg(I)I

    #@2c
    move-result v4

    #@2d
    if-ltz v4, :cond_3f

    #@2f
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@32
    move-result v2

    #@33
    invoke-direct {p0, v1, v4}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/android/dx/rop/code/RegisterSpec;I)V

    #@36
    move v1, v2

    #@37
    move v2, v4

    #@38
    :goto_38
    if-ltz v2, :cond_b

    #@3a
    const/4 v4, 0x1

    #@3b
    invoke-direct {p0, v0, v2, v1, v4}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapRegs(Ljava/util/ArrayList;IIZ)Z

    #@3e
    goto :goto_b

    #@3f
    :cond_3f
    add-int/lit8 v1, v2, 0x1

    #@41
    move v2, v1

    #@42
    move v1, v4

    #@43
    goto :goto_1d

    #@44
    :cond_44
    move v2, v1

    #@45
    move v1, v3

    #@46
    goto :goto_38

    #@47
    :cond_47
    return-void
.end method

.method private handleNormalUnassociated()V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    #@5
    move-result v2

    #@6
    const/4 v0, 0x0

    #@7
    move v1, v0

    #@8
    :goto_8
    if-ge v1, v2, :cond_37

    #@a
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    #@c
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_16

    #@12
    :cond_12
    :goto_12
    add-int/lit8 v0, v1, 0x1

    #@14
    move v1, v0

    #@15
    goto :goto_8

    #@16
    :cond_16
    invoke-virtual {p0, v1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getDefinitionSpecForSsaReg(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@19
    move-result-object v3

    #@1a
    if-eqz v3, :cond_12

    #@1c
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@1f
    move-result v4

    #@20
    iget v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    #@22
    invoke-direct {p0, v0, v4}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    #@25
    move-result v0

    #@26
    :goto_26
    invoke-direct {p0, v3, v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapReg(Lcom/android/dx/rop/code/RegisterSpec;I)Z

    #@29
    move-result v5

    #@2a
    if-nez v5, :cond_33

    #@2c
    add-int/lit8 v0, v0, 0x1

    #@2e
    invoke-direct {p0, v0, v4}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    #@31
    move-result v0

    #@32
    goto :goto_26

    #@33
    :cond_33
    invoke-direct {p0, v3, v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/android/dx/rop/code/RegisterSpec;I)V

    #@36
    goto :goto_12

    #@37
    :cond_37
    return-void
.end method

.method private handlePhiInsns()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->phiInsns:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_16

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/dx/ssa/PhiInsn;

    #@12
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->processPhiInsn(Lcom/android/dx/ssa/PhiInsn;)V

    #@15
    goto :goto_6

    #@16
    :cond_16
    return-void
.end method

.method private handleUnassociatedParameters()V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    #@5
    move-result v1

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    if-ge v0, v1, :cond_22

    #@9
    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    #@b
    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_14

    #@11
    :cond_11
    :goto_11
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_7

    #@14
    :cond_14
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getParameterIndexForReg(I)I

    #@17
    move-result v2

    #@18
    invoke-virtual {p0, v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getDefinitionSpecForSsaReg(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@1b
    move-result-object v3

    #@1c
    if-ltz v2, :cond_11

    #@1e
    invoke-direct {p0, v3, v2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/android/dx/rop/code/RegisterSpec;I)V

    #@21
    goto :goto_11

    #@22
    :cond_22
    return-void
.end method

.method private isThisPointerReg(I)Z
    .registers 3

    #@0
    if-nez p1, :cond_c

    #@2
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@4
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->isStatic()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    goto :goto_b
.end method

.method private markReserved(II)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    #@2
    add-int v1, p1, p2

    #@4
    const/4 v2, 0x1

    #@5
    invoke-virtual {v0, p1, v1, v2}, Ljava/util/BitSet;->set(IIZ)V

    #@8
    return-void
.end method

.method private printLocalVars()V
    .registers 9

    #@0
    const/16 v7, 0x20

    #@2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4
    const-string v1, "Printing local vars"

    #@6
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@9
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    #@b
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@e
    move-result-object v0

    #@f
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v2

    #@13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_6c

    #@19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Ljava/util/Map$Entry;

    #@1f
    new-instance v3, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const/16 v1, 0x7b

    #@26
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@29
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2c
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    check-cast v1, Ljava/util/ArrayList;

    #@32
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@35
    move-result-object v4

    #@36
    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@39
    move-result v1

    #@3a
    if-eqz v1, :cond_52

    #@3c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3f
    move-result-object v1

    #@40
    check-cast v1, Lcom/android/dx/rop/code/RegisterSpec;

    #@42
    const/16 v5, 0x76

    #@44
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@47
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@4a
    move-result v1

    #@4b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@51
    goto :goto_36

    #@52
    :cond_52
    const/16 v1, 0x7d

    #@54
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@57
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@59
    const-string v4, "Local: %s Registers: %s\n"

    #@5b
    const/4 v5, 0x2

    #@5c
    new-array v5, v5, [Ljava/lang/Object;

    #@5e
    const/4 v6, 0x0

    #@5f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@62
    move-result-object v0

    #@63
    aput-object v0, v5, v6

    #@65
    const/4 v0, 0x1

    #@66
    aput-object v3, v5, v0

    #@68
    invoke-virtual {v1, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    #@6b
    goto :goto_13

    #@6c
    :cond_6c
    return-void
.end method

.method private processPhiInsn(Lcom/android/dx/ssa/PhiInsn;)V
    .registers 12

    #@0
    const/4 v1, 0x0

    #@1
    invoke-virtual {p1}, Lcom/android/dx/ssa/PhiInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@8
    move-result v2

    #@9
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@c
    move-result v3

    #@d
    invoke-virtual {p1}, Lcom/android/dx/ssa/PhiInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@14
    move-result v5

    #@15
    new-instance v6, Ljava/util/ArrayList;

    #@17
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@1a
    new-instance v7, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;

    #@1c
    add-int/lit8 v8, v5, 0x1

    #@1e
    invoke-direct {v7, v8}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;-><init>(I)V

    #@21
    iget-object v8, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    #@23
    invoke-virtual {v8, v2}, Ljava/util/BitSet;->get(I)Z

    #@26
    move-result v8

    #@27
    if-eqz v8, :cond_5f

    #@29
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    #@2b
    invoke-virtual {v0, v2}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    #@2e
    move-result v0

    #@2f
    invoke-virtual {v7, v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->add(I)V

    #@32
    :goto_32
    move v0, v1

    #@33
    :goto_33
    if-ge v0, v5, :cond_67

    #@35
    invoke-virtual {v4, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@38
    move-result-object v2

    #@39
    iget-object v8, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@3b
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@3e
    move-result v2

    #@3f
    invoke-virtual {v8, v2}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@4a
    move-result v8

    #@4b
    iget-object v9, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    #@4d
    invoke-virtual {v9, v8}, Ljava/util/BitSet;->get(I)Z

    #@50
    move-result v9

    #@51
    if-eqz v9, :cond_63

    #@53
    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    #@55
    invoke-virtual {v2, v8}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    #@58
    move-result v2

    #@59
    invoke-virtual {v7, v2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->add(I)V

    #@5c
    :goto_5c
    add-int/lit8 v0, v0, 0x1

    #@5e
    goto :goto_33

    #@5f
    :cond_5f
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@62
    goto :goto_32

    #@63
    :cond_63
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@66
    goto :goto_5c

    #@67
    :cond_67
    move v0, v1

    #@68
    :goto_68
    invoke-virtual {v7}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->getSize()I

    #@6b
    move-result v2

    #@6c
    if-ge v0, v2, :cond_78

    #@6e
    invoke-virtual {v7}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->getAndRemoveHighestCount()I

    #@71
    move-result v2

    #@72
    invoke-direct {p0, v6, v2, v3, v1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapRegs(Ljava/util/ArrayList;IIZ)Z

    #@75
    add-int/lit8 v0, v0, 0x1

    #@77
    goto :goto_68

    #@78
    :cond_78
    iget v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    #@7a
    invoke-direct {p0, v0, v3}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    #@7d
    move-result v0

    #@7e
    :goto_7e
    invoke-direct {p0, v6, v0, v3, v1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapRegs(Ljava/util/ArrayList;IIZ)Z

    #@81
    move-result v2

    #@82
    if-nez v2, :cond_8b

    #@84
    add-int/lit8 v0, v0, 0x1

    #@86
    invoke-direct {p0, v0, v3}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    #@89
    move-result v0

    #@8a
    goto :goto_7e

    #@8b
    :cond_8b
    return-void
.end method

.method private rangeContainsReserved(II)Z
    .registers 5

    #@0
    move v0, p1

    #@1
    :goto_1
    add-int v1, p1, p2

    #@3
    if-ge v0, v1, :cond_12

    #@5
    iget-object v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    #@7
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_f

    #@d
    const/4 v0, 0x1

    #@e
    :goto_e
    return v0

    #@f
    :cond_f
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_1

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    goto :goto_e
.end method

.method private spansParamRange(II)Z
    .registers 5

    #@0
    iget v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    #@2
    if-ge p1, v0, :cond_c

    #@4
    add-int v0, p1, p2

    #@6
    iget v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    #@8
    if-le v0, v1, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    goto :goto_b
.end method

.method private tryMapReg(Lcom/android/dx/rop/code/RegisterSpec;II)Z
    .registers 6

    #@0
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@3
    move-result v0

    #@4
    if-gt v0, p3, :cond_1d

    #@6
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    #@8
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@b
    move-result v1

    #@c
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_1d

    #@12
    invoke-direct {p0, p1, p2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapReg(Lcom/android/dx/rop/code/RegisterSpec;I)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1d

    #@18
    invoke-direct {p0, p1, p2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/android/dx/rop/code/RegisterSpec;I)V

    #@1b
    const/4 v0, 0x1

    #@1c
    :goto_1c
    return v0

    #@1d
    :cond_1d
    const/4 v0, 0x0

    #@1e
    goto :goto_1c
.end method

.method private tryMapRegs(Ljava/util/ArrayList;IIZ)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/rop/code/RegisterSpec;",
            ">;IIZ)Z"
        }
    .end annotation

    #@0
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v4

    #@6
    move v1, v2

    #@7
    :cond_7
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_36

    #@d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/dx/rop/code/RegisterSpec;

    #@13
    iget-object v5, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    #@15
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@18
    move-result v6

    #@19
    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    #@1c
    move-result v5

    #@1d
    if-nez v5, :cond_7

    #@1f
    invoke-direct {p0, v0, p2, p3}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapReg(Lcom/android/dx/rop/code/RegisterSpec;II)Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_27

    #@25
    if-eqz v1, :cond_34

    #@27
    :cond_27
    move v1, v3

    #@28
    :goto_28
    if-eqz v5, :cond_7

    #@2a
    if-eqz p4, :cond_7

    #@2c
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@2f
    move-result v0

    #@30
    invoke-direct {p0, p2, v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->markReserved(II)V

    #@33
    goto :goto_7

    #@34
    :cond_34
    move v1, v2

    #@35
    goto :goto_28

    #@36
    :cond_36
    if-nez v1, :cond_39

    #@38
    move v2, v3

    #@39
    :cond_39
    return v2
.end method


# virtual methods
.method public allocateRegisters()Lcom/android/dx/ssa/RegisterMapper;
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->analyzeInstructions()V

    #@3
    invoke-direct {p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handleLocalAssociatedParams()V

    #@6
    invoke-direct {p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handleUnassociatedParameters()V

    #@9
    invoke-direct {p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handleInvokeRangeInsns()V

    #@c
    invoke-direct {p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handleLocalAssociatedOther()V

    #@f
    invoke-direct {p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handleCheckCastResults()V

    #@12
    invoke-direct {p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handlePhiInsns()V

    #@15
    invoke-direct {p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handleNormalUnassociated()V

    #@18
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    #@1a
    return-object v0
.end method

.method ssaSetToSpecs(Lcom/android/dx/util/IntSet;)Lcom/android/dx/rop/code/RegisterSpecList;
    .registers 6

    #@0
    new-instance v1, Lcom/android/dx/rop/code/RegisterSpecList;

    #@2
    invoke-interface {p1}, Lcom/android/dx/util/IntSet;->elements()I

    #@5
    move-result v0

    #@6
    invoke-direct {v1, v0}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    #@9
    invoke-interface {p1}, Lcom/android/dx/util/IntSet;->iterator()Lcom/android/dx/util/IntIterator;

    #@c
    move-result-object v2

    #@d
    const/4 v0, 0x0

    #@e
    :goto_e
    invoke-interface {v2}, Lcom/android/dx/util/IntIterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_22

    #@14
    invoke-interface {v2}, Lcom/android/dx/util/IntIterator;->next()I

    #@17
    move-result v3

    #@18
    invoke-virtual {p0, v3}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getDefinitionSpecForSsaReg(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v1, v0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    #@1f
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_e

    #@22
    :cond_22
    return-object v1
.end method

.method public wantsParamsMovedHigh()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method
