.class public abstract Lcom/android/dx/rop/code/CstInsn;
.super Lcom/android/dx/rop/code/Insn;


# instance fields
.field private final cst:Lcom/android/dx/rop/cst/Constant;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V
    .registers 8

    #@0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/dx/rop/code/Insn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@3
    if-nez p5, :cond_d

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string v1, "cst == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    iput-object p5, p0, Lcom/android/dx/rop/code/CstInsn;->cst:Lcom/android/dx/rop/cst/Constant;

    #@f
    return-void
.end method


# virtual methods
.method public contentEquals(Lcom/android/dx/rop/code/Insn;)Z
    .registers 4

    #@0
    invoke-super {p0, p1}, Lcom/android/dx/rop/code/Insn;->contentEquals(Lcom/android/dx/rop/code/Insn;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_16

    #@6
    iget-object v0, p0, Lcom/android/dx/rop/code/CstInsn;->cst:Lcom/android/dx/rop/cst/Constant;

    #@8
    check-cast p1, Lcom/android/dx/rop/code/CstInsn;

    #@a
    invoke-virtual {p1}, Lcom/android/dx/rop/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_16

    #@14
    const/4 v0, 0x1

    #@15
    :goto_15
    return v0

    #@16
    :cond_16
    const/4 v0, 0x0

    #@17
    goto :goto_15
.end method

.method public getConstant()Lcom/android/dx/rop/cst/Constant;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/CstInsn;->cst:Lcom/android/dx/rop/cst/Constant;

    #@2
    return-object v0
.end method

.method public getInlineString()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/CstInsn;->cst:Lcom/android/dx/rop/cst/Constant;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/Constant;->toHuman()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
