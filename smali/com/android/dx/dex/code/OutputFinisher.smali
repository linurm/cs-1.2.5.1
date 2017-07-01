.class public final Lcom/android/dx/dex/code/OutputFinisher;
.super Ljava/lang/Object;


# instance fields
.field private final dexOptions:Lcom/android/dx/dex/DexOptions;

.field private hasAnyLocalInfo:Z

.field private hasAnyPositionInfo:Z

.field private insns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/dex/code/DalvInsn;",
            ">;"
        }
    .end annotation
.end field

.field private reservedCount:I

.field private final unreservedRegCount:I


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/DexOptions;II)V
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    iput-object p1, p0, Lcom/android/dx/dex/code/OutputFinisher;->dexOptions:Lcom/android/dx/dex/DexOptions;

    #@6
    iput p3, p0, Lcom/android/dx/dex/code/OutputFinisher;->unreservedRegCount:I

    #@8
    new-instance v0, Ljava/util/ArrayList;

    #@a
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    #@d
    iput-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    #@f
    const/4 v0, -0x1

    #@10
    iput v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    #@12
    iput-boolean v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->hasAnyPositionInfo:Z

    #@14
    iput-boolean v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->hasAnyLocalInfo:Z

    #@16
    return-void
.end method

.method private static addConstants(Ljava/util/HashSet;Lcom/android/dx/dex/code/DalvInsn;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/dx/rop/cst/Constant;",
            ">;",
            "Lcom/android/dx/dex/code/DalvInsn;",
            ")V"
        }
    .end annotation

    #@0
    instance-of v0, p1, Lcom/android/dx/dex/code/CstInsn;

    #@2
    if-eqz v0, :cond_e

    #@4
    check-cast p1, Lcom/android/dx/dex/code/CstInsn;

    #@6
    invoke-virtual {p1}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@d
    :cond_d
    :goto_d
    return-void

    #@e
    :cond_e
    instance-of v0, p1, Lcom/android/dx/dex/code/LocalSnapshot;

    #@10
    if-eqz v0, :cond_29

    #@12
    check-cast p1, Lcom/android/dx/dex/code/LocalSnapshot;

    #@14
    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalSnapshot;->getLocals()Lcom/android/dx/rop/code/RegisterSpecSet;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecSet;->size()I

    #@1b
    move-result v2

    #@1c
    const/4 v0, 0x0

    #@1d
    :goto_1d
    if-ge v0, v2, :cond_d

    #@1f
    invoke-virtual {v1, v0}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@22
    move-result-object v3

    #@23
    invoke-static {p0, v3}, Lcom/android/dx/dex/code/OutputFinisher;->addConstants(Ljava/util/HashSet;Lcom/android/dx/rop/code/RegisterSpec;)V

    #@26
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_1d

    #@29
    :cond_29
    instance-of v0, p1, Lcom/android/dx/dex/code/LocalStart;

    #@2b
    if-eqz v0, :cond_d

    #@2d
    check-cast p1, Lcom/android/dx/dex/code/LocalStart;

    #@2f
    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalStart;->getLocal()Lcom/android/dx/rop/code/RegisterSpec;

    #@32
    move-result-object v0

    #@33
    invoke-static {p0, v0}, Lcom/android/dx/dex/code/OutputFinisher;->addConstants(Ljava/util/HashSet;Lcom/android/dx/rop/code/RegisterSpec;)V

    #@36
    goto :goto_d
.end method

.method private static addConstants(Ljava/util/HashSet;Lcom/android/dx/rop/code/RegisterSpec;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/dx/rop/cst/Constant;",
            ">;",
            "Lcom/android/dx/rop/code/RegisterSpec;",
            ")V"
        }
    .end annotation

    #@0
    if-nez p1, :cond_3

    #@2
    :cond_2
    :goto_2
    return-void

    #@3
    :cond_3
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Lcom/android/dx/rop/code/LocalItem;->getName()Lcom/android/dx/rop/cst/CstString;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0}, Lcom/android/dx/rop/code/LocalItem;->getSignature()Lcom/android/dx/rop/cst/CstString;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    #@12
    move-result-object v2

    #@13
    sget-object v3, Lcom/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/android/dx/rop/type/Type;

    #@15
    if-eq v2, v3, :cond_1e

    #@17
    invoke-static {v2}, Lcom/android/dx/rop/cst/CstType;->intern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/CstType;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1e
    :cond_1e
    if-eqz v1, :cond_23

    #@20
    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@23
    :cond_23
    if-eqz v0, :cond_2

    #@25
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@28
    goto :goto_2
.end method

.method private assignAddresses()V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v3

    #@7
    move v1, v0

    #@8
    move v2, v0

    #@9
    :goto_9
    if-ge v2, v3, :cond_20

    #@b
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/dx/dex/code/DalvInsn;

    #@13
    invoke-virtual {v0, v1}, Lcom/android/dx/dex/code/DalvInsn;->setAddress(I)V

    #@16
    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvInsn;->codeSize()I

    #@19
    move-result v0

    #@1a
    add-int/2addr v0, v1

    #@1b
    add-int/lit8 v1, v2, 0x1

    #@1d
    move v2, v1

    #@1e
    move v1, v0

    #@1f
    goto :goto_9

    #@20
    :cond_20
    return-void
.end method

.method private assignAddressesAndFixBranches()V
    .registers 2

    #@0
    :cond_0
    invoke-direct {p0}, Lcom/android/dx/dex/code/OutputFinisher;->assignAddresses()V

    #@3
    invoke-direct {p0}, Lcom/android/dx/dex/code/OutputFinisher;->fixBranches()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    return-void
.end method

.method private static assignIndices(Lcom/android/dx/dex/code/CstInsn;Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    #@3
    move-result-object v0

    #@4
    invoke-interface {p1, v0}, Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;->getIndex(Lcom/android/dx/rop/cst/Constant;)I

    #@7
    move-result v1

    #@8
    if-ltz v1, :cond_d

    #@a
    invoke-virtual {p0, v1}, Lcom/android/dx/dex/code/CstInsn;->setIndex(I)V

    #@d
    :cond_d
    instance-of v1, v0, Lcom/android/dx/rop/cst/CstMemberRef;

    #@f
    if-eqz v1, :cond_20

    #@11
    check-cast v0, Lcom/android/dx/rop/cst/CstMemberRef;

    #@13
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstMemberRef;->getDefiningClass()Lcom/android/dx/rop/cst/CstType;

    #@16
    move-result-object v0

    #@17
    invoke-interface {p1, v0}, Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;->getIndex(Lcom/android/dx/rop/cst/Constant;)I

    #@1a
    move-result v0

    #@1b
    if-ltz v0, :cond_20

    #@1d
    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/CstInsn;->setClassIndex(I)V

    #@20
    :cond_20
    return-void
.end method

.method private calculateReservedCount([Lcom/android/dx/dex/code/Dop;)I
    .registers 8

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v3

    #@6
    iget v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    #@8
    const/4 v0, 0x0

    #@9
    move v2, v0

    #@a
    :goto_a
    if-ge v2, v3, :cond_39

    #@c
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/dx/dex/code/DalvInsn;

    #@14
    aget-object v4, p1, v2

    #@16
    invoke-direct {p0, v0, v4}, Lcom/android/dx/dex/code/OutputFinisher;->findOpcodeForInsn(Lcom/android/dx/dex/code/DalvInsn;Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/Dop;

    #@19
    move-result-object v5

    #@1a
    if-nez v5, :cond_35

    #@1c
    invoke-direct {p0, v0}, Lcom/android/dx/dex/code/OutputFinisher;->findExpandedOpcodeForInsn(Lcom/android/dx/dex/code/DalvInsn;)Lcom/android/dx/dex/code/Dop;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4}, Lcom/android/dx/dex/code/Dop;->getFormat()Lcom/android/dx/dex/code/InsnFormat;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4, v0}, Lcom/android/dx/dex/code/InsnFormat;->compatibleRegs(Lcom/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v0, v4}, Lcom/android/dx/dex/code/DalvInsn;->getMinimumRegisterRequirement(Ljava/util/BitSet;)I

    #@2b
    move-result v0

    #@2c
    if-le v0, v1, :cond_37

    #@2e
    :goto_2e
    aput-object v5, p1, v2

    #@30
    :goto_30
    add-int/lit8 v1, v2, 0x1

    #@32
    move v2, v1

    #@33
    move v1, v0

    #@34
    goto :goto_a

    #@35
    :cond_35
    if-eq v4, v5, :cond_3a

    #@37
    :cond_37
    move v0, v1

    #@38
    goto :goto_2e

    #@39
    :cond_39
    return v1

    #@3a
    :cond_3a
    move v0, v1

    #@3b
    goto :goto_30
.end method

.method private findExpandedOpcodeForInsn(Lcom/android/dx/dex/code/DalvInsn;)Lcom/android/dx/dex/code/Dop;
    .registers 5

    #@0
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getLowRegVersion()Lcom/android/dx/dex/code/DalvInsn;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    #@7
    move-result-object v1

    #@8
    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/code/OutputFinisher;->findOpcodeForInsn(Lcom/android/dx/dex/code/DalvInsn;Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/Dop;

    #@b
    move-result-object v0

    #@c
    if-nez v0, :cond_27

    #@e
    new-instance v0, Lcom/android/dx/util/DexException;

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string v2, "No expanded opcode for "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    :cond_27
    return-object v0
.end method

.method private findOpcodeForInsn(Lcom/android/dx/dex/code/DalvInsn;Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/Dop;
    .registers 4

    #@0
    :goto_0
    if-eqz p2, :cond_c

    #@2
    invoke-virtual {p2}, Lcom/android/dx/dex/code/Dop;->getFormat()Lcom/android/dx/dex/code/InsnFormat;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Lcom/android/dx/dex/code/InsnFormat;->isCompatible(Lcom/android/dx/dex/code/DalvInsn;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_d

    #@c
    :cond_c
    return-object p2

    #@d
    :cond_d
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->dexOptions:Lcom/android/dx/dex/DexOptions;

    #@f
    invoke-static {p2, v0}, Lcom/android/dx/dex/code/Dops;->getNextOrNull(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/dex/DexOptions;)Lcom/android/dx/dex/code/Dop;

    #@12
    move-result-object p2

    #@13
    goto :goto_0
.end method

.method private fixBranches()Z
    .registers 11

    #@0
    const/4 v4, 0x0

    #@1
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    move v3, v4

    #@8
    :goto_8
    if-ge v3, v2, :cond_95

    #@a
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/dx/dex/code/DalvInsn;

    #@12
    instance-of v1, v0, Lcom/android/dx/dex/code/TargetInsn;

    #@14
    if-nez v1, :cond_1b

    #@16
    move v0, v4

    #@17
    :goto_17
    add-int/lit8 v3, v3, 0x1

    #@19
    move v4, v0

    #@1a
    goto :goto_8

    #@1b
    :cond_1b
    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    #@1e
    move-result-object v5

    #@1f
    move-object v1, v0

    #@20
    check-cast v1, Lcom/android/dx/dex/code/TargetInsn;

    #@22
    invoke-virtual {v5}, Lcom/android/dx/dex/code/Dop;->getFormat()Lcom/android/dx/dex/code/InsnFormat;

    #@25
    move-result-object v6

    #@26
    invoke-virtual {v6, v1}, Lcom/android/dx/dex/code/InsnFormat;->branchFits(Lcom/android/dx/dex/code/TargetInsn;)Z

    #@29
    move-result v6

    #@2a
    if-eqz v6, :cond_2e

    #@2c
    move v0, v4

    #@2d
    goto :goto_17

    #@2e
    :cond_2e
    invoke-virtual {v5}, Lcom/android/dx/dex/code/Dop;->getFamily()I

    #@31
    move-result v4

    #@32
    const/16 v6, 0x28

    #@34
    if-ne v4, v6, :cond_55

    #@36
    invoke-direct {p0, v0, v5}, Lcom/android/dx/dex/code/OutputFinisher;->findOpcodeForInsn(Lcom/android/dx/dex/code/DalvInsn;Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/Dop;

    #@39
    move-result-object v1

    #@3a
    if-nez v1, :cond_44

    #@3c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@3e
    const-string v1, "method too long"

    #@40
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@43
    throw v0

    #@44
    :cond_44
    iget-object v4, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    #@46
    invoke-virtual {v0, v1}, Lcom/android/dx/dex/code/DalvInsn;->withOpcode(Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/DalvInsn;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {v4, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@4d
    move v0, v2

    #@4e
    move v1, v3

    #@4f
    :goto_4f
    const/4 v2, 0x1

    #@50
    move v3, v1

    #@51
    move v9, v0

    #@52
    move v0, v2

    #@53
    move v2, v9

    #@54
    goto :goto_17

    #@55
    :cond_55
    :try_start_55
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    #@57
    add-int/lit8 v4, v3, 0x1

    #@59
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5c
    move-result-object v0

    #@5d
    check-cast v0, Lcom/android/dx/dex/code/CodeAddress;
    :try_end_5f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_55 .. :try_end_5f} :catch_83
    .catch Ljava/lang/ClassCastException; {:try_start_55 .. :try_end_5f} :catch_8c

    #@5f
    new-instance v4, Lcom/android/dx/dex/code/TargetInsn;

    #@61
    sget-object v5, Lcom/android/dx/dex/code/Dops;->GOTO:Lcom/android/dx/dex/code/Dop;

    #@63
    invoke-virtual {v1}, Lcom/android/dx/dex/code/TargetInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@66
    move-result-object v6

    #@67
    sget-object v7, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    #@69
    invoke-virtual {v1}, Lcom/android/dx/dex/code/TargetInsn;->getTarget()Lcom/android/dx/dex/code/CodeAddress;

    #@6c
    move-result-object v8

    #@6d
    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/dx/dex/code/TargetInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/dex/code/CodeAddress;)V

    #@70
    iget-object v5, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    #@72
    invoke-virtual {v5, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@75
    iget-object v4, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    #@77
    invoke-virtual {v1, v0}, Lcom/android/dx/dex/code/TargetInsn;->withNewTargetAndReversed(Lcom/android/dx/dex/code/CodeAddress;)Lcom/android/dx/dex/code/TargetInsn;

    #@7a
    move-result-object v0

    #@7b
    invoke-virtual {v4, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@7e
    add-int/lit8 v0, v2, 0x1

    #@80
    add-int/lit8 v1, v3, 0x1

    #@82
    goto :goto_4f

    #@83
    :catch_83
    move-exception v0

    #@84
    new-instance v0, Ljava/lang/IllegalStateException;

    #@86
    const-string v1, "unpaired TargetInsn (dangling)"

    #@88
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@8b
    throw v0

    #@8c
    :catch_8c
    move-exception v0

    #@8d
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8f
    const-string v1, "unpaired TargetInsn"

    #@91
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@94
    throw v0

    #@95
    :cond_95
    return v4
.end method

.method private static hasLocalInfo(Lcom/android/dx/dex/code/DalvInsn;)Z
    .registers 7

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    instance-of v2, p0, Lcom/android/dx/dex/code/LocalSnapshot;

    #@4
    if-eqz v2, :cond_21

    #@6
    check-cast p0, Lcom/android/dx/dex/code/LocalSnapshot;

    #@8
    invoke-virtual {p0}, Lcom/android/dx/dex/code/LocalSnapshot;->getLocals()Lcom/android/dx/rop/code/RegisterSpecSet;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpecSet;->size()I

    #@f
    move-result v4

    #@10
    move v2, v1

    #@11
    :goto_11
    if-ge v2, v4, :cond_31

    #@13
    invoke-virtual {v3, v2}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@16
    move-result-object v5

    #@17
    invoke-static {v5}, Lcom/android/dx/dex/code/OutputFinisher;->hasLocalInfo(Lcom/android/dx/rop/code/RegisterSpec;)Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_1e

    #@1d
    :cond_1d
    :goto_1d
    return v0

    #@1e
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    #@20
    goto :goto_11

    #@21
    :cond_21
    instance-of v2, p0, Lcom/android/dx/dex/code/LocalStart;

    #@23
    if-eqz v2, :cond_31

    #@25
    check-cast p0, Lcom/android/dx/dex/code/LocalStart;

    #@27
    invoke-virtual {p0}, Lcom/android/dx/dex/code/LocalStart;->getLocal()Lcom/android/dx/rop/code/RegisterSpec;

    #@2a
    move-result-object v2

    #@2b
    invoke-static {v2}, Lcom/android/dx/dex/code/OutputFinisher;->hasLocalInfo(Lcom/android/dx/rop/code/RegisterSpec;)Z

    #@2e
    move-result v2

    #@2f
    if-nez v2, :cond_1d

    #@31
    :cond_31
    move v0, v1

    #@32
    goto :goto_1d
.end method

.method private static hasLocalInfo(Lcom/android/dx/rop/code/RegisterSpec;)Z
    .registers 2

    #@0
    if-eqz p0, :cond_e

    #@2
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/dx/rop/code/LocalItem;->getName()Lcom/android/dx/rop/cst/CstString;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    :goto_d
    return v0

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    goto :goto_d
.end method

.method private makeOpcodesArray()[Lcom/android/dx/dex/code/Dop;
    .registers 5

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    new-array v3, v2, [Lcom/android/dx/dex/code/Dop;

    #@8
    const/4 v0, 0x0

    #@9
    move v1, v0

    #@a
    :goto_a
    if-ge v1, v2, :cond_1e

    #@c
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/dx/dex/code/DalvInsn;

    #@14
    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    #@17
    move-result-object v0

    #@18
    aput-object v0, v3, v1

    #@1a
    add-int/lit8 v0, v1, 0x1

    #@1c
    move v1, v0

    #@1d
    goto :goto_a

    #@1e
    :cond_1e
    return-object v3
.end method

.method private massageInstructions([Lcom/android/dx/dex/code/Dop;)V
    .registers 7

    #@0
    iget v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    #@2
    if-nez v0, :cond_2b

    #@4
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v2

    #@a
    const/4 v0, 0x0

    #@b
    move v1, v0

    #@c
    :goto_c
    if-ge v1, v2, :cond_31

    #@e
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/dx/dex/code/DalvInsn;

    #@16
    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    #@19
    move-result-object v3

    #@1a
    aget-object v4, p1, v1

    #@1c
    if-eq v3, v4, :cond_27

    #@1e
    iget-object v3, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v0, v4}, Lcom/android/dx/dex/code/DalvInsn;->withOpcode(Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/DalvInsn;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@27
    :cond_27
    add-int/lit8 v0, v1, 0x1

    #@29
    move v1, v0

    #@2a
    goto :goto_c

    #@2b
    :cond_2b
    invoke-direct {p0, p1}, Lcom/android/dx/dex/code/OutputFinisher;->performExpansion([Lcom/android/dx/dex/code/Dop;)Ljava/util/ArrayList;

    #@2e
    move-result-object v0

    #@2f
    iput-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    #@31
    :cond_31
    return-void
.end method

.method private performExpansion([Lcom/android/dx/dex/code/Dop;)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/dx/dex/code/Dop;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/dex/code/DalvInsn;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v2, 0x0

    #@1
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v6

    #@7
    new-instance v7, Ljava/util/ArrayList;

    #@9
    mul-int/lit8 v0, v6, 0x2

    #@b
    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@e
    const/4 v0, 0x0

    #@f
    move v5, v0

    #@10
    :goto_10
    if-ge v5, v6, :cond_55

    #@12
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/dx/dex/code/DalvInsn;

    #@1a
    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    #@1d
    move-result-object v8

    #@1e
    aget-object v1, p1, v5

    #@20
    if-eqz v1, :cond_3c

    #@22
    move-object v3, v1

    #@23
    move-object v4, v2

    #@24
    move-object v1, v2

    #@25
    :goto_25
    if-eqz v1, :cond_2a

    #@27
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a
    :cond_2a
    if-eq v3, v8, :cond_30

    #@2c
    invoke-virtual {v0, v3}, Lcom/android/dx/dex/code/DalvInsn;->withOpcode(Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/DalvInsn;

    #@2f
    move-result-object v0

    #@30
    :cond_30
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@33
    if-eqz v4, :cond_38

    #@35
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@38
    :cond_38
    add-int/lit8 v0, v5, 0x1

    #@3a
    move v5, v0

    #@3b
    goto :goto_10

    #@3c
    :cond_3c
    invoke-direct {p0, v0}, Lcom/android/dx/dex/code/OutputFinisher;->findExpandedOpcodeForInsn(Lcom/android/dx/dex/code/DalvInsn;)Lcom/android/dx/dex/code/Dop;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3}, Lcom/android/dx/dex/code/Dop;->getFormat()Lcom/android/dx/dex/code/InsnFormat;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1, v0}, Lcom/android/dx/dex/code/InsnFormat;->compatibleRegs(Lcom/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;

    #@47
    move-result-object v9

    #@48
    invoke-virtual {v0, v9}, Lcom/android/dx/dex/code/DalvInsn;->expandedPrefix(Ljava/util/BitSet;)Lcom/android/dx/dex/code/DalvInsn;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v0, v9}, Lcom/android/dx/dex/code/DalvInsn;->expandedSuffix(Ljava/util/BitSet;)Lcom/android/dx/dex/code/DalvInsn;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {v0, v9}, Lcom/android/dx/dex/code/DalvInsn;->expandedVersion(Ljava/util/BitSet;)Lcom/android/dx/dex/code/DalvInsn;

    #@53
    move-result-object v0

    #@54
    goto :goto_25

    #@55
    :cond_55
    return-object v7
.end method

.method private reserveRegisters([Lcom/android/dx/dex/code/Dop;)V
    .registers 10

    #@0
    const/4 v2, 0x0

    #@1
    iget v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    #@3
    if-gez v0, :cond_f

    #@5
    move v1, v2

    #@6
    :goto_6
    invoke-direct {p0, p1}, Lcom/android/dx/dex/code/OutputFinisher;->calculateReservedCount([Lcom/android/dx/dex/code/Dop;)I

    #@9
    move-result v3

    #@a
    if-lt v1, v3, :cond_13

    #@c
    iput v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    #@e
    return-void

    #@f
    :cond_f
    iget v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    #@11
    move v1, v0

    #@12
    goto :goto_6

    #@13
    :cond_13
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v5

    #@19
    move v4, v2

    #@1a
    :goto_1a
    if-ge v4, v5, :cond_37

    #@1c
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Lcom/android/dx/dex/code/DalvInsn;

    #@24
    instance-of v6, v0, Lcom/android/dx/dex/code/CodeAddress;

    #@26
    if-nez v6, :cond_33

    #@28
    iget-object v6, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    #@2a
    sub-int v7, v3, v1

    #@2c
    invoke-virtual {v0, v7}, Lcom/android/dx/dex/code/DalvInsn;->withRegisterOffset(I)Lcom/android/dx/dex/code/DalvInsn;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v6, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@33
    :cond_33
    add-int/lit8 v0, v4, 0x1

    #@35
    move v4, v0

    #@36
    goto :goto_1a

    #@37
    :cond_37
    move v1, v3

    #@38
    goto :goto_6
.end method

.method private updateInfo(Lcom/android/dx/dex/code/DalvInsn;)V
    .registers 4

    #@0
    const/4 v1, 0x1

    #@1
    iget-boolean v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->hasAnyPositionInfo:Z

    #@3
    if-nez v0, :cond_11

    #@5
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Lcom/android/dx/rop/code/SourcePosition;->getLine()I

    #@c
    move-result v0

    #@d
    if-ltz v0, :cond_11

    #@f
    iput-boolean v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->hasAnyPositionInfo:Z

    #@11
    :cond_11
    iget-boolean v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->hasAnyLocalInfo:Z

    #@13
    if-nez v0, :cond_1d

    #@15
    invoke-static {p1}, Lcom/android/dx/dex/code/OutputFinisher;->hasLocalInfo(Lcom/android/dx/dex/code/DalvInsn;)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_1d

    #@1b
    iput-boolean v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->hasAnyLocalInfo:Z

    #@1d
    :cond_1d
    return-void
.end method


# virtual methods
.method public add(Lcom/android/dx/dex/code/DalvInsn;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    invoke-direct {p0, p1}, Lcom/android/dx/dex/code/OutputFinisher;->updateInfo(Lcom/android/dx/dex/code/DalvInsn;)V

    #@8
    return-void
.end method

.method public assignIndices(Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1c

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/dx/dex/code/DalvInsn;

    #@12
    instance-of v2, v0, Lcom/android/dx/dex/code/CstInsn;

    #@14
    if-eqz v2, :cond_6

    #@16
    check-cast v0, Lcom/android/dx/dex/code/CstInsn;

    #@18
    invoke-static {v0, p1}, Lcom/android/dx/dex/code/OutputFinisher;->assignIndices(Lcom/android/dx/dex/code/CstInsn;Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V

    #@1b
    goto :goto_6

    #@1c
    :cond_1c
    return-void
.end method

.method public finishProcessingAndGetList()Lcom/android/dx/dex/code/DalvInsnList;
    .registers 4

    #@0
    iget v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    #@2
    if-ltz v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@6
    const-string v1, "already processed"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    invoke-direct {p0}, Lcom/android/dx/dex/code/OutputFinisher;->makeOpcodesArray()[Lcom/android/dx/dex/code/Dop;

    #@f
    move-result-object v0

    #@10
    invoke-direct {p0, v0}, Lcom/android/dx/dex/code/OutputFinisher;->reserveRegisters([Lcom/android/dx/dex/code/Dop;)V

    #@13
    invoke-direct {p0, v0}, Lcom/android/dx/dex/code/OutputFinisher;->massageInstructions([Lcom/android/dx/dex/code/Dop;)V

    #@16
    invoke-direct {p0}, Lcom/android/dx/dex/code/OutputFinisher;->assignAddressesAndFixBranches()V

    #@19
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    #@1b
    iget v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    #@1d
    iget v2, p0, Lcom/android/dx/dex/code/OutputFinisher;->unreservedRegCount:I

    #@1f
    add-int/2addr v1, v2

    #@20
    invoke-static {v0, v1}, Lcom/android/dx/dex/code/DalvInsnList;->makeImmutable(Ljava/util/ArrayList;I)Lcom/android/dx/dex/code/DalvInsnList;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method

.method public getAllConstants()Ljava/util/HashSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/dx/rop/cst/Constant;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v1, Ljava/util/HashSet;

    #@2
    const/16 v0, 0x14

    #@4
    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    #@7
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1d

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/android/dx/dex/code/DalvInsn;

    #@19
    invoke-static {v1, v0}, Lcom/android/dx/dex/code/OutputFinisher;->addConstants(Ljava/util/HashSet;Lcom/android/dx/dex/code/DalvInsn;)V

    #@1c
    goto :goto_d

    #@1d
    :cond_1d
    return-object v1
.end method

.method public hasAnyLocalInfo()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->hasAnyLocalInfo:Z

    #@2
    return v0
.end method

.method public hasAnyPositionInfo()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->hasAnyPositionInfo:Z

    #@2
    return v0
.end method

.method public insert(ILcom/android/dx/dex/code/DalvInsn;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@5
    invoke-direct {p0, p2}, Lcom/android/dx/dex/code/OutputFinisher;->updateInfo(Lcom/android/dx/dex/code/DalvInsn;)V

    #@8
    return-void
.end method

.method public reverseBranch(ILcom/android/dx/dex/code/CodeAddress;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    sub-int/2addr v0, p1

    #@7
    add-int/lit8 v1, v0, -0x1

    #@9
    :try_start_9
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/dx/dex/code/TargetInsn;
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_11} :catch_1b
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_11} :catch_24

    #@11
    iget-object v2, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v0, p2}, Lcom/android/dx/dex/code/TargetInsn;->withNewTargetAndReversed(Lcom/android/dx/dex/code/CodeAddress;)Lcom/android/dx/dex/code/TargetInsn;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@1a
    return-void

    #@1b
    :catch_1b
    move-exception v0

    #@1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1e
    const-string v1, "too few instructions"

    #@20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    :catch_24
    move-exception v0

    #@25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@27
    const-string v1, "non-reversible instruction"

    #@29
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0
.end method
