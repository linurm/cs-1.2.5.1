.class public final Lcom/android/dx/dex/code/TargetInsn;
.super Lcom/android/dx/dex/code/FixedSizeInsn;


# instance fields
.field private target:Lcom/android/dx/dex/code/CodeAddress;


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/dex/code/CodeAddress;)V
    .registers 7

    #@0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/dx/dex/code/FixedSizeInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@3
    if-nez p4, :cond_d

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string v1, "target == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    iput-object p4, p0, Lcom/android/dx/dex/code/TargetInsn;->target:Lcom/android/dx/dex/code/CodeAddress;

    #@f
    return-void
.end method


# virtual methods
.method protected argString()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/TargetInsn;->target:Lcom/android/dx/dex/code/CodeAddress;

    #@2
    if-nez v0, :cond_7

    #@4
    const-string v0, "????"

    #@6
    :goto_6
    return-object v0

    #@7
    :cond_7
    iget-object v0, p0, Lcom/android/dx/dex/code/TargetInsn;->target:Lcom/android/dx/dex/code/CodeAddress;

    #@9
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CodeAddress;->identifierString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    goto :goto_6
.end method

.method public getTarget()Lcom/android/dx/dex/code/CodeAddress;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/TargetInsn;->target:Lcom/android/dx/dex/code/CodeAddress;

    #@2
    return-object v0
.end method

.method public getTargetAddress()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/TargetInsn;->target:Lcom/android/dx/dex/code/CodeAddress;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CodeAddress;->getAddress()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getTargetOffset()I
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/TargetInsn;->target:Lcom/android/dx/dex/code/CodeAddress;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CodeAddress;->getAddress()I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0}, Lcom/android/dx/dex/code/TargetInsn;->getAddress()I

    #@9
    move-result v1

    #@a
    sub-int/2addr v0, v1

    #@b
    return v0
.end method

.method public hasTargetOffset()Z
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/android/dx/dex/code/TargetInsn;->hasAddress()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_10

    #@6
    iget-object v0, p0, Lcom/android/dx/dex/code/TargetInsn;->target:Lcom/android/dx/dex/code/CodeAddress;

    #@8
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CodeAddress;->hasAddress()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_10

    #@e
    const/4 v0, 0x1

    #@f
    :goto_f
    return v0

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    goto :goto_f
.end method

.method public withNewTargetAndReversed(Lcom/android/dx/dex/code/CodeAddress;)Lcom/android/dx/dex/code/TargetInsn;
    .registers 6

    #@0
    new-instance v0, Lcom/android/dx/dex/code/TargetInsn;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/dex/code/TargetInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Lcom/android/dx/dex/code/Dop;->getOppositeTest()Lcom/android/dx/dex/code/Dop;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p0}, Lcom/android/dx/dex/code/TargetInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {p0}, Lcom/android/dx/dex/code/TargetInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@11
    move-result-object v3

    #@12
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/dx/dex/code/TargetInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/dex/code/CodeAddress;)V

    #@15
    return-object v0
.end method

.method public withOpcode(Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/DalvInsn;
    .registers 6

    #@0
    new-instance v0, Lcom/android/dx/dex/code/TargetInsn;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/dex/code/TargetInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/android/dx/dex/code/TargetInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@9
    move-result-object v2

    #@a
    iget-object v3, p0, Lcom/android/dx/dex/code/TargetInsn;->target:Lcom/android/dx/dex/code/CodeAddress;

    #@c
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/dx/dex/code/TargetInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/dex/code/CodeAddress;)V

    #@f
    return-object v0
.end method

.method public withRegisters(Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/dex/code/DalvInsn;
    .registers 6

    #@0
    new-instance v0, Lcom/android/dx/dex/code/TargetInsn;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/dex/code/TargetInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/android/dx/dex/code/TargetInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@9
    move-result-object v2

    #@a
    iget-object v3, p0, Lcom/android/dx/dex/code/TargetInsn;->target:Lcom/android/dx/dex/code/CodeAddress;

    #@c
    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/dx/dex/code/TargetInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/dex/code/CodeAddress;)V

    #@f
    return-object v0
.end method
