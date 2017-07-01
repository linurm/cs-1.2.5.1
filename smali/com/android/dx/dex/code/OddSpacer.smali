.class public final Lcom/android/dx/dex/code/OddSpacer;
.super Lcom/android/dx/dex/code/VariableSizeInsn;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/code/SourcePosition;)V
    .registers 3

    #@0
    sget-object v0, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    #@2
    invoke-direct {p0, p1, v0}, Lcom/android/dx/dex/code/VariableSizeInsn;-><init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@5
    return-void
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
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/android/dx/dex/code/OddSpacer;->getAddress()I

    #@3
    move-result v0

    #@4
    and-int/lit8 v0, v0, 0x1

    #@6
    return v0
.end method

.method protected listingString0(Z)Ljava/lang/String;
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/android/dx/dex/code/OddSpacer;->codeSize()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    return-object v0

    #@8
    :cond_8
    const-string v0, "nop // spacer"

    #@a
    goto :goto_7
.end method

.method public withRegisters(Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/dex/code/DalvInsn;
    .registers 4

    #@0
    new-instance v0, Lcom/android/dx/dex/code/OddSpacer;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/dex/code/OddSpacer;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Lcom/android/dx/dex/code/OddSpacer;-><init>(Lcom/android/dx/rop/code/SourcePosition;)V

    #@9
    return-object v0
.end method

.method public writeTo(Lcom/android/dx/util/AnnotatedOutput;)V
    .registers 4

    #@0
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0}, Lcom/android/dx/dex/code/OddSpacer;->codeSize()I

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_e

    #@7
    invoke-static {v1, v1}, Lcom/android/dx/dex/code/InsnFormat;->codeUnit(II)S

    #@a
    move-result v0

    #@b
    invoke-interface {p1, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    #@e
    :cond_e
    return-void
.end method
