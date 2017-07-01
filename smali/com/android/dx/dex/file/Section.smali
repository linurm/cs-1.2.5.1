.class public abstract Lcom/android/dx/dex/file/Section;
.super Ljava/lang/Object;


# instance fields
.field private final alignment:I

.field private final file:Lcom/android/dx/dex/file/DexFile;

.field private fileOffset:I

.field private final name:Ljava/lang/String;

.field private prepared:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;I)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-nez p2, :cond_d

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string v1, "file == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    invoke-static {p3}, Lcom/android/dx/dex/file/Section;->validateAlignment(I)V

    #@10
    iput-object p1, p0, Lcom/android/dx/dex/file/Section;->name:Ljava/lang/String;

    #@12
    iput-object p2, p0, Lcom/android/dx/dex/file/Section;->file:Lcom/android/dx/dex/file/DexFile;

    #@14
    iput p3, p0, Lcom/android/dx/dex/file/Section;->alignment:I

    #@16
    const/4 v0, -0x1

    #@17
    iput v0, p0, Lcom/android/dx/dex/file/Section;->fileOffset:I

    #@19
    const/4 v0, 0x0

    #@1a
    iput-boolean v0, p0, Lcom/android/dx/dex/file/Section;->prepared:Z

    #@1c
    return-void
.end method

.method public static validateAlignment(I)V
    .registers 3

    #@0
    if-lez p0, :cond_7

    #@2
    add-int/lit8 v0, p0, -0x1

    #@4
    and-int/2addr v0, p0

    #@5
    if-eqz v0, :cond_f

    #@7
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string v1, "invalid alignment"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    :cond_f
    return-void
.end method


# virtual methods
.method protected final align(Lcom/android/dx/util/AnnotatedOutput;)V
    .registers 3

    #@0
    iget v0, p0, Lcom/android/dx/dex/file/Section;->alignment:I

    #@2
    invoke-interface {p1, v0}, Lcom/android/dx/util/AnnotatedOutput;->alignTo(I)V

    #@5
    return-void
.end method

.method public abstract getAbsoluteItemOffset(Lcom/android/dx/dex/file/Item;)I
.end method

.method public final getAbsoluteOffset(I)I
    .registers 4

    #@0
    if-gez p1, :cond_a

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string v1, "relative < 0"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    iget v0, p0, Lcom/android/dx/dex/file/Section;->fileOffset:I

    #@c
    if-gez v0, :cond_16

    #@e
    new-instance v0, Ljava/lang/RuntimeException;

    #@10
    const-string v1, "fileOffset not yet set"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    :cond_16
    iget v0, p0, Lcom/android/dx/dex/file/Section;->fileOffset:I

    #@18
    add-int/2addr v0, p1

    #@19
    return v0
.end method

.method public final getAlignment()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/dex/file/Section;->alignment:I

    #@2
    return v0
.end method

.method public final getFile()Lcom/android/dx/dex/file/DexFile;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/Section;->file:Lcom/android/dx/dex/file/DexFile;

    #@2
    return-object v0
.end method

.method public final getFileOffset()I
    .registers 3

    #@0
    iget v0, p0, Lcom/android/dx/dex/file/Section;->fileOffset:I

    #@2
    if-gez v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string v1, "fileOffset not set"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iget v0, p0, Lcom/android/dx/dex/file/Section;->fileOffset:I

    #@e
    return v0
.end method

.method protected final getName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/Section;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public abstract items()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/dx/dex/file/Item;",
            ">;"
        }
    .end annotation
.end method

.method public final prepare()V
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/android/dx/dex/file/Section;->throwIfPrepared()V

    #@3
    invoke-virtual {p0}, Lcom/android/dx/dex/file/Section;->prepare0()V

    #@6
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Lcom/android/dx/dex/file/Section;->prepared:Z

    #@9
    return-void
.end method

.method protected abstract prepare0()V
.end method

.method public final setFileOffset(I)I
    .registers 4

    #@0
    if-gez p1, :cond_a

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string v1, "fileOffset < 0"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    iget v0, p0, Lcom/android/dx/dex/file/Section;->fileOffset:I

    #@c
    if-ltz v0, :cond_16

    #@e
    new-instance v0, Ljava/lang/RuntimeException;

    #@10
    const-string v1, "fileOffset already set"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    :cond_16
    iget v0, p0, Lcom/android/dx/dex/file/Section;->alignment:I

    #@18
    add-int/lit8 v0, v0, -0x1

    #@1a
    xor-int/lit8 v1, v0, -0x1

    #@1c
    add-int/2addr v0, p1

    #@1d
    and-int/2addr v0, v1

    #@1e
    iput v0, p0, Lcom/android/dx/dex/file/Section;->fileOffset:I

    #@20
    return v0
.end method

.method protected final throwIfNotPrepared()V
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/android/dx/dex/file/Section;->prepared:Z

    #@2
    if-nez v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string v1, "not prepared"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    return-void
.end method

.method protected final throwIfPrepared()V
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/android/dx/dex/file/Section;->prepared:Z

    #@2
    if-eqz v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string v1, "already prepared"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    return-void
.end method

.method public abstract writeSize()I
.end method

.method public final writeTo(Lcom/android/dx/util/AnnotatedOutput;)V
    .registers 6

    #@0
    const/4 v2, 0x0

    #@1
    invoke-virtual {p0}, Lcom/android/dx/dex/file/Section;->throwIfNotPrepared()V

    #@4
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/file/Section;->align(Lcom/android/dx/util/AnnotatedOutput;)V

    #@7
    invoke-interface {p1}, Lcom/android/dx/util/AnnotatedOutput;->getCursor()I

    #@a
    move-result v0

    #@b
    iget v1, p0, Lcom/android/dx/dex/file/Section;->fileOffset:I

    #@d
    if-gez v1, :cond_3d

    #@f
    iput v0, p0, Lcom/android/dx/dex/file/Section;->fileOffset:I

    #@11
    :cond_11
    invoke-interface {p1}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_39

    #@17
    iget-object v1, p0, Lcom/android/dx/dex/file/Section;->name:Ljava/lang/String;

    #@19
    if-eqz v1, :cond_70

    #@1b
    new-instance v0, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string v1, "\n"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget-object v1, p0, Lcom/android/dx/dex/file/Section;->name:Ljava/lang/String;

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    const-string v1, ":"

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    invoke-interface {p1, v2, v0}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@39
    :cond_39
    :goto_39
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/file/Section;->writeTo0(Lcom/android/dx/util/AnnotatedOutput;)V

    #@3c
    return-void

    #@3d
    :cond_3d
    iget v1, p0, Lcom/android/dx/dex/file/Section;->fileOffset:I

    #@3f
    if-eq v1, v0, :cond_11

    #@41
    new-instance v1, Ljava/lang/RuntimeException;

    #@43
    new-instance v2, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string v3, "alignment mismatch: for "

    #@4a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    const-string v3, ", at "

    #@54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v0

    #@5c
    const-string v2, ", but expected "

    #@5e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v0

    #@62
    iget v2, p0, Lcom/android/dx/dex/file/Section;->fileOffset:I

    #@64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67
    move-result-object v0

    #@68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v0

    #@6c
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v1

    #@70
    :cond_70
    if-eqz v0, :cond_39

    #@72
    const-string v0, "\n"

    #@74
    invoke-interface {p1, v2, v0}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@77
    goto :goto_39
.end method

.method protected abstract writeTo0(Lcom/android/dx/util/AnnotatedOutput;)V
.end method
