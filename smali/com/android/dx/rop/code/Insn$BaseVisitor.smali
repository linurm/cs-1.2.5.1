.class public Lcom/android/dx/rop/code/Insn$BaseVisitor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/dx/rop/code/Insn$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/rop/code/Insn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseVisitor"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public visitFillArrayDataInsn(Lcom/android/dx/rop/code/FillArrayDataInsn;)V
    .registers 2

    #@0
    return-void
.end method

.method public visitPlainCstInsn(Lcom/android/dx/rop/code/PlainCstInsn;)V
    .registers 2

    #@0
    return-void
.end method

.method public visitPlainInsn(Lcom/android/dx/rop/code/PlainInsn;)V
    .registers 2

    #@0
    return-void
.end method

.method public visitSwitchInsn(Lcom/android/dx/rop/code/SwitchInsn;)V
    .registers 2

    #@0
    return-void
.end method

.method public visitThrowingCstInsn(Lcom/android/dx/rop/code/ThrowingCstInsn;)V
    .registers 2

    #@0
    return-void
.end method

.method public visitThrowingInsn(Lcom/android/dx/rop/code/ThrowingInsn;)V
    .registers 2

    #@0
    return-void
.end method
