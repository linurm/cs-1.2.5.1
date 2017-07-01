.class public abstract Lcom/android/dx/rop/cst/CstLiteralBits;
.super Lcom/android/dx/rop/cst/TypedConstant;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/android/dx/rop/cst/TypedConstant;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public fitsIn16Bits()Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstLiteralBits;->fitsInInt()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_8

    #@7
    :cond_7
    :goto_7
    return v0

    #@8
    :cond_8
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstLiteralBits;->getIntBits()I

    #@b
    move-result v1

    #@c
    int-to-short v2, v1

    #@d
    if-ne v2, v1, :cond_7

    #@f
    const/4 v0, 0x1

    #@10
    goto :goto_7
.end method

.method public fitsIn8Bits()Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstLiteralBits;->fitsInInt()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_8

    #@7
    :cond_7
    :goto_7
    return v0

    #@8
    :cond_8
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstLiteralBits;->getIntBits()I

    #@b
    move-result v1

    #@c
    int-to-byte v2, v1

    #@d
    if-ne v2, v1, :cond_7

    #@f
    const/4 v0, 0x1

    #@10
    goto :goto_7
.end method

.method public abstract fitsInInt()Z
.end method

.method public abstract getIntBits()I
.end method

.method public abstract getLongBits()J
.end method
