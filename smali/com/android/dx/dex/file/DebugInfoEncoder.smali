.class public final Lcom/android/dx/dex/file/DebugInfoEncoder;
.super Ljava/lang/Object;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private address:I

.field private annotateTo:Lcom/android/dx/util/AnnotatedOutput;

.field private final codeSize:I

.field private debugPrint:Ljava/io/PrintWriter;

.field private final desc:Lcom/android/dx/rop/type/Prototype;

.field private final file:Lcom/android/dx/dex/file/DexFile;

.field private final isStatic:Z

.field private final lastEntryForReg:[Lcom/android/dx/dex/code/LocalList$Entry;

.field private line:I

.field private final locals:Lcom/android/dx/dex/code/LocalList;

.field private final output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

.field private final positions:Lcom/android/dx/dex/code/PositionList;

.field private prefix:Ljava/lang/String;

.field private final regSize:I

.field private shouldConsume:Z


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/code/PositionList;Lcom/android/dx/dex/code/LocalList;Lcom/android/dx/dex/file/DexFile;IIZLcom/android/dx/rop/cst/CstMethodRef;)V
    .registers 9

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    #@6
    const/4 v0, 0x1

    #@7
    iput v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->line:I

    #@9
    iput-object p1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->positions:Lcom/android/dx/dex/code/PositionList;

    #@b
    iput-object p2, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/android/dx/dex/code/LocalList;

    #@d
    iput-object p3, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    #@f
    invoke-virtual {p7}, Lcom/android/dx/rop/cst/CstMethodRef;->getPrototype()Lcom/android/dx/rop/type/Prototype;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->desc:Lcom/android/dx/rop/type/Prototype;

    #@15
    iput-boolean p6, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->isStatic:Z

    #@17
    iput p4, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->codeSize:I

    #@19
    iput p5, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->regSize:I

    #@1b
    new-instance v0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@1d
    invoke-direct {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;-><init>()V

    #@20
    iput-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@22
    new-array v0, p5, [Lcom/android/dx/dex/code/LocalList$Entry;

    #@24
    iput-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->lastEntryForReg:[Lcom/android/dx/dex/code/LocalList$Entry;

    #@26
    return-void
.end method

.method private annotate(ILjava/lang/String;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->prefix:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_17

    #@4
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->prefix:Ljava/lang/String;

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object p2

    #@17
    :cond_17
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/android/dx/util/AnnotatedOutput;

    #@19
    if-eqz v0, :cond_24

    #@1b
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/android/dx/util/AnnotatedOutput;

    #@1d
    iget-boolean v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->shouldConsume:Z

    #@1f
    if-eqz v1, :cond_2e

    #@21
    :goto_21
    invoke-interface {v0, p1, p2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@24
    :cond_24
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    #@26
    if-eqz v0, :cond_2d

    #@28
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    #@2a
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2d
    :cond_2d
    return-void

    #@2e
    :cond_2e
    const/4 p1, 0x0

    #@2f
    goto :goto_21
.end method

.method private buildSortedPositions()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/dex/code/PositionList$Entry;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->positions:Lcom/android/dx/dex/code/PositionList;

    #@3
    if-nez v0, :cond_19

    #@5
    move v0, v1

    #@6
    :goto_6
    new-instance v2, Ljava/util/ArrayList;

    #@8
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@b
    :goto_b
    if-ge v1, v0, :cond_20

    #@d
    iget-object v3, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->positions:Lcom/android/dx/dex/code/PositionList;

    #@f
    invoke-virtual {v3, v1}, Lcom/android/dx/dex/code/PositionList;->get(I)Lcom/android/dx/dex/code/PositionList$Entry;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_b

    #@19
    :cond_19
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->positions:Lcom/android/dx/dex/code/PositionList;

    #@1b
    invoke-virtual {v0}, Lcom/android/dx/dex/code/PositionList;->size()I

    #@1e
    move-result v0

    #@1f
    goto :goto_6

    #@20
    :cond_20
    new-instance v0, Lcom/android/dx/dex/file/DebugInfoEncoder$1;

    #@22
    invoke-direct {v0, p0}, Lcom/android/dx/dex/file/DebugInfoEncoder$1;-><init>(Lcom/android/dx/dex/file/DebugInfoEncoder;)V

    #@25
    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@28
    return-object v2
.end method

.method private static computeOpcode(II)I
    .registers 4

    #@0
    const/4 v0, -0x4

    #@1
    if-lt p0, v0, :cond_7

    #@3
    const/16 v0, 0xa

    #@5
    if-le p0, v0, :cond_f

    #@7
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    #@9
    const-string v1, "Parameter out of range"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    :cond_f
    add-int/lit8 v0, p0, 0x4

    #@11
    mul-int/lit8 v1, p1, 0xf

    #@13
    add-int/2addr v0, v1

    #@14
    add-int/lit8 v0, v0, 0xa

    #@16
    return v0
.end method

.method private convert0()[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v6, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    const v3, 0x7fffffff

    #@5
    invoke-direct {p0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->buildSortedPositions()Ljava/util/ArrayList;

    #@8
    move-result-object v5

    #@9
    invoke-direct {p0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->extractMethodArguments()Ljava/util/ArrayList;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v5, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitHeader(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    #@10
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@12
    const/4 v2, 0x7

    #@13
    invoke-virtual {v1, v2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeByte(I)V

    #@16
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/android/dx/util/AnnotatedOutput;

    #@18
    if-nez v1, :cond_1e

    #@1a
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    #@1c
    if-eqz v1, :cond_31

    #@1e
    :cond_1e
    const-string v1, "%04x: prologue end"

    #@20
    new-array v2, v6, [Ljava/lang/Object;

    #@22
    iget v4, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    #@24
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27
    move-result-object v4

    #@28
    aput-object v4, v2, v0

    #@2a
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-direct {p0, v6, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    #@31
    :cond_31
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@34
    move-result v6

    #@35
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/android/dx/dex/code/LocalList;

    #@37
    invoke-virtual {v1}, Lcom/android/dx/dex/code/LocalList;->size()I

    #@3a
    move-result v7

    #@3b
    move v2, v0

    #@3c
    :goto_3c
    invoke-direct {p0, v0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitLocalsAtAddress(I)I

    #@3f
    move-result v1

    #@40
    invoke-direct {p0, v2, v5}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitPositionsAtAddress(ILjava/util/ArrayList;)I

    #@43
    move-result v2

    #@44
    if-ge v1, v7, :cond_90

    #@46
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/android/dx/dex/code/LocalList;

    #@48
    invoke-virtual {v0, v1}, Lcom/android/dx/dex/code/LocalList;->get(I)Lcom/android/dx/dex/code/LocalList$Entry;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    #@4f
    move-result v0

    #@50
    move v4, v0

    #@51
    :goto_51
    if-ge v2, v6, :cond_8e

    #@53
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@56
    move-result-object v0

    #@57
    check-cast v0, Lcom/android/dx/dex/code/PositionList$Entry;

    #@59
    invoke-virtual {v0}, Lcom/android/dx/dex/code/PositionList$Entry;->getAddress()I

    #@5c
    move-result v0

    #@5d
    :goto_5d
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    #@60
    move-result v8

    #@61
    if-ne v8, v3, :cond_6d

    #@63
    :cond_63
    invoke-direct {p0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitEndSequence()V

    #@66
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@68
    invoke-virtual {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->toByteArray()[B

    #@6b
    move-result-object v0

    #@6c
    return-object v0

    #@6d
    :cond_6d
    iget v9, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->codeSize:I

    #@6f
    if-ne v8, v9, :cond_75

    #@71
    if-ne v4, v3, :cond_75

    #@73
    if-eq v0, v3, :cond_63

    #@75
    :cond_75
    if-ne v8, v0, :cond_85

    #@77
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7a
    move-result-object v0

    #@7b
    check-cast v0, Lcom/android/dx/dex/code/PositionList$Entry;

    #@7d
    invoke-direct {p0, v0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitPosition(Lcom/android/dx/dex/code/PositionList$Entry;)V

    #@80
    add-int/lit8 v0, v2, 0x1

    #@82
    :goto_82
    move v2, v0

    #@83
    move v0, v1

    #@84
    goto :goto_3c

    #@85
    :cond_85
    iget v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    #@87
    sub-int v0, v8, v0

    #@89
    invoke-direct {p0, v0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitAdvancePc(I)V

    #@8c
    move v0, v2

    #@8d
    goto :goto_82

    #@8e
    :cond_8e
    move v0, v3

    #@8f
    goto :goto_5d

    #@90
    :cond_90
    move v4, v3

    #@91
    goto :goto_51
.end method

.method private emitAdvanceLine(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@8
    const/4 v2, 0x2

    #@9
    invoke-virtual {v1, v2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeByte(I)V

    #@c
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@e
    invoke-virtual {v1, p1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeSleb128(I)I

    #@11
    iget v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->line:I

    #@13
    add-int/2addr v1, p1

    #@14
    iput v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->line:I

    #@16
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/android/dx/util/AnnotatedOutput;

    #@18
    if-nez v1, :cond_1e

    #@1a
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    #@1c
    if-eqz v1, :cond_3b

    #@1e
    :cond_1e
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@20
    invoke-virtual {v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    #@23
    move-result v1

    #@24
    sub-int v0, v1, v0

    #@26
    const-string v1, "line = %d"

    #@28
    const/4 v2, 0x1

    #@29
    new-array v2, v2, [Ljava/lang/Object;

    #@2b
    const/4 v3, 0x0

    #@2c
    iget v4, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->line:I

    #@2e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@31
    move-result-object v4

    #@32
    aput-object v4, v2, v3

    #@34
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    #@3b
    :cond_3b
    return-void
.end method

.method private emitAdvancePc(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v2, 0x1

    #@1
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@3
    invoke-virtual {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    #@6
    move-result v0

    #@7
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@9
    invoke-virtual {v1, v2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeByte(I)V

    #@c
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@e
    invoke-virtual {v1, p1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    #@11
    iget v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    #@13
    add-int/2addr v1, p1

    #@14
    iput v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    #@16
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/android/dx/util/AnnotatedOutput;

    #@18
    if-nez v1, :cond_1e

    #@1a
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    #@1c
    if-eqz v1, :cond_3a

    #@1e
    :cond_1e
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@20
    invoke-virtual {v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    #@23
    move-result v1

    #@24
    sub-int v0, v1, v0

    #@26
    const-string v1, "%04x: advance pc"

    #@28
    new-array v2, v2, [Ljava/lang/Object;

    #@2a
    const/4 v3, 0x0

    #@2b
    iget v4, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    #@2d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30
    move-result-object v4

    #@31
    aput-object v4, v2, v3

    #@33
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    #@3a
    :cond_3a
    return-void
.end method

.method private emitEndSequence()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeByte(I)V

    #@6
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/android/dx/util/AnnotatedOutput;

    #@8
    if-nez v0, :cond_e

    #@a
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    #@c
    if-eqz v0, :cond_14

    #@e
    :cond_e
    const/4 v0, 0x1

    #@f
    const-string v1, "end sequence"

    #@11
    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    #@14
    :cond_14
    return-void
.end method

.method private emitHeader(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/dex/code/PositionList$Entry;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/dex/code/LocalList$Entry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v3, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/android/dx/util/AnnotatedOutput;

    #@5
    if-nez v0, :cond_b

    #@7
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    #@9
    if-eqz v0, :cond_11e

    #@b
    :cond_b
    move v1, v3

    #@c
    :goto_c
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@e
    invoke-virtual {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    #@11
    move-result v4

    #@12
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@15
    move-result v0

    #@16
    if-lez v0, :cond_28

    #@18
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Lcom/android/dx/dex/code/PositionList$Entry;

    #@1e
    invoke-virtual {v0}, Lcom/android/dx/dex/code/PositionList$Entry;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Lcom/android/dx/rop/code/SourcePosition;->getLine()I

    #@25
    move-result v0

    #@26
    iput v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->line:I

    #@28
    :cond_28
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@2a
    iget v6, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->line:I

    #@2c
    invoke-virtual {v0, v6}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    #@2f
    if-eqz v1, :cond_50

    #@31
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@33
    invoke-virtual {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    #@36
    move-result v0

    #@37
    sub-int/2addr v0, v4

    #@38
    new-instance v4, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string v6, "line_start: "

    #@3f
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    iget v6, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->line:I

    #@45
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v4

    #@4d
    invoke-direct {p0, v0, v4}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    #@50
    :cond_50
    invoke-direct {p0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->getParamBase()I

    #@53
    move-result v4

    #@54
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->desc:Lcom/android/dx/rop/type/Prototype;

    #@56
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/android/dx/rop/type/StdTypeList;

    #@59
    move-result-object v6

    #@5a
    invoke-virtual {v6}, Lcom/android/dx/rop/type/StdTypeList;->size()I

    #@5d
    move-result v7

    #@5e
    iget-boolean v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->isStatic:Z

    #@60
    if-nez v0, :cond_14a

    #@62
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@65
    move-result-object v8

    #@66
    :cond_66
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@69
    move-result v0

    #@6a
    if-eqz v0, :cond_7c

    #@6c
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6f
    move-result-object v0

    #@70
    check-cast v0, Lcom/android/dx/dex/code/LocalList$Entry;

    #@72
    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    #@75
    move-result v9

    #@76
    if-ne v4, v9, :cond_66

    #@78
    iget-object v8, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->lastEntryForReg:[Lcom/android/dx/dex/code/LocalList$Entry;

    #@7a
    aput-object v0, v8, v4

    #@7c
    :cond_7c
    add-int/lit8 v0, v4, 0x1

    #@7e
    :goto_7e
    iget-object v4, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@80
    invoke-virtual {v4}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    #@83
    move-result v4

    #@84
    iget-object v8, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@86
    invoke-virtual {v8, v7}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    #@89
    if-eqz v1, :cond_a4

    #@8b
    iget-object v8, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@8d
    invoke-virtual {v8}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    #@90
    move-result v8

    #@91
    sub-int v4, v8, v4

    #@93
    const-string v8, "parameters_size: %04x"

    #@95
    new-array v3, v3, [Ljava/lang/Object;

    #@97
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9a
    move-result-object v9

    #@9b
    aput-object v9, v3, v2

    #@9d
    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@a0
    move-result-object v3

    #@a1
    invoke-direct {p0, v4, v3}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    #@a4
    :cond_a4
    move v3, v0

    #@a5
    move v4, v2

    #@a6
    :goto_a6
    if-ge v4, v7, :cond_132

    #@a8
    invoke-virtual {v6, v4}, Lcom/android/dx/rop/type/StdTypeList;->get(I)Lcom/android/dx/rop/type/Type;

    #@ab
    move-result-object v8

    #@ac
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@ae
    invoke-virtual {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    #@b1
    move-result v9

    #@b2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@b5
    move-result-object v10

    #@b6
    :cond_b6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@b9
    move-result v0

    #@ba
    if-eqz v0, :cond_148

    #@bc
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@bf
    move-result-object v0

    #@c0
    check-cast v0, Lcom/android/dx/dex/code/LocalList$Entry;

    #@c2
    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    #@c5
    move-result v11

    #@c6
    if-ne v3, v11, :cond_b6

    #@c8
    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalList$Entry;->getSignature()Lcom/android/dx/rop/cst/CstString;

    #@cb
    move-result-object v10

    #@cc
    if-eqz v10, :cond_121

    #@ce
    invoke-direct {p0, v5}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitStringIndex(Lcom/android/dx/rop/cst/CstString;)V

    #@d1
    :goto_d1
    iget-object v10, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->lastEntryForReg:[Lcom/android/dx/dex/code/LocalList$Entry;

    #@d3
    aput-object v0, v10, v3

    #@d5
    :goto_d5
    if-nez v0, :cond_da

    #@d7
    invoke-direct {p0, v5}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitStringIndex(Lcom/android/dx/rop/cst/CstString;)V

    #@da
    :cond_da
    if-eqz v1, :cond_114

    #@dc
    if-eqz v0, :cond_e4

    #@de
    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalList$Entry;->getSignature()Lcom/android/dx/rop/cst/CstString;

    #@e1
    move-result-object v10

    #@e2
    if-eqz v10, :cond_129

    #@e4
    :cond_e4
    const-string v0, "<unnamed>"

    #@e6
    :goto_e6
    iget-object v10, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@e8
    invoke-virtual {v10}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    #@eb
    move-result v10

    #@ec
    sub-int v9, v10, v9

    #@ee
    new-instance v10, Ljava/lang/StringBuilder;

    #@f0
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@f3
    const-string v11, "parameter "

    #@f5
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v10

    #@f9
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v0

    #@fd
    const-string v10, " "

    #@ff
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v0

    #@103
    const-string v10, "v"

    #@105
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v0

    #@109
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v0

    #@10d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@110
    move-result-object v0

    #@111
    invoke-direct {p0, v9, v0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    #@114
    :cond_114
    invoke-virtual {v8}, Lcom/android/dx/rop/type/Type;->getCategory()I

    #@117
    move-result v0

    #@118
    add-int/2addr v0, v3

    #@119
    add-int/lit8 v3, v4, 0x1

    #@11b
    move v4, v3

    #@11c
    move v3, v0

    #@11d
    goto :goto_a6

    #@11e
    :cond_11e
    move v1, v2

    #@11f
    goto/16 :goto_c

    #@121
    :cond_121
    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalList$Entry;->getName()Lcom/android/dx/rop/cst/CstString;

    #@124
    move-result-object v10

    #@125
    invoke-direct {p0, v10}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitStringIndex(Lcom/android/dx/rop/cst/CstString;)V

    #@128
    goto :goto_d1

    #@129
    :cond_129
    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalList$Entry;->getName()Lcom/android/dx/rop/cst/CstString;

    #@12c
    move-result-object v0

    #@12d
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    #@130
    move-result-object v0

    #@131
    goto :goto_e6

    #@132
    :cond_132
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->lastEntryForReg:[Lcom/android/dx/dex/code/LocalList$Entry;

    #@134
    array-length v1, v0

    #@135
    :goto_135
    if-ge v2, v1, :cond_14d

    #@137
    aget-object v3, v0, v2

    #@139
    if-nez v3, :cond_13e

    #@13b
    :cond_13b
    :goto_13b
    add-int/lit8 v2, v2, 0x1

    #@13d
    goto :goto_135

    #@13e
    :cond_13e
    invoke-virtual {v3}, Lcom/android/dx/dex/code/LocalList$Entry;->getSignature()Lcom/android/dx/rop/cst/CstString;

    #@141
    move-result-object v4

    #@142
    if-eqz v4, :cond_13b

    #@144
    invoke-direct {p0, v3}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitLocalStartExtended(Lcom/android/dx/dex/code/LocalList$Entry;)V

    #@147
    goto :goto_13b

    #@148
    :cond_148
    move-object v0, v5

    #@149
    goto :goto_d5

    #@14a
    :cond_14a
    move v0, v4

    #@14b
    goto/16 :goto_7e

    #@14d
    :cond_14d
    return-void
.end method

.method private emitLocalEnd(Lcom/android/dx/dex/code/LocalList$Entry;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@8
    const/4 v2, 0x5

    #@9
    invoke-virtual {v1, v2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeByte(I)V

    #@c
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@e
    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    #@11
    move-result v2

    #@12
    invoke-virtual {v1, v2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    #@15
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/android/dx/util/AnnotatedOutput;

    #@17
    if-nez v1, :cond_1d

    #@19
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    #@1b
    if-eqz v1, :cond_41

    #@1d
    :cond_1d
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@1f
    invoke-virtual {v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    #@22
    move-result v1

    #@23
    sub-int v0, v1, v0

    #@25
    const-string v1, "%04x: -local %s"

    #@27
    const/4 v2, 0x2

    #@28
    new-array v2, v2, [Ljava/lang/Object;

    #@2a
    const/4 v3, 0x0

    #@2b
    iget v4, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    #@2d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30
    move-result-object v4

    #@31
    aput-object v4, v2, v3

    #@33
    const/4 v3, 0x1

    #@34
    invoke-direct {p0, p1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->entryAnnotationString(Lcom/android/dx/dex/code/LocalList$Entry;)Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    aput-object v4, v2, v3

    #@3a
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    #@41
    :cond_41
    return-void
.end method

.method private emitLocalRestart(Lcom/android/dx/dex/code/LocalList$Entry;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@8
    const/4 v2, 0x6

    #@9
    invoke-virtual {v1, v2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeByte(I)V

    #@c
    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    #@f
    move-result v1

    #@10
    invoke-direct {p0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitUnsignedLeb128(I)V

    #@13
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/android/dx/util/AnnotatedOutput;

    #@15
    if-nez v1, :cond_1b

    #@17
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    #@19
    if-eqz v1, :cond_3f

    #@1b
    :cond_1b
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@1d
    invoke-virtual {v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    #@20
    move-result v1

    #@21
    sub-int v0, v1, v0

    #@23
    const-string v1, "%04x: +local restart %s"

    #@25
    const/4 v2, 0x2

    #@26
    new-array v2, v2, [Ljava/lang/Object;

    #@28
    const/4 v3, 0x0

    #@29
    iget v4, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    #@2b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e
    move-result-object v4

    #@2f
    aput-object v4, v2, v3

    #@31
    const/4 v3, 0x1

    #@32
    invoke-direct {p0, p1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->entryAnnotationString(Lcom/android/dx/dex/code/LocalList$Entry;)Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    aput-object v4, v2, v3

    #@38
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    #@3f
    :cond_3f
    return-void
.end method

.method private emitLocalStart(Lcom/android/dx/dex/code/LocalList$Entry;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getSignature()Lcom/android/dx/rop/cst/CstString;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_a

    #@6
    invoke-direct {p0, p1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitLocalStartExtended(Lcom/android/dx/dex/code/LocalList$Entry;)V

    #@9
    :cond_9
    :goto_9
    return-void

    #@a
    :cond_a
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@c
    invoke-virtual {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    #@f
    move-result v0

    #@10
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@12
    const/4 v2, 0x3

    #@13
    invoke-virtual {v1, v2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeByte(I)V

    #@16
    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    #@19
    move-result v1

    #@1a
    invoke-direct {p0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitUnsignedLeb128(I)V

    #@1d
    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getName()Lcom/android/dx/rop/cst/CstString;

    #@20
    move-result-object v1

    #@21
    invoke-direct {p0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitStringIndex(Lcom/android/dx/rop/cst/CstString;)V

    #@24
    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getType()Lcom/android/dx/rop/cst/CstType;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitTypeIndex(Lcom/android/dx/rop/cst/CstType;)V

    #@2b
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/android/dx/util/AnnotatedOutput;

    #@2d
    if-nez v1, :cond_33

    #@2f
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    #@31
    if-eqz v1, :cond_9

    #@33
    :cond_33
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@35
    invoke-virtual {v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    #@38
    move-result v1

    #@39
    sub-int v0, v1, v0

    #@3b
    const-string v1, "%04x: +local %s"

    #@3d
    const/4 v2, 0x2

    #@3e
    new-array v2, v2, [Ljava/lang/Object;

    #@40
    const/4 v3, 0x0

    #@41
    iget v4, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    #@43
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@46
    move-result-object v4

    #@47
    aput-object v4, v2, v3

    #@49
    const/4 v3, 0x1

    #@4a
    invoke-direct {p0, p1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->entryAnnotationString(Lcom/android/dx/dex/code/LocalList$Entry;)Ljava/lang/String;

    #@4d
    move-result-object v4

    #@4e
    aput-object v4, v2, v3

    #@50
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    #@57
    goto :goto_9
.end method

.method private emitLocalStartExtended(Lcom/android/dx/dex/code/LocalList$Entry;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@8
    const/4 v2, 0x4

    #@9
    invoke-virtual {v1, v2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeByte(I)V

    #@c
    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    #@f
    move-result v1

    #@10
    invoke-direct {p0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitUnsignedLeb128(I)V

    #@13
    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getName()Lcom/android/dx/rop/cst/CstString;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitStringIndex(Lcom/android/dx/rop/cst/CstString;)V

    #@1a
    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getType()Lcom/android/dx/rop/cst/CstType;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {p0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitTypeIndex(Lcom/android/dx/rop/cst/CstType;)V

    #@21
    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getSignature()Lcom/android/dx/rop/cst/CstString;

    #@24
    move-result-object v1

    #@25
    invoke-direct {p0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitStringIndex(Lcom/android/dx/rop/cst/CstString;)V

    #@28
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/android/dx/util/AnnotatedOutput;

    #@2a
    if-nez v1, :cond_30

    #@2c
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    #@2e
    if-eqz v1, :cond_54

    #@30
    :cond_30
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@32
    invoke-virtual {v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    #@35
    move-result v1

    #@36
    sub-int v0, v1, v0

    #@38
    const-string v1, "%04x: +localx %s"

    #@3a
    const/4 v2, 0x2

    #@3b
    new-array v2, v2, [Ljava/lang/Object;

    #@3d
    const/4 v3, 0x0

    #@3e
    iget v4, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    #@40
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@43
    move-result-object v4

    #@44
    aput-object v4, v2, v3

    #@46
    const/4 v3, 0x1

    #@47
    invoke-direct {p0, p1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->entryAnnotationString(Lcom/android/dx/dex/code/LocalList$Entry;)Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    aput-object v4, v2, v3

    #@4d
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    #@54
    :cond_54
    return-void
.end method

.method private emitLocalsAtAddress(I)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/android/dx/dex/code/LocalList;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalList;->size()I

    #@5
    move-result v1

    #@6
    :goto_6
    if-ge p1, v1, :cond_5f

    #@8
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/android/dx/dex/code/LocalList;

    #@a
    invoke-virtual {v0, p1}, Lcom/android/dx/dex/code/LocalList;->get(I)Lcom/android/dx/dex/code/LocalList$Entry;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    #@11
    move-result v0

    #@12
    iget v2, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    #@14
    if-ne v0, v2, :cond_5f

    #@16
    iget-object v2, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/android/dx/dex/code/LocalList;

    #@18
    add-int/lit8 v0, p1, 0x1

    #@1a
    invoke-virtual {v2, p1}, Lcom/android/dx/dex/code/LocalList;->get(I)Lcom/android/dx/dex/code/LocalList$Entry;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    #@21
    move-result v3

    #@22
    iget-object v4, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->lastEntryForReg:[Lcom/android/dx/dex/code/LocalList$Entry;

    #@24
    aget-object v4, v4, v3

    #@26
    if-ne v2, v4, :cond_2a

    #@28
    move p1, v0

    #@29
    goto :goto_6

    #@2a
    :cond_2a
    iget-object v5, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->lastEntryForReg:[Lcom/android/dx/dex/code/LocalList$Entry;

    #@2c
    aput-object v2, v5, v3

    #@2e
    invoke-virtual {v2}, Lcom/android/dx/dex/code/LocalList$Entry;->isStart()Z

    #@31
    move-result v3

    #@32
    if-eqz v3, :cond_53

    #@34
    if-eqz v4, :cond_4f

    #@36
    invoke-virtual {v2, v4}, Lcom/android/dx/dex/code/LocalList$Entry;->matches(Lcom/android/dx/dex/code/LocalList$Entry;)Z

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_4f

    #@3c
    invoke-virtual {v4}, Lcom/android/dx/dex/code/LocalList$Entry;->isStart()Z

    #@3f
    move-result v3

    #@40
    if-eqz v3, :cond_4a

    #@42
    new-instance v0, Ljava/lang/RuntimeException;

    #@44
    const-string v1, "shouldn\'t happen"

    #@46
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@49
    throw v0

    #@4a
    :cond_4a
    invoke-direct {p0, v2}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitLocalRestart(Lcom/android/dx/dex/code/LocalList$Entry;)V

    #@4d
    :cond_4d
    :goto_4d
    move p1, v0

    #@4e
    goto :goto_6

    #@4f
    :cond_4f
    invoke-direct {p0, v2}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitLocalStart(Lcom/android/dx/dex/code/LocalList$Entry;)V

    #@52
    goto :goto_4d

    #@53
    :cond_53
    invoke-virtual {v2}, Lcom/android/dx/dex/code/LocalList$Entry;->getDisposition()Lcom/android/dx/dex/code/LocalList$Disposition;

    #@56
    move-result-object v3

    #@57
    sget-object v4, Lcom/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/android/dx/dex/code/LocalList$Disposition;

    #@59
    if-eq v3, v4, :cond_4d

    #@5b
    invoke-direct {p0, v2}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitLocalEnd(Lcom/android/dx/dex/code/LocalList$Entry;)V

    #@5e
    goto :goto_4d

    #@5f
    :cond_5f
    return p1
.end method

.method private emitPosition(Lcom/android/dx/dex/code/PositionList$Entry;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v5, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p1}, Lcom/android/dx/dex/code/PositionList$Entry;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/dx/rop/code/SourcePosition;->getLine()I

    #@9
    move-result v0

    #@a
    invoke-virtual {p1}, Lcom/android/dx/dex/code/PositionList$Entry;->getAddress()I

    #@d
    move-result v2

    #@e
    iget v3, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->line:I

    #@10
    sub-int/2addr v0, v3

    #@11
    iget v3, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    #@13
    sub-int v3, v2, v3

    #@15
    if-gez v3, :cond_1f

    #@17
    new-instance v0, Ljava/lang/RuntimeException;

    #@19
    const-string v1, "Position entries must be in ascending address order"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    :cond_1f
    const/4 v2, -0x4

    #@20
    if-lt v0, v2, :cond_26

    #@22
    const/16 v2, 0xa

    #@24
    if-le v0, v2, :cond_2a

    #@26
    :cond_26
    invoke-direct {p0, v0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitAdvanceLine(I)V

    #@29
    move v0, v1

    #@2a
    :cond_2a
    invoke-static {v0, v3}, Lcom/android/dx/dex/file/DebugInfoEncoder;->computeOpcode(II)I

    #@2d
    move-result v2

    #@2e
    and-int/lit16 v4, v2, -0x100

    #@30
    if-lez v4, :cond_7f

    #@32
    invoke-direct {p0, v3}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitAdvancePc(I)V

    #@35
    invoke-static {v0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->computeOpcode(II)I

    #@38
    move-result v2

    #@39
    and-int/lit16 v3, v2, -0x100

    #@3b
    if-lez v3, :cond_7a

    #@3d
    invoke-direct {p0, v0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitAdvanceLine(I)V

    #@40
    invoke-static {v1, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->computeOpcode(II)I

    #@43
    move-result v0

    #@44
    move v2, v1

    #@45
    move v3, v1

    #@46
    :goto_46
    iget-object v4, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@48
    invoke-virtual {v4, v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeByte(I)V

    #@4b
    iget v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->line:I

    #@4d
    add-int/2addr v0, v2

    #@4e
    iput v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->line:I

    #@50
    iget v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    #@52
    add-int/2addr v0, v3

    #@53
    iput v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    #@55
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/android/dx/util/AnnotatedOutput;

    #@57
    if-nez v0, :cond_5d

    #@59
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    #@5b
    if-eqz v0, :cond_79

    #@5d
    :cond_5d
    const-string v0, "%04x: line %d"

    #@5f
    const/4 v2, 0x2

    #@60
    new-array v2, v2, [Ljava/lang/Object;

    #@62
    iget v3, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    #@64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@67
    move-result-object v3

    #@68
    aput-object v3, v2, v1

    #@6a
    iget v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->line:I

    #@6c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6f
    move-result-object v1

    #@70
    aput-object v1, v2, v5

    #@72
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@75
    move-result-object v0

    #@76
    invoke-direct {p0, v5, v0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    #@79
    :cond_79
    return-void

    #@7a
    :cond_7a
    move v3, v1

    #@7b
    move v6, v0

    #@7c
    move v0, v2

    #@7d
    move v2, v6

    #@7e
    goto :goto_46

    #@7f
    :cond_7f
    move v6, v2

    #@80
    move v2, v0

    #@81
    move v0, v6

    #@82
    goto :goto_46
.end method

.method private emitPositionsAtAddress(ILjava/util/ArrayList;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/dex/code/PositionList$Entry;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v1

    #@4
    :goto_4
    if-ge p1, v1, :cond_20

    #@6
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/dx/dex/code/PositionList$Entry;

    #@c
    invoke-virtual {v0}, Lcom/android/dx/dex/code/PositionList$Entry;->getAddress()I

    #@f
    move-result v0

    #@10
    iget v2, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    #@12
    if-ne v0, v2, :cond_20

    #@14
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/dx/dex/code/PositionList$Entry;

    #@1a
    invoke-direct {p0, v0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitPosition(Lcom/android/dx/dex/code/PositionList$Entry;)V

    #@1d
    add-int/lit8 p1, p1, 0x1

    #@1f
    goto :goto_4

    #@20
    :cond_20
    return p1
.end method

.method private emitStringIndex(Lcom/android/dx/rop/cst/CstString;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    if-eqz p1, :cond_6

    #@2
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    #@4
    if-nez v0, :cond_d

    #@6
    :cond_6
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {v0, v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    #@c
    :goto_c
    return-void

    #@d
    :cond_d
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@f
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    #@11
    invoke-virtual {v1}, Lcom/android/dx/dex/file/DexFile;->getStringIds()Lcom/android/dx/dex/file/StringIdsSection;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Lcom/android/dx/dex/file/StringIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstString;)I

    #@18
    move-result v1

    #@19
    add-int/lit8 v1, v1, 0x1

    #@1b
    invoke-virtual {v0, v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    #@1e
    goto :goto_c
.end method

.method private emitTypeIndex(Lcom/android/dx/rop/cst/CstType;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    if-eqz p1, :cond_6

    #@2
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    #@4
    if-nez v0, :cond_d

    #@6
    :cond_6
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {v0, v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    #@c
    :goto_c
    return-void

    #@d
    :cond_d
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@f
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    #@11
    invoke-virtual {v1}, Lcom/android/dx/dex/file/DexFile;->getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Lcom/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstType;)I

    #@18
    move-result v1

    #@19
    add-int/lit8 v1, v1, 0x1

    #@1b
    invoke-virtual {v0, v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    #@1e
    goto :goto_c
.end method

.method private emitUnsignedLeb128(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    if-gez p1, :cond_1b

    #@2
    new-instance v0, Ljava/lang/RuntimeException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string v2, "Signed value where unsigned required: "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    :cond_1b
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@1d
    invoke-virtual {v0, p1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    #@20
    return-void
.end method

.method private entryAnnotationString(Lcom/android/dx/dex/code/LocalList$Entry;)Ljava/lang/String;
    .registers 5

    #@0
    const/16 v2, 0x20

    #@2
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string v1, "v"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    #@f
    move-result v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getName()Lcom/android/dx/rop/cst/CstString;

    #@19
    move-result-object v1

    #@1a
    if-nez v1, :cond_44

    #@1c
    const-string v1, "null"

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    :goto_21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getType()Lcom/android/dx/rop/cst/CstType;

    #@27
    move-result-object v1

    #@28
    if-nez v1, :cond_4c

    #@2a
    const-string v1, "null"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    :goto_2f
    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getSignature()Lcom/android/dx/rop/cst/CstString;

    #@32
    move-result-object v1

    #@33
    if-eqz v1, :cond_3f

    #@35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@38
    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    :cond_3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    return-object v0

    #@44
    :cond_44
    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    goto :goto_21

    #@4c
    :cond_4c
    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    goto :goto_2f
.end method

.method private extractMethodArguments()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/dex/code/LocalList$Entry;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v1, Ljava/util/ArrayList;

    #@2
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->desc:Lcom/android/dx/rop/type/Prototype;

    #@4
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/android/dx/rop/type/StdTypeList;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Lcom/android/dx/rop/type/StdTypeList;->size()I

    #@b
    move-result v0

    #@c
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@f
    invoke-direct {p0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->getParamBase()I

    #@12
    move-result v2

    #@13
    new-instance v3, Ljava/util/BitSet;

    #@15
    iget v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->regSize:I

    #@17
    sub-int/2addr v0, v2

    #@18
    invoke-direct {v3, v0}, Ljava/util/BitSet;-><init>(I)V

    #@1b
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/android/dx/dex/code/LocalList;

    #@1d
    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalList;->size()I

    #@20
    move-result v4

    #@21
    const/4 v0, 0x0

    #@22
    :goto_22
    if-ge v0, v4, :cond_43

    #@24
    iget-object v5, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/android/dx/dex/code/LocalList;

    #@26
    invoke-virtual {v5, v0}, Lcom/android/dx/dex/code/LocalList;->get(I)Lcom/android/dx/dex/code/LocalList$Entry;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v5}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    #@2d
    move-result v6

    #@2e
    if-ge v6, v2, :cond_33

    #@30
    :cond_30
    :goto_30
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_22

    #@33
    :cond_33
    sub-int v7, v6, v2

    #@35
    invoke-virtual {v3, v7}, Ljava/util/BitSet;->get(I)Z

    #@38
    move-result v7

    #@39
    if-nez v7, :cond_30

    #@3b
    sub-int/2addr v6, v2

    #@3c
    invoke-virtual {v3, v6}, Ljava/util/BitSet;->set(I)V

    #@3f
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@42
    goto :goto_30

    #@43
    :cond_43
    new-instance v0, Lcom/android/dx/dex/file/DebugInfoEncoder$2;

    #@45
    invoke-direct {v0, p0}, Lcom/android/dx/dex/file/DebugInfoEncoder$2;-><init>(Lcom/android/dx/dex/file/DebugInfoEncoder;)V

    #@48
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@4b
    return-object v1
.end method

.method private getParamBase()I
    .registers 4

    #@0
    iget v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->regSize:I

    #@2
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->desc:Lcom/android/dx/rop/type/Prototype;

    #@4
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/android/dx/rop/type/StdTypeList;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Lcom/android/dx/rop/type/StdTypeList;->getWordCount()I

    #@b
    move-result v2

    #@c
    iget-boolean v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->isStatic:Z

    #@e
    if-eqz v0, :cond_15

    #@10
    const/4 v0, 0x0

    #@11
    :goto_11
    sub-int/2addr v1, v2

    #@12
    sub-int v0, v1, v0

    #@14
    return v0

    #@15
    :cond_15
    const/4 v0, 0x1

    #@16
    goto :goto_11
.end method


# virtual methods
.method public convert()[B
    .registers 3

    #@0
    :try_start_0
    invoke-direct {p0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->convert0()[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    #@3
    move-result-object v0

    #@4
    return-object v0

    #@5
    :catch_5
    move-exception v0

    #@6
    const-string v1, "...while encoding debug info"

    #@8
    invoke-static {v0, v1}, Lcom/android/dx/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dx/util/ExceptionWithContext;

    #@b
    move-result-object v0

    #@c
    throw v0
.end method

.method public convertAndAnnotate(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;Z)[B
    .registers 6

    #@0
    iput-object p1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->prefix:Ljava/lang/String;

    #@2
    iput-object p2, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    #@4
    iput-object p3, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/android/dx/util/AnnotatedOutput;

    #@6
    iput-boolean p4, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->shouldConsume:Z

    #@8
    invoke-virtual {p0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->convert()[B

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method
