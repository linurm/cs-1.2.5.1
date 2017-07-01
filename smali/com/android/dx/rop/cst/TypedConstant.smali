.class public abstract Lcom/android/dx/rop/cst/TypedConstant;
.super Lcom/android/dx/rop/cst/Constant;

# interfaces
.implements Lcom/android/dx/rop/type/TypeBearer;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/android/dx/rop/cst/Constant;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public final getBasicFrameType()I
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/TypedConstant;->getType()Lcom/android/dx/rop/type/Type;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->getBasicFrameType()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final getBasicType()I
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/TypedConstant;->getType()Lcom/android/dx/rop/type/Type;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->getBasicType()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final getFrameType()Lcom/android/dx/rop/type/TypeBearer;
    .registers 1

    #@0
    return-object p0
.end method

.method public final isConstant()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method
