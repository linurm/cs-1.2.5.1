.class public Lcom/android/dx/ssa/DomFront;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/ssa/DomFront$DomInfo;
    }
.end annotation


# static fields
.field private static DEBUG:Z


# instance fields
.field private final domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

.field private final meth:Lcom/android/dx/ssa/SsaMethod;

.field private final nodes:Ljava/util/ArrayList;
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
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Lcom/android/dx/ssa/DomFront;->DEBUG:Z

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/dx/ssa/SsaMethod;)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/android/dx/ssa/DomFront;->meth:Lcom/android/dx/ssa/SsaMethod;

    #@5
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lcom/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    #@b
    iget-object v0, p0, Lcom/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v1

    #@11
    new-array v0, v1, [Lcom/android/dx/ssa/DomFront$DomInfo;

    #@13
    iput-object v0, p0, Lcom/android/dx/ssa/DomFront;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    #@15
    const/4 v0, 0x0

    #@16
    :goto_16
    if-ge v0, v1, :cond_24

    #@18
    iget-object v2, p0, Lcom/android/dx/ssa/DomFront;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    #@1a
    new-instance v3, Lcom/android/dx/ssa/DomFront$DomInfo;

    #@1c
    invoke-direct {v3}, Lcom/android/dx/ssa/DomFront$DomInfo;-><init>()V

    #@1f
    aput-object v3, v2, v0

    #@21
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_16

    #@24
    :cond_24
    return-void
.end method

.method private buildDomTree()V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v3

    #@6
    const/4 v0, 0x0

    #@7
    move v2, v0

    #@8
    :goto_8
    if-ge v2, v3, :cond_2d

    #@a
    iget-object v0, p0, Lcom/android/dx/ssa/DomFront;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    #@c
    aget-object v0, v0, v2

    #@e
    iget v1, v0, Lcom/android/dx/ssa/DomFront$DomInfo;->idom:I

    #@10
    const/4 v4, -0x1

    #@11
    if-ne v1, v4, :cond_17

    #@13
    :goto_13
    add-int/lit8 v0, v2, 0x1

    #@15
    move v2, v0

    #@16
    goto :goto_8

    #@17
    :cond_17
    iget-object v1, p0, Lcom/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    #@19
    iget v0, v0, Lcom/android/dx/ssa/DomFront$DomInfo;->idom:I

    #@1b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@21
    iget-object v1, p0, Lcom/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v1

    #@27
    check-cast v1, Lcom/android/dx/ssa/SsaBasicBlock;

    #@29
    invoke-virtual {v0, v1}, Lcom/android/dx/ssa/SsaBasicBlock;->addDomChild(Lcom/android/dx/ssa/SsaBasicBlock;)V

    #@2c
    goto :goto_13

    #@2d
    :cond_2d
    return-void
.end method

.method private calcDomFronts()V
    .registers 9

    #@0
    const/4 v3, 0x0

    #@1
    iget-object v0, p0, Lcom/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v4

    #@7
    move v2, v3

    #@8
    :goto_8
    if-ge v2, v4, :cond_4e

    #@a
    iget-object v0, p0, Lcom/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@12
    iget-object v1, p0, Lcom/android/dx/ssa/DomFront;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    #@14
    aget-object v5, v1, v2

    #@16
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    #@19
    move-result-object v6

    #@1a
    invoke-virtual {v6}, Ljava/util/BitSet;->cardinality()I

    #@1d
    move-result v0

    #@1e
    const/4 v1, 0x1

    #@1f
    if-le v0, v1, :cond_4a

    #@21
    invoke-virtual {v6, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    #@24
    move-result v1

    #@25
    :goto_25
    if-ltz v1, :cond_4a

    #@27
    move v0, v1

    #@28
    :goto_28
    iget v7, v5, Lcom/android/dx/ssa/DomFront$DomInfo;->idom:I

    #@2a
    if-eq v0, v7, :cond_2f

    #@2c
    const/4 v7, -0x1

    #@2d
    if-ne v0, v7, :cond_36

    #@2f
    :cond_2f
    add-int/lit8 v0, v1, 0x1

    #@31
    invoke-virtual {v6, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    #@34
    move-result v1

    #@35
    goto :goto_25

    #@36
    :cond_36
    iget-object v7, p0, Lcom/android/dx/ssa/DomFront;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    #@38
    aget-object v0, v7, v0

    #@3a
    iget-object v7, v0, Lcom/android/dx/ssa/DomFront$DomInfo;->dominanceFrontiers:Lcom/android/dx/util/IntSet;

    #@3c
    invoke-interface {v7, v2}, Lcom/android/dx/util/IntSet;->has(I)Z

    #@3f
    move-result v7

    #@40
    if-nez v7, :cond_2f

    #@42
    iget-object v7, v0, Lcom/android/dx/ssa/DomFront$DomInfo;->dominanceFrontiers:Lcom/android/dx/util/IntSet;

    #@44
    invoke-interface {v7, v2}, Lcom/android/dx/util/IntSet;->add(I)V

    #@47
    iget v0, v0, Lcom/android/dx/ssa/DomFront$DomInfo;->idom:I

    #@49
    goto :goto_28

    #@4a
    :cond_4a
    add-int/lit8 v0, v2, 0x1

    #@4c
    move v2, v0

    #@4d
    goto :goto_8

    #@4e
    :cond_4e
    return-void
.end method

.method private debugPrintDomChildren()V
    .registers 9

    #@0
    const/4 v3, 0x0

    #@1
    iget-object v0, p0, Lcom/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v5

    #@7
    move v4, v3

    #@8
    :goto_8
    if-ge v4, v5, :cond_69

    #@a
    iget-object v0, p0, Lcom/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@12
    new-instance v6, Ljava/lang/StringBuffer;

    #@14
    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    #@17
    const/16 v1, 0x7b

    #@19
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1c
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getDomChildren()Ljava/util/ArrayList;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@23
    move-result-object v7

    #@24
    move v2, v3

    #@25
    :goto_25
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v1

    #@29
    if-eqz v1, :cond_3e

    #@2b
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v1

    #@2f
    check-cast v1, Lcom/android/dx/ssa/SsaBasicBlock;

    #@31
    if-eqz v2, :cond_38

    #@33
    const/16 v2, 0x2c

    #@35
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@38
    :cond_38
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@3b
    const/4 v1, 0x1

    #@3c
    move v2, v1

    #@3d
    goto :goto_25

    #@3e
    :cond_3e
    const/16 v1, 0x7d

    #@40
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@43
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@45
    new-instance v2, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string v7, "domChildren["

    #@4c
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    const-string v2, "]: "

    #@56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v0

    #@62
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@65
    add-int/lit8 v0, v4, 0x1

    #@67
    move v4, v0

    #@68
    goto :goto_8

    #@69
    :cond_69
    return-void
.end method


# virtual methods
.method public run()[Lcom/android/dx/ssa/DomFront$DomInfo;
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v3

    #@7
    sget-boolean v0, Lcom/android/dx/ssa/DomFront;->DEBUG:Z

    #@9
    if-eqz v0, :cond_40

    #@b
    move v2, v1

    #@c
    :goto_c
    if-ge v2, v3, :cond_40

    #@e
    iget-object v0, p0, Lcom/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    #@16
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@18
    new-instance v5, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string v6, "pred["

    #@1f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v5

    #@27
    const-string v6, "]: "

    #@29
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3c
    add-int/lit8 v0, v2, 0x1

    #@3e
    move v2, v0

    #@3f
    goto :goto_c

    #@40
    :cond_40
    iget-object v0, p0, Lcom/android/dx/ssa/DomFront;->meth:Lcom/android/dx/ssa/SsaMethod;

    #@42
    iget-object v2, p0, Lcom/android/dx/ssa/DomFront;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    #@44
    invoke-static {v0, v2, v1}, Lcom/android/dx/ssa/Dominators;->make(Lcom/android/dx/ssa/SsaMethod;[Lcom/android/dx/ssa/DomFront$DomInfo;Z)Lcom/android/dx/ssa/Dominators;

    #@47
    sget-boolean v0, Lcom/android/dx/ssa/DomFront;->DEBUG:Z

    #@49
    if-eqz v0, :cond_79

    #@4b
    move v0, v1

    #@4c
    :goto_4c
    if-ge v0, v3, :cond_79

    #@4e
    iget-object v2, p0, Lcom/android/dx/ssa/DomFront;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    #@50
    aget-object v2, v2, v0

    #@52
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@54
    new-instance v5, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string v6, "idom["

    #@5b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v5

    #@5f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    const-string v6, "]: "

    #@65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v5

    #@69
    iget v2, v2, Lcom/android/dx/ssa/DomFront$DomInfo;->idom:I

    #@6b
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v2

    #@73
    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@76
    add-int/lit8 v0, v0, 0x1

    #@78
    goto :goto_4c

    #@79
    :cond_79
    invoke-direct {p0}, Lcom/android/dx/ssa/DomFront;->buildDomTree()V

    #@7c
    sget-boolean v0, Lcom/android/dx/ssa/DomFront;->DEBUG:Z

    #@7e
    if-eqz v0, :cond_83

    #@80
    invoke-direct {p0}, Lcom/android/dx/ssa/DomFront;->debugPrintDomChildren()V

    #@83
    :cond_83
    move v0, v1

    #@84
    :goto_84
    if-ge v0, v3, :cond_93

    #@86
    iget-object v2, p0, Lcom/android/dx/ssa/DomFront;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    #@88
    aget-object v2, v2, v0

    #@8a
    invoke-static {v3}, Lcom/android/dx/ssa/SetFactory;->makeDomFrontSet(I)Lcom/android/dx/util/IntSet;

    #@8d
    move-result-object v4

    #@8e
    iput-object v4, v2, Lcom/android/dx/ssa/DomFront$DomInfo;->dominanceFrontiers:Lcom/android/dx/util/IntSet;

    #@90
    add-int/lit8 v0, v0, 0x1

    #@92
    goto :goto_84

    #@93
    :cond_93
    invoke-direct {p0}, Lcom/android/dx/ssa/DomFront;->calcDomFronts()V

    #@96
    sget-boolean v0, Lcom/android/dx/ssa/DomFront;->DEBUG:Z

    #@98
    if-eqz v0, :cond_c8

    #@9a
    move v0, v1

    #@9b
    :goto_9b
    if-ge v0, v3, :cond_c8

    #@9d
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@9f
    new-instance v2, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string v4, "df["

    #@a6
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v2

    #@aa
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v2

    #@ae
    const-string v4, "]: "

    #@b0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v2

    #@b4
    iget-object v4, p0, Lcom/android/dx/ssa/DomFront;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    #@b6
    aget-object v4, v4, v0

    #@b8
    iget-object v4, v4, Lcom/android/dx/ssa/DomFront$DomInfo;->dominanceFrontiers:Lcom/android/dx/util/IntSet;

    #@ba
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v2

    #@be
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v2

    #@c2
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c5
    add-int/lit8 v0, v0, 0x1

    #@c7
    goto :goto_9b

    #@c8
    :cond_c8
    iget-object v0, p0, Lcom/android/dx/ssa/DomFront;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    #@ca
    return-object v0
.end method
