.class public final Lcom/android/dx/dex/code/form/Form33x;
.super Lcom/android/dx/dex/code/InsnFormat;


# static fields
.field public static final THE_ONE:Lcom/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/android/dx/dex/code/form/Form33x;

    #@2
    invoke-direct {v0}, Lcom/android/dx/dex/code/form/Form33x;-><init>()V

    #@5
    sput-object v0, Lcom/android/dx/dex/code/form/Form33x;->THE_ONE:Lcom/android/dx/dex/code/InsnFormat;

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
    .registers 8

    #@0
    const/4 v5, 0x2

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@6
    move-result-object v0

    #@7
    new-instance v1, Ljava/util/BitSet;

    #@9
    const/4 v2, 0x3

    #@a
    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    #@d
    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@14
    move-result v2

    #@15
    invoke-static {v2}, Lcom/android/dx/dex/code/form/Form33x;->unsignedFitsInByte(I)Z

    #@18
    move-result v2

    #@19
    invoke-virtual {v1, v3, v2}, Ljava/util/BitSet;->set(IZ)V

    #@1c
    invoke-virtual {v0, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@23
    move-result v2

    #@24
    invoke-static {v2}, Lcom/android/dx/dex/code/form/Form33x;->unsignedFitsInByte(I)Z

    #@27
    move-result v2

    #@28
    invoke-virtual {v1, v4, v2}, Ljava/util/BitSet;->set(IZ)V

    #@2b
    invoke-virtual {v0, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@32
    move-result v0

    #@33
    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form33x;->unsignedFitsInShort(I)Z

    #@36
    move-result v0

    #@37
    invoke-virtual {v1, v5, v0}, Ljava/util/BitSet;->set(IZ)V

    #@3a
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
    move-result-object v2

    #@21
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    const-string v2, ", "

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    const/4 v2, 0x2

    #@30
    invoke-virtual {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    return-object v0
.end method

.method public insnCommentString(Lcom/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .registers 4

    #@0
    const-string v0, ""

    #@2
    return-object v0
.end method

.method public isCompatible(Lcom/android/dx/dex/code/DalvInsn;)Z
    .registers 7

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    sget-boolean v2, Lcom/android/dx/dex/code/form/Form33x;->ALLOW_EXTENDED_OPCODES:Z

    #@4
    if-nez v2, :cond_7

    #@6
    :cond_6
    :goto_6
    return v0

    #@7
    :cond_7
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@a
    move-result-object v2

    #@b
    instance-of v3, p1, Lcom/android/dx/dex/code/SimpleInsn;

    #@d
    if-eqz v3, :cond_6

    #@f
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@12
    move-result v3

    #@13
    const/4 v4, 0x3

    #@14
    if-ne v3, v4, :cond_6

    #@16
    invoke-virtual {v2, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@1d
    move-result v3

    #@1e
    invoke-static {v3}, Lcom/android/dx/dex/code/form/Form33x;->unsignedFitsInByte(I)Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_6

    #@24
    invoke-virtual {v2, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@2b
    move-result v3

    #@2c
    invoke-static {v3}, Lcom/android/dx/dex/code/form/Form33x;->unsignedFitsInByte(I)Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_6

    #@32
    const/4 v3, 0x2

    #@33
    invoke-virtual {v2, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@3a
    move-result v2

    #@3b
    invoke-static {v2}, Lcom/android/dx/dex/code/form/Form33x;->unsignedFitsInShort(I)Z

    #@3e
    move-result v2

    #@3f
    if-eqz v2, :cond_6

    #@41
    move v0, v1

    #@42
    goto :goto_6
.end method

.method public writeTo(Lcom/android/dx/util/AnnotatedOutput;Lcom/android/dx/dex/code/DalvInsn;)V
    .registers 7

    #@0
    invoke-virtual {p2}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@3
    move-result-object v0

    #@4
    invoke-static {p2}, Lcom/android/dx/dex/code/form/Form33x;->opcodeUnit(Lcom/android/dx/dex/code/DalvInsn;)S

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@10
    move-result v2

    #@11
    const/4 v3, 0x1

    #@12
    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@19
    move-result v3

    #@1a
    invoke-static {v2, v3}, Lcom/android/dx/dex/code/form/Form33x;->codeUnit(II)S

    #@1d
    move-result v2

    #@1e
    const/4 v3, 0x2

    #@1f
    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@26
    move-result v0

    #@27
    int-to-short v0, v0

    #@28
    invoke-static {p1, v1, v2, v0}, Lcom/android/dx/dex/code/form/Form33x;->write(Lcom/android/dx/util/AnnotatedOutput;SSS)V

    #@2b
    return-void
.end method
