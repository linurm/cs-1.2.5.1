.class public final Lcom/android/dx/rop/code/RegisterSpecSet;
.super Lcom/android/dx/util/MutabilityControl;


# static fields
.field public static final EMPTY:Lcom/android/dx/rop/code/RegisterSpecSet;


# instance fields
.field private size:I

.field private final specs:[Lcom/android/dx/rop/code/RegisterSpec;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Lcom/android/dx/rop/code/RegisterSpecSet;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecSet;-><init>(I)V

    #@6
    sput-object v0, Lcom/android/dx/rop/code/RegisterSpecSet;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecSet;

    #@8
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    #@0
    const/4 v1, 0x0

    #@1
    if-eqz p1, :cond_e

    #@3
    const/4 v0, 0x1

    #@4
    :goto_4
    invoke-direct {p0, v0}, Lcom/android/dx/util/MutabilityControl;-><init>(Z)V

    #@7
    new-array v0, p1, [Lcom/android/dx/rop/code/RegisterSpec;

    #@9
    iput-object v0, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    #@b
    iput v1, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->size:I

    #@d
    return-void

    #@e
    :cond_e
    move v0, v1

    #@f
    goto :goto_4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    instance-of v1, p1, Lcom/android/dx/rop/code/RegisterSpecSet;

    #@3
    if-nez v1, :cond_6

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    check-cast p1, Lcom/android/dx/rop/code/RegisterSpecSet;

    #@8
    iget-object v2, p1, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    #@a
    iget-object v1, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    #@c
    array-length v3, v1

    #@d
    array-length v1, v2

    #@e
    if-ne v3, v1, :cond_5

    #@10
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecSet;->size()I

    #@13
    move-result v1

    #@14
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpecSet;->size()I

    #@17
    move-result v4

    #@18
    if-ne v1, v4, :cond_5

    #@1a
    move v1, v0

    #@1b
    :goto_1b
    if-ge v1, v3, :cond_31

    #@1d
    iget-object v4, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    #@1f
    aget-object v4, v4, v1

    #@21
    aget-object v5, v2, v1

    #@23
    if-ne v4, v5, :cond_28

    #@25
    :cond_25
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_1b

    #@28
    :cond_28
    if-eqz v4, :cond_5

    #@2a
    invoke-virtual {v4, v5}, Lcom/android/dx/rop/code/RegisterSpec;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v4

    #@2e
    if-nez v4, :cond_25

    #@30
    goto :goto_5

    #@31
    :cond_31
    const/4 v0, 0x1

    #@32
    goto :goto_5
.end method

.method public findMatchingLocal(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;
    .registers 6

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    #@2
    array-length v2, v0

    #@3
    const/4 v0, 0x0

    #@4
    move v1, v0

    #@5
    :goto_5
    if-ge v1, v2, :cond_18

    #@7
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    #@9
    aget-object v0, v0, v1

    #@b
    if-nez v0, :cond_11

    #@d
    :cond_d
    add-int/lit8 v0, v1, 0x1

    #@f
    move v1, v0

    #@10
    goto :goto_5

    #@11
    :cond_11
    invoke-virtual {p1, v0}, Lcom/android/dx/rop/code/RegisterSpec;->matchesVariable(Lcom/android/dx/rop/code/RegisterSpec;)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_d

    #@17
    :goto_17
    return-object v0

    #@18
    :cond_18
    const/4 v0, 0x0

    #@19
    goto :goto_17
.end method

.method public get(I)Lcom/android/dx/rop/code/RegisterSpec;
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    #@2
    aget-object v0, v0, p1
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    #@4
    return-object v0

    #@5
    :catch_5
    move-exception v0

    #@6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string v1, "bogus reg"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
.end method

.method public get(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;
    .registers 3

    #@0
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getMaxSize()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public hashCode()I
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    #@3
    array-length v4, v0

    #@4
    move v2, v1

    #@5
    move v3, v1

    #@6
    :goto_6
    if-ge v2, v4, :cond_1b

    #@8
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    #@a
    aget-object v0, v0, v2

    #@c
    if-nez v0, :cond_16

    #@e
    move v0, v1

    #@f
    :goto_f
    mul-int/lit8 v3, v3, 0x1f

    #@11
    add-int/2addr v3, v0

    #@12
    add-int/lit8 v0, v2, 0x1

    #@14
    move v2, v0

    #@15
    goto :goto_6

    #@16
    :cond_16
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->hashCode()I

    #@19
    move-result v0

    #@1a
    goto :goto_f

    #@1b
    :cond_1b
    return v3
.end method

.method public intersect(Lcom/android/dx/rop/code/RegisterSpecSet;Z)V
    .registers 9

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecSet;->throwIfImmutable()V

    #@3
    iget-object v2, p1, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    #@5
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    #@7
    array-length v3, v0

    #@8
    array-length v0, v2

    #@9
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    #@c
    move-result v0

    #@d
    const/4 v1, -0x1

    #@e
    iput v1, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->size:I

    #@10
    const/4 v1, 0x0

    #@11
    :goto_11
    if-ge v1, v0, :cond_29

    #@13
    iget-object v4, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    #@15
    aget-object v4, v4, v1

    #@17
    if-nez v4, :cond_1c

    #@19
    :cond_19
    :goto_19
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_11

    #@1c
    :cond_1c
    aget-object v5, v2, v1

    #@1e
    invoke-virtual {v4, v5, p2}, Lcom/android/dx/rop/code/RegisterSpec;->intersect(Lcom/android/dx/rop/code/RegisterSpec;Z)Lcom/android/dx/rop/code/RegisterSpec;

    #@21
    move-result-object v5

    #@22
    if-eq v5, v4, :cond_19

    #@24
    iget-object v4, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    #@26
    aput-object v5, v4, v1

    #@28
    goto :goto_19

    #@29
    :cond_29
    :goto_29
    if-ge v0, v3, :cond_33

    #@2b
    iget-object v1, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    #@2d
    const/4 v2, 0x0

    #@2e
    aput-object v2, v1, v0

    #@30
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_29

    #@33
    :cond_33
    return-void
.end method

.method public localItemToSpec(Lcom/android/dx/rop/code/LocalItem;)Lcom/android/dx/rop/code/RegisterSpec;
    .registers 6

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    #@2
    array-length v2, v0

    #@3
    const/4 v0, 0x0

    #@4
    move v1, v0

    #@5
    :goto_5
    if-ge v1, v2, :cond_1c

    #@7
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    #@9
    aget-object v0, v0, v1

    #@b
    if-eqz v0, :cond_18

    #@d
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {p1, v3}, Lcom/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_18

    #@17
    :goto_17
    return-object v0

    #@18
    :cond_18
    add-int/lit8 v0, v1, 0x1

    #@1a
    move v1, v0

    #@1b
    goto :goto_5

    #@1c
    :cond_1c
    const/4 v0, 0x0

    #@1d
    goto :goto_17
.end method

.method public mutableCopy()Lcom/android/dx/rop/code/RegisterSpecSet;
    .registers 5

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    #@2
    array-length v1, v0

    #@3
    new-instance v2, Lcom/android/dx/rop/code/RegisterSpecSet;

    #@5
    invoke-direct {v2, v1}, Lcom/android/dx/rop/code/RegisterSpecSet;-><init>(I)V

    #@8
    const/4 v0, 0x0

    #@9
    :goto_9
    if-ge v0, v1, :cond_17

    #@b
    iget-object v3, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    #@d
    aget-object v3, v3, v0

    #@f
    if-eqz v3, :cond_14

    #@11
    invoke-virtual {v2, v3}, Lcom/android/dx/rop/code/RegisterSpecSet;->put(Lcom/android/dx/rop/code/RegisterSpec;)V

    #@14
    :cond_14
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_9

    #@17
    :cond_17
    iget v0, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->size:I

    #@19
    iput v0, v2, Lcom/android/dx/rop/code/RegisterSpecSet;->size:I

    #@1b
    return-object v2
.end method

.method public put(Lcom/android/dx/rop/code/RegisterSpec;)V
    .registers 7

    #@0
    const/4 v4, 0x2

    #@1
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecSet;->throwIfImmutable()V

    #@4
    if-nez p1, :cond_e

    #@6
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    const-string v1, "spec == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    const/4 v0, -0x1

    #@f
    iput v0, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->size:I

    #@11
    :try_start_11
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@14
    move-result v0

    #@15
    iget-object v1, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    #@17
    aput-object p1, v1, v0

    #@19
    if-lez v0, :cond_2e

    #@1b
    add-int/lit8 v1, v0, -0x1

    #@1d
    iget-object v2, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    #@1f
    aget-object v2, v2, v1

    #@21
    if-eqz v2, :cond_2e

    #@23
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@26
    move-result v2

    #@27
    if-ne v2, v4, :cond_2e

    #@29
    iget-object v2, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    #@2b
    const/4 v3, 0x0

    #@2c
    aput-object v3, v2, v1

    #@2e
    :cond_2e
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@31
    move-result v1

    #@32
    if-ne v1, v4, :cond_3b

    #@34
    iget-object v1, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    #@36
    add-int/lit8 v0, v0, 0x1

    #@38
    const/4 v2, 0x0

    #@39
    aput-object v2, v1, v0
    :try_end_3b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_11 .. :try_end_3b} :catch_3c

    #@3b
    :cond_3b
    return-void

    #@3c
    :catch_3c
    move-exception v0

    #@3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@3f
    const-string v1, "spec.getReg() out of range"

    #@41
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@44
    throw v0
.end method

.method public putAll(Lcom/android/dx/rop/code/RegisterSpecSet;)V
    .registers 5

    #@0
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpecSet;->getMaxSize()I

    #@3
    move-result v1

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    if-ge v0, v1, :cond_13

    #@7
    invoke-virtual {p1, v0}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@a
    move-result-object v2

    #@b
    if-eqz v2, :cond_10

    #@d
    invoke-virtual {p0, v2}, Lcom/android/dx/rop/code/RegisterSpecSet;->put(Lcom/android/dx/rop/code/RegisterSpec;)V

    #@10
    :cond_10
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_5

    #@13
    :cond_13
    return-void
.end method

.method public remove(Lcom/android/dx/rop/code/RegisterSpec;)V
    .registers 5

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    #@2
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@5
    move-result v1

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v2, v0, v1

    #@9
    const/4 v0, -0x1

    #@a
    iput v0, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->size:I
    :try_end_c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_c} :catch_d

    #@c
    return-void

    #@d
    :catch_d
    move-exception v0

    #@e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    const-string v1, "bogus reg"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0
.end method

.method public size()I
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    iget v0, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->size:I

    #@3
    if-gez v0, :cond_18

    #@5
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    #@7
    array-length v2, v0

    #@8
    move v0, v1

    #@9
    :goto_9
    if-ge v1, v2, :cond_16

    #@b
    iget-object v3, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    #@d
    aget-object v3, v3, v1

    #@f
    if-eqz v3, :cond_13

    #@11
    add-int/lit8 v0, v0, 0x1

    #@13
    :cond_13
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_9

    #@16
    :cond_16
    iput v0, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->size:I

    #@18
    :cond_18
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    #@3
    array-length v2, v1

    #@4
    new-instance v3, Ljava/lang/StringBuffer;

    #@6
    mul-int/lit8 v1, v2, 0x19

    #@8
    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    #@b
    const/16 v1, 0x7b

    #@d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@10
    move v1, v0

    #@11
    :goto_11
    if-ge v1, v2, :cond_28

    #@13
    iget-object v4, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    #@15
    aget-object v4, v4, v1

    #@17
    if-eqz v4, :cond_23

    #@19
    if-eqz v0, :cond_26

    #@1b
    const-string v5, ", "

    #@1d
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@20
    :goto_20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@23
    :cond_23
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_11

    #@26
    :cond_26
    const/4 v0, 0x1

    #@27
    goto :goto_20

    #@28
    :cond_28
    const/16 v0, 0x7d

    #@2a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    return-object v0
.end method

.method public withOffset(I)Lcom/android/dx/rop/code/RegisterSpecSet;
    .registers 6

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    #@2
    array-length v1, v0

    #@3
    new-instance v2, Lcom/android/dx/rop/code/RegisterSpecSet;

    #@5
    add-int v0, v1, p1

    #@7
    invoke-direct {v2, v0}, Lcom/android/dx/rop/code/RegisterSpecSet;-><init>(I)V

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    if-ge v0, v1, :cond_1d

    #@d
    iget-object v3, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    #@f
    aget-object v3, v3, v0

    #@11
    if-eqz v3, :cond_1a

    #@13
    invoke-virtual {v3, p1}, Lcom/android/dx/rop/code/RegisterSpec;->withOffset(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v2, v3}, Lcom/android/dx/rop/code/RegisterSpecSet;->put(Lcom/android/dx/rop/code/RegisterSpec;)V

    #@1a
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_b

    #@1d
    :cond_1d
    iget v0, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->size:I

    #@1f
    iput v0, v2, Lcom/android/dx/rop/code/RegisterSpecSet;->size:I

    #@21
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecSet;->isImmutable()Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_2a

    #@27
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    #@2a
    :cond_2a
    return-object v2
.end method
