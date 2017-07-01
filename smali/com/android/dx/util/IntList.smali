.class public final Lcom/android/dx/util/IntList;
.super Lcom/android/dx/util/MutabilityControl;


# static fields
.field public static final EMPTY:Lcom/android/dx/util/IntList;


# instance fields
.field private size:I

.field private sorted:Z

.field private values:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Lcom/android/dx/util/IntList;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lcom/android/dx/util/IntList;-><init>(I)V

    #@6
    sput-object v0, Lcom/android/dx/util/IntList;->EMPTY:Lcom/android/dx/util/IntList;

    #@8
    sget-object v0, Lcom/android/dx/util/IntList;->EMPTY:Lcom/android/dx/util/IntList;

    #@a
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->setImmutable()V

    #@d
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0}, Lcom/android/dx/util/IntList;-><init>(I)V

    #@4
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    #@0
    const/4 v1, 0x1

    #@1
    invoke-direct {p0, v1}, Lcom/android/dx/util/MutabilityControl;-><init>(Z)V

    #@4
    :try_start_4
    new-array v0, p1, [I

    #@6
    iput-object v0, p0, Lcom/android/dx/util/IntList;->values:[I
    :try_end_8
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_4 .. :try_end_8} :catch_e

    #@8
    const/4 v0, 0x0

    #@9
    iput v0, p0, Lcom/android/dx/util/IntList;->size:I

    #@b
    iput-boolean v1, p0, Lcom/android/dx/util/IntList;->sorted:Z

    #@d
    return-void

    #@e
    :catch_e
    move-exception v0

    #@f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string v1, "size < 0"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0
.end method

.method private growIfNeeded()V
    .registers 5

    #@0
    const/4 v3, 0x0

    #@1
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    #@3
    iget-object v1, p0, Lcom/android/dx/util/IntList;->values:[I

    #@5
    array-length v1, v1

    #@6
    if-ne v0, v1, :cond_1b

    #@8
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    #@a
    mul-int/lit8 v0, v0, 0x3

    #@c
    div-int/lit8 v0, v0, 0x2

    #@e
    add-int/lit8 v0, v0, 0xa

    #@10
    new-array v0, v0, [I

    #@12
    iget-object v1, p0, Lcom/android/dx/util/IntList;->values:[I

    #@14
    iget v2, p0, Lcom/android/dx/util/IntList;->size:I

    #@16
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@19
    iput-object v0, p0, Lcom/android/dx/util/IntList;->values:[I

    #@1b
    :cond_1b
    return-void
.end method

.method public static makeImmutable(I)Lcom/android/dx/util/IntList;
    .registers 3

    #@0
    new-instance v0, Lcom/android/dx/util/IntList;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1}, Lcom/android/dx/util/IntList;-><init>(I)V

    #@6
    invoke-virtual {v0, p0}, Lcom/android/dx/util/IntList;->add(I)V

    #@9
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->setImmutable()V

    #@c
    return-object v0
.end method

.method public static makeImmutable(II)Lcom/android/dx/util/IntList;
    .registers 4

    #@0
    new-instance v0, Lcom/android/dx/util/IntList;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-direct {v0, v1}, Lcom/android/dx/util/IntList;-><init>(I)V

    #@6
    invoke-virtual {v0, p0}, Lcom/android/dx/util/IntList;->add(I)V

    #@9
    invoke-virtual {v0, p1}, Lcom/android/dx/util/IntList;->add(I)V

    #@c
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->setImmutable()V

    #@f
    return-object v0
.end method


# virtual methods
.method public add(I)V
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0}, Lcom/android/dx/util/IntList;->throwIfImmutable()V

    #@4
    invoke-direct {p0}, Lcom/android/dx/util/IntList;->growIfNeeded()V

    #@7
    iget-object v1, p0, Lcom/android/dx/util/IntList;->values:[I

    #@9
    iget v2, p0, Lcom/android/dx/util/IntList;->size:I

    #@b
    add-int/lit8 v3, v2, 0x1

    #@d
    iput v3, p0, Lcom/android/dx/util/IntList;->size:I

    #@f
    aput p1, v1, v2

    #@11
    iget-boolean v1, p0, Lcom/android/dx/util/IntList;->sorted:Z

    #@13
    if-eqz v1, :cond_25

    #@15
    iget v1, p0, Lcom/android/dx/util/IntList;->size:I

    #@17
    if-le v1, v0, :cond_25

    #@19
    iget-object v1, p0, Lcom/android/dx/util/IntList;->values:[I

    #@1b
    iget v2, p0, Lcom/android/dx/util/IntList;->size:I

    #@1d
    add-int/lit8 v2, v2, -0x2

    #@1f
    aget v1, v1, v2

    #@21
    if-lt p1, v1, :cond_26

    #@23
    :goto_23
    iput-boolean v0, p0, Lcom/android/dx/util/IntList;->sorted:Z

    #@25
    :cond_25
    return-void

    #@26
    :cond_26
    const/4 v0, 0x0

    #@27
    goto :goto_23
.end method

.method public binarysearch(I)I
    .registers 8

    #@0
    iget v3, p0, Lcom/android/dx/util/IntList;->size:I

    #@2
    iget-boolean v0, p0, Lcom/android/dx/util/IntList;->sorted:Z

    #@4
    if-nez v0, :cond_15

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    if-ge v0, v3, :cond_13

    #@9
    iget-object v1, p0, Lcom/android/dx/util/IntList;->values:[I

    #@b
    aget v1, v1, v0

    #@d
    if-ne v1, p1, :cond_10

    #@f
    :cond_f
    :goto_f
    return v0

    #@10
    :cond_10
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_7

    #@13
    :cond_13
    neg-int v0, v3

    #@14
    goto :goto_f

    #@15
    :cond_15
    const/4 v1, -0x1

    #@16
    move v0, v3

    #@17
    :goto_17
    add-int/lit8 v2, v1, 0x1

    #@19
    if-le v0, v2, :cond_2e

    #@1b
    sub-int v2, v0, v1

    #@1d
    shr-int/lit8 v2, v2, 0x1

    #@1f
    add-int/2addr v2, v1

    #@20
    iget-object v4, p0, Lcom/android/dx/util/IntList;->values:[I

    #@22
    aget v4, v4, v2

    #@24
    if-gt p1, v4, :cond_2a

    #@26
    move v0, v1

    #@27
    :goto_27
    move v1, v0

    #@28
    move v0, v2

    #@29
    goto :goto_17

    #@2a
    :cond_2a
    move v5, v2

    #@2b
    move v2, v0

    #@2c
    move v0, v5

    #@2d
    goto :goto_27

    #@2e
    :cond_2e
    if-eq v0, v3, :cond_3a

    #@30
    iget-object v1, p0, Lcom/android/dx/util/IntList;->values:[I

    #@32
    aget v1, v1, v0

    #@34
    if-eq p1, v1, :cond_f

    #@36
    neg-int v0, v0

    #@37
    add-int/lit8 v0, v0, -0x1

    #@39
    goto :goto_f

    #@3a
    :cond_3a
    neg-int v0, v3

    #@3b
    add-int/lit8 v0, v0, -0x1

    #@3d
    goto :goto_f
.end method

.method public contains(I)Z
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/android/dx/util/IntList;->indexOf(I)I

    #@3
    move-result v0

    #@4
    if-ltz v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    if-ne p1, p0, :cond_5

    #@4
    :cond_4
    :goto_4
    return v0

    #@5
    :cond_5
    instance-of v2, p1, Lcom/android/dx/util/IntList;

    #@7
    if-eqz v2, :cond_29

    #@9
    check-cast p1, Lcom/android/dx/util/IntList;

    #@b
    iget-boolean v2, p0, Lcom/android/dx/util/IntList;->sorted:Z

    #@d
    iget-boolean v3, p1, Lcom/android/dx/util/IntList;->sorted:Z

    #@f
    if-ne v2, v3, :cond_29

    #@11
    iget v2, p0, Lcom/android/dx/util/IntList;->size:I

    #@13
    iget v3, p1, Lcom/android/dx/util/IntList;->size:I

    #@15
    if-ne v2, v3, :cond_29

    #@17
    move v2, v1

    #@18
    :goto_18
    iget v3, p0, Lcom/android/dx/util/IntList;->size:I

    #@1a
    if-ge v2, v3, :cond_4

    #@1c
    iget-object v3, p0, Lcom/android/dx/util/IntList;->values:[I

    #@1e
    aget v3, v3, v2

    #@20
    iget-object v4, p1, Lcom/android/dx/util/IntList;->values:[I

    #@22
    aget v4, v4, v2

    #@24
    if-ne v3, v4, :cond_29

    #@26
    add-int/lit8 v2, v2, 0x1

    #@28
    goto :goto_18

    #@29
    :cond_29
    move v0, v1

    #@2a
    goto :goto_4
.end method

.method public get(I)I
    .registers 4

    #@0
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    #@2
    if-lt p1, v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@6
    const-string v1, "n >= size()"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/dx/util/IntList;->values:[I

    #@e
    aget v0, v0, p1
    :try_end_10
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c .. :try_end_10} :catch_11

    #@10
    return v0

    #@11
    :catch_11
    move-exception v0

    #@12
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@14
    const-string v1, "n < 0"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0
.end method

.method public hashCode()I
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    move v1, v0

    #@2
    :goto_2
    iget v2, p0, Lcom/android/dx/util/IntList;->size:I

    #@4
    if-ge v0, v2, :cond_10

    #@6
    mul-int/lit8 v1, v1, 0x1f

    #@8
    iget-object v2, p0, Lcom/android/dx/util/IntList;->values:[I

    #@a
    aget v2, v2, v0

    #@c
    add-int/2addr v1, v2

    #@d
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_2

    #@10
    :cond_10
    return v1
.end method

.method public indexOf(I)I
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/android/dx/util/IntList;->binarysearch(I)I

    #@3
    move-result v0

    #@4
    if-ltz v0, :cond_7

    #@6
    :goto_6
    return v0

    #@7
    :cond_7
    const/4 v0, -0x1

    #@8
    goto :goto_6
.end method

.method public insert(II)V
    .registers 7

    #@0
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    #@2
    if-le p1, v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@6
    const-string v1, "n > size()"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    invoke-direct {p0}, Lcom/android/dx/util/IntList;->growIfNeeded()V

    #@f
    iget-object v0, p0, Lcom/android/dx/util/IntList;->values:[I

    #@11
    iget-object v1, p0, Lcom/android/dx/util/IntList;->values:[I

    #@13
    add-int/lit8 v2, p1, 0x1

    #@15
    iget v3, p0, Lcom/android/dx/util/IntList;->size:I

    #@17
    sub-int/2addr v3, p1

    #@18
    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1b
    iget-object v0, p0, Lcom/android/dx/util/IntList;->values:[I

    #@1d
    aput p2, v0, p1

    #@1f
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    #@21
    add-int/lit8 v0, v0, 0x1

    #@23
    iput v0, p0, Lcom/android/dx/util/IntList;->size:I

    #@25
    iget-boolean v0, p0, Lcom/android/dx/util/IntList;->sorted:Z

    #@27
    if-eqz v0, :cond_45

    #@29
    if-eqz p1, :cond_33

    #@2b
    iget-object v0, p0, Lcom/android/dx/util/IntList;->values:[I

    #@2d
    add-int/lit8 v1, p1, -0x1

    #@2f
    aget v0, v0, v1

    #@31
    if-le p2, v0, :cond_45

    #@33
    :cond_33
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    #@35
    add-int/lit8 v0, v0, -0x1

    #@37
    if-eq p1, v0, :cond_41

    #@39
    iget-object v0, p0, Lcom/android/dx/util/IntList;->values:[I

    #@3b
    add-int/lit8 v1, p1, 0x1

    #@3d
    aget v0, v0, v1

    #@3f
    if-ge p2, v0, :cond_45

    #@41
    :cond_41
    const/4 v0, 0x1

    #@42
    :goto_42
    iput-boolean v0, p0, Lcom/android/dx/util/IntList;->sorted:Z

    #@44
    return-void

    #@45
    :cond_45
    const/4 v0, 0x0

    #@46
    goto :goto_42
.end method

.method public mutableCopy()Lcom/android/dx/util/IntList;
    .registers 5

    #@0
    iget v1, p0, Lcom/android/dx/util/IntList;->size:I

    #@2
    new-instance v2, Lcom/android/dx/util/IntList;

    #@4
    invoke-direct {v2, v1}, Lcom/android/dx/util/IntList;-><init>(I)V

    #@7
    const/4 v0, 0x0

    #@8
    :goto_8
    if-ge v0, v1, :cond_14

    #@a
    iget-object v3, p0, Lcom/android/dx/util/IntList;->values:[I

    #@c
    aget v3, v3, v0

    #@e
    invoke-virtual {v2, v3}, Lcom/android/dx/util/IntList;->add(I)V

    #@11
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_8

    #@14
    :cond_14
    return-object v2
.end method

.method public pop()I
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/android/dx/util/IntList;->throwIfImmutable()V

    #@3
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    #@5
    add-int/lit8 v0, v0, -0x1

    #@7
    invoke-virtual {p0, v0}, Lcom/android/dx/util/IntList;->get(I)I

    #@a
    move-result v0

    #@b
    iget v1, p0, Lcom/android/dx/util/IntList;->size:I

    #@d
    add-int/lit8 v1, v1, -0x1

    #@f
    iput v1, p0, Lcom/android/dx/util/IntList;->size:I

    #@11
    return v0
.end method

.method public pop(I)V
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/android/dx/util/IntList;->throwIfImmutable()V

    #@3
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    #@5
    sub-int/2addr v0, p1

    #@6
    iput v0, p0, Lcom/android/dx/util/IntList;->size:I

    #@8
    return-void
.end method

.method public removeIndex(I)V
    .registers 6

    #@0
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    #@2
    if-lt p1, v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@6
    const-string v1, "n >= size()"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iget-object v0, p0, Lcom/android/dx/util/IntList;->values:[I

    #@e
    add-int/lit8 v1, p1, 0x1

    #@10
    iget-object v2, p0, Lcom/android/dx/util/IntList;->values:[I

    #@12
    iget v3, p0, Lcom/android/dx/util/IntList;->size:I

    #@14
    sub-int/2addr v3, p1

    #@15
    add-int/lit8 v3, v3, -0x1

    #@17
    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1a
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    #@1c
    add-int/lit8 v0, v0, -0x1

    #@1e
    iput v0, p0, Lcom/android/dx/util/IntList;->size:I

    #@20
    return-void
.end method

.method public set(II)V
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/android/dx/util/IntList;->throwIfImmutable()V

    #@3
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    #@5
    if-lt p1, v0, :cond_f

    #@7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@9
    const-string v1, "n >= size()"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/dx/util/IntList;->values:[I

    #@11
    aput p2, v0, p1

    #@13
    const/4 v0, 0x0

    #@14
    iput-boolean v0, p0, Lcom/android/dx/util/IntList;->sorted:Z
    :try_end_16
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_f .. :try_end_16} :catch_17

    #@16
    :cond_16
    return-void

    #@17
    :catch_17
    move-exception v0

    #@18
    if-gez p1, :cond_16

    #@1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1c
    const-string v1, "n < 0"

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0
.end method

.method public shrink(I)V
    .registers 4

    #@0
    if-gez p1, :cond_a

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string v1, "newSize < 0"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    #@c
    if-le p1, v0, :cond_16

    #@e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    const-string v1, "newSize > size"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    :cond_16
    invoke-virtual {p0}, Lcom/android/dx/util/IntList;->throwIfImmutable()V

    #@19
    iput p1, p0, Lcom/android/dx/util/IntList;->size:I

    #@1b
    return-void
.end method

.method public size()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    #@2
    return v0
.end method

.method public sort()V
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/android/dx/util/IntList;->throwIfImmutable()V

    #@3
    iget-boolean v0, p0, Lcom/android/dx/util/IntList;->sorted:Z

    #@5
    if-nez v0, :cond_12

    #@7
    iget-object v0, p0, Lcom/android/dx/util/IntList;->values:[I

    #@9
    const/4 v1, 0x0

    #@a
    iget v2, p0, Lcom/android/dx/util/IntList;->size:I

    #@c
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([III)V

    #@f
    const/4 v0, 0x1

    #@10
    iput-boolean v0, p0, Lcom/android/dx/util/IntList;->sorted:Z

    #@12
    :cond_12
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    #@4
    mul-int/lit8 v0, v0, 0x5

    #@6
    add-int/lit8 v0, v0, 0xa

    #@8
    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    #@b
    const/16 v0, 0x7b

    #@d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@10
    const/4 v0, 0x0

    #@11
    :goto_11
    iget v2, p0, Lcom/android/dx/util/IntList;->size:I

    #@13
    if-ge v0, v2, :cond_26

    #@15
    if-eqz v0, :cond_1c

    #@17
    const-string v2, ", "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c
    :cond_1c
    iget-object v2, p0, Lcom/android/dx/util/IntList;->values:[I

    #@1e
    aget v2, v2, v0

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@23
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_11

    #@26
    :cond_26
    const/16 v0, 0x7d

    #@28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    return-object v0
.end method

.method public top()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    invoke-virtual {p0, v0}, Lcom/android/dx/util/IntList;->get(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method
