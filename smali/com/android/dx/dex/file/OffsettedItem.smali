.class public abstract Lcom/android/dx/dex/file/OffsettedItem;
.super Lcom/android/dx/dex/file/Item;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/dx/dex/file/Item;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/dx/dex/file/OffsettedItem;",
        ">;"
    }
.end annotation


# instance fields
.field private addedTo:Lcom/android/dx/dex/file/Section;

.field private final alignment:I

.field private offset:I

.field private writeSize:I


# direct methods
.method public constructor <init>(II)V
    .registers 5

    #@0
    const/4 v1, -0x1

    #@1
    invoke-direct {p0}, Lcom/android/dx/dex/file/Item;-><init>()V

    #@4
    invoke-static {p1}, Lcom/android/dx/dex/file/Section;->validateAlignment(I)V

    #@7
    if-ge p2, v1, :cond_11

    #@9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string v1, "writeSize < -1"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    :cond_11
    iput p1, p0, Lcom/android/dx/dex/file/OffsettedItem;->alignment:I

    #@13
    iput p2, p0, Lcom/android/dx/dex/file/OffsettedItem;->writeSize:I

    #@15
    const/4 v0, 0x0

    #@16
    iput-object v0, p0, Lcom/android/dx/dex/file/OffsettedItem;->addedTo:Lcom/android/dx/dex/file/Section;

    #@18
    iput v1, p0, Lcom/android/dx/dex/file/OffsettedItem;->offset:I

    #@1a
    return-void
.end method

.method public static getAbsoluteOffsetOr0(Lcom/android/dx/dex/file/OffsettedItem;)I
    .registers 2

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    return v0

    #@4
    :cond_4
    invoke-virtual {p0}, Lcom/android/dx/dex/file/OffsettedItem;->getAbsoluteOffset()I

    #@7
    move-result v0

    #@8
    goto :goto_3
.end method


# virtual methods
.method public final compareTo(Lcom/android/dx/dex/file/OffsettedItem;)I
    .registers 4

    #@0
    if-ne p0, p1, :cond_4

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    return v0

    #@4
    :cond_4
    invoke-virtual {p0}, Lcom/android/dx/dex/file/OffsettedItem;->itemType()Lcom/android/dx/dex/file/ItemType;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p1}, Lcom/android/dx/dex/file/OffsettedItem;->itemType()Lcom/android/dx/dex/file/ItemType;

    #@b
    move-result-object v1

    #@c
    if-eq v0, v1, :cond_13

    #@e
    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/ItemType;->compareTo(Ljava/lang/Enum;)I

    #@11
    move-result v0

    #@12
    goto :goto_3

    #@13
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/file/OffsettedItem;->compareTo0(Lcom/android/dx/dex/file/OffsettedItem;)I

    #@16
    move-result v0

    #@17
    goto :goto_3
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    #@0
    check-cast p1, Lcom/android/dx/dex/file/OffsettedItem;

    #@2
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/file/OffsettedItem;->compareTo(Lcom/android/dx/dex/file/OffsettedItem;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected compareTo0(Lcom/android/dx/dex/file/OffsettedItem;)I
    .registers 4

    #@0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v1, "unsupported"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    if-ne p0, p1, :cond_6

    #@4
    :cond_4
    move v0, v1

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    check-cast p1, Lcom/android/dx/dex/file/OffsettedItem;

    #@8
    invoke-virtual {p0}, Lcom/android/dx/dex/file/OffsettedItem;->itemType()Lcom/android/dx/dex/file/ItemType;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {p1}, Lcom/android/dx/dex/file/OffsettedItem;->itemType()Lcom/android/dx/dex/file/ItemType;

    #@f
    move-result-object v3

    #@10
    if-ne v2, v3, :cond_5

    #@12
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/file/OffsettedItem;->compareTo0(Lcom/android/dx/dex/file/OffsettedItem;)I

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_4

    #@18
    goto :goto_5
.end method

.method public final getAbsoluteOffset()I
    .registers 3

    #@0
    iget v0, p0, Lcom/android/dx/dex/file/OffsettedItem;->offset:I

    #@2
    if-gez v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string v1, "offset not yet known"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iget-object v0, p0, Lcom/android/dx/dex/file/OffsettedItem;->addedTo:Lcom/android/dx/dex/file/Section;

    #@e
    iget v1, p0, Lcom/android/dx/dex/file/OffsettedItem;->offset:I

    #@10
    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/Section;->getAbsoluteOffset(I)I

    #@13
    move-result v0

    #@14
    return v0
.end method

.method public final getAlignment()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/dex/file/OffsettedItem;->alignment:I

    #@2
    return v0
.end method

.method public final getRelativeOffset()I
    .registers 3

    #@0
    iget v0, p0, Lcom/android/dx/dex/file/OffsettedItem;->offset:I

    #@2
    if-gez v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string v1, "offset not yet known"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iget v0, p0, Lcom/android/dx/dex/file/OffsettedItem;->offset:I

    #@e
    return v0
.end method

.method public final offsetString()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const/16 v1, 0x5b

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p0}, Lcom/android/dx/dex/file/OffsettedItem;->getAbsoluteOffset()I

    #@e
    move-result v1

    #@f
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    const/16 v1, 0x5d

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method

.method public final place(Lcom/android/dx/dex/file/Section;I)I
    .registers 5

    #@0
    if-nez p1, :cond_a

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string v1, "addedTo == null"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    if-gez p2, :cond_14

    #@c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    const-string v1, "offset < 0"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    :cond_14
    iget-object v0, p0, Lcom/android/dx/dex/file/OffsettedItem;->addedTo:Lcom/android/dx/dex/file/Section;

    #@16
    if-eqz v0, :cond_20

    #@18
    new-instance v0, Ljava/lang/RuntimeException;

    #@1a
    const-string v1, "already written"

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    :cond_20
    iget v0, p0, Lcom/android/dx/dex/file/OffsettedItem;->alignment:I

    #@22
    add-int/lit8 v0, v0, -0x1

    #@24
    xor-int/lit8 v1, v0, -0x1

    #@26
    add-int/2addr v0, p2

    #@27
    and-int/2addr v0, v1

    #@28
    iput-object p1, p0, Lcom/android/dx/dex/file/OffsettedItem;->addedTo:Lcom/android/dx/dex/file/Section;

    #@2a
    iput v0, p0, Lcom/android/dx/dex/file/OffsettedItem;->offset:I

    #@2c
    invoke-virtual {p0, p1, v0}, Lcom/android/dx/dex/file/OffsettedItem;->place0(Lcom/android/dx/dex/file/Section;I)V

    #@2f
    return v0
.end method

.method protected place0(Lcom/android/dx/dex/file/Section;I)V
    .registers 3

    #@0
    return-void
.end method

.method public final setWriteSize(I)V
    .registers 4

    #@0
    if-gez p1, :cond_a

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string v1, "writeSize < 0"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    iget v0, p0, Lcom/android/dx/dex/file/OffsettedItem;->writeSize:I

    #@c
    if-ltz v0, :cond_16

    #@e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@10
    const-string v1, "writeSize already set"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    :cond_16
    iput p1, p0, Lcom/android/dx/dex/file/OffsettedItem;->writeSize:I

    #@18
    return-void
.end method

.method public abstract toHuman()Ljava/lang/String;
.end method

.method public final writeSize()I
    .registers 3

    #@0
    iget v0, p0, Lcom/android/dx/dex/file/OffsettedItem;->writeSize:I

    #@2
    if-gez v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@6
    const-string v1, "writeSize is unknown"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iget v0, p0, Lcom/android/dx/dex/file/OffsettedItem;->writeSize:I

    #@e
    return v0
.end method

.method public final writeTo(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V
    .registers 6

    #@0
    iget v0, p0, Lcom/android/dx/dex/file/OffsettedItem;->alignment:I

    #@2
    invoke-interface {p2, v0}, Lcom/android/dx/util/AnnotatedOutput;->alignTo(I)V

    #@5
    :try_start_5
    iget v0, p0, Lcom/android/dx/dex/file/OffsettedItem;->writeSize:I

    #@7
    if-gez v0, :cond_2a

    #@9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@b
    const-string v1, "writeSize is unknown"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_11} :catch_11

    #@11
    :catch_11
    move-exception v0

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string v2, "...while writing "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-static {v0, v1}, Lcom/android/dx/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dx/util/ExceptionWithContext;

    #@28
    move-result-object v0

    #@29
    throw v0

    #@2a
    :cond_2a
    :try_start_2a
    invoke-virtual {p0}, Lcom/android/dx/dex/file/OffsettedItem;->getAbsoluteOffset()I

    #@2d
    move-result v0

    #@2e
    invoke-interface {p2, v0}, Lcom/android/dx/util/AnnotatedOutput;->assertCursor(I)V
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_31} :catch_11

    #@31
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/dex/file/OffsettedItem;->writeTo0(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V

    #@34
    return-void
.end method

.method protected abstract writeTo0(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V
.end method
