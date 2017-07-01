.class public abstract Lcom/android/dx/dex/code/FixedSizeInsn;
.super Lcom/android/dx/dex/code/DalvInsn;


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/dx/dex/code/DalvInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@3
    return-void
.end method


# virtual methods
.method public final codeSize()I
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/android/dx/dex/code/FixedSizeInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/dx/dex/code/Dop;->getFormat()Lcom/android/dx/dex/code/InsnFormat;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Lcom/android/dx/dex/code/InsnFormat;->codeSize()I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method protected final listingString0(Z)Ljava/lang/String;
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/android/dx/dex/code/FixedSizeInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/dx/dex/code/Dop;->getFormat()Lcom/android/dx/dex/code/InsnFormat;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p0, p1}, Lcom/android/dx/dex/code/InsnFormat;->listingString(Lcom/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public final withRegisterOffset(I)Lcom/android/dx/dex/code/DalvInsn;
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/android/dx/dex/code/FixedSizeInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lcom/android/dx/rop/code/RegisterSpecList;->withOffset(I)Lcom/android/dx/rop/code/RegisterSpecList;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/FixedSizeInsn;->withRegisters(Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/dex/code/DalvInsn;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public final writeTo(Lcom/android/dx/util/AnnotatedOutput;)V
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/android/dx/dex/code/FixedSizeInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/dx/dex/code/Dop;->getFormat()Lcom/android/dx/dex/code/InsnFormat;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1, p0}, Lcom/android/dx/dex/code/InsnFormat;->writeTo(Lcom/android/dx/util/AnnotatedOutput;Lcom/android/dx/dex/code/DalvInsn;)V

    #@b
    return-void
.end method
