.class public final Lcom/android/dx/rop/code/FillArrayDataInsn;
.super Lcom/android/dx/rop/code/Insn;


# instance fields
.field private final arrayType:Lcom/android/dx/rop/cst/Constant;

.field private final initValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/rop/cst/Constant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Ljava/util/ArrayList;Lcom/android/dx/rop/cst/Constant;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/rop/code/Rop;",
            "Lcom/android/dx/rop/code/SourcePosition;",
            "Lcom/android/dx/rop/code/RegisterSpecList;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/rop/cst/Constant;",
            ">;",
            "Lcom/android/dx/rop/cst/Constant;",
            ")V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/dx/rop/code/Insn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@4
    invoke-virtual {p1}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x1

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
    iput-object p4, p0, Lcom/android/dx/rop/code/FillArrayDataInsn;->initValues:Ljava/util/ArrayList;

    #@15
    iput-object p5, p0, Lcom/android/dx/rop/code/FillArrayDataInsn;->arrayType:Lcom/android/dx/rop/cst/Constant;

    #@17
    return-void
.end method


# virtual methods
.method public accept(Lcom/android/dx/rop/code/Insn$Visitor;)V
    .registers 2

    #@0
    invoke-interface {p1, p0}, Lcom/android/dx/rop/code/Insn$Visitor;->visitFillArrayDataInsn(Lcom/android/dx/rop/code/FillArrayDataInsn;)V

    #@3
    return-void
.end method

.method public getCatches()Lcom/android/dx/rop/type/TypeList;
    .registers 2

    #@0
    sget-object v0, Lcom/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/android/dx/rop/type/StdTypeList;

    #@2
    return-object v0
.end method

.method public getConstant()Lcom/android/dx/rop/cst/Constant;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/FillArrayDataInsn;->arrayType:Lcom/android/dx/rop/cst/Constant;

    #@2
    return-object v0
.end method

.method public getInitValues()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/rop/cst/Constant;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/FillArrayDataInsn;->initValues:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public withAddedCatch(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/code/Insn;
    .registers 4

    #@0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v1, "unsupported"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method

.method public withNewRegisters(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/rop/code/Insn;
    .registers 9

    #@0
    new-instance v0, Lcom/android/dx/rop/code/FillArrayDataInsn;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/rop/code/FillArrayDataInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/android/dx/rop/code/FillArrayDataInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@9
    move-result-object v2

    #@a
    iget-object v4, p0, Lcom/android/dx/rop/code/FillArrayDataInsn;->initValues:Ljava/util/ArrayList;

    #@c
    iget-object v5, p0, Lcom/android/dx/rop/code/FillArrayDataInsn;->arrayType:Lcom/android/dx/rop/cst/Constant;

    #@e
    move-object v3, p2

    #@f
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/FillArrayDataInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Ljava/util/ArrayList;Lcom/android/dx/rop/cst/Constant;)V

    #@12
    return-object v0
.end method

.method public withRegisterOffset(I)Lcom/android/dx/rop/code/Insn;
    .registers 8

    #@0
    new-instance v0, Lcom/android/dx/rop/code/FillArrayDataInsn;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/rop/code/FillArrayDataInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/android/dx/rop/code/FillArrayDataInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {p0}, Lcom/android/dx/rop/code/FillArrayDataInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3, p1}, Lcom/android/dx/rop/code/RegisterSpecList;->withOffset(I)Lcom/android/dx/rop/code/RegisterSpecList;

    #@11
    move-result-object v3

    #@12
    iget-object v4, p0, Lcom/android/dx/rop/code/FillArrayDataInsn;->initValues:Ljava/util/ArrayList;

    #@14
    iget-object v5, p0, Lcom/android/dx/rop/code/FillArrayDataInsn;->arrayType:Lcom/android/dx/rop/cst/Constant;

    #@16
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/FillArrayDataInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Ljava/util/ArrayList;Lcom/android/dx/rop/cst/Constant;)V

    #@19
    return-object v0
.end method
