.class public final Lcom/android/dx/ssa/SsaBasicBlock;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/ssa/SsaBasicBlock$LabelComparator;,
        Lcom/android/dx/ssa/SsaBasicBlock$Visitor;
    }
.end annotation


# static fields
.field public static final LABEL_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final domChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation
.end field

.field private index:I

.field private insns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private liveIn:Lcom/android/dx/util/IntSet;

.field private liveOut:Lcom/android/dx/util/IntSet;

.field private movesFromPhisAtBeginning:I

.field private movesFromPhisAtEnd:I

.field private parent:Lcom/android/dx/ssa/SsaMethod;

.field private predecessors:Ljava/util/BitSet;

.field private primarySuccessor:I

.field private reachable:I

.field private ropLabel:I

.field private successorList:Lcom/android/dx/util/IntList;

.field private successors:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/android/dx/ssa/SsaBasicBlock$LabelComparator;

    #@2
    invoke-direct {v0}, Lcom/android/dx/ssa/SsaBasicBlock$LabelComparator;-><init>()V

    #@5
    sput-object v0, Lcom/android/dx/ssa/SsaBasicBlock;->LABEL_COMPARATOR:Ljava/util/Comparator;

    #@7
    return-void
.end method

.method public constructor <init>(IILcom/android/dx/ssa/SsaMethod;)V
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v0, -0x1

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    iput v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    #@7
    iput v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->movesFromPhisAtEnd:I

    #@9
    iput v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->movesFromPhisAtBeginning:I

    #@b
    iput v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->reachable:I

    #@d
    iput-object p3, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    #@f
    iput p1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    #@11
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    #@18
    iput p2, p0, Lcom/android/dx/ssa/SsaBasicBlock;->ropLabel:I

    #@1a
    new-instance v0, Ljava/util/BitSet;

    #@1c
    invoke-virtual {p3}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@23
    move-result v1

    #@24
    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    #@27
    iput-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    #@29
    new-instance v0, Ljava/util/BitSet;

    #@2b
    invoke-virtual {p3}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@32
    move-result v1

    #@33
    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    #@36
    iput-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    #@38
    new-instance v0, Lcom/android/dx/util/IntList;

    #@3a
    invoke-direct {v0}, Lcom/android/dx/util/IntList;-><init>()V

    #@3d
    iput-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    #@3f
    new-instance v0, Ljava/util/ArrayList;

    #@41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@44
    iput-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->domChildren:Ljava/util/ArrayList;

    #@46
    return-void
.end method

.method static synthetic access$000(Lcom/android/dx/ssa/SsaBasicBlock;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->ropLabel:I

    #@2
    return v0
.end method

.method private static checkRegUsed(Ljava/util/BitSet;Lcom/android/dx/rop/code/RegisterSpec;)Z
    .registers 5

    #@0
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_19

    #@e
    const/4 v2, 0x2

    #@f
    if-ne v1, v2, :cond_1b

    #@11
    add-int/lit8 v0, v0, 0x1

    #@13
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1b

    #@19
    :cond_19
    const/4 v0, 0x1

    #@1a
    :goto_1a
    return v0

    #@1b
    :cond_1b
    const/4 v0, 0x0

    #@1c
    goto :goto_1a
.end method

.method private getCountPhiInsns()I
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    const/4 v0, 0x0

    #@7
    move v1, v0

    #@8
    :goto_8
    if-ge v1, v2, :cond_16

    #@a
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@12
    instance-of v0, v0, Lcom/android/dx/ssa/PhiInsn;

    #@14
    if-nez v0, :cond_17

    #@16
    :cond_16
    return v1

    #@17
    :cond_17
    add-int/lit8 v0, v1, 0x1

    #@19
    move v1, v0

    #@1a
    goto :goto_8
.end method

.method public static newFromRop(Lcom/android/dx/rop/code/RopMethod;ILcom/android/dx/ssa/SsaMethod;)Lcom/android/dx/ssa/SsaBasicBlock;
    .registers 12

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1}, Lcom/android/dx/rop/code/BasicBlockList;->get(I)Lcom/android/dx/rop/code/BasicBlock;

    #@7
    move-result-object v2

    #@8
    new-instance v3, Lcom/android/dx/ssa/SsaBasicBlock;

    #@a
    invoke-virtual {v2}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    #@d
    move-result v0

    #@e
    invoke-direct {v3, p1, v0, p2}, Lcom/android/dx/ssa/SsaBasicBlock;-><init>(IILcom/android/dx/ssa/SsaMethod;)V

    #@11
    invoke-virtual {v2}, Lcom/android/dx/rop/code/BasicBlock;->getInsns()Lcom/android/dx/rop/code/InsnList;

    #@14
    move-result-object v4

    #@15
    iget-object v0, v3, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v4}, Lcom/android/dx/rop/code/InsnList;->size()I

    #@1a
    move-result v5

    #@1b
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    #@1e
    const/4 v0, 0x0

    #@1f
    invoke-virtual {v4}, Lcom/android/dx/rop/code/InsnList;->size()I

    #@22
    move-result v5

    #@23
    :goto_23
    if-ge v0, v5, :cond_36

    #@25
    iget-object v6, v3, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    #@27
    new-instance v7, Lcom/android/dx/ssa/NormalSsaInsn;

    #@29
    invoke-virtual {v4, v0}, Lcom/android/dx/rop/code/InsnList;->get(I)Lcom/android/dx/rop/code/Insn;

    #@2c
    move-result-object v8

    #@2d
    invoke-direct {v7, v8, v3}, Lcom/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/ssa/SsaBasicBlock;)V

    #@30
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@33
    add-int/lit8 v0, v0, 0x1

    #@35
    goto :goto_23

    #@36
    :cond_36
    invoke-virtual {v2}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    #@39
    move-result v0

    #@3a
    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/RopMethod;->labelToPredecessors(I)Lcom/android/dx/util/IntList;

    #@3d
    move-result-object v0

    #@3e
    invoke-static {v1, v0}, Lcom/android/dx/ssa/SsaMethod;->bitSetFromLabelList(Lcom/android/dx/rop/code/BasicBlockList;Lcom/android/dx/util/IntList;)Ljava/util/BitSet;

    #@41
    move-result-object v0

    #@42
    iput-object v0, v3, Lcom/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    #@44
    invoke-virtual {v2}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    #@47
    move-result-object v0

    #@48
    invoke-static {v1, v0}, Lcom/android/dx/ssa/SsaMethod;->bitSetFromLabelList(Lcom/android/dx/rop/code/BasicBlockList;Lcom/android/dx/util/IntList;)Ljava/util/BitSet;

    #@4b
    move-result-object v0

    #@4c
    iput-object v0, v3, Lcom/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    #@4e
    invoke-virtual {v2}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    #@51
    move-result-object v0

    #@52
    invoke-static {v1, v0}, Lcom/android/dx/ssa/SsaMethod;->indexListFromLabelList(Lcom/android/dx/rop/code/BasicBlockList;Lcom/android/dx/util/IntList;)Lcom/android/dx/util/IntList;

    #@55
    move-result-object v0

    #@56
    iput-object v0, v3, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    #@58
    iget-object v0, v3, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    #@5a
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    #@5d
    move-result v0

    #@5e
    if-eqz v0, :cond_69

    #@60
    invoke-virtual {v2}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    #@63
    move-result v0

    #@64
    if-gez v0, :cond_6a

    #@66
    const/4 v0, -0x1

    #@67
    :goto_67
    iput v0, v3, Lcom/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    #@69
    :cond_69
    return-object v3

    #@6a
    :cond_6a
    invoke-virtual {v1, v0}, Lcom/android/dx/rop/code/BasicBlockList;->indexOfLabel(I)I

    #@6d
    move-result v0

    #@6e
    goto :goto_67
.end method

.method private scheduleUseBeforeAssigned(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;)V"
        }
    .end annotation

    #@0
    const/4 v5, 0x0

    #@1
    new-instance v6, Ljava/util/BitSet;

    #@3
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    #@5
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    #@8
    move-result v0

    #@9
    invoke-direct {v6, v0}, Ljava/util/BitSet;-><init>(I)V

    #@c
    new-instance v7, Ljava/util/BitSet;

    #@e
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    #@10
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    #@13
    move-result v0

    #@14
    invoke-direct {v7, v0}, Ljava/util/BitSet;-><init>(I)V

    #@17
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@1a
    move-result v2

    #@1b
    move v4, v5

    #@1c
    :goto_1c
    if-ge v4, v2, :cond_e8

    #@1e
    move v1, v4

    #@1f
    :goto_1f
    if-ge v1, v2, :cond_43

    #@21
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@27
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@2e
    move-result-object v0

    #@2f
    invoke-static {v6, v0}, Lcom/android/dx/ssa/SsaBasicBlock;->setRegsUsed(Ljava/util/BitSet;Lcom/android/dx/rop/code/RegisterSpec;)V

    #@32
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@38
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@3b
    move-result-object v0

    #@3c
    invoke-static {v7, v0}, Lcom/android/dx/ssa/SsaBasicBlock;->setRegsUsed(Ljava/util/BitSet;Lcom/android/dx/rop/code/RegisterSpec;)V

    #@3f
    add-int/lit8 v0, v1, 0x1

    #@41
    move v1, v0

    #@42
    goto :goto_1f

    #@43
    :cond_43
    move v3, v4

    #@44
    move v1, v4

    #@45
    :goto_45
    if-ge v3, v2, :cond_61

    #@47
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4a
    move-result-object v0

    #@4b
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@4d
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@50
    move-result-object v0

    #@51
    invoke-static {v6, v0}, Lcom/android/dx/ssa/SsaBasicBlock;->checkRegUsed(Ljava/util/BitSet;Lcom/android/dx/rop/code/RegisterSpec;)Z

    #@54
    move-result v0

    #@55
    if-nez v0, :cond_5d

    #@57
    add-int/lit8 v0, v1, 0x1

    #@59
    invoke-static {p1, v3, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    #@5c
    move v1, v0

    #@5d
    :cond_5d
    add-int/lit8 v0, v3, 0x1

    #@5f
    move v3, v0

    #@60
    goto :goto_45

    #@61
    :cond_61
    if-ne v4, v1, :cond_e5

    #@63
    move v3, v1

    #@64
    :goto_64
    if-ge v3, v2, :cond_e3

    #@66
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@69
    move-result-object v0

    #@6a
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@6c
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@6f
    move-result-object v4

    #@70
    invoke-static {v6, v4}, Lcom/android/dx/ssa/SsaBasicBlock;->checkRegUsed(Ljava/util/BitSet;Lcom/android/dx/rop/code/RegisterSpec;)Z

    #@73
    move-result v4

    #@74
    if-eqz v4, :cond_df

    #@76
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@79
    move-result-object v4

    #@7a
    invoke-virtual {v4, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@7d
    move-result-object v4

    #@7e
    invoke-static {v7, v4}, Lcom/android/dx/ssa/SsaBasicBlock;->checkRegUsed(Ljava/util/BitSet;Lcom/android/dx/rop/code/RegisterSpec;)Z

    #@81
    move-result v4

    #@82
    if-eqz v4, :cond_df

    #@84
    invoke-static {p1, v1, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    #@87
    :goto_87
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@8a
    move-result-object v2

    #@8b
    iget-object v3, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    #@8d
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@90
    move-result v4

    #@91
    invoke-virtual {v3, v4}, Lcom/android/dx/ssa/SsaMethod;->borrowSpareRegister(I)I

    #@94
    move-result v3

    #@95
    invoke-virtual {v2, v3}, Lcom/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@98
    move-result-object v3

    #@99
    new-instance v4, Lcom/android/dx/ssa/NormalSsaInsn;

    #@9b
    new-instance v8, Lcom/android/dx/rop/code/PlainInsn;

    #@9d
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    #@a0
    move-result-object v9

    #@a1
    invoke-static {v9}, Lcom/android/dx/rop/code/Rops;->opMove(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    #@a4
    move-result-object v9

    #@a5
    sget-object v10, Lcom/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/android/dx/rop/code/SourcePosition;

    #@a7
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@aa
    move-result-object v0

    #@ab
    invoke-direct {v8, v9, v10, v3, v0}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@ae
    invoke-direct {v4, v8, p0}, Lcom/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/ssa/SsaBasicBlock;)V

    #@b1
    add-int/lit8 v0, v1, 0x1

    #@b3
    invoke-interface {p1, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@b6
    invoke-static {v3}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@b9
    move-result-object v1

    #@ba
    new-instance v3, Lcom/android/dx/ssa/NormalSsaInsn;

    #@bc
    new-instance v4, Lcom/android/dx/rop/code/PlainInsn;

    #@be
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    #@c1
    move-result-object v8

    #@c2
    invoke-static {v8}, Lcom/android/dx/rop/code/Rops;->opMove(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    #@c5
    move-result-object v8

    #@c6
    sget-object v9, Lcom/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/android/dx/rop/code/SourcePosition;

    #@c8
    invoke-direct {v4, v8, v9, v2, v1}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@cb
    invoke-direct {v3, v4, p0}, Lcom/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/ssa/SsaBasicBlock;)V

    #@ce
    invoke-interface {p1, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@d1
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@d4
    move-result v1

    #@d5
    :goto_d5
    invoke-virtual {v6}, Ljava/util/BitSet;->clear()V

    #@d8
    invoke-virtual {v7}, Ljava/util/BitSet;->clear()V

    #@db
    move v2, v1

    #@dc
    move v4, v0

    #@dd
    goto/16 :goto_1c

    #@df
    :cond_df
    add-int/lit8 v0, v3, 0x1

    #@e1
    move v3, v0

    #@e2
    goto :goto_64

    #@e3
    :cond_e3
    const/4 v0, 0x0

    #@e4
    goto :goto_87

    #@e5
    :cond_e5
    move v0, v1

    #@e6
    move v1, v2

    #@e7
    goto :goto_d5

    #@e8
    :cond_e8
    return-void
.end method

.method private static setRegsUsed(Ljava/util/BitSet;Lcom/android/dx/rop/code/RegisterSpec;)V
    .registers 4

    #@0
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    #@7
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@a
    move-result v0

    #@b
    const/4 v1, 0x1

    #@c
    if-le v0, v1, :cond_17

    #@e
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@11
    move-result v0

    #@12
    add-int/lit8 v0, v0, 0x1

    #@14
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    #@17
    :cond_17
    return-void
.end method


# virtual methods
.method public addDomChild(Lcom/android/dx/ssa/SsaBasicBlock;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->domChildren:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public addInsnToHead(Lcom/android/dx/rop/code/Insn;)V
    .registers 5

    #@0
    invoke-static {p1, p0}, Lcom/android/dx/ssa/SsaInsn;->makeFromRop(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaInsn;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    #@6
    invoke-direct {p0}, Lcom/android/dx/ssa/SsaBasicBlock;->getCountPhiInsns()I

    #@9
    move-result v2

    #@a
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@d
    iget-object v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    #@f
    invoke-virtual {v1, v0}, Lcom/android/dx/ssa/SsaMethod;->onInsnAdded(Lcom/android/dx/ssa/SsaInsn;)V

    #@12
    return-void
.end method

.method public addLiveIn(I)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->liveIn:Lcom/android/dx/util/IntSet;

    #@2
    if-nez v0, :cond_10

    #@4
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    #@6
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    #@9
    move-result v0

    #@a
    invoke-static {v0}, Lcom/android/dx/ssa/SetFactory;->makeLivenessSet(I)Lcom/android/dx/util/IntSet;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->liveIn:Lcom/android/dx/util/IntSet;

    #@10
    :cond_10
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->liveIn:Lcom/android/dx/util/IntSet;

    #@12
    invoke-interface {v0, p1}, Lcom/android/dx/util/IntSet;->add(I)V

    #@15
    return-void
.end method

.method public addLiveOut(I)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->liveOut:Lcom/android/dx/util/IntSet;

    #@2
    if-nez v0, :cond_10

    #@4
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    #@6
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    #@9
    move-result v0

    #@a
    invoke-static {v0}, Lcom/android/dx/ssa/SetFactory;->makeLivenessSet(I)Lcom/android/dx/util/IntSet;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->liveOut:Lcom/android/dx/util/IntSet;

    #@10
    :cond_10
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->liveOut:Lcom/android/dx/util/IntSet;

    #@12
    invoke-interface {v0, p1}, Lcom/android/dx/util/IntSet;->add(I)V

    #@15
    return-void
.end method

.method public addMoveToBeginning(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)V
    .registers 8

    #@0
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@7
    move-result v1

    #@8
    if-ne v0, v1, :cond_b

    #@a
    :goto_a
    return-void

    #@b
    :cond_b
    invoke-static {p2}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@e
    move-result-object v0

    #@f
    new-instance v1, Lcom/android/dx/ssa/NormalSsaInsn;

    #@11
    new-instance v2, Lcom/android/dx/rop/code/PlainInsn;

    #@13
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    #@16
    move-result-object v3

    #@17
    invoke-static {v3}, Lcom/android/dx/rop/code/Rops;->opMove(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    #@1a
    move-result-object v3

    #@1b
    sget-object v4, Lcom/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/android/dx/rop/code/SourcePosition;

    #@1d
    invoke-direct {v2, v3, v4, p1, v0}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@20
    invoke-direct {v1, v2, p0}, Lcom/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/ssa/SsaBasicBlock;)V

    #@23
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    #@25
    invoke-direct {p0}, Lcom/android/dx/ssa/SsaBasicBlock;->getCountPhiInsns()I

    #@28
    move-result v2

    #@29
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@2c
    iget v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->movesFromPhisAtBeginning:I

    #@2e
    add-int/lit8 v0, v0, 0x1

    #@30
    iput v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->movesFromPhisAtBeginning:I

    #@32
    goto :goto_a
.end method

.method public addMoveToEnd(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)V
    .registers 8

    #@0
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@7
    move-result v1

    #@8
    if-ne v0, v1, :cond_b

    #@a
    :cond_a
    :goto_a
    return-void

    #@b
    :cond_b
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    #@d
    iget-object v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@12
    move-result v1

    #@13
    add-int/lit8 v1, v1, -0x1

    #@15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/android/dx/ssa/NormalSsaInsn;

    #@1b
    invoke-virtual {v0}, Lcom/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@1e
    move-result-object v1

    #@1f
    if-nez v1, :cond_2b

    #@21
    invoke-virtual {v0}, Lcom/android/dx/ssa/NormalSsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@28
    move-result v0

    #@29
    if-lez v0, :cond_4e

    #@2b
    :cond_2b
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    #@2d
    const/4 v1, 0x0

    #@2e
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    #@31
    move-result v0

    #@32
    move v1, v0

    #@33
    :goto_33
    if-ltz v1, :cond_a

    #@35
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    #@37
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@41
    invoke-virtual {v0, p1, p2}, Lcom/android/dx/ssa/SsaBasicBlock;->addMoveToBeginning(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)V

    #@44
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    #@46
    add-int/lit8 v1, v1, 0x1

    #@48
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    #@4b
    move-result v0

    #@4c
    move v1, v0

    #@4d
    goto :goto_33

    #@4e
    :cond_4e
    invoke-static {p2}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@51
    move-result-object v0

    #@52
    new-instance v1, Lcom/android/dx/ssa/NormalSsaInsn;

    #@54
    new-instance v2, Lcom/android/dx/rop/code/PlainInsn;

    #@56
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    #@59
    move-result-object v3

    #@5a
    invoke-static {v3}, Lcom/android/dx/rop/code/Rops;->opMove(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    #@5d
    move-result-object v3

    #@5e
    sget-object v4, Lcom/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/android/dx/rop/code/SourcePosition;

    #@60
    invoke-direct {v2, v3, v4, p1, v0}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@63
    invoke-direct {v1, v2, p0}, Lcom/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/ssa/SsaBasicBlock;)V

    #@66
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    #@68
    iget-object v2, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    #@6a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@6d
    move-result v2

    #@6e
    add-int/lit8 v2, v2, -0x1

    #@70
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@73
    iget v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->movesFromPhisAtEnd:I

    #@75
    add-int/lit8 v0, v0, 0x1

    #@77
    iput v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->movesFromPhisAtEnd:I

    #@79
    goto :goto_a
.end method

.method public addPhiInsnForReg(I)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    #@2
    const/4 v1, 0x0

    #@3
    new-instance v2, Lcom/android/dx/ssa/PhiInsn;

    #@5
    invoke-direct {v2, p1, p0}, Lcom/android/dx/ssa/PhiInsn;-><init>(ILcom/android/dx/ssa/SsaBasicBlock;)V

    #@8
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@b
    return-void
.end method

.method public addPhiInsnForReg(Lcom/android/dx/rop/code/RegisterSpec;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    #@2
    const/4 v1, 0x0

    #@3
    new-instance v2, Lcom/android/dx/ssa/PhiInsn;

    #@5
    invoke-direct {v2, p1, p0}, Lcom/android/dx/ssa/PhiInsn;-><init>(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/ssa/SsaBasicBlock;)V

    #@8
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@b
    return-void
.end method

.method public exitBlockFixup(Lcom/android/dx/ssa/SsaBasicBlock;)V
    .registers 4

    #@0
    if-ne p0, p1, :cond_3

    #@2
    :cond_2
    :goto_2
    return-void

    #@3
    :cond_3
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    #@5
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_2

    #@b
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    #@d
    iget v1, p1, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    #@f
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    #@12
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    #@14
    iget v1, p1, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    #@16
    invoke-virtual {v0, v1}, Lcom/android/dx/util/IntList;->add(I)V

    #@19
    iget v0, p1, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    #@1b
    iput v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    #@1d
    iget-object v0, p1, Lcom/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    #@1f
    iget v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    #@21
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    #@24
    goto :goto_2
.end method

.method public forEachInsn(Lcom/android/dx/ssa/SsaInsn$Visitor;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    const/4 v0, 0x0

    #@7
    move v1, v0

    #@8
    :goto_8
    if-ge v1, v2, :cond_19

    #@a
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@12
    invoke-virtual {v0, p1}, Lcom/android/dx/ssa/SsaInsn;->accept(Lcom/android/dx/ssa/SsaInsn$Visitor;)V

    #@15
    add-int/lit8 v0, v1, 0x1

    #@17
    move v1, v0

    #@18
    goto :goto_8

    #@19
    :cond_19
    return-void
.end method

.method public forEachPhiInsn(Lcom/android/dx/ssa/PhiInsn$Visitor;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    const/4 v0, 0x0

    #@7
    move v1, v0

    #@8
    :goto_8
    if-ge v1, v2, :cond_1f

    #@a
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@12
    instance-of v3, v0, Lcom/android/dx/ssa/PhiInsn;

    #@14
    if-eqz v3, :cond_1f

    #@16
    check-cast v0, Lcom/android/dx/ssa/PhiInsn;

    #@18
    invoke-interface {p1, v0}, Lcom/android/dx/ssa/PhiInsn$Visitor;->visitPhiInsn(Lcom/android/dx/ssa/PhiInsn;)V

    #@1b
    add-int/lit8 v0, v1, 0x1

    #@1d
    move v1, v0

    #@1e
    goto :goto_8

    #@1f
    :cond_1f
    return-void
.end method

.method public getDomChildren()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->domChildren:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getIndex()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    #@2
    return v0
.end method

.method public getInsns()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getLiveInRegs()Lcom/android/dx/util/IntSet;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->liveIn:Lcom/android/dx/util/IntSet;

    #@2
    if-nez v0, :cond_10

    #@4
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    #@6
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    #@9
    move-result v0

    #@a
    invoke-static {v0}, Lcom/android/dx/ssa/SetFactory;->makeLivenessSet(I)Lcom/android/dx/util/IntSet;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->liveIn:Lcom/android/dx/util/IntSet;

    #@10
    :cond_10
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->liveIn:Lcom/android/dx/util/IntSet;

    #@12
    return-object v0
.end method

.method public getLiveOutRegs()Lcom/android/dx/util/IntSet;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->liveOut:Lcom/android/dx/util/IntSet;

    #@2
    if-nez v0, :cond_10

    #@4
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    #@6
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    #@9
    move-result v0

    #@a
    invoke-static {v0}, Lcom/android/dx/ssa/SetFactory;->makeLivenessSet(I)Lcom/android/dx/util/IntSet;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->liveOut:Lcom/android/dx/util/IntSet;

    #@10
    :cond_10
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->liveOut:Lcom/android/dx/util/IntSet;

    #@12
    return-object v0
.end method

.method public getParent()Lcom/android/dx/ssa/SsaMethod;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    #@2
    return-object v0
.end method

.method public getPhiInsns()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0}, Lcom/android/dx/ssa/SsaBasicBlock;->getCountPhiInsns()I

    #@6
    move-result v2

    #@7
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getPredecessors()Ljava/util/BitSet;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    #@2
    return-object v0
.end method

.method public getPrimarySuccessor()Lcom/android/dx/ssa/SsaBasicBlock;
    .registers 3

    #@0
    iget v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    #@2
    if-gez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    return-object v0

    #@6
    :cond_6
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    #@8
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    #@e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@14
    goto :goto_5
.end method

.method public getPrimarySuccessorIndex()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    #@2
    return v0
.end method

.method public getPrimarySuccessorRopLabel()I
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    #@2
    iget v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    #@4
    invoke-virtual {v0, v1}, Lcom/android/dx/ssa/SsaMethod;->blockIndexToRopLabel(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getRopLabel()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->ropLabel:I

    #@2
    return v0
.end method

.method public getRopLabelString()Ljava/lang/String;
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->ropLabel:I

    #@2
    invoke-static {v0}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getRopLabelSuccessorList()Lcom/android/dx/util/IntList;
    .registers 6

    #@0
    new-instance v1, Lcom/android/dx/util/IntList;

    #@2
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    #@4
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    #@7
    move-result v0

    #@8
    invoke-direct {v1, v0}, Lcom/android/dx/util/IntList;-><init>(I)V

    #@b
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    #@d
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    #@10
    move-result v2

    #@11
    const/4 v0, 0x0

    #@12
    :goto_12
    if-ge v0, v2, :cond_26

    #@14
    iget-object v3, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    #@16
    iget-object v4, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    #@18
    invoke-virtual {v4, v0}, Lcom/android/dx/util/IntList;->get(I)I

    #@1b
    move-result v4

    #@1c
    invoke-virtual {v3, v4}, Lcom/android/dx/ssa/SsaMethod;->blockIndexToRopLabel(I)I

    #@1f
    move-result v3

    #@20
    invoke-virtual {v1, v3}, Lcom/android/dx/util/IntList;->add(I)V

    #@23
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_12

    #@26
    :cond_26
    return-object v1
.end method

.method public getSuccessorList()Lcom/android/dx/util/IntList;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    #@2
    return-object v0
.end method

.method public getSuccessors()Ljava/util/BitSet;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    #@2
    return-object v0
.end method

.method public insertNewPredecessor()Lcom/android/dx/ssa/SsaBasicBlock;
    .registers 6

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->makeNewGotoBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@5
    move-result-object v2

    #@6
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    #@8
    iput-object v0, v2, Lcom/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    #@a
    iget-object v0, v2, Lcom/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    #@c
    iget v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    #@e
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    #@11
    iget-object v0, v2, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    #@13
    iget v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    #@15
    invoke-virtual {v0, v1}, Lcom/android/dx/util/IntList;->add(I)V

    #@18
    iget v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    #@1a
    iput v0, v2, Lcom/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    #@1c
    new-instance v0, Ljava/util/BitSet;

    #@1e
    iget-object v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    #@20
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@27
    move-result v1

    #@28
    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    #@2b
    iput-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    #@2d
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    #@2f
    iget v1, v2, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    #@31
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    #@34
    iget-object v0, v2, Lcom/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    #@36
    const/4 v1, 0x0

    #@37
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    #@3a
    move-result v0

    #@3b
    move v1, v0

    #@3c
    :goto_3c
    if-ltz v1, :cond_5b

    #@3e
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    #@40
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@47
    move-result-object v0

    #@48
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@4a
    iget v3, p0, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    #@4c
    iget v4, v2, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    #@4e
    invoke-virtual {v0, v3, v4}, Lcom/android/dx/ssa/SsaBasicBlock;->replaceSuccessor(II)V

    #@51
    iget-object v0, v2, Lcom/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    #@53
    add-int/lit8 v1, v1, 0x1

    #@55
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    #@58
    move-result v0

    #@59
    move v1, v0

    #@5a
    goto :goto_3c

    #@5b
    :cond_5b
    return-object v2
.end method

.method public insertNewSuccessor(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaBasicBlock;
    .registers 7

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->makeNewGotoBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@5
    move-result-object v1

    #@6
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    #@8
    iget v2, p1, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    #@a
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_3b

    #@10
    new-instance v0, Ljava/lang/RuntimeException;

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string v2, "Block "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getRopLabelString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    const-string v2, " not successor of "

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaBasicBlock;->getRopLabelString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0

    #@3b
    :cond_3b
    iget-object v0, v1, Lcom/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    #@3d
    iget v2, p0, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    #@3f
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    #@42
    iget-object v0, v1, Lcom/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    #@44
    iget v2, p1, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    #@46
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    #@49
    iget-object v0, v1, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    #@4b
    iget v2, p1, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    #@4d
    invoke-virtual {v0, v2}, Lcom/android/dx/util/IntList;->add(I)V

    #@50
    iget v0, p1, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    #@52
    iput v0, v1, Lcom/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    #@54
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    #@56
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    #@59
    move-result v0

    #@5a
    add-int/lit8 v0, v0, -0x1

    #@5c
    :goto_5c
    if-ltz v0, :cond_72

    #@5e
    iget-object v2, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    #@60
    invoke-virtual {v2, v0}, Lcom/android/dx/util/IntList;->get(I)I

    #@63
    move-result v2

    #@64
    iget v3, p1, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    #@66
    if-ne v2, v3, :cond_6f

    #@68
    iget-object v2, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    #@6a
    iget v3, v1, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    #@6c
    invoke-virtual {v2, v0, v3}, Lcom/android/dx/util/IntList;->set(II)V

    #@6f
    :cond_6f
    add-int/lit8 v0, v0, -0x1

    #@71
    goto :goto_5c

    #@72
    :cond_72
    iget v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    #@74
    iget v2, p1, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    #@76
    if-ne v0, v2, :cond_7c

    #@78
    iget v0, v1, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    #@7a
    iput v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    #@7c
    :cond_7c
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    #@7e
    iget v2, p1, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    #@80
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->clear(I)V

    #@83
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    #@85
    iget v2, v1, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    #@87
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    #@8a
    iget-object v0, p1, Lcom/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    #@8c
    iget v2, v1, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    #@8e
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    #@91
    iget-object v0, p1, Lcom/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    #@93
    iget v2, p0, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    #@95
    iget-object v3, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    #@97
    iget v4, p1, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    #@99
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    #@9c
    move-result v3

    #@9d
    invoke-virtual {v0, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    #@a0
    return-object v1
.end method

.method public isExitBlock()Z
    .registers 3

    #@0
    iget v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    #@2
    iget-object v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    #@4
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaMethod;->getExitBlockIndex()I

    #@7
    move-result v1

    #@8
    if-ne v0, v1, :cond_c

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

.method public isReachable()Z
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    iget v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->reachable:I

    #@3
    const/4 v2, -0x1

    #@4
    if-ne v1, v2, :cond_b

    #@6
    iget-object v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    #@8
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaMethod;->computeReachability()V

    #@b
    :cond_b
    iget v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->reachable:I

    #@d
    if-ne v1, v0, :cond_10

    #@f
    :goto_f
    return v0

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    goto :goto_f
.end method

.method public removeAllPhiInsns()V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0}, Lcom/android/dx/ssa/SsaBasicBlock;->getCountPhiInsns()I

    #@6
    move-result v2

    #@7
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    #@a
    move-result-object v0

    #@b
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@e
    return-void
.end method

.method public removeSuccessor(I)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    #@3
    invoke-virtual {v1}, Lcom/android/dx/util/IntList;->size()I

    #@6
    move-result v1

    #@7
    add-int/lit8 v1, v1, -0x1

    #@9
    :goto_9
    if-ltz v1, :cond_20

    #@b
    iget-object v2, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    #@d
    invoke-virtual {v2, v1}, Lcom/android/dx/util/IntList;->get(I)I

    #@10
    move-result v2

    #@11
    if-ne v2, p1, :cond_17

    #@13
    move v0, v1

    #@14
    :goto_14
    add-int/lit8 v1, v1, -0x1

    #@16
    goto :goto_9

    #@17
    :cond_17
    iget-object v2, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    #@19
    invoke-virtual {v2, v1}, Lcom/android/dx/util/IntList;->get(I)I

    #@1c
    move-result v2

    #@1d
    iput v2, p0, Lcom/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    #@1f
    goto :goto_14

    #@20
    :cond_20
    iget-object v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    #@22
    invoke-virtual {v1, v0}, Lcom/android/dx/util/IntList;->removeIndex(I)V

    #@25
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    #@27
    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    #@2a
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    #@2c
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@36
    iget-object v0, v0, Lcom/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    #@38
    iget v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    #@3a
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    #@3d
    return-void
.end method

.method public replaceLastInsn(Lcom/android/dx/rop/code/Insn;)V
    .registers 6

    #@0
    invoke-virtual {p1}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x1

    #@9
    if-ne v0, v1, :cond_13

    #@b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string v1, "last insn must branch"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    :cond_13
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    #@15
    iget-object v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v1

    #@1b
    add-int/lit8 v1, v1, -0x1

    #@1d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@23
    invoke-static {p1, p0}, Lcom/android/dx/ssa/SsaInsn;->makeFromRop(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaInsn;

    #@26
    move-result-object v1

    #@27
    iget-object v2, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    #@29
    iget-object v3, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@2e
    move-result v3

    #@2f
    add-int/lit8 v3, v3, -0x1

    #@31
    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@34
    iget-object v2, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    #@36
    invoke-virtual {v2, v0}, Lcom/android/dx/ssa/SsaMethod;->onInsnRemoved(Lcom/android/dx/ssa/SsaInsn;)V

    #@39
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    #@3b
    invoke-virtual {v0, v1}, Lcom/android/dx/ssa/SsaMethod;->onInsnAdded(Lcom/android/dx/ssa/SsaInsn;)V

    #@3e
    return-void
.end method

.method public replaceSuccessor(II)V
    .registers 5

    #@0
    if-ne p1, p2, :cond_3

    #@2
    :goto_2
    return-void

    #@3
    :cond_3
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    #@5
    invoke-virtual {v0, p2}, Ljava/util/BitSet;->set(I)V

    #@8
    iget v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    #@a
    if-ne v0, p1, :cond_e

    #@c
    iput p2, p0, Lcom/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    #@e
    :cond_e
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    #@10
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    #@13
    move-result v0

    #@14
    add-int/lit8 v0, v0, -0x1

    #@16
    :goto_16
    if-ltz v0, :cond_28

    #@18
    iget-object v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    #@1a
    invoke-virtual {v1, v0}, Lcom/android/dx/util/IntList;->get(I)I

    #@1d
    move-result v1

    #@1e
    if-ne v1, p1, :cond_25

    #@20
    iget-object v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    #@22
    invoke-virtual {v1, v0, p2}, Lcom/android/dx/util/IntList;->set(II)V

    #@25
    :cond_25
    add-int/lit8 v0, v0, -0x1

    #@27
    goto :goto_16

    #@28
    :cond_28
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    #@2a
    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    #@2d
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    #@2f
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@36
    move-result-object v0

    #@37
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@39
    iget-object v0, v0, Lcom/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    #@3b
    iget v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    #@3d
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    #@40
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    #@42
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@49
    move-result-object v0

    #@4a
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@4c
    iget-object v0, v0, Lcom/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    #@4e
    iget v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    #@50
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    #@53
    goto :goto_2
.end method

.method public scheduleMovesFromPhis()V
    .registers 5

    #@0
    const/4 v3, 0x1

    #@1
    iget v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->movesFromPhisAtBeginning:I

    #@3
    if-le v0, v3, :cond_29

    #@5
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    #@7
    const/4 v1, 0x0

    #@8
    iget v2, p0, Lcom/android/dx/ssa/SsaBasicBlock;->movesFromPhisAtBeginning:I

    #@a
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    #@d
    move-result-object v0

    #@e
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/SsaBasicBlock;->scheduleUseBeforeAssigned(Ljava/util/List;)V

    #@11
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    #@13
    iget v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->movesFromPhisAtBeginning:I

    #@15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@1b
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->isMoveException()Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_29

    #@21
    new-instance v0, Ljava/lang/RuntimeException;

    #@23
    const-string v1, "Unexpected: moves from phis before move-exception"

    #@25
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    :cond_29
    iget v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->movesFromPhisAtEnd:I

    #@2b
    if-le v0, v3, :cond_49

    #@2d
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    #@2f
    iget-object v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@34
    move-result v1

    #@35
    iget v2, p0, Lcom/android/dx/ssa/SsaBasicBlock;->movesFromPhisAtEnd:I

    #@37
    sub-int/2addr v1, v2

    #@38
    add-int/lit8 v1, v1, -0x1

    #@3a
    iget-object v2, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    #@3c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@3f
    move-result v2

    #@40
    add-int/lit8 v2, v2, -0x1

    #@42
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    #@45
    move-result-object v0

    #@46
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/SsaBasicBlock;->scheduleUseBeforeAssigned(Ljava/util/List;)V

    #@49
    :cond_49
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    #@4b
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->returnSpareRegisters()V

    #@4e
    return-void
.end method

.method public setReachable(I)V
    .registers 2

    #@0
    iput p1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->reachable:I

    #@2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "{"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    iget v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string v1, ":"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    iget v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->ropLabel:I

    #@19
    invoke-static {v1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    const/16 v1, 0x7d

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    return-object v0
.end method
