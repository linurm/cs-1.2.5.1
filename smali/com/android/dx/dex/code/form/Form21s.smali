.class public final Lcom/android/dx/dex/code/form/Form21s;
.super Lcom/android/dx/dex/code/InsnFormat;


# static fields
.field public static final THE_ONE:Lcom/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/android/dx/dex/code/form/Form21s;

    #@2
    invoke-direct {v0}, Lcom/android/dx/dex/code/form/Form21s;-><init>()V

    #@5
    sput-object v0, Lcom/android/dx/dex/code/form/Form21s;->THE_ONE:Lcom/android/dx/dex/code/InsnFormat;

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
    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form21s;->unsignedFitsInByte(I)Z

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
    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form21s;->literalBitsString(Lcom/android/dx/rop/cst/CstLiteralBits;)Ljava/lang/String;

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
    invoke-static {v0, v1}, Lcom/android/dx/dex/code/form/Form21s;->literalBitsComment(Lcom/android/dx/rop/cst/CstLiteralBits;I)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public isCompatible(Lcom/android/dx/dex/code/DalvInsn;)Z
    .registers 6

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@5
    move-result-object v0

    #@6
    instance-of v3, p1, Lcom/android/dx/dex/code/CstInsn;

    #@8
    if-eqz v3, :cond_40

    #@a
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@d
    move-result v3

    #@e
    if-ne v3, v2, :cond_40

    #@10
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@17
    move-result v0

    #@18
    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form21s;->unsignedFitsInByte(I)Z

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
    instance-of v3, v0, Lcom/android/dx/rop/cst/CstLiteralBits;

    #@28
    if-eqz v3, :cond_40

    #@2a
    check-cast v0, Lcom/android/dx/rop/cst/CstLiteralBits;

    #@2c
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstLiteralBits;->fitsInInt()Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_3e

    #@32
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstLiteralBits;->getIntBits()I

    #@35
    move-result v0

    #@36
    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form21s;->signedFitsInShort(I)Z

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_3e

    #@3c
    move v0, v2

    #@3d
    goto :goto_1f

    #@3e
    :cond_3e
    move v0, v1

    #@3f
    goto :goto_1f

    #@40
    :cond_40
    move v0, v1

    #@41
    goto :goto_1f
.end method

.method public writeTo(Lcom/android/dx/util/AnnotatedOutput;Lcom/android/dx/dex/code/DalvInsn;)V
    .registers 6

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
    const/4 v2, 0x0

    #@12
    invoke-virtual {v1, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@19
    move-result v1

    #@1a
    invoke-static {p2, v1}, Lcom/android/dx/dex/code/form/Form21s;->opcodeUnit(Lcom/android/dx/dex/code/DalvInsn;I)S

    #@1d
    move-result v1

    #@1e
    int-to-short v0, v0

    #@1f
    invoke-static {p1, v1, v0}, Lcom/android/dx/dex/code/form/Form21s;->write(Lcom/android/dx/util/AnnotatedOutput;SS)V

    #@22
    return-void
.end method
