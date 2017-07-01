.class public final Lcom/android/dx/dex/code/form/Form5rc;
.super Lcom/android/dx/dex/code/InsnFormat;


# static fields
.field public static final THE_ONE:Lcom/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/android/dx/dex/code/form/Form5rc;

    #@2
    invoke-direct {v0}, Lcom/android/dx/dex/code/form/Form5rc;-><init>()V

    #@5
    sput-object v0, Lcom/android/dx/dex/code/form/Form5rc;->THE_ONE:Lcom/android/dx/dex/code/InsnFormat;

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
    const/4 v0, 0x5

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
    invoke-static {v1}, Lcom/android/dx/dex/code/form/Form5rc;->regRangeString(Lcom/android/dx/rop/code/RegisterSpecList;)Ljava/lang/String;

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
    invoke-static {p1}, Lcom/android/dx/dex/code/form/Form5rc;->cstString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

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
    invoke-static {p1}, Lcom/android/dx/dex/code/form/Form5rc;->cstComment(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

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
    sget-boolean v1, Lcom/android/dx/dex/code/form/Form5rc;->ALLOW_EXTENDED_OPCODES:Z

    #@3
    if-nez v1, :cond_6

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    instance-of v1, p1, Lcom/android/dx/dex/code/CstInsn;

    #@8
    if-eqz v1, :cond_5

    #@a
    check-cast p1, Lcom/android/dx/dex/code/CstInsn;

    #@c
    invoke-virtual {p1}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    #@f
    move-result-object v1

    #@10
    instance-of v2, v1, Lcom/android/dx/rop/cst/CstMethodRef;

    #@12
    if-nez v2, :cond_18

    #@14
    instance-of v1, v1, Lcom/android/dx/rop/cst/CstType;

    #@16
    if-eqz v1, :cond_5

    #@18
    :cond_18
    invoke-virtual {p1}, Lcom/android/dx/dex/code/CstInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@1f
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_43

    #@25
    invoke-static {v1}, Lcom/android/dx/dex/code/form/Form5rc;->isRegListSequential(Lcom/android/dx/rop/code/RegisterSpecList;)Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_5

    #@2b
    invoke-virtual {v1, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@32
    move-result v2

    #@33
    invoke-static {v2}, Lcom/android/dx/dex/code/form/Form5rc;->unsignedFitsInShort(I)Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_5

    #@39
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecList;->getWordCount()I

    #@3c
    move-result v1

    #@3d
    invoke-static {v1}, Lcom/android/dx/dex/code/form/Form5rc;->unsignedFitsInShort(I)Z

    #@40
    move-result v1

    #@41
    if-eqz v1, :cond_5

    #@43
    :cond_43
    const/4 v0, 0x1

    #@44
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
    invoke-static {p2}, Lcom/android/dx/dex/code/form/Form5rc;->opcodeUnit(Lcom/android/dx/dex/code/DalvInsn;)S

    #@1a
    move-result v2

    #@1b
    int-to-short v1, v1

    #@1c
    int-to-short v0, v0

    #@1d
    invoke-static {p1, v2, v3, v1, v0}, Lcom/android/dx/dex/code/form/Form5rc;->write(Lcom/android/dx/util/AnnotatedOutput;SISS)V

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
