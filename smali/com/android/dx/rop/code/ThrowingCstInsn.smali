.class public final Lcom/android/dx/rop/code/ThrowingCstInsn;
.super Lcom/android/dx/rop/code/CstInsn;


# instance fields
.field private final catches:Lcom/android/dx/rop/type/TypeList;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)V
    .registers 12

    #@0
    const/4 v3, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v4, p3

    #@5
    move-object v5, p5

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/CstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V

    #@9
    invoke-virtual {p1}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    #@c
    move-result v0

    #@d
    const/4 v1, 0x6

    #@e
    if-eq v0, v1, :cond_18

    #@10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string v1, "bogus branchingness"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    :cond_18
    if-nez p4, :cond_22

    #@1a
    new-instance v0, Ljava/lang/NullPointerException;

    #@1c
    const-string v1, "catches == null"

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    :cond_22
    iput-object p4, p0, Lcom/android/dx/rop/code/ThrowingCstInsn;->catches:Lcom/android/dx/rop/type/TypeList;

    #@24
    return-void
.end method


# virtual methods
.method public accept(Lcom/android/dx/rop/code/Insn$Visitor;)V
    .registers 2

    #@0
    invoke-interface {p1, p0}, Lcom/android/dx/rop/code/Insn$Visitor;->visitThrowingCstInsn(Lcom/android/dx/rop/code/ThrowingCstInsn;)V

    #@3
    return-void
.end method

.method public getCatches()Lcom/android/dx/rop/type/TypeList;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/ThrowingCstInsn;->catches:Lcom/android/dx/rop/type/TypeList;

    #@2
    return-object v0
.end method

.method public getInlineString()Ljava/lang/String;
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/code/ThrowingCstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/Constant;->toHuman()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    instance-of v2, v0, Lcom/android/dx/rop/cst/CstString;

    #@a
    if-eqz v2, :cond_30

    #@c
    check-cast v0, Lcom/android/dx/rop/cst/CstString;

    #@e
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstString;->toQuoted()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    :goto_12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    const-string v1, " "

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    iget-object v1, p0, Lcom/android/dx/rop/code/ThrowingCstInsn;->catches:Lcom/android/dx/rop/type/TypeList;

    #@23
    invoke-static {v1}, Lcom/android/dx/rop/code/ThrowingInsn;->toCatchString(Lcom/android/dx/rop/type/TypeList;)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    return-object v0

    #@30
    :cond_30
    move-object v0, v1

    #@31
    goto :goto_12
.end method

.method public withAddedCatch(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/code/Insn;
    .registers 8

    #@0
    new-instance v0, Lcom/android/dx/rop/code/ThrowingCstInsn;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/rop/code/ThrowingCstInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/android/dx/rop/code/ThrowingCstInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {p0}, Lcom/android/dx/rop/code/ThrowingCstInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@d
    move-result-object v3

    #@e
    iget-object v4, p0, Lcom/android/dx/rop/code/ThrowingCstInsn;->catches:Lcom/android/dx/rop/type/TypeList;

    #@10
    invoke-interface {v4, p1}, Lcom/android/dx/rop/type/TypeList;->withAddedType(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/TypeList;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {p0}, Lcom/android/dx/rop/code/ThrowingCstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    #@17
    move-result-object v5

    #@18
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)V

    #@1b
    return-object v0
.end method

.method public withNewRegisters(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/rop/code/Insn;
    .registers 9

    #@0
    new-instance v0, Lcom/android/dx/rop/code/ThrowingCstInsn;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/rop/code/ThrowingCstInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/android/dx/rop/code/ThrowingCstInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@9
    move-result-object v2

    #@a
    iget-object v4, p0, Lcom/android/dx/rop/code/ThrowingCstInsn;->catches:Lcom/android/dx/rop/type/TypeList;

    #@c
    invoke-virtual {p0}, Lcom/android/dx/rop/code/ThrowingCstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    #@f
    move-result-object v5

    #@10
    move-object v3, p2

    #@11
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)V

    #@14
    return-object v0
.end method

.method public withRegisterOffset(I)Lcom/android/dx/rop/code/Insn;
    .registers 8

    #@0
    new-instance v0, Lcom/android/dx/rop/code/ThrowingCstInsn;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/rop/code/ThrowingCstInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/android/dx/rop/code/ThrowingCstInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {p0}, Lcom/android/dx/rop/code/ThrowingCstInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3, p1}, Lcom/android/dx/rop/code/RegisterSpecList;->withOffset(I)Lcom/android/dx/rop/code/RegisterSpecList;

    #@11
    move-result-object v3

    #@12
    iget-object v4, p0, Lcom/android/dx/rop/code/ThrowingCstInsn;->catches:Lcom/android/dx/rop/type/TypeList;

    #@14
    invoke-virtual {p0}, Lcom/android/dx/rop/code/ThrowingCstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    #@17
    move-result-object v5

    #@18
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)V

    #@1b
    return-object v0
.end method
