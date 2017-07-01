.class public final Lcom/android/dx/rop/cst/CstKnownNull;
.super Lcom/android/dx/rop/cst/CstLiteralBits;


# static fields
.field public static final THE_ONE:Lcom/android/dx/rop/cst/CstKnownNull;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/android/dx/rop/cst/CstKnownNull;

    #@2
    invoke-direct {v0}, Lcom/android/dx/rop/cst/CstKnownNull;-><init>()V

    #@5
    sput-object v0, Lcom/android/dx/rop/cst/CstKnownNull;->THE_ONE:Lcom/android/dx/rop/cst/CstKnownNull;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/android/dx/rop/cst/CstLiteralBits;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected compareTo0(Lcom/android/dx/rop/cst/Constant;)I
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstKnownNull;

    #@2
    return v0
.end method

.method public fitsInInt()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getIntBits()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getLongBits()J
    .registers 3

    #@0
    const-wide/16 v0, 0x0

    #@2
    return-wide v0
.end method

.method public getType()Lcom/android/dx/rop/type/Type;
    .registers 2

    #@0
    sget-object v0, Lcom/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/android/dx/rop/type/Type;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    const v0, 0x4466757a

    #@3
    return v0
.end method

.method public isCategory2()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "null"

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "known-null"

    #@2
    return-object v0
.end method

.method public typeName()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "known-null"

    #@2
    return-object v0
.end method
