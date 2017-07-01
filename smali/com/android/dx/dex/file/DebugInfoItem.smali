.class public Lcom/android/dx/dex/file/DebugInfoItem;
.super Lcom/android/dx/dex/file/OffsettedItem;


# static fields
.field private static final ALIGNMENT:I = 0x1

.field private static final ENABLE_ENCODER_SELF_CHECK:Z


# instance fields
.field private final code:Lcom/android/dx/dex/code/DalvCode;

.field private encoded:[B

.field private final isStatic:Z

.field private final ref:Lcom/android/dx/rop/cst/CstMethodRef;


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/code/DalvCode;ZLcom/android/dx/rop/cst/CstMethodRef;)V
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, -0x1

    #@2
    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/OffsettedItem;-><init>(II)V

    #@5
    if-nez p1, :cond_f

    #@7
    new-instance v0, Ljava/lang/NullPointerException;

    #@9
    const-string v1, "code == null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    :cond_f
    iput-object p1, p0, Lcom/android/dx/dex/file/DebugInfoItem;->code:Lcom/android/dx/dex/code/DalvCode;

    #@11
    iput-boolean p2, p0, Lcom/android/dx/dex/file/DebugInfoItem;->isStatic:Z

    #@13
    iput-object p3, p0, Lcom/android/dx/dex/file/DebugInfoItem;->ref:Lcom/android/dx/rop/cst/CstMethodRef;

    #@15
    return-void
.end method

.method private encode(Lcom/android/dx/dex/file/DexFile;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;Z)[B
    .registers 7

    #@0
    invoke-direct/range {p0 .. p5}, Lcom/android/dx/dex/file/DebugInfoItem;->encode0(Lcom/android/dx/dex/file/DexFile;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;Z)[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private encode0(Lcom/android/dx/dex/file/DexFile;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;Z)[B
    .registers 14

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoItem;->code:Lcom/android/dx/dex/code/DalvCode;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvCode;->getPositions()Lcom/android/dx/dex/code/PositionList;

    #@5
    move-result-object v1

    #@6
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoItem;->code:Lcom/android/dx/dex/code/DalvCode;

    #@8
    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvCode;->getLocals()Lcom/android/dx/dex/code/LocalList;

    #@b
    move-result-object v2

    #@c
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoItem;->code:Lcom/android/dx/dex/code/DalvCode;

    #@e
    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvCode;->getInsns()Lcom/android/dx/dex/code/DalvInsnList;

    #@11
    move-result-object v3

    #@12
    new-instance v0, Lcom/android/dx/dex/file/DebugInfoEncoder;

    #@14
    invoke-virtual {v3}, Lcom/android/dx/dex/code/DalvInsnList;->codeSize()I

    #@17
    move-result v4

    #@18
    invoke-virtual {v3}, Lcom/android/dx/dex/code/DalvInsnList;->getRegistersSize()I

    #@1b
    move-result v5

    #@1c
    iget-boolean v6, p0, Lcom/android/dx/dex/file/DebugInfoItem;->isStatic:Z

    #@1e
    iget-object v7, p0, Lcom/android/dx/dex/file/DebugInfoItem;->ref:Lcom/android/dx/rop/cst/CstMethodRef;

    #@20
    move-object v3, p1

    #@21
    invoke-direct/range {v0 .. v7}, Lcom/android/dx/dex/file/DebugInfoEncoder;-><init>(Lcom/android/dx/dex/code/PositionList;Lcom/android/dx/dex/code/LocalList;Lcom/android/dx/dex/file/DexFile;IIZLcom/android/dx/rop/cst/CstMethodRef;)V

    #@24
    if-nez p3, :cond_2d

    #@26
    if-nez p4, :cond_2d

    #@28
    invoke-virtual {v0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->convert()[B

    #@2b
    move-result-object v0

    #@2c
    :goto_2c
    return-object v0

    #@2d
    :cond_2d
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/dx/dex/file/DebugInfoEncoder;->convertAndAnnotate(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;Z)[B

    #@30
    move-result-object v0

    #@31
    goto :goto_2c
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .registers 2

    #@0
    return-void
.end method

.method public annotateTo(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;Ljava/lang/String;)V
    .registers 10

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p3

    #@5
    move-object v4, p2

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/dex/file/DebugInfoItem;->encode(Lcom/android/dx/dex/file/DexFile;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;Z)[B

    #@9
    return-void
.end method

.method public debugPrint(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 9

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v2, p2

    #@4
    move-object v3, p1

    #@5
    move-object v4, v1

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/dex/file/DebugInfoItem;->encode(Lcom/android/dx/dex/file/DexFile;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;Z)[B

    #@9
    return-void
.end method

.method public itemType()Lcom/android/dx/dex/file/ItemType;
    .registers 2

    #@0
    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_DEBUG_INFO_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@2
    return-object v0
.end method

.method protected place0(Lcom/android/dx/dex/file/Section;I)V
    .registers 9

    #@0
    :try_start_0
    invoke-virtual {p1}, Lcom/android/dx/dex/file/Section;->getFile()Lcom/android/dx/dex/file/DexFile;

    #@3
    move-result-object v1

    #@4
    const/4 v2, 0x0

    #@5
    const/4 v3, 0x0

    #@6
    const/4 v4, 0x0

    #@7
    const/4 v5, 0x0

    #@8
    move-object v0, p0

    #@9
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/dex/file/DebugInfoItem;->encode(Lcom/android/dx/dex/file/DexFile;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;Z)[B

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/dx/dex/file/DebugInfoItem;->encoded:[B

    #@f
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoItem;->encoded:[B

    #@11
    array-length v0, v0

    #@12
    invoke-virtual {p0, v0}, Lcom/android/dx/dex/file/DebugInfoItem;->setWriteSize(I)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_15} :catch_16

    #@15
    return-void

    #@16
    :catch_16
    move-exception v0

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string v2, "...while placing debug info for "

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    iget-object v2, p0, Lcom/android/dx/dex/file/DebugInfoItem;->ref:Lcom/android/dx/rop/cst/CstMethodRef;

    #@24
    invoke-virtual {v2}, Lcom/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-static {v0, v1}, Lcom/android/dx/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dx/util/ExceptionWithContext;

    #@33
    move-result-object v0

    #@34
    throw v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string v1, "unsupported"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method

.method protected writeTo0(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V
    .registers 9

    #@0
    const/4 v2, 0x0

    #@1
    invoke-interface {p2}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_29

    #@7
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {p0}, Lcom/android/dx/dex/file/DebugInfoItem;->offsetString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string v1, " debug info"

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    invoke-interface {p2, v0}, Lcom/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    #@21
    const/4 v5, 0x1

    #@22
    move-object v0, p0

    #@23
    move-object v1, p1

    #@24
    move-object v3, v2

    #@25
    move-object v4, p2

    #@26
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/dex/file/DebugInfoItem;->encode(Lcom/android/dx/dex/file/DexFile;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;Z)[B

    #@29
    :cond_29
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoItem;->encoded:[B

    #@2b
    invoke-interface {p2, v0}, Lcom/android/dx/util/AnnotatedOutput;->write([B)V

    #@2e
    return-void
.end method
