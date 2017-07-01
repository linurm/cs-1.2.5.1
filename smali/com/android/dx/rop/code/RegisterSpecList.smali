.class public final Lcom/android/dx/rop/code/RegisterSpecList;
.super Lcom/android/dx/util/FixedSizeList;

# interfaces
.implements Lcom/android/dx/rop/type/TypeList;


# static fields
.field public static final EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Lcom/android/dx/rop/code/RegisterSpecList;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    #@6
    sput-object v0, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    #@8
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/android/dx/util/FixedSizeList;-><init>(I)V

    #@3
    return-void
.end method

.method public static make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;
    .registers 3

    #@0
    new-instance v0, Lcom/android/dx/rop/code/RegisterSpecList;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    #@6
    const/4 v1, 0x0

    #@7
    invoke-virtual {v0, v1, p0}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    #@a
    return-object v0
.end method

.method public static make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;
    .registers 4

    #@0
    new-instance v0, Lcom/android/dx/rop/code/RegisterSpecList;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-direct {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    #@6
    const/4 v1, 0x0

    #@7
    invoke-virtual {v0, v1, p0}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    #@a
    const/4 v1, 0x1

    #@b
    invoke-virtual {v0, v1, p1}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    #@e
    return-object v0
.end method

.method public static make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;
    .registers 5

    #@0
    new-instance v0, Lcom/android/dx/rop/code/RegisterSpecList;

    #@2
    const/4 v1, 0x3

    #@3
    invoke-direct {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    #@6
    const/4 v1, 0x0

    #@7
    invoke-virtual {v0, v1, p0}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    #@a
    const/4 v1, 0x1

    #@b
    invoke-virtual {v0, v1, p1}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    #@e
    const/4 v1, 0x2

    #@f
    invoke-virtual {v0, v1, p2}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    #@12
    return-object v0
.end method

.method public static make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;
    .registers 6

    #@0
    new-instance v0, Lcom/android/dx/rop/code/RegisterSpecList;

    #@2
    const/4 v1, 0x4

    #@3
    invoke-direct {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    #@6
    const/4 v1, 0x0

    #@7
    invoke-virtual {v0, v1, p0}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    #@a
    const/4 v1, 0x1

    #@b
    invoke-virtual {v0, v1, p1}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    #@e
    const/4 v1, 0x2

    #@f
    invoke-virtual {v0, v1, p2}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    #@12
    const/4 v1, 0x3

    #@13
    invoke-virtual {v0, v1, p3}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    #@16
    return-object v0
.end method


# virtual methods
.method public get(I)Lcom/android/dx/rop/code/RegisterSpec;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/dx/rop/code/RegisterSpec;

    #@6
    return-object v0
.end method

.method public getRegistersSize()I
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@4
    move-result v3

    #@5
    move v2, v0

    #@6
    move v1, v0

    #@7
    :goto_7
    if-ge v2, v3, :cond_1e

    #@9
    invoke-virtual {p0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/dx/rop/code/RegisterSpec;

    #@f
    if-eqz v0, :cond_1c

    #@11
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getNextReg()I

    #@14
    move-result v0

    #@15
    if-le v0, v1, :cond_1c

    #@17
    :goto_17
    add-int/lit8 v1, v2, 0x1

    #@19
    move v2, v1

    #@1a
    move v1, v0

    #@1b
    goto :goto_7

    #@1c
    :cond_1c
    move v0, v1

    #@1d
    goto :goto_17

    #@1e
    :cond_1e
    return v1
.end method

.method public getType(I)Lcom/android/dx/rop/type/Type;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->getType()Lcom/android/dx/rop/type/Type;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getWordCount()I
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@4
    move-result v2

    #@5
    move v1, v0

    #@6
    :goto_6
    if-ge v1, v2, :cond_14

    #@8
    invoke-virtual {p0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->getType(I)Lcom/android/dx/rop/type/Type;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3}, Lcom/android/dx/rop/type/Type;->getCategory()I

    #@f
    move-result v3

    #@10
    add-int/2addr v0, v3

    #@11
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_6

    #@14
    :cond_14
    return v0
.end method

.method public indexOfRegister(I)I
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@3
    move-result v1

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    if-ge v0, v1, :cond_15

    #@7
    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@e
    move-result v2

    #@f
    if-ne v2, p1, :cond_12

    #@11
    :goto_11
    return v0

    #@12
    :cond_12
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_5

    #@15
    :cond_15
    const/4 v0, -0x1

    #@16
    goto :goto_11
.end method

.method public set(ILcom/android/dx/rop/code/RegisterSpec;)V
    .registers 3

    #@0
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    #@3
    return-void
.end method

.method public specForRegister(I)Lcom/android/dx/rop/code/RegisterSpec;
    .registers 6

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@3
    move-result v2

    #@4
    const/4 v0, 0x0

    #@5
    move v1, v0

    #@6
    :goto_6
    if-ge v1, v2, :cond_17

    #@8
    invoke-virtual {p0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@f
    move-result v3

    #@10
    if-ne v3, p1, :cond_13

    #@12
    :goto_12
    return-object v0

    #@13
    :cond_13
    add-int/lit8 v0, v1, 0x1

    #@15
    move v1, v0

    #@16
    goto :goto_6

    #@17
    :cond_17
    const/4 v0, 0x0

    #@18
    goto :goto_12
.end method

.method public subset(Ljava/util/BitSet;)Lcom/android/dx/rop/code/RegisterSpecList;
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@4
    move-result v0

    #@5
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    #@8
    move-result v2

    #@9
    sub-int v2, v0, v2

    #@b
    if-nez v2, :cond_10

    #@d
    sget-object v0, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    #@f
    :cond_f
    :goto_f
    return-object v0

    #@10
    :cond_10
    new-instance v0, Lcom/android/dx/rop/code/RegisterSpecList;

    #@12
    invoke-direct {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    #@15
    move v2, v1

    #@16
    :goto_16
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@19
    move-result v3

    #@1a
    if-ge v2, v3, :cond_2e

    #@1c
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    #@1f
    move-result v3

    #@20
    if-nez v3, :cond_2b

    #@22
    invoke-virtual {p0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v0, v1, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    #@29
    add-int/lit8 v1, v1, 0x1

    #@2b
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    #@2d
    goto :goto_16

    #@2e
    :cond_2e
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->isImmutable()Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_f

    #@34
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    #@37
    goto :goto_f
.end method

.method public withAddedType(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/TypeList;
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

.method public withExpandedRegisters(IZLjava/util/BitSet;)Lcom/android/dx/rop/code/RegisterSpecList;
    .registers 13

    #@0
    const/4 v6, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@5
    move-result v8

    #@6
    if-nez v8, :cond_9

    #@8
    :goto_8
    return-object p0

    #@9
    :cond_9
    new-instance v1, Lcom/android/dx/rop/code/RegisterSpecList;

    #@b
    invoke-direct {v1, v8}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    #@e
    move v4, p1

    #@f
    move v7, v2

    #@10
    move v3, p2

    #@11
    :goto_11
    if-ge v7, v8, :cond_43

    #@13
    invoke-virtual {p0, v7}, Lcom/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/android/dx/rop/code/RegisterSpec;

    #@19
    if-nez p3, :cond_35

    #@1b
    move v5, v6

    #@1c
    :goto_1c
    if-eqz v5, :cond_3f

    #@1e
    invoke-virtual {v0, v4}, Lcom/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v1, v7, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    #@25
    if-nez v3, :cond_2d

    #@27
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@2a
    move-result v0

    #@2b
    add-int/2addr v0, v4

    #@2c
    move v4, v0

    #@2d
    :cond_2d
    :goto_2d
    if-eqz v3, :cond_4e

    #@2f
    move v0, v2

    #@30
    :goto_30
    add-int/lit8 v3, v7, 0x1

    #@32
    move v7, v3

    #@33
    move v3, v0

    #@34
    goto :goto_11

    #@35
    :cond_35
    invoke-virtual {p3, v7}, Ljava/util/BitSet;->get(I)Z

    #@38
    move-result v5

    #@39
    if-nez v5, :cond_3d

    #@3b
    move v5, v6

    #@3c
    goto :goto_1c

    #@3d
    :cond_3d
    move v5, v2

    #@3e
    goto :goto_1c

    #@3f
    :cond_3f
    invoke-virtual {v1, v7, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    #@42
    goto :goto_2d

    #@43
    :cond_43
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->isImmutable()Z

    #@46
    move-result v0

    #@47
    if-eqz v0, :cond_4c

    #@49
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    #@4c
    :cond_4c
    move-object p0, v1

    #@4d
    goto :goto_8

    #@4e
    :cond_4e
    move v0, v3

    #@4f
    goto :goto_30
.end method

.method public withFirst(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@4
    move-result v2

    #@5
    new-instance v3, Lcom/android/dx/rop/code/RegisterSpecList;

    #@7
    add-int/lit8 v0, v2, 0x1

    #@9
    invoke-direct {v3, v0}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    #@c
    move v0, v1

    #@d
    :goto_d
    if-ge v0, v2, :cond_1b

    #@f
    add-int/lit8 v4, v0, 0x1

    #@11
    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    #@14
    move-result-object v5

    #@15
    invoke-virtual {v3, v4, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    #@18
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_d

    #@1b
    :cond_1b
    invoke-virtual {v3, v1, p1}, Lcom/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    #@1e
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->isImmutable()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_27

    #@24
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    #@27
    :cond_27
    return-object v3
.end method

.method public withOffset(I)Lcom/android/dx/rop/code/RegisterSpecList;
    .registers 6

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_7

    #@6
    :goto_6
    return-object p0

    #@7
    :cond_7
    new-instance v1, Lcom/android/dx/rop/code/RegisterSpecList;

    #@9
    invoke-direct {v1, v3}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    #@c
    const/4 v0, 0x0

    #@d
    move v2, v0

    #@e
    :goto_e
    if-ge v2, v3, :cond_23

    #@10
    invoke-virtual {p0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/dx/rop/code/RegisterSpec;

    #@16
    if-eqz v0, :cond_1f

    #@18
    invoke-virtual {v0, p1}, Lcom/android/dx/rop/code/RegisterSpec;->withOffset(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v1, v2, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    #@1f
    :cond_1f
    add-int/lit8 v0, v2, 0x1

    #@21
    move v2, v0

    #@22
    goto :goto_e

    #@23
    :cond_23
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->isImmutable()Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_2c

    #@29
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    #@2c
    :cond_2c
    move-object p0, v1

    #@2d
    goto :goto_6
.end method

.method public withoutFirst()Lcom/android/dx/rop/code/RegisterSpecList;
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v2, v0, -0x1

    #@6
    if-nez v2, :cond_b

    #@8
    sget-object v0, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    #@a
    :cond_a
    :goto_a
    return-object v0

    #@b
    :cond_b
    new-instance v0, Lcom/android/dx/rop/code/RegisterSpecList;

    #@d
    invoke-direct {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    #@10
    const/4 v1, 0x0

    #@11
    :goto_11
    if-ge v1, v2, :cond_1f

    #@13
    add-int/lit8 v3, v1, 0x1

    #@15
    invoke-virtual {p0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v0, v1, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    #@1c
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_11

    #@1f
    :cond_1f
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->isImmutable()Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_a

    #@25
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    #@28
    goto :goto_a
.end method

.method public withoutLast()Lcom/android/dx/rop/code/RegisterSpecList;
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v2, v0, -0x1

    #@6
    if-nez v2, :cond_b

    #@8
    sget-object v0, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    #@a
    :cond_a
    :goto_a
    return-object v0

    #@b
    :cond_b
    new-instance v0, Lcom/android/dx/rop/code/RegisterSpecList;

    #@d
    invoke-direct {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    #@10
    const/4 v1, 0x0

    #@11
    :goto_11
    if-ge v1, v2, :cond_1d

    #@13
    invoke-virtual {p0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v0, v1, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    #@1a
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_11

    #@1d
    :cond_1d
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->isImmutable()Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_a

    #@23
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    #@26
    goto :goto_a
.end method
