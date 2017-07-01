.class public abstract Lcom/android/dx/rop/cst/CstMemberRef;
.super Lcom/android/dx/rop/cst/TypedConstant;


# instance fields
.field private final definingClass:Lcom/android/dx/rop/cst/CstType;

.field private final nat:Lcom/android/dx/rop/cst/CstNat;


# direct methods
.method constructor <init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V
    .registers 5

    #@0
    invoke-direct {p0}, Lcom/android/dx/rop/cst/TypedConstant;-><init>()V

    #@3
    if-nez p1, :cond_d

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string v1, "definingClass == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    if-nez p2, :cond_17

    #@f
    new-instance v0, Ljava/lang/NullPointerException;

    #@11
    const-string v1, "nat == null"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    :cond_17
    iput-object p1, p0, Lcom/android/dx/rop/cst/CstMemberRef;->definingClass:Lcom/android/dx/rop/cst/CstType;

    #@19
    iput-object p2, p0, Lcom/android/dx/rop/cst/CstMemberRef;->nat:Lcom/android/dx/rop/cst/CstNat;

    #@1b
    return-void
.end method


# virtual methods
.method protected compareTo0(Lcom/android/dx/rop/cst/Constant;)I
    .registers 4

    #@0
    check-cast p1, Lcom/android/dx/rop/cst/CstMemberRef;

    #@2
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstMemberRef;->definingClass:Lcom/android/dx/rop/cst/CstType;

    #@4
    iget-object v1, p1, Lcom/android/dx/rop/cst/CstMemberRef;->definingClass:Lcom/android/dx/rop/cst/CstType;

    #@6
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/cst/CstType;->compareTo(Lcom/android/dx/rop/cst/Constant;)I

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_d

    #@c
    :goto_c
    return v0

    #@d
    :cond_d
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstMemberRef;->nat:Lcom/android/dx/rop/cst/CstNat;

    #@f
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstNat;->getName()Lcom/android/dx/rop/cst/CstString;

    #@12
    move-result-object v0

    #@13
    iget-object v1, p1, Lcom/android/dx/rop/cst/CstMemberRef;->nat:Lcom/android/dx/rop/cst/CstNat;

    #@15
    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstNat;->getName()Lcom/android/dx/rop/cst/CstString;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/cst/CstString;->compareTo(Lcom/android/dx/rop/cst/Constant;)I

    #@1c
    move-result v0

    #@1d
    goto :goto_c
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p1, :cond_d

    #@3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v2

    #@b
    if-eq v1, v2, :cond_e

    #@d
    :cond_d
    :goto_d
    return v0

    #@e
    :cond_e
    check-cast p1, Lcom/android/dx/rop/cst/CstMemberRef;

    #@10
    iget-object v1, p0, Lcom/android/dx/rop/cst/CstMemberRef;->definingClass:Lcom/android/dx/rop/cst/CstType;

    #@12
    iget-object v2, p1, Lcom/android/dx/rop/cst/CstMemberRef;->definingClass:Lcom/android/dx/rop/cst/CstType;

    #@14
    invoke-virtual {v1, v2}, Lcom/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_d

    #@1a
    iget-object v1, p0, Lcom/android/dx/rop/cst/CstMemberRef;->nat:Lcom/android/dx/rop/cst/CstNat;

    #@1c
    iget-object v2, p1, Lcom/android/dx/rop/cst/CstMemberRef;->nat:Lcom/android/dx/rop/cst/CstNat;

    #@1e
    invoke-virtual {v1, v2}, Lcom/android/dx/rop/cst/CstNat;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_d

    #@24
    const/4 v0, 0x1

    #@25
    goto :goto_d
.end method

.method public final getDefiningClass()Lcom/android/dx/rop/cst/CstType;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstMemberRef;->definingClass:Lcom/android/dx/rop/cst/CstType;

    #@2
    return-object v0
.end method

.method public final getNat()Lcom/android/dx/rop/cst/CstNat;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstMemberRef;->nat:Lcom/android/dx/rop/cst/CstNat;

    #@2
    return-object v0
.end method

.method public final hashCode()I
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstMemberRef;->definingClass:Lcom/android/dx/rop/cst/CstType;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstType;->hashCode()I

    #@5
    move-result v0

    #@6
    mul-int/lit8 v0, v0, 0x1f

    #@8
    iget-object v1, p0, Lcom/android/dx/rop/cst/CstMemberRef;->nat:Lcom/android/dx/rop/cst/CstNat;

    #@a
    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstNat;->hashCode()I

    #@d
    move-result v1

    #@e
    xor-int/2addr v0, v1

    #@f
    return v0
.end method

.method public final isCategory2()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final toHuman()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/android/dx/rop/cst/CstMemberRef;->definingClass:Lcom/android/dx/rop/cst/CstType;

    #@7
    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const/16 v1, 0x2e

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    iget-object v1, p0, Lcom/android/dx/rop/cst/CstMemberRef;->nat:Lcom/android/dx/rop/cst/CstNat;

    #@17
    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstNat;->toHuman()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstMemberRef;->typeName()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const/16 v1, 0x7b

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstMemberRef;->toHuman()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    const/16 v1, 0x7d

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    return-object v0
.end method
