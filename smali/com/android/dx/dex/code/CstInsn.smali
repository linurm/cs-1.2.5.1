.class public final Lcom/android/dx/dex/code/CstInsn;
.super Lcom/android/dx/dex/code/FixedSizeInsn;


# instance fields
.field private classIndex:I

.field private final constant:Lcom/android/dx/rop/cst/Constant;

.field private index:I


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V
    .registers 7

    #@0
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/dx/dex/code/FixedSizeInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@4
    if-nez p4, :cond_e

    #@6
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    const-string v1, "constant == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    iput-object p4, p0, Lcom/android/dx/dex/code/CstInsn;->constant:Lcom/android/dx/rop/cst/Constant;

    #@10
    iput v0, p0, Lcom/android/dx/dex/code/CstInsn;->index:I

    #@12
    iput v0, p0, Lcom/android/dx/dex/code/CstInsn;->classIndex:I

    #@14
    return-void
.end method


# virtual methods
.method protected argString()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/CstInsn;->constant:Lcom/android/dx/rop/cst/Constant;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/Constant;->toHuman()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getClassIndex()I
    .registers 3

    #@0
    iget v0, p0, Lcom/android/dx/dex/code/CstInsn;->classIndex:I

    #@2
    if-gez v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string v1, "class index not yet set"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iget v0, p0, Lcom/android/dx/dex/code/CstInsn;->classIndex:I

    #@e
    return v0
.end method

.method public getConstant()Lcom/android/dx/rop/cst/Constant;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/CstInsn;->constant:Lcom/android/dx/rop/cst/Constant;

    #@2
    return-object v0
.end method

.method public getIndex()I
    .registers 4

    #@0
    iget v0, p0, Lcom/android/dx/dex/code/CstInsn;->index:I

    #@2
    if-gez v0, :cond_1f

    #@4
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string v2, "index not yet set for "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    iget-object v2, p0, Lcom/android/dx/dex/code/CstInsn;->constant:Lcom/android/dx/rop/cst/Constant;

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    :cond_1f
    iget v0, p0, Lcom/android/dx/dex/code/CstInsn;->index:I

    #@21
    return v0
.end method

.method public hasClassIndex()Z
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/dex/code/CstInsn;->classIndex:I

    #@2
    if-ltz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method public hasIndex()Z
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/dex/code/CstInsn;->index:I

    #@2
    if-ltz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method public setClassIndex(I)V
    .registers 4

    #@0
    if-gez p1, :cond_a

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string v1, "index < 0"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    iget v0, p0, Lcom/android/dx/dex/code/CstInsn;->classIndex:I

    #@c
    if-ltz v0, :cond_16

    #@e
    new-instance v0, Ljava/lang/RuntimeException;

    #@10
    const-string v1, "class index already set"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    :cond_16
    iput p1, p0, Lcom/android/dx/dex/code/CstInsn;->classIndex:I

    #@18
    return-void
.end method

.method public setIndex(I)V
    .registers 4

    #@0
    if-gez p1, :cond_a

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string v1, "index < 0"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    iget v0, p0, Lcom/android/dx/dex/code/CstInsn;->index:I

    #@c
    if-ltz v0, :cond_16

    #@e
    new-instance v0, Ljava/lang/RuntimeException;

    #@10
    const-string v1, "index already set"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    :cond_16
    iput p1, p0, Lcom/android/dx/dex/code/CstInsn;->index:I

    #@18
    return-void
.end method

.method public withOpcode(Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/DalvInsn;
    .registers 6

    #@0
    new-instance v0, Lcom/android/dx/dex/code/CstInsn;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/dex/code/CstInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/android/dx/dex/code/CstInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@9
    move-result-object v2

    #@a
    iget-object v3, p0, Lcom/android/dx/dex/code/CstInsn;->constant:Lcom/android/dx/rop/cst/Constant;

    #@c
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/dx/dex/code/CstInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V

    #@f
    iget v1, p0, Lcom/android/dx/dex/code/CstInsn;->index:I

    #@11
    if-ltz v1, :cond_18

    #@13
    iget v1, p0, Lcom/android/dx/dex/code/CstInsn;->index:I

    #@15
    invoke-virtual {v0, v1}, Lcom/android/dx/dex/code/CstInsn;->setIndex(I)V

    #@18
    :cond_18
    iget v1, p0, Lcom/android/dx/dex/code/CstInsn;->classIndex:I

    #@1a
    if-ltz v1, :cond_21

    #@1c
    iget v1, p0, Lcom/android/dx/dex/code/CstInsn;->classIndex:I

    #@1e
    invoke-virtual {v0, v1}, Lcom/android/dx/dex/code/CstInsn;->setClassIndex(I)V

    #@21
    :cond_21
    return-object v0
.end method

.method public withRegisters(Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/dex/code/DalvInsn;
    .registers 6

    #@0
    new-instance v0, Lcom/android/dx/dex/code/CstInsn;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/dex/code/CstInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/android/dx/dex/code/CstInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@9
    move-result-object v2

    #@a
    iget-object v3, p0, Lcom/android/dx/dex/code/CstInsn;->constant:Lcom/android/dx/rop/cst/Constant;

    #@c
    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/dx/dex/code/CstInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V

    #@f
    iget v1, p0, Lcom/android/dx/dex/code/CstInsn;->index:I

    #@11
    if-ltz v1, :cond_18

    #@13
    iget v1, p0, Lcom/android/dx/dex/code/CstInsn;->index:I

    #@15
    invoke-virtual {v0, v1}, Lcom/android/dx/dex/code/CstInsn;->setIndex(I)V

    #@18
    :cond_18
    iget v1, p0, Lcom/android/dx/dex/code/CstInsn;->classIndex:I

    #@1a
    if-ltz v1, :cond_21

    #@1c
    iget v1, p0, Lcom/android/dx/dex/code/CstInsn;->classIndex:I

    #@1e
    invoke-virtual {v0, v1}, Lcom/android/dx/dex/code/CstInsn;->setClassIndex(I)V

    #@21
    :cond_21
    return-object v0
.end method
