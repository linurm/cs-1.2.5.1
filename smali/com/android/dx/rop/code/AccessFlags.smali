.class public final Lcom/android/dx/rop/code/AccessFlags;
.super Ljava/lang/Object;


# static fields
.field public static final ACC_ABSTRACT:I = 0x400

.field public static final ACC_ANNOTATION:I = 0x2000

.field public static final ACC_BRIDGE:I = 0x40

.field public static final ACC_CONSTRUCTOR:I = 0x10000

.field public static final ACC_DECLARED_SYNCHRONIZED:I = 0x20000

.field public static final ACC_ENUM:I = 0x4000

.field public static final ACC_FINAL:I = 0x10

.field public static final ACC_INTERFACE:I = 0x200

.field public static final ACC_NATIVE:I = 0x100

.field public static final ACC_PRIVATE:I = 0x2

.field public static final ACC_PROTECTED:I = 0x4

.field public static final ACC_PUBLIC:I = 0x1

.field public static final ACC_STATIC:I = 0x8

.field public static final ACC_STRICT:I = 0x800

.field public static final ACC_SUPER:I = 0x20

.field public static final ACC_SYNCHRONIZED:I = 0x20

.field public static final ACC_SYNTHETIC:I = 0x1000

.field public static final ACC_TRANSIENT:I = 0x80

.field public static final ACC_VARARGS:I = 0x80

.field public static final ACC_VOLATILE:I = 0x40

.field public static final CLASS_FLAGS:I = 0x7631

.field private static final CONV_CLASS:I = 0x1

.field private static final CONV_FIELD:I = 0x2

.field private static final CONV_METHOD:I = 0x3

.field public static final FIELD_FLAGS:I = 0x50df

.field public static final INNER_CLASS_FLAGS:I = 0x761f

.field public static final METHOD_FLAGS:I = 0x31dff


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static classString(I)Ljava/lang/String;
    .registers 3

    #@0
    const/16 v0, 0x7631

    #@2
    const/4 v1, 0x1

    #@3
    invoke-static {p0, v0, v1}, Lcom/android/dx/rop/code/AccessFlags;->humanHelper(III)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static fieldString(I)Ljava/lang/String;
    .registers 3

    #@0
    const/16 v0, 0x50df

    #@2
    const/4 v1, 0x2

    #@3
    invoke-static {p0, v0, v1}, Lcom/android/dx/rop/code/AccessFlags;->humanHelper(III)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method private static humanHelper(III)Ljava/lang/String;
    .registers 9

    #@0
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x1

    #@2
    new-instance v0, Ljava/lang/StringBuffer;

    #@4
    const/16 v1, 0x50

    #@6
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    #@9
    xor-int/lit8 v1, p1, -0x1

    #@b
    and-int/2addr v1, p0

    #@c
    and-int v2, p0, p1

    #@e
    and-int/lit8 v3, v2, 0x1

    #@10
    if-eqz v3, :cond_17

    #@12
    const-string v3, "|public"

    #@14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@17
    :cond_17
    and-int/lit8 v3, v2, 0x2

    #@19
    if-eqz v3, :cond_20

    #@1b
    const-string v3, "|private"

    #@1d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@20
    :cond_20
    and-int/lit8 v3, v2, 0x4

    #@22
    if-eqz v3, :cond_29

    #@24
    const-string v3, "|protected"

    #@26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@29
    :cond_29
    and-int/lit8 v3, v2, 0x8

    #@2b
    if-eqz v3, :cond_32

    #@2d
    const-string v3, "|static"

    #@2f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@32
    :cond_32
    and-int/lit8 v3, v2, 0x10

    #@34
    if-eqz v3, :cond_3b

    #@36
    const-string v3, "|final"

    #@38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3b
    :cond_3b
    and-int/lit8 v3, v2, 0x20

    #@3d
    if-eqz v3, :cond_46

    #@3f
    if-ne p2, v4, :cond_c8

    #@41
    const-string v3, "|super"

    #@43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@46
    :cond_46
    :goto_46
    and-int/lit8 v3, v2, 0x40

    #@48
    if-eqz v3, :cond_51

    #@4a
    if-ne p2, v5, :cond_cf

    #@4c
    const-string v3, "|bridge"

    #@4e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@51
    :cond_51
    :goto_51
    and-int/lit16 v3, v2, 0x80

    #@53
    if-eqz v3, :cond_5c

    #@55
    if-ne p2, v5, :cond_d6

    #@57
    const-string v3, "|varargs"

    #@59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5c
    :cond_5c
    :goto_5c
    and-int/lit16 v3, v2, 0x100

    #@5e
    if-eqz v3, :cond_65

    #@60
    const-string v3, "|native"

    #@62
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@65
    :cond_65
    and-int/lit16 v3, v2, 0x200

    #@67
    if-eqz v3, :cond_6e

    #@69
    const-string v3, "|interface"

    #@6b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6e
    :cond_6e
    and-int/lit16 v3, v2, 0x400

    #@70
    if-eqz v3, :cond_77

    #@72
    const-string v3, "|abstract"

    #@74
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@77
    :cond_77
    and-int/lit16 v3, v2, 0x800

    #@79
    if-eqz v3, :cond_80

    #@7b
    const-string v3, "|strictfp"

    #@7d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@80
    :cond_80
    and-int/lit16 v3, v2, 0x1000

    #@82
    if-eqz v3, :cond_89

    #@84
    const-string v3, "|synthetic"

    #@86
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@89
    :cond_89
    and-int/lit16 v3, v2, 0x2000

    #@8b
    if-eqz v3, :cond_92

    #@8d
    const-string v3, "|annotation"

    #@8f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@92
    :cond_92
    and-int/lit16 v3, v2, 0x4000

    #@94
    if-eqz v3, :cond_9b

    #@96
    const-string v3, "|enum"

    #@98
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9b
    :cond_9b
    const/high16 v3, 0x10000

    #@9d
    and-int/2addr v3, v2

    #@9e
    if-eqz v3, :cond_a5

    #@a0
    const-string v3, "|constructor"

    #@a2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a5
    :cond_a5
    const/high16 v3, 0x20000

    #@a7
    and-int/2addr v2, v3

    #@a8
    if-eqz v2, :cond_af

    #@aa
    const-string v2, "|declared_synchronized"

    #@ac
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@af
    :cond_af
    if-nez v1, :cond_b7

    #@b1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    #@b4
    move-result v2

    #@b5
    if-nez v2, :cond_c3

    #@b7
    :cond_b7
    const/16 v2, 0x7c

    #@b9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@bc
    invoke-static {v1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    #@bf
    move-result-object v1

    #@c0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c3
    :cond_c3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    #@c6
    move-result-object v0

    #@c7
    return-object v0

    #@c8
    :cond_c8
    const-string v3, "|synchronized"

    #@ca
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@cd
    goto/16 :goto_46

    #@cf
    :cond_cf
    const-string v3, "|volatile"

    #@d1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d4
    goto/16 :goto_51

    #@d6
    :cond_d6
    const-string v3, "|transient"

    #@d8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@db
    goto :goto_5c
.end method

.method public static innerClassString(I)Ljava/lang/String;
    .registers 3

    #@0
    const/16 v0, 0x761f

    #@2
    const/4 v1, 0x1

    #@3
    invoke-static {p0, v0, v1}, Lcom/android/dx/rop/code/AccessFlags;->humanHelper(III)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static isAbstract(I)Z
    .registers 2

    #@0
    and-int/lit16 v0, p0, 0x400

    #@2
    if-eqz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method public static isAnnotation(I)Z
    .registers 2

    #@0
    and-int/lit16 v0, p0, 0x2000

    #@2
    if-eqz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method public static isDeclaredSynchronized(I)Z
    .registers 2

    #@0
    const/high16 v0, 0x20000

    #@2
    and-int/2addr v0, p0

    #@3
    if-eqz v0, :cond_7

    #@5
    const/4 v0, 0x1

    #@6
    :goto_6
    return v0

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    goto :goto_6
.end method

.method public static isNative(I)Z
    .registers 2

    #@0
    and-int/lit16 v0, p0, 0x100

    #@2
    if-eqz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method public static isPrivate(I)Z
    .registers 2

    #@0
    and-int/lit8 v0, p0, 0x2

    #@2
    if-eqz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method public static isProtected(I)Z
    .registers 2

    #@0
    and-int/lit8 v0, p0, 0x4

    #@2
    if-eqz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method public static isPublic(I)Z
    .registers 2

    #@0
    and-int/lit8 v0, p0, 0x1

    #@2
    if-eqz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method public static isStatic(I)Z
    .registers 2

    #@0
    and-int/lit8 v0, p0, 0x8

    #@2
    if-eqz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method public static isSynchronized(I)Z
    .registers 2

    #@0
    and-int/lit8 v0, p0, 0x20

    #@2
    if-eqz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method public static methodString(I)Ljava/lang/String;
    .registers 3

    #@0
    const v0, 0x31dff

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {p0, v0, v1}, Lcom/android/dx/rop/code/AccessFlags;->humanHelper(III)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
