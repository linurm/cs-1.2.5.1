.class public Lcom/android/dx/ssa/LocalVariableExtractor;
.super Ljava/lang/Object;


# instance fields
.field private final blocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation
.end field

.field private final method:Lcom/android/dx/ssa/SsaMethod;

.field private final resultInfo:Lcom/android/dx/ssa/LocalVariableInfo;

.field private final workSet:Ljava/util/BitSet;


# direct methods
.method private constructor <init>(Lcom/android/dx/ssa/SsaMethod;)V
    .registers 4

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
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@10
    move-result-object v0

    #@11
    iput-object p1, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->method:Lcom/android/dx/ssa/SsaMethod;

    #@13
    iput-object v0, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->blocks:Ljava/util/ArrayList;

    #@15
    new-instance v1, Lcom/android/dx/ssa/LocalVariableInfo;

    #@17
    invoke-direct {v1, p1}, Lcom/android/dx/ssa/LocalVariableInfo;-><init>(Lcom/android/dx/ssa/SsaMethod;)V

    #@1a
    iput-object v1, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->resultInfo:Lcom/android/dx/ssa/LocalVariableInfo;

    #@1c
    new-instance v1, Ljava/util/BitSet;

    #@1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@21
    move-result v0

    #@22
    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    #@25
    iput-object v1, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->workSet:Ljava/util/BitSet;

    #@27
    return-void
.end method

.method private doit()Lcom/android/dx/ssa/LocalVariableInfo;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->method:Lcom/android/dx/ssa/SsaMethod;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_20

    #@8
    iget-object v0, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->method:Lcom/android/dx/ssa/SsaMethod;

    #@a
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getEntryBlockIndex()I

    #@d
    move-result v0

    #@e
    :goto_e
    if-ltz v0, :cond_20

    #@10
    iget-object v1, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->workSet:Ljava/util/BitSet;

    #@12
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->clear(I)V

    #@15
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/LocalVariableExtractor;->processBlock(I)V

    #@18
    iget-object v0, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->workSet:Ljava/util/BitSet;

    #@1a
    const/4 v1, 0x0

    #@1b
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    #@1e
    move-result v0

    #@1f
    goto :goto_e

    #@20
    :cond_20
    iget-object v0, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->resultInfo:Lcom/android/dx/ssa/LocalVariableInfo;

    #@22
    invoke-virtual {v0}, Lcom/android/dx/ssa/LocalVariableInfo;->setImmutable()V

    #@25
    iget-object v0, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->resultInfo:Lcom/android/dx/ssa/LocalVariableInfo;

    #@27
    return-object v0
.end method

.method public static extract(Lcom/android/dx/ssa/SsaMethod;)Lcom/android/dx/ssa/LocalVariableInfo;
    .registers 2

    #@0
    new-instance v0, Lcom/android/dx/ssa/LocalVariableExtractor;

    #@2
    invoke-direct {v0, p0}, Lcom/android/dx/ssa/LocalVariableExtractor;-><init>(Lcom/android/dx/ssa/SsaMethod;)V

    #@5
    invoke-direct {v0}, Lcom/android/dx/ssa/LocalVariableExtractor;->doit()Lcom/android/dx/ssa/LocalVariableInfo;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method private processBlock(I)V
    .registers 15

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    iget-object v0, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->resultInfo:Lcom/android/dx/ssa/LocalVariableInfo;

    #@4
    invoke-virtual {v0, p1}, Lcom/android/dx/ssa/LocalVariableInfo;->mutableCopyOfStarts(I)Lcom/android/dx/rop/code/RegisterSpecSet;

    #@7
    move-result-object v5

    #@8
    iget-object v0, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->blocks:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@10
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@13
    move-result-object v7

    #@14
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@17
    move-result v8

    #@18
    iget-object v1, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->method:Lcom/android/dx/ssa/SsaMethod;

    #@1a
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaMethod;->getExitBlockIndex()I

    #@1d
    move-result v1

    #@1e
    if-ne p1, v1, :cond_21

    #@20
    :cond_20
    return-void

    #@21
    :cond_21
    add-int/lit8 v1, v8, -0x1

    #@23
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v1

    #@27
    check-cast v1, Lcom/android/dx/ssa/SsaInsn;

    #@29
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4}, Lcom/android/dx/rop/code/Insn;->getCatches()Lcom/android/dx/rop/type/TypeList;

    #@30
    move-result-object v4

    #@31
    invoke-interface {v4}, Lcom/android/dx/rop/type/TypeList;->size()I

    #@34
    move-result v4

    #@35
    if-eqz v4, :cond_7e

    #@37
    move v4, v2

    #@38
    :goto_38
    if-eqz v4, :cond_80

    #@3a
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@3d
    move-result-object v1

    #@3e
    if-eqz v1, :cond_80

    #@40
    :goto_40
    move-object v1, v5

    #@41
    move v6, v3

    #@42
    :goto_42
    if-ge v6, v8, :cond_b0

    #@44
    if-eqz v2, :cond_da

    #@46
    add-int/lit8 v4, v8, -0x1

    #@48
    if-ne v6, v4, :cond_da

    #@4a
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    #@4d
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecSet;->mutableCopy()Lcom/android/dx/rop/code/RegisterSpecSet;

    #@50
    move-result-object v1

    #@51
    move-object v4, v1

    #@52
    :goto_52
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@55
    move-result-object v1

    #@56
    check-cast v1, Lcom/android/dx/ssa/SsaInsn;

    #@58
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getLocalAssignment()Lcom/android/dx/rop/code/RegisterSpec;

    #@5b
    move-result-object v9

    #@5c
    if-nez v9, :cond_82

    #@5e
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@61
    move-result-object v1

    #@62
    if-eqz v1, :cond_79

    #@64
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@67
    move-result v9

    #@68
    invoke-virtual {v4, v9}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@6b
    move-result-object v9

    #@6c
    if-eqz v9, :cond_79

    #@6e
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@71
    move-result v1

    #@72
    invoke-virtual {v4, v1}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@75
    move-result-object v1

    #@76
    invoke-virtual {v4, v1}, Lcom/android/dx/rop/code/RegisterSpecSet;->remove(Lcom/android/dx/rop/code/RegisterSpec;)V

    #@79
    :cond_79
    :goto_79
    add-int/lit8 v1, v6, 0x1

    #@7b
    move v6, v1

    #@7c
    move-object v1, v4

    #@7d
    goto :goto_42

    #@7e
    :cond_7e
    move v4, v3

    #@7f
    goto :goto_38

    #@80
    :cond_80
    move v2, v3

    #@81
    goto :goto_40

    #@82
    :cond_82
    invoke-virtual {v9}, Lcom/android/dx/rop/code/RegisterSpec;->withSimpleType()Lcom/android/dx/rop/code/RegisterSpec;

    #@85
    move-result-object v9

    #@86
    invoke-virtual {v4, v9}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;

    #@89
    move-result-object v10

    #@8a
    invoke-virtual {v9, v10}, Lcom/android/dx/rop/code/RegisterSpec;->equals(Ljava/lang/Object;)Z

    #@8d
    move-result v10

    #@8e
    if-nez v10, :cond_79

    #@90
    invoke-virtual {v9}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    #@93
    move-result-object v10

    #@94
    invoke-virtual {v4, v10}, Lcom/android/dx/rop/code/RegisterSpecSet;->localItemToSpec(Lcom/android/dx/rop/code/LocalItem;)Lcom/android/dx/rop/code/RegisterSpec;

    #@97
    move-result-object v10

    #@98
    if-eqz v10, :cond_a7

    #@9a
    invoke-virtual {v10}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@9d
    move-result v11

    #@9e
    invoke-virtual {v9}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@a1
    move-result v12

    #@a2
    if-eq v11, v12, :cond_a7

    #@a4
    invoke-virtual {v4, v10}, Lcom/android/dx/rop/code/RegisterSpecSet;->remove(Lcom/android/dx/rop/code/RegisterSpec;)V

    #@a7
    :cond_a7
    iget-object v10, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->resultInfo:Lcom/android/dx/ssa/LocalVariableInfo;

    #@a9
    invoke-virtual {v10, v1, v9}, Lcom/android/dx/ssa/LocalVariableInfo;->addAssignment(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpec;)V

    #@ac
    invoke-virtual {v4, v9}, Lcom/android/dx/rop/code/RegisterSpecSet;->put(Lcom/android/dx/rop/code/RegisterSpec;)V

    #@af
    goto :goto_79

    #@b0
    :cond_b0
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    #@b3
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessorList()Lcom/android/dx/util/IntList;

    #@b6
    move-result-object v2

    #@b7
    invoke-virtual {v2}, Lcom/android/dx/util/IntList;->size()I

    #@ba
    move-result v4

    #@bb
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessorIndex()I

    #@be
    move-result v6

    #@bf
    :goto_bf
    if-ge v3, v4, :cond_20

    #@c1
    invoke-virtual {v2, v3}, Lcom/android/dx/util/IntList;->get(I)I

    #@c4
    move-result v7

    #@c5
    if-ne v7, v6, :cond_d8

    #@c7
    move-object v0, v1

    #@c8
    :goto_c8
    iget-object v8, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->resultInfo:Lcom/android/dx/ssa/LocalVariableInfo;

    #@ca
    invoke-virtual {v8, v7, v0}, Lcom/android/dx/ssa/LocalVariableInfo;->mergeStarts(ILcom/android/dx/rop/code/RegisterSpecSet;)Z

    #@cd
    move-result v0

    #@ce
    if-eqz v0, :cond_d5

    #@d0
    iget-object v0, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->workSet:Ljava/util/BitSet;

    #@d2
    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    #@d5
    :cond_d5
    add-int/lit8 v3, v3, 0x1

    #@d7
    goto :goto_bf

    #@d8
    :cond_d8
    move-object v0, v5

    #@d9
    goto :goto_c8

    #@da
    :cond_da
    move-object v4, v1

    #@db
    goto/16 :goto_52
.end method
