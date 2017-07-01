.class public final Lcom/android/dx/dex/code/form/Form3rc;
.super Lcom/android/dx/dex/code/InsnFormat;


# static fields
.field public static final THE_ONE:Lcom/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/android/dx/dex/code/form/Form3rc;

    #@2
    invoke-direct {v0}, Lcom/android/dx/dex/code/form/Form3rc;-><init>()V

    #@5
    sput-object v0, Lcom/android/dx/dex/code/form/Form3rc;->THE_ONE:Lcom/android/dx/dex/code/InsnFormat;

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

.method public insnArgString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .registers 4

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@8
    move-result-object v1

    #@9
    invoke-static {v1}, Lcom/android/dx/dex/code/form/Form3rc;->regRangeString(Lcom/android/dx/rop/code/RegisterSpecList;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string v1, ", "

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-static {p1}, Lcom/android/dx/dex/code/form/Form3rc;->cstString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method

.method public insnCommentString(Lcom/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .registers 4

    #@0
    if-eqz p2, :cond_7

    #@2
    invoke-static {p1}, Lcom/android/dx/dex/code/form/Form3rc;->cstComment(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

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
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    instance-of v1, p1, Lcom/android/dx/dex/code/CstInsn;

    #@3
    if-nez v1, :cond_6

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    check-cast p1, Lcom/android/dx/dex/code/CstInsn;

    #@8
    invoke-virtual {p1}, Lcom/android/dx/dex/code/CstInsn;->getIndex()I

    #@b
    move-result v1

    #@c
    invoke-virtual {p1}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    #@f
    move-result-object v2

    #@10
    invoke-static {v1}, Lcom/android/dx/dex/code/form/Form3rc;->unsignedFitsInShort(I)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_5

    #@16
    instance-of v1, v2, Lcom/android/dx/rop/cst/CstMethodRef;

    #@18
    if-nez v1, :cond_1e

    #@1a
    instance-of v1, v2, Lcom/android/dx/rop/cst/CstType;

    #@1c
    if-eqz v1, :cond_5

    #@1e
    :cond_1e
    invoke-virtual {p1}, Lcom/android/dx/dex/code/CstInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@25
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_49

    #@2b
    invoke-static {v1}, Lcom/android/dx/dex/code/form/Form3rc;->isRegListSequential(Lcom/android/dx/rop/code/RegisterSpecList;)Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_5

    #@31
    invoke-virtual {v1, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@38
    move-result v2

    #@39
    invoke-static {v2}, Lcom/android/dx/dex/code/form/Form3rc;->unsignedFitsInShort(I)Z

    #@3c
    move-result v2

    #@3d
    if-eqz v2, :cond_5

    #@3f
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecList;->getWordCount()I

    #@42
    move-result v1

    #@43
    invoke-static {v1}, Lcom/android/dx/dex/code/form/Form3rc;->unsignedFitsInByte(I)Z

    #@46
    move-result v1

    #@47
    if-eqz v1, :cond_5

    #@49
    :cond_49
    const/4 v0, 0x1

    #@4a
    goto :goto_5
.end method

.method public writeTo(Lcom/android/dx/util/AnnotatedOutput;Lcom/android/dx/dex/code/DalvInsn;)V
    .registers 7

    #@0
    const/4 v1, 0x0

    #@1
    invoke-virtual {p2}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@4
    move-result-object v2

    #@5
    move-object v0, p2

    #@6
    check-cast v0, Lcom/android/dx/dex/code/CstInsn;

    #@8
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CstInsn;->getIndex()I

    #@b
    move-result v3

    #@c
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_21

    #@12
    move v0, v1

    #@13
    :goto_13
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecList;->getWordCount()I

    #@16
    move-result v1

    #@17
    invoke-static {p2, v1}, Lcom/android/dx/dex/code/form/Form3rc;->opcodeUnit(Lcom/android/dx/dex/code/DalvInsn;I)S

    #@1a
    move-result v1

    #@1b
    int-to-short v2, v3

    #@1c
    int-to-short v0, v0

    #@1d
    invoke-static {p1, v1, v2, v0}, Lcom/android/dx/dex/code/form/Form3rc;->write(Lcom/android/dx/util/AnnotatedOutput;SSS)V

    #@20
    return-void

    #@21
    :cond_21
    invoke-virtual {v2, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@28
    move-result v0

    #@29
    goto :goto_13
.end method
