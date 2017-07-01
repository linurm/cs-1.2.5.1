.class public final Lcom/android/dx/dex/code/StdCatchBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/dx/dex/code/CatchBuilder;


# static fields
.field private static final MAX_CATCH_RANGE:I = 0xffff


# instance fields
.field private final addresses:Lcom/android/dx/dex/code/BlockAddresses;

.field private final method:Lcom/android/dx/rop/code/RopMethod;

.field private final order:[I


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/code/RopMethod;[ILcom/android/dx/dex/code/BlockAddresses;)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-nez p1, :cond_d

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string v1, "method == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    if-nez p2, :cond_17

    #@f
    new-instance v0, Ljava/lang/NullPointerException;

    #@11
    const-string v1, "order == null"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    :cond_17
    if-nez p3, :cond_21

    #@19
    new-instance v0, Ljava/lang/NullPointerException;

    #@1b
    const-string v1, "addresses == null"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    :cond_21
    iput-object p1, p0, Lcom/android/dx/dex/code/StdCatchBuilder;->method:Lcom/android/dx/rop/code/RopMethod;

    #@23
    iput-object p2, p0, Lcom/android/dx/dex/code/StdCatchBuilder;->order:[I

    #@25
    iput-object p3, p0, Lcom/android/dx/dex/code/StdCatchBuilder;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    #@27
    return-void
.end method

.method public static build(Lcom/android/dx/rop/code/RopMethod;[ILcom/android/dx/dex/code/BlockAddresses;)Lcom/android/dx/dex/code/CatchTable;
    .registers 14

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    array-length v7, p1

    #@3
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    #@6
    move-result-object v8

    #@7
    new-instance v9, Ljava/util/ArrayList;

    #@9
    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(I)V

    #@c
    sget-object v3, Lcom/android/dx/dex/code/CatchHandlerList;->EMPTY:Lcom/android/dx/dex/code/CatchHandlerList;

    #@e
    move-object v2, v0

    #@f
    move v6, v5

    #@10
    :goto_10
    if-ge v6, v7, :cond_53

    #@12
    aget v1, p1, v6

    #@14
    invoke-virtual {v8, v1}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Lcom/android/dx/rop/code/BasicBlock;->canThrow()Z

    #@1b
    move-result v4

    #@1c
    if-nez v4, :cond_26

    #@1e
    move-object v1, v2

    #@1f
    move-object v2, v3

    #@20
    :goto_20
    add-int/lit8 v3, v6, 0x1

    #@22
    move v6, v3

    #@23
    move-object v3, v2

    #@24
    move-object v2, v1

    #@25
    goto :goto_10

    #@26
    :cond_26
    invoke-static {v1, p2}, Lcom/android/dx/dex/code/StdCatchBuilder;->handlersFor(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/dex/code/BlockAddresses;)Lcom/android/dx/dex/code/CatchHandlerList;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v3}, Lcom/android/dx/dex/code/CatchHandlerList;->size()I

    #@2d
    move-result v10

    #@2e
    if-nez v10, :cond_33

    #@30
    move-object v0, v1

    #@31
    move-object v2, v4

    #@32
    goto :goto_20

    #@33
    :cond_33
    invoke-virtual {v3, v4}, Lcom/android/dx/dex/code/CatchHandlerList;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v10

    #@37
    if-eqz v10, :cond_43

    #@39
    invoke-static {v2, v1, p2}, Lcom/android/dx/dex/code/StdCatchBuilder;->rangeIsValid(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/dex/code/BlockAddresses;)Z

    #@3c
    move-result v10

    #@3d
    if-eqz v10, :cond_43

    #@3f
    move-object v0, v1

    #@40
    move-object v1, v2

    #@41
    move-object v2, v3

    #@42
    goto :goto_20

    #@43
    :cond_43
    invoke-virtual {v3}, Lcom/android/dx/dex/code/CatchHandlerList;->size()I

    #@46
    move-result v10

    #@47
    if-eqz v10, :cond_50

    #@49
    invoke-static {v2, v0, v3, p2}, Lcom/android/dx/dex/code/StdCatchBuilder;->makeEntry(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/dex/code/CatchHandlerList;Lcom/android/dx/dex/code/BlockAddresses;)Lcom/android/dx/dex/code/CatchTable$Entry;

    #@4c
    move-result-object v0

    #@4d
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@50
    :cond_50
    move-object v0, v1

    #@51
    move-object v2, v4

    #@52
    goto :goto_20

    #@53
    :cond_53
    invoke-virtual {v3}, Lcom/android/dx/dex/code/CatchHandlerList;->size()I

    #@56
    move-result v1

    #@57
    if-eqz v1, :cond_60

    #@59
    invoke-static {v2, v0, v3, p2}, Lcom/android/dx/dex/code/StdCatchBuilder;->makeEntry(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/dex/code/CatchHandlerList;Lcom/android/dx/dex/code/BlockAddresses;)Lcom/android/dx/dex/code/CatchTable$Entry;

    #@5c
    move-result-object v0

    #@5d
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@60
    :cond_60
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@63
    move-result v3

    #@64
    if-nez v3, :cond_69

    #@66
    sget-object v0, Lcom/android/dx/dex/code/CatchTable;->EMPTY:Lcom/android/dx/dex/code/CatchTable;

    #@68
    :goto_68
    return-object v0

    #@69
    :cond_69
    new-instance v1, Lcom/android/dx/dex/code/CatchTable;

    #@6b
    invoke-direct {v1, v3}, Lcom/android/dx/dex/code/CatchTable;-><init>(I)V

    #@6e
    move v2, v5

    #@6f
    :goto_6f
    if-ge v2, v3, :cond_7e

    #@71
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@74
    move-result-object v0

    #@75
    check-cast v0, Lcom/android/dx/dex/code/CatchTable$Entry;

    #@77
    invoke-virtual {v1, v2, v0}, Lcom/android/dx/dex/code/CatchTable;->set(ILcom/android/dx/dex/code/CatchTable$Entry;)V

    #@7a
    add-int/lit8 v0, v2, 0x1

    #@7c
    move v2, v0

    #@7d
    goto :goto_6f

    #@7e
    :cond_7e
    invoke-virtual {v1}, Lcom/android/dx/dex/code/CatchTable;->setImmutable()V

    #@81
    move-object v0, v1

    #@82
    goto :goto_68
.end method

.method private static handlersFor(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/dex/code/BlockAddresses;)Lcom/android/dx/dex/code/CatchHandlerList;
    .registers 9

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v6, -0x1

    #@2
    invoke-virtual {p0}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Lcom/android/dx/util/IntList;->size()I

    #@9
    move-result v1

    #@a
    invoke-virtual {p0}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    #@d
    move-result v4

    #@e
    invoke-virtual {p0}, Lcom/android/dx/rop/code/BasicBlock;->getLastInsn()Lcom/android/dx/rop/code/Insn;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Insn;->getCatches()Lcom/android/dx/rop/type/TypeList;

    #@15
    move-result-object v5

    #@16
    invoke-interface {v5}, Lcom/android/dx/rop/type/TypeList;->size()I

    #@19
    move-result v0

    #@1a
    if-nez v0, :cond_1f

    #@1c
    sget-object v0, Lcom/android/dx/dex/code/CatchHandlerList;->EMPTY:Lcom/android/dx/dex/code/CatchHandlerList;

    #@1e
    :goto_1e
    return-object v0

    #@1f
    :cond_1f
    if-ne v4, v6, :cond_23

    #@21
    if-ne v1, v0, :cond_2f

    #@23
    :cond_23
    if-eq v4, v6, :cond_37

    #@25
    add-int/lit8 v6, v0, 0x1

    #@27
    if-ne v1, v6, :cond_2f

    #@29
    invoke-virtual {v3, v0}, Lcom/android/dx/util/IntList;->get(I)I

    #@2c
    move-result v1

    #@2d
    if-eq v4, v1, :cond_37

    #@2f
    :cond_2f
    new-instance v0, Ljava/lang/RuntimeException;

    #@31
    const-string v1, "shouldn\'t happen: weird successors list"

    #@33
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0

    #@37
    :cond_37
    move v1, v2

    #@38
    :goto_38
    if-ge v1, v0, :cond_72

    #@3a
    invoke-interface {v5, v1}, Lcom/android/dx/rop/type/TypeList;->getType(I)Lcom/android/dx/rop/type/Type;

    #@3d
    move-result-object v4

    #@3e
    sget-object v6, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    #@40
    invoke-virtual {v4, v6}, Lcom/android/dx/rop/type/Type;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v4

    #@44
    if-eqz v4, :cond_6b

    #@46
    add-int/lit8 v0, v1, 0x1

    #@48
    move v1, v0

    #@49
    :goto_49
    new-instance v0, Lcom/android/dx/dex/code/CatchHandlerList;

    #@4b
    invoke-direct {v0, v1}, Lcom/android/dx/dex/code/CatchHandlerList;-><init>(I)V

    #@4e
    :goto_4e
    if-ge v2, v1, :cond_6e

    #@50
    new-instance v4, Lcom/android/dx/rop/cst/CstType;

    #@52
    invoke-interface {v5, v2}, Lcom/android/dx/rop/type/TypeList;->getType(I)Lcom/android/dx/rop/type/Type;

    #@55
    move-result-object v6

    #@56
    invoke-direct {v4, v6}, Lcom/android/dx/rop/cst/CstType;-><init>(Lcom/android/dx/rop/type/Type;)V

    #@59
    invoke-virtual {v3, v2}, Lcom/android/dx/util/IntList;->get(I)I

    #@5c
    move-result v6

    #@5d
    invoke-virtual {p1, v6}, Lcom/android/dx/dex/code/BlockAddresses;->getStart(I)Lcom/android/dx/dex/code/CodeAddress;

    #@60
    move-result-object v6

    #@61
    invoke-virtual {v6}, Lcom/android/dx/dex/code/CodeAddress;->getAddress()I

    #@64
    move-result v6

    #@65
    invoke-virtual {v0, v2, v4, v6}, Lcom/android/dx/dex/code/CatchHandlerList;->set(ILcom/android/dx/rop/cst/CstType;I)V

    #@68
    add-int/lit8 v2, v2, 0x1

    #@6a
    goto :goto_4e

    #@6b
    :cond_6b
    add-int/lit8 v1, v1, 0x1

    #@6d
    goto :goto_38

    #@6e
    :cond_6e
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CatchHandlerList;->setImmutable()V

    #@71
    goto :goto_1e

    #@72
    :cond_72
    move v1, v0

    #@73
    goto :goto_49
.end method

.method private static makeEntry(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/dex/code/CatchHandlerList;Lcom/android/dx/dex/code/BlockAddresses;)Lcom/android/dx/dex/code/CatchTable$Entry;
    .registers 7

    #@0
    invoke-virtual {p3, p0}, Lcom/android/dx/dex/code/BlockAddresses;->getLast(Lcom/android/dx/rop/code/BasicBlock;)Lcom/android/dx/dex/code/CodeAddress;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p3, p1}, Lcom/android/dx/dex/code/BlockAddresses;->getEnd(Lcom/android/dx/rop/code/BasicBlock;)Lcom/android/dx/dex/code/CodeAddress;

    #@7
    move-result-object v1

    #@8
    new-instance v2, Lcom/android/dx/dex/code/CatchTable$Entry;

    #@a
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CodeAddress;->getAddress()I

    #@d
    move-result v0

    #@e
    invoke-virtual {v1}, Lcom/android/dx/dex/code/CodeAddress;->getAddress()I

    #@11
    move-result v1

    #@12
    invoke-direct {v2, v0, v1, p2}, Lcom/android/dx/dex/code/CatchTable$Entry;-><init>(IILcom/android/dx/dex/code/CatchHandlerList;)V

    #@15
    return-object v2
.end method

.method private static rangeIsValid(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/dex/code/BlockAddresses;)Z
    .registers 5

    #@0
    if-nez p0, :cond_a

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string v1, "start == null"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    if-nez p1, :cond_14

    #@c
    new-instance v0, Ljava/lang/NullPointerException;

    #@e
    const-string v1, "end == null"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    :cond_14
    invoke-virtual {p2, p0}, Lcom/android/dx/dex/code/BlockAddresses;->getLast(Lcom/android/dx/rop/code/BasicBlock;)Lcom/android/dx/dex/code/CodeAddress;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CodeAddress;->getAddress()I

    #@1b
    move-result v0

    #@1c
    invoke-virtual {p2, p1}, Lcom/android/dx/dex/code/BlockAddresses;->getEnd(Lcom/android/dx/rop/code/BasicBlock;)Lcom/android/dx/dex/code/CodeAddress;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Lcom/android/dx/dex/code/CodeAddress;->getAddress()I

    #@23
    move-result v1

    #@24
    sub-int v0, v1, v0

    #@26
    const v1, 0xffff

    #@29
    if-gt v0, v1, :cond_2d

    #@2b
    const/4 v0, 0x1

    #@2c
    :goto_2c
    return v0

    #@2d
    :cond_2d
    const/4 v0, 0x0

    #@2e
    goto :goto_2c
.end method


# virtual methods
.method public build()Lcom/android/dx/dex/code/CatchTable;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/StdCatchBuilder;->method:Lcom/android/dx/rop/code/RopMethod;

    #@2
    iget-object v1, p0, Lcom/android/dx/dex/code/StdCatchBuilder;->order:[I

    #@4
    iget-object v2, p0, Lcom/android/dx/dex/code/StdCatchBuilder;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    #@6
    invoke-static {v0, v1, v2}, Lcom/android/dx/dex/code/StdCatchBuilder;->build(Lcom/android/dx/rop/code/RopMethod;[ILcom/android/dx/dex/code/BlockAddresses;)Lcom/android/dx/dex/code/CatchTable;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getCatchTypes()Ljava/util/HashSet;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/dx/rop/type/Type;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    new-instance v3, Ljava/util/HashSet;

    #@3
    const/16 v0, 0x14

    #@5
    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(I)V

    #@8
    iget-object v0, p0, Lcom/android/dx/dex/code/StdCatchBuilder;->method:Lcom/android/dx/rop/code/RopMethod;

    #@a
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {v4}, Lcom/android/dx/rop/code/BasicBlockList;->size()I

    #@11
    move-result v5

    #@12
    move v2, v1

    #@13
    :goto_13
    if-ge v2, v5, :cond_36

    #@15
    invoke-virtual {v4, v2}, Lcom/android/dx/rop/code/BasicBlockList;->get(I)Lcom/android/dx/rop/code/BasicBlock;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlock;->getLastInsn()Lcom/android/dx/rop/code/Insn;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Insn;->getCatches()Lcom/android/dx/rop/type/TypeList;

    #@20
    move-result-object v6

    #@21
    invoke-interface {v6}, Lcom/android/dx/rop/type/TypeList;->size()I

    #@24
    move-result v7

    #@25
    move v0, v1

    #@26
    :goto_26
    if-ge v0, v7, :cond_32

    #@28
    invoke-interface {v6, v0}, Lcom/android/dx/rop/type/TypeList;->getType(I)Lcom/android/dx/rop/type/Type;

    #@2b
    move-result-object v8

    #@2c
    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@2f
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_26

    #@32
    :cond_32
    add-int/lit8 v0, v2, 0x1

    #@34
    move v2, v0

    #@35
    goto :goto_13

    #@36
    :cond_36
    return-object v3
.end method

.method public hasAnyCatches()Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Lcom/android/dx/dex/code/StdCatchBuilder;->method:Lcom/android/dx/rop/code/RopMethod;

    #@3
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2}, Lcom/android/dx/rop/code/BasicBlockList;->size()I

    #@a
    move-result v3

    #@b
    move v1, v0

    #@c
    :goto_c
    if-ge v1, v3, :cond_21

    #@e
    invoke-virtual {v2, v1}, Lcom/android/dx/rop/code/BasicBlockList;->get(I)Lcom/android/dx/rop/code/BasicBlock;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {v4}, Lcom/android/dx/rop/code/BasicBlock;->getLastInsn()Lcom/android/dx/rop/code/Insn;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v4}, Lcom/android/dx/rop/code/Insn;->getCatches()Lcom/android/dx/rop/type/TypeList;

    #@19
    move-result-object v4

    #@1a
    invoke-interface {v4}, Lcom/android/dx/rop/type/TypeList;->size()I

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_22

    #@20
    const/4 v0, 0x1

    #@21
    :cond_21
    return v0

    #@22
    :cond_22
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_c
.end method
