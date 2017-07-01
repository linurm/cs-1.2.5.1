.class public final Lcom/android/dx/dex/code/form/Form12x;
.super Lcom/android/dx/dex/code/InsnFormat;


# static fields
.field public static final THE_ONE:Lcom/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/android/dx/dex/code/form/Form12x;

    #@2
    invoke-direct {v0}, Lcom/android/dx/dex/code/form/Form12x;-><init>()V

    #@5
    sput-object v0, Lcom/android/dx/dex/code/form/Form12x;->THE_ONE:Lcom/android/dx/dex/code/InsnFormat;

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
    const/4 v0, 0x1

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
    invoke-static {v2}, Lcom/android/dx/dex/code/form/Form12x;->unsignedFitsInNibble(I)Z

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
    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form12x;->unsignedFitsInNibble(I)Z

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
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@7
    move-result v1

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    add-int/lit8 v3, v1, -0x2

    #@f
    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    const-string v3, ", "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    add-int/lit8 v1, v1, -0x1

    #@23
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
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
    .registers 8

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    instance-of v0, p1, Lcom/android/dx/dex/code/SimpleInsn;

    #@4
    if-nez v0, :cond_7

    #@6
    :goto_6
    return v3

    #@7
    :cond_7
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@a
    move-result-object v4

    #@b
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@e
    move-result v0

    #@f
    packed-switch v0, :pswitch_data_4c

    #@12
    goto :goto_6

    #@13
    :pswitch_13
    invoke-virtual {v4, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v4, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@1a
    move-result-object v0

    #@1b
    :cond_1b
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@1e
    move-result v1

    #@1f
    invoke-static {v1}, Lcom/android/dx/dex/code/form/Form12x;->unsignedFitsInNibble(I)Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_4a

    #@25
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@28
    move-result v0

    #@29
    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form12x;->unsignedFitsInNibble(I)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_4a

    #@2f
    move v0, v2

    #@30
    :goto_30
    move v3, v0

    #@31
    goto :goto_6

    #@32
    :pswitch_32
    invoke-virtual {v4, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@35
    move-result-object v1

    #@36
    const/4 v0, 0x2

    #@37
    invoke-virtual {v4, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@3e
    move-result v5

    #@3f
    invoke-virtual {v4, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@46
    move-result v4

    #@47
    if-eq v5, v4, :cond_1b

    #@49
    goto :goto_6

    #@4a
    :cond_4a
    move v0, v3

    #@4b
    goto :goto_30

    #@4c
    :pswitch_data_4c
    .packed-switch 0x2
        :pswitch_13
        :pswitch_32
    .end packed-switch
.end method

.method public writeTo(Lcom/android/dx/util/AnnotatedOutput;Lcom/android/dx/dex/code/DalvInsn;)V
    .registers 6

    #@0
    invoke-virtual {p2}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@7
    move-result v1

    #@8
    add-int/lit8 v2, v1, -0x2

    #@a
    invoke-virtual {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@11
    move-result v2

    #@12
    add-int/lit8 v1, v1, -0x1

    #@14
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@1b
    move-result v0

    #@1c
    invoke-static {v2, v0}, Lcom/android/dx/dex/code/form/Form12x;->makeByte(II)I

    #@1f
    move-result v0

    #@20
    invoke-static {p2, v0}, Lcom/android/dx/dex/code/form/Form12x;->opcodeUnit(Lcom/android/dx/dex/code/DalvInsn;I)S

    #@23
    move-result v0

    #@24
    invoke-static {p1, v0}, Lcom/android/dx/dex/code/form/Form12x;->write(Lcom/android/dx/util/AnnotatedOutput;S)V

    #@27
    return-void
.end method
