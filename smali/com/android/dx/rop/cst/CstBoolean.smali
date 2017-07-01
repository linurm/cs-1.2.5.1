.class public final Lcom/android/dx/rop/cst/CstBoolean;
.super Lcom/android/dx/rop/cst/CstLiteral32;


# static fields
.field public static final VALUE_FALSE:Lcom/android/dx/rop/cst/CstBoolean;

.field public static final VALUE_TRUE:Lcom/android/dx/rop/cst/CstBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Lcom/android/dx/rop/cst/CstBoolean;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lcom/android/dx/rop/cst/CstBoolean;-><init>(Z)V

    #@6
    sput-object v0, Lcom/android/dx/rop/cst/CstBoolean;->VALUE_FALSE:Lcom/android/dx/rop/cst/CstBoolean;

    #@8
    new-instance v0, Lcom/android/dx/rop/cst/CstBoolean;

    #@a
    const/4 v1, 0x1

    #@b
    invoke-direct {v0, v1}, Lcom/android/dx/rop/cst/CstBoolean;-><init>(Z)V

    #@e
    sput-object v0, Lcom/android/dx/rop/cst/CstBoolean;->VALUE_TRUE:Lcom/android/dx/rop/cst/CstBoolean;

    #@10
    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    #@0
    if-eqz p1, :cond_7

    #@2
    const/4 v0, 0x1

    #@3
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/dx/rop/cst/CstLiteral32;-><init>(I)V

    #@6
    return-void

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    goto :goto_3
.end method

.method public static make(I)Lcom/android/dx/rop/cst/CstBoolean;
    .registers 4

    #@0
    if-nez p0, :cond_5

    #@2
    sget-object v0, Lcom/android/dx/rop/cst/CstBoolean;->VALUE_FALSE:Lcom/android/dx/rop/cst/CstBoolean;

    #@4
    :goto_4
    return-object v0

    #@5
    :cond_5
    const/4 v0, 0x1

    #@6
    if-ne p0, v0, :cond_b

    #@8
    sget-object v0, Lcom/android/dx/rop/cst/CstBoolean;->VALUE_TRUE:Lcom/android/dx/rop/cst/CstBoolean;

    #@a
    goto :goto_4

    #@b
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string v2, "bogus value: "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0
.end method

.method public static make(Z)Lcom/android/dx/rop/cst/CstBoolean;
    .registers 2

    #@0
    if-eqz p0, :cond_5

    #@2
    sget-object v0, Lcom/android/dx/rop/cst/CstBoolean;->VALUE_TRUE:Lcom/android/dx/rop/cst/CstBoolean;

    #@4
    :goto_4
    return-object v0

    #@5
    :cond_5
    sget-object v0, Lcom/android/dx/rop/cst/CstBoolean;->VALUE_FALSE:Lcom/android/dx/rop/cst/CstBoolean;

    #@7
    goto :goto_4
.end method


# virtual methods
.method public getType()Lcom/android/dx/rop/type/Type;
    .registers 2

    #@0
    sget-object v0, Lcom/android/dx/rop/type/Type;->BOOLEAN:Lcom/android/dx/rop/type/Type;

    #@2
    return-object v0
.end method

.method public getValue()Z
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstBoolean;->getIntBits()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x1

    #@9
    goto :goto_7
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstBoolean;->getValue()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_9

    #@6
    const-string v0, "true"

    #@8
    :goto_8
    return-object v0

    #@9
    :cond_9
    const-string v0, "false"

    #@b
    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstBoolean;->getValue()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_9

    #@6
    const-string v0, "boolean{true}"

    #@8
    :goto_8
    return-object v0

    #@9
    :cond_9
    const-string v0, "boolean{false}"

    #@b
    goto :goto_8
.end method

.method public typeName()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "boolean"

    #@2
    return-object v0
.end method
