.class public final Lcom/android/dx/dex/code/SimpleInsn;
.super Lcom/android/dx/dex/code/FixedSizeInsn;


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/dx/dex/code/FixedSizeInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@3
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

.method public withOpcode(Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/DalvInsn;
    .registers 5

    #@0
    new-instance v0, Lcom/android/dx/dex/code/SimpleInsn;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/dex/code/SimpleInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/android/dx/dex/code/SimpleInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@9
    move-result-object v2

    #@a
    invoke-direct {v0, p1, v1, v2}, Lcom/android/dx/dex/code/SimpleInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@d
    return-object v0
.end method

.method public withRegisters(Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/dex/code/DalvInsn;
    .registers 5

    #@0
    new-instance v0, Lcom/android/dx/dex/code/SimpleInsn;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/dex/code/SimpleInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/android/dx/dex/code/SimpleInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@9
    move-result-object v2

    #@a
    invoke-direct {v0, v1, v2, p1}, Lcom/android/dx/dex/code/SimpleInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@d
    return-object v0
.end method
