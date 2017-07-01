.class public Lcom/android/dx/util/FixedSizeList;
.super Lcom/android/dx/util/MutabilityControl;

# interfaces
.implements Lcom/android/dx/util/ToHuman;


# instance fields
.field private arr:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 4

    #@0
    if-eqz p1, :cond_b

    #@2
    const/4 v0, 0x1

    #@3
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/dx/util/MutabilityControl;-><init>(Z)V

    #@6
    :try_start_6
    new-array v0, p1, [Ljava/lang/Object;

    #@8
    iput-object v0, p0, Lcom/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_6 .. :try_end_a} :catch_d

    #@a
    return-void

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    goto :goto_3

    #@d
    :catch_d
    move-exception v0

    #@e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    const-string v1, "size < 0"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0
.end method

.method private throwIndex(I)Ljava/lang/Object;
    .registers 4

    #@0
    if-gez p1, :cond_a

    #@2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@4
    const-string v1, "n < 0"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@c
    const-string v1, "n >= size()"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0
.end method

.method private toString0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9

    #@0
    iget-object v0, p0, Lcom/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    #@2
    array-length v2, v0

    #@3
    new-instance v3, Ljava/lang/StringBuffer;

    #@5
    mul-int/lit8 v0, v2, 0xa

    #@7
    add-int/lit8 v0, v0, 0xa

    #@9
    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    #@c
    if-eqz p1, :cond_11

    #@e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    move v1, v0

    #@13
    :goto_13
    if-ge v1, v2, :cond_37

    #@15
    if-eqz v1, :cond_1c

    #@17
    if-eqz p2, :cond_1c

    #@19
    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c
    :cond_1c
    if-eqz p4, :cond_2f

    #@1e
    iget-object v0, p0, Lcom/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    #@20
    aget-object v0, v0, v1

    #@22
    check-cast v0, Lcom/android/dx/util/ToHuman;

    #@24
    invoke-interface {v0}, Lcom/android/dx/util/ToHuman;->toHuman()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2b
    :goto_2b
    add-int/lit8 v0, v1, 0x1

    #@2d
    move v1, v0

    #@2e
    goto :goto_13

    #@2f
    :cond_2f
    iget-object v0, p0, Lcom/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    #@31
    aget-object v0, v0, v1

    #@33
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@36
    goto :goto_2b

    #@37
    :cond_37
    if-eqz p3, :cond_3c

    #@39
    invoke-virtual {v3, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3c
    :cond_3c
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    #@0
    if-ne p0, p1, :cond_4

    #@2
    const/4 v0, 0x1

    #@3
    :goto_3
    return v0

    #@4
    :cond_4
    if-eqz p1, :cond_10

    #@6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d
    move-result-object v1

    #@e
    if-eq v0, v1, :cond_12

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    goto :goto_3

    #@12
    :cond_12
    check-cast p1, Lcom/android/dx/util/FixedSizeList;

    #@14
    iget-object v0, p0, Lcom/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    #@16
    iget-object v1, p1, Lcom/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    #@18
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    goto :goto_3
.end method

.method protected final get0(I)Ljava/lang/Object;
    .registers 5

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    #@2
    aget-object v0, v0, p1

    #@4
    if-nez v0, :cond_24

    #@6
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string v2, "unset: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0
    :try_end_1f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_1f} :catch_1f

    #@1f
    :catch_1f
    move-exception v0

    #@20
    invoke-direct {p0, p1}, Lcom/android/dx/util/FixedSizeList;->throwIndex(I)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    :cond_24
    return-object v0
.end method

.method protected final getOrNull0(I)Ljava/lang/Object;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    #@2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected final set0(ILjava/lang/Object;)V
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/android/dx/util/FixedSizeList;->throwIfImmutable()V

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    #@5
    aput-object p2, v0, p1
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_7} :catch_8

    #@7
    :goto_7
    return-void

    #@8
    :catch_8
    move-exception v0

    #@9
    invoke-direct {p0, p1}, Lcom/android/dx/util/FixedSizeList;->throwIndex(I)Ljava/lang/Object;

    #@c
    goto :goto_7
.end method

.method public shrinkToFit()V
    .registers 7

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    #@3
    array-length v3, v0

    #@4
    move v2, v1

    #@5
    move v0, v1

    #@6
    :goto_6
    if-ge v2, v3, :cond_13

    #@8
    iget-object v4, p0, Lcom/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    #@a
    aget-object v4, v4, v2

    #@c
    if-eqz v4, :cond_10

    #@e
    add-int/lit8 v0, v0, 0x1

    #@10
    :cond_10
    add-int/lit8 v2, v2, 0x1

    #@12
    goto :goto_6

    #@13
    :cond_13
    if-ne v3, v0, :cond_16

    #@15
    :cond_15
    :goto_15
    return-void

    #@16
    :cond_16
    invoke-virtual {p0}, Lcom/android/dx/util/FixedSizeList;->throwIfImmutable()V

    #@19
    new-array v4, v0, [Ljava/lang/Object;

    #@1b
    move v2, v1

    #@1c
    :goto_1c
    if-ge v2, v3, :cond_2b

    #@1e
    iget-object v5, p0, Lcom/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    #@20
    aget-object v5, v5, v2

    #@22
    if-eqz v5, :cond_28

    #@24
    aput-object v5, v4, v1

    #@26
    add-int/lit8 v1, v1, 0x1

    #@28
    :cond_28
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_1c

    #@2b
    :cond_2b
    iput-object v4, p0, Lcom/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    #@2d
    if-nez v0, :cond_15

    #@2f
    invoke-virtual {p0}, Lcom/android/dx/util/FixedSizeList;->setImmutable()V

    #@32
    goto :goto_15
.end method

.method public final size()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 5

    #@0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const/16 v2, 0x2e

    #@f
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@12
    move-result v2

    #@13
    add-int/lit8 v2, v2, 0x1

    #@15
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    const/16 v1, 0x7b

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    const-string v1, ", "

    #@29
    const-string v2, "}"

    #@2b
    const/4 v3, 0x1

    #@2c
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/dx/util/FixedSizeList;->toString0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    return-object v0
.end method

.method public toHuman(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/dx/util/FixedSizeList;->toString0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const/16 v2, 0x2e

    #@f
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@12
    move-result v2

    #@13
    add-int/lit8 v2, v2, 0x1

    #@15
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    const/16 v1, 0x7b

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    const-string v1, ", "

    #@29
    const-string v2, "}"

    #@2b
    const/4 v3, 0x0

    #@2c
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/dx/util/FixedSizeList;->toString0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    return-object v0
.end method

.method public toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/dx/util/FixedSizeList;->toString0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method
