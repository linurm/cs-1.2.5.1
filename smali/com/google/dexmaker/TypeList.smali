.class final Lcom/google/dexmaker/TypeList;
.super Ljava/lang/Object;


# instance fields
.field final ropTypes:Lcom/android/dx/rop/type/StdTypeList;

.field final types:[Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/dexmaker/TypeId",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Lcom/google/dexmaker/TypeId;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/dexmaker/TypeId",
            "<*>;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-virtual {p1}, [Lcom/google/dexmaker/TypeId;->clone()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, [Lcom/google/dexmaker/TypeId;

    #@9
    iput-object v0, p0, Lcom/google/dexmaker/TypeList;->types:[Lcom/google/dexmaker/TypeId;

    #@b
    new-instance v0, Lcom/android/dx/rop/type/StdTypeList;

    #@d
    array-length v1, p1

    #@e
    invoke-direct {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;-><init>(I)V

    #@11
    iput-object v0, p0, Lcom/google/dexmaker/TypeList;->ropTypes:Lcom/android/dx/rop/type/StdTypeList;

    #@13
    const/4 v0, 0x0

    #@14
    :goto_14
    array-length v1, p1

    #@15
    if-ge v0, v1, :cond_23

    #@17
    iget-object v1, p0, Lcom/google/dexmaker/TypeList;->ropTypes:Lcom/android/dx/rop/type/StdTypeList;

    #@19
    aget-object v2, p1, v0

    #@1b
    iget-object v2, v2, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    #@1d
    invoke-virtual {v1, v0, v2}, Lcom/android/dx/rop/type/StdTypeList;->set(ILcom/android/dx/rop/type/Type;)V

    #@20
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_14

    #@23
    :cond_23
    return-void
.end method


# virtual methods
.method public asList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/dexmaker/TypeId",
            "<*>;>;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/dexmaker/TypeList;->types:[Lcom/google/dexmaker/TypeId;

    #@2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    #@0
    instance-of v0, p1, Lcom/google/dexmaker/TypeList;

    #@2
    if-eqz v0, :cond_12

    #@4
    check-cast p1, Lcom/google/dexmaker/TypeList;

    #@6
    iget-object v0, p1, Lcom/google/dexmaker/TypeList;->types:[Lcom/google/dexmaker/TypeId;

    #@8
    iget-object v1, p0, Lcom/google/dexmaker/TypeList;->types:[Lcom/google/dexmaker/TypeId;

    #@a
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_12

    #@10
    const/4 v0, 0x1

    #@11
    :goto_11
    return v0

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    goto :goto_11
.end method

.method public hashCode()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/dexmaker/TypeList;->types:[Lcom/google/dexmaker/TypeId;

    #@2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const/4 v0, 0x0

    #@6
    :goto_6
    iget-object v2, p0, Lcom/google/dexmaker/TypeList;->types:[Lcom/google/dexmaker/TypeId;

    #@8
    array-length v2, v2

    #@9
    if-ge v0, v2, :cond_1c

    #@b
    if-lez v0, :cond_12

    #@d
    const-string v2, ", "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    :cond_12
    iget-object v2, p0, Lcom/google/dexmaker/TypeList;->types:[Lcom/google/dexmaker/TypeId;

    #@14
    aget-object v2, v2, v0

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_6

    #@1c
    :cond_1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method
