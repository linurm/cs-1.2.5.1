.class public final Lcom/android/dx/dex/code/form/Form11x;
.super Lcom/android/dx/dex/code/InsnFormat;


# static fields
.field public static final THE_ONE:Lcom/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/android/dx/dex/code/form/Form11x;

    #@2
    invoke-direct {v0}, Lcom/android/dx/dex/code/form/Form11x;-><init>()V

    #@5
    sput-object v0, Lcom/android/dx/dex/code/form/Form11x;->THE_ONE:Lcom/android/dx/dex/code/InsnFormat;

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
    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form11x;->unsignedFitsInByte(I)Z

    #@16
    move-result v0

    #@17
    invoke-virtual {v1, v3, v0}, Ljava/util/BitSet;->set(IZ)V

    #@1a
    return-object v1
.end method

.method public insnArgString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .registers 4

    #@0
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
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
    instance-of v3, p1, Lcom/android/dx/dex/code/SimpleInsn;

    #@8
    if-eqz v3, :cond_1f

    #@a
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@d
    move-result v3

    #@e
    if-ne v3, v0, :cond_1f

    #@10
    invoke-virtual {v2, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@17
    move-result v2

    #@18
    invoke-static {v2}, Lcom/android/dx/dex/code/form/Form11x;->unsignedFitsInByte(I)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_1f

    #@1e
    :goto_1e
    return v0

    #@1f
    :cond_1f
    move v0, v1

    #@20
    goto :goto_1e
.end method

.method public writeTo(Lcom/android/dx/util/AnnotatedOutput;Lcom/android/dx/dex/code/DalvInsn;)V
    .registers 5

    #@0
    invoke-virtual {p2}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@c
    move-result v0

    #@d
    invoke-static {p2, v0}, Lcom/android/dx/dex/code/form/Form11x;->opcodeUnit(Lcom/android/dx/dex/code/DalvInsn;I)S

    #@10
    move-result v0

    #@11
    invoke-static {p1, v0}, Lcom/android/dx/dex/code/form/Form11x;->write(Lcom/android/dx/util/AnnotatedOutput;S)V

    #@14
    return-void
.end method
