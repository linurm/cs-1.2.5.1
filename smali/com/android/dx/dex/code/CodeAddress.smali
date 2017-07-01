.class public final Lcom/android/dx/dex/code/CodeAddress;
.super Lcom/android/dx/dex/code/ZeroSizeInsn;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/code/SourcePosition;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/android/dx/dex/code/ZeroSizeInsn;-><init>(Lcom/android/dx/rop/code/SourcePosition;)V

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

.method protected listingString0(Z)Ljava/lang/String;
    .registers 3

    #@0
    const-string v0, "code-address"

    #@2
    return-object v0
.end method

.method public final withRegisters(Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/dex/code/DalvInsn;
    .registers 4

    #@0
    new-instance v0, Lcom/android/dx/dex/code/CodeAddress;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/dex/code/CodeAddress;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Lcom/android/dx/dex/code/CodeAddress;-><init>(Lcom/android/dx/rop/code/SourcePosition;)V

    #@9
    return-object v0
.end method
