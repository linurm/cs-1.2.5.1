.class public final Lcom/android/dx/dex/code/form/Form22c;
.super Lcom/android/dx/dex/code/InsnFormat;


# static fields
.field public static final THE_ONE:Lcom/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/android/dx/dex/code/form/Form22c;

    #@2
    invoke-direct {v0}, Lcom/android/dx/dex/code/form/Form22c;-><init>()V

    #@5
    sput-object v0, Lcom/android/dx/dex/code/form/Form22c;->THE_ONE:Lcom/android/dx/dex/code/InsnFormat;

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
    invoke-static {v2}, Lcom/android/dx/dex/code/form/Form22c;->unsignedFitsInNibble(I)Z

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
    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form22c;->unsignedFitsInNibble(I)Z

    #@26
    move-result v0

    #@27
    invoke-virtual {v1, v4, v0}, Ljava/util/BitSet;->set(IZ)V

    #@2a
    return-object v1
.end method

.method public insnArgString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .registers 5

    #@0
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const/4 v2, 0x0

    #@a
    invoke-virtual {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string v2, ", "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    const/4 v2, 0x1

    #@1d
    invoke-virtual {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    const-string v1, ", "

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-static {p1}, Lcom/android/dx/dex/code/form/Form22c;->cstString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    return-object v0
.end method

.method public insnCommentString(Lcom/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .registers 4

    #@0
    if-eqz p2, :cond_7

    #@2
    invoke-static {p1}, Lcom/android/dx/dex/code/form/Form22c;->cstComment(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    :goto_6
    return-object v0

    #@7
    :cond_7
    const-string v0, ""

    #@9
    goto :goto_6
.end method

.method public isCompatible(Lcom/android/dx/dex/code/DalvInsn;)Z
    .registers 7

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@5
    move-result-object v2

    #@6
    instance-of v3, p1, Lcom/android/dx/dex/code/CstInsn;

    #@8
    if-eqz v3, :cond_2d

    #@a
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@d
    move-result v3

    #@e
    const/4 v4, 0x2

    #@f
    if-ne v3, v4, :cond_2d

    #@11
    invoke-virtual {v2, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@18
    move-result v3

    #@19
    invoke-static {v3}, Lcom/android/dx/dex/code/form/Form22c;->unsignedFitsInNibble(I)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_2d

    #@1f
    invoke-virtual {v2, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@26
    move-result v2

    #@27
    invoke-static {v2}, Lcom/android/dx/dex/code/form/Form22c;->unsignedFitsInNibble(I)Z

    #@2a
    move-result v2

    #@2b
    if-nez v2, :cond_2e

    #@2d
    :cond_2d
    :goto_2d
    return v0

    #@2e
    :cond_2e
    check-cast p1, Lcom/android/dx/dex/code/CstInsn;

    #@30
    invoke-virtual {p1}, Lcom/android/dx/dex/code/CstInsn;->getIndex()I

    #@33
    move-result v2

    #@34
    invoke-static {v2}, Lcom/android/dx/dex/code/form/Form22c;->unsignedFitsInShort(I)Z

    #@37
    move-result v2

    #@38
    if-eqz v2, :cond_2d

    #@3a
    invoke-virtual {p1}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    #@3d
    move-result-object v2

    #@3e
    instance-of v3, v2, Lcom/android/dx/rop/cst/CstType;

    #@40
    if-nez v3, :cond_46

    #@42
    instance-of v2, v2, Lcom/android/dx/rop/cst/CstFieldRef;

    #@44
    if-eqz v2, :cond_2d

    #@46
    :cond_46
    move v0, v1

    #@47
    goto :goto_2d
.end method

.method public writeTo(Lcom/android/dx/util/AnnotatedOutput;Lcom/android/dx/dex/code/DalvInsn;)V
    .registers 7

    #@0
    invoke-virtual {p2}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@3
    move-result-object v1

    #@4
    move-object v0, p2

    #@5
    check-cast v0, Lcom/android/dx/dex/code/CstInsn;

    #@7
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CstInsn;->getIndex()I

    #@a
    move-result v0

    #@b
    const/4 v2, 0x0

    #@c
    invoke-virtual {v1, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@13
    move-result v2

    #@14
    const/4 v3, 0x1

    #@15
    invoke-virtual {v1, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@1c
    move-result v1

    #@1d
    invoke-static {v2, v1}, Lcom/android/dx/dex/code/form/Form22c;->makeByte(II)I

    #@20
    move-result v1

    #@21
    invoke-static {p2, v1}, Lcom/android/dx/dex/code/form/Form22c;->opcodeUnit(Lcom/android/dx/dex/code/DalvInsn;I)S

    #@24
    move-result v1

    #@25
    int-to-short v0, v0

    #@26
    invoke-static {p1, v1, v0}, Lcom/android/dx/dex/code/form/Form22c;->write(Lcom/android/dx/util/AnnotatedOutput;SS)V

    #@29
    return-void
.end method
