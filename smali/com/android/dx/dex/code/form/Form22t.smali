.class public final Lcom/android/dx/dex/code/form/Form22t;
.super Lcom/android/dx/dex/code/InsnFormat;


# static fields
.field public static final THE_ONE:Lcom/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/android/dx/dex/code/form/Form22t;

    #@2
    invoke-direct {v0}, Lcom/android/dx/dex/code/form/Form22t;-><init>()V

    #@5
    sput-object v0, Lcom/android/dx/dex/code/form/Form22t;->THE_ONE:Lcom/android/dx/dex/code/InsnFormat;

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
.method public branchFits(Lcom/android/dx/dex/code/TargetInsn;)Z
    .registers 3

    #@0
    invoke-virtual {p1}, Lcom/android/dx/dex/code/TargetInsn;->getTargetOffset()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_e

    #@6
    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form22t;->signedFitsInShort(I)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    :goto_d
    return v0

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    goto :goto_d
.end method

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
    invoke-static {v2}, Lcom/android/dx/dex/code/form/Form22t;->unsignedFitsInNibble(I)Z

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
    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form22t;->unsignedFitsInNibble(I)Z

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
    invoke-static {p1}, Lcom/android/dx/dex/code/form/Form22t;->branchString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

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
    invoke-static {p1}, Lcom/android/dx/dex/code/form/Form22t;->branchComment(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
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
    instance-of v3, p1, Lcom/android/dx/dex/code/TargetInsn;

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
    invoke-virtual {v2, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@18
    move-result v3

    #@19
    invoke-static {v3}, Lcom/android/dx/dex/code/form/Form22t;->unsignedFitsInNibble(I)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_2d

    #@1f
    invoke-virtual {v2, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@26
    move-result v2

    #@27
    invoke-static {v2}, Lcom/android/dx/dex/code/form/Form22t;->unsignedFitsInNibble(I)Z

    #@2a
    move-result v2

    #@2b
    if-nez v2, :cond_2f

    #@2d
    :cond_2d
    move v0, v1

    #@2e
    :cond_2e
    :goto_2e
    return v0

    #@2f
    :cond_2f
    check-cast p1, Lcom/android/dx/dex/code/TargetInsn;

    #@31
    invoke-virtual {p1}, Lcom/android/dx/dex/code/TargetInsn;->hasTargetOffset()Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_2e

    #@37
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/form/Form22t;->branchFits(Lcom/android/dx/dex/code/TargetInsn;)Z

    #@3a
    move-result v0

    #@3b
    goto :goto_2e
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
    check-cast v0, Lcom/android/dx/dex/code/TargetInsn;

    #@7
    invoke-virtual {v0}, Lcom/android/dx/dex/code/TargetInsn;->getTargetOffset()I

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
    invoke-static {v2, v1}, Lcom/android/dx/dex/code/form/Form22t;->makeByte(II)I

    #@20
    move-result v1

    #@21
    invoke-static {p2, v1}, Lcom/android/dx/dex/code/form/Form22t;->opcodeUnit(Lcom/android/dx/dex/code/DalvInsn;I)S

    #@24
    move-result v1

    #@25
    int-to-short v0, v0

    #@26
    invoke-static {p1, v1, v0}, Lcom/android/dx/dex/code/form/Form22t;->write(Lcom/android/dx/util/AnnotatedOutput;SS)V

    #@29
    return-void
.end method
