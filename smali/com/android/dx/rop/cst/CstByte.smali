.class public final Lcom/android/dx/rop/cst/CstByte;
.super Lcom/android/dx/rop/cst/CstLiteral32;


# static fields
.field public static final VALUE_0:Lcom/android/dx/rop/cst/CstByte;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {v0}, Lcom/android/dx/rop/cst/CstByte;->make(B)Lcom/android/dx/rop/cst/CstByte;

    #@4
    move-result-object v0

    #@5
    sput-object v0, Lcom/android/dx/rop/cst/CstByte;->VALUE_0:Lcom/android/dx/rop/cst/CstByte;

    #@7
    return-void
.end method

.method private constructor <init>(B)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/android/dx/rop/cst/CstLiteral32;-><init>(I)V

    #@3
    return-void
.end method

.method public static make(B)Lcom/android/dx/rop/cst/CstByte;
    .registers 2

    #@0
    new-instance v0, Lcom/android/dx/rop/cst/CstByte;

    #@2
    invoke-direct {v0, p0}, Lcom/android/dx/rop/cst/CstByte;-><init>(B)V

    #@5
    return-object v0
.end method

.method public static make(I)Lcom/android/dx/rop/cst/CstByte;
    .registers 4

    #@0
    int-to-byte v0, p0

    #@1
    if-eq v0, p0, :cond_1c

    #@3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string v2, "bogus byte value: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    :cond_1c
    invoke-static {v0}, Lcom/android/dx/rop/cst/CstByte;->make(B)Lcom/android/dx/rop/cst/CstByte;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method


# virtual methods
.method public getType()Lcom/android/dx/rop/type/Type;
    .registers 2

    #@0
    sget-object v0, Lcom/android/dx/rop/type/Type;->BYTE:Lcom/android/dx/rop/type/Type;

    #@2
    return-object v0
.end method

.method public getValue()B
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstByte;->getIntBits()I

    #@3
    move-result v0

    #@4
    int-to-byte v0, v0

    #@5
    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstByte;->getIntBits()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstByte;->getIntBits()I

    #@3
    move-result v0

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string v2, "byte{0x"

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-static {v0}, Lcom/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string v2, " / "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    const-string v0, "byte"

    #@2
    return-object v0
.end method
