.class public final Lcom/android/dx/dex/code/form/Form21h;
.super Lcom/android/dx/dex/code/InsnFormat;


# static fields
.field public static final THE_ONE:Lcom/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/android/dx/dex/code/form/Form21h;

    #@2
    invoke-direct {v0}, Lcom/android/dx/dex/code/form/Form21h;-><init>()V

    #@5
    sput-object v0, Lcom/android/dx/dex/code/form/Form21h;->THE_ONE:Lcom/android/dx/dex/code/InsnFormat;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/android/dx/dex/code/InsnFormat;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public codeSize()I
    .registers 2

    #@0
    const/4 v0, 0x2

    #@1
    return v0
.end method

.method public compatibleRegs(Lcom/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;
    .registers 6

    #@0
    const/4 v3, 0x0

    #@1
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@4
    move-result-object v0

    #@5
    new-instance v1, Ljava/util/BitSet;

    #@7
    const/4 v2, 0x1

    #@8
    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    #@b
    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@12
    move-result v0

    #@13
    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form21h;->unsignedFitsInByte(I)Z

    #@16
    move-result v0

    #@17
    invoke-virtual {v1, v3, v0}, Ljava/util/BitSet;->set(IZ)V

    #@1a
    return-object v1
.end method

.method public insnArgString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .registers 6

    #@0
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@3
    move-result-object v1

    #@4
    check-cast p1, Lcom/android/dx/dex/code/CstInsn;

    #@6
    invoke-virtual {p1}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/dx/rop/cst/CstLiteralBits;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const/4 v3, 0x0

    #@12
    invoke-virtual {v1, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string v2, ", "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form21h;->literalBitsString(Lcom/android/dx/rop/cst/CstLiteralBits;)Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    return-object v0
.end method

.method public insnCommentString(Lcom/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .registers 6

    #@0
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@3
    move-result-object v1

    #@4
    check-cast p1, Lcom/android/dx/dex/code/CstInsn;

    #@6
    invoke-virtual {p1}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/dx/rop/cst/CstLiteralBits;

    #@c
    const/4 v2, 0x0

    #@d
    invoke-virtual {v1, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@14
    move-result v1

    #@15
    const/4 v2, 0x1

    #@16
    if-ne v1, v2, :cond_1f

    #@18
    const/16 v1, 0x20

    #@1a
    :goto_1a
    invoke-static {v0, v1}, Lcom/android/dx/dex/code/form/Form21h;->literalBitsComment(Lcom/android/dx/rop/cst/CstLiteralBits;I)Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    return-object v0

    #@1f
    :cond_1f
    const/16 v1, 0x40

    #@21
    goto :goto_1a
.end method

.method public isCompatible(Lcom/android/dx/dex/code/DalvInsn;)Z
    .registers 10

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@5
    move-result-object v3

    #@6
    instance-of v0, p1, Lcom/android/dx/dex/code/CstInsn;

    #@8
    if-eqz v0, :cond_58

    #@a
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@d
    move-result v0

    #@e
    if-ne v0, v2, :cond_58

    #@10
    invoke-virtual {v3, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@17
    move-result v0

    #@18
    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form21h;->unsignedFitsInByte(I)Z

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_20

    #@1e
    move v0, v1

    #@1f
    :goto_1f
    return v0

    #@20
    :cond_20
    check-cast p1, Lcom/android/dx/dex/code/CstInsn;

    #@22
    invoke-virtual {p1}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    #@25
    move-result-object v0

    #@26
    instance-of v4, v0, Lcom/android/dx/rop/cst/CstLiteralBits;

    #@28
    if-eqz v4, :cond_58

    #@2a
    check-cast v0, Lcom/android/dx/rop/cst/CstLiteralBits;

    #@2c
    invoke-virtual {v3, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@33
    move-result v3

    #@34
    if-ne v3, v2, :cond_44

    #@36
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstLiteralBits;->getIntBits()I

    #@39
    move-result v0

    #@3a
    const v3, 0xffff

    #@3d
    and-int/2addr v0, v3

    #@3e
    if-nez v0, :cond_42

    #@40
    move v0, v2

    #@41
    goto :goto_1f

    #@42
    :cond_42
    move v0, v1

    #@43
    goto :goto_1f

    #@44
    :cond_44
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstLiteralBits;->getLongBits()J

    #@47
    move-result-wide v4

    #@48
    const-wide v6, 0xffffffffffffL

    #@4d
    and-long/2addr v4, v6

    #@4e
    const-wide/16 v6, 0x0

    #@50
    cmp-long v0, v4, v6

    #@52
    if-nez v0, :cond_56

    #@54
    move v0, v2

    #@55
    goto :goto_1f

    #@56
    :cond_56
    move v0, v1

    #@57
    goto :goto_1f

    #@58
    :cond_58
    move v0, v1

    #@59
    goto :goto_1f
.end method

.method public writeTo(Lcom/android/dx/util/AnnotatedOutput;Lcom/android/dx/dex/code/DalvInsn;)V
    .registers 8

    #@0
    const/4 v4, 0x0

    #@1
    invoke-virtual {p2}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@4
    move-result-object v1

    #@5
    move-object v0, p2

    #@6
    check-cast v0, Lcom/android/dx/dex/code/CstInsn;

    #@8
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lcom/android/dx/rop/cst/CstLiteralBits;

    #@e
    invoke-virtual {v1, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@15
    move-result v2

    #@16
    const/4 v3, 0x1

    #@17
    if-ne v2, v3, :cond_30

    #@19
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstLiteralBits;->getIntBits()I

    #@1c
    move-result v0

    #@1d
    ushr-int/lit8 v0, v0, 0x10

    #@1f
    int-to-short v0, v0

    #@20
    :goto_20
    invoke-virtual {v1, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@27
    move-result v1

    #@28
    invoke-static {p2, v1}, Lcom/android/dx/dex/code/form/Form21h;->opcodeUnit(Lcom/android/dx/dex/code/DalvInsn;I)S

    #@2b
    move-result v1

    #@2c
    invoke-static {p1, v1, v0}, Lcom/android/dx/dex/code/form/Form21h;->write(Lcom/android/dx/util/AnnotatedOutput;SS)V

    #@2f
    return-void

    #@30
    :cond_30
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstLiteralBits;->getLongBits()J

    #@33
    move-result-wide v2

    #@34
    const/16 v0, 0x30

    #@36
    ushr-long/2addr v2, v0

    #@37
    long-to-int v0, v2

    #@38
    int-to-short v0, v0

    #@39
    goto :goto_20
.end method
