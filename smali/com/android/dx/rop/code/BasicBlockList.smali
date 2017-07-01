.class public final Lcom/android/dx/rop/code/BasicBlockList;
.super Lcom/android/dx/util/LabeledList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/rop/code/BasicBlockList$RegCountVisitor;
    }
.end annotation


# instance fields
.field private regCount:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/android/dx/util/LabeledList;-><init>(I)V

    #@3
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/dx/rop/code/BasicBlockList;->regCount:I

    #@6
    return-void
.end method

.method private constructor <init>(Lcom/android/dx/rop/code/BasicBlockList;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/android/dx/util/LabeledList;-><init>(Lcom/android/dx/util/LabeledList;)V

    #@3
    iget v0, p1, Lcom/android/dx/rop/code/BasicBlockList;->regCount:I

    #@5
    iput v0, p0, Lcom/android/dx/rop/code/BasicBlockList;->regCount:I

    #@7
    return-void
.end method


# virtual methods
.method public catchesEqual(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/rop/code/BasicBlock;)Z
    .registers 12

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v7, -0x1

    #@2
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getExceptionHandlerTypes()Lcom/android/dx/rop/type/TypeList;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p2}, Lcom/android/dx/rop/code/BasicBlock;->getExceptionHandlerTypes()Lcom/android/dx/rop/type/TypeList;

    #@9
    move-result-object v2

    #@a
    invoke-static {v1, v2}, Lcom/android/dx/rop/type/StdTypeList;->equalContents(Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/type/TypeList;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_11

    #@10
    :cond_10
    :goto_10
    return v0

    #@11
    :cond_11
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {p2}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v2}, Lcom/android/dx/util/IntList;->size()I

    #@1c
    move-result v4

    #@1d
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    #@20
    move-result v5

    #@21
    invoke-virtual {p2}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    #@24
    move-result v6

    #@25
    if-eq v5, v7, :cond_29

    #@27
    if-ne v6, v7, :cond_2b

    #@29
    :cond_29
    if-ne v5, v6, :cond_10

    #@2b
    :cond_2b
    move v1, v0

    #@2c
    :goto_2c
    if-ge v1, v4, :cond_40

    #@2e
    invoke-virtual {v2, v1}, Lcom/android/dx/util/IntList;->get(I)I

    #@31
    move-result v7

    #@32
    invoke-virtual {v3, v1}, Lcom/android/dx/util/IntList;->get(I)I

    #@35
    move-result v8

    #@36
    if-ne v7, v5, :cond_3d

    #@38
    if-ne v8, v6, :cond_10

    #@3a
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_2c

    #@3d
    :cond_3d
    if-eq v7, v8, :cond_3a

    #@3f
    goto :goto_10

    #@40
    :cond_40
    const/4 v0, 0x1

    #@41
    goto :goto_10
.end method

.method public forEachInsn(Lcom/android/dx/rop/code/Insn$Visitor;)V
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/code/BasicBlockList;->size()I

    #@3
    move-result v1

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    if-ge v0, v1, :cond_15

    #@7
    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/BasicBlockList;->get(I)Lcom/android/dx/rop/code/BasicBlock;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v2}, Lcom/android/dx/rop/code/BasicBlock;->getInsns()Lcom/android/dx/rop/code/InsnList;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, p1}, Lcom/android/dx/rop/code/InsnList;->forEach(Lcom/android/dx/rop/code/Insn$Visitor;)V

    #@12
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_5

    #@15
    :cond_15
    return-void
.end method

.method public get(I)Lcom/android/dx/rop/code/BasicBlock;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/android/dx/rop/code/BasicBlockList;->get0(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/dx/rop/code/BasicBlock;

    #@6
    return-object v0
.end method

.method public getEffectiveInstructionCount()I
    .registers 10

    #@0
    const/4 v2, 0x0

    #@1
    invoke-virtual {p0}, Lcom/android/dx/rop/code/BasicBlockList;->size()I

    #@4
    move-result v4

    #@5
    move v3, v2

    #@6
    move v1, v2

    #@7
    :goto_7
    if-ge v3, v4, :cond_38

    #@9
    invoke-virtual {p0, v3}, Lcom/android/dx/rop/code/BasicBlockList;->getOrNull0(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/dx/rop/code/BasicBlock;

    #@f
    if-eqz v0, :cond_32

    #@11
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlock;->getInsns()Lcom/android/dx/rop/code/InsnList;

    #@14
    move-result-object v5

    #@15
    invoke-virtual {v5}, Lcom/android/dx/rop/code/InsnList;->size()I

    #@18
    move-result v6

    #@19
    move v0, v1

    #@1a
    move v1, v2

    #@1b
    :goto_1b
    if-ge v1, v6, :cond_33

    #@1d
    invoke-virtual {v5, v1}, Lcom/android/dx/rop/code/InsnList;->get(I)Lcom/android/dx/rop/code/Insn;

    #@20
    move-result-object v7

    #@21
    invoke-virtual {v7}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@24
    move-result-object v7

    #@25
    invoke-virtual {v7}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    #@28
    move-result v7

    #@29
    const/16 v8, 0x36

    #@2b
    if-eq v7, v8, :cond_2f

    #@2d
    add-int/lit8 v0, v0, 0x1

    #@2f
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    #@31
    goto :goto_1b

    #@32
    :cond_32
    move v0, v1

    #@33
    :cond_33
    add-int/lit8 v1, v3, 0x1

    #@35
    move v3, v1

    #@36
    move v1, v0

    #@37
    goto :goto_7

    #@38
    :cond_38
    return v1
.end method

.method public getInstructionCount()I
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0}, Lcom/android/dx/rop/code/BasicBlockList;->size()I

    #@4
    move-result v3

    #@5
    move v2, v0

    #@6
    move v1, v0

    #@7
    :goto_7
    if-ge v2, v3, :cond_21

    #@9
    invoke-virtual {p0, v2}, Lcom/android/dx/rop/code/BasicBlockList;->getOrNull0(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/dx/rop/code/BasicBlock;

    #@f
    if-eqz v0, :cond_1f

    #@11
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlock;->getInsns()Lcom/android/dx/rop/code/InsnList;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Lcom/android/dx/rop/code/InsnList;->size()I

    #@18
    move-result v0

    #@19
    add-int/2addr v0, v1

    #@1a
    :goto_1a
    add-int/lit8 v1, v2, 0x1

    #@1c
    move v2, v1

    #@1d
    move v1, v0

    #@1e
    goto :goto_7

    #@1f
    :cond_1f
    move v0, v1

    #@20
    goto :goto_1a

    #@21
    :cond_21
    return v1
.end method

.method public getMutableCopy()Lcom/android/dx/rop/code/BasicBlockList;
    .registers 2

    #@0
    new-instance v0, Lcom/android/dx/rop/code/BasicBlockList;

    #@2
    invoke-direct {v0, p0}, Lcom/android/dx/rop/code/BasicBlockList;-><init>(Lcom/android/dx/rop/code/BasicBlockList;)V

    #@5
    return-object v0
.end method

.method public getRegCount()I
    .registers 3

    #@0
    iget v0, p0, Lcom/android/dx/rop/code/BasicBlockList;->regCount:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_13

    #@5
    new-instance v0, Lcom/android/dx/rop/code/BasicBlockList$RegCountVisitor;

    #@7
    invoke-direct {v0}, Lcom/android/dx/rop/code/BasicBlockList$RegCountVisitor;-><init>()V

    #@a
    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/BasicBlockList;->forEachInsn(Lcom/android/dx/rop/code/Insn$Visitor;)V

    #@d
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList$RegCountVisitor;->getRegCount()I

    #@10
    move-result v0

    #@11
    iput v0, p0, Lcom/android/dx/rop/code/BasicBlockList;->regCount:I

    #@13
    :cond_13
    iget v0, p0, Lcom/android/dx/rop/code/BasicBlockList;->regCount:I

    #@15
    return v0
.end method

.method public labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;
    .registers 5

    #@0
    invoke-virtual {p0, p1}, Lcom/android/dx/rop/code/BasicBlockList;->indexOfLabel(I)I

    #@3
    move-result v0

    #@4
    if-gez v0, :cond_23

    #@6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string v2, "no such label: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-static {p1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    :cond_23
    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/BasicBlockList;->get(I)Lcom/android/dx/rop/code/BasicBlock;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method

.method public preferredSuccessorOf(Lcom/android/dx/rop/code/BasicBlock;)Lcom/android/dx/rop/code/BasicBlock;
    .registers 6

    #@0
    const/4 v3, 0x0

    #@1
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    #@4
    move-result v0

    #@5
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Lcom/android/dx/util/IntList;->size()I

    #@c
    move-result v2

    #@d
    packed-switch v2, :pswitch_data_2c

    #@10
    const/4 v2, -0x1

    #@11
    if-eq v0, v2, :cond_23

    #@13
    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    #@16
    move-result-object v0

    #@17
    :goto_17
    return-object v0

    #@18
    :pswitch_18
    const/4 v0, 0x0

    #@19
    goto :goto_17

    #@1a
    :pswitch_1a
    invoke-virtual {v1, v3}, Lcom/android/dx/util/IntList;->get(I)I

    #@1d
    move-result v0

    #@1e
    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    #@21
    move-result-object v0

    #@22
    goto :goto_17

    #@23
    :cond_23
    invoke-virtual {v1, v3}, Lcom/android/dx/util/IntList;->get(I)I

    #@26
    move-result v0

    #@27
    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    #@2a
    move-result-object v0

    #@2b
    goto :goto_17

    #@2c
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_18
        :pswitch_1a
    .end packed-switch
.end method

.method public set(ILcom/android/dx/rop/code/BasicBlock;)V
    .registers 4

    #@0
    invoke-super {p0, p1, p2}, Lcom/android/dx/util/LabeledList;->set(ILcom/android/dx/util/LabeledItem;)V

    #@3
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/dx/rop/code/BasicBlockList;->regCount:I

    #@6
    return-void
.end method

.method public withRegisterOffset(I)Lcom/android/dx/rop/code/BasicBlockList;
    .registers 6

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/code/BasicBlockList;->size()I

    #@3
    move-result v2

    #@4
    new-instance v3, Lcom/android/dx/rop/code/BasicBlockList;

    #@6
    invoke-direct {v3, v2}, Lcom/android/dx/rop/code/BasicBlockList;-><init>(I)V

    #@9
    const/4 v0, 0x0

    #@a
    move v1, v0

    #@b
    :goto_b
    if-ge v1, v2, :cond_20

    #@d
    invoke-virtual {p0, v1}, Lcom/android/dx/rop/code/BasicBlockList;->get0(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/dx/rop/code/BasicBlock;

    #@13
    if-eqz v0, :cond_1c

    #@15
    invoke-virtual {v0, p1}, Lcom/android/dx/rop/code/BasicBlock;->withRegisterOffset(I)Lcom/android/dx/rop/code/BasicBlock;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v3, v1, v0}, Lcom/android/dx/rop/code/BasicBlockList;->set(ILcom/android/dx/rop/code/BasicBlock;)V

    #@1c
    :cond_1c
    add-int/lit8 v0, v1, 0x1

    #@1e
    move v1, v0

    #@1f
    goto :goto_b

    #@20
    :cond_20
    invoke-virtual {p0}, Lcom/android/dx/rop/code/BasicBlockList;->isImmutable()Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_29

    #@26
    invoke-virtual {v3}, Lcom/android/dx/rop/code/BasicBlockList;->setImmutable()V

    #@29
    :cond_29
    return-object v3
.end method
