.class public final Lcom/android/dx/rop/code/ThrowingInsn;
.super Lcom/android/dx/rop/code/Insn;


# instance fields
.field private final catches:Lcom/android/dx/rop/type/TypeList;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;)V
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/dx/rop/code/Insn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@4
    invoke-virtual {p1}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x6

    #@9
    if-eq v0, v1, :cond_13

    #@b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string v1, "bogus branchingness"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    :cond_13
    if-nez p4, :cond_1d

    #@15
    new-instance v0, Ljava/lang/NullPointerException;

    #@17
    const-string v1, "catches == null"

    #@19
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    :cond_1d
    iput-object p4, p0, Lcom/android/dx/rop/code/ThrowingInsn;->catches:Lcom/android/dx/rop/type/TypeList;

    #@1f
    return-void
.end method

.method public static toCatchString(Lcom/android/dx/rop/type/TypeList;)Ljava/lang/String;
    .registers 5

    #@0
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    const/16 v0, 0x64

    #@4
    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    #@7
    const-string v0, "catch"

    #@9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c
    invoke-interface {p0}, Lcom/android/dx/rop/type/TypeList;->size()I

    #@f
    move-result v2

    #@10
    const/4 v0, 0x0

    #@11
    :goto_11
    if-ge v0, v2, :cond_26

    #@13
    const-string v3, " "

    #@15
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@18
    invoke-interface {p0, v0}, Lcom/android/dx/rop/type/TypeList;->getType(I)Lcom/android/dx/rop/type/Type;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Lcom/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_11

    #@26
    :cond_26
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method


# virtual methods
.method public accept(Lcom/android/dx/rop/code/Insn$Visitor;)V
    .registers 2

    #@0
    invoke-interface {p1, p0}, Lcom/android/dx/rop/code/Insn$Visitor;->visitThrowingInsn(Lcom/android/dx/rop/code/ThrowingInsn;)V

    #@3
    return-void
.end method

.method public getCatches()Lcom/android/dx/rop/type/TypeList;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/ThrowingInsn;->catches:Lcom/android/dx/rop/type/TypeList;

    #@2
    return-object v0
.end method

.method public getInlineString()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/ThrowingInsn;->catches:Lcom/android/dx/rop/type/TypeList;

    #@2
    invoke-static {v0}, Lcom/android/dx/rop/code/ThrowingInsn;->toCatchString(Lcom/android/dx/rop/type/TypeList;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public withAddedCatch(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/code/Insn;
    .registers 7

    #@0
    new-instance v0, Lcom/android/dx/rop/code/ThrowingInsn;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/rop/code/ThrowingInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/android/dx/rop/code/ThrowingInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {p0}, Lcom/android/dx/rop/code/ThrowingInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@d
    move-result-object v3

    #@e
    iget-object v4, p0, Lcom/android/dx/rop/code/ThrowingInsn;->catches:Lcom/android/dx/rop/type/TypeList;

    #@10
    invoke-interface {v4, p1}, Lcom/android/dx/rop/type/TypeList;->withAddedType(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/TypeList;

    #@13
    move-result-object v4

    #@14
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;)V

    #@17
    return-object v0
.end method

.method public withNewRegisters(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/rop/code/Insn;
    .registers 7

    #@0
    new-instance v0, Lcom/android/dx/rop/code/ThrowingInsn;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/rop/code/ThrowingInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/android/dx/rop/code/ThrowingInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@9
    move-result-object v2

    #@a
    iget-object v3, p0, Lcom/android/dx/rop/code/ThrowingInsn;->catches:Lcom/android/dx/rop/type/TypeList;

    #@c
    invoke-direct {v0, v1, v2, p2, v3}, Lcom/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;)V

    #@f
    return-object v0
.end method

.method public withRegisterOffset(I)Lcom/android/dx/rop/code/Insn;
    .registers 7

    #@0
    new-instance v0, Lcom/android/dx/rop/code/ThrowingInsn;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/rop/code/ThrowingInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/android/dx/rop/code/ThrowingInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {p0}, Lcom/android/dx/rop/code/ThrowingInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3, p1}, Lcom/android/dx/rop/code/RegisterSpecList;->withOffset(I)Lcom/android/dx/rop/code/RegisterSpecList;

    #@11
    move-result-object v3

    #@12
    iget-object v4, p0, Lcom/android/dx/rop/code/ThrowingInsn;->catches:Lcom/android/dx/rop/type/TypeList;

    #@14
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;)V

    #@17
    return-object v0
.end method
