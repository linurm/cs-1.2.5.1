.class public abstract Lcom/android/dx/rop/cst/CstBaseMethodRef;
.super Lcom/android/dx/rop/cst/CstMemberRef;


# instance fields
.field private instancePrototype:Lcom/android/dx/rop/type/Prototype;

.field private final prototype:Lcom/android/dx/rop/type/Prototype;


# direct methods
.method constructor <init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/android/dx/rop/cst/CstMemberRef;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    #@3
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->getNat()Lcom/android/dx/rop/cst/CstNat;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstNat;->getDescriptor()Lcom/android/dx/rop/cst/CstString;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    invoke-static {v0}, Lcom/android/dx/rop/type/Prototype;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Prototype;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/android/dx/rop/type/Prototype;

    #@15
    const/4 v0, 0x0

    #@16
    iput-object v0, p0, Lcom/android/dx/rop/cst/CstBaseMethodRef;->instancePrototype:Lcom/android/dx/rop/type/Prototype;

    #@18
    return-void
.end method


# virtual methods
.method protected final compareTo0(Lcom/android/dx/rop/cst/Constant;)I
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
    check-cast p1, Lcom/android/dx/rop/cst/CstBaseMethodRef;

    #@9
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/android/dx/rop/type/Prototype;

    #@b
    iget-object v1, p1, Lcom/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/android/dx/rop/type/Prototype;

    #@d
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/type/Prototype;->compareTo(Lcom/android/dx/rop/type/Prototype;)I

    #@10
    move-result v0

    #@11
    goto :goto_6
.end method

.method public final getParameterWordCount(Z)I
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->getPrototype(Z)Lcom/android/dx/rop/type/Prototype;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/android/dx/rop/type/StdTypeList;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Lcom/android/dx/rop/type/StdTypeList;->getWordCount()I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public final getPrototype()Lcom/android/dx/rop/type/Prototype;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/android/dx/rop/type/Prototype;

    #@2
    return-object v0
.end method

.method public final getPrototype(Z)Lcom/android/dx/rop/type/Prototype;
    .registers 4

    #@0
    if-eqz p1, :cond_5

    #@2
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/android/dx/rop/type/Prototype;

    #@4
    :goto_4
    return-object v0

    #@5
    :cond_5
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstBaseMethodRef;->instancePrototype:Lcom/android/dx/rop/type/Prototype;

    #@7
    if-nez v0, :cond_19

    #@9
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->getDefiningClass()Lcom/android/dx/rop/cst/CstType;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstType;->getClassType()Lcom/android/dx/rop/type/Type;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Lcom/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/android/dx/rop/type/Prototype;

    #@13
    invoke-virtual {v1, v0}, Lcom/android/dx/rop/type/Prototype;->withFirstParameter(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Prototype;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/dx/rop/cst/CstBaseMethodRef;->instancePrototype:Lcom/android/dx/rop/type/Prototype;

    #@19
    :cond_19
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstBaseMethodRef;->instancePrototype:Lcom/android/dx/rop/type/Prototype;

    #@1b
    goto :goto_4
.end method

.method public final getType()Lcom/android/dx/rop/type/Type;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/android/dx/rop/type/Prototype;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Prototype;->getReturnType()Lcom/android/dx/rop/type/Type;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final isClassInit()Z
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->getNat()Lcom/android/dx/rop/cst/CstNat;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstNat;->isClassInit()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final isInstanceInit()Z
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->getNat()Lcom/android/dx/rop/cst/CstNat;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstNat;->isInstanceInit()Z

    #@7
    move-result v0

    #@8
    return v0
.end method
