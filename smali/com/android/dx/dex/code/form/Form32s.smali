.class public final Lcom/android/dx/dex/code/form/Form32s;
.super Lcom/android/dx/dex/code/InsnFormat;


# static fields
.field public static final THE_ONE:Lcom/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/android/dx/dex/code/form/Form32s;

    #@2
    invoke-direct {v0}, Lcom/android/dx/dex/code/form/Form32s;-><init>()V

    #@5
    sput-object v0, Lcom/android/dx/dex/code/form/Form32s;->THE_ONE:Lcom/android/dx/dex/code/InsnFormat;

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
    const/4 v0, 0x3

    #@1
    return v0
.end method

.method public compatibleRegs(Lcom/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;
    .registers 7

    #@0
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@5
    move-result-object v0

    #@6
    new-instance v1, Ljava/util/BitSet;

    #@8
    const/4 v2, 0x2

    #@9
    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    #@c
    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@13
    move-result v2

    #@14
    invoke-static {v2}, Lcom/android/dx/dex/code/form/Form32s;->unsignedFitsInByte(I)Z

    #@17
    move-result v2

    #@18
    invoke-virtual {v1, v3, v2}, Ljava/util/BitSet;->set(IZ)V

    #@1b
    invoke-virtual {v0, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@22
    move-result v0

    #@23
    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form32s;->unsignedFitsInByte(I)Z

    #@26
    move-result v0

    #@27
    invoke-virtual {v1, v4, v0}, Ljava/util/BitSet;->set(IZ)V

    #@2a
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
    move-result-object v3

    #@16
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    const-string v3, ", "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    const/4 v3, 0x1

    #@25
    invoke-virtual {v1, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    const-string v2, ", "

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form32s;->literalBitsString(Lcom/android/dx/rop/cst/CstLiteralBits;)Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    return-object v0
.end method

.method public insnCommentString(Lcom/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .registers 5

    #@0
    check-cast p1, Lcom/android/dx/dex/code/CstInsn;

    #@2
    invoke-virtual {p1}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/dx/rop/cst/CstLiteralBits;

    #@8
    const/16 v1, 0x10

    #@a
    invoke-static {v0, v1}, Lcom/android/dx/dex/code/form/Form32s;->literalBitsComment(Lcom/android/dx/rop/cst/CstLiteralBits;I)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public isCompatible(Lcom/android/dx/dex/code/DalvInsn;)Z
    .registers 7

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    sget-boolean v0, Lcom/android/dx/dex/code/form/Form32s;->ALLOW_EXTENDED_OPCODES:Z

    #@4
    if-nez v0, :cond_8

    #@6
    move v0, v1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@b
    move-result-object v0

    #@c
    instance-of v3, p1, Lcom/android/dx/dex/code/CstInsn;

    #@e
    if-eqz v3, :cond_53

    #@10
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@13
    move-result v3

    #@14
    const/4 v4, 0x2

    #@15
    if-ne v3, v4, :cond_53

    #@17
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@1e
    move-result v3

    #@1f
    invoke-static {v3}, Lcom/android/dx/dex/code/form/Form32s;->unsignedFitsInByte(I)Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_53

    #@25
    invoke-virtual {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@2c
    move-result v0

    #@2d
    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form32s;->unsignedFitsInByte(I)Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_53

    #@33
    check-cast p1, Lcom/android/dx/dex/code/CstInsn;

    #@35
    invoke-virtual {p1}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    #@38
    move-result-object v0

    #@39
    instance-of v3, v0, Lcom/android/dx/rop/cst/CstLiteralBits;

    #@3b
    if-eqz v3, :cond_53

    #@3d
    check-cast v0, Lcom/android/dx/rop/cst/CstLiteralBits;

    #@3f
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstLiteralBits;->fitsInInt()Z

    #@42
    move-result v3

    #@43
    if-eqz v3, :cond_51

    #@45
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstLiteralBits;->getIntBits()I

    #@48
    move-result v0

    #@49
    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form32s;->signedFitsInShort(I)Z

    #@4c
    move-result v0

    #@4d
    if-eqz v0, :cond_51

    #@4f
    move v0, v2

    #@50
    goto :goto_7

    #@51
    :cond_51
    move v0, v1

    #@52
    goto :goto_7

    #@53
    :cond_53
    move v0, v1

    #@54
    goto :goto_7
.end method

.method public writeTo(Lcom/android/dx/util/AnnotatedOutput;Lcom/android/dx/dex/code/DalvInsn;)V
    .registers 8

    #@0
    invoke-virtual {p2}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@3
    move-result-object v1

    #@4
    move-object v0, p2

    #@5
    check-cast v0, Lcom/android/dx/dex/code/CstInsn;

    #@7
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lcom/android/dx/rop/cst/CstLiteralBits;

    #@d
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstLiteralBits;->getIntBits()I

    #@10
    move-result v0

    #@11
    invoke-static {p2}, Lcom/android/dx/dex/code/form/Form32s;->opcodeUnit(Lcom/android/dx/dex/code/DalvInsn;)S

    #@14
    move-result v2

    #@15
    const/4 v3, 0x0

    #@16
    invoke-virtual {v1, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@1d
    move-result v3

    #@1e
    const/4 v4, 0x1

    #@1f
    invoke-virtual {v1, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@26
    move-result v1

    #@27
    invoke-static {v3, v1}, Lcom/android/dx/dex/code/form/Form32s;->codeUnit(II)S

    #@2a
    move-result v1

    #@2b
    int-to-short v0, v0

    #@2c
    invoke-static {p1, v2, v1, v0}, Lcom/android/dx/dex/code/form/Form32s;->write(Lcom/android/dx/util/AnnotatedOutput;SSS)V

    #@2f
    return-void
.end method
