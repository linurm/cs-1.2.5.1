.class public Lcom/android/dx/ssa/DeadCodeRemover;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/ssa/DeadCodeRemover$NoSideEffectVisitor;
    }
.end annotation


# instance fields
.field private final regCount:I

.field private final ssaMeth:Lcom/android/dx/ssa/SsaMethod;

.field private final useList:[Ljava/util/ArrayList;
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

.field private final worklist:Ljava/util/BitSet;


# direct methods
.method private constructor <init>(Lcom/android/dx/ssa/SsaMethod;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@5
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    #@8
    move-result v0

    #@9
    iput v0, p0, Lcom/android/dx/ssa/DeadCodeRemover;->regCount:I

    #@b
    new-instance v0, Ljava/util/BitSet;

    #@d
    iget v1, p0, Lcom/android/dx/ssa/DeadCodeRemover;->regCount:I

    #@f
    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    #@12
    iput-object v0, p0, Lcom/android/dx/ssa/DeadCodeRemover;->worklist:Ljava/util/BitSet;

    #@14
    iget-object v0, p0, Lcom/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@16
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getUseListCopy()[Ljava/util/ArrayList;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Lcom/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    #@1c
    return-void
.end method

.method static synthetic access$000(Lcom/android/dx/ssa/SsaInsn;)Z
    .registers 2

    #@0
    invoke-static {p0}, Lcom/android/dx/ssa/DeadCodeRemover;->hasSideEffect(Lcom/android/dx/ssa/SsaInsn;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private static hasSideEffect(Lcom/android/dx/ssa/SsaInsn;)Z
    .registers 2

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 v0, 0x1

    #@3
    :goto_3
    return v0

    #@4
    :cond_4
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaInsn;->hasSideEffect()Z

    #@7
    move-result v0

    #@8
    goto :goto_3
.end method

.method private isCircularNoSideEffect(ILjava/util/BitSet;)Z
    .registers 7

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    if-eqz p2, :cond_c

    #@4
    invoke-virtual {p2, p1}, Ljava/util/BitSet;->get(I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_c

    #@a
    move v0, v1

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    iget-object v0, p0, Lcom/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    #@e
    aget-object v0, v0, p1

    #@10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v3

    #@14
    :cond_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_28

    #@1a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@20
    invoke-static {v0}, Lcom/android/dx/ssa/DeadCodeRemover;->hasSideEffect(Lcom/android/dx/ssa/SsaInsn;)Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_14

    #@26
    move v0, v2

    #@27
    goto :goto_b

    #@28
    :cond_28
    if-nez p2, :cond_31

    #@2a
    new-instance p2, Ljava/util/BitSet;

    #@2c
    iget v0, p0, Lcom/android/dx/ssa/DeadCodeRemover;->regCount:I

    #@2e
    invoke-direct {p2, v0}, Ljava/util/BitSet;-><init>(I)V

    #@31
    :cond_31
    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    #@34
    iget-object v0, p0, Lcom/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    #@36
    aget-object v0, v0, p1

    #@38
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@3b
    move-result-object v3

    #@3c
    :cond_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@3f
    move-result v0

    #@40
    if-eqz v0, :cond_5a

    #@42
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@45
    move-result-object v0

    #@46
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@48
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@4b
    move-result-object v0

    #@4c
    if-eqz v0, :cond_58

    #@4e
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@51
    move-result v0

    #@52
    invoke-direct {p0, v0, p2}, Lcom/android/dx/ssa/DeadCodeRemover;->isCircularNoSideEffect(ILjava/util/BitSet;)Z

    #@55
    move-result v0

    #@56
    if-nez v0, :cond_3c

    #@58
    :cond_58
    move v0, v2

    #@59
    goto :goto_b

    #@5a
    :cond_5a
    move v0, v1

    #@5b
    goto :goto_b
.end method

.method public static process(Lcom/android/dx/ssa/SsaMethod;)V
    .registers 2

    #@0
    new-instance v0, Lcom/android/dx/ssa/DeadCodeRemover;

    #@2
    invoke-direct {v0, p0}, Lcom/android/dx/ssa/DeadCodeRemover;-><init>(Lcom/android/dx/ssa/SsaMethod;)V

    #@5
    invoke-direct {v0}, Lcom/android/dx/ssa/DeadCodeRemover;->run()V

    #@8
    return-void
.end method

.method private pruneDeadInstructions()V
    .registers 12

    #@0
    const/4 v3, 0x0

    #@1
    new-instance v5, Ljava/util/HashSet;

    #@3
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    #@6
    iget-object v0, p0, Lcom/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@8
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->computeReachability()V

    #@b
    iget-object v0, p0, Lcom/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@d
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v6

    #@15
    :cond_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_8a

    #@1b
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@21
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->isReachable()Z

    #@24
    move-result v1

    #@25
    if-nez v1, :cond_15

    #@27
    move v2, v3

    #@28
    :goto_28
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@2f
    move-result v1

    #@30
    if-ge v2, v1, :cond_15

    #@32
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@39
    move-result-object v1

    #@3a
    check-cast v1, Lcom/android/dx/ssa/SsaInsn;

    #@3c
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@3f
    move-result-object v7

    #@40
    invoke-virtual {v7}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@43
    move-result v8

    #@44
    if-eqz v8, :cond_49

    #@46
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@49
    :cond_49
    move v4, v3

    #@4a
    :goto_4a
    if-ge v4, v8, :cond_5e

    #@4c
    invoke-virtual {v7, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@4f
    move-result-object v9

    #@50
    iget-object v10, p0, Lcom/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    #@52
    invoke-virtual {v9}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@55
    move-result v9

    #@56
    aget-object v9, v10, v9

    #@58
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5b
    add-int/lit8 v4, v4, 0x1

    #@5d
    goto :goto_4a

    #@5e
    :cond_5e
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@61
    move-result-object v4

    #@62
    if-nez v4, :cond_68

    #@64
    :cond_64
    add-int/lit8 v1, v2, 0x1

    #@66
    move v2, v1

    #@67
    goto :goto_28

    #@68
    :cond_68
    iget-object v1, p0, Lcom/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    #@6a
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@6d
    move-result v7

    #@6e
    aget-object v1, v1, v7

    #@70
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@73
    move-result-object v7

    #@74
    :cond_74
    :goto_74
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@77
    move-result v1

    #@78
    if-eqz v1, :cond_64

    #@7a
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7d
    move-result-object v1

    #@7e
    check-cast v1, Lcom/android/dx/ssa/SsaInsn;

    #@80
    instance-of v8, v1, Lcom/android/dx/ssa/PhiInsn;

    #@82
    if-eqz v8, :cond_74

    #@84
    check-cast v1, Lcom/android/dx/ssa/PhiInsn;

    #@86
    invoke-virtual {v1, v4}, Lcom/android/dx/ssa/PhiInsn;->removePhiRegister(Lcom/android/dx/rop/code/RegisterSpec;)V

    #@89
    goto :goto_74

    #@8a
    :cond_8a
    iget-object v0, p0, Lcom/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@8c
    invoke-virtual {v0, v5}, Lcom/android/dx/ssa/SsaMethod;->deleteInsns(Ljava/util/Set;)V

    #@8f
    return-void
.end method

.method private run()V
    .registers 10

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Lcom/android/dx/ssa/DeadCodeRemover;->pruneDeadInstructions()V

    #@4
    new-instance v2, Ljava/util/HashSet;

    #@6
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@9
    iget-object v0, p0, Lcom/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@b
    new-instance v3, Lcom/android/dx/ssa/DeadCodeRemover$NoSideEffectVisitor;

    #@d
    iget-object v4, p0, Lcom/android/dx/ssa/DeadCodeRemover;->worklist:Ljava/util/BitSet;

    #@f
    invoke-direct {v3, v4}, Lcom/android/dx/ssa/DeadCodeRemover$NoSideEffectVisitor;-><init>(Ljava/util/BitSet;)V

    #@12
    invoke-virtual {v0, v3}, Lcom/android/dx/ssa/SsaMethod;->forEachInsn(Lcom/android/dx/ssa/SsaInsn$Visitor;)V

    #@15
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/android/dx/ssa/DeadCodeRemover;->worklist:Ljava/util/BitSet;

    #@17
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    #@1a
    move-result v0

    #@1b
    if-ltz v0, :cond_79

    #@1d
    iget-object v3, p0, Lcom/android/dx/ssa/DeadCodeRemover;->worklist:Ljava/util/BitSet;

    #@1f
    invoke-virtual {v3, v0}, Ljava/util/BitSet;->clear(I)V

    #@22
    iget-object v3, p0, Lcom/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    #@24
    aget-object v3, v3, v0

    #@26
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_33

    #@2c
    const/4 v3, 0x0

    #@2d
    invoke-direct {p0, v0, v3}, Lcom/android/dx/ssa/DeadCodeRemover;->isCircularNoSideEffect(ILjava/util/BitSet;)Z

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_15

    #@33
    :cond_33
    iget-object v3, p0, Lcom/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@35
    invoke-virtual {v3, v0}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@3c
    move-result v0

    #@3d
    if-nez v0, :cond_15

    #@3f
    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@46
    move-result v5

    #@47
    move v0, v1

    #@48
    :goto_48
    if-ge v0, v5, :cond_75

    #@4a
    invoke-virtual {v4, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@4d
    move-result-object v6

    #@4e
    iget-object v7, p0, Lcom/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    #@50
    invoke-virtual {v6}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@53
    move-result v8

    #@54
    aget-object v7, v7, v8

    #@56
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@59
    iget-object v7, p0, Lcom/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@5b
    invoke-virtual {v6}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@5e
    move-result v8

    #@5f
    invoke-virtual {v7, v8}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    #@62
    move-result-object v7

    #@63
    invoke-static {v7}, Lcom/android/dx/ssa/DeadCodeRemover;->hasSideEffect(Lcom/android/dx/ssa/SsaInsn;)Z

    #@66
    move-result v7

    #@67
    if-nez v7, :cond_72

    #@69
    iget-object v7, p0, Lcom/android/dx/ssa/DeadCodeRemover;->worklist:Ljava/util/BitSet;

    #@6b
    invoke-virtual {v6}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@6e
    move-result v6

    #@6f
    invoke-virtual {v7, v6}, Ljava/util/BitSet;->set(I)V

    #@72
    :cond_72
    add-int/lit8 v0, v0, 0x1

    #@74
    goto :goto_48

    #@75
    :cond_75
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@78
    goto :goto_15

    #@79
    :cond_79
    iget-object v0, p0, Lcom/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@7b
    invoke-virtual {v0, v2}, Lcom/android/dx/ssa/SsaMethod;->deleteInsns(Ljava/util/Set;)V

    #@7e
    return-void
.end method
