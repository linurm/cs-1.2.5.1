.class public final Lcom/android/dx/ssa/Dominators;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/ssa/Dominators$DFSInfo;,
        Lcom/android/dx/ssa/Dominators$DfsWalker;
    }
.end annotation


# instance fields
.field private final blocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation
.end field

.field private final domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

.field private final info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

.field private final meth:Lcom/android/dx/ssa/SsaMethod;

.field private final postdom:Z

.field private final vertex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/dx/ssa/SsaMethod;[Lcom/android/dx/ssa/DomFront$DomInfo;Z)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/android/dx/ssa/Dominators;->meth:Lcom/android/dx/ssa/SsaMethod;

    #@5
    iput-object p2, p0, Lcom/android/dx/ssa/Dominators;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    #@7
    iput-boolean p3, p0, Lcom/android/dx/ssa/Dominators;->postdom:Z

    #@9
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/dx/ssa/Dominators;->blocks:Ljava/util/ArrayList;

    #@f
    iget-object v0, p0, Lcom/android/dx/ssa/Dominators;->blocks:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v0

    #@15
    add-int/lit8 v0, v0, 0x2

    #@17
    new-array v0, v0, [Lcom/android/dx/ssa/Dominators$DFSInfo;

    #@19
    iput-object v0, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    #@1b
    new-instance v0, Ljava/util/ArrayList;

    #@1d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@20
    iput-object v0, p0, Lcom/android/dx/ssa/Dominators;->vertex:Ljava/util/ArrayList;

    #@22
    return-void
.end method

.method static synthetic access$100(Lcom/android/dx/ssa/Dominators;)Ljava/util/ArrayList;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/Dominators;->vertex:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic access$200(Lcom/android/dx/ssa/Dominators;)[Lcom/android/dx/ssa/Dominators$DFSInfo;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    #@2
    return-object v0
.end method

.method private compress(Lcom/android/dx/ssa/SsaBasicBlock;)V
    .registers 10

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    #@2
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@5
    move-result v1

    #@6
    aget-object v0, v0, v1

    #@8
    iget-object v1, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    #@a
    iget-object v0, v0, Lcom/android/dx/ssa/Dominators$DFSInfo;->ancestor:Lcom/android/dx/ssa/SsaBasicBlock;

    #@c
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@f
    move-result v0

    #@10
    aget-object v0, v1, v0

    #@12
    iget-object v0, v0, Lcom/android/dx/ssa/Dominators$DFSInfo;->ancestor:Lcom/android/dx/ssa/SsaBasicBlock;

    #@14
    if-eqz v0, :cond_7f

    #@16
    new-instance v1, Ljava/util/ArrayList;

    #@18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1b
    new-instance v2, Ljava/util/HashSet;

    #@1d
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@20
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@23
    :cond_23
    :goto_23
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@26
    move-result v0

    #@27
    if-nez v0, :cond_7f

    #@29
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@2c
    move-result v3

    #@2d
    add-int/lit8 v0, v3, -0x1

    #@2f
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@35
    iget-object v4, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    #@37
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@3a
    move-result v0

    #@3b
    aget-object v0, v4, v0

    #@3d
    iget-object v4, v0, Lcom/android/dx/ssa/Dominators$DFSInfo;->ancestor:Lcom/android/dx/ssa/SsaBasicBlock;

    #@3f
    iget-object v5, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    #@41
    invoke-virtual {v4}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@44
    move-result v6

    #@45
    aget-object v5, v5, v6

    #@47
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@4a
    move-result v6

    #@4b
    if-eqz v6, :cond_55

    #@4d
    iget-object v6, v5, Lcom/android/dx/ssa/Dominators$DFSInfo;->ancestor:Lcom/android/dx/ssa/SsaBasicBlock;

    #@4f
    if-eqz v6, :cond_55

    #@51
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@54
    goto :goto_23

    #@55
    :cond_55
    add-int/lit8 v3, v3, -0x1

    #@57
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@5a
    iget-object v3, v5, Lcom/android/dx/ssa/Dominators$DFSInfo;->ancestor:Lcom/android/dx/ssa/SsaBasicBlock;

    #@5c
    if-eqz v3, :cond_23

    #@5e
    iget-object v3, v5, Lcom/android/dx/ssa/Dominators$DFSInfo;->rep:Lcom/android/dx/ssa/SsaBasicBlock;

    #@60
    iget-object v4, v0, Lcom/android/dx/ssa/Dominators$DFSInfo;->rep:Lcom/android/dx/ssa/SsaBasicBlock;

    #@62
    iget-object v6, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    #@64
    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@67
    move-result v7

    #@68
    aget-object v6, v6, v7

    #@6a
    iget v6, v6, Lcom/android/dx/ssa/Dominators$DFSInfo;->semidom:I

    #@6c
    iget-object v7, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    #@6e
    invoke-virtual {v4}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@71
    move-result v4

    #@72
    aget-object v4, v7, v4

    #@74
    iget v4, v4, Lcom/android/dx/ssa/Dominators$DFSInfo;->semidom:I

    #@76
    if-ge v6, v4, :cond_7a

    #@78
    iput-object v3, v0, Lcom/android/dx/ssa/Dominators$DFSInfo;->rep:Lcom/android/dx/ssa/SsaBasicBlock;

    #@7a
    :cond_7a
    iget-object v3, v5, Lcom/android/dx/ssa/Dominators$DFSInfo;->ancestor:Lcom/android/dx/ssa/SsaBasicBlock;

    #@7c
    iput-object v3, v0, Lcom/android/dx/ssa/Dominators$DFSInfo;->ancestor:Lcom/android/dx/ssa/SsaBasicBlock;

    #@7e
    goto :goto_23

    #@7f
    :cond_7f
    return-void
.end method

.method private eval(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaBasicBlock;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    #@2
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@5
    move-result v1

    #@6
    aget-object v0, v0, v1

    #@8
    iget-object v1, v0, Lcom/android/dx/ssa/Dominators$DFSInfo;->ancestor:Lcom/android/dx/ssa/SsaBasicBlock;

    #@a
    if-nez v1, :cond_d

    #@c
    :goto_c
    return-object p1

    #@d
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/Dominators;->compress(Lcom/android/dx/ssa/SsaBasicBlock;)V

    #@10
    iget-object p1, v0, Lcom/android/dx/ssa/Dominators$DFSInfo;->rep:Lcom/android/dx/ssa/SsaBasicBlock;

    #@12
    goto :goto_c
.end method

.method private getPreds(Lcom/android/dx/ssa/SsaBasicBlock;)Ljava/util/BitSet;
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/android/dx/ssa/Dominators;->postdom:Z

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    #@7
    move-result-object v0

    #@8
    :goto_8
    return-object v0

    #@9
    :cond_9
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    #@c
    move-result-object v0

    #@d
    goto :goto_8
.end method

.method private getSuccs(Lcom/android/dx/ssa/SsaBasicBlock;)Ljava/util/BitSet;
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/android/dx/ssa/Dominators;->postdom:Z

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    #@7
    move-result-object v0

    #@8
    :goto_8
    return-object v0

    #@9
    :cond_9
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    #@c
    move-result-object v0

    #@d
    goto :goto_8
.end method

.method public static make(Lcom/android/dx/ssa/SsaMethod;[Lcom/android/dx/ssa/DomFront$DomInfo;Z)Lcom/android/dx/ssa/Dominators;
    .registers 4

    #@0
    new-instance v0, Lcom/android/dx/ssa/Dominators;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/android/dx/ssa/Dominators;-><init>(Lcom/android/dx/ssa/SsaMethod;[Lcom/android/dx/ssa/DomFront$DomInfo;Z)V

    #@5
    invoke-direct {v0}, Lcom/android/dx/ssa/Dominators;->run()V

    #@8
    return-object v0
.end method

.method private run()V
    .registers 11

    #@0
    const/4 v2, 0x2

    #@1
    iget-boolean v0, p0, Lcom/android/dx/ssa/Dominators;->postdom:Z

    #@3
    if-eqz v0, :cond_83

    #@5
    iget-object v0, p0, Lcom/android/dx/ssa/Dominators;->meth:Lcom/android/dx/ssa/SsaMethod;

    #@7
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getExitBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@a
    move-result-object v0

    #@b
    :goto_b
    if-eqz v0, :cond_20

    #@d
    iget-object v1, p0, Lcom/android/dx/ssa/Dominators;->vertex:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@12
    iget-object v1, p0, Lcom/android/dx/ssa/Dominators;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    #@14
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@17
    move-result v3

    #@18
    aget-object v1, v1, v3

    #@1a
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@1d
    move-result v0

    #@1e
    iput v0, v1, Lcom/android/dx/ssa/DomFront$DomInfo;->idom:I

    #@20
    :cond_20
    new-instance v0, Lcom/android/dx/ssa/Dominators$DfsWalker;

    #@22
    const/4 v1, 0x0

    #@23
    invoke-direct {v0, p0, v1}, Lcom/android/dx/ssa/Dominators$DfsWalker;-><init>(Lcom/android/dx/ssa/Dominators;Lcom/android/dx/ssa/Dominators$1;)V

    #@26
    iget-object v1, p0, Lcom/android/dx/ssa/Dominators;->meth:Lcom/android/dx/ssa/SsaMethod;

    #@28
    iget-boolean v3, p0, Lcom/android/dx/ssa/Dominators;->postdom:Z

    #@2a
    invoke-virtual {v1, v3, v0}, Lcom/android/dx/ssa/SsaMethod;->forEachBlockDepthFirst(ZLcom/android/dx/ssa/SsaBasicBlock$Visitor;)V

    #@2d
    iget-object v0, p0, Lcom/android/dx/ssa/Dominators;->vertex:Ljava/util/ArrayList;

    #@2f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@32
    move-result v0

    #@33
    add-int/lit8 v4, v0, -0x1

    #@35
    move v3, v4

    #@36
    :goto_36
    if-lt v3, v2, :cond_102

    #@38
    iget-object v0, p0, Lcom/android/dx/ssa/Dominators;->vertex:Ljava/util/ArrayList;

    #@3a
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3d
    move-result-object v0

    #@3e
    move-object v1, v0

    #@3f
    check-cast v1, Lcom/android/dx/ssa/SsaBasicBlock;

    #@41
    iget-object v0, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    #@43
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@46
    move-result v5

    #@47
    aget-object v6, v0, v5

    #@49
    invoke-direct {p0, v1}, Lcom/android/dx/ssa/Dominators;->getPreds(Lcom/android/dx/ssa/SsaBasicBlock;)Ljava/util/BitSet;

    #@4c
    move-result-object v7

    #@4d
    const/4 v0, 0x0

    #@4e
    invoke-virtual {v7, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    #@51
    move-result v0

    #@52
    move v5, v0

    #@53
    :goto_53
    if-ltz v5, :cond_8a

    #@55
    iget-object v0, p0, Lcom/android/dx/ssa/Dominators;->blocks:Ljava/util/ArrayList;

    #@57
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5a
    move-result-object v0

    #@5b
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@5d
    iget-object v8, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    #@5f
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@62
    move-result v9

    #@63
    aget-object v8, v8, v9

    #@65
    if-eqz v8, :cond_7b

    #@67
    iget-object v8, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    #@69
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/Dominators;->eval(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaBasicBlock;

    #@6c
    move-result-object v0

    #@6d
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@70
    move-result v0

    #@71
    aget-object v0, v8, v0

    #@73
    iget v0, v0, Lcom/android/dx/ssa/Dominators$DFSInfo;->semidom:I

    #@75
    iget v8, v6, Lcom/android/dx/ssa/Dominators$DFSInfo;->semidom:I

    #@77
    if-ge v0, v8, :cond_7b

    #@79
    iput v0, v6, Lcom/android/dx/ssa/Dominators$DFSInfo;->semidom:I

    #@7b
    :cond_7b
    add-int/lit8 v0, v5, 0x1

    #@7d
    invoke-virtual {v7, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    #@80
    move-result v0

    #@81
    move v5, v0

    #@82
    goto :goto_53

    #@83
    :cond_83
    iget-object v0, p0, Lcom/android/dx/ssa/Dominators;->meth:Lcom/android/dx/ssa/SsaMethod;

    #@85
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getEntryBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    #@88
    move-result-object v0

    #@89
    goto :goto_b

    #@8a
    :cond_8a
    iget-object v5, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    #@8c
    iget-object v0, p0, Lcom/android/dx/ssa/Dominators;->vertex:Ljava/util/ArrayList;

    #@8e
    iget v7, v6, Lcom/android/dx/ssa/Dominators$DFSInfo;->semidom:I

    #@90
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@93
    move-result-object v0

    #@94
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@96
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@99
    move-result v0

    #@9a
    aget-object v0, v5, v0

    #@9c
    iget-object v0, v0, Lcom/android/dx/ssa/Dominators$DFSInfo;->bucket:Ljava/util/ArrayList;

    #@9e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a1
    iget-object v0, v6, Lcom/android/dx/ssa/Dominators$DFSInfo;->parent:Lcom/android/dx/ssa/SsaBasicBlock;

    #@a3
    iput-object v0, v6, Lcom/android/dx/ssa/Dominators$DFSInfo;->ancestor:Lcom/android/dx/ssa/SsaBasicBlock;

    #@a5
    iget-object v0, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    #@a7
    iget-object v1, v6, Lcom/android/dx/ssa/Dominators$DFSInfo;->parent:Lcom/android/dx/ssa/SsaBasicBlock;

    #@a9
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@ac
    move-result v1

    #@ad
    aget-object v0, v0, v1

    #@af
    iget-object v1, v0, Lcom/android/dx/ssa/Dominators$DFSInfo;->bucket:Ljava/util/ArrayList;

    #@b1
    :goto_b1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@b4
    move-result v0

    #@b5
    if-nez v0, :cond_fd

    #@b7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@ba
    move-result v0

    #@bb
    add-int/lit8 v0, v0, -0x1

    #@bd
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@c0
    move-result-object v0

    #@c1
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@c3
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/Dominators;->eval(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaBasicBlock;

    #@c6
    move-result-object v5

    #@c7
    iget-object v7, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    #@c9
    invoke-virtual {v5}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@cc
    move-result v8

    #@cd
    aget-object v7, v7, v8

    #@cf
    iget v7, v7, Lcom/android/dx/ssa/Dominators$DFSInfo;->semidom:I

    #@d1
    iget-object v8, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    #@d3
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@d6
    move-result v9

    #@d7
    aget-object v8, v8, v9

    #@d9
    iget v8, v8, Lcom/android/dx/ssa/Dominators$DFSInfo;->semidom:I

    #@db
    if-ge v7, v8, :cond_ec

    #@dd
    iget-object v7, p0, Lcom/android/dx/ssa/Dominators;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    #@df
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@e2
    move-result v0

    #@e3
    aget-object v0, v7, v0

    #@e5
    invoke-virtual {v5}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@e8
    move-result v5

    #@e9
    iput v5, v0, Lcom/android/dx/ssa/DomFront$DomInfo;->idom:I

    #@eb
    goto :goto_b1

    #@ec
    :cond_ec
    iget-object v5, p0, Lcom/android/dx/ssa/Dominators;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    #@ee
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@f1
    move-result v0

    #@f2
    aget-object v0, v5, v0

    #@f4
    iget-object v5, v6, Lcom/android/dx/ssa/Dominators$DFSInfo;->parent:Lcom/android/dx/ssa/SsaBasicBlock;

    #@f6
    invoke-virtual {v5}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@f9
    move-result v5

    #@fa
    iput v5, v0, Lcom/android/dx/ssa/DomFront$DomInfo;->idom:I

    #@fc
    goto :goto_b1

    #@fd
    :cond_fd
    add-int/lit8 v0, v3, -0x1

    #@ff
    move v3, v0

    #@100
    goto/16 :goto_36

    #@102
    :cond_102
    :goto_102
    if-gt v2, v4, :cond_14c

    #@104
    iget-object v0, p0, Lcom/android/dx/ssa/Dominators;->vertex:Ljava/util/ArrayList;

    #@106
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@109
    move-result-object v0

    #@10a
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@10c
    iget-object v1, p0, Lcom/android/dx/ssa/Dominators;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    #@10e
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@111
    move-result v3

    #@112
    aget-object v1, v1, v3

    #@114
    iget v3, v1, Lcom/android/dx/ssa/DomFront$DomInfo;->idom:I

    #@116
    iget-object v1, p0, Lcom/android/dx/ssa/Dominators;->vertex:Ljava/util/ArrayList;

    #@118
    iget-object v5, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    #@11a
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@11d
    move-result v6

    #@11e
    aget-object v5, v5, v6

    #@120
    iget v5, v5, Lcom/android/dx/ssa/Dominators$DFSInfo;->semidom:I

    #@122
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@125
    move-result-object v1

    #@126
    check-cast v1, Lcom/android/dx/ssa/SsaBasicBlock;

    #@128
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@12b
    move-result v1

    #@12c
    if-eq v3, v1, :cond_148

    #@12e
    iget-object v1, p0, Lcom/android/dx/ssa/Dominators;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    #@130
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@133
    move-result v3

    #@134
    aget-object v1, v1, v3

    #@136
    iget-object v3, p0, Lcom/android/dx/ssa/Dominators;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    #@138
    iget-object v5, p0, Lcom/android/dx/ssa/Dominators;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    #@13a
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@13d
    move-result v0

    #@13e
    aget-object v0, v5, v0

    #@140
    iget v0, v0, Lcom/android/dx/ssa/DomFront$DomInfo;->idom:I

    #@142
    aget-object v0, v3, v0

    #@144
    iget v0, v0, Lcom/android/dx/ssa/DomFront$DomInfo;->idom:I

    #@146
    iput v0, v1, Lcom/android/dx/ssa/DomFront$DomInfo;->idom:I

    #@148
    :cond_148
    add-int/lit8 v0, v2, 0x1

    #@14a
    move v2, v0

    #@14b
    goto :goto_102

    #@14c
    :cond_14c
    return-void
.end method
