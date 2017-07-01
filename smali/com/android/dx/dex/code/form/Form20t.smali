.class public final Lcom/android/dx/dex/code/form/Form20t;
.super Lcom/android/dx/dex/code/InsnFormat;


# static fields
.field public static final THE_ONE:Lcom/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/android/dx/dex/code/form/Form20t;

    #@2
    invoke-direct {v0}, Lcom/android/dx/dex/code/form/Form20t;-><init>()V

    #@5
    sput-object v0, Lcom/android/dx/dex/code/form/Form20t;->THE_ONE:Lcom/android/dx/dex/code/InsnFormat;

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
    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form20t;->signedFitsInShort(I)Z

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

.method public insnArgString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .registers 3

    #@0
    invoke-static {p1}, Lcom/android/dx/dex/code/form/Form20t;->branchString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public insnCommentString(Lcom/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .registers 4

    #@0
    invoke-static {p1}, Lcom/android/dx/dex/code/form/Form20t;->branchComment(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public isCompatible(Lcom/android/dx/dex/code/DalvInsn;)Z
    .registers 3

    #@0
    instance-of v0, p1, Lcom/android/dx/dex/code/TargetInsn;

    #@2
    if-eqz v0, :cond_e

    #@4
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_10

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    :goto_f
    return v0

    #@10
    :cond_10
    check-cast p1, Lcom/android/dx/dex/code/TargetInsn;

    #@12
    invoke-virtual {p1}, Lcom/android/dx/dex/code/TargetInsn;->hasTargetOffset()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1d

    #@18
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/form/Form20t;->branchFits(Lcom/android/dx/dex/code/TargetInsn;)Z

    #@1b
    move-result v0

    #@1c
    goto :goto_f

    #@1d
    :cond_1d
    const/4 v0, 0x1

    #@1e
    goto :goto_f
.end method

.method public writeTo(Lcom/android/dx/util/AnnotatedOutput;Lcom/android/dx/dex/code/DalvInsn;)V
    .registers 5

    #@0
    move-object v0, p2

    #@1
    check-cast v0, Lcom/android/dx/dex/code/TargetInsn;

    #@3
    invoke-virtual {v0}, Lcom/android/dx/dex/code/TargetInsn;->getTargetOffset()I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x0

    #@8
    invoke-static {p2, v1}, Lcom/android/dx/dex/code/form/Form20t;->opcodeUnit(Lcom/android/dx/dex/code/DalvInsn;I)S

    #@b
    move-result v1

    #@c
    int-to-short v0, v0

    #@d
    invoke-static {p1, v1, v0}, Lcom/android/dx/dex/code/form/Form20t;->write(Lcom/android/dx/util/AnnotatedOutput;SS)V

    #@10
    return-void
.end method
