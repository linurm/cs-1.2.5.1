.class public final Lcom/android/dx/dex/code/RopTranslator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;,
        Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;
    }
.end annotation


# instance fields
.field private final addresses:Lcom/android/dx/dex/code/BlockAddresses;

.field private final dexOptions:Lcom/android/dx/dex/DexOptions;

.field private final locals:Lcom/android/dx/rop/code/LocalVariableInfo;

.field private final method:Lcom/android/dx/rop/code/RopMethod;

.field private order:[I

.field private final output:Lcom/android/dx/dex/code/OutputCollector;

.field private final paramSize:I

.field private paramsAreInOrder:Z

.field private final positionInfo:I

.field private final regCount:I

.field private final translationVisitor:Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;


# direct methods
.method private constructor <init>(Lcom/android/dx/rop/code/RopMethod;ILcom/android/dx/rop/code/LocalVariableInfo;ILcom/android/dx/dex/DexOptions;)V
    .registers 10

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p5, p0, Lcom/android/dx/dex/code/RopTranslator;->dexOptions:Lcom/android/dx/dex/DexOptions;

    #@5
    iput-object p1, p0, Lcom/android/dx/dex/code/RopTranslator;->method:Lcom/android/dx/rop/code/RopMethod;

    #@7
    iput p2, p0, Lcom/android/dx/dex/code/RopTranslator;->positionInfo:I

    #@9
    iput-object p3, p0, Lcom/android/dx/dex/code/RopTranslator;->locals:Lcom/android/dx/rop/code/LocalVariableInfo;

    #@b
    new-instance v0, Lcom/android/dx/dex/code/BlockAddresses;

    #@d
    invoke-direct {v0, p1}, Lcom/android/dx/dex/code/BlockAddresses;-><init>(Lcom/android/dx/rop/code/RopMethod;)V

    #@10
    iput-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    #@12
    iput p4, p0, Lcom/android/dx/dex/code/RopTranslator;->paramSize:I

    #@14
    const/4 v0, 0x0

    #@15
    iput-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->order:[I

    #@17
    invoke-static {p1, p4}, Lcom/android/dx/dex/code/RopTranslator;->calculateParamsAreInOrder(Lcom/android/dx/rop/code/RopMethod;I)Z

    #@1a
    move-result v0

    #@1b
    iput-boolean v0, p0, Lcom/android/dx/dex/code/RopTranslator;->paramsAreInOrder:Z

    #@1d
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Lcom/android/dx/rop/code/BasicBlockList;->size()I

    #@24
    move-result v2

    #@25
    mul-int/lit8 v0, v2, 0x3

    #@27
    invoke-virtual {v1}, Lcom/android/dx/rop/code/BasicBlockList;->getInstructionCount()I

    #@2a
    move-result v3

    #@2b
    add-int/2addr v0, v3

    #@2c
    if-eqz p3, :cond_34

    #@2e
    invoke-virtual {p3}, Lcom/android/dx/rop/code/LocalVariableInfo;->getAssignmentCount()I

    #@31
    move-result v3

    #@32
    add-int/2addr v3, v2

    #@33
    add-int/2addr v0, v3

    #@34
    :cond_34
    invoke-virtual {v1}, Lcom/android/dx/rop/code/BasicBlockList;->getRegCount()I

    #@37
    move-result v3

    #@38
    iget-boolean v1, p0, Lcom/android/dx/dex/code/RopTranslator;->paramsAreInOrder:Z

    #@3a
    if-eqz v1, :cond_57

    #@3c
    const/4 v1, 0x0

    #@3d
    :goto_3d
    add-int/2addr v1, v3

    #@3e
    iput v1, p0, Lcom/android/dx/dex/code/RopTranslator;->regCount:I

    #@40
    new-instance v1, Lcom/android/dx/dex/code/OutputCollector;

    #@42
    mul-int/lit8 v2, v2, 0x3

    #@44
    iget v3, p0, Lcom/android/dx/dex/code/RopTranslator;->regCount:I

    #@46
    invoke-direct {v1, p5, v0, v2, v3}, Lcom/android/dx/dex/code/OutputCollector;-><init>(Lcom/android/dx/dex/DexOptions;III)V

    #@49
    iput-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->output:Lcom/android/dx/dex/code/OutputCollector;

    #@4b
    if-eqz p3, :cond_5a

    #@4d
    new-instance v0, Lcom/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;

    #@4f
    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->output:Lcom/android/dx/dex/code/OutputCollector;

    #@51
    invoke-direct {v0, p0, v1, p3}, Lcom/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;-><init>(Lcom/android/dx/dex/code/RopTranslator;Lcom/android/dx/dex/code/OutputCollector;Lcom/android/dx/rop/code/LocalVariableInfo;)V

    #@54
    iput-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->translationVisitor:Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;

    #@56
    :goto_56
    return-void

    #@57
    :cond_57
    iget v1, p0, Lcom/android/dx/dex/code/RopTranslator;->paramSize:I

    #@59
    goto :goto_3d

    #@5a
    :cond_5a
    new-instance v0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;

    #@5c
    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->output:Lcom/android/dx/dex/code/OutputCollector;

    #@5e
    invoke-direct {v0, p0, v1}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;-><init>(Lcom/android/dx/dex/code/RopTranslator;Lcom/android/dx/dex/code/OutputCollector;)V

    #@61
    iput-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->translationVisitor:Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;

    #@63
    goto :goto_56
.end method

.method static synthetic access$000(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpecList;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/android/dx/dex/code/RopTranslator;->getRegs(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dx/dex/code/RopTranslator;)Lcom/android/dx/dex/code/BlockAddresses;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    #@2
    return-object v0
.end method

.method static synthetic access$200(Lcom/android/dx/dex/code/RopTranslator;)Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/android/dx/dex/code/RopTranslator;->paramsAreInOrder:Z

    #@2
    return v0
.end method

.method static synthetic access$300(Lcom/android/dx/dex/code/RopTranslator;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/dex/code/RopTranslator;->regCount:I

    #@2
    return v0
.end method

.method static synthetic access$400(Lcom/android/dx/dex/code/RopTranslator;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/dex/code/RopTranslator;->paramSize:I

    #@2
    return v0
.end method

.method static synthetic access$500(Lcom/android/dx/dex/code/RopTranslator;)Lcom/android/dx/rop/code/RopMethod;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->method:Lcom/android/dx/rop/code/RopMethod;

    #@2
    return-object v0
.end method

.method static synthetic access$600(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;
    .registers 3

    #@0
    invoke-static {p0, p1}, Lcom/android/dx/dex/code/RopTranslator;->getRegs(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private static calculateParamsAreInOrder(Lcom/android/dx/rop/code/RopMethod;I)Z
    .registers 7

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    new-array v0, v1, [Z

    #@4
    aput-boolean v1, v0, v4

    #@6
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Lcom/android/dx/rop/code/BasicBlockList;->getRegCount()I

    #@d
    move-result v1

    #@e
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    #@11
    move-result-object v2

    #@12
    new-instance v3, Lcom/android/dx/dex/code/RopTranslator$1;

    #@14
    invoke-direct {v3, v0, v1, p1}, Lcom/android/dx/dex/code/RopTranslator$1;-><init>([ZII)V

    #@17
    invoke-virtual {v2, v3}, Lcom/android/dx/rop/code/BasicBlockList;->forEachInsn(Lcom/android/dx/rop/code/Insn$Visitor;)V

    #@1a
    aget-boolean v0, v0, v4

    #@1c
    return v0
.end method

.method private static getRegs(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpecList;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/code/Insn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Lcom/android/dx/dex/code/RopTranslator;->getRegs(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static getRegs(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;
    .registers 6

    #@0
    const/4 v3, 0x1

    #@1
    invoke-virtual {p0}, Lcom/android/dx/rop/code/Insn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p0}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Lcom/android/dx/rop/code/Rop;->isCommutative()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_31

    #@f
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@12
    move-result v1

    #@13
    const/4 v2, 0x2

    #@14
    if-ne v1, v2, :cond_31

    #@16
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@19
    move-result v1

    #@1a
    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@21
    move-result v2

    #@22
    if-ne v1, v2, :cond_31

    #@24
    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@27
    move-result-object v1

    #@28
    const/4 v2, 0x0

    #@29
    invoke-virtual {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@2c
    move-result-object v0

    #@2d
    invoke-static {v1, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@30
    move-result-object v0

    #@31
    :cond_31
    if-nez p1, :cond_34

    #@33
    :goto_33
    return-object v0

    #@34
    :cond_34
    invoke-virtual {v0, p1}, Lcom/android/dx/rop/code/RegisterSpecList;->withFirst(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@37
    move-result-object v0

    #@38
    goto :goto_33
.end method

.method private outputBlock(Lcom/android/dx/rop/code/BasicBlock;I)V
    .registers 9

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/dx/dex/code/BlockAddresses;->getStart(Lcom/android/dx/rop/code/BasicBlock;)Lcom/android/dx/dex/code/CodeAddress;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->output:Lcom/android/dx/dex/code/OutputCollector;

    #@8
    invoke-virtual {v1, v0}, Lcom/android/dx/dex/code/OutputCollector;->add(Lcom/android/dx/dex/code/DalvInsn;)V

    #@b
    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->locals:Lcom/android/dx/rop/code/LocalVariableInfo;

    #@d
    if-eqz v1, :cond_23

    #@f
    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->locals:Lcom/android/dx/rop/code/LocalVariableInfo;

    #@11
    invoke-virtual {v1, p1}, Lcom/android/dx/rop/code/LocalVariableInfo;->getStarts(Lcom/android/dx/rop/code/BasicBlock;)Lcom/android/dx/rop/code/RegisterSpecSet;

    #@14
    move-result-object v1

    #@15
    iget-object v2, p0, Lcom/android/dx/dex/code/RopTranslator;->output:Lcom/android/dx/dex/code/OutputCollector;

    #@17
    new-instance v3, Lcom/android/dx/dex/code/LocalSnapshot;

    #@19
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CodeAddress;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@1c
    move-result-object v0

    #@1d
    invoke-direct {v3, v0, v1}, Lcom/android/dx/dex/code/LocalSnapshot;-><init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecSet;)V

    #@20
    invoke-virtual {v2, v3}, Lcom/android/dx/dex/code/OutputCollector;->add(Lcom/android/dx/dex/code/DalvInsn;)V

    #@23
    :cond_23
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->translationVisitor:Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;

    #@25
    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    #@27
    invoke-virtual {v1, p1}, Lcom/android/dx/dex/code/BlockAddresses;->getLast(Lcom/android/dx/rop/code/BasicBlock;)Lcom/android/dx/dex/code/CodeAddress;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v0, p1, v1}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->setBlock(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/dex/code/CodeAddress;)V

    #@2e
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getInsns()Lcom/android/dx/rop/code/InsnList;

    #@31
    move-result-object v0

    #@32
    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->translationVisitor:Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;

    #@34
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/code/InsnList;->forEach(Lcom/android/dx/rop/code/Insn$Visitor;)V

    #@37
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->output:Lcom/android/dx/dex/code/OutputCollector;

    #@39
    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    #@3b
    invoke-virtual {v1, p1}, Lcom/android/dx/dex/code/BlockAddresses;->getEnd(Lcom/android/dx/rop/code/BasicBlock;)Lcom/android/dx/dex/code/CodeAddress;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v0, v1}, Lcom/android/dx/dex/code/OutputCollector;->add(Lcom/android/dx/dex/code/DalvInsn;)V

    #@42
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    #@45
    move-result v0

    #@46
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getLastInsn()Lcom/android/dx/rop/code/Insn;

    #@49
    move-result-object v1

    #@4a
    if-ltz v0, :cond_6b

    #@4c
    if-eq v0, p2, :cond_6b

    #@4e
    invoke-virtual {v1}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v2}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    #@55
    move-result v2

    #@56
    const/4 v3, 0x4

    #@57
    if-ne v2, v3, :cond_6c

    #@59
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getSecondarySuccessor()I

    #@5c
    move-result v2

    #@5d
    if-ne v2, p2, :cond_6c

    #@5f
    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->output:Lcom/android/dx/dex/code/OutputCollector;

    #@61
    const/4 v2, 0x1

    #@62
    iget-object v3, p0, Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    #@64
    invoke-virtual {v3, v0}, Lcom/android/dx/dex/code/BlockAddresses;->getStart(I)Lcom/android/dx/dex/code/CodeAddress;

    #@67
    move-result-object v0

    #@68
    invoke-virtual {v1, v2, v0}, Lcom/android/dx/dex/code/OutputCollector;->reverseBranch(ILcom/android/dx/dex/code/CodeAddress;)V

    #@6b
    :cond_6b
    :goto_6b
    return-void

    #@6c
    :cond_6c
    new-instance v2, Lcom/android/dx/dex/code/TargetInsn;

    #@6e
    sget-object v3, Lcom/android/dx/dex/code/Dops;->GOTO:Lcom/android/dx/dex/code/Dop;

    #@70
    invoke-virtual {v1}, Lcom/android/dx/rop/code/Insn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@73
    move-result-object v1

    #@74
    sget-object v4, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    #@76
    iget-object v5, p0, Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    #@78
    invoke-virtual {v5, v0}, Lcom/android/dx/dex/code/BlockAddresses;->getStart(I)Lcom/android/dx/dex/code/CodeAddress;

    #@7b
    move-result-object v0

    #@7c
    invoke-direct {v2, v3, v1, v4, v0}, Lcom/android/dx/dex/code/TargetInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/dex/code/CodeAddress;)V

    #@7f
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->output:Lcom/android/dx/dex/code/OutputCollector;

    #@81
    invoke-virtual {v0, v2}, Lcom/android/dx/dex/code/OutputCollector;->add(Lcom/android/dx/dex/code/DalvInsn;)V

    #@84
    goto :goto_6b
.end method

.method private outputInstructions()V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->method:Lcom/android/dx/rop/code/RopMethod;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    #@5
    move-result-object v2

    #@6
    iget-object v3, p0, Lcom/android/dx/dex/code/RopTranslator;->order:[I

    #@8
    array-length v4, v3

    #@9
    const/4 v0, 0x0

    #@a
    move v1, v0

    #@b
    :goto_b
    if-ge v1, v4, :cond_23

    #@d
    add-int/lit8 v0, v1, 0x1

    #@f
    array-length v5, v3

    #@10
    if-ne v0, v5, :cond_20

    #@12
    const/4 v0, -0x1

    #@13
    :goto_13
    aget v5, v3, v1

    #@15
    invoke-virtual {v2, v5}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    #@18
    move-result-object v5

    #@19
    invoke-direct {p0, v5, v0}, Lcom/android/dx/dex/code/RopTranslator;->outputBlock(Lcom/android/dx/rop/code/BasicBlock;I)V

    #@1c
    add-int/lit8 v0, v1, 0x1

    #@1e
    move v1, v0

    #@1f
    goto :goto_b

    #@20
    :cond_20
    aget v0, v3, v0

    #@22
    goto :goto_13

    #@23
    :cond_23
    return-void
.end method

.method private pickOrder()V
    .registers 15

    #@0
    const/4 v3, -0x1

    #@1
    const/4 v4, 0x0

    #@2
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->method:Lcom/android/dx/rop/code/RopMethod;

    #@4
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    #@7
    move-result-object v6

    #@8
    invoke-virtual {v6}, Lcom/android/dx/rop/code/BasicBlockList;->size()I

    #@b
    move-result v7

    #@c
    invoke-virtual {v6}, Lcom/android/dx/rop/code/BasicBlockList;->getMaxLabel()I

    #@f
    move-result v0

    #@10
    invoke-static {v0}, Lcom/android/dx/util/Bits;->makeBitSet(I)[I

    #@13
    move-result-object v8

    #@14
    invoke-static {v0}, Lcom/android/dx/util/Bits;->makeBitSet(I)[I

    #@17
    move-result-object v9

    #@18
    move v0, v4

    #@19
    :goto_19
    if-ge v0, v7, :cond_29

    #@1b
    invoke-virtual {v6, v0}, Lcom/android/dx/rop/code/BasicBlockList;->get(I)Lcom/android/dx/rop/code/BasicBlock;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    #@22
    move-result v1

    #@23
    invoke-static {v8, v1}, Lcom/android/dx/util/Bits;->set([II)V

    #@26
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_19

    #@29
    :cond_29
    new-array v10, v7, [I

    #@2b
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->method:Lcom/android/dx/rop/code/RopMethod;

    #@2d
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RopMethod;->getFirstLabel()I

    #@30
    move-result v0

    #@31
    move v2, v4

    #@32
    :goto_32
    if-eq v0, v3, :cond_b6

    #@34
    :goto_34
    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->method:Lcom/android/dx/rop/code/RopMethod;

    #@36
    invoke-virtual {v1, v0}, Lcom/android/dx/rop/code/RopMethod;->labelToPredecessors(I)Lcom/android/dx/util/IntList;

    #@39
    move-result-object v11

    #@3a
    invoke-virtual {v11}, Lcom/android/dx/util/IntList;->size()I

    #@3d
    move-result v12

    #@3e
    move v5, v4

    #@3f
    :goto_3f
    if-ge v5, v12, :cond_4b

    #@41
    invoke-virtual {v11, v5}, Lcom/android/dx/util/IntList;->get(I)I

    #@44
    move-result v1

    #@45
    invoke-static {v9, v1}, Lcom/android/dx/util/Bits;->get([II)Z

    #@48
    move-result v13

    #@49
    if-eqz v13, :cond_6a

    #@4b
    :cond_4b
    move v1, v0

    #@4c
    move v0, v2

    #@4d
    :cond_4d
    :goto_4d
    if-eq v1, v3, :cond_63

    #@4f
    invoke-static {v8, v1}, Lcom/android/dx/util/Bits;->clear([II)V

    #@52
    invoke-static {v9, v1}, Lcom/android/dx/util/Bits;->clear([II)V

    #@55
    aput v1, v10, v0

    #@57
    add-int/lit8 v0, v0, 0x1

    #@59
    invoke-virtual {v6, v1}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    #@5c
    move-result-object v5

    #@5d
    invoke-virtual {v6, v5}, Lcom/android/dx/rop/code/BasicBlockList;->preferredSuccessorOf(Lcom/android/dx/rop/code/BasicBlock;)Lcom/android/dx/rop/code/BasicBlock;

    #@60
    move-result-object v1

    #@61
    if-nez v1, :cond_83

    #@63
    :cond_63
    invoke-static {v8, v4}, Lcom/android/dx/util/Bits;->findFirst([II)I

    #@66
    move-result v1

    #@67
    move v2, v0

    #@68
    move v0, v1

    #@69
    goto :goto_32

    #@6a
    :cond_6a
    invoke-static {v8, v1}, Lcom/android/dx/util/Bits;->get([II)Z

    #@6d
    move-result v13

    #@6e
    if-nez v13, :cond_74

    #@70
    :cond_70
    add-int/lit8 v1, v5, 0x1

    #@72
    move v5, v1

    #@73
    goto :goto_3f

    #@74
    :cond_74
    invoke-virtual {v6, v1}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    #@77
    move-result-object v13

    #@78
    invoke-virtual {v13}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    #@7b
    move-result v13

    #@7c
    if-ne v13, v0, :cond_70

    #@7e
    invoke-static {v9, v1}, Lcom/android/dx/util/Bits;->set([II)V

    #@81
    move v0, v1

    #@82
    goto :goto_34

    #@83
    :cond_83
    invoke-virtual {v1}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    #@86
    move-result v1

    #@87
    invoke-virtual {v5}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    #@8a
    move-result v2

    #@8b
    invoke-static {v8, v1}, Lcom/android/dx/util/Bits;->get([II)Z

    #@8e
    move-result v11

    #@8f
    if-nez v11, :cond_4d

    #@91
    if-eq v2, v1, :cond_9d

    #@93
    if-ltz v2, :cond_9d

    #@95
    invoke-static {v8, v2}, Lcom/android/dx/util/Bits;->get([II)Z

    #@98
    move-result v1

    #@99
    if-eqz v1, :cond_9d

    #@9b
    move v1, v2

    #@9c
    goto :goto_4d

    #@9d
    :cond_9d
    invoke-virtual {v5}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    #@a0
    move-result-object v5

    #@a1
    invoke-virtual {v5}, Lcom/android/dx/util/IntList;->size()I

    #@a4
    move-result v11

    #@a5
    move v2, v4

    #@a6
    :goto_a6
    if-ge v2, v11, :cond_c3

    #@a8
    invoke-virtual {v5, v2}, Lcom/android/dx/util/IntList;->get(I)I

    #@ab
    move-result v1

    #@ac
    invoke-static {v8, v1}, Lcom/android/dx/util/Bits;->get([II)Z

    #@af
    move-result v12

    #@b0
    if-nez v12, :cond_4d

    #@b2
    add-int/lit8 v1, v2, 0x1

    #@b4
    move v2, v1

    #@b5
    goto :goto_a6

    #@b6
    :cond_b6
    if-eq v2, v7, :cond_c0

    #@b8
    new-instance v0, Ljava/lang/RuntimeException;

    #@ba
    const-string v1, "shouldn\'t happen"

    #@bc
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@bf
    throw v0

    #@c0
    :cond_c0
    iput-object v10, p0, Lcom/android/dx/dex/code/RopTranslator;->order:[I

    #@c2
    return-void

    #@c3
    :cond_c3
    move v1, v3

    #@c4
    goto :goto_4d
.end method

.method public static translate(Lcom/android/dx/rop/code/RopMethod;ILcom/android/dx/rop/code/LocalVariableInfo;ILcom/android/dx/dex/DexOptions;)Lcom/android/dx/dex/code/DalvCode;
    .registers 11

    #@0
    new-instance v0, Lcom/android/dx/dex/code/RopTranslator;

    #@2
    move-object v1, p0

    #@3
    move v2, p1

    #@4
    move-object v3, p2

    #@5
    move v4, p3

    #@6
    move-object v5, p4

    #@7
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/dex/code/RopTranslator;-><init>(Lcom/android/dx/rop/code/RopMethod;ILcom/android/dx/rop/code/LocalVariableInfo;ILcom/android/dx/dex/DexOptions;)V

    #@a
    invoke-direct {v0}, Lcom/android/dx/dex/code/RopTranslator;->translateAndGetResult()Lcom/android/dx/dex/code/DalvCode;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method private translateAndGetResult()Lcom/android/dx/dex/code/DalvCode;
    .registers 5

    #@0
    invoke-direct {p0}, Lcom/android/dx/dex/code/RopTranslator;->pickOrder()V

    #@3
    invoke-direct {p0}, Lcom/android/dx/dex/code/RopTranslator;->outputInstructions()V

    #@6
    new-instance v0, Lcom/android/dx/dex/code/StdCatchBuilder;

    #@8
    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->method:Lcom/android/dx/rop/code/RopMethod;

    #@a
    iget-object v2, p0, Lcom/android/dx/dex/code/RopTranslator;->order:[I

    #@c
    iget-object v3, p0, Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    #@e
    invoke-direct {v0, v1, v2, v3}, Lcom/android/dx/dex/code/StdCatchBuilder;-><init>(Lcom/android/dx/rop/code/RopMethod;[ILcom/android/dx/dex/code/BlockAddresses;)V

    #@11
    new-instance v1, Lcom/android/dx/dex/code/DalvCode;

    #@13
    iget v2, p0, Lcom/android/dx/dex/code/RopTranslator;->positionInfo:I

    #@15
    iget-object v3, p0, Lcom/android/dx/dex/code/RopTranslator;->output:Lcom/android/dx/dex/code/OutputCollector;

    #@17
    invoke-virtual {v3}, Lcom/android/dx/dex/code/OutputCollector;->getFinisher()Lcom/android/dx/dex/code/OutputFinisher;

    #@1a
    move-result-object v3

    #@1b
    invoke-direct {v1, v2, v3, v0}, Lcom/android/dx/dex/code/DalvCode;-><init>(ILcom/android/dx/dex/code/OutputFinisher;Lcom/android/dx/dex/code/CatchBuilder;)V

    #@1e
    return-object v1
.end method
