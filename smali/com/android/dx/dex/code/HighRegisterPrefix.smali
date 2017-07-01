.class public final Lcom/android/dx/dex/code/HighRegisterPrefix;
.super Lcom/android/dx/dex/code/VariableSizeInsn;


# instance fields
.field private insns:[Lcom/android/dx/dex/code/SimpleInsn;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;)V
    .registers 5

    #@0
    invoke-direct {p0, p1, p2}, Lcom/android/dx/dex/code/VariableSizeInsn;-><init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@3
    invoke-virtual {p2}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_11

    #@9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string v1, "registers.size() == 0"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    iput-object v0, p0, Lcom/android/dx/dex/code/HighRegisterPrefix;->insns:[Lcom/android/dx/dex/code/SimpleInsn;

    #@14
    return-void
.end method

.method private calculateInsnsIfNecessary()V
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Lcom/android/dx/dex/code/HighRegisterPrefix;->insns:[Lcom/android/dx/dex/code/SimpleInsn;

    #@3
    if-eqz v1, :cond_6

    #@5
    :cond_5
    return-void

    #@6
    :cond_6
    invoke-virtual {p0}, Lcom/android/dx/dex/code/HighRegisterPrefix;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@d
    move-result v3

    #@e
    new-array v1, v3, [Lcom/android/dx/dex/code/SimpleInsn;

    #@10
    iput-object v1, p0, Lcom/android/dx/dex/code/HighRegisterPrefix;->insns:[Lcom/android/dx/dex/code/SimpleInsn;

    #@12
    move v1, v0

    #@13
    :goto_13
    if-ge v1, v3, :cond_5

    #@15
    invoke-virtual {v2, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@18
    move-result-object v4

    #@19
    iget-object v5, p0, Lcom/android/dx/dex/code/HighRegisterPrefix;->insns:[Lcom/android/dx/dex/code/SimpleInsn;

    #@1b
    invoke-static {v4, v0}, Lcom/android/dx/dex/code/HighRegisterPrefix;->moveInsnFor(Lcom/android/dx/rop/code/RegisterSpec;I)Lcom/android/dx/dex/code/SimpleInsn;

    #@1e
    move-result-object v6

    #@1f
    aput-object v6, v5, v1

    #@21
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@24
    move-result v4

    #@25
    add-int/2addr v0, v4

    #@26
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_13
.end method

.method private static moveInsnFor(Lcom/android/dx/rop/code/RegisterSpec;I)Lcom/android/dx/dex/code/SimpleInsn;
    .registers 4

    #@0
    sget-object v0, Lcom/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/android/dx/rop/code/SourcePosition;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    #@5
    move-result-object v1

    #@6
    invoke-static {p1, v1}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    #@9
    move-result-object v1

    #@a
    invoke-static {v0, v1, p0}, Lcom/android/dx/dex/code/DalvInsn;->makeMove(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/dex/code/SimpleInsn;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method


# virtual methods
.method protected argString()Ljava/lang/String;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public codeSize()I
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0}, Lcom/android/dx/dex/code/HighRegisterPrefix;->calculateInsnsIfNecessary()V

    #@4
    iget-object v2, p0, Lcom/android/dx/dex/code/HighRegisterPrefix;->insns:[Lcom/android/dx/dex/code/SimpleInsn;

    #@6
    array-length v3, v2

    #@7
    move v1, v0

    #@8
    :goto_8
    if-ge v0, v3, :cond_14

    #@a
    aget-object v4, v2, v0

    #@c
    invoke-virtual {v4}, Lcom/android/dx/dex/code/SimpleInsn;->codeSize()I

    #@f
    move-result v4

    #@10
    add-int/2addr v1, v4

    #@11
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_8

    #@14
    :cond_14
    return v1
.end method

.method protected listingString0(Z)Ljava/lang/String;
    .registers 10

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0}, Lcom/android/dx/dex/code/HighRegisterPrefix;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@8
    move-result v3

    #@9
    new-instance v4, Ljava/lang/StringBuffer;

    #@b
    const/16 v1, 0x64

    #@d
    invoke-direct {v4, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    #@10
    move v1, v0

    #@11
    :goto_11
    if-ge v1, v3, :cond_31

    #@13
    invoke-virtual {v2, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@16
    move-result-object v5

    #@17
    invoke-static {v5, v0}, Lcom/android/dx/dex/code/HighRegisterPrefix;->moveInsnFor(Lcom/android/dx/rop/code/RegisterSpec;I)Lcom/android/dx/dex/code/SimpleInsn;

    #@1a
    move-result-object v6

    #@1b
    if-eqz v1, :cond_22

    #@1d
    const/16 v7, 0xa

    #@1f
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@22
    :cond_22
    invoke-virtual {v6, p1}, Lcom/android/dx/dex/code/SimpleInsn;->listingString0(Z)Ljava/lang/String;

    #@25
    move-result-object v6

    #@26
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@29
    invoke-virtual {v5}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@2c
    move-result v5

    #@2d
    add-int/2addr v0, v5

    #@2e
    add-int/lit8 v1, v1, 0x1

    #@30
    goto :goto_11

    #@31
    :cond_31
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    return-object v0
.end method

.method public withRegisters(Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/dex/code/DalvInsn;
    .registers 4

    #@0
    new-instance v0, Lcom/android/dx/dex/code/HighRegisterPrefix;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/dex/code/HighRegisterPrefix;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Lcom/android/dx/dex/code/HighRegisterPrefix;-><init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@9
    return-object v0
.end method

.method public writeTo(Lcom/android/dx/util/AnnotatedOutput;)V
    .registers 6

    #@0
    invoke-direct {p0}, Lcom/android/dx/dex/code/HighRegisterPrefix;->calculateInsnsIfNecessary()V

    #@3
    iget-object v1, p0, Lcom/android/dx/dex/code/HighRegisterPrefix;->insns:[Lcom/android/dx/dex/code/SimpleInsn;

    #@5
    array-length v2, v1

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    if-ge v0, v2, :cond_11

    #@9
    aget-object v3, v1, v0

    #@b
    invoke-virtual {v3, p1}, Lcom/android/dx/dex/code/SimpleInsn;->writeTo(Lcom/android/dx/util/AnnotatedOutput;)V

    #@e
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_7

    #@11
    :cond_11
    return-void
.end method
