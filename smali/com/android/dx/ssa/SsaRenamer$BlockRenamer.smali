.class Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/dx/ssa/SsaInsn$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/ssa/SsaRenamer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockRenamer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;
    }
.end annotation


# instance fields
.field private final block:Lcom/android/dx/ssa/SsaBasicBlock;

.field private final currentMapping:[Lcom/android/dx/rop/code/RegisterSpec;

.field private final insnsToReplace:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/dx/ssa/SsaInsn;",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final mapper:Lcom/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;

.field private final movesToKeep:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/dx/ssa/SsaRenamer;


# direct methods
.method constructor <init>(Lcom/android/dx/ssa/SsaRenamer;Lcom/android/dx/ssa/SsaBasicBlock;)V
    .registers 6

    #@0
    iput-object p1, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/android/dx/ssa/SsaRenamer;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    iput-object p2, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->block:Lcom/android/dx/ssa/SsaBasicBlock;

    #@7
    # getter for: Lcom/android/dx/ssa/SsaRenamer;->startsForBlocks:[[Lcom/android/dx/rop/code/RegisterSpec;
    invoke-static {p1}, Lcom/android/dx/ssa/SsaRenamer;->access$000(Lcom/android/dx/ssa/SsaRenamer;)[[Lcom/android/dx/rop/code/RegisterSpec;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p2}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@e
    move-result v1

    #@f
    aget-object v0, v0, v1

    #@11
    iput-object v0, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/android/dx/rop/code/RegisterSpec;

    #@13
    new-instance v0, Ljava/util/HashSet;

    #@15
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@18
    iput-object v0, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->movesToKeep:Ljava/util/HashSet;

    #@1a
    new-instance v0, Ljava/util/HashMap;

    #@1c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1f
    iput-object v0, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->insnsToReplace:Ljava/util/HashMap;

    #@21
    new-instance v0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;

    #@23
    invoke-direct {v0, p0}, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;-><init>(Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;)V

    #@26
    iput-object v0, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->mapper:Lcom/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;

    #@28
    # getter for: Lcom/android/dx/ssa/SsaRenamer;->startsForBlocks:[[Lcom/android/dx/rop/code/RegisterSpec;
    invoke-static {p1}, Lcom/android/dx/ssa/SsaRenamer;->access$000(Lcom/android/dx/ssa/SsaRenamer;)[[Lcom/android/dx/rop/code/RegisterSpec;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {p2}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@2f
    move-result v1

    #@30
    const/4 v2, 0x0

    #@31
    aput-object v2, v0, v1

    #@33
    return-void
.end method

.method static synthetic access$1000(Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;)Lcom/android/dx/ssa/SsaBasicBlock;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->block:Lcom/android/dx/ssa/SsaBasicBlock;

    #@2
    return-object v0
.end method

.method static synthetic access$200(Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;)[Lcom/android/dx/rop/code/RegisterSpec;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/android/dx/rop/code/RegisterSpec;

    #@2
    return-object v0
.end method

.method private addMapping(ILcom/android/dx/rop/code/RegisterSpec;)V
    .registers 9

    #@0
    invoke-virtual {p2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@3
    move-result v1

    #@4
    invoke-virtual {p2}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    #@7
    move-result-object v2

    #@8
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/android/dx/rop/code/RegisterSpec;

    #@a
    aput-object p2, v0, p1

    #@c
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/android/dx/rop/code/RegisterSpec;

    #@e
    array-length v0, v0

    #@f
    add-int/lit8 v0, v0, -0x1

    #@11
    :goto_11
    if-ltz v0, :cond_24

    #@13
    iget-object v3, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/android/dx/rop/code/RegisterSpec;

    #@15
    aget-object v3, v3, v0

    #@17
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@1a
    move-result v3

    #@1b
    if-ne v1, v3, :cond_21

    #@1d
    iget-object v3, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/android/dx/rop/code/RegisterSpec;

    #@1f
    aput-object p2, v3, v0

    #@21
    :cond_21
    add-int/lit8 v0, v0, -0x1

    #@23
    goto :goto_11

    #@24
    :cond_24
    if-nez v2, :cond_27

    #@26
    :cond_26
    return-void

    #@27
    :cond_27
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/android/dx/ssa/SsaRenamer;

    #@29
    # invokes: Lcom/android/dx/ssa/SsaRenamer;->setNameForSsaReg(Lcom/android/dx/rop/code/RegisterSpec;)V
    invoke-static {v0, p2}, Lcom/android/dx/ssa/SsaRenamer;->access$400(Lcom/android/dx/ssa/SsaRenamer;Lcom/android/dx/rop/code/RegisterSpec;)V

    #@2c
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/android/dx/rop/code/RegisterSpec;

    #@2e
    array-length v0, v0

    #@2f
    add-int/lit8 v0, v0, -0x1

    #@31
    :goto_31
    if-ltz v0, :cond_26

    #@33
    iget-object v3, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/android/dx/rop/code/RegisterSpec;

    #@35
    aget-object v3, v3, v0

    #@37
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@3a
    move-result v4

    #@3b
    if-eq v1, v4, :cond_50

    #@3d
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v2, v4}, Lcom/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v4

    #@45
    if-eqz v4, :cond_50

    #@47
    iget-object v4, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/android/dx/rop/code/RegisterSpec;

    #@49
    const/4 v5, 0x0

    #@4a
    invoke-virtual {v3, v5}, Lcom/android/dx/rop/code/RegisterSpec;->withLocalItem(Lcom/android/dx/rop/code/LocalItem;)Lcom/android/dx/rop/code/RegisterSpec;

    #@4d
    move-result-object v3

    #@4e
    aput-object v3, v4, v0

    #@50
    :cond_50
    add-int/lit8 v0, v0, -0x1

    #@52
    goto :goto_31
.end method

.method private updateSuccessorPhis()V
    .registers 5

    #@0
    new-instance v2, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer$1;

    #@2
    invoke-direct {v2, p0}, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer$1;-><init>(Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;)V

    #@5
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->block:Lcom/android/dx/ssa/SsaBasicBlock;

    #@7
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    #@a
    move-result-object v3

    #@b
    const/4 v0, 0x0

    #@c
    invoke-virtual {v3, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    #@f
    move-result v0

    #@10
    move v1, v0

    #@11
    :goto_11
    if-ltz v1, :cond_2e

    #@13
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/android/dx/ssa/SsaRenamer;

    #@15
    # getter for: Lcom/android/dx/ssa/SsaRenamer;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;
    invoke-static {v0}, Lcom/android/dx/ssa/SsaRenamer;->access$1100(Lcom/android/dx/ssa/SsaRenamer;)Lcom/android/dx/ssa/SsaMethod;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@23
    invoke-virtual {v0, v2}, Lcom/android/dx/ssa/SsaBasicBlock;->forEachPhiInsn(Lcom/android/dx/ssa/PhiInsn$Visitor;)V

    #@26
    add-int/lit8 v0, v1, 0x1

    #@28
    invoke-virtual {v3, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    #@2b
    move-result v0

    #@2c
    move v1, v0

    #@2d
    goto :goto_11

    #@2e
    :cond_2e
    return-void
.end method


# virtual methods
.method public process()V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->block:Lcom/android/dx/ssa/SsaBasicBlock;

    #@2
    invoke-virtual {v0, p0}, Lcom/android/dx/ssa/SsaBasicBlock;->forEachInsn(Lcom/android/dx/ssa/SsaInsn$Visitor;)V

    #@5
    invoke-direct {p0}, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->updateSuccessorPhis()V

    #@8
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->block:Lcom/android/dx/ssa/SsaBasicBlock;

    #@a
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v0

    #@12
    add-int/lit8 v0, v0, -0x1

    #@14
    move v2, v0

    #@15
    :goto_15
    if-ltz v2, :cond_40

    #@17
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@1d
    iget-object v1, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->insnsToReplace:Ljava/util/HashMap;

    #@1f
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Lcom/android/dx/ssa/SsaInsn;

    #@25
    if-eqz v1, :cond_2e

    #@27
    invoke-virtual {v3, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@2a
    :cond_2a
    :goto_2a
    add-int/lit8 v0, v2, -0x1

    #@2c
    move v2, v0

    #@2d
    goto :goto_15

    #@2e
    :cond_2e
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->isNormalMoveInsn()Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_2a

    #@34
    iget-object v1, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->movesToKeep:Ljava/util/HashSet;

    #@36
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@39
    move-result v0

    #@3a
    if-nez v0, :cond_2a

    #@3c
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@3f
    goto :goto_2a

    #@40
    :cond_40
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->block:Lcom/android/dx/ssa/SsaBasicBlock;

    #@42
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getDomChildren()Ljava/util/ArrayList;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@49
    move-result-object v2

    #@4a
    const/4 v0, 0x1

    #@4b
    move v1, v0

    #@4c
    :goto_4c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@4f
    move-result v0

    #@50
    if-eqz v0, :cond_78

    #@52
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@55
    move-result-object v0

    #@56
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@58
    iget-object v3, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->block:Lcom/android/dx/ssa/SsaBasicBlock;

    #@5a
    if-eq v0, v3, :cond_76

    #@5c
    if-eqz v1, :cond_6f

    #@5e
    iget-object v1, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/android/dx/rop/code/RegisterSpec;

    #@60
    :goto_60
    iget-object v3, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/android/dx/ssa/SsaRenamer;

    #@62
    # getter for: Lcom/android/dx/ssa/SsaRenamer;->startsForBlocks:[[Lcom/android/dx/rop/code/RegisterSpec;
    invoke-static {v3}, Lcom/android/dx/ssa/SsaRenamer;->access$000(Lcom/android/dx/ssa/SsaRenamer;)[[Lcom/android/dx/rop/code/RegisterSpec;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@69
    move-result v0

    #@6a
    aput-object v1, v3, v0

    #@6c
    const/4 v0, 0x0

    #@6d
    :goto_6d
    move v1, v0

    #@6e
    goto :goto_4c

    #@6f
    :cond_6f
    iget-object v1, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/android/dx/rop/code/RegisterSpec;

    #@71
    # invokes: Lcom/android/dx/ssa/SsaRenamer;->dupArray([Lcom/android/dx/rop/code/RegisterSpec;)[Lcom/android/dx/rop/code/RegisterSpec;
    invoke-static {v1}, Lcom/android/dx/ssa/SsaRenamer;->access$300([Lcom/android/dx/rop/code/RegisterSpec;)[Lcom/android/dx/rop/code/RegisterSpec;

    #@74
    move-result-object v1

    #@75
    goto :goto_60

    #@76
    :cond_76
    move v0, v1

    #@77
    goto :goto_6d

    #@78
    :cond_78
    return-void
.end method

.method processResultReg(Lcom/android/dx/ssa/SsaInsn;)V
    .registers 4

    #@0
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_7

    #@6
    :cond_6
    :goto_6
    return-void

    #@7
    :cond_7
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@a
    move-result v0

    #@b
    iget-object v1, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/android/dx/ssa/SsaRenamer;

    #@d
    # invokes: Lcom/android/dx/ssa/SsaRenamer;->isBelowThresholdRegister(I)Z
    invoke-static {v1, v0}, Lcom/android/dx/ssa/SsaRenamer;->access$800(Lcom/android/dx/ssa/SsaRenamer;I)Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_6

    #@13
    iget-object v1, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/android/dx/ssa/SsaRenamer;

    #@15
    # getter for: Lcom/android/dx/ssa/SsaRenamer;->nextSsaReg:I
    invoke-static {v1}, Lcom/android/dx/ssa/SsaRenamer;->access$100(Lcom/android/dx/ssa/SsaRenamer;)I

    #@18
    move-result v1

    #@19
    invoke-virtual {p1, v1}, Lcom/android/dx/ssa/SsaInsn;->changeResultReg(I)V

    #@1c
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {p0, v0, v1}, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->addMapping(ILcom/android/dx/rop/code/RegisterSpec;)V

    #@23
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/android/dx/ssa/SsaRenamer;

    #@25
    # operator++ for: Lcom/android/dx/ssa/SsaRenamer;->nextSsaReg:I
    invoke-static {v0}, Lcom/android/dx/ssa/SsaRenamer;->access$108(Lcom/android/dx/ssa/SsaRenamer;)I

    #@28
    goto :goto_6
.end method

.method public visitMoveInsn(Lcom/android/dx/ssa/NormalSsaInsn;)V
    .registers 9

    #@0
    const/4 v2, 0x0

    #@1
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@4
    move-result-object v3

    #@5
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@8
    move-result v4

    #@9
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@14
    move-result v0

    #@15
    iget-object v1, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->mapper:Lcom/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;

    #@17
    invoke-virtual {p1, v1}, Lcom/android/dx/ssa/NormalSsaInsn;->mapSourceRegisters(Lcom/android/dx/ssa/RegisterMapper;)V

    #@1a
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@25
    move-result v5

    #@26
    iget-object v1, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/android/dx/rop/code/RegisterSpec;

    #@28
    aget-object v0, v1, v0

    #@2a
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    #@31
    move-result-object v0

    #@32
    if-nez v0, :cond_35

    #@34
    move-object v0, v1

    #@35
    :cond_35
    iget-object v6, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/android/dx/ssa/SsaRenamer;

    #@37
    # invokes: Lcom/android/dx/ssa/SsaRenamer;->getLocalForNewReg(I)Lcom/android/dx/rop/code/LocalItem;
    invoke-static {v6, v5}, Lcom/android/dx/ssa/SsaRenamer;->access$500(Lcom/android/dx/ssa/SsaRenamer;I)Lcom/android/dx/rop/code/LocalItem;

    #@3a
    move-result-object v6

    #@3b
    if-eqz v6, :cond_45

    #@3d
    if-eqz v0, :cond_45

    #@3f
    invoke-virtual {v0, v6}, Lcom/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v6

    #@43
    if-eqz v6, :cond_46

    #@45
    :cond_45
    const/4 v2, 0x1

    #@46
    :cond_46
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    #@49
    move-result-object v3

    #@4a
    invoke-static {v5, v3, v0}, Lcom/android/dx/rop/code/RegisterSpec;->makeLocalOptional(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)Lcom/android/dx/rop/code/RegisterSpec;

    #@4d
    move-result-object v3

    #@4e
    invoke-static {}, Lcom/android/dx/ssa/Optimizer;->getPreserveLocals()Z

    #@51
    move-result v5

    #@52
    if-eqz v5, :cond_64

    #@54
    if-eqz v2, :cond_68

    #@56
    # invokes: Lcom/android/dx/ssa/SsaRenamer;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v0, v1}, Lcom/android/dx/ssa/SsaRenamer;->access$600(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@59
    move-result v5

    #@5a
    if-eqz v5, :cond_68

    #@5c
    iget-object v5, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/android/dx/ssa/SsaRenamer;

    #@5e
    # getter for: Lcom/android/dx/ssa/SsaRenamer;->threshold:I
    invoke-static {v5}, Lcom/android/dx/ssa/SsaRenamer;->access$700(Lcom/android/dx/ssa/SsaRenamer;)I

    #@61
    move-result v5

    #@62
    if-nez v5, :cond_68

    #@64
    :cond_64
    invoke-direct {p0, v4, v3}, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->addMapping(ILcom/android/dx/rop/code/RegisterSpec;)V

    #@67
    :goto_67
    return-void

    #@68
    :cond_68
    if-eqz v2, :cond_9f

    #@6a
    if-nez v1, :cond_9f

    #@6c
    iget-object v1, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/android/dx/ssa/SsaRenamer;

    #@6e
    # getter for: Lcom/android/dx/ssa/SsaRenamer;->threshold:I
    invoke-static {v1}, Lcom/android/dx/ssa/SsaRenamer;->access$700(Lcom/android/dx/ssa/SsaRenamer;)I

    #@71
    move-result v1

    #@72
    if-nez v1, :cond_9f

    #@74
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@77
    move-result v1

    #@78
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    #@7b
    move-result-object v2

    #@7c
    invoke-static {v1, v2, v0}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)Lcom/android/dx/rop/code/RegisterSpec;

    #@7f
    move-result-object v0

    #@80
    invoke-static {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@83
    move-result-object v0

    #@84
    new-instance v1, Lcom/android/dx/rop/code/PlainInsn;

    #@86
    invoke-static {v3}, Lcom/android/dx/rop/code/Rops;->opMarkLocal(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    #@89
    move-result-object v2

    #@8a
    sget-object v5, Lcom/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/android/dx/rop/code/SourcePosition;

    #@8c
    const/4 v6, 0x0

    #@8d
    invoke-direct {v1, v2, v5, v6, v0}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@90
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->block:Lcom/android/dx/ssa/SsaBasicBlock;

    #@92
    invoke-static {v1, v0}, Lcom/android/dx/ssa/SsaInsn;->makeFromRop(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaInsn;

    #@95
    move-result-object v0

    #@96
    iget-object v1, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->insnsToReplace:Ljava/util/HashMap;

    #@98
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9b
    invoke-direct {p0, v4, v3}, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->addMapping(ILcom/android/dx/rop/code/RegisterSpec;)V

    #@9e
    goto :goto_67

    #@9f
    :cond_9f
    invoke-virtual {p0, p1}, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->processResultReg(Lcom/android/dx/ssa/SsaInsn;)V

    #@a2
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->movesToKeep:Ljava/util/HashSet;

    #@a4
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@a7
    goto :goto_67
.end method

.method public visitNonMoveInsn(Lcom/android/dx/ssa/NormalSsaInsn;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->mapper:Lcom/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;

    #@2
    invoke-virtual {p1, v0}, Lcom/android/dx/ssa/NormalSsaInsn;->mapSourceRegisters(Lcom/android/dx/ssa/RegisterMapper;)V

    #@5
    invoke-virtual {p0, p1}, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->processResultReg(Lcom/android/dx/ssa/SsaInsn;)V

    #@8
    return-void
.end method

.method public visitPhiInsn(Lcom/android/dx/ssa/PhiInsn;)V
    .registers 2

    #@0
    invoke-virtual {p0, p1}, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->processResultReg(Lcom/android/dx/ssa/SsaInsn;)V

    #@3
    return-void
.end method
