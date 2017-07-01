.class public final Lcom/android/dx/ssa/SsaMethod;
.super Ljava/lang/Object;


# instance fields
.field private backMode:Z

.field private blocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation
.end field

.field private borrowedSpareRegisters:I

.field private definitionList:[Lcom/android/dx/ssa/SsaInsn;

.field private entryBlockIndex:I

.field private exitBlockIndex:I

.field private final isStatic:Z

.field private maxLabel:I

.field private final paramWidth:I

.field private registerCount:I

.field private spareRegisterBase:I

.field private unmodifiableUseList:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List",
            "<",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private useList:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/dx/rop/code/RopMethod;IZ)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p2, p0, Lcom/android/dx/ssa/SsaMethod;->paramWidth:I

    #@5
    iput-boolean p3, p0, Lcom/android/dx/ssa/SsaMethod;->isStatic:Z

    #@7
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Lcom/android/dx/ssa/SsaMethod;->backMode:Z

    #@a
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList;->getMaxLabel()I

    #@11
    move-result v0

    #@12
    iput v0, p0, Lcom/android/dx/ssa/SsaMethod;->maxLabel:I

    #@14
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList;->getRegCount()I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Lcom/android/dx/ssa/SsaMethod;->registerCount:I

    #@1e
    iget v0, p0, Lcom/android/dx/ssa/SsaMethod;->registerCount:I

    #@20
    iput v0, p0, Lcom/android/dx/ssa/SsaMethod;->spareRegisterBase:I

    #@22
    return-void
.end method

.method static synthetic access$000(Lcom/android/dx/ssa/SsaMethod;)[Lcom/android/dx/ssa/SsaInsn;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->definitionList:[Lcom/android/dx/ssa/SsaInsn;

    #@2
    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dx/ssa/SsaMethod;)[Ljava/util/ArrayList;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static bitSetFromLabelList(Lcom/android/dx/rop/code/BasicBlockList;Lcom/android/dx/util/IntList;)Ljava/util/BitSet;
    .registers 6

    #@0
    new-instance v1, Ljava/util/BitSet;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/rop/code/BasicBlockList;->size()I

    #@5
    move-result v0

    #@6
    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    #@9
    const/4 v0, 0x0

    #@a
    invoke-virtual {p1}, Lcom/android/dx/util/IntList;->size()I

    #@d
    move-result v2

    #@e
    :goto_e
    if-ge v0, v2, :cond_1e

    #@10
    invoke-virtual {p1, v0}, Lcom/android/dx/util/IntList;->get(I)I

    #@13
    move-result v3

    #@14
    invoke-virtual {p0, v3}, Lcom/android/dx/rop/code/BasicBlockList;->indexOfLabel(I)I

    #@17
    move-result v3

    #@18
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    #@1b
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_e

    #@1e
    :cond_1e
    return-object v1
.end method

.method private buildUseList()V
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    iget-boolean v0, p0, Lcom/android/dx/ssa/SsaMethod;->backMode:Z

    #@3
    if-eqz v0, :cond_d

    #@5
    new-instance v0, Ljava/lang/RuntimeException;

    #@7
    const-string v1, "No use list in back mode"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    iget v0, p0, Lcom/android/dx/ssa/SsaMethod;->registerCount:I

    #@f
    new-array v0, v0, [Ljava/util/ArrayList;

    #@11
    iput-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    #@13
    move v0, v1

    #@14
    :goto_14
    iget v2, p0, Lcom/android/dx/ssa/SsaMethod;->registerCount:I

    #@16
    if-ge v0, v2, :cond_24

    #@18
    iget-object v2, p0, Lcom/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    #@1a
    new-instance v3, Ljava/util/ArrayList;

    #@1c
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@1f
    aput-object v3, v2, v0

    #@21
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_14

    #@24
    :cond_24
    new-instance v0, Lcom/android/dx/ssa/SsaMethod$2;

    #@26
    invoke-direct {v0, p0}, Lcom/android/dx/ssa/SsaMethod$2;-><init>(Lcom/android/dx/ssa/SsaMethod;)V

    #@29
    invoke-virtual {p0, v0}, Lcom/android/dx/ssa/SsaMethod;->forEachInsn(Lcom/android/dx/ssa/SsaInsn$Visitor;)V

    #@2c
    iget v0, p0, Lcom/android/dx/ssa/SsaMethod;->registerCount:I

    #@2e
    new-array v0, v0, [Ljava/util/List;

    #@30
    iput-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->unmodifiableUseList:[Ljava/util/List;

    #@32
    :goto_32
    iget v0, p0, Lcom/android/dx/ssa/SsaMethod;->registerCount:I

    #@34
    if-ge v1, v0, :cond_45

    #@36
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->unmodifiableUseList:[Ljava/util/List;

    #@38
    iget-object v2, p0, Lcom/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    #@3a
    aget-object v2, v2, v1

    #@3c
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@3f
    move-result-object v2

    #@40
    aput-object v2, v0, v1

    #@42
    add-int/lit8 v1, v1, 0x1

    #@44
    goto :goto_32

    #@45
    :cond_45
    return-void
.end method

.method private convertRopToSsaBlocks(Lcom/android/dx/rop/code/RopMethod;)V
    .registers 6

    #@0
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList;->size()I

    #@7
    move-result v1

    #@8
    new-instance v0, Ljava/util/ArrayList;

    #@a
    add-int/lit8 v2, v1, 0x2

    #@c
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@f
    iput-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    #@11
    const/4 v0, 0x0

    #@12
    :goto_12
    if-ge v0, v1, :cond_20

    #@14
    invoke-static {p1, v0, p0}, Lcom/android/dx/ssa/SsaBasicBlock;->newFromRop(Lcom/android/dx/rop/code/RopMethod;ILcom/android/dx/ssa/SsaMethod;)Lcom/android/dx/ssa/SsaBasicBlock;

    #@17
    move-result-object v2

    #@18
    iget-object v3, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1d
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_12

    #@20
    :cond_20
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RopMethod;->getFirstLabel()I

    #@27
    move-result v1

    #@28
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/code/BasicBlockList;->indexOfLabel(I)I

    #@2b
    move-result v0

    #@2c
    iget-object v1, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@34
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->insertNewPredecessor()Lcom/android/dx/ssa/SsaBasicBlock;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@3b
    move-result v0

    #@3c
    iput v0, p0, Lcom/android/dx/ssa/SsaMethod;->entryBlockIndex:I

    #@3e
    const/4 v0, -0x1

    #@3f
    iput v0, p0, Lcom/android/dx/ssa/SsaMethod;->exitBlockIndex:I

    #@41
    return-void
.end method

.method private static getGoto(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaInsn;
    .registers 7

    #@0
    new-instance v0, Lcom/android/dx/ssa/NormalSsaInsn;

    #@2
    new-instance v1, Lcom/android/dx/rop/code/PlainInsn;

    #@4
    sget-object v2, Lcom/android/dx/rop/code/Rops;->GOTO:Lcom/android/dx/rop/code/Rop;

    #@6
    sget-object v3, Lcom/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/android/dx/rop/code/SourcePosition;

    #@8
    const/4 v4, 0x0

    #@9
    sget-object v5, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    #@b
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@e
    invoke-direct {v0, v1, p0}, Lcom/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/ssa/SsaBasicBlock;)V

    #@11
    return-object v0
.end method

.method public static indexListFromLabelList(Lcom/android/dx/rop/code/BasicBlockList;Lcom/android/dx/util/IntList;)Lcom/android/dx/util/IntList;
    .registers 6

    #@0
    new-instance v1, Lcom/android/dx/util/IntList;

    #@2
    invoke-virtual {p1}, Lcom/android/dx/util/IntList;->size()I

    #@5
    move-result v0

    #@6
    invoke-direct {v1, v0}, Lcom/android/dx/util/IntList;-><init>(I)V

    #@9
    const/4 v0, 0x0

    #@a
    invoke-virtual {p1}, Lcom/android/dx/util/IntList;->size()I

    #@d
    move-result v2

    #@e
    :goto_e
    if-ge v0, v2, :cond_1e

    #@10
    invoke-virtual {p1, v0}, Lcom/android/dx/util/IntList;->get(I)I

    #@13
    move-result v3

    #@14
    invoke-virtual {p0, v3}, Lcom/android/dx/rop/code/BasicBlockList;->indexOfLabel(I)I

    #@17
    move-result v3

    #@18
    invoke-virtual {v1, v3}, Lcom/android/dx/util/IntList;->add(I)V

    #@1b
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_e

    #@1e
    :cond_1e
    return-object v1
.end method

.method public static newFromRopMethod(Lcom/android/dx/rop/code/RopMethod;IZ)Lcom/android/dx/ssa/SsaMethod;
    .registers 4

    #@0
    new-instance v0, Lcom/android/dx/ssa/SsaMethod;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/android/dx/ssa/SsaMethod;-><init>(Lcom/android/dx/rop/code/RopMethod;IZ)V

    #@5
    invoke-direct {v0, p0}, Lcom/android/dx/ssa/SsaMethod;->convertRopToSsaBlocks(Lcom/android/dx/rop/code/RopMethod;)V

    #@8
    return-object v0
.end method

.method private removeFromUseList(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;)V
    .registers 7

    #@0
    if-nez p2, :cond_3

    #@2
    :cond_2
    return-void

    #@3
    :cond_3
    invoke-virtual {p2}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@6
    move-result v1

    #@7
    const/4 v0, 0x0

    #@8
    :goto_8
    if-ge v0, v1, :cond_2

    #@a
    iget-object v2, p0, Lcom/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    #@c
    invoke-virtual {p2, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@13
    move-result v3

    #@14
    aget-object v2, v2, v3

    #@16
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-nez v2, :cond_24

    #@1c
    new-instance v0, Ljava/lang/RuntimeException;

    #@1e
    const-string v1, "use not found"

    #@20
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    :cond_24
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_8
.end method


# virtual methods
.method public blockIndexToRopLabel(I)I
    .registers 3

    #@0
    if-gez p1, :cond_4

    #@2
    const/4 v0, -0x1

    #@3
    :goto_3
    return v0

    #@4
    :cond_4
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@c
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getRopLabel()I

    #@f
    move-result v0

    #@10
    goto :goto_3
.end method

.method public borrowSpareRegister(I)I
    .registers 5

    #@0
    iget v0, p0, Lcom/android/dx/ssa/SsaMethod;->spareRegisterBase:I

    #@2
    iget v1, p0, Lcom/android/dx/ssa/SsaMethod;->borrowedSpareRegisters:I

    #@4
    add-int/2addr v0, v1

    #@5
    iget v1, p0, Lcom/android/dx/ssa/SsaMethod;->borrowedSpareRegisters:I

    #@7
    add-int/2addr v1, p1

    #@8
    iput v1, p0, Lcom/android/dx/ssa/SsaMethod;->borrowedSpareRegisters:I

    #@a
    iget v1, p0, Lcom/android/dx/ssa/SsaMethod;->registerCount:I

    #@c
    add-int v2, v0, p1

    #@e
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@11
    move-result v1

    #@12
    iput v1, p0, Lcom/android/dx/ssa/SsaMethod;->registerCount:I

    #@14
    return v0
.end method

.method public computeReachability()V
    .registers 6

    #@0
    const/4 v4, 0x0

    #@1
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v1

    #@7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_17

    #@d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@13
    invoke-virtual {v0, v4}, Lcom/android/dx/ssa/SsaBasicBlock;->setReachable(I)V

    #@16
    goto :goto_7

    #@17
    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    #@19
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1c
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->getEntryBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@23
    :cond_23
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@26
    move-result v0

    #@27
    if-nez v0, :cond_53

    #@29
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@2f
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->isReachable()Z

    #@32
    move-result v2

    #@33
    if-nez v2, :cond_23

    #@35
    const/4 v2, 0x1

    #@36
    invoke-virtual {v0, v2}, Lcom/android/dx/ssa/SsaBasicBlock;->setReachable(I)V

    #@39
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    #@40
    move-result v0

    #@41
    :goto_41
    if-ltz v0, :cond_23

    #@43
    iget-object v3, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    #@45
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4c
    add-int/lit8 v0, v0, 0x1

    #@4e
    invoke-virtual {v2, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    #@51
    move-result v0

    #@52
    goto :goto_41

    #@53
    :cond_53
    return-void
.end method

.method public deleteInsns(Ljava/util/Set;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;)V"
        }
    .end annotation

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
    if-eqz v0, :cond_92

    #@f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@15
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v1

    #@1d
    add-int/lit8 v1, v1, -0x1

    #@1f
    move v3, v1

    #@20
    :goto_20
    if-ltz v3, :cond_38

    #@22
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Lcom/android/dx/ssa/SsaInsn;

    #@28
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@2b
    move-result v6

    #@2c
    if-eqz v6, :cond_34

    #@2e
    invoke-virtual {p0, v1}, Lcom/android/dx/ssa/SsaMethod;->onInsnRemoved(Lcom/android/dx/ssa/SsaInsn;)V

    #@31
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@34
    :cond_34
    add-int/lit8 v1, v3, -0x1

    #@36
    move v3, v1

    #@37
    goto :goto_20

    #@38
    :cond_38
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@3b
    move-result v3

    #@3c
    if-nez v3, :cond_89

    #@3e
    move-object v1, v2

    #@3f
    :goto_3f
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->getExitBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@42
    move-result-object v6

    #@43
    if-eq v0, v6, :cond_9

    #@45
    if-eqz v3, :cond_5c

    #@47
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    #@4a
    move-result-object v3

    #@4b
    if-eqz v3, :cond_5c

    #@4d
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    #@50
    move-result-object v1

    #@51
    invoke-virtual {v1}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    #@58
    move-result v1

    #@59
    const/4 v3, 0x1

    #@5a
    if-ne v1, v3, :cond_9

    #@5c
    :cond_5c
    new-instance v1, Lcom/android/dx/rop/code/PlainInsn;

    #@5e
    sget-object v3, Lcom/android/dx/rop/code/Rops;->GOTO:Lcom/android/dx/rop/code/Rop;

    #@60
    sget-object v6, Lcom/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/android/dx/rop/code/SourcePosition;

    #@62
    sget-object v7, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    #@64
    invoke-direct {v1, v3, v6, v2, v7}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@67
    invoke-static {v1, v0}, Lcom/android/dx/ssa/SsaInsn;->makeFromRop(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaInsn;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6e
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    #@71
    move-result-object v3

    #@72
    const/4 v1, 0x0

    #@73
    invoke-virtual {v3, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    #@76
    move-result v1

    #@77
    :goto_77
    if-ltz v1, :cond_9

    #@79
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessorIndex()I

    #@7c
    move-result v5

    #@7d
    if-eq v1, v5, :cond_82

    #@7f
    invoke-virtual {v0, v1}, Lcom/android/dx/ssa/SsaBasicBlock;->removeSuccessor(I)V

    #@82
    :cond_82
    add-int/lit8 v1, v1, 0x1

    #@84
    invoke-virtual {v3, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    #@87
    move-result v1

    #@88
    goto :goto_77

    #@89
    :cond_89
    add-int/lit8 v1, v3, -0x1

    #@8b
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@8e
    move-result-object v1

    #@8f
    check-cast v1, Lcom/android/dx/ssa/SsaInsn;

    #@91
    goto :goto_3f

    #@92
    :cond_92
    return-void
.end method

.method public forEachBlockDepthFirst(ZLcom/android/dx/ssa/SsaBasicBlock$Visitor;)V
    .registers 10

    #@0
    new-instance v4, Ljava/util/BitSet;

    #@2
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    invoke-direct {v4, v0}, Ljava/util/BitSet;-><init>(I)V

    #@b
    new-instance v5, Ljava/util/Stack;

    #@d
    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    #@10
    if-eqz p1, :cond_19

    #@12
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->getExitBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@15
    move-result-object v0

    #@16
    :goto_16
    if-nez v0, :cond_1e

    #@18
    :cond_18
    return-void

    #@19
    :cond_19
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->getEntryBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@1c
    move-result-object v0

    #@1d
    goto :goto_16

    #@1e
    :cond_1e
    const/4 v1, 0x0

    #@1f
    invoke-virtual {v5, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    #@22
    invoke-virtual {v5, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    #@25
    :cond_25
    :goto_25
    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    #@28
    move-result v0

    #@29
    if-lez v0, :cond_18

    #@2b
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@31
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    #@34
    move-result-object v1

    #@35
    check-cast v1, Lcom/android/dx/ssa/SsaBasicBlock;

    #@37
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@3a
    move-result v2

    #@3b
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    #@3e
    move-result v2

    #@3f
    if-nez v2, :cond_25

    #@41
    if-eqz p1, :cond_61

    #@43
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    #@46
    move-result-object v2

    #@47
    :goto_47
    const/4 v3, 0x0

    #@48
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    #@4b
    move-result v3

    #@4c
    :goto_4c
    if-ltz v3, :cond_66

    #@4e
    invoke-virtual {v5, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    #@51
    iget-object v6, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    #@53
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@56
    move-result-object v6

    #@57
    invoke-virtual {v5, v6}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    #@5a
    add-int/lit8 v3, v3, 0x1

    #@5c
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    #@5f
    move-result v3

    #@60
    goto :goto_4c

    #@61
    :cond_61
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    #@64
    move-result-object v2

    #@65
    goto :goto_47

    #@66
    :cond_66
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@69
    move-result v2

    #@6a
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    #@6d
    invoke-interface {p2, v0, v1}, Lcom/android/dx/ssa/SsaBasicBlock$Visitor;->visitBlock(Lcom/android/dx/ssa/SsaBasicBlock;Lcom/android/dx/ssa/SsaBasicBlock;)V

    #@70
    goto :goto_25
.end method

.method public forEachBlockDepthFirstDom(Lcom/android/dx/ssa/SsaBasicBlock$Visitor;)V
    .registers 8

    #@0
    new-instance v3, Ljava/util/BitSet;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    invoke-direct {v3, v0}, Ljava/util/BitSet;-><init>(I)V

    #@d
    new-instance v4, Ljava/util/Stack;

    #@f
    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    #@12
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->getEntryBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v4, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    #@19
    :cond_19
    :goto_19
    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    #@1c
    move-result v0

    #@1d
    if-lez v0, :cond_55

    #@1f
    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@25
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getDomChildren()Ljava/util/ArrayList;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@2c
    move-result v1

    #@2d
    invoke-virtual {v3, v1}, Ljava/util/BitSet;->get(I)Z

    #@30
    move-result v1

    #@31
    if-nez v1, :cond_19

    #@33
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@36
    move-result v1

    #@37
    add-int/lit8 v1, v1, -0x1

    #@39
    move v2, v1

    #@3a
    :goto_3a
    if-ltz v2, :cond_49

    #@3c
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3f
    move-result-object v1

    #@40
    check-cast v1, Lcom/android/dx/ssa/SsaBasicBlock;

    #@42
    invoke-virtual {v4, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    #@45
    add-int/lit8 v1, v2, -0x1

    #@47
    move v2, v1

    #@48
    goto :goto_3a

    #@49
    :cond_49
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@4c
    move-result v1

    #@4d
    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    #@50
    const/4 v1, 0x0

    #@51
    invoke-interface {p1, v0, v1}, Lcom/android/dx/ssa/SsaBasicBlock$Visitor;->visitBlock(Lcom/android/dx/ssa/SsaBasicBlock;Lcom/android/dx/ssa/SsaBasicBlock;)V

    #@54
    goto :goto_19

    #@55
    :cond_55
    return-void
.end method

.method public forEachInsn(Lcom/android/dx/ssa/SsaInsn$Visitor;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

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
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@12
    invoke-virtual {v0, p1}, Lcom/android/dx/ssa/SsaBasicBlock;->forEachInsn(Lcom/android/dx/ssa/SsaInsn$Visitor;)V

    #@15
    goto :goto_6

    #@16
    :cond_16
    return-void
.end method

.method public forEachPhiInsn(Lcom/android/dx/ssa/PhiInsn$Visitor;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

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
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@12
    invoke-virtual {v0, p1}, Lcom/android/dx/ssa/SsaBasicBlock;->forEachPhiInsn(Lcom/android/dx/ssa/PhiInsn$Visitor;)V

    #@15
    goto :goto_6

    #@16
    :cond_16
    return-void
.end method

.method public getBlocks()Ljava/util/ArrayList;
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
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getCountReachableBlocks()I
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v2

    #@6
    const/4 v0, 0x0

    #@7
    move v1, v0

    #@8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_20

    #@e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@14
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->isReachable()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1e

    #@1a
    add-int/lit8 v0, v1, 0x1

    #@1c
    :goto_1c
    move v1, v0

    #@1d
    goto :goto_8

    #@1e
    :cond_1e
    move v0, v1

    #@1f
    goto :goto_1c

    #@20
    :cond_20
    return v1
.end method

.method public getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;
    .registers 4

    #@0
    iget-boolean v0, p0, Lcom/android/dx/ssa/SsaMethod;->backMode:Z

    #@2
    if-eqz v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string v1, "No def list in back mode"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->definitionList:[Lcom/android/dx/ssa/SsaInsn;

    #@e
    if-eqz v0, :cond_15

    #@10
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->definitionList:[Lcom/android/dx/ssa/SsaInsn;

    #@12
    aget-object v0, v0, p1

    #@14
    :goto_14
    return-object v0

    #@15
    :cond_15
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    #@18
    move-result v0

    #@19
    new-array v0, v0, [Lcom/android/dx/ssa/SsaInsn;

    #@1b
    iput-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->definitionList:[Lcom/android/dx/ssa/SsaInsn;

    #@1d
    new-instance v0, Lcom/android/dx/ssa/SsaMethod$1;

    #@1f
    invoke-direct {v0, p0}, Lcom/android/dx/ssa/SsaMethod$1;-><init>(Lcom/android/dx/ssa/SsaMethod;)V

    #@22
    invoke-virtual {p0, v0}, Lcom/android/dx/ssa/SsaMethod;->forEachInsn(Lcom/android/dx/ssa/SsaInsn$Visitor;)V

    #@25
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->definitionList:[Lcom/android/dx/ssa/SsaInsn;

    #@27
    aget-object v0, v0, p1

    #@29
    goto :goto_14
.end method

.method public getEntryBlock()Lcom/android/dx/ssa/SsaBasicBlock;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    #@2
    iget v1, p0, Lcom/android/dx/ssa/SsaMethod;->entryBlockIndex:I

    #@4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@a
    return-object v0
.end method

.method public getEntryBlockIndex()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/ssa/SsaMethod;->entryBlockIndex:I

    #@2
    return v0
.end method

.method public getExitBlock()Lcom/android/dx/ssa/SsaBasicBlock;
    .registers 3

    #@0
    iget v0, p0, Lcom/android/dx/ssa/SsaMethod;->exitBlockIndex:I

    #@2
    if-gez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    return-object v0

    #@6
    :cond_6
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    #@8
    iget v1, p0, Lcom/android/dx/ssa/SsaMethod;->exitBlockIndex:I

    #@a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@10
    goto :goto_5
.end method

.method public getExitBlockIndex()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/ssa/SsaMethod;->exitBlockIndex:I

    #@2
    return v0
.end method

.method public getParamWidth()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/ssa/SsaMethod;->paramWidth:I

    #@2
    return v0
.end method

.method public getRegCount()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/ssa/SsaMethod;->registerCount:I

    #@2
    return v0
.end method

.method public getUseListCopy()[Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_7

    #@4
    invoke-direct {p0}, Lcom/android/dx/ssa/SsaMethod;->buildUseList()V

    #@7
    :cond_7
    iget v0, p0, Lcom/android/dx/ssa/SsaMethod;->registerCount:I

    #@9
    new-array v0, v0, [Ljava/util/ArrayList;

    #@b
    check-cast v0, [Ljava/util/ArrayList;

    #@d
    const/4 v1, 0x0

    #@e
    :goto_e
    iget v2, p0, Lcom/android/dx/ssa/SsaMethod;->registerCount:I

    #@10
    if-ge v1, v2, :cond_20

    #@12
    new-instance v2, Ljava/util/ArrayList;

    #@14
    iget-object v3, p0, Lcom/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    #@16
    aget-object v3, v3, v1

    #@18
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@1b
    aput-object v2, v0, v1

    #@1d
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_e

    #@20
    :cond_20
    return-object v0
.end method

.method public getUseListForRegister(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->unmodifiableUseList:[Ljava/util/List;

    #@2
    if-nez v0, :cond_7

    #@4
    invoke-direct {p0}, Lcom/android/dx/ssa/SsaMethod;->buildUseList()V

    #@7
    :cond_7
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->unmodifiableUseList:[Ljava/util/List;

    #@9
    aget-object v0, v0, p1

    #@b
    return-object v0
.end method

.method public isRegALocal(Lcom/android/dx/rop/code/RegisterSpec;)Z
    .registers 7

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    #@9
    move-result-object v0

    #@a
    if-nez v0, :cond_e

    #@c
    move v0, v1

    #@d
    :goto_d
    return v0

    #@e
    :cond_e
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getLocalAssignment()Lcom/android/dx/rop/code/RegisterSpec;

    #@11
    move-result-object v0

    #@12
    if-eqz v0, :cond_16

    #@14
    move v0, v2

    #@15
    goto :goto_d

    #@16
    :cond_16
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@19
    move-result v0

    #@1a
    invoke-virtual {p0, v0}, Lcom/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    #@1d
    move-result-object v0

    #@1e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v3

    #@22
    :cond_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_42

    #@28
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@2e
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    #@31
    move-result-object v0

    #@32
    if-eqz v0, :cond_22

    #@34
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    #@3b
    move-result v0

    #@3c
    const/16 v4, 0x36

    #@3e
    if-ne v0, v4, :cond_22

    #@40
    move v0, v2

    #@41
    goto :goto_d

    #@42
    :cond_42
    move v0, v1

    #@43
    goto :goto_d
.end method

.method public isStatic()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/android/dx/ssa/SsaMethod;->isStatic:Z

    #@2
    return v0
.end method

.method makeExitBlock()V
    .registers 4

    #@0
    iget v0, p0, Lcom/android/dx/ssa/SsaMethod;->exitBlockIndex:I

    #@2
    if-ltz v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string v1, "must be called at most once"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v0

    #@12
    iput v0, p0, Lcom/android/dx/ssa/SsaMethod;->exitBlockIndex:I

    #@14
    iget v0, p0, Lcom/android/dx/ssa/SsaMethod;->exitBlockIndex:I

    #@16
    iget v1, p0, Lcom/android/dx/ssa/SsaMethod;->maxLabel:I

    #@18
    add-int/lit8 v2, v1, 0x1

    #@1a
    iput v2, p0, Lcom/android/dx/ssa/SsaMethod;->maxLabel:I

    #@1c
    new-instance v2, Lcom/android/dx/ssa/SsaBasicBlock;

    #@1e
    invoke-direct {v2, v0, v1, p0}, Lcom/android/dx/ssa/SsaBasicBlock;-><init>(IILcom/android/dx/ssa/SsaMethod;)V

    #@21
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@26
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@2b
    move-result-object v1

    #@2c
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_3c

    #@32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@38
    invoke-virtual {v0, v2}, Lcom/android/dx/ssa/SsaBasicBlock;->exitBlockFixup(Lcom/android/dx/ssa/SsaBasicBlock;)V

    #@3b
    goto :goto_2c

    #@3c
    :cond_3c
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    #@43
    move-result v0

    #@44
    if-nez v0, :cond_56

    #@46
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    #@48
    iget v1, p0, Lcom/android/dx/ssa/SsaMethod;->exitBlockIndex:I

    #@4a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@4d
    const/4 v0, -0x1

    #@4e
    iput v0, p0, Lcom/android/dx/ssa/SsaMethod;->exitBlockIndex:I

    #@50
    iget v0, p0, Lcom/android/dx/ssa/SsaMethod;->maxLabel:I

    #@52
    add-int/lit8 v0, v0, -0x1

    #@54
    iput v0, p0, Lcom/android/dx/ssa/SsaMethod;->maxLabel:I

    #@56
    :cond_56
    return-void
.end method

.method public makeNewGotoBlock()Lcom/android/dx/ssa/SsaBasicBlock;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Lcom/android/dx/ssa/SsaMethod;->maxLabel:I

    #@8
    add-int/lit8 v2, v1, 0x1

    #@a
    iput v2, p0, Lcom/android/dx/ssa/SsaMethod;->maxLabel:I

    #@c
    new-instance v2, Lcom/android/dx/ssa/SsaBasicBlock;

    #@e
    invoke-direct {v2, v0, v1, p0}, Lcom/android/dx/ssa/SsaBasicBlock;-><init>(IILcom/android/dx/ssa/SsaMethod;)V

    #@11
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@14
    move-result-object v0

    #@15
    invoke-static {v2}, Lcom/android/dx/ssa/SsaMethod;->getGoto(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaInsn;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21
    return-object v2
.end method

.method public makeNewSsaReg()I
    .registers 3

    #@0
    iget v0, p0, Lcom/android/dx/ssa/SsaMethod;->registerCount:I

    #@2
    add-int/lit8 v1, v0, 0x1

    #@4
    iput v1, p0, Lcom/android/dx/ssa/SsaMethod;->registerCount:I

    #@6
    iget v1, p0, Lcom/android/dx/ssa/SsaMethod;->registerCount:I

    #@8
    iput v1, p0, Lcom/android/dx/ssa/SsaMethod;->spareRegisterBase:I

    #@a
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->onInsnsChanged()V

    #@d
    return v0
.end method

.method public mapRegisters(Lcom/android/dx/ssa/RegisterMapper;)V
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_2c

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@14
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v2

    #@1c
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_8

    #@22
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@28
    invoke-virtual {v0, p1}, Lcom/android/dx/ssa/SsaInsn;->mapRegisters(Lcom/android/dx/ssa/RegisterMapper;)V

    #@2b
    goto :goto_1c

    #@2c
    :cond_2c
    invoke-virtual {p1}, Lcom/android/dx/ssa/RegisterMapper;->getNewRegisterCount()I

    #@2f
    move-result v0

    #@30
    iput v0, p0, Lcom/android/dx/ssa/SsaMethod;->registerCount:I

    #@32
    iget v0, p0, Lcom/android/dx/ssa/SsaMethod;->registerCount:I

    #@34
    iput v0, p0, Lcom/android/dx/ssa/SsaMethod;->spareRegisterBase:I

    #@36
    return-void
.end method

.method onInsnAdded(Lcom/android/dx/ssa/SsaInsn;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/dx/ssa/SsaMethod;->onSourcesChanged(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@4
    invoke-virtual {p0, p1, v0}, Lcom/android/dx/ssa/SsaMethod;->updateOneDefinition(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpec;)V

    #@7
    return-void
.end method

.method onInsnRemoved(Lcom/android/dx/ssa/SsaInsn;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_b

    #@4
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@7
    move-result-object v0

    #@8
    invoke-direct {p0, p1, v0}, Lcom/android/dx/ssa/SsaMethod;->removeFromUseList(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@b
    :cond_b
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@e
    move-result-object v0

    #@f
    iget-object v1, p0, Lcom/android/dx/ssa/SsaMethod;->definitionList:[Lcom/android/dx/ssa/SsaInsn;

    #@11
    if-eqz v1, :cond_1e

    #@13
    if-eqz v0, :cond_1e

    #@15
    iget-object v1, p0, Lcom/android/dx/ssa/SsaMethod;->definitionList:[Lcom/android/dx/ssa/SsaInsn;

    #@17
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@1a
    move-result v0

    #@1b
    const/4 v2, 0x0

    #@1c
    aput-object v2, v1, v0

    #@1e
    :cond_1e
    return-void
.end method

.method public onInsnsChanged()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->definitionList:[Lcom/android/dx/ssa/SsaInsn;

    #@3
    iput-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    #@5
    iput-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->unmodifiableUseList:[Ljava/util/List;

    #@7
    return-void
.end method

.method onSourceChanged(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_5

    #@4
    :goto_4
    return-void

    #@5
    :cond_5
    if-eqz p2, :cond_12

    #@7
    invoke-virtual {p2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@a
    move-result v0

    #@b
    iget-object v1, p0, Lcom/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    #@d
    aget-object v0, v1, v0

    #@f
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@12
    :cond_12
    invoke-virtual {p3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@15
    move-result v0

    #@16
    iget-object v1, p0, Lcom/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    #@18
    array-length v1, v1

    #@19
    if-gt v1, v0, :cond_1f

    #@1b
    const/4 v0, 0x0

    #@1c
    iput-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    #@1e
    goto :goto_4

    #@1f
    :cond_1f
    iget-object v1, p0, Lcom/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    #@21
    aget-object v0, v1, v0

    #@23
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@26
    goto :goto_4
.end method

.method onSourcesChanged(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;)V
    .registers 8

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_5

    #@4
    :cond_4
    return-void

    #@5
    :cond_5
    if-eqz p2, :cond_a

    #@7
    invoke-direct {p0, p1, p2}, Lcom/android/dx/ssa/SsaMethod;->removeFromUseList(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@a
    :cond_a
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@11
    move-result v2

    #@12
    const/4 v0, 0x0

    #@13
    :goto_13
    if-ge v0, v2, :cond_4

    #@15
    invoke-virtual {v1, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@1c
    move-result v3

    #@1d
    iget-object v4, p0, Lcom/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    #@1f
    aget-object v3, v4, v3

    #@21
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_13
.end method

.method public returnSpareRegisters()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/dx/ssa/SsaMethod;->borrowedSpareRegisters:I

    #@3
    return-void
.end method

.method public setBackMode()V
    .registers 3

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    iput-boolean v0, p0, Lcom/android/dx/ssa/SsaMethod;->backMode:Z

    #@4
    iput-object v1, p0, Lcom/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    #@6
    iput-object v1, p0, Lcom/android/dx/ssa/SsaMethod;->definitionList:[Lcom/android/dx/ssa/SsaInsn;

    #@8
    return-void
.end method

.method setNewRegCount(I)V
    .registers 3

    #@0
    iput p1, p0, Lcom/android/dx/ssa/SsaMethod;->registerCount:I

    #@2
    iget v0, p0, Lcom/android/dx/ssa/SsaMethod;->registerCount:I

    #@4
    iput v0, p0, Lcom/android/dx/ssa/SsaMethod;->spareRegisterBase:I

    #@6
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->onInsnsChanged()V

    #@9
    return-void
.end method

.method updateOneDefinition(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpec;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->definitionList:[Lcom/android/dx/ssa/SsaInsn;

    #@2
    if-nez v0, :cond_5

    #@4
    :cond_4
    :goto_4
    return-void

    #@5
    :cond_5
    if-eqz p2, :cond_10

    #@7
    invoke-virtual {p2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@a
    move-result v0

    #@b
    iget-object v1, p0, Lcom/android/dx/ssa/SsaMethod;->definitionList:[Lcom/android/dx/ssa/SsaInsn;

    #@d
    const/4 v2, 0x0

    #@e
    aput-object v2, v1, v0

    #@10
    :cond_10
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@13
    move-result-object v0

    #@14
    if-eqz v0, :cond_4

    #@16
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@19
    move-result v1

    #@1a
    iget-object v2, p0, Lcom/android/dx/ssa/SsaMethod;->definitionList:[Lcom/android/dx/ssa/SsaInsn;

    #@1c
    aget-object v1, v2, v1

    #@1e
    if-eqz v1, :cond_28

    #@20
    new-instance v0, Ljava/lang/RuntimeException;

    #@22
    const-string v1, "Duplicate add of insn"

    #@24
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    :cond_28
    iget-object v1, p0, Lcom/android/dx/ssa/SsaMethod;->definitionList:[Lcom/android/dx/ssa/SsaInsn;

    #@2a
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@2d
    move-result v0

    #@2e
    aput-object p1, v1, v0

    #@30
    goto :goto_4
.end method
