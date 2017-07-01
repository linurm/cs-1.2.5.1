.class public abstract Lcom/android/dx/rop/cst/CstLiteral32;
.super Lcom/android/dx/rop/cst/CstLiteralBits;


# instance fields
.field private final bits:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/android/dx/rop/cst/CstLiteralBits;-><init>()V

    #@3
    iput p1, p0, Lcom/android/dx/rop/cst/CstLiteral32;->bits:I

    #@5
    return-void
.end method


# virtual methods
.method protected compareTo0(Lcom/android/dx/rop/cst/Constant;)I
    .registers 4

    #@0
    check-cast p1, Lcom/android/dx/rop/cst/CstLiteral32;

    #@2
    iget v0, p1, Lcom/android/dx/rop/cst/CstLiteral32;->bits:I

    #@4
    iget v1, p0, Lcom/android/dx/rop/cst/CstLiteral32;->bits:I

    #@6
    if-ge v1, v0, :cond_a

    #@8
    const/4 v0, -0x1

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    iget v1, p0, Lcom/android/dx/rop/cst/CstLiteral32;->bits:I

    #@c
    if-le v1, v0, :cond_10

    #@e
    const/4 v0, 0x1

    #@f
    goto :goto_9

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    goto :goto_9
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    #@0
    if-eqz p1, :cond_16

    #@2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v1

    #@a
    if-ne v0, v1, :cond_16

    #@c
    iget v0, p0, Lcom/android/dx/rop/cst/CstLiteral32;->bits:I

    #@e
    check-cast p1, Lcom/android/dx/rop/cst/CstLiteral32;

    #@10
    iget v1, p1, Lcom/android/dx/rop/cst/CstLiteral32;->bits:I

    #@12
    if-ne v0, v1, :cond_16

    #@14
    const/4 v0, 0x1

    #@15
    :goto_15
    return v0

    #@16
    :cond_16
    const/4 v0, 0x0

    #@17
    goto :goto_15
.end method

.method public final fitsInInt()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public final getIntBits()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/rop/cst/CstLiteral32;->bits:I

    #@2
    return v0
.end method

.method public final getLongBits()J
    .registers 3

    #@0
    iget v0, p0, Lcom/android/dx/rop/cst/CstLiteral32;->bits:I

    #@2
    int-to-long v0, v0

    #@3
    return-wide v0
.end method

.method public final hashCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/rop/cst/CstLiteral32;->bits:I

    #@2
    return v0
.end method

.method public final isCategory2()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method
