.class public Lcom/android/dx/ssa/ConstCollector;
.super Ljava/lang/Object;


# static fields
.field private static COLLECT_ONE_LOCAL:Z = false

.field private static COLLECT_STRINGS:Z = false

.field private static final MAX_COLLECTED_CONSTANTS:I = 0x5


# instance fields
.field private final ssaMeth:Lcom/android/dx/ssa/SsaMethod;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Lcom/android/dx/ssa/ConstCollector;->COLLECT_STRINGS:Z

    #@3
    sput-boolean v0, Lcom/android/dx/ssa/ConstCollector;->COLLECT_ONE_LOCAL:Z

    #@5
    return-void
.end method

.method private constructor <init>(Lcom/android/dx/ssa/SsaMethod;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@5
    return-void
.end method

.method static synthetic access$000(Lcom/android/dx/ssa/ConstCollector;)Lcom/android/dx/ssa/SsaMethod;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@2
    return-object v0
.end method

.method private fixLocalAssignment(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)V
    .registers 10

    #@0
    const/4 v6, 0x0

    #@1
    iget-object v0, p0, Lcom/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@3
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@6
    move-result v1

    #@7
    invoke-virtual {v0, v1}, Lcom/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    #@a
    move-result-object v0

    #@b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_5b

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@1b
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getLocalAssignment()Lcom/android/dx/rop/code/RegisterSpec;

    #@1e
    move-result-object v2

    #@1f
    if-eqz v2, :cond_f

    #@21
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@24
    move-result-object v3

    #@25
    if-eqz v3, :cond_f

    #@27
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v0, v6}, Lcom/android/dx/ssa/SsaInsn;->setResultLocal(Lcom/android/dx/rop/code/LocalItem;)V

    #@2e
    invoke-virtual {p2, v2}, Lcom/android/dx/rop/code/RegisterSpec;->withLocalItem(Lcom/android/dx/rop/code/LocalItem;)Lcom/android/dx/rop/code/RegisterSpec;

    #@31
    move-result-object p2

    #@32
    new-instance v2, Lcom/android/dx/rop/code/PlainInsn;

    #@34
    invoke-static {p2}, Lcom/android/dx/rop/code/Rops;->opMarkLocal(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    #@37
    move-result-object v3

    #@38
    sget-object v4, Lcom/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/android/dx/rop/code/SourcePosition;

    #@3a
    invoke-static {p2}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@3d
    move-result-object v5

    #@3e
    invoke-direct {v2, v3, v4, v6, v5}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@41
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@44
    move-result-object v3

    #@45
    invoke-static {v2, v3}, Lcom/android/dx/ssa/SsaInsn;->makeFromRop(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaInsn;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@54
    move-result v0

    #@55
    add-int/lit8 v0, v0, 0x1

    #@57
    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@5a
    goto :goto_f

    #@5b
    :cond_5b
    return-void
.end method

.method private getConstsSortedByCountUse()Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/rop/cst/TypedConstant;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v10, 0x1

    #@2
    iget-object v0, p0, Lcom/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@4
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    #@7
    move-result v4

    #@8
    new-instance v5, Ljava/util/HashMap;

    #@a
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    #@d
    new-instance v6, Ljava/util/HashSet;

    #@f
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    #@12
    move v2, v3

    #@13
    :goto_13
    if-ge v2, v4, :cond_bc

    #@15
    iget-object v0, p0, Lcom/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@17
    invoke-virtual {v0, v2}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    #@1a
    move-result-object v1

    #@1b
    if-eqz v1, :cond_23

    #@1d
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@20
    move-result-object v0

    #@21
    if-nez v0, :cond_27

    #@23
    :cond_23
    :goto_23
    add-int/lit8 v0, v2, 0x1

    #@25
    move v2, v0

    #@26
    goto :goto_13

    #@27
    :cond_27
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@2a
    move-result-object v7

    #@2b
    invoke-virtual {v7}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    #@2e
    move-result-object v0

    #@2f
    invoke-interface {v0}, Lcom/android/dx/rop/type/TypeBearer;->isConstant()Z

    #@32
    move-result v8

    #@33
    if-eqz v8, :cond_23

    #@35
    check-cast v0, Lcom/android/dx/rop/cst/TypedConstant;

    #@37
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@3a
    move-result-object v8

    #@3b
    invoke-virtual {v8}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    #@3e
    move-result v8

    #@3f
    const/16 v9, 0x38

    #@41
    if-ne v8, v9, :cond_6b

    #@43
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    #@4e
    move-result v1

    #@4f
    iget-object v8, p0, Lcom/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@51
    invoke-virtual {v8}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@54
    move-result-object v8

    #@55
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@58
    move-result-object v1

    #@59
    check-cast v1, Lcom/android/dx/ssa/SsaBasicBlock;

    #@5b
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@62
    move-result v8

    #@63
    add-int/lit8 v8, v8, -0x1

    #@65
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@68
    move-result-object v1

    #@69
    check-cast v1, Lcom/android/dx/ssa/SsaInsn;

    #@6b
    :cond_6b
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->canThrow()Z

    #@6e
    move-result v8

    #@6f
    if-eqz v8, :cond_87

    #@71
    instance-of v8, v0, Lcom/android/dx/rop/cst/CstString;

    #@73
    if-eqz v8, :cond_23

    #@75
    sget-boolean v8, Lcom/android/dx/ssa/ConstCollector;->COLLECT_STRINGS:Z

    #@77
    if-eqz v8, :cond_23

    #@79
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@7c
    move-result-object v1

    #@7d
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    #@80
    move-result-object v1

    #@81
    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    #@84
    move-result v1

    #@85
    if-gt v1, v10, :cond_23

    #@87
    :cond_87
    iget-object v1, p0, Lcom/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@89
    invoke-virtual {v1, v7}, Lcom/android/dx/ssa/SsaMethod;->isRegALocal(Lcom/android/dx/rop/code/RegisterSpec;)Z

    #@8c
    move-result v1

    #@8d
    if-eqz v1, :cond_9c

    #@8f
    sget-boolean v1, Lcom/android/dx/ssa/ConstCollector;->COLLECT_ONE_LOCAL:Z

    #@91
    if-eqz v1, :cond_23

    #@93
    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@96
    move-result v1

    #@97
    if-nez v1, :cond_23

    #@99
    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@9c
    :cond_9c
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9f
    move-result-object v1

    #@a0
    check-cast v1, Ljava/lang/Integer;

    #@a2
    if-nez v1, :cond_ad

    #@a4
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a7
    move-result-object v1

    #@a8
    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ab
    goto/16 :goto_23

    #@ad
    :cond_ad
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@b0
    move-result v1

    #@b1
    add-int/lit8 v1, v1, 0x1

    #@b3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b6
    move-result-object v1

    #@b7
    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ba
    goto/16 :goto_23

    #@bc
    :cond_bc
    new-instance v2, Ljava/util/ArrayList;

    #@be
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@c1
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@c4
    move-result-object v0

    #@c5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@c8
    move-result-object v3

    #@c9
    :cond_c9
    :goto_c9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@cc
    move-result v0

    #@cd
    if-eqz v0, :cond_ea

    #@cf
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d2
    move-result-object v0

    #@d3
    move-object v1, v0

    #@d4
    check-cast v1, Ljava/util/Map$Entry;

    #@d6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@d9
    move-result-object v0

    #@da
    check-cast v0, Ljava/lang/Integer;

    #@dc
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@df
    move-result v0

    #@e0
    if-le v0, v10, :cond_c9

    #@e2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@e5
    move-result-object v0

    #@e6
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e9
    goto :goto_c9

    #@ea
    :cond_ea
    new-instance v0, Lcom/android/dx/ssa/ConstCollector$1;

    #@ec
    invoke-direct {v0, p0, v5}, Lcom/android/dx/ssa/ConstCollector$1;-><init>(Lcom/android/dx/ssa/ConstCollector;Ljava/util/HashMap;)V

    #@ef
    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@f2
    return-object v2
.end method

.method public static process(Lcom/android/dx/ssa/SsaMethod;)V
    .registers 2

    #@0
    new-instance v0, Lcom/android/dx/ssa/ConstCollector;

    #@2
    invoke-direct {v0, p0}, Lcom/android/dx/ssa/ConstCollector;-><init>(Lcom/android/dx/ssa/SsaMethod;)V

    #@5
    invoke-direct {v0}, Lcom/android/dx/ssa/ConstCollector;->run()V

    #@8
    return-void
.end method

.method private run()V
    .registers 21

    #@0
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lcom/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@4
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    #@7
    move-result v15

    #@8
    invoke-direct/range {p0 .. p0}, Lcom/android/dx/ssa/ConstCollector;->getConstsSortedByCountUse()Ljava/util/ArrayList;

    #@b
    move-result-object v16

    #@c
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v2

    #@10
    const/4 v3, 0x5

    #@11
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@14
    move-result v17

    #@15
    move-object/from16 v0, p0

    #@17
    iget-object v2, v0, Lcom/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@19
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaMethod;->getEntryBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@1c
    move-result-object v18

    #@1d
    new-instance v19, Ljava/util/HashMap;

    #@1f
    move-object/from16 v0, v19

    #@21
    move/from16 v1, v17

    #@23
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@26
    const/4 v2, 0x0

    #@27
    move v14, v2

    #@28
    :goto_28
    move/from16 v0, v17

    #@2a
    if-ge v14, v0, :cond_9e

    #@2c
    move-object/from16 v0, v16

    #@2e
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v7

    #@32
    check-cast v7, Lcom/android/dx/rop/cst/TypedConstant;

    #@34
    move-object/from16 v0, p0

    #@36
    iget-object v2, v0, Lcom/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@38
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaMethod;->makeNewSsaReg()I

    #@3b
    move-result v2

    #@3c
    invoke-static {v2, v7}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    #@3f
    move-result-object v5

    #@40
    invoke-static {v7}, Lcom/android/dx/rop/code/Rops;->opConst(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    #@43
    move-result-object v9

    #@44
    invoke-virtual {v9}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    #@47
    move-result v2

    #@48
    const/4 v3, 0x1

    #@49
    if-ne v2, v3, :cond_66

    #@4b
    new-instance v2, Lcom/android/dx/rop/code/PlainCstInsn;

    #@4d
    invoke-static {v7}, Lcom/android/dx/rop/code/Rops;->opConst(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    #@50
    move-result-object v3

    #@51
    sget-object v4, Lcom/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/android/dx/rop/code/SourcePosition;

    #@53
    sget-object v6, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    #@55
    invoke-direct/range {v2 .. v7}, Lcom/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V

    #@58
    move-object/from16 v0, v18

    #@5a
    invoke-virtual {v0, v2}, Lcom/android/dx/ssa/SsaBasicBlock;->addInsnToHead(Lcom/android/dx/rop/code/Insn;)V

    #@5d
    :goto_5d
    move-object/from16 v0, v19

    #@5f
    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@62
    add-int/lit8 v2, v14, 0x1

    #@64
    move v14, v2

    #@65
    goto :goto_28

    #@66
    :cond_66
    move-object/from16 v0, p0

    #@68
    iget-object v2, v0, Lcom/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@6a
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaMethod;->getEntryBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@6d
    move-result-object v2

    #@6e
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessor()Lcom/android/dx/ssa/SsaBasicBlock;

    #@71
    move-result-object v3

    #@72
    invoke-virtual {v2, v3}, Lcom/android/dx/ssa/SsaBasicBlock;->insertNewSuccessor(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaBasicBlock;

    #@75
    move-result-object v2

    #@76
    new-instance v8, Lcom/android/dx/rop/code/ThrowingCstInsn;

    #@78
    sget-object v10, Lcom/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/android/dx/rop/code/SourcePosition;

    #@7a
    sget-object v11, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    #@7c
    sget-object v12, Lcom/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/android/dx/rop/type/StdTypeList;

    #@7e
    move-object v13, v7

    #@7f
    invoke-direct/range {v8 .. v13}, Lcom/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)V

    #@82
    invoke-virtual {v2, v8}, Lcom/android/dx/ssa/SsaBasicBlock;->replaceLastInsn(Lcom/android/dx/rop/code/Insn;)V

    #@85
    invoke-virtual {v2, v3}, Lcom/android/dx/ssa/SsaBasicBlock;->insertNewSuccessor(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaBasicBlock;

    #@88
    move-result-object v2

    #@89
    new-instance v3, Lcom/android/dx/rop/code/PlainInsn;

    #@8b
    invoke-virtual {v5}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    #@8e
    move-result-object v4

    #@8f
    invoke-static {v4}, Lcom/android/dx/rop/code/Rops;->opMoveResultPseudo(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    #@92
    move-result-object v4

    #@93
    sget-object v6, Lcom/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/android/dx/rop/code/SourcePosition;

    #@95
    sget-object v8, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    #@97
    invoke-direct {v3, v4, v6, v5, v8}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@9a
    invoke-virtual {v2, v3}, Lcom/android/dx/ssa/SsaBasicBlock;->addInsnToHead(Lcom/android/dx/rop/code/Insn;)V

    #@9d
    goto :goto_5d

    #@9e
    :cond_9e
    move-object/from16 v0, p0

    #@a0
    move-object/from16 v1, v19

    #@a2
    invoke-direct {v0, v1, v15}, Lcom/android/dx/ssa/ConstCollector;->updateConstUses(Ljava/util/HashMap;I)V

    #@a5
    return-void
.end method

.method private updateConstUses(Ljava/util/HashMap;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/dx/rop/cst/TypedConstant;",
            "Lcom/android/dx/rop/code/RegisterSpec;",
            ">;I)V"
        }
    .end annotation

    #@0
    new-instance v3, Ljava/util/HashSet;

    #@2
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@5
    iget-object v0, p0, Lcom/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@7
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getUseListCopy()[Ljava/util/ArrayList;

    #@a
    move-result-object v4

    #@b
    const/4 v0, 0x0

    #@c
    move v2, v0

    #@d
    :goto_d
    if-ge v2, p2, :cond_89

    #@f
    iget-object v0, p0, Lcom/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@11
    invoke-virtual {v0, v2}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    #@14
    move-result-object v0

    #@15
    if-nez v0, :cond_1b

    #@17
    :cond_17
    add-int/lit8 v0, v2, 0x1

    #@19
    move v2, v0

    #@1a
    goto :goto_d

    #@1b
    :cond_1b
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    #@26
    move-result-object v0

    #@27
    invoke-interface {v0}, Lcom/android/dx/rop/type/TypeBearer;->isConstant()Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_17

    #@2d
    check-cast v0, Lcom/android/dx/rop/cst/TypedConstant;

    #@2f
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    move-result-object v1

    #@33
    check-cast v1, Lcom/android/dx/rop/code/RegisterSpec;

    #@35
    if-eqz v1, :cond_17

    #@37
    iget-object v6, p0, Lcom/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@39
    invoke-virtual {v6, v5}, Lcom/android/dx/ssa/SsaMethod;->isRegALocal(Lcom/android/dx/rop/code/RegisterSpec;)Z

    #@3c
    move-result v6

    #@3d
    if-eqz v6, :cond_55

    #@3f
    sget-boolean v6, Lcom/android/dx/ssa/ConstCollector;->COLLECT_ONE_LOCAL:Z

    #@41
    if-eqz v6, :cond_17

    #@43
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@46
    move-result v6

    #@47
    if-nez v6, :cond_17

    #@49
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@4c
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4f
    move-result-object v0

    #@50
    check-cast v0, Lcom/android/dx/rop/code/RegisterSpec;

    #@52
    invoke-direct {p0, v5, v0}, Lcom/android/dx/ssa/ConstCollector;->fixLocalAssignment(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)V

    #@55
    :cond_55
    new-instance v6, Lcom/android/dx/ssa/ConstCollector$2;

    #@57
    invoke-direct {v6, p0, v5, v1}, Lcom/android/dx/ssa/ConstCollector$2;-><init>(Lcom/android/dx/ssa/ConstCollector;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)V

    #@5a
    invoke-virtual {v5}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@5d
    move-result v0

    #@5e
    aget-object v0, v4, v0

    #@60
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@63
    move-result-object v1

    #@64
    :cond_64
    :goto_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@67
    move-result v0

    #@68
    if-eqz v0, :cond_17

    #@6a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6d
    move-result-object v0

    #@6e
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@70
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->canThrow()Z

    #@73
    move-result v5

    #@74
    if-eqz v5, :cond_85

    #@76
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@79
    move-result-object v5

    #@7a
    invoke-virtual {v5}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    #@7d
    move-result-object v5

    #@7e
    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    #@81
    move-result v5

    #@82
    const/4 v7, 0x1

    #@83
    if-gt v5, v7, :cond_64

    #@85
    :cond_85
    invoke-virtual {v0, v6}, Lcom/android/dx/ssa/SsaInsn;->mapSourceRegisters(Lcom/android/dx/ssa/RegisterMapper;)V

    #@88
    goto :goto_64

    #@89
    :cond_89
    return-void
.end method
