.class public final Lcom/android/dx/dex/code/DalvInsnList;
.super Lcom/android/dx/util/FixedSizeList;


# instance fields
.field private final regCount:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/android/dx/util/FixedSizeList;-><init>(I)V

    #@3
    iput p2, p0, Lcom/android/dx/dex/code/DalvInsnList;->regCount:I

    #@5
    return-void
.end method

.method public static makeImmutable(Ljava/util/ArrayList;I)Lcom/android/dx/dex/code/DalvInsnList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/dex/code/DalvInsn;",
            ">;I)",
            "Lcom/android/dx/dex/code/DalvInsnList;"
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v2

    #@4
    new-instance v3, Lcom/android/dx/dex/code/DalvInsnList;

    #@6
    invoke-direct {v3, v2, p1}, Lcom/android/dx/dex/code/DalvInsnList;-><init>(II)V

    #@9
    const/4 v0, 0x0

    #@a
    move v1, v0

    #@b
    :goto_b
    if-ge v1, v2, :cond_1a

    #@d
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/dx/dex/code/DalvInsn;

    #@13
    invoke-virtual {v3, v1, v0}, Lcom/android/dx/dex/code/DalvInsnList;->set(ILcom/android/dx/dex/code/DalvInsn;)V

    #@16
    add-int/lit8 v0, v1, 0x1

    #@18
    move v1, v0

    #@19
    goto :goto_b

    #@1a
    :cond_1a
    invoke-virtual {v3}, Lcom/android/dx/dex/code/DalvInsnList;->setImmutable()V

    #@1d
    return-object v3
.end method


# virtual methods
.method public codeSize()I
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsnList;->size()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    add-int/lit8 v0, v0, -0x1

    #@a
    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/DalvInsnList;->get(I)Lcom/android/dx/dex/code/DalvInsn;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvInsn;->getNextAddress()I

    #@11
    move-result v0

    #@12
    goto :goto_7
.end method

.method public debugPrint(Ljava/io/OutputStream;Ljava/lang/String;Z)V
    .registers 6

    #@0
    new-instance v0, Ljava/io/OutputStreamWriter;

    #@2
    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    #@5
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/dx/dex/code/DalvInsnList;->debugPrint(Ljava/io/Writer;Ljava/lang/String;Z)V

    #@8
    :try_start_8
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_c

    #@b
    return-void

    #@c
    :catch_c
    move-exception v0

    #@d
    new-instance v1, Ljava/lang/RuntimeException;

    #@f
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@12
    throw v1
.end method

.method public debugPrint(Ljava/io/Writer;Ljava/lang/String;Z)V
    .registers 10

    #@0
    const/4 v0, 0x0

    #@1
    new-instance v2, Lcom/android/dx/util/IndentingWriter;

    #@3
    invoke-direct {v2, p1, v0, p2}, Lcom/android/dx/util/IndentingWriter;-><init>(Ljava/io/Writer;ILjava/lang/String;)V

    #@6
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsnList;->size()I

    #@9
    move-result v3

    #@a
    move v1, v0

    #@b
    :goto_b
    if-ge v1, v3, :cond_2d

    #@d
    :try_start_d
    invoke-virtual {p0, v1}, Lcom/android/dx/dex/code/DalvInsnList;->get0(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/dx/dex/code/DalvInsn;

    #@13
    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvInsn;->codeSize()I

    #@16
    move-result v4

    #@17
    if-nez v4, :cond_1b

    #@19
    if-eqz p3, :cond_2b

    #@1b
    :cond_1b
    const-string v4, ""

    #@1d
    const/4 v5, 0x0

    #@1e
    invoke-virtual {v0, v4, v5, p3}, Lcom/android/dx/dex/code/DalvInsn;->listingString(Ljava/lang/String;IZ)Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    :goto_22
    if-eqz v0, :cond_27

    #@24
    invoke-virtual {v2, v0}, Lcom/android/dx/util/IndentingWriter;->write(Ljava/lang/String;)V

    #@27
    :cond_27
    add-int/lit8 v0, v1, 0x1

    #@29
    move v1, v0

    #@2a
    goto :goto_b

    #@2b
    :cond_2b
    const/4 v0, 0x0

    #@2c
    goto :goto_22

    #@2d
    :cond_2d
    invoke-virtual {v2}, Lcom/android/dx/util/IndentingWriter;->flush()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_30} :catch_31

    #@30
    return-void

    #@31
    :catch_31
    move-exception v0

    #@32
    new-instance v1, Ljava/lang/RuntimeException;

    #@34
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@37
    throw v1
.end method

.method public get(I)Lcom/android/dx/dex/code/DalvInsn;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/DalvInsnList;->get0(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/dx/dex/code/DalvInsn;

    #@6
    return-object v0
.end method

.method public getOutsSize()I
    .registers 8

    #@0
    const/4 v4, 0x0

    #@1
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsnList;->size()I

    #@4
    move-result v6

    #@5
    move v5, v4

    #@6
    move v2, v4

    #@7
    :goto_7
    if-ge v5, v6, :cond_41

    #@9
    invoke-virtual {p0, v5}, Lcom/android/dx/dex/code/DalvInsnList;->get0(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/dx/dex/code/DalvInsn;

    #@f
    instance-of v1, v0, Lcom/android/dx/dex/code/CstInsn;

    #@11
    if-nez v1, :cond_19

    #@13
    move v0, v2

    #@14
    :cond_14
    :goto_14
    add-int/lit8 v1, v5, 0x1

    #@16
    move v5, v1

    #@17
    move v2, v0

    #@18
    goto :goto_7

    #@19
    :cond_19
    move-object v1, v0

    #@1a
    check-cast v1, Lcom/android/dx/dex/code/CstInsn;

    #@1c
    invoke-virtual {v1}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    #@1f
    move-result-object v1

    #@20
    instance-of v3, v1, Lcom/android/dx/rop/cst/CstBaseMethodRef;

    #@22
    if-nez v3, :cond_26

    #@24
    move v0, v2

    #@25
    goto :goto_14

    #@26
    :cond_26
    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Lcom/android/dx/dex/code/Dop;->getFamily()I

    #@2d
    move-result v0

    #@2e
    const/16 v3, 0x71

    #@30
    if-ne v0, v3, :cond_3f

    #@32
    const/4 v0, 0x1

    #@33
    move v3, v0

    #@34
    :goto_34
    move-object v0, v1

    #@35
    check-cast v0, Lcom/android/dx/rop/cst/CstBaseMethodRef;

    #@37
    invoke-virtual {v0, v3}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->getParameterWordCount(Z)I

    #@3a
    move-result v0

    #@3b
    if-gt v0, v2, :cond_14

    #@3d
    move v0, v2

    #@3e
    goto :goto_14

    #@3f
    :cond_3f
    move v3, v4

    #@40
    goto :goto_34

    #@41
    :cond_41
    return v2
.end method

.method public getRegistersSize()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/dex/code/DalvInsnList;->regCount:I

    #@2
    return v0
.end method

.method public set(ILcom/android/dx/dex/code/DalvInsn;)V
    .registers 3

    #@0
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/dex/code/DalvInsnList;->set0(ILjava/lang/Object;)V

    #@3
    return-void
.end method

.method public writeTo(Lcom/android/dx/util/AnnotatedOutput;)V
    .registers 12

    #@0
    const/4 v1, 0x0

    #@1
    invoke-interface {p1}, Lcom/android/dx/util/AnnotatedOutput;->getCursor()I

    #@4
    move-result v3

    #@5
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsnList;->size()I

    #@8
    move-result v4

    #@9
    invoke-interface {p1}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_44

    #@f
    invoke-interface {p1}, Lcom/android/dx/util/AnnotatedOutput;->isVerbose()Z

    #@12
    move-result v5

    #@13
    move v2, v1

    #@14
    :goto_14
    if-ge v2, v4, :cond_44

    #@16
    invoke-virtual {p0, v2}, Lcom/android/dx/dex/code/DalvInsnList;->get0(I)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lcom/android/dx/dex/code/DalvInsn;

    #@1c
    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvInsn;->codeSize()I

    #@1f
    move-result v6

    #@20
    mul-int/lit8 v6, v6, 0x2

    #@22
    if-nez v6, :cond_26

    #@24
    if-eqz v5, :cond_3a

    #@26
    :cond_26
    const-string v7, "  "

    #@28
    invoke-interface {p1}, Lcom/android/dx/util/AnnotatedOutput;->getAnnotationWidth()I

    #@2b
    move-result v8

    #@2c
    const/4 v9, 0x1

    #@2d
    invoke-virtual {v0, v7, v8, v9}, Lcom/android/dx/dex/code/DalvInsn;->listingString(Ljava/lang/String;IZ)Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    :goto_31
    if-eqz v0, :cond_3c

    #@33
    invoke-interface {p1, v6, v0}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@36
    :cond_36
    :goto_36
    add-int/lit8 v0, v2, 0x1

    #@38
    move v2, v0

    #@39
    goto :goto_14

    #@3a
    :cond_3a
    const/4 v0, 0x0

    #@3b
    goto :goto_31

    #@3c
    :cond_3c
    if-eqz v6, :cond_36

    #@3e
    const-string v0, ""

    #@40
    invoke-interface {p1, v6, v0}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@43
    goto :goto_36

    #@44
    :cond_44
    :goto_44
    if-ge v1, v4, :cond_6c

    #@46
    invoke-virtual {p0, v1}, Lcom/android/dx/dex/code/DalvInsnList;->get0(I)Ljava/lang/Object;

    #@49
    move-result-object v0

    #@4a
    check-cast v0, Lcom/android/dx/dex/code/DalvInsn;

    #@4c
    :try_start_4c
    invoke-virtual {v0, p1}, Lcom/android/dx/dex/code/DalvInsn;->writeTo(Lcom/android/dx/util/AnnotatedOutput;)V
    :try_end_4f
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_4f} :catch_53

    #@4f
    add-int/lit8 v0, v1, 0x1

    #@51
    move v1, v0

    #@52
    goto :goto_44

    #@53
    :catch_53
    move-exception v1

    #@54
    new-instance v2, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string v3, "...while writing "

    #@5b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v2

    #@5f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v0

    #@63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v0

    #@67
    invoke-static {v1, v0}, Lcom/android/dx/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dx/util/ExceptionWithContext;

    #@6a
    move-result-object v0

    #@6b
    throw v0

    #@6c
    :cond_6c
    invoke-interface {p1}, Lcom/android/dx/util/AnnotatedOutput;->getCursor()I

    #@6f
    move-result v0

    #@70
    sub-int/2addr v0, v3

    #@71
    div-int/lit8 v0, v0, 0x2

    #@73
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsnList;->codeSize()I

    #@76
    move-result v1

    #@77
    if-eq v0, v1, :cond_a0

    #@79
    new-instance v1, Ljava/lang/RuntimeException;

    #@7b
    new-instance v2, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string v3, "write length mismatch; expected "

    #@82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v2

    #@86
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsnList;->codeSize()I

    #@89
    move-result v3

    #@8a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v2

    #@8e
    const-string v3, " but actually wrote "

    #@90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v2

    #@94
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@97
    move-result-object v0

    #@98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v0

    #@9c
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@9f
    throw v1

    #@a0
    :cond_a0
    return-void
.end method
