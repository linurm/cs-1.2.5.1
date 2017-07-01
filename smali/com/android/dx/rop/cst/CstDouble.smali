.class public final Lcom/android/dx/rop/cst/CstDouble;
.super Lcom/android/dx/rop/cst/CstLiteral64;


# static fields
.field public static final VALUE_0:Lcom/android/dx/rop/cst/CstDouble;

.field public static final VALUE_1:Lcom/android/dx/rop/cst/CstDouble;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    new-instance v0, Lcom/android/dx/rop/cst/CstDouble;

    #@2
    const-wide/16 v2, 0x0

    #@4
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@7
    move-result-wide v2

    #@8
    invoke-direct {v0, v2, v3}, Lcom/android/dx/rop/cst/CstDouble;-><init>(J)V

    #@b
    sput-object v0, Lcom/android/dx/rop/cst/CstDouble;->VALUE_0:Lcom/android/dx/rop/cst/CstDouble;

    #@d
    new-instance v0, Lcom/android/dx/rop/cst/CstDouble;

    #@f
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@11
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@14
    move-result-wide v2

    #@15
    invoke-direct {v0, v2, v3}, Lcom/android/dx/rop/cst/CstDouble;-><init>(J)V

    #@18
    sput-object v0, Lcom/android/dx/rop/cst/CstDouble;->VALUE_1:Lcom/android/dx/rop/cst/CstDouble;

    #@1a
    return-void
.end method

.method private constructor <init>(J)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/android/dx/rop/cst/CstLiteral64;-><init>(J)V

    #@3
    return-void
.end method

.method public static make(J)Lcom/android/dx/rop/cst/CstDouble;
    .registers 4

    #@0
    new-instance v0, Lcom/android/dx/rop/cst/CstDouble;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/dx/rop/cst/CstDouble;-><init>(J)V

    #@5
    return-object v0
.end method


# virtual methods
.method public getType()Lcom/android/dx/rop/type/Type;
    .registers 2

    #@0
    sget-object v0, Lcom/android/dx/rop/type/Type;->DOUBLE:Lcom/android/dx/rop/type/Type;

    #@2
    return-object v0
.end method

.method public getValue()D
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstDouble;->getLongBits()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstDouble;->getLongBits()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@7
    move-result-wide v0

    #@8
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstDouble;->getLongBits()J

    #@3
    move-result-wide v0

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string v3, "double{0x"

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    invoke-static {v0, v1}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    const-string v3, " / "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@20
    move-result-wide v0

    #@21
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    const/16 v1, 0x7d

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    return-object v0
.end method

.method public typeName()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "double"

    #@2
    return-object v0
.end method
