.class public final Lcom/android/dx/rop/code/LocalVariableExtractor;
.super Ljava/lang/Object;


# instance fields
.field private final blocks:Lcom/android/dx/rop/code/BasicBlockList;

.field private final method:Lcom/android/dx/rop/code/RopMethod;

.field private final resultInfo:Lcom/android/dx/rop/code/LocalVariableInfo;

.field private final workSet:[I


# direct methods
.method private constructor <init>(Lcom/android/dx/rop/code/RopMethod;)V
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
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList;->getMaxLabel()I

    #@14
    move-result v1

    #@15
    iput-object p1, p0, Lcom/android/dx/rop/code/LocalVariableExtractor;->method:Lcom/android/dx/rop/code/RopMethod;

    #@17
    iput-object v0, p0, Lcom/android/dx/rop/code/LocalVariableExtractor;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    #@19
    new-instance v0, Lcom/android/dx/rop/code/LocalVariableInfo;

    #@1b
    invoke-direct {v0, p1}, Lcom/android/dx/rop/code/LocalVariableInfo;-><init>(Lcom/android/dx/rop/code/RopMethod;)V

    #@1e
    iput-object v0, p0, Lcom/android/dx/rop/code/LocalVariableExtractor;->resultInfo:Lcom/android/dx/rop/code/LocalVariableInfo;

    #@20
    invoke-static {v1}, Lcom/android/dx/util/Bits;->makeBitSet(I)[I

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Lcom/android/dx/rop/code/LocalVariableExtractor;->workSet:[I

    #@26
    return-void
.end method

.method private doit()Lcom/android/dx/rop/code/LocalVariableInfo;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/LocalVariableExtractor;->method:Lcom/android/dx/rop/code/RopMethod;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RopMethod;->getFirstLabel()I

    #@5
    move-result v0

    #@6
    :goto_6
    if-ltz v0, :cond_18

    #@8
    iget-object v1, p0, Lcom/android/dx/rop/code/LocalVariableExtractor;->workSet:[I

    #@a
    invoke-static {v1, v0}, Lcom/android/dx/util/Bits;->clear([II)V

    #@d
    invoke-direct {p0, v0}, Lcom/android/dx/rop/code/LocalVariableExtractor;->processBlock(I)V

    #@10
    iget-object v0, p0, Lcom/android/dx/rop/code/LocalVariableExtractor;->workSet:[I

    #@12
    const/4 v1, 0x0

    #@13
    invoke-static {v0, v1}, Lcom/android/dx/util/Bits;->findFirst([II)I

    #@16
    move-result v0

    #@17
    goto :goto_6

    #@18
    :cond_18
    iget-object v0, p0, Lcom/android/dx/rop/code/LocalVariableExtractor;->resultInfo:Lcom/android/dx/rop/code/LocalVariableInfo;

    #@1a
    invoke-virtual {v0}, Lcom/android/dx/rop/code/LocalVariableInfo;->setImmutable()V

    #@1d
    iget-object v0, p0, Lcom/android/dx/rop/code/LocalVariableExtractor;->resultInfo:Lcom/android/dx/rop/code/LocalVariableInfo;

    #@1f
    return-object v0
.end method

.method public static extract(Lcom/android/dx/rop/code/RopMethod;)Lcom/android/dx/rop/code/LocalVariableInfo;
    .registers 2

    #@0
    new-instance v0, Lcom/android/dx/rop/code/LocalVariableExtractor;

    #@2
    invoke-direct {v0, p0}, Lcom/android/dx/rop/code/LocalVariableExtractor;-><init>(Lcom/android/dx/rop/code/RopMethod;)V

    #@5
    invoke-direct {v0}, Lcom/android/dx/rop/code/LocalVariableExtractor;->doit()Lcom/android/dx/rop/code/LocalVariableInfo;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method private processBlock(I)V
    .registers 15

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/android/dx/rop/code/LocalVariableExtractor;->resultInfo:Lcom/android/dx/rop/code/LocalVariableInfo;

    #@3
    invoke-virtual {v0, p1}, Lcom/android/dx/rop/code/LocalVariableInfo;->mutableCopyOfStarts(I)Lcom/android/dx/rop/code/RegisterSpecSet;

    #@6
    move-result-object v3

    #@7
    iget-object v0, p0, Lcom/android/dx/rop/code/LocalVariableExtractor;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    #@9
    invoke-virtual {v0, p1}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    #@c
    move-result-object v5

    #@d
    invoke-virtual {v5}, Lcom/android/dx/rop/code/BasicBlock;->getInsns()Lcom/android/dx/rop/code/InsnList;

    #@10
    move-result-object v6

    #@11
    invoke-virtual {v6}, Lcom/android/dx/rop/code/InsnList;->size()I

    #@14
    move-result v7

    #@15
    invoke-virtual {v5}, Lcom/android/dx/rop/code/BasicBlock;->hasExceptionHandlers()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_5f

    #@1b
    invoke-virtual {v6}, Lcom/android/dx/rop/code/InsnList;->getLast()Lcom/android/dx/rop/code/Insn;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Insn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@22
    move-result-object v0

    #@23
    if-eqz v0, :cond_5f

    #@25
    const/4 v0, 0x1

    #@26
    :goto_26
    move-object v2, v3

    #@27
    move v4, v1

    #@28
    :goto_28
    if-ge v4, v7, :cond_8f

    #@2a
    if-eqz v0, :cond_37

    #@2c
    add-int/lit8 v8, v7, -0x1

    #@2e
    if-ne v4, v8, :cond_37

    #@30
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    #@33
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecSet;->mutableCopy()Lcom/android/dx/rop/code/RegisterSpecSet;

    #@36
    move-result-object v2

    #@37
    :cond_37
    invoke-virtual {v6, v4}, Lcom/android/dx/rop/code/InsnList;->get(I)Lcom/android/dx/rop/code/Insn;

    #@3a
    move-result-object v8

    #@3b
    invoke-virtual {v8}, Lcom/android/dx/rop/code/Insn;->getLocalAssignment()Lcom/android/dx/rop/code/RegisterSpec;

    #@3e
    move-result-object v9

    #@3f
    if-nez v9, :cond_61

    #@41
    invoke-virtual {v8}, Lcom/android/dx/rop/code/Insn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@44
    move-result-object v8

    #@45
    if-eqz v8, :cond_5c

    #@47
    invoke-virtual {v8}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@4a
    move-result v9

    #@4b
    invoke-virtual {v2, v9}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@4e
    move-result-object v9

    #@4f
    if-eqz v9, :cond_5c

    #@51
    invoke-virtual {v8}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@54
    move-result v8

    #@55
    invoke-virtual {v2, v8}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@58
    move-result-object v8

    #@59
    invoke-virtual {v2, v8}, Lcom/android/dx/rop/code/RegisterSpecSet;->remove(Lcom/android/dx/rop/code/RegisterSpec;)V

    #@5c
    :cond_5c
    :goto_5c
    add-int/lit8 v4, v4, 0x1

    #@5e
    goto :goto_28

    #@5f
    :cond_5f
    move v0, v1

    #@60
    goto :goto_26

    #@61
    :cond_61
    invoke-virtual {v9}, Lcom/android/dx/rop/code/RegisterSpec;->withSimpleType()Lcom/android/dx/rop/code/RegisterSpec;

    #@64
    move-result-object v9

    #@65
    invoke-virtual {v2, v9}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;

    #@68
    move-result-object v10

    #@69
    invoke-virtual {v9, v10}, Lcom/android/dx/rop/code/RegisterSpec;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v10

    #@6d
    if-nez v10, :cond_5c

    #@6f
    invoke-virtual {v9}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    #@72
    move-result-object v10

    #@73
    invoke-virtual {v2, v10}, Lcom/android/dx/rop/code/RegisterSpecSet;->localItemToSpec(Lcom/android/dx/rop/code/LocalItem;)Lcom/android/dx/rop/code/RegisterSpec;

    #@76
    move-result-object v10

    #@77
    if-eqz v10, :cond_86

    #@79
    invoke-virtual {v10}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@7c
    move-result v11

    #@7d
    invoke-virtual {v9}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@80
    move-result v12

    #@81
    if-eq v11, v12, :cond_86

    #@83
    invoke-virtual {v2, v10}, Lcom/android/dx/rop/code/RegisterSpecSet;->remove(Lcom/android/dx/rop/code/RegisterSpec;)V

    #@86
    :cond_86
    iget-object v10, p0, Lcom/android/dx/rop/code/LocalVariableExtractor;->resultInfo:Lcom/android/dx/rop/code/LocalVariableInfo;

    #@88
    invoke-virtual {v10, v8, v9}, Lcom/android/dx/rop/code/LocalVariableInfo;->addAssignment(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/rop/code/RegisterSpec;)V

    #@8b
    invoke-virtual {v2, v9}, Lcom/android/dx/rop/code/RegisterSpecSet;->put(Lcom/android/dx/rop/code/RegisterSpec;)V

    #@8e
    goto :goto_5c

    #@8f
    :cond_8f
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    #@92
    invoke-virtual {v5}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    #@95
    move-result-object v4

    #@96
    invoke-virtual {v4}, Lcom/android/dx/util/IntList;->size()I

    #@99
    move-result v6

    #@9a
    invoke-virtual {v5}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    #@9d
    move-result v5

    #@9e
    :goto_9e
    if-ge v1, v6, :cond_b9

    #@a0
    invoke-virtual {v4, v1}, Lcom/android/dx/util/IntList;->get(I)I

    #@a3
    move-result v7

    #@a4
    if-ne v7, v5, :cond_b7

    #@a6
    move-object v0, v2

    #@a7
    :goto_a7
    iget-object v8, p0, Lcom/android/dx/rop/code/LocalVariableExtractor;->resultInfo:Lcom/android/dx/rop/code/LocalVariableInfo;

    #@a9
    invoke-virtual {v8, v7, v0}, Lcom/android/dx/rop/code/LocalVariableInfo;->mergeStarts(ILcom/android/dx/rop/code/RegisterSpecSet;)Z

    #@ac
    move-result v0

    #@ad
    if-eqz v0, :cond_b4

    #@af
    iget-object v0, p0, Lcom/android/dx/rop/code/LocalVariableExtractor;->workSet:[I

    #@b1
    invoke-static {v0, v7}, Lcom/android/dx/util/Bits;->set([II)V

    #@b4
    :cond_b4
    add-int/lit8 v1, v1, 0x1

    #@b6
    goto :goto_9e

    #@b7
    :cond_b7
    move-object v0, v3

    #@b8
    goto :goto_a7

    #@b9
    :cond_b9
    return-void
.end method
