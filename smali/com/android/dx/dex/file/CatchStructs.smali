.class public final Lcom/android/dx/dex/file/CatchStructs;
.super Ljava/lang/Object;


# static fields
.field private static final TRY_ITEM_WRITE_SIZE:I = 0x8


# instance fields
.field private final code:Lcom/android/dx/dex/code/DalvCode;

.field private encodedHandlerHeaderSize:I

.field private encodedHandlers:[B

.field private handlerOffsets:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Lcom/android/dx/dex/code/CatchHandlerList;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private table:Lcom/android/dx/dex/code/CatchTable;


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/code/DalvCode;)V
    .registers 4

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    iput-object p1, p0, Lcom/android/dx/dex/file/CatchStructs;->code:Lcom/android/dx/dex/code/DalvCode;

    #@6
    iput-object v1, p0, Lcom/android/dx/dex/file/CatchStructs;->table:Lcom/android/dx/dex/code/CatchTable;

    #@8
    iput-object v1, p0, Lcom/android/dx/dex/file/CatchStructs;->encodedHandlers:[B

    #@a
    const/4 v0, 0x0

    #@b
    iput v0, p0, Lcom/android/dx/dex/file/CatchStructs;->encodedHandlerHeaderSize:I

    #@d
    iput-object v1, p0, Lcom/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    #@f
    return-void
.end method

.method private static annotateAndConsumeHandlers(Lcom/android/dx/dex/code/CatchHandlerList;IILjava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;)V
    .registers 8

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-static {p1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string v1, ": "

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {p0, p3, v0}, Lcom/android/dx/dex/code/CatchHandlerList;->toHuman(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    if-eqz p4, :cond_20

    #@1d
    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@20
    :cond_20
    invoke-interface {p5, p2, v0}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@23
    return-void
.end method

.method private annotateEntries(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;)V
    .registers 15

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Lcom/android/dx/dex/file/CatchStructs;->finishProcessingIfNecessary()V

    #@4
    if-eqz p3, :cond_8f

    #@6
    const/4 v0, 0x1

    #@7
    move v5, v0

    #@8
    :goto_8
    if-eqz v5, :cond_92

    #@a
    const/4 v0, 0x6

    #@b
    move v4, v0

    #@c
    :goto_c
    if-eqz v5, :cond_95

    #@e
    const/4 v0, 0x2

    #@f
    :goto_f
    iget-object v2, p0, Lcom/android/dx/dex/file/CatchStructs;->table:Lcom/android/dx/dex/code/CatchTable;

    #@11
    invoke-virtual {v2}, Lcom/android/dx/dex/code/CatchTable;->size()I

    #@14
    move-result v6

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    const-string v3, "  "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    if-eqz v5, :cond_98

    #@2a
    new-instance v2, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    const-string v7, "tries:"

    #@35
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    invoke-interface {p3, v1, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@40
    :goto_40
    move v2, v1

    #@41
    :goto_41
    if-ge v2, v6, :cond_b6

    #@43
    iget-object v7, p0, Lcom/android/dx/dex/file/CatchStructs;->table:Lcom/android/dx/dex/code/CatchTable;

    #@45
    invoke-virtual {v7, v2}, Lcom/android/dx/dex/code/CatchTable;->get(I)Lcom/android/dx/dex/code/CatchTable$Entry;

    #@48
    move-result-object v7

    #@49
    invoke-virtual {v7}, Lcom/android/dx/dex/code/CatchTable$Entry;->getHandlers()Lcom/android/dx/dex/code/CatchHandlerList;

    #@4c
    move-result-object v8

    #@4d
    new-instance v9, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v9

    #@56
    const-string v10, "try "

    #@58
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v9

    #@5c
    invoke-virtual {v7}, Lcom/android/dx/dex/code/CatchTable$Entry;->getStart()I

    #@5f
    move-result v10

    #@60
    invoke-static {v10}, Lcom/android/dx/util/Hex;->u2or4(I)Ljava/lang/String;

    #@63
    move-result-object v10

    #@64
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v9

    #@68
    const-string v10, ".."

    #@6a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v9

    #@6e
    invoke-virtual {v7}, Lcom/android/dx/dex/code/CatchTable$Entry;->getEnd()I

    #@71
    move-result v7

    #@72
    invoke-static {v7}, Lcom/android/dx/util/Hex;->u2or4(I)Ljava/lang/String;

    #@75
    move-result-object v7

    #@76
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v7

    #@7a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v7

    #@7e
    const-string v9, ""

    #@80
    invoke-virtual {v8, v3, v9}, Lcom/android/dx/dex/code/CatchHandlerList;->toHuman(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@83
    move-result-object v8

    #@84
    if-eqz v5, :cond_af

    #@86
    invoke-interface {p3, v4, v7}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@89
    invoke-interface {p3, v0, v8}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@8c
    :goto_8c
    add-int/lit8 v2, v2, 0x1

    #@8e
    goto :goto_41

    #@8f
    :cond_8f
    move v5, v1

    #@90
    goto/16 :goto_8

    #@92
    :cond_92
    move v4, v1

    #@93
    goto/16 :goto_c

    #@95
    :cond_95
    move v0, v1

    #@96
    goto/16 :goto_f

    #@98
    :cond_98
    new-instance v2, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v2

    #@a1
    const-string v7, "tries:"

    #@a3
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v2

    #@a7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v2

    #@ab
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ae
    goto :goto_40

    #@af
    :cond_af
    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b2
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b5
    goto :goto_8c

    #@b6
    :cond_b6
    if-nez v5, :cond_b9

    #@b8
    :goto_b8
    return-void

    #@b9
    :cond_b9
    new-instance v0, Ljava/lang/StringBuilder;

    #@bb
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@be
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v0

    #@c2
    const-string v2, "handlers:"

    #@c4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v0

    #@c8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cb
    move-result-object v0

    #@cc
    invoke-interface {p3, v1, v0}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@cf
    iget v0, p0, Lcom/android/dx/dex/file/CatchStructs;->encodedHandlerHeaderSize:I

    #@d1
    new-instance v2, Ljava/lang/StringBuilder;

    #@d3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v2

    #@da
    const-string v4, "size: "

    #@dc
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v2

    #@e0
    iget-object v4, p0, Lcom/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    #@e2
    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    #@e5
    move-result v4

    #@e6
    invoke-static {v4}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    #@e9
    move-result-object v4

    #@ea
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v2

    #@ee
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f1
    move-result-object v2

    #@f2
    invoke-interface {p3, v0, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@f5
    const/4 v0, 0x0

    #@f6
    iget-object v2, p0, Lcom/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    #@f8
    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    #@fb
    move-result-object v2

    #@fc
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@ff
    move-result-object v8

    #@100
    :goto_100
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@103
    move-result v2

    #@104
    if-eqz v2, :cond_129

    #@106
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@109
    move-result-object v2

    #@10a
    check-cast v2, Ljava/util/Map$Entry;

    #@10c
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@10f
    move-result-object v4

    #@110
    move-object v6, v4

    #@111
    check-cast v6, Lcom/android/dx/dex/code/CatchHandlerList;

    #@113
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@116
    move-result-object v2

    #@117
    check-cast v2, Ljava/lang/Integer;

    #@119
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@11c
    move-result v7

    #@11d
    if-eqz v0, :cond_126

    #@11f
    sub-int v2, v7, v1

    #@121
    move-object v4, p2

    #@122
    move-object v5, p3

    #@123
    invoke-static/range {v0 .. v5}, Lcom/android/dx/dex/file/CatchStructs;->annotateAndConsumeHandlers(Lcom/android/dx/dex/code/CatchHandlerList;IILjava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;)V

    #@126
    :cond_126
    move v1, v7

    #@127
    move-object v0, v6

    #@128
    goto :goto_100

    #@129
    :cond_129
    iget-object v2, p0, Lcom/android/dx/dex/file/CatchStructs;->encodedHandlers:[B

    #@12b
    array-length v2, v2

    #@12c
    sub-int/2addr v2, v1

    #@12d
    move-object v4, p2

    #@12e
    move-object v5, p3

    #@12f
    invoke-static/range {v0 .. v5}, Lcom/android/dx/dex/file/CatchStructs;->annotateAndConsumeHandlers(Lcom/android/dx/dex/code/CatchHandlerList;IILjava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;)V

    #@132
    goto :goto_b8
.end method

.method private finishProcessingIfNecessary()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/CatchStructs;->table:Lcom/android/dx/dex/code/CatchTable;

    #@2
    if-nez v0, :cond_c

    #@4
    iget-object v0, p0, Lcom/android/dx/dex/file/CatchStructs;->code:Lcom/android/dx/dex/code/DalvCode;

    #@6
    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvCode;->getCatches()Lcom/android/dx/dex/code/CatchTable;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/dx/dex/file/CatchStructs;->table:Lcom/android/dx/dex/code/CatchTable;

    #@c
    :cond_c
    return-void
.end method


# virtual methods
.method public debugPrint(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p2, p1, v0}, Lcom/android/dx/dex/file/CatchStructs;->annotateEntries(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;)V

    #@4
    return-void
.end method

.method public encode(Lcom/android/dx/dex/file/DexFile;)V
    .registers 12

    #@0
    const/4 v3, 0x0

    #@1
    invoke-direct {p0}, Lcom/android/dx/dex/file/CatchStructs;->finishProcessingIfNecessary()V

    #@4
    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;

    #@7
    move-result-object v4

    #@8
    iget-object v0, p0, Lcom/android/dx/dex/file/CatchStructs;->table:Lcom/android/dx/dex/code/CatchTable;

    #@a
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CatchTable;->size()I

    #@d
    move-result v1

    #@e
    new-instance v0, Ljava/util/TreeMap;

    #@10
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    #@13
    iput-object v0, p0, Lcom/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    #@15
    move v0, v3

    #@16
    :goto_16
    if-ge v0, v1, :cond_2b

    #@18
    iget-object v2, p0, Lcom/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    #@1a
    iget-object v5, p0, Lcom/android/dx/dex/file/CatchStructs;->table:Lcom/android/dx/dex/code/CatchTable;

    #@1c
    invoke-virtual {v5, v0}, Lcom/android/dx/dex/code/CatchTable;->get(I)Lcom/android/dx/dex/code/CatchTable$Entry;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v5}, Lcom/android/dx/dex/code/CatchTable$Entry;->getHandlers()Lcom/android/dx/dex/code/CatchHandlerList;

    #@23
    move-result-object v5

    #@24
    const/4 v6, 0x0

    #@25
    invoke-virtual {v2, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_16

    #@2b
    :cond_2b
    iget-object v0, p0, Lcom/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    #@2d
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    #@30
    move-result v0

    #@31
    const v1, 0xffff

    #@34
    if-le v0, v1, :cond_3e

    #@36
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@38
    const-string v1, "too many catch handlers"

    #@3a
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v0

    #@3e
    :cond_3e
    new-instance v5, Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@40
    invoke-direct {v5}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;-><init>()V

    #@43
    iget-object v0, p0, Lcom/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    #@45
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    #@48
    move-result v0

    #@49
    invoke-virtual {v5, v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    #@4c
    move-result v0

    #@4d
    iput v0, p0, Lcom/android/dx/dex/file/CatchStructs;->encodedHandlerHeaderSize:I

    #@4f
    iget-object v0, p0, Lcom/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    #@51
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    #@54
    move-result-object v0

    #@55
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@58
    move-result-object v6

    #@59
    :cond_59
    :goto_59
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@5c
    move-result v0

    #@5d
    if-eqz v0, :cond_b7

    #@5f
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@62
    move-result-object v0

    #@63
    check-cast v0, Ljava/util/Map$Entry;

    #@65
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@68
    move-result-object v1

    #@69
    check-cast v1, Lcom/android/dx/dex/code/CatchHandlerList;

    #@6b
    invoke-virtual {v1}, Lcom/android/dx/dex/code/CatchHandlerList;->size()I

    #@6e
    move-result v2

    #@6f
    invoke-virtual {v1}, Lcom/android/dx/dex/code/CatchHandlerList;->catchesAll()Z

    #@72
    move-result v7

    #@73
    invoke-virtual {v5}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    #@76
    move-result v8

    #@77
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7a
    move-result-object v8

    #@7b
    invoke-interface {v0, v8}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@7e
    if-eqz v7, :cond_a4

    #@80
    add-int/lit8 v0, v2, -0x1

    #@82
    neg-int v0, v0

    #@83
    invoke-virtual {v5, v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeSleb128(I)I

    #@86
    add-int/lit8 v0, v2, -0x1

    #@88
    :goto_88
    move v2, v3

    #@89
    :goto_89
    if-ge v2, v0, :cond_a9

    #@8b
    invoke-virtual {v1, v2}, Lcom/android/dx/dex/code/CatchHandlerList;->get(I)Lcom/android/dx/dex/code/CatchHandlerList$Entry;

    #@8e
    move-result-object v8

    #@8f
    invoke-virtual {v8}, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->getExceptionType()Lcom/android/dx/rop/cst/CstType;

    #@92
    move-result-object v9

    #@93
    invoke-virtual {v4, v9}, Lcom/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstType;)I

    #@96
    move-result v9

    #@97
    invoke-virtual {v5, v9}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    #@9a
    invoke-virtual {v8}, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->getHandler()I

    #@9d
    move-result v8

    #@9e
    invoke-virtual {v5, v8}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    #@a1
    add-int/lit8 v2, v2, 0x1

    #@a3
    goto :goto_89

    #@a4
    :cond_a4
    invoke-virtual {v5, v2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeSleb128(I)I

    #@a7
    move v0, v2

    #@a8
    goto :goto_88

    #@a9
    :cond_a9
    if-eqz v7, :cond_59

    #@ab
    invoke-virtual {v1, v0}, Lcom/android/dx/dex/code/CatchHandlerList;->get(I)Lcom/android/dx/dex/code/CatchHandlerList$Entry;

    #@ae
    move-result-object v0

    #@af
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->getHandler()I

    #@b2
    move-result v0

    #@b3
    invoke-virtual {v5, v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    #@b6
    goto :goto_59

    #@b7
    :cond_b7
    invoke-virtual {v5}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->toByteArray()[B

    #@ba
    move-result-object v0

    #@bb
    iput-object v0, p0, Lcom/android/dx/dex/file/CatchStructs;->encodedHandlers:[B

    #@bd
    return-void
.end method

.method public triesSize()I
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/android/dx/dex/file/CatchStructs;->finishProcessingIfNecessary()V

    #@3
    iget-object v0, p0, Lcom/android/dx/dex/file/CatchStructs;->table:Lcom/android/dx/dex/code/CatchTable;

    #@5
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CatchTable;->size()I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public writeSize()I
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/android/dx/dex/file/CatchStructs;->triesSize()I

    #@3
    move-result v0

    #@4
    mul-int/lit8 v0, v0, 0x8

    #@6
    iget-object v1, p0, Lcom/android/dx/dex/file/CatchStructs;->encodedHandlers:[B

    #@8
    array-length v1, v1

    #@9
    add-int/2addr v0, v1

    #@a
    return v0
.end method

.method public writeTo(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V
    .registers 10

    #@0
    invoke-direct {p0}, Lcom/android/dx/dex/file/CatchStructs;->finishProcessingIfNecessary()V

    #@3
    invoke-interface {p2}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_f

    #@9
    const-string v0, "  "

    #@b
    const/4 v1, 0x0

    #@c
    invoke-direct {p0, v0, v1, p2}, Lcom/android/dx/dex/file/CatchStructs;->annotateEntries(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;)V

    #@f
    :cond_f
    iget-object v0, p0, Lcom/android/dx/dex/file/CatchStructs;->table:Lcom/android/dx/dex/code/CatchTable;

    #@11
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CatchTable;->size()I

    #@14
    move-result v2

    #@15
    const/4 v0, 0x0

    #@16
    move v1, v0

    #@17
    :goto_17
    if-ge v1, v2, :cond_75

    #@19
    iget-object v0, p0, Lcom/android/dx/dex/file/CatchStructs;->table:Lcom/android/dx/dex/code/CatchTable;

    #@1b
    invoke-virtual {v0, v1}, Lcom/android/dx/dex/code/CatchTable;->get(I)Lcom/android/dx/dex/code/CatchTable$Entry;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CatchTable$Entry;->getStart()I

    #@22
    move-result v3

    #@23
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CatchTable$Entry;->getEnd()I

    #@26
    move-result v4

    #@27
    sub-int v5, v4, v3

    #@29
    const/high16 v6, 0x10000

    #@2b
    if-lt v5, v6, :cond_58

    #@2d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2f
    new-instance v1, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string v2, "bogus exception range: "

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-static {v3}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    const-string v2, ".."

    #@44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-static {v4}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@57
    throw v0

    #@58
    :cond_58
    invoke-interface {p2, v3}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    #@5b
    invoke-interface {p2, v5}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    #@5e
    iget-object v3, p0, Lcom/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    #@60
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CatchTable$Entry;->getHandlers()Lcom/android/dx/dex/code/CatchHandlerList;

    #@63
    move-result-object v0

    #@64
    invoke-virtual {v3, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@67
    move-result-object v0

    #@68
    check-cast v0, Ljava/lang/Integer;

    #@6a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@6d
    move-result v0

    #@6e
    invoke-interface {p2, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    #@71
    add-int/lit8 v0, v1, 0x1

    #@73
    move v1, v0

    #@74
    goto :goto_17

    #@75
    :cond_75
    iget-object v0, p0, Lcom/android/dx/dex/file/CatchStructs;->encodedHandlers:[B

    #@77
    invoke-interface {p2, v0}, Lcom/android/dx/util/AnnotatedOutput;->write([B)V

    #@7a
    return-void
.end method
