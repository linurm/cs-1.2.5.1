.class public final Lcom/android/dx/rop/cst/CstLong;
.super Lcom/android/dx/rop/cst/CstLiteral64;


# static fields
.field public static final VALUE_0:Lcom/android/dx/rop/cst/CstLong;

.field public static final VALUE_1:Lcom/android/dx/rop/cst/CstLong;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const-wide/16 v0, 0x0

    #@2
    invoke-static {v0, v1}, Lcom/android/dx/rop/cst/CstLong;->make(J)Lcom/android/dx/rop/cst/CstLong;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/dx/rop/cst/CstLong;->VALUE_0:Lcom/android/dx/rop/cst/CstLong;

    #@8
    const-wide/16 v0, 0x1

    #@a
    invoke-static {v0, v1}, Lcom/android/dx/rop/cst/CstLong;->make(J)Lcom/android/dx/rop/cst/CstLong;

    #@d
    move-result-object v0

    #@e
    sput-object v0, Lcom/android/dx/rop/cst/CstLong;->VALUE_1:Lcom/android/dx/rop/cst/CstLong;

    #@10
    return-void
.end method

.method private constructor <init>(J)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/android/dx/rop/cst/CstLiteral64;-><init>(J)V

    #@3
    return-void
.end method

.method public static make(J)Lcom/android/dx/rop/cst/CstLong;
    .registers 4

    #@0
    new-instance v0, Lcom/android/dx/rop/cst/CstLong;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/dx/rop/cst/CstLong;-><init>(J)V

    #@5
    return-object v0
.end method


# virtual methods
.method public getType()Lcom/android/dx/rop/type/Type;
    .registers 2

    #@0
    sget-object v0, Lcom/android/dx/rop/type/Type;->LONG:Lcom/android/dx/rop/type/Type;

    #@2
    return-object v0
.end method

.method public getValue()J
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstLong;->getLongBits()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstLong;->getLongBits()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstLong;->getLongBits()J

    #@3
    move-result-wide v0

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string v3, "long{0x"

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
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    const/16 v1, 0x7d

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    return-object v0
.end method

.method public typeName()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "long"

    #@2
    return-object v0
.end method
