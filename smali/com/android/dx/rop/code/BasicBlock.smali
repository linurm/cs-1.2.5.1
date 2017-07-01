.class public final Lcom/android/dx/rop/code/BasicBlock;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/dx/util/LabeledItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/rop/code/BasicBlock$Visitor;
    }
.end annotation


# instance fields
.field private final insns:Lcom/android/dx/rop/code/InsnList;

.field private final label:I

.field private final primarySuccessor:I

.field private final successors:Lcom/android/dx/util/IntList;


# direct methods
.method public constructor <init>(ILcom/android/dx/rop/code/InsnList;Lcom/android/dx/util/IntList;I)V
    .registers 9

    #@0
    const/4 v3, 0x1

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    if-gez p1, :cond_e

    #@6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string v1, "label < 0"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    :try_start_e
    invoke-virtual {p2}, Lcom/android/dx/rop/code/InsnList;->throwIfMutable()V
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_11} :catch_1f

    #@11
    invoke-virtual {p2}, Lcom/android/dx/rop/code/InsnList;->size()I

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_28

    #@17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@19
    const-string v1, "insns.size() == 0"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    :catch_1f
    move-exception v0

    #@20
    new-instance v0, Ljava/lang/NullPointerException;

    #@22
    const-string v1, "insns == null"

    #@24
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    :cond_28
    add-int/lit8 v0, v1, -0x2

    #@2a
    :goto_2a
    if-ltz v0, :cond_62

    #@2c
    invoke-virtual {p2, v0}, Lcom/android/dx/rop/code/InsnList;->get(I)Lcom/android/dx/rop/code/Insn;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    #@37
    move-result v2

    #@38
    if-eq v2, v3, :cond_5f

    #@3a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@3c
    new-instance v2, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string v3, "insns["

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    const-string v2, "] is a "

    #@4d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    const-string v2, "branch or can throw"

    #@53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v0

    #@5b
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v1

    #@5f
    :cond_5f
    add-int/lit8 v0, v0, -0x1

    #@61
    goto :goto_2a

    #@62
    :cond_62
    add-int/lit8 v0, v1, -0x1

    #@64
    invoke-virtual {p2, v0}, Lcom/android/dx/rop/code/InsnList;->get(I)Lcom/android/dx/rop/code/Insn;

    #@67
    move-result-object v0

    #@68
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@6b
    move-result-object v0

    #@6c
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    #@6f
    move-result v0

    #@70
    if-ne v0, v3, :cond_7a

    #@72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@74
    const-string v1, "insns does not end with a branch or throwing instruction"

    #@76
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@79
    throw v0

    #@7a
    :cond_7a
    :try_start_7a
    invoke-virtual {p3}, Lcom/android/dx/util/IntList;->throwIfMutable()V
    :try_end_7d
    .catch Ljava/lang/NullPointerException; {:try_start_7a .. :try_end_7d} :catch_88

    #@7d
    const/4 v0, -0x1

    #@7e
    if-ge p4, v0, :cond_91

    #@80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@82
    const-string v1, "primarySuccessor < -1"

    #@84
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@87
    throw v0

    #@88
    :catch_88
    move-exception v0

    #@89
    new-instance v0, Ljava/lang/NullPointerException;

    #@8b
    const-string v1, "successors == null"

    #@8d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@90
    throw v0

    #@91
    :cond_91
    if-ltz p4, :cond_bc

    #@93
    invoke-virtual {p3, p4}, Lcom/android/dx/util/IntList;->contains(I)Z

    #@96
    move-result v0

    #@97
    if-nez v0, :cond_bc

    #@99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9b
    new-instance v1, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    const-string v2, "primarySuccessor "

    #@a2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v1

    #@a6
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v1

    #@aa
    const-string v2, " not in successors "

    #@ac
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v1

    #@b0
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v1

    #@b4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b7
    move-result-object v1

    #@b8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@bb
    throw v0

    #@bc
    :cond_bc
    iput p1, p0, Lcom/android/dx/rop/code/BasicBlock;->label:I

    #@be
    iput-object p2, p0, Lcom/android/dx/rop/code/BasicBlock;->insns:Lcom/android/dx/rop/code/InsnList;

    #@c0
    iput-object p3, p0, Lcom/android/dx/rop/code/BasicBlock;->successors:Lcom/android/dx/util/IntList;

    #@c2
    iput p4, p0, Lcom/android/dx/rop/code/BasicBlock;->primarySuccessor:I

    #@c4
    return-void
.end method


# virtual methods
.method public canThrow()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/BasicBlock;->insns:Lcom/android/dx/rop/code/InsnList;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/rop/code/InsnList;->getLast()Lcom/android/dx/rop/code/Insn;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Insn;->canThrow()Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    if-ne p0, p1, :cond_4

    #@2
    const/4 v0, 0x1

    #@3
    :goto_3
    return v0

    #@4
    :cond_4
    const/4 v0, 0x0

    #@5
    goto :goto_3
.end method

.method public getExceptionHandlerTypes()Lcom/android/dx/rop/type/TypeList;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/BasicBlock;->insns:Lcom/android/dx/rop/code/InsnList;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/rop/code/InsnList;->getLast()Lcom/android/dx/rop/code/Insn;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Insn;->getCatches()Lcom/android/dx/rop/type/TypeList;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getFirstInsn()Lcom/android/dx/rop/code/Insn;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/BasicBlock;->insns:Lcom/android/dx/rop/code/InsnList;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/code/InsnList;->get(I)Lcom/android/dx/rop/code/Insn;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getInsns()Lcom/android/dx/rop/code/InsnList;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/BasicBlock;->insns:Lcom/android/dx/rop/code/InsnList;

    #@2
    return-object v0
.end method

.method public getLabel()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/rop/code/BasicBlock;->label:I

    #@2
    return v0
.end method

.method public getLastInsn()Lcom/android/dx/rop/code/Insn;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/BasicBlock;->insns:Lcom/android/dx/rop/code/InsnList;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/rop/code/InsnList;->getLast()Lcom/android/dx/rop/code/Insn;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPrimarySuccessor()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/rop/code/BasicBlock;->primarySuccessor:I

    #@2
    return v0
.end method

.method public getSecondarySuccessor()I
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/BasicBlock;->successors:Lcom/android/dx/util/IntList;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x2

    #@7
    if-eq v0, v1, :cond_11

    #@9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@b
    const-string v1, "block doesn\'t have exactly two successors"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    :cond_11
    iget-object v0, p0, Lcom/android/dx/rop/code/BasicBlock;->successors:Lcom/android/dx/util/IntList;

    #@13
    const/4 v1, 0x0

    #@14
    invoke-virtual {v0, v1}, Lcom/android/dx/util/IntList;->get(I)I

    #@17
    move-result v0

    #@18
    iget v1, p0, Lcom/android/dx/rop/code/BasicBlock;->primarySuccessor:I

    #@1a
    if-ne v0, v1, :cond_23

    #@1c
    iget-object v0, p0, Lcom/android/dx/rop/code/BasicBlock;->successors:Lcom/android/dx/util/IntList;

    #@1e
    const/4 v1, 0x1

    #@1f
    invoke-virtual {v0, v1}, Lcom/android/dx/util/IntList;->get(I)I

    #@22
    move-result v0

    #@23
    :cond_23
    return v0
.end method

.method public getSuccessors()Lcom/android/dx/util/IntList;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/BasicBlock;->successors:Lcom/android/dx/util/IntList;

    #@2
    return-object v0
.end method

.method public hasExceptionHandlers()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/BasicBlock;->insns:Lcom/android/dx/rop/code/InsnList;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/rop/code/InsnList;->getLast()Lcom/android/dx/rop/code/Insn;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Insn;->getCatches()Lcom/android/dx/rop/type/TypeList;

    #@9
    move-result-object v0

    #@a
    invoke-interface {v0}, Lcom/android/dx/rop/type/TypeList;->size()I

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_12

    #@10
    const/4 v0, 0x1

    #@11
    :goto_11
    return v0

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    goto :goto_11
.end method

.method public hashCode()I
    .registers 2

    #@0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const/16 v1, 0x7b

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    iget v1, p0, Lcom/android/dx/rop/code/BasicBlock;->label:I

    #@d
    invoke-static {v1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    const/16 v1, 0x7d

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public withRegisterOffset(I)Lcom/android/dx/rop/code/BasicBlock;
    .registers 7

    #@0
    new-instance v0, Lcom/android/dx/rop/code/BasicBlock;

    #@2
    iget v1, p0, Lcom/android/dx/rop/code/BasicBlock;->label:I

    #@4
    iget-object v2, p0, Lcom/android/dx/rop/code/BasicBlock;->insns:Lcom/android/dx/rop/code/InsnList;

    #@6
    invoke-virtual {v2, p1}, Lcom/android/dx/rop/code/InsnList;->withRegisterOffset(I)Lcom/android/dx/rop/code/InsnList;

    #@9
    move-result-object v2

    #@a
    iget-object v3, p0, Lcom/android/dx/rop/code/BasicBlock;->successors:Lcom/android/dx/util/IntList;

    #@c
    iget v4, p0, Lcom/android/dx/rop/code/BasicBlock;->primarySuccessor:I

    #@e
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/rop/code/BasicBlock;-><init>(ILcom/android/dx/rop/code/InsnList;Lcom/android/dx/util/IntList;I)V

    #@11
    return-object v0
.end method
