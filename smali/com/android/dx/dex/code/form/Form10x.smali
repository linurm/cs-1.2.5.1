.class public final Lcom/android/dx/dex/code/form/Form10x;
.super Lcom/android/dx/dex/code/InsnFormat;


# static fields
.field public static final THE_ONE:Lcom/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/android/dx/dex/code/form/Form10x;

    #@2
    invoke-direct {v0}, Lcom/android/dx/dex/code/form/Form10x;-><init>()V

    #@5
    sput-object v0, Lcom/android/dx/dex/code/form/Form10x;->THE_ONE:Lcom/android/dx/dex/code/InsnFormat;

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

.method public insnArgString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .registers 3

    #@0
    const-string v0, ""

    #@2
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
    .registers 3

    #@0
    instance-of v0, p1, Lcom/android/dx/dex/code/SimpleInsn;

    #@2
    if-eqz v0, :cond_10

    #@4
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_10

    #@e
    const/4 v0, 0x1

    #@f
    :goto_f
    return v0

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    goto :goto_f
.end method

.method public writeTo(Lcom/android/dx/util/AnnotatedOutput;Lcom/android/dx/dex/code/DalvInsn;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p2, v0}, Lcom/android/dx/dex/code/form/Form10x;->opcodeUnit(Lcom/android/dx/dex/code/DalvInsn;I)S

    #@4
    move-result v0

    #@5
    invoke-static {p1, v0}, Lcom/android/dx/dex/code/form/Form10x;->write(Lcom/android/dx/util/AnnotatedOutput;S)V

    #@8
    return-void
.end method
