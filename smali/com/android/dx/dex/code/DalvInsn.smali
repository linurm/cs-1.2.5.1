.class public abstract Lcom/android/dx/dex/code/DalvInsn;
.super Ljava/lang/Object;


# instance fields
.field private address:I

.field private final opcode:Lcom/android/dx/dex/code/Dop;

.field private final position:Lcom/android/dx/rop/code/SourcePosition;

.field private final registers:Lcom/android/dx/rop/code/RegisterSpecList;


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-nez p1, :cond_d

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string v1, "opcode == null"

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
    const-string v1, "position == null"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    :cond_17
    if-nez p3, :cond_21

    #@19
    new-instance v0, Ljava/lang/NullPointerException;

    #@1b
    const-string v1, "registers == null"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    :cond_21
    const/4 v0, -0x1

    #@22
    iput v0, p0, Lcom/android/dx/dex/code/DalvInsn;->address:I

    #@24
    iput-object p1, p0, Lcom/android/dx/dex/code/DalvInsn;->opcode:Lcom/android/dx/dex/code/Dop;

    #@26
    iput-object p2, p0, Lcom/android/dx/dex/code/DalvInsn;->position:Lcom/android/dx/rop/code/SourcePosition;

    #@28
    iput-object p3, p0, Lcom/android/dx/dex/code/DalvInsn;->registers:Lcom/android/dx/rop/code/RegisterSpecList;

    #@2a
    return-void
.end method

.method public static makeMove(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/dex/code/SimpleInsn;
    .registers 8

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@4
    move-result v1

    #@5
    if-ne v1, v0, :cond_2a

    #@7
    :goto_7
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Lcom/android/dx/rop/type/Type;->isReference()Z

    #@e
    move-result v1

    #@f
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@12
    move-result v2

    #@13
    invoke-virtual {p2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@16
    move-result v3

    #@17
    or-int/2addr v3, v2

    #@18
    const/16 v4, 0x10

    #@1a
    if-ge v3, v4, :cond_34

    #@1c
    if-eqz v1, :cond_2c

    #@1e
    sget-object v0, Lcom/android/dx/dex/code/Dops;->MOVE_OBJECT:Lcom/android/dx/dex/code/Dop;

    #@20
    :goto_20
    new-instance v1, Lcom/android/dx/dex/code/SimpleInsn;

    #@22
    invoke-static {p1, p2}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@25
    move-result-object v2

    #@26
    invoke-direct {v1, v0, p0, v2}, Lcom/android/dx/dex/code/SimpleInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@29
    return-object v1

    #@2a
    :cond_2a
    const/4 v0, 0x0

    #@2b
    goto :goto_7

    #@2c
    :cond_2c
    if-eqz v0, :cond_31

    #@2e
    sget-object v0, Lcom/android/dx/dex/code/Dops;->MOVE:Lcom/android/dx/dex/code/Dop;

    #@30
    goto :goto_20

    #@31
    :cond_31
    sget-object v0, Lcom/android/dx/dex/code/Dops;->MOVE_WIDE:Lcom/android/dx/dex/code/Dop;

    #@33
    goto :goto_20

    #@34
    :cond_34
    const/16 v3, 0x100

    #@36
    if-ge v2, v3, :cond_45

    #@38
    if-eqz v1, :cond_3d

    #@3a
    sget-object v0, Lcom/android/dx/dex/code/Dops;->MOVE_OBJECT_FROM16:Lcom/android/dx/dex/code/Dop;

    #@3c
    goto :goto_20

    #@3d
    :cond_3d
    if-eqz v0, :cond_42

    #@3f
    sget-object v0, Lcom/android/dx/dex/code/Dops;->MOVE_FROM16:Lcom/android/dx/dex/code/Dop;

    #@41
    goto :goto_20

    #@42
    :cond_42
    sget-object v0, Lcom/android/dx/dex/code/Dops;->MOVE_WIDE_FROM16:Lcom/android/dx/dex/code/Dop;

    #@44
    goto :goto_20

    #@45
    :cond_45
    if-eqz v1, :cond_4a

    #@47
    sget-object v0, Lcom/android/dx/dex/code/Dops;->MOVE_OBJECT_16:Lcom/android/dx/dex/code/Dop;

    #@49
    goto :goto_20

    #@4a
    :cond_4a
    if-eqz v0, :cond_4f

    #@4c
    sget-object v0, Lcom/android/dx/dex/code/Dops;->MOVE_16:Lcom/android/dx/dex/code/Dop;

    #@4e
    goto :goto_20

    #@4f
    :cond_4f
    sget-object v0, Lcom/android/dx/dex/code/Dops;->MOVE_WIDE_16:Lcom/android/dx/dex/code/Dop;

    #@51
    goto :goto_20
.end method


# virtual methods
.method protected abstract argString()Ljava/lang/String;
.end method

.method public abstract codeSize()I
.end method

.method public expandedPrefix(Ljava/util/BitSet;)Lcom/android/dx/dex/code/DalvInsn;
    .registers 6

    #@0
    const/4 v3, 0x0

    #@1
    iget-object v0, p0, Lcom/android/dx/dex/code/DalvInsn;->registers:Lcom/android/dx/rop/code/RegisterSpecList;

    #@3
    invoke-virtual {p1, v3}, Ljava/util/BitSet;->get(I)Z

    #@6
    move-result v1

    #@7
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->hasResult()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_10

    #@d
    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    #@10
    :cond_10
    invoke-virtual {v0, p1}, Lcom/android/dx/rop/code/RegisterSpecList;->subset(Ljava/util/BitSet;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->hasResult()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1d

    #@1a
    invoke-virtual {p1, v3, v1}, Ljava/util/BitSet;->set(IZ)V

    #@1d
    :cond_1d
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@20
    move-result v0

    #@21
    if-nez v0, :cond_25

    #@23
    const/4 v0, 0x0

    #@24
    :goto_24
    return-object v0

    #@25
    :cond_25
    new-instance v0, Lcom/android/dx/dex/code/HighRegisterPrefix;

    #@27
    iget-object v1, p0, Lcom/android/dx/dex/code/DalvInsn;->position:Lcom/android/dx/rop/code/SourcePosition;

    #@29
    invoke-direct {v0, v1, v2}, Lcom/android/dx/dex/code/HighRegisterPrefix;-><init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@2c
    goto :goto_24
.end method

.method public expandedSuffix(Ljava/util/BitSet;)Lcom/android/dx/dex/code/DalvInsn;
    .registers 5

    #@0
    const/4 v2, 0x0

    #@1
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->hasResult()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_1e

    #@7
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_1e

    #@d
    iget-object v0, p0, Lcom/android/dx/dex/code/DalvInsn;->registers:Lcom/android/dx/rop/code/RegisterSpecList;

    #@f
    invoke-virtual {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@12
    move-result-object v0

    #@13
    iget-object v1, p0, Lcom/android/dx/dex/code/DalvInsn;->position:Lcom/android/dx/rop/code/SourcePosition;

    #@15
    invoke-virtual {v0, v2}, Lcom/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@18
    move-result-object v2

    #@19
    invoke-static {v1, v0, v2}, Lcom/android/dx/dex/code/DalvInsn;->makeMove(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/dex/code/SimpleInsn;

    #@1c
    move-result-object v0

    #@1d
    :goto_1d
    return-object v0

    #@1e
    :cond_1e
    const/4 v0, 0x0

    #@1f
    goto :goto_1d
.end method

.method public expandedVersion(Ljava/util/BitSet;)Lcom/android/dx/dex/code/DalvInsn;
    .registers 5

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/DalvInsn;->registers:Lcom/android/dx/rop/code/RegisterSpecList;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->hasResult()Z

    #@6
    move-result v2

    #@7
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/dx/rop/code/RegisterSpecList;->withExpandedRegisters(IZLjava/util/BitSet;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/DalvInsn;->withRegisters(Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/dex/code/DalvInsn;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public final getAddress()I
    .registers 3

    #@0
    iget v0, p0, Lcom/android/dx/dex/code/DalvInsn;->address:I

    #@2
    if-gez v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string v1, "address not yet known"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iget v0, p0, Lcom/android/dx/dex/code/DalvInsn;->address:I

    #@e
    return v0
.end method

.method public getLowRegVersion()Lcom/android/dx/dex/code/DalvInsn;
    .registers 5

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/DalvInsn;->registers:Lcom/android/dx/rop/code/RegisterSpecList;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->hasResult()Z

    #@6
    move-result v2

    #@7
    const/4 v3, 0x0

    #@8
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->withExpandedRegisters(IZLjava/util/BitSet;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/DalvInsn;->withRegisters(Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/dex/code/DalvInsn;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public final getMinimumRegisterRequirement(Ljava/util/BitSet;)I
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->hasResult()Z

    #@4
    move-result v3

    #@5
    iget-object v0, p0, Lcom/android/dx/dex/code/DalvInsn;->registers:Lcom/android/dx/rop/code/RegisterSpecList;

    #@7
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@a
    move-result v4

    #@b
    if-eqz v3, :cond_41

    #@d
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_41

    #@13
    iget-object v0, p0, Lcom/android/dx/dex/code/DalvInsn;->registers:Lcom/android/dx/rop/code/RegisterSpecList;

    #@15
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@1c
    move-result v0

    #@1d
    move v2, v0

    #@1e
    :goto_1e
    if-eqz v3, :cond_3a

    #@20
    const/4 v0, 0x1

    #@21
    :goto_21
    move v5, v1

    #@22
    move v1, v0

    #@23
    move v0, v5

    #@24
    :goto_24
    if-ge v1, v4, :cond_3c

    #@26
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    #@29
    move-result v3

    #@2a
    if-nez v3, :cond_37

    #@2c
    iget-object v3, p0, Lcom/android/dx/dex/code/DalvInsn;->registers:Lcom/android/dx/rop/code/RegisterSpecList;

    #@2e
    invoke-virtual {v3, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@35
    move-result v3

    #@36
    add-int/2addr v0, v3

    #@37
    :cond_37
    add-int/lit8 v1, v1, 0x1

    #@39
    goto :goto_24

    #@3a
    :cond_3a
    move v0, v1

    #@3b
    goto :goto_21

    #@3c
    :cond_3c
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@3f
    move-result v0

    #@40
    return v0

    #@41
    :cond_41
    move v2, v1

    #@42
    goto :goto_1e
.end method

.method public final getNextAddress()I
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getAddress()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->codeSize()I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public final getOpcode()Lcom/android/dx/dex/code/Dop;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/DalvInsn;->opcode:Lcom/android/dx/dex/code/Dop;

    #@2
    return-object v0
.end method

.method public final getPosition()Lcom/android/dx/rop/code/SourcePosition;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/DalvInsn;->position:Lcom/android/dx/rop/code/SourcePosition;

    #@2
    return-object v0
.end method

.method public final getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/DalvInsn;->registers:Lcom/android/dx/rop/code/RegisterSpecList;

    #@2
    return-object v0
.end method

.method public final hasAddress()Z
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/dex/code/DalvInsn;->address:I

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

.method public final hasResult()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/DalvInsn;->opcode:Lcom/android/dx/dex/code/Dop;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/dex/code/Dop;->hasResult()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final identifierString()Ljava/lang/String;
    .registers 5

    #@0
    iget v0, p0, Lcom/android/dx/dex/code/DalvInsn;->address:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_18

    #@5
    const-string v0, "%04x"

    #@7
    const/4 v1, 0x1

    #@8
    new-array v1, v1, [Ljava/lang/Object;

    #@a
    const/4 v2, 0x0

    #@b
    iget v3, p0, Lcom/android/dx/dex/code/DalvInsn;->address:I

    #@d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object v3

    #@11
    aput-object v3, v1, v2

    #@13
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    :goto_17
    return-object v0

    #@18
    :cond_18
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@1b
    move-result v0

    #@1c
    invoke-static {v0}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    goto :goto_17
.end method

.method public final listingString(Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 9

    #@0
    invoke-virtual {p0, p3}, Lcom/android/dx/dex/code/DalvInsn;->listingString0(Z)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    if-nez v1, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    return-object v0

    #@8
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->identifierString()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string v2, ": "

    #@1b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@26
    move-result v3

    #@27
    if-nez p2, :cond_34

    #@29
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@2c
    move-result v0

    #@2d
    :goto_2d
    const-string v4, ""

    #@2f
    invoke-static {v2, v3, v4, v1, v0}, Lcom/android/dx/util/TwoColumnOutput;->toString(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    goto :goto_7

    #@34
    :cond_34
    sub-int v0, p2, v3

    #@36
    goto :goto_2d
.end method

.method protected abstract listingString0(Z)Ljava/lang/String;
.end method

.method public final setAddress(I)V
    .registers 4

    #@0
    if-gez p1, :cond_a

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string v1, "address < 0"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    iput p1, p0, Lcom/android/dx/dex/code/DalvInsn;->address:I

    #@c
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    #@0
    const/16 v5, 0x20

    #@2
    new-instance v1, Ljava/lang/StringBuffer;

    #@4
    const/16 v0, 0x64

    #@6
    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    #@9
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->identifierString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@10
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@13
    iget-object v0, p0, Lcom/android/dx/dex/code/DalvInsn;->position:Lcom/android/dx/rop/code/SourcePosition;

    #@15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@18
    const-string v0, ": "

    #@1a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1d
    iget-object v0, p0, Lcom/android/dx/dex/code/DalvInsn;->opcode:Lcom/android/dx/dex/code/Dop;

    #@1f
    invoke-virtual {v0}, Lcom/android/dx/dex/code/Dop;->getName()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@26
    const/4 v0, 0x0

    #@27
    iget-object v2, p0, Lcom/android/dx/dex/code/DalvInsn;->registers:Lcom/android/dx/rop/code/RegisterSpecList;

    #@29
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_3e

    #@2f
    iget-object v0, p0, Lcom/android/dx/dex/code/DalvInsn;->registers:Lcom/android/dx/rop/code/RegisterSpecList;

    #@31
    const-string v2, " "

    #@33
    const-string v3, ", "

    #@35
    const/4 v4, 0x0

    #@36
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->toHuman(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3d
    const/4 v0, 0x1

    #@3e
    :cond_3e
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->argString()Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    if-eqz v2, :cond_51

    #@44
    if-eqz v0, :cond_4b

    #@46
    const/16 v0, 0x2c

    #@48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@4b
    :cond_4b
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@4e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@51
    :cond_51
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@54
    move-result-object v0

    #@55
    return-object v0
.end method

.method public abstract withOpcode(Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/DalvInsn;
.end method

.method public abstract withRegisterOffset(I)Lcom/android/dx/dex/code/DalvInsn;
.end method

.method public abstract withRegisters(Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/dex/code/DalvInsn;
.end method

.method public abstract writeTo(Lcom/android/dx/util/AnnotatedOutput;)V
.end method
