.class public final Lcom/android/dx/dex/code/form/Form31c;
.super Lcom/android/dx/dex/code/InsnFormat;


# static fields
.field public static final THE_ONE:Lcom/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/android/dx/dex/code/form/Form31c;

    #@2
    invoke-direct {v0}, Lcom/android/dx/dex/code/form/Form31c;-><init>()V

    #@5
    sput-object v0, Lcom/android/dx/dex/code/form/Form31c;->THE_ONE:Lcom/android/dx/dex/code/InsnFormat;

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
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@9
    move-result v1

    #@a
    new-instance v2, Ljava/util/BitSet;

    #@c
    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>(I)V

    #@f
    invoke-virtual {v0, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@16
    move-result v3

    #@17
    invoke-static {v3}, Lcom/android/dx/dex/code/form/Form31c;->unsignedFitsInByte(I)Z

    #@1a
    move-result v3

    #@1b
    if-ne v1, v5, :cond_21

    #@1d
    invoke-virtual {v2, v4, v3}, Ljava/util/BitSet;->set(IZ)V

    #@20
    :cond_20
    :goto_20
    return-object v2

    #@21
    :cond_21
    invoke-virtual {v0, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@28
    move-result v1

    #@29
    invoke-virtual {v0, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@30
    move-result v0

    #@31
    if-ne v1, v0, :cond_20

    #@33
    invoke-virtual {v2, v4, v3}, Ljava/util/BitSet;->set(IZ)V

    #@36
    invoke-virtual {v2, v5, v3}, Ljava/util/BitSet;->set(IZ)V

    #@39
    goto :goto_20
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
    invoke-static {p1}, Lcom/android/dx/dex/code/form/Form31c;->cstString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

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
    if-eqz p2, :cond_7

    #@2
    invoke-static {p1}, Lcom/android/dx/dex/code/form/Form31c;->cstComment(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

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
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    instance-of v0, p1, Lcom/android/dx/dex/code/CstInsn;

    #@4
    if-nez v0, :cond_7

    #@6
    :cond_6
    :goto_6
    return v1

    #@7
    :cond_7
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@e
    move-result v0

    #@f
    packed-switch v0, :pswitch_data_4c

    #@12
    goto :goto_6

    #@13
    :pswitch_13
    invoke-virtual {v3, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@16
    move-result-object v0

    #@17
    :cond_17
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@1a
    move-result v0

    #@1b
    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form31c;->unsignedFitsInByte(I)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_6

    #@21
    check-cast p1, Lcom/android/dx/dex/code/CstInsn;

    #@23
    invoke-virtual {p1}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    #@26
    move-result-object v0

    #@27
    instance-of v3, v0, Lcom/android/dx/rop/cst/CstType;

    #@29
    if-nez v3, :cond_33

    #@2b
    instance-of v3, v0, Lcom/android/dx/rop/cst/CstFieldRef;

    #@2d
    if-nez v3, :cond_33

    #@2f
    instance-of v0, v0, Lcom/android/dx/rop/cst/CstString;

    #@31
    if-eqz v0, :cond_49

    #@33
    :cond_33
    move v0, v2

    #@34
    :goto_34
    move v1, v0

    #@35
    goto :goto_6

    #@36
    :pswitch_36
    invoke-virtual {v3, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@3d
    move-result v4

    #@3e
    invoke-virtual {v3, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@45
    move-result v3

    #@46
    if-eq v4, v3, :cond_17

    #@48
    goto :goto_6

    #@49
    :cond_49
    move v0, v1

    #@4a
    goto :goto_34

    #@4b
    nop

    #@4c
    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_13
        :pswitch_36
    .end packed-switch
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
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CstInsn;->getIndex()I

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
    invoke-static {p2, v1}, Lcom/android/dx/dex/code/form/Form31c;->opcodeUnit(Lcom/android/dx/dex/code/DalvInsn;I)S

    #@17
    move-result v1

    #@18
    invoke-static {p1, v1, v0}, Lcom/android/dx/dex/code/form/Form31c;->write(Lcom/android/dx/util/AnnotatedOutput;SI)V

    #@1b
    return-void
.end method
