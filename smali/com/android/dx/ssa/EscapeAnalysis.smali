.class public Lcom/android/dx/ssa/EscapeAnalysis;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;,
        Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;
    }
.end annotation


# instance fields
.field private latticeValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;",
            ">;"
        }
    .end annotation
.end field

.field private regCount:I

.field private ssaMeth:Lcom/android/dx/ssa/SsaMethod;


# direct methods
.method private constructor <init>(Lcom/android/dx/ssa/SsaMethod;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@5
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    #@8
    move-result v0

    #@9
    iput v0, p0, Lcom/android/dx/ssa/EscapeAnalysis;->regCount:I

    #@b
    new-instance v0, Ljava/util/ArrayList;

    #@d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    #@12
    return-void
.end method

.method static synthetic access$000(Lcom/android/dx/ssa/EscapeAnalysis;)Lcom/android/dx/ssa/SsaMethod;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@2
    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dx/ssa/EscapeAnalysis;Lcom/android/dx/ssa/SsaInsn;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/EscapeAnalysis;->processInsn(Lcom/android/dx/ssa/SsaInsn;)V

    #@3
    return-void
.end method

.method private addEdge(Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;)V
    .registers 4

    #@0
    iget-object v0, p2, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->parentSets:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_d

    #@8
    iget-object v0, p2, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->parentSets:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d
    :cond_d
    iget-object v0, p1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->childSets:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1a

    #@15
    iget-object v0, p1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->childSets:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1a
    :cond_1a
    return-void
.end method

.method private findSetIndex(Lcom/android/dx/rop/code/RegisterSpec;)I
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    move v1, v0

    #@2
    :goto_2
    iget-object v0, p0, Lcom/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    if-ge v1, v0, :cond_1e

    #@a
    iget-object v0, p0, Lcom/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    #@12
    iget-object v0, v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->regSet:Ljava/util/BitSet;

    #@14
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@17
    move-result v2

    #@18
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_1f

    #@1e
    :cond_1e
    return v1

    #@1f
    :cond_1f
    add-int/lit8 v0, v1, 0x1

    #@21
    move v1, v0

    #@22
    goto :goto_2
.end method

.method private getInsnForMove(Lcom/android/dx/ssa/SsaInsn;)Lcom/android/dx/ssa/SsaInsn;
    .registers 4

    #@0
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    #@7
    move-result-object v0

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    #@c
    move-result v0

    #@d
    iget-object v1, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@f
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@19
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@20
    move-result v1

    #@21
    add-int/lit8 v1, v1, -0x1

    #@23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@29
    return-object v0
.end method

.method private getMoveForInsn(Lcom/android/dx/ssa/SsaInsn;)Lcom/android/dx/ssa/SsaInsn;
    .registers 5

    #@0
    const/4 v2, 0x0

    #@1
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    #@c
    move-result v0

    #@d
    iget-object v1, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@f
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@19
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@23
    return-object v0
.end method

.method private insertExceptionThrow(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpec;Ljava/util/HashSet;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/ssa/SsaInsn;",
            "Lcom/android/dx/rop/code/RegisterSpec;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;)V"
        }
    .end annotation

    #@0
    new-instance v5, Lcom/android/dx/rop/cst/CstType;

    #@2
    sget-object v0, Lcom/android/dx/rop/code/Exceptions;->TYPE_ArrayIndexOutOfBoundsException:Lcom/android/dx/rop/type/Type;

    #@4
    invoke-direct {v5, v0}, Lcom/android/dx/rop/cst/CstType;-><init>(Lcom/android/dx/rop/type/Type;)V

    #@7
    sget-object v2, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    #@9
    const/4 v3, 0x0

    #@a
    const/16 v4, 0x28

    #@c
    move-object v0, p0

    #@d
    move-object v1, p1

    #@e
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/ssa/EscapeAnalysis;->insertThrowingInsnBefore(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/code/RegisterSpec;ILcom/android/dx/rop/cst/Constant;)V

    #@11
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessor()Lcom/android/dx/ssa/SsaBasicBlock;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Lcom/android/dx/ssa/SsaBasicBlock;->insertNewSuccessor(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaBasicBlock;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@20
    move-result-object v1

    #@21
    const/4 v2, 0x0

    #@22
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v7

    #@26
    check-cast v7, Lcom/android/dx/ssa/SsaInsn;

    #@28
    iget-object v1, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@2a
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaMethod;->makeNewSsaReg()I

    #@2d
    move-result v1

    #@2e
    invoke-static {v1, v5}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    #@31
    move-result-object v9

    #@32
    sget-object v8, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    #@34
    const/16 v10, 0x38

    #@36
    const/4 v11, 0x0

    #@37
    move-object v6, p0

    #@38
    invoke-direct/range {v6 .. v11}, Lcom/android/dx/ssa/EscapeAnalysis;->insertPlainInsnBefore(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/code/RegisterSpec;ILcom/android/dx/rop/cst/Constant;)V

    #@3b
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessor()Lcom/android/dx/ssa/SsaBasicBlock;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v0, v1}, Lcom/android/dx/ssa/SsaBasicBlock;->insertNewSuccessor(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaBasicBlock;

    #@42
    move-result-object v6

    #@43
    invoke-virtual {v6}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@46
    move-result-object v0

    #@47
    const/4 v1, 0x0

    #@48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4b
    move-result-object v1

    #@4c
    check-cast v1, Lcom/android/dx/ssa/SsaInsn;

    #@4e
    new-instance v7, Lcom/android/dx/rop/cst/CstMethodRef;

    #@50
    new-instance v0, Lcom/android/dx/rop/cst/CstNat;

    #@52
    new-instance v2, Lcom/android/dx/rop/cst/CstString;

    #@54
    const-string v3, "<init>"

    #@56
    invoke-direct {v2, v3}, Lcom/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    #@59
    new-instance v3, Lcom/android/dx/rop/cst/CstString;

    #@5b
    const-string v4, "(I)V"

    #@5d
    invoke-direct {v3, v4}, Lcom/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    #@60
    invoke-direct {v0, v2, v3}, Lcom/android/dx/rop/cst/CstNat;-><init>(Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/CstString;)V

    #@63
    invoke-direct {v7, v5, v0}, Lcom/android/dx/rop/cst/CstMethodRef;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    #@66
    invoke-static {v9, p2}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@69
    move-result-object v2

    #@6a
    const/4 v3, 0x0

    #@6b
    const/16 v4, 0x34

    #@6d
    move-object v0, p0

    #@6e
    move-object v5, v7

    #@6f
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/ssa/EscapeAnalysis;->insertThrowingInsnBefore(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/code/RegisterSpec;ILcom/android/dx/rop/cst/Constant;)V

    #@72
    invoke-virtual {p3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@75
    invoke-virtual {v6}, Lcom/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessor()Lcom/android/dx/ssa/SsaBasicBlock;

    #@78
    move-result-object v0

    #@79
    invoke-virtual {v6, v0}, Lcom/android/dx/ssa/SsaBasicBlock;->insertNewSuccessor(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaBasicBlock;

    #@7c
    move-result-object v6

    #@7d
    invoke-virtual {v6}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@80
    move-result-object v0

    #@81
    const/4 v1, 0x0

    #@82
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@85
    move-result-object v1

    #@86
    check-cast v1, Lcom/android/dx/ssa/SsaInsn;

    #@88
    invoke-static {v9}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@8b
    move-result-object v2

    #@8c
    const/4 v3, 0x0

    #@8d
    const/16 v4, 0x23

    #@8f
    const/4 v5, 0x0

    #@90
    move-object v0, p0

    #@91
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/ssa/EscapeAnalysis;->insertThrowingInsnBefore(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/code/RegisterSpec;ILcom/android/dx/rop/cst/Constant;)V

    #@94
    invoke-virtual {v6}, Lcom/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessorIndex()I

    #@97
    move-result v0

    #@98
    iget-object v2, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@9a
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaMethod;->getExitBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@9d
    move-result-object v2

    #@9e
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@a1
    move-result v2

    #@a2
    invoke-virtual {v6, v0, v2}, Lcom/android/dx/ssa/SsaBasicBlock;->replaceSuccessor(II)V

    #@a5
    invoke-virtual {p3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@a8
    return-void
.end method

.method private insertPlainInsnBefore(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/code/RegisterSpec;ILcom/android/dx/rop/cst/Constant;)V
    .registers 12

    #@0
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    #@3
    move-result-object v2

    #@4
    const/16 v0, 0x38

    #@6
    if-ne p4, v0, :cond_39

    #@8
    invoke-virtual {p3}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    #@b
    move-result-object v0

    #@c
    invoke-static {v0}, Lcom/android/dx/rop/code/Rops;->opMoveResultPseudo(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    #@f
    move-result-object v1

    #@10
    :goto_10
    if-nez p5, :cond_3e

    #@12
    new-instance v0, Lcom/android/dx/rop/code/PlainInsn;

    #@14
    invoke-virtual {v2}, Lcom/android/dx/rop/code/Insn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@17
    move-result-object v2

    #@18
    invoke-direct {v0, v1, v2, p3, p2}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@1b
    :goto_1b
    new-instance v1, Lcom/android/dx/ssa/NormalSsaInsn;

    #@1d
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@20
    move-result-object v2

    #@21
    invoke-direct {v1, v0, v2}, Lcom/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/ssa/SsaBasicBlock;)V

    #@24
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@2b
    move-result-object v0

    #@2c
    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    #@2f
    move-result v2

    #@30
    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@33
    iget-object v0, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@35
    invoke-virtual {v0, v1}, Lcom/android/dx/ssa/SsaMethod;->onInsnAdded(Lcom/android/dx/ssa/SsaInsn;)V

    #@38
    return-void

    #@39
    :cond_39
    invoke-static {p4, p3, p2, p5}, Lcom/android/dx/rop/code/Rops;->ropFor(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/rop/code/Rop;

    #@3c
    move-result-object v1

    #@3d
    goto :goto_10

    #@3e
    :cond_3e
    new-instance v0, Lcom/android/dx/rop/code/PlainCstInsn;

    #@40
    invoke-virtual {v2}, Lcom/android/dx/rop/code/Insn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@43
    move-result-object v2

    #@44
    move-object v3, p3

    #@45
    move-object v4, p2

    #@46
    move-object v5, p5

    #@47
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V

    #@4a
    goto :goto_1b
.end method

.method private insertThrowingInsnBefore(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/code/RegisterSpec;ILcom/android/dx/rop/cst/Constant;)V
    .registers 12

    #@0
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    #@3
    move-result-object v2

    #@4
    invoke-static {p4, p3, p2, p5}, Lcom/android/dx/rop/code/Rops;->ropFor(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/rop/code/Rop;

    #@7
    move-result-object v1

    #@8
    if-nez p5, :cond_33

    #@a
    new-instance v0, Lcom/android/dx/rop/code/ThrowingInsn;

    #@c
    invoke-virtual {v2}, Lcom/android/dx/rop/code/Insn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@f
    move-result-object v2

    #@10
    sget-object v3, Lcom/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/android/dx/rop/type/StdTypeList;

    #@12
    invoke-direct {v0, v1, v2, p2, v3}, Lcom/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;)V

    #@15
    :goto_15
    new-instance v1, Lcom/android/dx/ssa/NormalSsaInsn;

    #@17
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@1a
    move-result-object v2

    #@1b
    invoke-direct {v1, v0, v2}, Lcom/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/ssa/SsaBasicBlock;)V

    #@1e
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@25
    move-result-object v0

    #@26
    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    #@29
    move-result v2

    #@2a
    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@2d
    iget-object v0, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@2f
    invoke-virtual {v0, v1}, Lcom/android/dx/ssa/SsaMethod;->onInsnAdded(Lcom/android/dx/ssa/SsaInsn;)V

    #@32
    return-void

    #@33
    :cond_33
    new-instance v0, Lcom/android/dx/rop/code/ThrowingCstInsn;

    #@35
    invoke-virtual {v2}, Lcom/android/dx/rop/code/Insn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@38
    move-result-object v2

    #@39
    sget-object v4, Lcom/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/android/dx/rop/type/StdTypeList;

    #@3b
    move-object v3, p2

    #@3c
    move-object v5, p5

    #@3d
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)V

    #@40
    goto :goto_15
.end method

.method private movePropagate()V
    .registers 8

    #@0
    const/4 v2, 0x0

    #@1
    move v1, v2

    #@2
    :goto_2
    iget-object v0, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@4
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    #@7
    move-result v0

    #@8
    if-ge v1, v0, :cond_68

    #@a
    iget-object v0, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    #@f
    move-result-object v0

    #@10
    if-eqz v0, :cond_23

    #@12
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@15
    move-result-object v3

    #@16
    if-eqz v3, :cond_23

    #@18
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    #@1f
    move-result v3

    #@20
    const/4 v4, 0x2

    #@21
    if-eq v3, v4, :cond_27

    #@23
    :cond_23
    add-int/lit8 v0, v1, 0x1

    #@25
    move v1, v0

    #@26
    goto :goto_2

    #@27
    :cond_27
    iget-object v3, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@29
    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaMethod;->getUseListCopy()[Ljava/util/ArrayList;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@3c
    move-result v5

    #@3d
    iget v6, p0, Lcom/android/dx/ssa/EscapeAnalysis;->regCount:I

    #@3f
    if-ge v5, v6, :cond_49

    #@41
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@44
    move-result v5

    #@45
    iget v6, p0, Lcom/android/dx/ssa/EscapeAnalysis;->regCount:I

    #@47
    if-lt v5, v6, :cond_23

    #@49
    :cond_49
    new-instance v5, Lcom/android/dx/ssa/EscapeAnalysis$1;

    #@4b
    invoke-direct {v5, p0, v0, v4}, Lcom/android/dx/ssa/EscapeAnalysis$1;-><init>(Lcom/android/dx/ssa/EscapeAnalysis;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)V

    #@4e
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@51
    move-result v0

    #@52
    aget-object v0, v3, v0

    #@54
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@57
    move-result-object v3

    #@58
    :goto_58
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@5b
    move-result v0

    #@5c
    if-eqz v0, :cond_23

    #@5e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@61
    move-result-object v0

    #@62
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@64
    invoke-virtual {v0, v5}, Lcom/android/dx/ssa/SsaInsn;->mapSourceRegisters(Lcom/android/dx/ssa/RegisterMapper;)V

    #@67
    goto :goto_58

    #@68
    :cond_68
    return-void
.end method

.method public static process(Lcom/android/dx/ssa/SsaMethod;)V
    .registers 2

    #@0
    new-instance v0, Lcom/android/dx/ssa/EscapeAnalysis;

    #@2
    invoke-direct {v0, p0}, Lcom/android/dx/ssa/EscapeAnalysis;-><init>(Lcom/android/dx/ssa/SsaMethod;)V

    #@5
    invoke-direct {v0}, Lcom/android/dx/ssa/EscapeAnalysis;->run()V

    #@8
    return-void
.end method

.method private processInsn(Lcom/android/dx/ssa/SsaInsn;)V
    .registers 7

    #@0
    const/16 v3, 0x9

    #@2
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    #@9
    move-result v0

    #@a
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@d
    move-result-object v1

    #@e
    const/16 v2, 0x38

    #@10
    if-ne v0, v2, :cond_24

    #@12
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    #@15
    move-result-object v2

    #@16
    invoke-interface {v2}, Lcom/android/dx/rop/type/TypeBearer;->getBasicType()I

    #@19
    move-result v2

    #@1a
    if-ne v2, v3, :cond_24

    #@1c
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/EscapeAnalysis;->processMoveResultPseudoInsn(Lcom/android/dx/ssa/SsaInsn;)Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    #@1f
    move-result-object v0

    #@20
    invoke-direct {p0, v1, v0}, Lcom/android/dx/ssa/EscapeAnalysis;->processRegister(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;)V

    #@23
    :cond_23
    :goto_23
    return-void

    #@24
    :cond_24
    const/4 v2, 0x3

    #@25
    if-ne v0, v2, :cond_47

    #@27
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    #@2a
    move-result-object v2

    #@2b
    invoke-interface {v2}, Lcom/android/dx/rop/type/TypeBearer;->getBasicType()I

    #@2e
    move-result v2

    #@2f
    if-ne v2, v3, :cond_47

    #@31
    new-instance v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    #@33
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@36
    move-result v2

    #@37
    iget v3, p0, Lcom/android/dx/ssa/EscapeAnalysis;->regCount:I

    #@39
    sget-object v4, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->NONE:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@3b
    invoke-direct {v0, v2, v3, v4}, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;-><init>(IILcom/android/dx/ssa/EscapeAnalysis$EscapeState;)V

    #@3e
    iget-object v2, p0, Lcom/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    #@40
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@43
    invoke-direct {p0, v1, v0}, Lcom/android/dx/ssa/EscapeAnalysis;->processRegister(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;)V

    #@46
    goto :goto_23

    #@47
    :cond_47
    const/16 v2, 0x37

    #@49
    if-ne v0, v2, :cond_23

    #@4b
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    #@4e
    move-result-object v0

    #@4f
    invoke-interface {v0}, Lcom/android/dx/rop/type/TypeBearer;->getBasicType()I

    #@52
    move-result v0

    #@53
    if-ne v0, v3, :cond_23

    #@55
    new-instance v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    #@57
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@5a
    move-result v2

    #@5b
    iget v3, p0, Lcom/android/dx/ssa/EscapeAnalysis;->regCount:I

    #@5d
    sget-object v4, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->NONE:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@5f
    invoke-direct {v0, v2, v3, v4}, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;-><init>(IILcom/android/dx/ssa/EscapeAnalysis$EscapeState;)V

    #@62
    iget-object v2, p0, Lcom/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    #@64
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@67
    invoke-direct {p0, v1, v0}, Lcom/android/dx/ssa/EscapeAnalysis;->processRegister(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;)V

    #@6a
    goto :goto_23
.end method

.method private processMoveResultPseudoInsn(Lcom/android/dx/ssa/SsaInsn;)Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    .registers 6

    #@0
    const/4 v3, 0x0

    #@1
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@4
    move-result-object v1

    #@5
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/EscapeAnalysis;->getInsnForMove(Lcom/android/dx/ssa/SsaInsn;)Lcom/android/dx/ssa/SsaInsn;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    #@10
    move-result v2

    #@11
    sparse-switch v2, :sswitch_data_b4

    #@14
    const/4 v0, 0x0

    #@15
    :goto_15
    return-object v0

    #@16
    :sswitch_16
    new-instance v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    #@18
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@1b
    move-result v1

    #@1c
    iget v2, p0, Lcom/android/dx/ssa/EscapeAnalysis;->regCount:I

    #@1e
    sget-object v3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->NONE:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@20
    invoke-direct {v0, v1, v2, v3}, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;-><init>(IILcom/android/dx/ssa/EscapeAnalysis$EscapeState;)V

    #@23
    :goto_23
    iget-object v1, p0, Lcom/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@28
    goto :goto_15

    #@29
    :sswitch_29
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    #@34
    move-result-object v0

    #@35
    invoke-interface {v0}, Lcom/android/dx/rop/type/TypeBearer;->isConstant()Z

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_4c

    #@3b
    new-instance v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    #@3d
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@40
    move-result v1

    #@41
    iget v2, p0, Lcom/android/dx/ssa/EscapeAnalysis;->regCount:I

    #@43
    sget-object v3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->NONE:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@45
    invoke-direct {v0, v1, v2, v3}, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;-><init>(IILcom/android/dx/ssa/EscapeAnalysis$EscapeState;)V

    #@48
    const/4 v1, 0x1

    #@49
    iput-boolean v1, v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->replaceableArray:Z

    #@4b
    goto :goto_23

    #@4c
    :cond_4c
    new-instance v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    #@4e
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@51
    move-result v1

    #@52
    iget v2, p0, Lcom/android/dx/ssa/EscapeAnalysis;->regCount:I

    #@54
    sget-object v3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->GLOBAL:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@56
    invoke-direct {v0, v1, v2, v3}, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;-><init>(IILcom/android/dx/ssa/EscapeAnalysis$EscapeState;)V

    #@59
    goto :goto_23

    #@5a
    :sswitch_5a
    new-instance v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    #@5c
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@5f
    move-result v1

    #@60
    iget v2, p0, Lcom/android/dx/ssa/EscapeAnalysis;->regCount:I

    #@62
    sget-object v3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->GLOBAL:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@64
    invoke-direct {v0, v1, v2, v3}, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;-><init>(IILcom/android/dx/ssa/EscapeAnalysis$EscapeState;)V

    #@67
    goto :goto_23

    #@68
    :sswitch_68
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@6b
    move-result-object v0

    #@6c
    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@6f
    move-result-object v0

    #@70
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/EscapeAnalysis;->findSetIndex(Lcom/android/dx/rop/code/RegisterSpec;)I

    #@73
    move-result v2

    #@74
    iget-object v3, p0, Lcom/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    #@76
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@79
    move-result v3

    #@7a
    if-eq v2, v3, :cond_8e

    #@7c
    iget-object v0, p0, Lcom/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    #@7e
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@81
    move-result-object v0

    #@82
    check-cast v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    #@84
    iget-object v2, v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->regSet:Ljava/util/BitSet;

    #@86
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@89
    move-result v1

    #@8a
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    #@8d
    goto :goto_15

    #@8e
    :cond_8e
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    #@91
    move-result-object v0

    #@92
    sget-object v2, Lcom/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/android/dx/rop/type/Type;

    #@94
    if-ne v0, v2, :cond_a4

    #@96
    new-instance v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    #@98
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@9b
    move-result v1

    #@9c
    iget v2, p0, Lcom/android/dx/ssa/EscapeAnalysis;->regCount:I

    #@9e
    sget-object v3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->NONE:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@a0
    invoke-direct {v0, v1, v2, v3}, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;-><init>(IILcom/android/dx/ssa/EscapeAnalysis$EscapeState;)V

    #@a3
    goto :goto_23

    #@a4
    :cond_a4
    new-instance v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    #@a6
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@a9
    move-result v1

    #@aa
    iget v2, p0, Lcom/android/dx/ssa/EscapeAnalysis;->regCount:I

    #@ac
    sget-object v3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->GLOBAL:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@ae
    invoke-direct {v0, v1, v2, v3}, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;-><init>(IILcom/android/dx/ssa/EscapeAnalysis$EscapeState;)V

    #@b1
    goto/16 :goto_23

    #@b3
    nop

    #@b4
    :sswitch_data_b4
    .sparse-switch
        0x5 -> :sswitch_16
        0x26 -> :sswitch_68
        0x28 -> :sswitch_16
        0x29 -> :sswitch_29
        0x2a -> :sswitch_29
        0x2b -> :sswitch_68
        0x2d -> :sswitch_68
        0x2e -> :sswitch_5a
    .end sparse-switch
.end method

.method private processPhiUse(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/ssa/SsaInsn;",
            "Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/rop/code/RegisterSpec;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/EscapeAnalysis;->findSetIndex(Lcom/android/dx/rop/code/RegisterSpec;)I

    #@7
    move-result v1

    #@8
    iget-object v0, p0, Lcom/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v0

    #@e
    if-eq v1, v0, :cond_3b

    #@10
    iget-object v0, p0, Lcom/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    #@18
    if-eq v0, p2, :cond_3a

    #@1a
    const/4 v2, 0x0

    #@1b
    iput-boolean v2, p2, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->replaceableArray:Z

    #@1d
    iget-object v2, p2, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->regSet:Ljava/util/BitSet;

    #@1f
    iget-object v3, v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->regSet:Ljava/util/BitSet;

    #@21
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    #@24
    iget-object v2, p2, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@26
    iget-object v3, v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@28
    invoke-virtual {v2, v3}, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->compareTo(Ljava/lang/Enum;)I

    #@2b
    move-result v2

    #@2c
    if-gez v2, :cond_32

    #@2e
    iget-object v2, v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@30
    iput-object v2, p2, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@32
    :cond_32
    invoke-direct {p0, p2, v0}, Lcom/android/dx/ssa/EscapeAnalysis;->replaceNode(Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;)V

    #@35
    iget-object v0, p0, Lcom/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@3a
    :cond_3a
    :goto_3a
    return-void

    #@3b
    :cond_3b
    iget-object v0, p2, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->regSet:Ljava/util/BitSet;

    #@3d
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@44
    move-result v1

    #@45
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    #@48
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4f
    goto :goto_3a
.end method

.method private processRegister(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;)V
    .registers 8

    #@0
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8
    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_42

    #@e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v0

    #@12
    add-int/lit8 v0, v0, -0x1

    #@14
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/dx/rop/code/RegisterSpec;

    #@1a
    iget-object v1, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@1c
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@1f
    move-result v3

    #@20
    invoke-virtual {v1, v3}, Lcom/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    #@23
    move-result-object v1

    #@24
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v3

    #@28
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_8

    #@2e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v1

    #@32
    check-cast v1, Lcom/android/dx/ssa/SsaInsn;

    #@34
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@37
    move-result-object v4

    #@38
    if-nez v4, :cond_3e

    #@3a
    invoke-direct {p0, v1, p2, v2}, Lcom/android/dx/ssa/EscapeAnalysis;->processPhiUse(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;Ljava/util/ArrayList;)V

    #@3d
    goto :goto_28

    #@3e
    :cond_3e
    invoke-direct {p0, v0, v1, p2, v2}, Lcom/android/dx/ssa/EscapeAnalysis;->processUse(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;Ljava/util/ArrayList;)V

    #@41
    goto :goto_28

    #@42
    :cond_42
    return-void
.end method

.method private processUse(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/rop/code/RegisterSpec;",
            "Lcom/android/dx/ssa/SsaInsn;",
            "Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/rop/code/RegisterSpec;",
            ">;)V"
        }
    .end annotation

    #@0
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    invoke-virtual {p2}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    #@9
    move-result v0

    #@a
    sparse-switch v0, :sswitch_data_e8

    #@d
    :cond_d
    :goto_d
    return-void

    #@e
    :sswitch_e
    iget-object v0, p3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->regSet:Ljava/util/BitSet;

    #@10
    invoke-virtual {p2}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@17
    move-result v1

    #@18
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    #@1b
    invoke-virtual {p2}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@22
    goto :goto_d

    #@23
    :sswitch_23
    iget-object v0, p3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@25
    sget-object v1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->METHOD:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@27
    invoke-virtual {v0, v1}, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->compareTo(Ljava/lang/Enum;)I

    #@2a
    move-result v0

    #@2b
    if-gez v0, :cond_d

    #@2d
    sget-object v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->METHOD:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@2f
    iput-object v0, p3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@31
    goto :goto_d

    #@32
    :sswitch_32
    invoke-virtual {p2}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@35
    move-result-object v0

    #@36
    const/4 v1, 0x2

    #@37
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    #@3e
    move-result-object v0

    #@3f
    invoke-interface {v0}, Lcom/android/dx/rop/type/TypeBearer;->isConstant()Z

    #@42
    move-result v0

    #@43
    if-nez v0, :cond_47

    #@45
    iput-boolean v3, p3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->replaceableArray:Z

    #@47
    :cond_47
    :sswitch_47
    invoke-virtual {p2}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@4e
    move-result-object v0

    #@4f
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    #@52
    move-result-object v0

    #@53
    invoke-interface {v0}, Lcom/android/dx/rop/type/TypeBearer;->getBasicType()I

    #@56
    move-result v0

    #@57
    const/16 v1, 0x9

    #@59
    if-ne v0, v1, :cond_d

    #@5b
    iput-boolean v3, p3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->replaceableArray:Z

    #@5d
    invoke-virtual {p2}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@60
    move-result-object v0

    #@61
    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@64
    move-result-object v1

    #@65
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@68
    move-result v1

    #@69
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@6c
    move-result v2

    #@6d
    if-ne v1, v2, :cond_9a

    #@6f
    invoke-virtual {v0, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@72
    move-result-object v0

    #@73
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/EscapeAnalysis;->findSetIndex(Lcom/android/dx/rop/code/RegisterSpec;)I

    #@76
    move-result v0

    #@77
    iget-object v1, p0, Lcom/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    #@79
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@7c
    move-result v1

    #@7d
    if-eq v0, v1, :cond_d

    #@7f
    iget-object v1, p0, Lcom/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    #@81
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@84
    move-result-object v0

    #@85
    check-cast v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    #@87
    invoke-direct {p0, v0, p3}, Lcom/android/dx/ssa/EscapeAnalysis;->addEdge(Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;)V

    #@8a
    iget-object v1, p3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@8c
    iget-object v2, v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@8e
    invoke-virtual {v1, v2}, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->compareTo(Ljava/lang/Enum;)I

    #@91
    move-result v1

    #@92
    if-gez v1, :cond_d

    #@94
    iget-object v0, v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@96
    iput-object v0, p3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@98
    goto/16 :goto_d

    #@9a
    :cond_9a
    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@9d
    move-result-object v0

    #@9e
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/EscapeAnalysis;->findSetIndex(Lcom/android/dx/rop/code/RegisterSpec;)I

    #@a1
    move-result v0

    #@a2
    iget-object v1, p0, Lcom/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    #@a4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@a7
    move-result v1

    #@a8
    if-eq v0, v1, :cond_d

    #@aa
    iget-object v1, p0, Lcom/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    #@ac
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@af
    move-result-object v0

    #@b0
    check-cast v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    #@b2
    invoke-direct {p0, p3, v0}, Lcom/android/dx/ssa/EscapeAnalysis;->addEdge(Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;)V

    #@b5
    iget-object v1, v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@b7
    iget-object v2, p3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@b9
    invoke-virtual {v1, v2}, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->compareTo(Ljava/lang/Enum;)I

    #@bc
    move-result v1

    #@bd
    if-gez v1, :cond_d

    #@bf
    iget-object v1, p3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@c1
    iput-object v1, v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@c3
    goto/16 :goto_d

    #@c5
    :sswitch_c5
    invoke-virtual {p2}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@c8
    move-result-object v0

    #@c9
    invoke-virtual {v0, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@cc
    move-result-object v0

    #@cd
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    #@d0
    move-result-object v0

    #@d1
    invoke-interface {v0}, Lcom/android/dx/rop/type/TypeBearer;->isConstant()Z

    #@d4
    move-result v0

    #@d5
    if-nez v0, :cond_d

    #@d7
    iput-boolean v3, p3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->replaceableArray:Z

    #@d9
    goto/16 :goto_d

    #@db
    :sswitch_db
    sget-object v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->GLOBAL:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@dd
    iput-object v0, p3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@df
    goto/16 :goto_d

    #@e1
    :sswitch_e1
    sget-object v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->INTER:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@e3
    iput-object v0, p3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@e5
    goto/16 :goto_d

    #@e7
    nop

    #@e8
    :sswitch_data_e8
    .sparse-switch
        0x2 -> :sswitch_e
        0x7 -> :sswitch_23
        0x8 -> :sswitch_23
        0x21 -> :sswitch_e1
        0x23 -> :sswitch_e1
        0x26 -> :sswitch_c5
        0x27 -> :sswitch_32
        0x2b -> :sswitch_23
        0x2f -> :sswitch_47
        0x30 -> :sswitch_db
        0x31 -> :sswitch_e1
        0x32 -> :sswitch_e1
        0x33 -> :sswitch_e1
        0x34 -> :sswitch_e1
        0x35 -> :sswitch_e1
    .end sparse-switch
.end method

.method private replaceDef(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/ssa/SsaInsn;ILjava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/ssa/SsaInsn;",
            "Lcom/android/dx/ssa/SsaInsn;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/rop/code/RegisterSpec;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    #@7
    move-result-object v7

    #@8
    const/4 v0, 0x0

    #@9
    move v6, v0

    #@a
    :goto_a
    if-ge v6, p3, :cond_30

    #@c
    invoke-virtual {v7}, Lcom/android/dx/rop/type/Type;->getComponentType()Lcom/android/dx/rop/type/Type;

    #@f
    move-result-object v0

    #@10
    invoke-static {v0}, Lcom/android/dx/rop/cst/Zeroes;->zeroFor(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/Constant;

    #@13
    move-result-object v5

    #@14
    move-object v0, v5

    #@15
    check-cast v0, Lcom/android/dx/rop/cst/TypedConstant;

    #@17
    iget-object v1, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@19
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaMethod;->makeNewSsaReg()I

    #@1c
    move-result v1

    #@1d
    invoke-static {v1, v0}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24
    sget-object v2, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    #@26
    const/4 v4, 0x5

    #@27
    move-object v0, p0

    #@28
    move-object v1, p1

    #@29
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/ssa/EscapeAnalysis;->insertPlainInsnBefore(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/code/RegisterSpec;ILcom/android/dx/rop/cst/Constant;)V

    #@2c
    add-int/lit8 v0, v6, 0x1

    #@2e
    move v6, v0

    #@2f
    goto :goto_a

    #@30
    :cond_30
    return-void
.end method

.method private replaceNode(Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;)V
    .registers 6

    #@0
    iget-object v0, p2, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->parentSets:Ljava/util/ArrayList;

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
    if-eqz v0, :cond_22

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    #@12
    iget-object v2, v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->childSets:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@17
    iget-object v2, v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->childSets:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c
    iget-object v2, p1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->parentSets:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21
    goto :goto_6

    #@22
    :cond_22
    iget-object v0, p2, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->childSets:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v1

    #@28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_44

    #@2e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    #@34
    iget-object v2, v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->parentSets:Ljava/util/ArrayList;

    #@36
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@39
    iget-object v2, v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->parentSets:Ljava/util/ArrayList;

    #@3b
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3e
    iget-object v2, p1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->childSets:Ljava/util/ArrayList;

    #@40
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@43
    goto :goto_28

    #@44
    :cond_44
    return-void
.end method

.method private replaceUse(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/ssa/SsaInsn;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/ssa/SsaInsn;",
            "Lcom/android/dx/ssa/SsaInsn;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/rop/code/RegisterSpec;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;)V"
        }
    .end annotation

    #@0
    const/4 v5, 0x0

    #@1
    const/4 v9, 0x5

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v1, 0x0

    #@4
    const/4 v4, 0x2

    #@5
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v7

    #@9
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    #@10
    move-result v0

    #@11
    sparse-switch v0, :sswitch_data_fc

    #@14
    :cond_14
    :goto_14
    return-void

    #@15
    :sswitch_15
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/EscapeAnalysis;->getMoveForInsn(Lcom/android/dx/ssa/SsaInsn;)Lcom/android/dx/ssa/SsaInsn;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Lcom/android/dx/rop/cst/CstLiteralBits;

    #@27
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstLiteralBits;->getIntBits()I

    #@2a
    move-result v0

    #@2b
    if-ge v0, v7, :cond_4b

    #@2d
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Lcom/android/dx/rop/code/RegisterSpec;

    #@33
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@3a
    move-result v2

    #@3b
    invoke-virtual {v0, v2}, Lcom/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@3e
    move-result-object v3

    #@3f
    invoke-static {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@42
    move-result-object v2

    #@43
    move-object v0, p0

    #@44
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/ssa/EscapeAnalysis;->insertPlainInsnBefore(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/code/RegisterSpec;ILcom/android/dx/rop/cst/Constant;)V

    #@47
    :goto_47
    invoke-virtual {p4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@4a
    goto :goto_14

    #@4b
    :cond_4b
    invoke-virtual {v2, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@4e
    move-result-object v0

    #@4f
    invoke-direct {p0, v1, v0, p4}, Lcom/android/dx/ssa/EscapeAnalysis;->insertExceptionThrow(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpec;Ljava/util/HashSet;)V

    #@52
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@55
    move-result-object v0

    #@56
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@59
    move-result-object v0

    #@5a
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5d
    move-result-object v0

    #@5e
    invoke-virtual {p4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@61
    goto :goto_47

    #@62
    :sswitch_62
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@65
    move-result-object v2

    #@66
    invoke-virtual {v2, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@69
    move-result-object v0

    #@6a
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    #@6d
    move-result-object v0

    #@6e
    check-cast v0, Lcom/android/dx/rop/cst/CstLiteralBits;

    #@70
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstLiteralBits;->getIntBits()I

    #@73
    move-result v6

    #@74
    if-ge v6, v7, :cond_9a

    #@76
    invoke-virtual {v2, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@79
    move-result-object v1

    #@7a
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7d
    move-result-object v0

    #@7e
    check-cast v0, Lcom/android/dx/rop/code/RegisterSpec;

    #@80
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@83
    move-result v0

    #@84
    invoke-virtual {v1, v0}, Lcom/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@87
    move-result-object v3

    #@88
    invoke-static {v1}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@8b
    move-result-object v2

    #@8c
    move-object v0, p0

    #@8d
    move-object v1, p1

    #@8e
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/ssa/EscapeAnalysis;->insertPlainInsnBefore(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/code/RegisterSpec;ILcom/android/dx/rop/cst/Constant;)V

    #@91
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->withSimpleType()Lcom/android/dx/rop/code/RegisterSpec;

    #@94
    move-result-object v0

    #@95
    invoke-virtual {p3, v6, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@98
    goto/16 :goto_14

    #@9a
    :cond_9a
    invoke-virtual {v2, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@9d
    move-result-object v0

    #@9e
    invoke-direct {p0, p1, v0, p4}, Lcom/android/dx/ssa/EscapeAnalysis;->insertExceptionThrow(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpec;Ljava/util/HashSet;)V

    #@a1
    goto/16 :goto_14

    #@a3
    :sswitch_a3
    invoke-virtual {p2}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@a6
    move-result-object v0

    #@a7
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@aa
    move-result-object v0

    #@ab
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    #@ae
    move-result-object v5

    #@af
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/EscapeAnalysis;->getMoveForInsn(Lcom/android/dx/ssa/SsaInsn;)Lcom/android/dx/ssa/SsaInsn;

    #@b2
    move-result-object v1

    #@b3
    sget-object v2, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    #@b5
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@b8
    move-result-object v3

    #@b9
    check-cast v5, Lcom/android/dx/rop/cst/Constant;

    #@bb
    move-object v0, p0

    #@bc
    move v4, v9

    #@bd
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/ssa/EscapeAnalysis;->insertPlainInsnBefore(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/code/RegisterSpec;ILcom/android/dx/rop/cst/Constant;)V

    #@c0
    invoke-virtual {p4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@c3
    goto/16 :goto_14

    #@c5
    :sswitch_c5
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    #@c8
    move-result-object v0

    #@c9
    check-cast v0, Lcom/android/dx/rop/code/FillArrayDataInsn;

    #@cb
    invoke-virtual {v0}, Lcom/android/dx/rop/code/FillArrayDataInsn;->getInitValues()Ljava/util/ArrayList;

    #@ce
    move-result-object v8

    #@cf
    move v6, v1

    #@d0
    :goto_d0
    if-ge v6, v7, :cond_14

    #@d2
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d5
    move-result-object v0

    #@d6
    check-cast v0, Lcom/android/dx/rop/code/RegisterSpec;

    #@d8
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@db
    move-result v1

    #@dc
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@df
    move-result-object v0

    #@e0
    check-cast v0, Lcom/android/dx/rop/type/TypeBearer;

    #@e2
    invoke-static {v1, v0}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    #@e5
    move-result-object v3

    #@e6
    sget-object v2, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    #@e8
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@eb
    move-result-object v5

    #@ec
    check-cast v5, Lcom/android/dx/rop/cst/Constant;

    #@ee
    move-object v0, p0

    #@ef
    move-object v1, p1

    #@f0
    move v4, v9

    #@f1
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/ssa/EscapeAnalysis;->insertPlainInsnBefore(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/code/RegisterSpec;ILcom/android/dx/rop/cst/Constant;)V

    #@f4
    invoke-virtual {p3, v6, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@f7
    add-int/lit8 v0, v6, 0x1

    #@f9
    move v6, v0

    #@fa
    goto :goto_d0

    #@fb
    nop

    #@fc
    :sswitch_data_fc
    .sparse-switch
        0x22 -> :sswitch_a3
        0x26 -> :sswitch_15
        0x27 -> :sswitch_62
        0x39 -> :sswitch_c5
    .end sparse-switch
.end method

.method private run()V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@2
    new-instance v1, Lcom/android/dx/ssa/EscapeAnalysis$2;

    #@4
    invoke-direct {v1, p0}, Lcom/android/dx/ssa/EscapeAnalysis$2;-><init>(Lcom/android/dx/ssa/EscapeAnalysis;)V

    #@7
    invoke-virtual {v0, v1}, Lcom/android/dx/ssa/SsaMethod;->forEachBlockDepthFirstDom(Lcom/android/dx/ssa/SsaBasicBlock$Visitor;)V

    #@a
    iget-object v0, p0, Lcom/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v2

    #@10
    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_43

    #@16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    #@1c
    iget-object v1, v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@1e
    sget-object v3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->NONE:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@20
    if-eq v1, v3, :cond_10

    #@22
    iget-object v1, v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->childSets:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v3

    #@28
    :cond_28
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_10

    #@2e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v1

    #@32
    check-cast v1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    #@34
    iget-object v4, v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@36
    iget-object v5, v1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@38
    invoke-virtual {v4, v5}, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->compareTo(Ljava/lang/Enum;)I

    #@3b
    move-result v4

    #@3c
    if-lez v4, :cond_28

    #@3e
    iget-object v4, v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@40
    iput-object v4, v1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@42
    goto :goto_28

    #@43
    :cond_43
    invoke-direct {p0}, Lcom/android/dx/ssa/EscapeAnalysis;->scalarReplacement()V

    #@46
    return-void
.end method

.method private scalarReplacement()V
    .registers 9

    #@0
    const/4 v7, 0x0

    #@1
    iget-object v0, p0, Lcom/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v1

    #@7
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_84

    #@d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    #@13
    iget-boolean v2, v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->replaceableArray:Z

    #@15
    if-eqz v2, :cond_7

    #@17
    iget-object v2, v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@19
    sget-object v3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->NONE:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@1b
    if-ne v2, v3, :cond_7

    #@1d
    iget-object v0, v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->regSet:Ljava/util/BitSet;

    #@1f
    invoke-virtual {v0, v7}, Ljava/util/BitSet;->nextSetBit(I)I

    #@22
    move-result v2

    #@23
    iget-object v0, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@25
    invoke-virtual {v0, v2}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    #@28
    move-result-object v3

    #@29
    invoke-direct {p0, v3}, Lcom/android/dx/ssa/EscapeAnalysis;->getInsnForMove(Lcom/android/dx/ssa/SsaInsn;)Lcom/android/dx/ssa/SsaInsn;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0, v7}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Lcom/android/dx/rop/cst/CstLiteralBits;

    #@3b
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstLiteralBits;->getIntBits()I

    #@3e
    move-result v0

    #@3f
    new-instance v5, Ljava/util/ArrayList;

    #@41
    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@44
    new-instance v6, Ljava/util/HashSet;

    #@46
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    #@49
    invoke-direct {p0, v3, v4, v0, v5}, Lcom/android/dx/ssa/EscapeAnalysis;->replaceDef(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/ssa/SsaInsn;ILjava/util/ArrayList;)V

    #@4c
    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@4f
    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@52
    iget-object v0, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@54
    invoke-virtual {v0, v2}, Lcom/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    #@57
    move-result-object v0

    #@58
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5b
    move-result-object v2

    #@5c
    :goto_5c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@5f
    move-result v0

    #@60
    if-eqz v0, :cond_6f

    #@62
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@65
    move-result-object v0

    #@66
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@68
    invoke-direct {p0, v0, v4, v5, v6}, Lcom/android/dx/ssa/EscapeAnalysis;->replaceUse(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/ssa/SsaInsn;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    #@6b
    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@6e
    goto :goto_5c

    #@6f
    :cond_6f
    iget-object v0, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@71
    invoke-virtual {v0, v6}, Lcom/android/dx/ssa/SsaMethod;->deleteInsns(Ljava/util/Set;)V

    #@74
    iget-object v0, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@76
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->onInsnsChanged()V

    #@79
    iget-object v0, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@7b
    iget v2, p0, Lcom/android/dx/ssa/EscapeAnalysis;->regCount:I

    #@7d
    invoke-static {v0, v2}, Lcom/android/dx/ssa/SsaConverter;->updateSsaMethod(Lcom/android/dx/ssa/SsaMethod;I)V

    #@80
    invoke-direct {p0}, Lcom/android/dx/ssa/EscapeAnalysis;->movePropagate()V

    #@83
    goto :goto_7

    #@84
    :cond_84
    return-void
.end method
