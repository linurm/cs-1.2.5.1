.class public Lcom/android/dx/ssa/SsaRenamer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;,
        Lcom/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private nextSsaReg:I

.field private final ropRegCount:I

.field private final ssaMeth:Lcom/android/dx/ssa/SsaMethod;

.field private final ssaRegToLocalItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/rop/code/LocalItem;",
            ">;"
        }
    .end annotation
.end field

.field private ssaRegToRopReg:Lcom/android/dx/util/IntList;

.field private final startsForBlocks:[[Lcom/android/dx/rop/code/RegisterSpec;

.field private threshold:I


# direct methods
.method public constructor <init>(Lcom/android/dx/ssa/SsaMethod;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    #@7
    move-result v1

    #@8
    iput v1, p0, Lcom/android/dx/ssa/SsaRenamer;->ropRegCount:I

    #@a
    iput-object p1, p0, Lcom/android/dx/ssa/SsaRenamer;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@c
    iget v1, p0, Lcom/android/dx/ssa/SsaRenamer;->ropRegCount:I

    #@e
    iput v1, p0, Lcom/android/dx/ssa/SsaRenamer;->nextSsaReg:I

    #@10
    iput v0, p0, Lcom/android/dx/ssa/SsaRenamer;->threshold:I

    #@12
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v1

    #@1a
    new-array v1, v1, [[Lcom/android/dx/rop/code/RegisterSpec;

    #@1c
    iput-object v1, p0, Lcom/android/dx/ssa/SsaRenamer;->startsForBlocks:[[Lcom/android/dx/rop/code/RegisterSpec;

    #@1e
    new-instance v1, Ljava/util/ArrayList;

    #@20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@23
    iput-object v1, p0, Lcom/android/dx/ssa/SsaRenamer;->ssaRegToLocalItems:Ljava/util/ArrayList;

    #@25
    iget v1, p0, Lcom/android/dx/ssa/SsaRenamer;->ropRegCount:I

    #@27
    new-array v1, v1, [Lcom/android/dx/rop/code/RegisterSpec;

    #@29
    :goto_29
    iget v2, p0, Lcom/android/dx/ssa/SsaRenamer;->ropRegCount:I

    #@2b
    if-ge v0, v2, :cond_38

    #@2d
    sget-object v2, Lcom/android/dx/rop/type/Type;->VOID:Lcom/android/dx/rop/type/Type;

    #@2f
    invoke-static {v0, v2}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    #@32
    move-result-object v2

    #@33
    aput-object v2, v1, v0

    #@35
    add-int/lit8 v0, v0, 0x1

    #@37
    goto :goto_29

    #@38
    :cond_38
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer;->startsForBlocks:[[Lcom/android/dx/rop/code/RegisterSpec;

    #@3a
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getEntryBlockIndex()I

    #@3d
    move-result v2

    #@3e
    aput-object v1, v0, v2

    #@40
    return-void
.end method

.method public constructor <init>(Lcom/android/dx/ssa/SsaMethod;I)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/SsaRenamer;-><init>(Lcom/android/dx/ssa/SsaMethod;)V

    #@3
    iput p2, p0, Lcom/android/dx/ssa/SsaRenamer;->threshold:I

    #@5
    return-void
.end method

.method static synthetic access$000(Lcom/android/dx/ssa/SsaRenamer;)[[Lcom/android/dx/rop/code/RegisterSpec;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer;->startsForBlocks:[[Lcom/android/dx/rop/code/RegisterSpec;

    #@2
    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dx/ssa/SsaRenamer;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/ssa/SsaRenamer;->nextSsaReg:I

    #@2
    return v0
.end method

.method static synthetic access$108(Lcom/android/dx/ssa/SsaRenamer;)I
    .registers 3

    #@0
    iget v0, p0, Lcom/android/dx/ssa/SsaRenamer;->nextSsaReg:I

    #@2
    add-int/lit8 v1, v0, 0x1

    #@4
    iput v1, p0, Lcom/android/dx/ssa/SsaRenamer;->nextSsaReg:I

    #@6
    return v0
.end method

.method static synthetic access$1100(Lcom/android/dx/ssa/SsaRenamer;)Lcom/android/dx/ssa/SsaMethod;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@2
    return-object v0
.end method

.method static synthetic access$300([Lcom/android/dx/rop/code/RegisterSpec;)[Lcom/android/dx/rop/code/RegisterSpec;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/android/dx/ssa/SsaRenamer;->dupArray([Lcom/android/dx/rop/code/RegisterSpec;)[Lcom/android/dx/rop/code/RegisterSpec;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic access$400(Lcom/android/dx/ssa/SsaRenamer;Lcom/android/dx/rop/code/RegisterSpec;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/SsaRenamer;->setNameForSsaReg(Lcom/android/dx/rop/code/RegisterSpec;)V

    #@3
    return-void
.end method

.method static synthetic access$500(Lcom/android/dx/ssa/SsaRenamer;I)Lcom/android/dx/rop/code/LocalItem;
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/SsaRenamer;->getLocalForNewReg(I)Lcom/android/dx/rop/code/LocalItem;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    #@0
    invoke-static {p0, p1}, Lcom/android/dx/ssa/SsaRenamer;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$700(Lcom/android/dx/ssa/SsaRenamer;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/ssa/SsaRenamer;->threshold:I

    #@2
    return v0
.end method

.method static synthetic access$800(Lcom/android/dx/ssa/SsaRenamer;I)Z
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/SsaRenamer;->isBelowThresholdRegister(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$900(Lcom/android/dx/ssa/SsaRenamer;I)Z
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/SsaRenamer;->isVersionZeroRegister(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private static dupArray([Lcom/android/dx/rop/code/RegisterSpec;)[Lcom/android/dx/rop/code/RegisterSpec;
    .registers 4

    #@0
    const/4 v2, 0x0

    #@1
    array-length v0, p0

    #@2
    new-array v0, v0, [Lcom/android/dx/rop/code/RegisterSpec;

    #@4
    array-length v1, p0

    #@5
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@8
    return-object v0
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    #@0
    if-eq p0, p1, :cond_a

    #@2
    if-eqz p0, :cond_c

    #@4
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_c

    #@a
    :cond_a
    const/4 v0, 0x1

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    goto :goto_b
.end method

.method private getLocalForNewReg(I)Lcom/android/dx/rop/code/LocalItem;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer;->ssaRegToLocalItems:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    if-ge p1, v0, :cond_11

    #@8
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer;->ssaRegToLocalItems:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/dx/rop/code/LocalItem;

    #@10
    :goto_10
    return-object v0

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    goto :goto_10
.end method

.method private isBelowThresholdRegister(I)Z
    .registers 3

    #@0
    iget v0, p0, Lcom/android/dx/ssa/SsaRenamer;->threshold:I

    #@2
    if-ge p1, v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method private isVersionZeroRegister(I)Z
    .registers 3

    #@0
    iget v0, p0, Lcom/android/dx/ssa/SsaRenamer;->ropRegCount:I

    #@2
    if-ge p1, v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method private setNameForSsaReg(Lcom/android/dx/rop/code/RegisterSpec;)V
    .registers 6

    #@0
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    #@7
    move-result-object v1

    #@8
    iget-object v2, p0, Lcom/android/dx/ssa/SsaRenamer;->ssaRegToLocalItems:Ljava/util/ArrayList;

    #@a
    add-int/lit8 v3, v0, 0x1

    #@c
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    #@f
    :goto_f
    iget-object v2, p0, Lcom/android/dx/ssa/SsaRenamer;->ssaRegToLocalItems:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v2

    #@15
    if-gt v2, v0, :cond_1e

    #@17
    iget-object v2, p0, Lcom/android/dx/ssa/SsaRenamer;->ssaRegToLocalItems:Ljava/util/ArrayList;

    #@19
    const/4 v3, 0x0

    #@1a
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1d
    goto :goto_f

    #@1e
    :cond_1e
    iget-object v2, p0, Lcom/android/dx/ssa/SsaRenamer;->ssaRegToLocalItems:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@23
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@2
    new-instance v1, Lcom/android/dx/ssa/SsaRenamer$1;

    #@4
    invoke-direct {v1, p0}, Lcom/android/dx/ssa/SsaRenamer$1;-><init>(Lcom/android/dx/ssa/SsaRenamer;)V

    #@7
    invoke-virtual {v0, v1}, Lcom/android/dx/ssa/SsaMethod;->forEachBlockDepthFirstDom(Lcom/android/dx/ssa/SsaBasicBlock$Visitor;)V

    #@a
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@c
    iget v1, p0, Lcom/android/dx/ssa/SsaRenamer;->nextSsaReg:I

    #@e
    invoke-virtual {v0, v1}, Lcom/android/dx/ssa/SsaMethod;->setNewRegCount(I)V

    #@11
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@13
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->onInsnsChanged()V

    #@16
    return-void
.end method
