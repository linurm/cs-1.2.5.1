.class public final Lcom/google/dexmaker/MethodId;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final constant:Lcom/android/dx/rop/cst/CstMethodRef;

.field final declaringType:Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/TypeId",
            "<TD;>;"
        }
    .end annotation
.end field

.field final name:Ljava/lang/String;

.field final nat:Lcom/android/dx/rop/cst/CstNat;

.field final parameters:Lcom/google/dexmaker/TypeList;

.field final returnType:Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/TypeId",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/dexmaker/TypeId;Lcom/google/dexmaker/TypeId;Ljava/lang/String;Lcom/google/dexmaker/TypeList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/TypeId",
            "<TD;>;",
            "Lcom/google/dexmaker/TypeId",
            "<TR;>;",
            "Ljava/lang/String;",
            "Lcom/google/dexmaker/TypeList;",
            ")V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-eqz p1, :cond_b

    #@5
    if-eqz p2, :cond_b

    #@7
    if-eqz p3, :cond_b

    #@9
    if-nez p4, :cond_11

    #@b
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    #@d
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@10
    throw v0

    #@11
    :cond_11
    iput-object p1, p0, Lcom/google/dexmaker/MethodId;->declaringType:Lcom/google/dexmaker/TypeId;

    #@13
    iput-object p2, p0, Lcom/google/dexmaker/MethodId;->returnType:Lcom/google/dexmaker/TypeId;

    #@15
    iput-object p3, p0, Lcom/google/dexmaker/MethodId;->name:Ljava/lang/String;

    #@17
    iput-object p4, p0, Lcom/google/dexmaker/MethodId;->parameters:Lcom/google/dexmaker/TypeList;

    #@19
    new-instance v0, Lcom/android/dx/rop/cst/CstNat;

    #@1b
    new-instance v1, Lcom/android/dx/rop/cst/CstString;

    #@1d
    invoke-direct {v1, p3}, Lcom/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    #@20
    new-instance v2, Lcom/android/dx/rop/cst/CstString;

    #@22
    const/4 v3, 0x0

    #@23
    invoke-virtual {p0, v3}, Lcom/google/dexmaker/MethodId;->descriptor(Z)Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-direct {v2, v3}, Lcom/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    #@2a
    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/cst/CstNat;-><init>(Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/CstString;)V

    #@2d
    iput-object v0, p0, Lcom/google/dexmaker/MethodId;->nat:Lcom/android/dx/rop/cst/CstNat;

    #@2f
    new-instance v0, Lcom/android/dx/rop/cst/CstMethodRef;

    #@31
    iget-object v1, p1, Lcom/google/dexmaker/TypeId;->constant:Lcom/android/dx/rop/cst/CstType;

    #@33
    iget-object v2, p0, Lcom/google/dexmaker/MethodId;->nat:Lcom/android/dx/rop/cst/CstNat;

    #@35
    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/cst/CstMethodRef;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    #@38
    iput-object v0, p0, Lcom/google/dexmaker/MethodId;->constant:Lcom/android/dx/rop/cst/CstMethodRef;

    #@3a
    return-void
.end method


# virtual methods
.method descriptor(Z)Ljava/lang/String;
    .registers 7

    #@0
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v0, "("

    #@7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    if-eqz p1, :cond_13

    #@c
    iget-object v0, p0, Lcom/google/dexmaker/MethodId;->declaringType:Lcom/google/dexmaker/TypeId;

    #@e
    iget-object v0, v0, Lcom/google/dexmaker/TypeId;->name:Ljava/lang/String;

    #@10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    :cond_13
    iget-object v0, p0, Lcom/google/dexmaker/MethodId;->parameters:Lcom/google/dexmaker/TypeList;

    #@15
    iget-object v2, v0, Lcom/google/dexmaker/TypeList;->types:[Lcom/google/dexmaker/TypeId;

    #@17
    array-length v3, v2

    #@18
    const/4 v0, 0x0

    #@19
    :goto_19
    if-ge v0, v3, :cond_25

    #@1b
    aget-object v4, v2, v0

    #@1d
    iget-object v4, v4, Lcom/google/dexmaker/TypeId;->name:Ljava/lang/String;

    #@1f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_19

    #@25
    :cond_25
    const-string v0, ")"

    #@27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    iget-object v0, p0, Lcom/google/dexmaker/MethodId;->returnType:Lcom/google/dexmaker/TypeId;

    #@2c
    iget-object v0, v0, Lcom/google/dexmaker/TypeId;->name:Ljava/lang/String;

    #@2e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    #@0
    instance-of v0, p1, Lcom/google/dexmaker/MethodId;

    #@2
    if-eqz v0, :cond_39

    #@4
    move-object v0, p1

    #@5
    check-cast v0, Lcom/google/dexmaker/MethodId;

    #@7
    iget-object v0, v0, Lcom/google/dexmaker/MethodId;->declaringType:Lcom/google/dexmaker/TypeId;

    #@9
    iget-object v1, p0, Lcom/google/dexmaker/MethodId;->declaringType:Lcom/google/dexmaker/TypeId;

    #@b
    invoke-virtual {v0, v1}, Lcom/google/dexmaker/TypeId;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_39

    #@11
    move-object v0, p1

    #@12
    check-cast v0, Lcom/google/dexmaker/MethodId;

    #@14
    iget-object v0, v0, Lcom/google/dexmaker/MethodId;->name:Ljava/lang/String;

    #@16
    iget-object v1, p0, Lcom/google/dexmaker/MethodId;->name:Ljava/lang/String;

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_39

    #@1e
    move-object v0, p1

    #@1f
    check-cast v0, Lcom/google/dexmaker/MethodId;

    #@21
    iget-object v0, v0, Lcom/google/dexmaker/MethodId;->parameters:Lcom/google/dexmaker/TypeList;

    #@23
    iget-object v1, p0, Lcom/google/dexmaker/MethodId;->parameters:Lcom/google/dexmaker/TypeList;

    #@25
    invoke-virtual {v0, v1}, Lcom/google/dexmaker/TypeList;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_39

    #@2b
    check-cast p1, Lcom/google/dexmaker/MethodId;

    #@2d
    iget-object v0, p1, Lcom/google/dexmaker/MethodId;->returnType:Lcom/google/dexmaker/TypeId;

    #@2f
    iget-object v1, p0, Lcom/google/dexmaker/MethodId;->returnType:Lcom/google/dexmaker/TypeId;

    #@31
    invoke-virtual {v0, v1}, Lcom/google/dexmaker/TypeId;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_39

    #@37
    const/4 v0, 0x1

    #@38
    :goto_38
    return v0

    #@39
    :cond_39
    const/4 v0, 0x0

    #@3a
    goto :goto_38
.end method

.method public getDeclaringType()Lcom/google/dexmaker/TypeId;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/dexmaker/TypeId",
            "<TD;>;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/dexmaker/MethodId;->declaringType:Lcom/google/dexmaker/TypeId;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/dexmaker/MethodId;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getParameters()Ljava/util/List;
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
    iget-object v0, p0, Lcom/google/dexmaker/MethodId;->parameters:Lcom/google/dexmaker/TypeList;

    #@2
    invoke-virtual {v0}, Lcom/google/dexmaker/TypeList;->asList()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getReturnType()Lcom/google/dexmaker/TypeId;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/dexmaker/TypeId",
            "<TR;>;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/dexmaker/MethodId;->returnType:Lcom/google/dexmaker/TypeId;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/dexmaker/MethodId;->declaringType:Lcom/google/dexmaker/TypeId;

    #@2
    invoke-virtual {v0}, Lcom/google/dexmaker/TypeId;->hashCode()I

    #@5
    move-result v0

    #@6
    add-int/lit16 v0, v0, 0x20f

    #@8
    mul-int/lit8 v0, v0, 0x1f

    #@a
    iget-object v1, p0, Lcom/google/dexmaker/MethodId;->name:Ljava/lang/String;

    #@c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@f
    move-result v1

    #@10
    add-int/2addr v0, v1

    #@11
    mul-int/lit8 v0, v0, 0x1f

    #@13
    iget-object v1, p0, Lcom/google/dexmaker/MethodId;->parameters:Lcom/google/dexmaker/TypeList;

    #@15
    invoke-virtual {v1}, Lcom/google/dexmaker/TypeList;->hashCode()I

    #@18
    move-result v1

    #@19
    add-int/2addr v0, v1

    #@1a
    mul-int/lit8 v0, v0, 0x1f

    #@1c
    iget-object v1, p0, Lcom/google/dexmaker/MethodId;->returnType:Lcom/google/dexmaker/TypeId;

    #@1e
    invoke-virtual {v1}, Lcom/google/dexmaker/TypeId;->hashCode()I

    #@21
    move-result v1

    #@22
    add-int/2addr v0, v1

    #@23
    return v0
.end method

.method public isConstructor()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/dexmaker/MethodId;->name:Ljava/lang/String;

    #@2
    const-string v1, "<init>"

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method prototype(Z)Lcom/android/dx/rop/type/Prototype;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/dexmaker/MethodId;->descriptor(Z)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/dx/rop/type/Prototype;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Prototype;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/google/dexmaker/MethodId;->declaringType:Lcom/google/dexmaker/TypeId;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string v1, "."

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Lcom/google/dexmaker/MethodId;->name:Ljava/lang/String;

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    const-string v1, "("

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    iget-object v1, p0, Lcom/google/dexmaker/MethodId;->parameters:Lcom/google/dexmaker/TypeList;

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    const-string v1, ")"

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    return-object v0
.end method
