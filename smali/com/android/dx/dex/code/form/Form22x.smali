.class public final Lcom/android/dx/dex/code/form/Form22x;
.super Lcom/android/dx/dex/code/InsnFormat;


# static fields
.field public static final THE_ONE:Lcom/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/android/dx/dex/code/form/Form22x;

    #@2
    invoke-direct {v0}, Lcom/android/dx/dex/code/form/Form22x;-><init>()V

    #@5
    sput-object v0, Lcom/android/dx/dex/code/form/Form22x;->THE_ONE:Lcom/android/dx/dex/code/InsnFormat;

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
    invoke-static {v2}, Lcom/android/dx/dex/code/form/Form22x;->unsignedFitsInByte(I)Z

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
    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form22x;->unsignedFitsInShort(I)Z

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
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
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
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@5
    move-result-object v2

    #@6
    instance-of v3, p1, Lcom/android/dx/dex/code/SimpleInsn;

    #@8
    if-eqz v3, :cond_2e

    #@a
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@d
    move-result v3

    #@e
    const/4 v4, 0x2

    #@f
    if-ne v3, v4, :cond_2e

    #@11
    invoke-virtual {v2, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@18
    move-result v3

    #@19
    invoke-static {v3}, Lcom/android/dx/dex/code/form/Form22x;->unsignedFitsInByte(I)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_2e

    #@1f
    invoke-virtual {v2, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@26
    move-result v2

    #@27
    invoke-static {v2}, Lcom/android/dx/dex/code/form/Form22x;->unsignedFitsInShort(I)Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_2e

    #@2d
    :goto_2d
    return v0

    #@2e
    :cond_2e
    move v0, v1

    #@2f
    goto :goto_2d
.end method

.method public writeTo(Lcom/android/dx/util/AnnotatedOutput;Lcom/android/dx/dex/code/DalvInsn;)V
    .registers 6

    #@0
    invoke-virtual {p2}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@c
    move-result v1

    #@d
    invoke-static {p2, v1}, Lcom/android/dx/dex/code/form/Form22x;->opcodeUnit(Lcom/android/dx/dex/code/DalvInsn;I)S

    #@10
    move-result v1

    #@11
    const/4 v2, 0x1

    #@12
    invoke-virtual {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@19
    move-result v0

    #@1a
    int-to-short v0, v0

    #@1b
    invoke-static {p1, v1, v0}, Lcom/android/dx/dex/code/form/Form22x;->write(Lcom/android/dx/util/AnnotatedOutput;SS)V

    #@1e
    return-void
.end method
