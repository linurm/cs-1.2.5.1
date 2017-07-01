.class public final Lcom/android/dx/dex/code/form/Form35c;
.super Lcom/android/dx/dex/code/InsnFormat;


# static fields
.field private static final MAX_NUM_OPS:I = 0x5

.field public static final THE_ONE:Lcom/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/android/dx/dex/code/form/Form35c;

    #@2
    invoke-direct {v0}, Lcom/android/dx/dex/code/form/Form35c;-><init>()V

    #@5
    sput-object v0, Lcom/android/dx/dex/code/form/Form35c;->THE_ONE:Lcom/android/dx/dex/code/InsnFormat;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/android/dx/dex/code/InsnFormat;-><init>()V

    #@3
    return-void
.end method

.method private static explicitize(Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/rop/code/RegisterSpecList;
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    invoke-static {p0}, Lcom/android/dx/dex/code/form/Form35c;->wordCount(Lcom/android/dx/rop/code/RegisterSpecList;)I

    #@4
    move-result v2

    #@5
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@8
    move-result v3

    #@9
    if-ne v2, v3, :cond_c

    #@b
    :goto_b
    return-object p0

    #@c
    :cond_c
    new-instance v0, Lcom/android/dx/rop/code/RegisterSpecList;

    #@e
    invoke-direct {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    #@11
    move v2, v1

    #@12
    :goto_12
    if-ge v2, v3, :cond_3b

    #@14
    invoke-virtual {p0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v0, v1, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    #@1b
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@1e
    move-result v5

    #@1f
    const/4 v6, 0x2

    #@20
    if-ne v5, v6, :cond_38

    #@22
    add-int/lit8 v5, v1, 0x1

    #@24
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@27
    move-result v4

    #@28
    add-int/lit8 v4, v4, 0x1

    #@2a
    sget-object v6, Lcom/android/dx/rop/type/Type;->VOID:Lcom/android/dx/rop/type/Type;

    #@2c
    invoke-static {v4, v6}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v0, v5, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    #@33
    add-int/lit8 v1, v1, 0x2

    #@35
    :goto_35
    add-int/lit8 v2, v2, 0x1

    #@37
    goto :goto_12

    #@38
    :cond_38
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_35

    #@3b
    :cond_3b
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    #@3e
    move-object p0, v0

    #@3f
    goto :goto_b
.end method

.method private static wordCount(Lcom/android/dx/rop/code/RegisterSpecList;)I
    .registers 9

    #@0
    const/4 v7, 0x5

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v0, -0x1

    #@3
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@6
    move-result v3

    #@7
    if-le v3, v7, :cond_a

    #@9
    :cond_9
    :goto_9
    return v0

    #@a
    :cond_a
    move v2, v1

    #@b
    :goto_b
    if-ge v2, v3, :cond_2a

    #@d
    invoke-virtual {p0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@14
    move-result v5

    #@15
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@18
    move-result v6

    #@19
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@1c
    move-result v4

    #@1d
    add-int/2addr v4, v6

    #@1e
    add-int/lit8 v4, v4, -0x1

    #@20
    invoke-static {v4}, Lcom/android/dx/dex/code/form/Form35c;->unsignedFitsInNibble(I)Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_9

    #@26
    add-int/lit8 v2, v2, 0x1

    #@28
    add-int/2addr v1, v5

    #@29
    goto :goto_b

    #@2a
    :cond_2a
    if-gt v1, v7, :cond_9

    #@2c
    move v0, v1

    #@2d
    goto :goto_9
.end method


# virtual methods
.method public codeSize()I
    .registers 2

    #@0
    const/4 v0, 0x3

    #@1
    return v0
.end method

.method public compatibleRegs(Lcom/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;
    .registers 8

    #@0
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@7
    move-result v2

    #@8
    new-instance v3, Ljava/util/BitSet;

    #@a
    invoke-direct {v3, v2}, Ljava/util/BitSet;-><init>(I)V

    #@d
    const/4 v0, 0x0

    #@e
    :goto_e
    if-ge v0, v2, :cond_29

    #@10
    invoke-virtual {v1, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@17
    move-result v5

    #@18
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@1b
    move-result v4

    #@1c
    add-int/2addr v4, v5

    #@1d
    add-int/lit8 v4, v4, -0x1

    #@1f
    invoke-static {v4}, Lcom/android/dx/dex/code/form/Form35c;->unsignedFitsInNibble(I)Z

    #@22
    move-result v4

    #@23
    invoke-virtual {v3, v0, v4}, Ljava/util/BitSet;->set(IZ)V

    #@26
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_e

    #@29
    :cond_29
    return-object v3
.end method

.method public insnArgString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .registers 4

    #@0
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form35c;->explicitize(Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@7
    move-result-object v0

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form35c;->regListString(Lcom/android/dx/rop/code/RegisterSpecList;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    const-string v1, ", "

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-static {p1}, Lcom/android/dx/dex/code/form/Form35c;->cstString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method

.method public insnCommentString(Lcom/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .registers 4

    #@0
    if-eqz p2, :cond_7

    #@2
    invoke-static {p1}, Lcom/android/dx/dex/code/form/Form35c;->cstComment(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    :goto_6
    return-object v0

    #@7
    :cond_7
    const-string v0, ""

    #@9
    goto :goto_6
.end method

.method public isCompatible(Lcom/android/dx/dex/code/DalvInsn;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    instance-of v1, p1, Lcom/android/dx/dex/code/CstInsn;

    #@3
    if-nez v1, :cond_6

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    check-cast p1, Lcom/android/dx/dex/code/CstInsn;

    #@8
    invoke-virtual {p1}, Lcom/android/dx/dex/code/CstInsn;->getIndex()I

    #@b
    move-result v1

    #@c
    invoke-static {v1}, Lcom/android/dx/dex/code/form/Form35c;->unsignedFitsInShort(I)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_5

    #@12
    invoke-virtual {p1}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    #@15
    move-result-object v1

    #@16
    instance-of v2, v1, Lcom/android/dx/rop/cst/CstMethodRef;

    #@18
    if-nez v2, :cond_1e

    #@1a
    instance-of v1, v1, Lcom/android/dx/rop/cst/CstType;

    #@1c
    if-eqz v1, :cond_5

    #@1e
    :cond_1e
    invoke-virtual {p1}, Lcom/android/dx/dex/code/CstInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@21
    move-result-object v1

    #@22
    invoke-static {v1}, Lcom/android/dx/dex/code/form/Form35c;->wordCount(Lcom/android/dx/rop/code/RegisterSpecList;)I

    #@25
    move-result v1

    #@26
    if-ltz v1, :cond_5

    #@28
    const/4 v0, 0x1

    #@29
    goto :goto_5
.end method

.method public writeTo(Lcom/android/dx/util/AnnotatedOutput;Lcom/android/dx/dex/code/DalvInsn;)V
    .registers 14

    #@0
    const/4 v10, 0x4

    #@1
    const/4 v9, 0x3

    #@2
    const/4 v3, 0x2

    #@3
    const/4 v2, 0x1

    #@4
    const/4 v1, 0x0

    #@5
    move-object v0, p2

    #@6
    check-cast v0, Lcom/android/dx/dex/code/CstInsn;

    #@8
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CstInsn;->getIndex()I

    #@b
    move-result v6

    #@c
    invoke-virtual {p2}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@f
    move-result-object v0

    #@10
    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form35c;->explicitize(Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@13
    move-result-object v7

    #@14
    invoke-virtual {v7}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@17
    move-result v8

    #@18
    if-lez v8, :cond_5f

    #@1a
    invoke-virtual {v7, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@21
    move-result v0

    #@22
    move v5, v0

    #@23
    :goto_23
    if-le v8, v2, :cond_61

    #@25
    invoke-virtual {v7, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@2c
    move-result v0

    #@2d
    move v4, v0

    #@2e
    :goto_2e
    if-le v8, v3, :cond_63

    #@30
    invoke-virtual {v7, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@37
    move-result v0

    #@38
    move v3, v0

    #@39
    :goto_39
    if-le v8, v9, :cond_65

    #@3b
    invoke-virtual {v7, v9}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@42
    move-result v0

    #@43
    move v2, v0

    #@44
    :goto_44
    if-le v8, v10, :cond_67

    #@46
    invoke-virtual {v7, v10}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@4d
    move-result v0

    #@4e
    :goto_4e
    invoke-static {v0, v8}, Lcom/android/dx/dex/code/form/Form35c;->makeByte(II)I

    #@51
    move-result v0

    #@52
    invoke-static {p2, v0}, Lcom/android/dx/dex/code/form/Form35c;->opcodeUnit(Lcom/android/dx/dex/code/DalvInsn;I)S

    #@55
    move-result v0

    #@56
    int-to-short v1, v6

    #@57
    invoke-static {v5, v4, v3, v2}, Lcom/android/dx/dex/code/form/Form35c;->codeUnit(IIII)S

    #@5a
    move-result v2

    #@5b
    invoke-static {p1, v0, v1, v2}, Lcom/android/dx/dex/code/form/Form35c;->write(Lcom/android/dx/util/AnnotatedOutput;SSS)V

    #@5e
    return-void

    #@5f
    :cond_5f
    move v5, v1

    #@60
    goto :goto_23

    #@61
    :cond_61
    move v4, v1

    #@62
    goto :goto_2e

    #@63
    :cond_63
    move v3, v1

    #@64
    goto :goto_39

    #@65
    :cond_65
    move v2, v1

    #@66
    goto :goto_44

    #@67
    :cond_67
    move v0, v1

    #@68
    goto :goto_4e
.end method
