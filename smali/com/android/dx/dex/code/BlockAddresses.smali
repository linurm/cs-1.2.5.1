.class public final Lcom/android/dx/dex/code/BlockAddresses;
.super Ljava/lang/Object;


# instance fields
.field private final ends:[Lcom/android/dx/dex/code/CodeAddress;

.field private final lasts:[Lcom/android/dx/dex/code/CodeAddress;

.field private final starts:[Lcom/android/dx/dex/code/CodeAddress;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/code/RopMethod;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList;->getMaxLabel()I

    #@a
    move-result v0

    #@b
    new-array v1, v0, [Lcom/android/dx/dex/code/CodeAddress;

    #@d
    iput-object v1, p0, Lcom/android/dx/dex/code/BlockAddresses;->starts:[Lcom/android/dx/dex/code/CodeAddress;

    #@f
    new-array v1, v0, [Lcom/android/dx/dex/code/CodeAddress;

    #@11
    iput-object v1, p0, Lcom/android/dx/dex/code/BlockAddresses;->lasts:[Lcom/android/dx/dex/code/CodeAddress;

    #@13
    new-array v0, v0, [Lcom/android/dx/dex/code/CodeAddress;

    #@15
    iput-object v0, p0, Lcom/android/dx/dex/code/BlockAddresses;->ends:[Lcom/android/dx/dex/code/CodeAddress;

    #@17
    invoke-direct {p0, p1}, Lcom/android/dx/dex/code/BlockAddresses;->setupArrays(Lcom/android/dx/rop/code/RopMethod;)V

    #@1a
    return-void
.end method

.method private setupArrays(Lcom/android/dx/rop/code/RopMethod;)V
    .registers 11

    #@0
    const/4 v1, 0x0

    #@1
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {v2}, Lcom/android/dx/rop/code/BasicBlockList;->size()I

    #@8
    move-result v3

    #@9
    move v0, v1

    #@a
    :goto_a
    if-ge v0, v3, :cond_46

    #@c
    invoke-virtual {v2, v0}, Lcom/android/dx/rop/code/BasicBlockList;->get(I)Lcom/android/dx/rop/code/BasicBlock;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v4}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    #@13
    move-result v5

    #@14
    invoke-virtual {v4}, Lcom/android/dx/rop/code/BasicBlock;->getInsns()Lcom/android/dx/rop/code/InsnList;

    #@17
    move-result-object v6

    #@18
    invoke-virtual {v6, v1}, Lcom/android/dx/rop/code/InsnList;->get(I)Lcom/android/dx/rop/code/Insn;

    #@1b
    move-result-object v6

    #@1c
    iget-object v7, p0, Lcom/android/dx/dex/code/BlockAddresses;->starts:[Lcom/android/dx/dex/code/CodeAddress;

    #@1e
    new-instance v8, Lcom/android/dx/dex/code/CodeAddress;

    #@20
    invoke-virtual {v6}, Lcom/android/dx/rop/code/Insn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@23
    move-result-object v6

    #@24
    invoke-direct {v8, v6}, Lcom/android/dx/dex/code/CodeAddress;-><init>(Lcom/android/dx/rop/code/SourcePosition;)V

    #@27
    aput-object v8, v7, v5

    #@29
    invoke-virtual {v4}, Lcom/android/dx/rop/code/BasicBlock;->getLastInsn()Lcom/android/dx/rop/code/Insn;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4}, Lcom/android/dx/rop/code/Insn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@30
    move-result-object v4

    #@31
    iget-object v6, p0, Lcom/android/dx/dex/code/BlockAddresses;->lasts:[Lcom/android/dx/dex/code/CodeAddress;

    #@33
    new-instance v7, Lcom/android/dx/dex/code/CodeAddress;

    #@35
    invoke-direct {v7, v4}, Lcom/android/dx/dex/code/CodeAddress;-><init>(Lcom/android/dx/rop/code/SourcePosition;)V

    #@38
    aput-object v7, v6, v5

    #@3a
    iget-object v6, p0, Lcom/android/dx/dex/code/BlockAddresses;->ends:[Lcom/android/dx/dex/code/CodeAddress;

    #@3c
    new-instance v7, Lcom/android/dx/dex/code/CodeAddress;

    #@3e
    invoke-direct {v7, v4}, Lcom/android/dx/dex/code/CodeAddress;-><init>(Lcom/android/dx/rop/code/SourcePosition;)V

    #@41
    aput-object v7, v6, v5

    #@43
    add-int/lit8 v0, v0, 0x1

    #@45
    goto :goto_a

    #@46
    :cond_46
    return-void
.end method


# virtual methods
.method public getEnd(I)Lcom/android/dx/dex/code/CodeAddress;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/BlockAddresses;->ends:[Lcom/android/dx/dex/code/CodeAddress;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public getEnd(Lcom/android/dx/rop/code/BasicBlock;)Lcom/android/dx/dex/code/CodeAddress;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/BlockAddresses;->ends:[Lcom/android/dx/dex/code/CodeAddress;

    #@2
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    #@5
    move-result v1

    #@6
    aget-object v0, v0, v1

    #@8
    return-object v0
.end method

.method public getLast(I)Lcom/android/dx/dex/code/CodeAddress;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/BlockAddresses;->lasts:[Lcom/android/dx/dex/code/CodeAddress;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public getLast(Lcom/android/dx/rop/code/BasicBlock;)Lcom/android/dx/dex/code/CodeAddress;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/BlockAddresses;->lasts:[Lcom/android/dx/dex/code/CodeAddress;

    #@2
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    #@5
    move-result v1

    #@6
    aget-object v0, v0, v1

    #@8
    return-object v0
.end method

.method public getStart(I)Lcom/android/dx/dex/code/CodeAddress;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/BlockAddresses;->starts:[Lcom/android/dx/dex/code/CodeAddress;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public getStart(Lcom/android/dx/rop/code/BasicBlock;)Lcom/android/dx/dex/code/CodeAddress;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/BlockAddresses;->starts:[Lcom/android/dx/dex/code/CodeAddress;

    #@2
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    #@5
    move-result v1

    #@6
    aget-object v0, v0, v1

    #@8
    return-object v0
.end method
