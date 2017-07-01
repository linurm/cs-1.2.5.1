.class public Lcom/android/dx/ssa/LocalVariableInfo;
.super Lcom/android/dx/util/MutabilityControl;


# instance fields
.field private final blockStarts:[Lcom/android/dx/rop/code/RegisterSpecSet;

.field private final emptySet:Lcom/android/dx/rop/code/RegisterSpecSet;

.field private final insnAssignments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/dx/ssa/SsaInsn;",
            "Lcom/android/dx/rop/code/RegisterSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final regCount:I


# direct methods
.method public constructor <init>(Lcom/android/dx/ssa/SsaMethod;)V
    .registers 5

    #@0
    invoke-direct {p0}, Lcom/android/dx/util/MutabilityControl;-><init>()V

    #@3
    if-nez p1, :cond_d

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string v1, "method == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    #@14
    move-result v1

    #@15
    iput v1, p0, Lcom/android/dx/ssa/LocalVariableInfo;->regCount:I

    #@17
    new-instance v1, Lcom/android/dx/rop/code/RegisterSpecSet;

    #@19
    iget v2, p0, Lcom/android/dx/ssa/LocalVariableInfo;->regCount:I

    #@1b
    invoke-direct {v1, v2}, Lcom/android/dx/rop/code/RegisterSpecSet;-><init>(I)V

    #@1e
    iput-object v1, p0, Lcom/android/dx/ssa/LocalVariableInfo;->emptySet:Lcom/android/dx/rop/code/RegisterSpecSet;

    #@20
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@23
    move-result v0

    #@24
    new-array v0, v0, [Lcom/android/dx/rop/code/RegisterSpecSet;

    #@26
    iput-object v0, p0, Lcom/android/dx/ssa/LocalVariableInfo;->blockStarts:[Lcom/android/dx/rop/code/RegisterSpecSet;

    #@28
    new-instance v0, Ljava/util/HashMap;

    #@2a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@2d
    iput-object v0, p0, Lcom/android/dx/ssa/LocalVariableInfo;->insnAssignments:Ljava/util/HashMap;

    #@2f
    iget-object v0, p0, Lcom/android/dx/ssa/LocalVariableInfo;->emptySet:Lcom/android/dx/rop/code/RegisterSpecSet;

    #@31
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    #@34
    return-void
.end method

.method private getStarts0(I)Lcom/android/dx/rop/code/RegisterSpecSet;
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/android/dx/ssa/LocalVariableInfo;->blockStarts:[Lcom/android/dx/rop/code/RegisterSpecSet;

    #@2
    aget-object v0, v0, p1
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    #@4
    return-object v0

    #@5
    :catch_5
    move-exception v0

    #@6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string v1, "bogus index"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
.end method


# virtual methods
.method public addAssignment(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpec;)V
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/android/dx/ssa/LocalVariableInfo;->throwIfImmutable()V

    #@3
    if-nez p1, :cond_d

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string v1, "insn == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    if-nez p2, :cond_17

    #@f
    new-instance v0, Ljava/lang/NullPointerException;

    #@11
    const-string v1, "spec == null"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    :cond_17
    iget-object v0, p0, Lcom/android/dx/ssa/LocalVariableInfo;->insnAssignments:Ljava/util/HashMap;

    #@19
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    return-void
.end method

.method public debugDump()V
    .registers 8

    #@0
    const/4 v6, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    move v0, v1

    #@3
    :goto_3
    iget-object v2, p0, Lcom/android/dx/ssa/LocalVariableInfo;->blockStarts:[Lcom/android/dx/rop/code/RegisterSpecSet;

    #@5
    array-length v2, v2

    #@6
    if-ge v0, v2, :cond_40

    #@8
    iget-object v2, p0, Lcom/android/dx/ssa/LocalVariableInfo;->blockStarts:[Lcom/android/dx/rop/code/RegisterSpecSet;

    #@a
    aget-object v2, v2, v0

    #@c
    if-nez v2, :cond_11

    #@e
    :goto_e
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_3

    #@11
    :cond_11
    iget-object v2, p0, Lcom/android/dx/ssa/LocalVariableInfo;->blockStarts:[Lcom/android/dx/rop/code/RegisterSpecSet;

    #@13
    aget-object v2, v2, v0

    #@15
    iget-object v3, p0, Lcom/android/dx/ssa/LocalVariableInfo;->emptySet:Lcom/android/dx/rop/code/RegisterSpecSet;

    #@17
    if-ne v2, v3, :cond_29

    #@19
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1b
    const-string v3, "%04x: empty set\n"

    #@1d
    new-array v4, v6, [Ljava/lang/Object;

    #@1f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v5

    #@23
    aput-object v5, v4, v1

    #@25
    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    #@28
    goto :goto_e

    #@29
    :cond_29
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2b
    const-string v3, "%04x: %s\n"

    #@2d
    const/4 v4, 0x2

    #@2e
    new-array v4, v4, [Ljava/lang/Object;

    #@30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@33
    move-result-object v5

    #@34
    aput-object v5, v4, v1

    #@36
    iget-object v5, p0, Lcom/android/dx/ssa/LocalVariableInfo;->blockStarts:[Lcom/android/dx/rop/code/RegisterSpecSet;

    #@38
    aget-object v5, v5, v0

    #@3a
    aput-object v5, v4, v6

    #@3c
    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    #@3f
    goto :goto_e

    #@40
    :cond_40
    return-void
.end method

.method public getAssignment(Lcom/android/dx/ssa/SsaInsn;)Lcom/android/dx/rop/code/RegisterSpec;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/LocalVariableInfo;->insnAssignments:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/dx/rop/code/RegisterSpec;

    #@8
    return-object v0
.end method

.method public getAssignmentCount()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/LocalVariableInfo;->insnAssignments:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getStarts(I)Lcom/android/dx/rop/code/RegisterSpecSet;
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/LocalVariableInfo;->getStarts0(I)Lcom/android/dx/rop/code/RegisterSpecSet;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_7

    #@6
    :goto_6
    return-object v0

    #@7
    :cond_7
    iget-object v0, p0, Lcom/android/dx/ssa/LocalVariableInfo;->emptySet:Lcom/android/dx/rop/code/RegisterSpecSet;

    #@9
    goto :goto_6
.end method

.method public getStarts(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/rop/code/RegisterSpecSet;
    .registers 3

    #@0
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/dx/ssa/LocalVariableInfo;->getStarts(I)Lcom/android/dx/rop/code/RegisterSpecSet;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public mergeStarts(ILcom/android/dx/rop/code/RegisterSpecSet;)Z
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/LocalVariableInfo;->getStarts0(I)Lcom/android/dx/rop/code/RegisterSpecSet;

    #@4
    move-result-object v1

    #@5
    if-nez v1, :cond_b

    #@7
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/ssa/LocalVariableInfo;->setStarts(ILcom/android/dx/rop/code/RegisterSpecSet;)V

    #@a
    :goto_a
    return v0

    #@b
    :cond_b
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecSet;->mutableCopy()Lcom/android/dx/rop/code/RegisterSpecSet;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, p2, v0}, Lcom/android/dx/rop/code/RegisterSpecSet;->intersect(Lcom/android/dx/rop/code/RegisterSpecSet;Z)V

    #@12
    invoke-virtual {v1, v2}, Lcom/android/dx/rop/code/RegisterSpecSet;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1a

    #@18
    const/4 v0, 0x0

    #@19
    goto :goto_a

    #@1a
    :cond_1a
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    #@1d
    invoke-virtual {p0, p1, v2}, Lcom/android/dx/ssa/LocalVariableInfo;->setStarts(ILcom/android/dx/rop/code/RegisterSpecSet;)V

    #@20
    goto :goto_a
.end method

.method public mutableCopyOfStarts(I)Lcom/android/dx/rop/code/RegisterSpecSet;
    .registers 4

    #@0
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/LocalVariableInfo;->getStarts0(I)Lcom/android/dx/rop/code/RegisterSpecSet;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_b

    #@6
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecSet;->mutableCopy()Lcom/android/dx/rop/code/RegisterSpecSet;

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    new-instance v0, Lcom/android/dx/rop/code/RegisterSpecSet;

    #@d
    iget v1, p0, Lcom/android/dx/ssa/LocalVariableInfo;->regCount:I

    #@f
    invoke-direct {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecSet;-><init>(I)V

    #@12
    goto :goto_a
.end method

.method public setStarts(ILcom/android/dx/rop/code/RegisterSpecSet;)V
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/android/dx/ssa/LocalVariableInfo;->throwIfImmutable()V

    #@3
    if-nez p2, :cond_d

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string v1, "specs == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/android/dx/ssa/LocalVariableInfo;->blockStarts:[Lcom/android/dx/rop/code/RegisterSpecSet;

    #@f
    aput-object p2, v0, p1
    :try_end_11
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_d .. :try_end_11} :catch_12

    #@11
    return-void

    #@12
    :catch_12
    move-exception v0

    #@13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    const-string v1, "bogus index"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0
.end method
