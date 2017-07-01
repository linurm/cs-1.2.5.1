.class public final Lcom/android/dx/rop/cst/StdConstantPool;
.super Lcom/android/dx/util/MutabilityControl;

# interfaces
.implements Lcom/android/dx/rop/cst/ConstantPool;


# instance fields
.field private final entries:[Lcom/android/dx/rop/cst/Constant;


# direct methods
.method public constructor <init>(I)V
    .registers 4

    #@0
    const/4 v1, 0x1

    #@1
    if-le p1, v1, :cond_11

    #@3
    move v0, v1

    #@4
    :goto_4
    invoke-direct {p0, v0}, Lcom/android/dx/util/MutabilityControl;-><init>(Z)V

    #@7
    if-ge p1, v1, :cond_13

    #@9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string v1, "size < 1"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    goto :goto_4

    #@13
    :cond_13
    new-array v0, p1, [Lcom/android/dx/rop/cst/Constant;

    #@15
    iput-object v0, p0, Lcom/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/android/dx/rop/cst/Constant;

    #@17
    return-void
.end method

.method private static throwInvalid(I)Lcom/android/dx/rop/cst/Constant;
    .registers 4

    #@0
    new-instance v0, Lcom/android/dx/util/ExceptionWithContext;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string v2, "invalid constant pool index "

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    invoke-static {p0}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Lcom/android/dx/util/ExceptionWithContext;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0
.end method


# virtual methods
.method public get(I)Lcom/android/dx/rop/cst/Constant;
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/android/dx/rop/cst/Constant;

    #@2
    aget-object v0, v0, p1

    #@4
    if-nez v0, :cond_9

    #@6
    invoke-static {p1}, Lcom/android/dx/rop/cst/StdConstantPool;->throwInvalid(I)Lcom/android/dx/rop/cst/Constant;
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_9} :catch_a

    #@9
    :cond_9
    :goto_9
    return-object v0

    #@a
    :catch_a
    move-exception v0

    #@b
    invoke-static {p1}, Lcom/android/dx/rop/cst/StdConstantPool;->throwInvalid(I)Lcom/android/dx/rop/cst/Constant;

    #@e
    move-result-object v0

    #@f
    goto :goto_9
.end method

.method public get0Ok(I)Lcom/android/dx/rop/cst/Constant;
    .registers 3

    #@0
    if-nez p1, :cond_4

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    return-object v0

    #@4
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/dx/rop/cst/StdConstantPool;->get(I)Lcom/android/dx/rop/cst/Constant;

    #@7
    move-result-object v0

    #@8
    goto :goto_3
.end method

.method public getOrNull(I)Lcom/android/dx/rop/cst/Constant;
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/android/dx/rop/cst/Constant;

    #@2
    aget-object v0, v0, p1
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    #@4
    :goto_4
    return-object v0

    #@5
    :catch_5
    move-exception v0

    #@6
    invoke-static {p1}, Lcom/android/dx/rop/cst/StdConstantPool;->throwInvalid(I)Lcom/android/dx/rop/cst/Constant;

    #@9
    move-result-object v0

    #@a
    goto :goto_4
.end method

.method public set(ILcom/android/dx/rop/cst/Constant;)V
    .registers 6

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/StdConstantPool;->throwIfImmutable()V

    #@5
    if-eqz p2, :cond_18

    #@7
    invoke-virtual {p2}, Lcom/android/dx/rop/cst/Constant;->isCategory2()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_18

    #@d
    move v0, v1

    #@e
    :goto_e
    if-ge p1, v1, :cond_1a

    #@10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string v1, "n < 1"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    :cond_18
    const/4 v0, 0x0

    #@19
    goto :goto_e

    #@1a
    :cond_1a
    if-eqz v0, :cond_31

    #@1c
    iget-object v0, p0, Lcom/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/android/dx/rop/cst/Constant;

    #@1e
    array-length v0, v0

    #@1f
    add-int/lit8 v0, v0, -0x1

    #@21
    if-ne p1, v0, :cond_2b

    #@23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@25
    const-string v1, "(n == size - 1) && cst.isCategory2()"

    #@27
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    :cond_2b
    iget-object v0, p0, Lcom/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/android/dx/rop/cst/Constant;

    #@2d
    add-int/lit8 v1, p1, 0x1

    #@2f
    aput-object v2, v0, v1

    #@31
    :cond_31
    if-eqz p2, :cond_4d

    #@33
    iget-object v0, p0, Lcom/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/android/dx/rop/cst/Constant;

    #@35
    aget-object v0, v0, p1

    #@37
    if-nez v0, :cond_4d

    #@39
    iget-object v0, p0, Lcom/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/android/dx/rop/cst/Constant;

    #@3b
    add-int/lit8 v1, p1, -0x1

    #@3d
    aget-object v0, v0, v1

    #@3f
    if-eqz v0, :cond_4d

    #@41
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/Constant;->isCategory2()Z

    #@44
    move-result v0

    #@45
    if-eqz v0, :cond_4d

    #@47
    iget-object v0, p0, Lcom/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/android/dx/rop/cst/Constant;

    #@49
    add-int/lit8 v1, p1, -0x1

    #@4b
    aput-object v2, v0, v1

    #@4d
    :cond_4d
    iget-object v0, p0, Lcom/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/android/dx/rop/cst/Constant;

    #@4f
    aput-object p2, v0, p1

    #@51
    return-void
.end method

.method public size()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/android/dx/rop/cst/Constant;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method
