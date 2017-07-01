.class final Lcom/android/dx/dex/code/RopTranslator$1;
.super Lcom/android/dx/rop/code/Insn$BaseVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dx/dex/code/RopTranslator;->calculateParamsAreInOrder(Lcom/android/dx/rop/code/RopMethod;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic val$initialRegCount:I

.field final synthetic val$paramSize:I

.field final synthetic val$paramsAreInOrder:[Z


# direct methods
.method constructor <init>([ZII)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/android/dx/dex/code/RopTranslator$1;->val$paramsAreInOrder:[Z

    #@2
    iput p2, p0, Lcom/android/dx/dex/code/RopTranslator$1;->val$initialRegCount:I

    #@4
    iput p3, p0, Lcom/android/dx/dex/code/RopTranslator$1;->val$paramSize:I

    #@6
    invoke-direct {p0}, Lcom/android/dx/rop/code/Insn$BaseVisitor;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public visitPlainCstInsn(Lcom/android/dx/rop/code/PlainCstInsn;)V
    .registers 7

    #@0
    const/4 v1, 0x0

    #@1
    invoke-virtual {p1}, Lcom/android/dx/rop/code/PlainCstInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    #@8
    move-result v0

    #@9
    const/4 v2, 0x3

    #@a
    if-ne v0, v2, :cond_31

    #@c
    invoke-virtual {p1}, Lcom/android/dx/rop/code/PlainCstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/dx/rop/cst/CstInteger;

    #@12
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    #@15
    move-result v0

    #@16
    iget-object v2, p0, Lcom/android/dx/dex/code/RopTranslator$1;->val$paramsAreInOrder:[Z

    #@18
    iget-object v3, p0, Lcom/android/dx/dex/code/RopTranslator$1;->val$paramsAreInOrder:[Z

    #@1a
    aget-boolean v3, v3, v1

    #@1c
    if-eqz v3, :cond_32

    #@1e
    iget v3, p0, Lcom/android/dx/dex/code/RopTranslator$1;->val$initialRegCount:I

    #@20
    iget v4, p0, Lcom/android/dx/dex/code/RopTranslator$1;->val$paramSize:I

    #@22
    sub-int/2addr v3, v4

    #@23
    add-int/2addr v0, v3

    #@24
    invoke-virtual {p1}, Lcom/android/dx/rop/code/PlainCstInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@2b
    move-result v3

    #@2c
    if-ne v0, v3, :cond_32

    #@2e
    const/4 v0, 0x1

    #@2f
    :goto_2f
    aput-boolean v0, v2, v1

    #@31
    :cond_31
    return-void

    #@32
    :cond_32
    move v0, v1

    #@33
    goto :goto_2f
.end method
