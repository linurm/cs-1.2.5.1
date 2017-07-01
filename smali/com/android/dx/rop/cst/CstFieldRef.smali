.class public final Lcom/android/dx/rop/cst/CstFieldRef;
.super Lcom/android/dx/rop/cst/CstMemberRef;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Lcom/android/dx/rop/cst/CstMemberRef;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    #@3
    return-void
.end method

.method public static forPrimitiveType(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/CstFieldRef;
    .registers 4

    #@0
    new-instance v0, Lcom/android/dx/rop/cst/CstFieldRef;

    #@2
    invoke-static {p0}, Lcom/android/dx/rop/cst/CstType;->forBoxedPrimitiveType(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/CstType;

    #@5
    move-result-object v1

    #@6
    sget-object v2, Lcom/android/dx/rop/cst/CstNat;->PRIMITIVE_TYPE_NAT:Lcom/android/dx/rop/cst/CstNat;

    #@8
    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/cst/CstFieldRef;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    #@b
    return-object v0
.end method


# virtual methods
.method protected compareTo0(Lcom/android/dx/rop/cst/Constant;)I
    .registers 4

    #@0
    invoke-super {p0, p1}, Lcom/android/dx/rop/cst/CstMemberRef;->compareTo0(Lcom/android/dx/rop/cst/Constant;)I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    :goto_6
    return v0

    #@7
    :cond_7
    check-cast p1, Lcom/android/dx/rop/cst/CstFieldRef;

    #@9
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstFieldRef;->getNat()Lcom/android/dx/rop/cst/CstNat;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstNat;->getDescriptor()Lcom/android/dx/rop/cst/CstString;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstFieldRef;->getNat()Lcom/android/dx/rop/cst/CstNat;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstNat;->getDescriptor()Lcom/android/dx/rop/cst/CstString;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/cst/CstString;->compareTo(Lcom/android/dx/rop/cst/Constant;)I

    #@1c
    move-result v0

    #@1d
    goto :goto_6
.end method

.method public getType()Lcom/android/dx/rop/type/Type;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstFieldRef;->getNat()Lcom/android/dx/rop/cst/CstNat;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstNat;->getFieldType()Lcom/android/dx/rop/type/Type;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public typeName()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "field"

    #@2
    return-object v0
.end method
