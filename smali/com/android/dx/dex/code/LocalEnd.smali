.class public final Lcom/android/dx/dex/code/LocalEnd;
.super Lcom/android/dx/dex/code/ZeroSizeInsn;


# instance fields
.field private final local:Lcom/android/dx/rop/code/RegisterSpec;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;)V
    .registers 5

    #@0
    invoke-direct {p0, p1}, Lcom/android/dx/dex/code/ZeroSizeInsn;-><init>(Lcom/android/dx/rop/code/SourcePosition;)V

    #@3
    if-nez p2, :cond_d

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string v1, "local == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    iput-object p2, p0, Lcom/android/dx/dex/code/LocalEnd;->local:Lcom/android/dx/rop/code/RegisterSpec;

    #@f
    return-void
.end method


# virtual methods
.method protected argString()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalEnd;->local:Lcom/android/dx/rop/code/RegisterSpec;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLocal()Lcom/android/dx/rop/code/RegisterSpec;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalEnd;->local:Lcom/android/dx/rop/code/RegisterSpec;

    #@2
    return-object v0
.end method

.method protected listingString0(Z)Ljava/lang/String;
    .registers 4

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "local-end "

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    iget-object v1, p0, Lcom/android/dx/dex/code/LocalEnd;->local:Lcom/android/dx/rop/code/RegisterSpec;

    #@d
    invoke-static {v1}, Lcom/android/dx/dex/code/LocalStart;->localString(Lcom/android/dx/rop/code/RegisterSpec;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method

.method public withRegisterOffset(I)Lcom/android/dx/dex/code/DalvInsn;
    .registers 5

    #@0
    new-instance v0, Lcom/android/dx/dex/code/LocalEnd;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/dex/code/LocalEnd;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@5
    move-result-object v1

    #@6
    iget-object v2, p0, Lcom/android/dx/dex/code/LocalEnd;->local:Lcom/android/dx/rop/code/RegisterSpec;

    #@8
    invoke-virtual {v2, p1}, Lcom/android/dx/rop/code/RegisterSpec;->withOffset(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@b
    move-result-object v2

    #@c
    invoke-direct {v0, v1, v2}, Lcom/android/dx/dex/code/LocalEnd;-><init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;)V

    #@f
    return-object v0
.end method

.method public withRegisters(Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/dex/code/DalvInsn;
    .registers 5

    #@0
    new-instance v0, Lcom/android/dx/dex/code/LocalEnd;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/dex/code/LocalEnd;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@5
    move-result-object v1

    #@6
    iget-object v2, p0, Lcom/android/dx/dex/code/LocalEnd;->local:Lcom/android/dx/rop/code/RegisterSpec;

    #@8
    invoke-direct {v0, v1, v2}, Lcom/android/dx/dex/code/LocalEnd;-><init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;)V

    #@b
    return-object v0
.end method
