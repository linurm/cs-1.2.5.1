.class public Lcom/android/dx/ssa/PhiTypeResolver;
.super Ljava/lang/Object;


# instance fields
.field ssaMeth:Lcom/android/dx/ssa/SsaMethod;

.field private final worklist:Ljava/util/BitSet;


# direct methods
.method private constructor <init>(Lcom/android/dx/ssa/SsaMethod;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/android/dx/ssa/PhiTypeResolver;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@5
    new-instance v0, Ljava/util/BitSet;

    #@7
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    #@a
    move-result v1

    #@b
    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    #@e
    iput-object v0, p0, Lcom/android/dx/ssa/PhiTypeResolver;->worklist:Ljava/util/BitSet;

    #@10
    return-void
.end method

.method private static equalsHandlesNulls(Lcom/android/dx/rop/code/LocalItem;Lcom/android/dx/rop/code/LocalItem;)Z
    .registers 3

    #@0
    if-eq p0, p1, :cond_a

    #@2
    if-eqz p0, :cond_c

    #@4
    invoke-virtual {p0, p1}, Lcom/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_c

    #@a
    :cond_a
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

.method public static process(Lcom/android/dx/ssa/SsaMethod;)V
    .registers 2

    #@0
    new-instance v0, Lcom/android/dx/ssa/PhiTypeResolver;

    #@2
    invoke-direct {v0, p0}, Lcom/android/dx/ssa/PhiTypeResolver;-><init>(Lcom/android/dx/ssa/SsaMethod;)V

    #@5
    invoke-direct {v0}, Lcom/android/dx/ssa/PhiTypeResolver;->run()V

    #@8
    return-void
.end method

.method private run()V
    .registers 7

    #@0
    const/4 v2, 0x0

    #@1
    iget-object v0, p0, Lcom/android/dx/ssa/PhiTypeResolver;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@3
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    #@6
    move-result v1

    #@7
    move v0, v2

    #@8
    :goto_8
    if-ge v0, v1, :cond_24

    #@a
    iget-object v3, p0, Lcom/android/dx/ssa/PhiTypeResolver;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@c
    invoke-virtual {v3, v0}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    #@f
    move-result-object v3

    #@10
    if-eqz v3, :cond_21

    #@12
    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getBasicType()I

    #@19
    move-result v3

    #@1a
    if-nez v3, :cond_21

    #@1c
    iget-object v3, p0, Lcom/android/dx/ssa/PhiTypeResolver;->worklist:Ljava/util/BitSet;

    #@1e
    invoke-virtual {v3, v0}, Ljava/util/BitSet;->set(I)V

    #@21
    :cond_21
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_8

    #@24
    :cond_24
    iget-object v0, p0, Lcom/android/dx/ssa/PhiTypeResolver;->worklist:Ljava/util/BitSet;

    #@26
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    #@29
    move-result v1

    #@2a
    if-ltz v1, :cond_69

    #@2c
    iget-object v0, p0, Lcom/android/dx/ssa/PhiTypeResolver;->worklist:Ljava/util/BitSet;

    #@2e
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    #@31
    iget-object v0, p0, Lcom/android/dx/ssa/PhiTypeResolver;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@33
    invoke-virtual {v0, v1}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    #@36
    move-result-object v0

    #@37
    check-cast v0, Lcom/android/dx/ssa/PhiInsn;

    #@39
    invoke-virtual {p0, v0}, Lcom/android/dx/ssa/PhiTypeResolver;->resolveResultType(Lcom/android/dx/ssa/PhiInsn;)Z

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_24

    #@3f
    iget-object v0, p0, Lcom/android/dx/ssa/PhiTypeResolver;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@41
    invoke-virtual {v0, v1}, Lcom/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    #@44
    move-result-object v3

    #@45
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@48
    move-result v4

    #@49
    move v1, v2

    #@4a
    :goto_4a
    if-ge v1, v4, :cond_24

    #@4c
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4f
    move-result-object v0

    #@50
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@52
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@55
    move-result-object v5

    #@56
    if-eqz v5, :cond_65

    #@58
    instance-of v0, v0, Lcom/android/dx/ssa/PhiInsn;

    #@5a
    if-eqz v0, :cond_65

    #@5c
    iget-object v0, p0, Lcom/android/dx/ssa/PhiTypeResolver;->worklist:Ljava/util/BitSet;

    #@5e
    invoke-virtual {v5}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@61
    move-result v5

    #@62
    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    #@65
    :cond_65
    add-int/lit8 v0, v1, 0x1

    #@67
    move v1, v0

    #@68
    goto :goto_4a

    #@69
    :cond_69
    return-void
.end method


# virtual methods
.method resolveResultType(Lcom/android/dx/ssa/PhiInsn;)Z
    .registers 14

    #@0
    const/4 v6, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    iget-object v0, p0, Lcom/android/dx/ssa/PhiTypeResolver;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@5
    invoke-virtual {p1, v0}, Lcom/android/dx/ssa/PhiInsn;->updateSourcesToDefinitions(Lcom/android/dx/ssa/SsaMethod;)V

    #@8
    invoke-virtual {p1}, Lcom/android/dx/ssa/PhiInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@b
    move-result-object v8

    #@c
    const/4 v3, -0x1

    #@d
    invoke-virtual {v8}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@10
    move-result v9

    #@11
    move-object v1, v6

    #@12
    move v2, v5

    #@13
    :goto_13
    if-ge v2, v9, :cond_25

    #@15
    invoke-virtual {v8, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getBasicType()I

    #@1c
    move-result v7

    #@1d
    if-eqz v7, :cond_ae

    #@1f
    move v1, v2

    #@20
    :goto_20
    add-int/lit8 v2, v2, 0x1

    #@22
    move v3, v1

    #@23
    move-object v1, v0

    #@24
    goto :goto_13

    #@25
    :cond_25
    if-nez v1, :cond_28

    #@27
    :cond_27
    :goto_27
    return v5

    #@28
    :cond_28
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    #@2f
    move-result-object v0

    #@30
    move v1, v4

    #@31
    move v7, v5

    #@32
    :goto_32
    if-ge v7, v9, :cond_5b

    #@34
    if-ne v7, v3, :cond_39

    #@36
    :cond_36
    :goto_36
    add-int/lit8 v7, v7, 0x1

    #@38
    goto :goto_32

    #@39
    :cond_39
    invoke-virtual {v8, v7}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@3c
    move-result-object v10

    #@3d
    invoke-virtual {v10}, Lcom/android/dx/rop/code/RegisterSpec;->getBasicType()I

    #@40
    move-result v11

    #@41
    if-eqz v11, :cond_36

    #@43
    if-eqz v1, :cond_59

    #@45
    invoke-virtual {v10}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    #@48
    move-result-object v1

    #@49
    invoke-static {v2, v1}, Lcom/android/dx/ssa/PhiTypeResolver;->equalsHandlesNulls(Lcom/android/dx/rop/code/LocalItem;Lcom/android/dx/rop/code/LocalItem;)Z

    #@4c
    move-result v1

    #@4d
    if-eqz v1, :cond_59

    #@4f
    move v1, v4

    #@50
    :goto_50
    invoke-virtual {v10}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    #@53
    move-result-object v10

    #@54
    invoke-static {v0, v10}, Lcom/android/dx/cf/code/Merger;->mergeType(Lcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/type/TypeBearer;

    #@57
    move-result-object v0

    #@58
    goto :goto_36

    #@59
    :cond_59
    move v1, v5

    #@5a
    goto :goto_50

    #@5b
    :cond_5b
    if-eqz v0, :cond_79

    #@5d
    if-eqz v1, :cond_ac

    #@5f
    move-object v1, v2

    #@60
    :goto_60
    invoke-virtual {p1}, Lcom/android/dx/ssa/PhiInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@63
    move-result-object v2

    #@64
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    #@67
    move-result-object v3

    #@68
    if-ne v3, v0, :cond_74

    #@6a
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    #@6d
    move-result-object v2

    #@6e
    invoke-static {v1, v2}, Lcom/android/dx/ssa/PhiTypeResolver;->equalsHandlesNulls(Lcom/android/dx/rop/code/LocalItem;Lcom/android/dx/rop/code/LocalItem;)Z

    #@71
    move-result v2

    #@72
    if-nez v2, :cond_27

    #@74
    :cond_74
    invoke-virtual {p1, v0, v1}, Lcom/android/dx/ssa/PhiInsn;->changeResultType(Lcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)V

    #@77
    move v5, v4

    #@78
    goto :goto_27

    #@79
    :cond_79
    new-instance v0, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    :goto_7e
    if-ge v5, v9, :cond_93

    #@80
    invoke-virtual {v8, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@83
    move-result-object v1

    #@84
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->toString()Ljava/lang/String;

    #@87
    move-result-object v1

    #@88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    const/16 v1, 0x20

    #@8d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@90
    add-int/lit8 v5, v5, 0x1

    #@92
    goto :goto_7e

    #@93
    :cond_93
    new-instance v1, Ljava/lang/RuntimeException;

    #@95
    new-instance v2, Ljava/lang/StringBuilder;

    #@97
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9a
    const-string v3, "Couldn\'t map types in phi insn:"

    #@9c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v2

    #@a0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v0

    #@a4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v0

    #@a8
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@ab
    throw v1

    #@ac
    :cond_ac
    move-object v1, v6

    #@ad
    goto :goto_60

    #@ae
    :cond_ae
    move-object v0, v1

    #@af
    move v1, v3

    #@b0
    goto/16 :goto_20
.end method
