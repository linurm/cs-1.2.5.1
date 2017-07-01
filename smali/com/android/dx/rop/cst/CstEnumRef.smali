.class public final Lcom/android/dx/rop/cst/CstEnumRef;
.super Lcom/android/dx/rop/cst/CstMemberRef;


# instance fields
.field private fieldRef:Lcom/android/dx/rop/cst/CstFieldRef;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/cst/CstNat;)V
    .registers 4

    #@0
    new-instance v0, Lcom/android/dx/rop/cst/CstType;

    #@2
    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstNat;->getFieldType()Lcom/android/dx/rop/type/Type;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Lcom/android/dx/rop/cst/CstType;-><init>(Lcom/android/dx/rop/type/Type;)V

    #@9
    invoke-direct {p0, v0, p1}, Lcom/android/dx/rop/cst/CstMemberRef;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    #@c
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Lcom/android/dx/rop/cst/CstEnumRef;->fieldRef:Lcom/android/dx/rop/cst/CstFieldRef;

    #@f
    return-void
.end method


# virtual methods
.method public getFieldRef()Lcom/android/dx/rop/cst/CstFieldRef;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstEnumRef;->fieldRef:Lcom/android/dx/rop/cst/CstFieldRef;

    #@2
    if-nez v0, :cond_13

    #@4
    new-instance v0, Lcom/android/dx/rop/cst/CstFieldRef;

    #@6
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstEnumRef;->getDefiningClass()Lcom/android/dx/rop/cst/CstType;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstEnumRef;->getNat()Lcom/android/dx/rop/cst/CstNat;

    #@d
    move-result-object v2

    #@e
    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/cst/CstFieldRef;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    #@11
    iput-object v0, p0, Lcom/android/dx/rop/cst/CstEnumRef;->fieldRef:Lcom/android/dx/rop/cst/CstFieldRef;

    #@13
    :cond_13
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstEnumRef;->fieldRef:Lcom/android/dx/rop/cst/CstFieldRef;

    #@15
    return-object v0
.end method

.method public getType()Lcom/android/dx/rop/type/Type;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstEnumRef;->getDefiningClass()Lcom/android/dx/rop/cst/CstType;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstType;->getClassType()Lcom/android/dx/rop/type/Type;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public typeName()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "enum"

    #@2
    return-object v0
.end method
