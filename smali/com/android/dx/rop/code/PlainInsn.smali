.class public final Lcom/android/dx/rop/code/PlainInsn;
.super Lcom/android/dx/rop/code/Insn;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)V
    .registers 6

    #@0
    invoke-static {p4}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@7
    return-void
.end method

.method public constructor <init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V
    .registers 7

    #@0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/dx/rop/code/Insn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@3
    invoke-virtual {p1}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    #@6
    move-result v0

    #@7
    packed-switch v0, :pswitch_data_24

    #@a
    if-eqz p3, :cond_23

    #@c
    invoke-virtual {p1}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    #@f
    move-result v0

    #@10
    const/4 v1, 0x1

    #@11
    if-eq v0, v1, :cond_23

    #@13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    const-string v1, "can\'t mix branchingness with result"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    :pswitch_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1d
    const-string v1, "bogus branchingness"

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    :cond_23
    return-void

    #@24
    :pswitch_data_24
    .packed-switch 0x5
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method


# virtual methods
.method public accept(Lcom/android/dx/rop/code/Insn$Visitor;)V
    .registers 2

    #@0
    invoke-interface {p1, p0}, Lcom/android/dx/rop/code/Insn$Visitor;->visitPlainInsn(Lcom/android/dx/rop/code/PlainInsn;)V

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
    .registers 6

    #@0
    new-instance v0, Lcom/android/dx/rop/code/PlainInsn;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/rop/code/PlainInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/android/dx/rop/code/PlainInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@9
    move-result-object v2

    #@a
    invoke-direct {v0, v1, v2, p1, p2}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@d
    return-object v0
.end method

.method public withRegisterOffset(I)Lcom/android/dx/rop/code/Insn;
    .registers 7

    #@0
    new-instance v0, Lcom/android/dx/rop/code/PlainInsn;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/rop/code/PlainInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/android/dx/rop/code/PlainInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {p0}, Lcom/android/dx/rop/code/PlainInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3, p1}, Lcom/android/dx/rop/code/RegisterSpec;->withOffset(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {p0}, Lcom/android/dx/rop/code/PlainInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v4, p1}, Lcom/android/dx/rop/code/RegisterSpecList;->withOffset(I)Lcom/android/dx/rop/code/RegisterSpecList;

    #@19
    move-result-object v4

    #@1a
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@1d
    return-object v0
.end method

.method public withSourceLiteral()Lcom/android/dx/rop/code/Insn;
    .registers 7

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/code/PlainInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_b

    #@a
    :cond_a
    :goto_a
    return-object p0

    #@b
    :cond_b
    add-int/lit8 v0, v2, -0x1

    #@d
    invoke-virtual {v1, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    #@14
    move-result-object v0

    #@15
    invoke-interface {v0}, Lcom/android/dx/rop/type/TypeBearer;->isConstant()Z

    #@18
    move-result v3

    #@19
    if-nez v3, :cond_52

    #@1b
    const/4 v0, 0x0

    #@1c
    invoke-virtual {v1, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    #@23
    move-result-object v5

    #@24
    const/4 v0, 0x2

    #@25
    if-ne v2, v0, :cond_a

    #@27
    invoke-interface {v5}, Lcom/android/dx/rop/type/TypeBearer;->isConstant()Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_a

    #@2d
    check-cast v5, Lcom/android/dx/rop/cst/Constant;

    #@2f
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecList;->withoutFirst()Lcom/android/dx/rop/code/RegisterSpecList;

    #@32
    move-result-object v4

    #@33
    new-instance v0, Lcom/android/dx/rop/code/PlainCstInsn;

    #@35
    invoke-virtual {p0}, Lcom/android/dx/rop/code/PlainInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    #@3c
    move-result v1

    #@3d
    invoke-virtual {p0}, Lcom/android/dx/rop/code/PlainInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@40
    move-result-object v2

    #@41
    invoke-static {v1, v2, v4, v5}, Lcom/android/dx/rop/code/Rops;->ropFor(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/rop/code/Rop;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {p0}, Lcom/android/dx/rop/code/PlainInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {p0}, Lcom/android/dx/rop/code/PlainInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@4c
    move-result-object v3

    #@4d
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V

    #@50
    move-object p0, v0

    #@51
    goto :goto_a

    #@52
    :cond_52
    check-cast v0, Lcom/android/dx/rop/cst/Constant;

    #@54
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecList;->withoutLast()Lcom/android/dx/rop/code/RegisterSpecList;

    #@57
    move-result-object v4

    #@58
    :try_start_58
    invoke-virtual {p0}, Lcom/android/dx/rop/code/PlainInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@5b
    move-result-object v1

    #@5c
    invoke-virtual {v1}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    #@5f
    move-result v1

    #@60
    const/16 v2, 0xf

    #@62
    if-ne v1, v2, :cond_8d

    #@64
    instance-of v2, v0, Lcom/android/dx/rop/cst/CstInteger;

    #@66
    if-eqz v2, :cond_8d

    #@68
    check-cast v0, Lcom/android/dx/rop/cst/CstInteger;

    #@6a
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    #@6d
    move-result v0

    #@6e
    neg-int v0, v0

    #@6f
    invoke-static {v0}, Lcom/android/dx/rop/cst/CstInteger;->make(I)Lcom/android/dx/rop/cst/CstInteger;

    #@72
    move-result-object v5

    #@73
    const/16 v0, 0xe

    #@75
    :goto_75
    invoke-virtual {p0}, Lcom/android/dx/rop/code/PlainInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@78
    move-result-object v1

    #@79
    invoke-static {v0, v1, v4, v5}, Lcom/android/dx/rop/code/Rops;->ropFor(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/rop/code/Rop;
    :try_end_7c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_58 .. :try_end_7c} :catch_90

    #@7c
    move-result-object v1

    #@7d
    new-instance v0, Lcom/android/dx/rop/code/PlainCstInsn;

    #@7f
    invoke-virtual {p0}, Lcom/android/dx/rop/code/PlainInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@82
    move-result-object v2

    #@83
    invoke-virtual {p0}, Lcom/android/dx/rop/code/PlainInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@86
    move-result-object v3

    #@87
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V

    #@8a
    move-object p0, v0

    #@8b
    goto/16 :goto_a

    #@8d
    :cond_8d
    move-object v5, v0

    #@8e
    move v0, v1

    #@8f
    goto :goto_75

    #@90
    :catch_90
    move-exception v0

    #@91
    goto/16 :goto_a
.end method
