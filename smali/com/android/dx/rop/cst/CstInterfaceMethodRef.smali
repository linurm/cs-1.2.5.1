.class public final Lcom/android/dx/rop/cst/CstInterfaceMethodRef;
.super Lcom/android/dx/rop/cst/CstBaseMethodRef;


# instance fields
.field private methodRef:Lcom/android/dx/rop/cst/CstMethodRef;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/android/dx/rop/cst/CstBaseMethodRef;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    #@3
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/dx/rop/cst/CstInterfaceMethodRef;->methodRef:Lcom/android/dx/rop/cst/CstMethodRef;

    #@6
    return-void
.end method


# virtual methods
.method public toMethodRef()Lcom/android/dx/rop/cst/CstMethodRef;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstInterfaceMethodRef;->methodRef:Lcom/android/dx/rop/cst/CstMethodRef;

    #@2
    if-nez v0, :cond_13

    #@4
    new-instance v0, Lcom/android/dx/rop/cst/CstMethodRef;

    #@6
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstInterfaceMethodRef;->getDefiningClass()Lcom/android/dx/rop/cst/CstType;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstInterfaceMethodRef;->getNat()Lcom/android/dx/rop/cst/CstNat;

    #@d
    move-result-object v2

    #@e
    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/cst/CstMethodRef;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    #@11
    iput-object v0, p0, Lcom/android/dx/rop/cst/CstInterfaceMethodRef;->methodRef:Lcom/android/dx/rop/cst/CstMethodRef;

    #@13
    :cond_13
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstInterfaceMethodRef;->methodRef:Lcom/android/dx/rop/cst/CstMethodRef;

    #@15
    return-object v0
.end method

.method public typeName()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "ifaceMethod"

    #@2
    return-object v0
.end method
