.class public final Lcom/android/dx/dex/code/form/Form21t;
.super Lcom/android/dx/dex/code/InsnFormat;


# static fields
.field public static final THE_ONE:Lcom/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/android/dx/dex/code/form/Form21t;

    #@2
    invoke-direct {v0}, Lcom/android/dx/dex/code/form/Form21t;-><init>()V

    #@5
    sput-object v0, Lcom/android/dx/dex/code/form/Form21t;->THE_ONE:Lcom/android/dx/dex/code/InsnFormat;

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
    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form21t;->signedFitsInShort(I)Z

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
    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form21t;->unsignedFitsInByte(I)Z

    #@16
    move-result v0

    #@17
    invoke-virtual {v1, v3, v0}, Ljava/util/BitSet;->set(IZ)V

    #@1a
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
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string v1, ", "

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-static {p1}, Lcom/android/dx/dex/code/form/Form21t;->branchString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    return-object v0
.end method

.method public insnCommentString(Lcom/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .registers 4

    #@0
    invoke-static {p1}, Lcom/android/dx/dex/code/form/Form21t;->branchComment(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public isCompatible(Lcom/android/dx/dex/code/DalvInsn;)Z
    .registers 6

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
    if-eqz v3, :cond_1e

    #@a
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@d
    move-result v3

    #@e
    if-ne v3, v0, :cond_1e

    #@10
    invoke-virtual {v2, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@17
    move-result v2

    #@18
    invoke-static {v2}, Lcom/android/dx/dex/code/form/Form21t;->unsignedFitsInByte(I)Z

    #@1b
    move-result v2

    #@1c
    if-nez v2, :cond_20

    #@1e
    :cond_1e
    move v0, v1

    #@1f
    :cond_1f
    :goto_1f
    return v0

    #@20
    :cond_20
    check-cast p1, Lcom/android/dx/dex/code/TargetInsn;

    #@22
    invoke-virtual {p1}, Lcom/android/dx/dex/code/TargetInsn;->hasTargetOffset()Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_1f

    #@28
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/form/Form21t;->branchFits(Lcom/android/dx/dex/code/TargetInsn;)Z

    #@2b
    move-result v0

    #@2c
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
    move-result-object v1

    #@10
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@13
    move-result v1

    #@14
    invoke-static {p2, v1}, Lcom/android/dx/dex/code/form/Form21t;->opcodeUnit(Lcom/android/dx/dex/code/DalvInsn;I)S

    #@17
    move-result v1

    #@18
    int-to-short v0, v0

    #@19
    invoke-static {p1, v1, v0}, Lcom/android/dx/dex/code/form/Form21t;->write(Lcom/android/dx/util/AnnotatedOutput;SS)V

    #@1c
    return-void
.end method
