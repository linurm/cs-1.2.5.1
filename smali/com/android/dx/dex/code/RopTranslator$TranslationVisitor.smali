.class Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/dx/rop/code/Insn$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/dex/code/RopTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranslationVisitor"
.end annotation


# instance fields
.field private block:Lcom/android/dx/rop/code/BasicBlock;

.field private lastAddress:Lcom/android/dx/dex/code/CodeAddress;

.field private final output:Lcom/android/dx/dex/code/OutputCollector;

.field final synthetic this$0:Lcom/android/dx/dex/code/RopTranslator;


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/code/RopTranslator;Lcom/android/dx/dex/code/OutputCollector;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/android/dx/dex/code/RopTranslator;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    iput-object p2, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->output:Lcom/android/dx/dex/code/OutputCollector;

    #@7
    return-void
.end method

.method private getNextMoveResultPseudo()Lcom/android/dx/rop/code/RegisterSpec;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->block:Lcom/android/dx/rop/code/BasicBlock;

    #@3
    invoke-virtual {v1}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    #@6
    move-result v1

    #@7
    if-gez v1, :cond_a

    #@9
    :cond_9
    :goto_9
    return-object v0

    #@a
    :cond_a
    iget-object v2, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/android/dx/dex/code/RopTranslator;

    #@c
    # getter for: Lcom/android/dx/dex/code/RopTranslator;->method:Lcom/android/dx/rop/code/RopMethod;
    invoke-static {v2}, Lcom/android/dx/dex/code/RopTranslator;->access$500(Lcom/android/dx/dex/code/RopTranslator;)Lcom/android/dx/rop/code/RopMethod;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, v1}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Lcom/android/dx/rop/code/BasicBlock;->getInsns()Lcom/android/dx/rop/code/InsnList;

    #@1b
    move-result-object v1

    #@1c
    const/4 v2, 0x0

    #@1d
    invoke-virtual {v1, v2}, Lcom/android/dx/rop/code/InsnList;->get(I)Lcom/android/dx/rop/code/Insn;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    #@28
    move-result v2

    #@29
    const/16 v3, 0x38

    #@2b
    if-ne v2, v3, :cond_9

    #@2d
    invoke-virtual {v1}, Lcom/android/dx/rop/code/Insn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@30
    move-result-object v0

    #@31
    goto :goto_9
.end method


# virtual methods
.method protected addOutput(Lcom/android/dx/dex/code/DalvInsn;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->output:Lcom/android/dx/dex/code/OutputCollector;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/dx/dex/code/OutputCollector;->add(Lcom/android/dx/dex/code/DalvInsn;)V

    #@5
    return-void
.end method

.method protected addOutputSuffix(Lcom/android/dx/dex/code/DalvInsn;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->output:Lcom/android/dx/dex/code/OutputCollector;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/dx/dex/code/OutputCollector;->addSuffix(Lcom/android/dx/dex/code/DalvInsn;)V

    #@5
    return-void
.end method

.method public setBlock(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/dex/code/CodeAddress;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->block:Lcom/android/dx/rop/code/BasicBlock;

    #@2
    iput-object p2, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/android/dx/dex/code/CodeAddress;

    #@4
    return-void
.end method

.method public visitFillArrayDataInsn(Lcom/android/dx/rop/code/FillArrayDataInsn;)V
    .registers 8

    #@0
    invoke-virtual {p1}, Lcom/android/dx/rop/code/FillArrayDataInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Lcom/android/dx/rop/code/FillArrayDataInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p1}, Lcom/android/dx/rop/code/FillArrayDataInsn;->getInitValues()Ljava/util/ArrayList;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {p1}, Lcom/android/dx/rop/code/FillArrayDataInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    #@13
    move-result v3

    #@14
    const/4 v4, 0x1

    #@15
    if-eq v3, v4, :cond_1f

    #@17
    new-instance v0, Ljava/lang/RuntimeException;

    #@19
    const-string v1, "shouldn\'t happen"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    :cond_1f
    new-instance v3, Lcom/android/dx/dex/code/CodeAddress;

    #@21
    invoke-direct {v3, v0}, Lcom/android/dx/dex/code/CodeAddress;-><init>(Lcom/android/dx/rop/code/SourcePosition;)V

    #@24
    new-instance v4, Lcom/android/dx/dex/code/ArrayData;

    #@26
    iget-object v5, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/android/dx/dex/code/CodeAddress;

    #@28
    invoke-direct {v4, v0, v5, v2, v1}, Lcom/android/dx/dex/code/ArrayData;-><init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/dex/code/CodeAddress;Ljava/util/ArrayList;Lcom/android/dx/rop/cst/Constant;)V

    #@2b
    new-instance v1, Lcom/android/dx/dex/code/TargetInsn;

    #@2d
    sget-object v2, Lcom/android/dx/dex/code/Dops;->FILL_ARRAY_DATA:Lcom/android/dx/dex/code/Dop;

    #@2f
    # invokes: Lcom/android/dx/dex/code/RopTranslator;->getRegs(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-static {p1}, Lcom/android/dx/dex/code/RopTranslator;->access$000(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@32
    move-result-object v5

    #@33
    invoke-direct {v1, v2, v0, v5, v3}, Lcom/android/dx/dex/code/TargetInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/dex/code/CodeAddress;)V

    #@36
    iget-object v2, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/android/dx/dex/code/CodeAddress;

    #@38
    invoke-virtual {p0, v2}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    #@3b
    invoke-virtual {p0, v1}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    #@3e
    new-instance v1, Lcom/android/dx/dex/code/OddSpacer;

    #@40
    invoke-direct {v1, v0}, Lcom/android/dx/dex/code/OddSpacer;-><init>(Lcom/android/dx/rop/code/SourcePosition;)V

    #@43
    invoke-virtual {p0, v1}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/android/dx/dex/code/DalvInsn;)V

    #@46
    invoke-virtual {p0, v3}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/android/dx/dex/code/DalvInsn;)V

    #@49
    invoke-virtual {p0, v4}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/android/dx/dex/code/DalvInsn;)V

    #@4c
    return-void
.end method

.method public visitPlainCstInsn(Lcom/android/dx/rop/code/PlainCstInsn;)V
    .registers 9

    #@0
    invoke-virtual {p1}, Lcom/android/dx/rop/code/PlainCstInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@3
    move-result-object v1

    #@4
    invoke-static {p1}, Lcom/android/dx/dex/code/RopToDop;->dopFor(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/dex/code/Dop;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p1}, Lcom/android/dx/rop/code/PlainCstInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    #@f
    move-result v3

    #@10
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    #@13
    move-result v0

    #@14
    const/4 v4, 0x1

    #@15
    if-eq v0, v4, :cond_1f

    #@17
    new-instance v0, Ljava/lang/RuntimeException;

    #@19
    const-string v1, "shouldn\'t happen"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    :cond_1f
    const/4 v0, 0x3

    #@20
    if-ne v3, v0, :cond_5b

    #@22
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/android/dx/dex/code/RopTranslator;

    #@24
    # getter for: Lcom/android/dx/dex/code/RopTranslator;->paramsAreInOrder:Z
    invoke-static {v0}, Lcom/android/dx/dex/code/RopTranslator;->access$200(Lcom/android/dx/dex/code/RopTranslator;)Z

    #@27
    move-result v0

    #@28
    if-nez v0, :cond_5a

    #@2a
    invoke-virtual {p1}, Lcom/android/dx/rop/code/PlainCstInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@2d
    move-result-object v3

    #@2e
    new-instance v4, Lcom/android/dx/dex/code/SimpleInsn;

    #@30
    invoke-virtual {p1}, Lcom/android/dx/rop/code/PlainCstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Lcom/android/dx/rop/cst/CstInteger;

    #@36
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    #@39
    move-result v0

    #@3a
    iget-object v5, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/android/dx/dex/code/RopTranslator;

    #@3c
    # getter for: Lcom/android/dx/dex/code/RopTranslator;->regCount:I
    invoke-static {v5}, Lcom/android/dx/dex/code/RopTranslator;->access$300(Lcom/android/dx/dex/code/RopTranslator;)I

    #@3f
    move-result v5

    #@40
    iget-object v6, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/android/dx/dex/code/RopTranslator;

    #@42
    # getter for: Lcom/android/dx/dex/code/RopTranslator;->paramSize:I
    invoke-static {v6}, Lcom/android/dx/dex/code/RopTranslator;->access$400(Lcom/android/dx/dex/code/RopTranslator;)I

    #@45
    move-result v6

    #@46
    sub-int/2addr v5, v6

    #@47
    add-int/2addr v0, v5

    #@48
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    #@4b
    move-result-object v5

    #@4c
    invoke-static {v0, v5}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    #@4f
    move-result-object v0

    #@50
    invoke-static {v3, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@53
    move-result-object v0

    #@54
    invoke-direct {v4, v2, v1, v0}, Lcom/android/dx/dex/code/SimpleInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@57
    invoke-virtual {p0, v4}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    #@5a
    :cond_5a
    :goto_5a
    return-void

    #@5b
    :cond_5b
    new-instance v0, Lcom/android/dx/dex/code/CstInsn;

    #@5d
    # invokes: Lcom/android/dx/dex/code/RopTranslator;->getRegs(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-static {p1}, Lcom/android/dx/dex/code/RopTranslator;->access$000(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@60
    move-result-object v3

    #@61
    invoke-virtual {p1}, Lcom/android/dx/rop/code/PlainCstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    #@64
    move-result-object v4

    #@65
    invoke-direct {v0, v2, v1, v3, v4}, Lcom/android/dx/dex/code/CstInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V

    #@68
    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    #@6b
    goto :goto_5a
.end method

.method public visitPlainInsn(Lcom/android/dx/rop/code/PlainInsn;)V
    .registers 8

    #@0
    invoke-virtual {p1}, Lcom/android/dx/rop/code/PlainInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    #@7
    move-result v1

    #@8
    const/16 v2, 0x36

    #@a
    if-ne v1, v2, :cond_d

    #@c
    :cond_c
    :goto_c
    :pswitch_c
    return-void

    #@d
    :cond_d
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    #@10
    move-result v1

    #@11
    const/16 v2, 0x38

    #@13
    if-eq v1, v2, :cond_c

    #@15
    invoke-virtual {p1}, Lcom/android/dx/rop/code/PlainInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@18
    move-result-object v1

    #@19
    invoke-static {p1}, Lcom/android/dx/dex/code/RopToDop;->dopFor(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/dex/code/Dop;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    #@20
    move-result v0

    #@21
    packed-switch v0, :pswitch_data_58

    #@24
    :pswitch_24
    new-instance v0, Ljava/lang/RuntimeException;

    #@26
    const-string v1, "shouldn\'t happen"

    #@28
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    :pswitch_2c
    new-instance v0, Lcom/android/dx/dex/code/SimpleInsn;

    #@2e
    # invokes: Lcom/android/dx/dex/code/RopTranslator;->getRegs(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-static {p1}, Lcom/android/dx/dex/code/RopTranslator;->access$000(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@31
    move-result-object v3

    #@32
    invoke-direct {v0, v2, v1, v3}, Lcom/android/dx/dex/code/SimpleInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@35
    :goto_35
    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    #@38
    goto :goto_c

    #@39
    :pswitch_39
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->block:Lcom/android/dx/rop/code/BasicBlock;

    #@3b
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    #@3e
    move-result-object v0

    #@3f
    const/4 v3, 0x1

    #@40
    invoke-virtual {v0, v3}, Lcom/android/dx/util/IntList;->get(I)I

    #@43
    move-result v3

    #@44
    new-instance v0, Lcom/android/dx/dex/code/TargetInsn;

    #@46
    # invokes: Lcom/android/dx/dex/code/RopTranslator;->getRegs(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-static {p1}, Lcom/android/dx/dex/code/RopTranslator;->access$000(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@49
    move-result-object v4

    #@4a
    iget-object v5, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/android/dx/dex/code/RopTranslator;

    #@4c
    # getter for: Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;
    invoke-static {v5}, Lcom/android/dx/dex/code/RopTranslator;->access$100(Lcom/android/dx/dex/code/RopTranslator;)Lcom/android/dx/dex/code/BlockAddresses;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v5, v3}, Lcom/android/dx/dex/code/BlockAddresses;->getStart(I)Lcom/android/dx/dex/code/CodeAddress;

    #@53
    move-result-object v3

    #@54
    invoke-direct {v0, v2, v1, v4, v3}, Lcom/android/dx/dex/code/TargetInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/dex/code/CodeAddress;)V

    #@57
    goto :goto_35

    #@58
    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2c
        :pswitch_c
        :pswitch_39
        :pswitch_24
        :pswitch_2c
    .end packed-switch
.end method

.method public visitSwitchInsn(Lcom/android/dx/rop/code/SwitchInsn;)V
    .registers 10

    #@0
    invoke-virtual {p1}, Lcom/android/dx/rop/code/SwitchInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p1}, Lcom/android/dx/rop/code/SwitchInsn;->getCases()Lcom/android/dx/util/IntList;

    #@7
    move-result-object v2

    #@8
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->block:Lcom/android/dx/rop/code/BasicBlock;

    #@a
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v2}, Lcom/android/dx/util/IntList;->size()I

    #@11
    move-result v4

    #@12
    invoke-virtual {v3}, Lcom/android/dx/util/IntList;->size()I

    #@15
    move-result v0

    #@16
    iget-object v5, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->block:Lcom/android/dx/rop/code/BasicBlock;

    #@18
    invoke-virtual {v5}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    #@1b
    move-result v5

    #@1c
    add-int/lit8 v0, v0, -0x1

    #@1e
    if-ne v4, v0, :cond_26

    #@20
    invoke-virtual {v3, v4}, Lcom/android/dx/util/IntList;->get(I)I

    #@23
    move-result v0

    #@24
    if-eq v5, v0, :cond_2e

    #@26
    :cond_26
    new-instance v0, Ljava/lang/RuntimeException;

    #@28
    const-string v1, "shouldn\'t happen"

    #@2a
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    :cond_2e
    new-array v5, v4, [Lcom/android/dx/dex/code/CodeAddress;

    #@30
    const/4 v0, 0x0

    #@31
    :goto_31
    if-ge v0, v4, :cond_46

    #@33
    invoke-virtual {v3, v0}, Lcom/android/dx/util/IntList;->get(I)I

    #@36
    move-result v6

    #@37
    iget-object v7, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/android/dx/dex/code/RopTranslator;

    #@39
    # getter for: Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;
    invoke-static {v7}, Lcom/android/dx/dex/code/RopTranslator;->access$100(Lcom/android/dx/dex/code/RopTranslator;)Lcom/android/dx/dex/code/BlockAddresses;

    #@3c
    move-result-object v7

    #@3d
    invoke-virtual {v7, v6}, Lcom/android/dx/dex/code/BlockAddresses;->getStart(I)Lcom/android/dx/dex/code/CodeAddress;

    #@40
    move-result-object v6

    #@41
    aput-object v6, v5, v0

    #@43
    add-int/lit8 v0, v0, 0x1

    #@45
    goto :goto_31

    #@46
    :cond_46
    new-instance v3, Lcom/android/dx/dex/code/CodeAddress;

    #@48
    invoke-direct {v3, v1}, Lcom/android/dx/dex/code/CodeAddress;-><init>(Lcom/android/dx/rop/code/SourcePosition;)V

    #@4b
    new-instance v4, Lcom/android/dx/dex/code/SwitchData;

    #@4d
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/android/dx/dex/code/CodeAddress;

    #@4f
    invoke-direct {v4, v1, v0, v2, v5}, Lcom/android/dx/dex/code/SwitchData;-><init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/dex/code/CodeAddress;Lcom/android/dx/util/IntList;[Lcom/android/dx/dex/code/CodeAddress;)V

    #@52
    invoke-virtual {v4}, Lcom/android/dx/dex/code/SwitchData;->isPacked()Z

    #@55
    move-result v0

    #@56
    if-eqz v0, :cond_7a

    #@58
    sget-object v0, Lcom/android/dx/dex/code/Dops;->PACKED_SWITCH:Lcom/android/dx/dex/code/Dop;

    #@5a
    :goto_5a
    new-instance v2, Lcom/android/dx/dex/code/TargetInsn;

    #@5c
    # invokes: Lcom/android/dx/dex/code/RopTranslator;->getRegs(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-static {p1}, Lcom/android/dx/dex/code/RopTranslator;->access$000(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@5f
    move-result-object v5

    #@60
    invoke-direct {v2, v0, v1, v5, v3}, Lcom/android/dx/dex/code/TargetInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/dex/code/CodeAddress;)V

    #@63
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/android/dx/dex/code/CodeAddress;

    #@65
    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    #@68
    invoke-virtual {p0, v2}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    #@6b
    new-instance v0, Lcom/android/dx/dex/code/OddSpacer;

    #@6d
    invoke-direct {v0, v1}, Lcom/android/dx/dex/code/OddSpacer;-><init>(Lcom/android/dx/rop/code/SourcePosition;)V

    #@70
    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/android/dx/dex/code/DalvInsn;)V

    #@73
    invoke-virtual {p0, v3}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/android/dx/dex/code/DalvInsn;)V

    #@76
    invoke-virtual {p0, v4}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/android/dx/dex/code/DalvInsn;)V

    #@79
    return-void

    #@7a
    :cond_7a
    sget-object v0, Lcom/android/dx/dex/code/Dops;->SPARSE_SWITCH:Lcom/android/dx/dex/code/Dop;

    #@7c
    goto :goto_5a
.end method

.method public visitThrowingCstInsn(Lcom/android/dx/rop/code/ThrowingCstInsn;)V
    .registers 12

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    invoke-virtual {p1}, Lcom/android/dx/rop/code/ThrowingCstInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@5
    move-result-object v3

    #@6
    invoke-static {p1}, Lcom/android/dx/dex/code/RopToDop;->dopFor(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/dex/code/Dop;

    #@9
    move-result-object v4

    #@a
    invoke-virtual {p1}, Lcom/android/dx/rop/code/ThrowingCstInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@d
    move-result-object v5

    #@e
    invoke-virtual {p1}, Lcom/android/dx/rop/code/ThrowingCstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    #@11
    move-result-object v6

    #@12
    invoke-virtual {v5}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    #@15
    move-result v2

    #@16
    const/4 v7, 0x6

    #@17
    if-eq v2, v7, :cond_21

    #@19
    new-instance v0, Ljava/lang/RuntimeException;

    #@1b
    const-string v1, "shouldn\'t happen"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    :cond_21
    iget-object v2, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/android/dx/dex/code/CodeAddress;

    #@23
    invoke-virtual {p0, v2}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    #@26
    invoke-virtual {v5}, Lcom/android/dx/rop/code/Rop;->isCallLike()Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_39

    #@2c
    new-instance v0, Lcom/android/dx/dex/code/CstInsn;

    #@2e
    invoke-virtual {p1}, Lcom/android/dx/rop/code/ThrowingCstInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@31
    move-result-object v1

    #@32
    invoke-direct {v0, v4, v3, v1, v6}, Lcom/android/dx/dex/code/CstInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V

    #@35
    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    #@38
    :goto_38
    return-void

    #@39
    :cond_39
    invoke-direct {p0}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->getNextMoveResultPseudo()Lcom/android/dx/rop/code/RegisterSpec;

    #@3c
    move-result-object v7

    #@3d
    # invokes: Lcom/android/dx/dex/code/RopTranslator;->getRegs(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-static {p1, v7}, Lcom/android/dx/dex/code/RopTranslator;->access$600(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@40
    move-result-object v8

    #@41
    invoke-virtual {v4}, Lcom/android/dx/dex/code/Dop;->hasResult()Z

    #@44
    move-result v2

    #@45
    if-nez v2, :cond_4f

    #@47
    invoke-virtual {v5}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    #@4a
    move-result v2

    #@4b
    const/16 v9, 0x2b

    #@4d
    if-ne v2, v9, :cond_6e

    #@4f
    :cond_4f
    move v2, v1

    #@50
    :goto_50
    if-eqz v7, :cond_53

    #@52
    move v0, v1

    #@53
    :cond_53
    if-eq v2, v0, :cond_70

    #@55
    new-instance v0, Ljava/lang/RuntimeException;

    #@57
    new-instance v1, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string v2, "Insn with result/move-result-pseudo mismatch "

    #@5e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v1

    #@6a
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v0

    #@6e
    :cond_6e
    move v2, v0

    #@6f
    goto :goto_50

    #@70
    :cond_70
    invoke-virtual {v5}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    #@73
    move-result v0

    #@74
    const/16 v1, 0x29

    #@76
    if-ne v0, v1, :cond_89

    #@78
    invoke-virtual {v4}, Lcom/android/dx/dex/code/Dop;->getOpcode()I

    #@7b
    move-result v0

    #@7c
    const/16 v1, 0x23

    #@7e
    if-eq v0, v1, :cond_89

    #@80
    new-instance v0, Lcom/android/dx/dex/code/SimpleInsn;

    #@82
    invoke-direct {v0, v4, v3, v8}, Lcom/android/dx/dex/code/SimpleInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@85
    :goto_85
    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    #@88
    goto :goto_38

    #@89
    :cond_89
    new-instance v0, Lcom/android/dx/dex/code/CstInsn;

    #@8b
    invoke-direct {v0, v4, v3, v8, v6}, Lcom/android/dx/dex/code/CstInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V

    #@8e
    goto :goto_85
.end method

.method public visitThrowingInsn(Lcom/android/dx/rop/code/ThrowingInsn;)V
    .registers 7

    #@0
    invoke-virtual {p1}, Lcom/android/dx/rop/code/ThrowingInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@3
    move-result-object v1

    #@4
    invoke-static {p1}, Lcom/android/dx/dex/code/RopToDop;->dopFor(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/dex/code/Dop;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p1}, Lcom/android/dx/rop/code/ThrowingInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    #@f
    move-result v0

    #@10
    const/4 v3, 0x6

    #@11
    if-eq v0, v3, :cond_1b

    #@13
    new-instance v0, Ljava/lang/RuntimeException;

    #@15
    const-string v1, "shouldn\'t happen"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    :cond_1b
    invoke-direct {p0}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->getNextMoveResultPseudo()Lcom/android/dx/rop/code/RegisterSpec;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v2}, Lcom/android/dx/dex/code/Dop;->hasResult()Z

    #@22
    move-result v4

    #@23
    if-eqz v3, :cond_41

    #@25
    const/4 v0, 0x1

    #@26
    :goto_26
    if-eq v4, v0, :cond_43

    #@28
    new-instance v0, Ljava/lang/RuntimeException;

    #@2a
    new-instance v1, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string v2, "Insn with result/move-result-pseudo mismatch"

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@40
    throw v0

    #@41
    :cond_41
    const/4 v0, 0x0

    #@42
    goto :goto_26

    #@43
    :cond_43
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/android/dx/dex/code/CodeAddress;

    #@45
    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    #@48
    new-instance v0, Lcom/android/dx/dex/code/SimpleInsn;

    #@4a
    # invokes: Lcom/android/dx/dex/code/RopTranslator;->getRegs(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-static {p1, v3}, Lcom/android/dx/dex/code/RopTranslator;->access$600(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@4d
    move-result-object v3

    #@4e
    invoke-direct {v0, v2, v1, v3}, Lcom/android/dx/dex/code/SimpleInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@51
    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    #@54
    return-void
.end method
