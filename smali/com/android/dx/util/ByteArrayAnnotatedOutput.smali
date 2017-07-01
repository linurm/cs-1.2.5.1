.class public final Lcom/android/dx/util/ByteArrayAnnotatedOutput;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/dx/util/AnnotatedOutput;
.implements Lcom/android/dx/util/ByteOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x3e8


# instance fields
.field private annotationWidth:I

.field private annotations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private cursor:I

.field private data:[B

.field private hexCols:I

.field private final stretchy:Z

.field private verbose:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    const/16 v0, 0x3e8

    #@2
    invoke-direct {p0, v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;-><init>(I)V

    #@5
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    #@0
    new-array v0, p1, [B

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {p0, v0, v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;-><init>([BZ)V

    #@6
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;-><init>([BZ)V

    #@4
    return-void
.end method

.method private constructor <init>([BZ)V
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    if-nez p1, :cond_e

    #@6
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    const-string v1, "data == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    iput-boolean p2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->stretchy:Z

    #@10
    iput-object p1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    #@12
    iput v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@14
    iput-boolean v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->verbose:Z

    #@16
    const/4 v0, 0x0

    #@17
    iput-object v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    #@19
    iput v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotationWidth:I

    #@1b
    iput v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->hexCols:I

    #@1d
    return-void
.end method

.method private ensureCapacity(I)V
    .registers 6

    #@0
    const/4 v3, 0x0

    #@1
    iget-object v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    #@3
    array-length v0, v0

    #@4
    if-ge v0, p1, :cond_15

    #@6
    mul-int/lit8 v0, p1, 0x2

    #@8
    add-int/lit16 v0, v0, 0x3e8

    #@a
    new-array v0, v0, [B

    #@c
    iget-object v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    #@e
    iget v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@10
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@13
    iput-object v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    #@15
    :cond_15
    return-void
.end method

.method private static throwBounds()V
    .registers 2

    #@0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@2
    const-string v1, "attempt to write past the end"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method


# virtual methods
.method public alignTo(I)V
    .registers 5

    #@0
    add-int/lit8 v0, p1, -0x1

    #@2
    if-ltz p1, :cond_8

    #@4
    and-int v1, v0, p1

    #@6
    if-eqz v1, :cond_10

    #@8
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string v1, "bogus alignment"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    :cond_10
    xor-int/lit8 v1, v0, -0x1

    #@12
    iget v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@14
    add-int/2addr v0, v2

    #@15
    and-int/2addr v0, v1

    #@16
    iget-boolean v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->stretchy:Z

    #@18
    if-eqz v1, :cond_20

    #@1a
    invoke-direct {p0, v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->ensureCapacity(I)V

    #@1d
    :cond_1d
    iput v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@1f
    :goto_1f
    return-void

    #@20
    :cond_20
    iget-object v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    #@22
    array-length v1, v1

    #@23
    if-le v0, v1, :cond_1d

    #@25
    invoke-static {}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->throwBounds()V

    #@28
    goto :goto_1f
.end method

.method public annotate(ILjava/lang/String;)V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_5

    #@4
    :goto_4
    return-void

    #@5
    :cond_5
    invoke-virtual {p0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->endAnnotation()V

    #@8
    iget-object v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_24

    #@10
    const/4 v0, 0x0

    #@11
    :goto_11
    iget v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@13
    if-gt v0, v1, :cond_17

    #@15
    iget v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@17
    :cond_17
    iget-object v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    #@19
    new-instance v2, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;

    #@1b
    add-int v3, v0, p1

    #@1d
    invoke-direct {v2, v0, v3, p2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;-><init>(IILjava/lang/String;)V

    #@20
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@23
    goto :goto_4

    #@24
    :cond_24
    iget-object v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    #@26
    add-int/lit8 v0, v0, -0x1

    #@28
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;

    #@2e
    invoke-virtual {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->getEnd()I

    #@31
    move-result v0

    #@32
    goto :goto_11
.end method

.method public annotate(Ljava/lang/String;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_5

    #@4
    :goto_4
    return-void

    #@5
    :cond_5
    invoke-virtual {p0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->endAnnotation()V

    #@8
    iget-object v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    #@a
    new-instance v1, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;

    #@c
    iget v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@e
    invoke-direct {v1, v2, p1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;-><init>(ILjava/lang/String;)V

    #@11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@14
    goto :goto_4
.end method

.method public annotates()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_6

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

.method public assertCursor(I)V
    .registers 5

    #@0
    iget v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@2
    if-eq v0, p1, :cond_29

    #@4
    new-instance v0, Lcom/android/dx/util/ExceptionWithContext;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string v2, "expected cursor "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string v2, "; actual value: "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    iget v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Lcom/android/dx/util/ExceptionWithContext;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    :cond_29
    return-void
.end method

.method public enableAnnotations(IZ)V
    .registers 6

    #@0
    const/16 v0, 0xa

    #@2
    const/4 v2, 0x6

    #@3
    iget-object v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    #@5
    if-nez v1, :cond_b

    #@7
    iget v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@9
    if-eqz v1, :cond_13

    #@b
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    #@d
    const-string v1, "cannot enable annotations"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    :cond_13
    const/16 v1, 0x28

    #@15
    if-ge p1, v1, :cond_1f

    #@17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@19
    const-string v1, "annotationWidth < 40"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    :cond_1f
    add-int/lit8 v1, p1, -0x7

    #@21
    div-int/lit8 v1, v1, 0xf

    #@23
    add-int/lit8 v1, v1, 0x1

    #@25
    and-int/lit8 v1, v1, -0x2

    #@27
    if-ge v1, v2, :cond_3a

    #@29
    move v0, v2

    #@2a
    :cond_2a
    :goto_2a
    new-instance v1, Ljava/util/ArrayList;

    #@2c
    const/16 v2, 0x3e8

    #@2e
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@31
    iput-object v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    #@33
    iput p1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotationWidth:I

    #@35
    iput v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->hexCols:I

    #@37
    iput-boolean p2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->verbose:Z

    #@39
    return-void

    #@3a
    :cond_3a
    if-gt v1, v0, :cond_2a

    #@3c
    move v0, v1

    #@3d
    goto :goto_2a
.end method

.method public endAnnotation()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_5

    #@4
    :cond_4
    :goto_4
    return-void

    #@5
    :cond_5
    iget-object v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_4

    #@d
    iget-object v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    #@f
    add-int/lit8 v0, v0, -0x1

    #@11
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;

    #@17
    iget v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@19
    invoke-virtual {v0, v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->setEndIfUnset(I)V

    #@1c
    goto :goto_4
.end method

.method public finishAnnotating()V
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->endAnnotation()V

    #@3
    iget-object v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    #@5
    if-eqz v0, :cond_3a

    #@7
    iget-object v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v0

    #@d
    move v1, v0

    #@e
    :goto_e
    if-lez v1, :cond_3a

    #@10
    iget-object v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    #@12
    add-int/lit8 v2, v1, -0x1

    #@14
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;

    #@1a
    invoke-virtual {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->getStart()I

    #@1d
    move-result v2

    #@1e
    iget v3, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@20
    if-le v2, v3, :cond_2d

    #@22
    iget-object v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    #@24
    add-int/lit8 v2, v1, -0x1

    #@26
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@29
    add-int/lit8 v0, v1, -0x1

    #@2b
    move v1, v0

    #@2c
    goto :goto_e

    #@2d
    :cond_2d
    invoke-virtual {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->getEnd()I

    #@30
    move-result v1

    #@31
    iget v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@33
    if-le v1, v2, :cond_3a

    #@35
    iget v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@37
    invoke-virtual {v0, v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->setEnd(I)V

    #@3a
    :cond_3a
    return-void
.end method

.method public getAnnotationWidth()I
    .registers 4

    #@0
    iget v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->hexCols:I

    #@2
    iget v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->hexCols:I

    #@4
    div-int/lit8 v1, v1, 0x2

    #@6
    iget v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotationWidth:I

    #@8
    mul-int/lit8 v0, v0, 0x2

    #@a
    add-int/lit8 v0, v0, 0x8

    #@c
    add-int/2addr v0, v1

    #@d
    sub-int v0, v2, v0

    #@f
    return v0
.end method

.method public getArray()[B
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    #@2
    return-object v0
.end method

.method public getCursor()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@2
    return v0
.end method

.method public isVerbose()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->verbose:Z

    #@2
    return v0
.end method

.method public toByteArray()[B
    .registers 5

    #@0
    const/4 v3, 0x0

    #@1
    iget v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@3
    new-array v0, v0, [B

    #@5
    iget-object v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    #@7
    iget v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@9
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@c
    return-object v0
.end method

.method public write(Lcom/android/dx/util/ByteArray;)V
    .registers 5

    #@0
    invoke-virtual {p1}, Lcom/android/dx/util/ByteArray;->size()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@6
    add-int/2addr v0, v1

    #@7
    iget-boolean v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->stretchy:Z

    #@9
    if-eqz v2, :cond_16

    #@b
    invoke-direct {p0, v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->ensureCapacity(I)V

    #@e
    :cond_e
    iget-object v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    #@10
    invoke-virtual {p1, v2, v1}, Lcom/android/dx/util/ByteArray;->getBytes([BI)V

    #@13
    iput v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@15
    :goto_15
    return-void

    #@16
    :cond_16
    iget-object v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    #@18
    array-length v2, v2

    #@19
    if-le v0, v2, :cond_e

    #@1b
    invoke-static {}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->throwBounds()V

    #@1e
    goto :goto_15
.end method

.method public write([B)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    array-length v1, p1

    #@2
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->write([BII)V

    #@5
    return-void
.end method

.method public write([BII)V
    .registers 8

    #@0
    iget v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@2
    add-int v1, v0, p3

    #@4
    or-int v2, p2, p3

    #@6
    or-int/2addr v2, v1

    #@7
    if-ltz v2, :cond_e

    #@9
    add-int v2, p2, p3

    #@b
    array-length v3, p1

    #@c
    if-le v2, v3, :cond_3c

    #@e
    :cond_e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string v3, "bytes.length "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    array-length v3, p1

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    const-string v3, "; "

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    const-string v3, "..!"

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v0

    #@3c
    :cond_3c
    iget-boolean v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->stretchy:Z

    #@3e
    if-eqz v2, :cond_4b

    #@40
    invoke-direct {p0, v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->ensureCapacity(I)V

    #@43
    :cond_43
    iget-object v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    #@45
    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@48
    iput v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@4a
    :goto_4a
    return-void

    #@4b
    :cond_4b
    iget-object v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    #@4d
    array-length v2, v2

    #@4e
    if-le v1, v2, :cond_43

    #@50
    invoke-static {}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->throwBounds()V

    #@53
    goto :goto_4a
.end method

.method public writeAnnotationsTo(Ljava/io/Writer;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v5, 0x6

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getAnnotationWidth()I

    #@5
    move-result v0

    #@6
    new-instance v9, Lcom/android/dx/util/TwoColumnOutput;

    #@8
    iget v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotationWidth:I

    #@a
    sub-int/2addr v2, v0

    #@b
    add-int/lit8 v2, v2, -0x1

    #@d
    const-string v3, "|"

    #@f
    invoke-direct {v9, p1, v2, v0, v3}, Lcom/android/dx/util/TwoColumnOutput;-><init>(Ljava/io/Writer;IILjava/lang/String;)V

    #@12
    invoke-virtual {v9}, Lcom/android/dx/util/TwoColumnOutput;->getLeft()Ljava/io/Writer;

    #@15
    move-result-object v10

    #@16
    invoke-virtual {v9}, Lcom/android/dx/util/TwoColumnOutput;->getRight()Ljava/io/Writer;

    #@19
    move-result-object v11

    #@1a
    iget-object v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1f
    move-result v12

    #@20
    move v6, v1

    #@21
    :goto_21
    iget v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@23
    if-ge v1, v0, :cond_5f

    #@25
    if-ge v6, v12, :cond_5f

    #@27
    iget-object v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;

    #@2f
    invoke-virtual {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->getStart()I

    #@32
    move-result v2

    #@33
    if-ge v1, v2, :cond_51

    #@35
    const-string v0, ""

    #@37
    move v7, v6

    #@38
    move-object v8, v0

    #@39
    move v6, v2

    #@3a
    :goto_3a
    iget-object v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    #@3c
    sub-int v2, v6, v1

    #@3e
    iget v4, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->hexCols:I

    #@40
    move v3, v1

    #@41
    invoke-static/range {v0 .. v5}, Lcom/android/dx/util/Hex;->dump([BIIIII)Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v10, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@48
    invoke-virtual {v11, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@4b
    invoke-virtual {v9}, Lcom/android/dx/util/TwoColumnOutput;->flush()V

    #@4e
    move v1, v6

    #@4f
    move v6, v7

    #@50
    goto :goto_21

    #@51
    :cond_51
    invoke-virtual {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->getEnd()I

    #@54
    move-result v1

    #@55
    invoke-virtual {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->getText()Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    add-int/lit8 v7, v6, 0x1

    #@5b
    move v6, v1

    #@5c
    move-object v8, v0

    #@5d
    move v1, v2

    #@5e
    goto :goto_3a

    #@5f
    :cond_5f
    iget v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@61
    if-ge v1, v0, :cond_72

    #@63
    iget-object v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    #@65
    iget v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@67
    sub-int/2addr v2, v1

    #@68
    iget v4, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->hexCols:I

    #@6a
    move v3, v1

    #@6b
    invoke-static/range {v0 .. v5}, Lcom/android/dx/util/Hex;->dump([BIIIII)Ljava/lang/String;

    #@6e
    move-result-object v0

    #@6f
    invoke-virtual {v10, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@72
    :cond_72
    :goto_72
    if-ge v6, v12, :cond_86

    #@74
    iget-object v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    #@76
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@79
    move-result-object v0

    #@7a
    check-cast v0, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;

    #@7c
    invoke-virtual {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->getText()Ljava/lang/String;

    #@7f
    move-result-object v0

    #@80
    invoke-virtual {v11, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@83
    add-int/lit8 v6, v6, 0x1

    #@85
    goto :goto_72

    #@86
    :cond_86
    invoke-virtual {v9}, Lcom/android/dx/util/TwoColumnOutput;->flush()V

    #@89
    return-void
.end method

.method public writeByte(I)V
    .registers 6

    #@0
    iget v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@2
    add-int/lit8 v1, v0, 0x1

    #@4
    iget-boolean v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->stretchy:Z

    #@6
    if-eqz v2, :cond_14

    #@8
    invoke-direct {p0, v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->ensureCapacity(I)V

    #@b
    :cond_b
    iget-object v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    #@d
    int-to-byte v3, p1

    #@e
    int-to-byte v3, v3

    #@f
    aput-byte v3, v2, v0

    #@11
    iput v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@13
    :goto_13
    return-void

    #@14
    :cond_14
    iget-object v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    #@16
    array-length v2, v2

    #@17
    if-le v1, v2, :cond_b

    #@19
    invoke-static {}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->throwBounds()V

    #@1c
    goto :goto_13
.end method

.method public writeInt(I)V
    .registers 7

    #@0
    iget v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@2
    add-int/lit8 v1, v0, 0x4

    #@4
    iget-boolean v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->stretchy:Z

    #@6
    if-eqz v2, :cond_32

    #@8
    invoke-direct {p0, v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->ensureCapacity(I)V

    #@b
    :cond_b
    iget-object v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    #@d
    int-to-byte v3, p1

    #@e
    int-to-byte v3, v3

    #@f
    aput-byte v3, v2, v0

    #@11
    iget-object v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    #@13
    add-int/lit8 v3, v0, 0x1

    #@15
    shr-int/lit8 v4, p1, 0x8

    #@17
    int-to-byte v4, v4

    #@18
    int-to-byte v4, v4

    #@19
    aput-byte v4, v2, v3

    #@1b
    iget-object v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    #@1d
    add-int/lit8 v3, v0, 0x2

    #@1f
    shr-int/lit8 v4, p1, 0x10

    #@21
    int-to-byte v4, v4

    #@22
    int-to-byte v4, v4

    #@23
    aput-byte v4, v2, v3

    #@25
    iget-object v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    #@27
    add-int/lit8 v0, v0, 0x3

    #@29
    shr-int/lit8 v3, p1, 0x18

    #@2b
    int-to-byte v3, v3

    #@2c
    int-to-byte v3, v3

    #@2d
    aput-byte v3, v2, v0

    #@2f
    iput v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@31
    :goto_31
    return-void

    #@32
    :cond_32
    iget-object v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    #@34
    array-length v2, v2

    #@35
    if-le v1, v2, :cond_b

    #@37
    invoke-static {}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->throwBounds()V

    #@3a
    goto :goto_31
.end method

.method public writeLong(J)V
    .registers 10

    #@0
    iget v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@2
    add-int/lit8 v1, v0, 0x8

    #@4
    iget-boolean v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->stretchy:Z

    #@6
    if-eqz v2, :cond_5e

    #@8
    invoke-direct {p0, v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->ensureCapacity(I)V

    #@b
    :cond_b
    long-to-int v2, p1

    #@c
    iget-object v3, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    #@e
    int-to-byte v4, v2

    #@f
    int-to-byte v4, v4

    #@10
    aput-byte v4, v3, v0

    #@12
    iget-object v3, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    #@14
    add-int/lit8 v4, v0, 0x1

    #@16
    shr-int/lit8 v5, v2, 0x8

    #@18
    int-to-byte v5, v5

    #@19
    int-to-byte v5, v5

    #@1a
    aput-byte v5, v3, v4

    #@1c
    iget-object v3, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    #@1e
    add-int/lit8 v4, v0, 0x2

    #@20
    shr-int/lit8 v5, v2, 0x10

    #@22
    int-to-byte v5, v5

    #@23
    int-to-byte v5, v5

    #@24
    aput-byte v5, v3, v4

    #@26
    iget-object v3, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    #@28
    add-int/lit8 v4, v0, 0x3

    #@2a
    shr-int/lit8 v2, v2, 0x18

    #@2c
    int-to-byte v2, v2

    #@2d
    int-to-byte v2, v2

    #@2e
    aput-byte v2, v3, v4

    #@30
    const/16 v2, 0x20

    #@32
    shr-long v2, p1, v2

    #@34
    long-to-int v2, v2

    #@35
    iget-object v3, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    #@37
    add-int/lit8 v4, v0, 0x4

    #@39
    int-to-byte v5, v2

    #@3a
    int-to-byte v5, v5

    #@3b
    aput-byte v5, v3, v4

    #@3d
    iget-object v3, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    #@3f
    add-int/lit8 v4, v0, 0x5

    #@41
    shr-int/lit8 v5, v2, 0x8

    #@43
    int-to-byte v5, v5

    #@44
    int-to-byte v5, v5

    #@45
    aput-byte v5, v3, v4

    #@47
    iget-object v3, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    #@49
    add-int/lit8 v4, v0, 0x6

    #@4b
    shr-int/lit8 v5, v2, 0x10

    #@4d
    int-to-byte v5, v5

    #@4e
    int-to-byte v5, v5

    #@4f
    aput-byte v5, v3, v4

    #@51
    iget-object v3, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    #@53
    add-int/lit8 v0, v0, 0x7

    #@55
    shr-int/lit8 v2, v2, 0x18

    #@57
    int-to-byte v2, v2

    #@58
    int-to-byte v2, v2

    #@59
    aput-byte v2, v3, v0

    #@5b
    iput v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@5d
    :goto_5d
    return-void

    #@5e
    :cond_5e
    iget-object v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    #@60
    array-length v2, v2

    #@61
    if-le v1, v2, :cond_b

    #@63
    invoke-static {}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->throwBounds()V

    #@66
    goto :goto_5d
.end method

.method public writeShort(I)V
    .registers 6

    #@0
    iget v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@2
    add-int/lit8 v1, v0, 0x2

    #@4
    iget-boolean v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->stretchy:Z

    #@6
    if-eqz v2, :cond_1e

    #@8
    invoke-direct {p0, v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->ensureCapacity(I)V

    #@b
    :cond_b
    iget-object v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    #@d
    int-to-byte v3, p1

    #@e
    int-to-byte v3, v3

    #@f
    aput-byte v3, v2, v0

    #@11
    iget-object v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    #@13
    add-int/lit8 v0, v0, 0x1

    #@15
    shr-int/lit8 v3, p1, 0x8

    #@17
    int-to-byte v3, v3

    #@18
    int-to-byte v3, v3

    #@19
    aput-byte v3, v2, v0

    #@1b
    iput v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@1d
    :goto_1d
    return-void

    #@1e
    :cond_1e
    iget-object v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    #@20
    array-length v2, v2

    #@21
    if-le v1, v2, :cond_b

    #@23
    invoke-static {}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->throwBounds()V

    #@26
    goto :goto_1d
.end method

.method public writeSleb128(I)I
    .registers 4

    #@0
    iget-boolean v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->stretchy:Z

    #@2
    if-eqz v0, :cond_b

    #@4
    iget v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@6
    add-int/lit8 v0, v0, 0x5

    #@8
    invoke-direct {p0, v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->ensureCapacity(I)V

    #@b
    :cond_b
    iget v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@d
    invoke-static {p0, p1}, Lcom/android/dx/util/Leb128Utils;->writeSignedLeb128(Lcom/android/dx/util/ByteOutput;I)V

    #@10
    iget v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@12
    sub-int v0, v1, v0

    #@14
    return v0
.end method

.method public writeUleb128(I)I
    .registers 4

    #@0
    iget-boolean v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->stretchy:Z

    #@2
    if-eqz v0, :cond_b

    #@4
    iget v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@6
    add-int/lit8 v0, v0, 0x5

    #@8
    invoke-direct {p0, v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->ensureCapacity(I)V

    #@b
    :cond_b
    iget v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@d
    invoke-static {p0, p1}, Lcom/android/dx/util/Leb128Utils;->writeUnsignedLeb128(Lcom/android/dx/util/ByteOutput;I)V

    #@10
    iget v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@12
    sub-int v0, v1, v0

    #@14
    return v0
.end method

.method public writeZeroes(I)V
    .registers 4

    #@0
    if-gez p1, :cond_a

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string v1, "count < 0"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    iget v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@c
    add-int/2addr v0, p1

    #@d
    iget-boolean v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->stretchy:Z

    #@f
    if-eqz v1, :cond_17

    #@11
    invoke-direct {p0, v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->ensureCapacity(I)V

    #@14
    :cond_14
    iput v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    #@16
    :goto_16
    return-void

    #@17
    :cond_17
    iget-object v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    #@19
    array-length v1, v1

    #@1a
    if-le v0, v1, :cond_14

    #@1c
    invoke-static {}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->throwBounds()V

    #@1f
    goto :goto_16
.end method
