.class public final Lcom/android/dx/rop/cst/CstString;
.super Lcom/android/dx/rop/cst/TypedConstant;


# static fields
.field public static final EMPTY_STRING:Lcom/android/dx/rop/cst/CstString;


# instance fields
.field private final bytes:Lcom/android/dx/util/ByteArray;

.field private final string:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Lcom/android/dx/rop/cst/CstString;

    #@2
    const-string v1, ""

    #@4
    invoke-direct {v0, v1}, Lcom/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    #@7
    sput-object v0, Lcom/android/dx/rop/cst/CstString;->EMPTY_STRING:Lcom/android/dx/rop/cst/CstString;

    #@9
    return-void
.end method

.method public constructor <init>(Lcom/android/dx/util/ByteArray;)V
    .registers 4

    #@0
    invoke-direct {p0}, Lcom/android/dx/rop/cst/TypedConstant;-><init>()V

    #@3
    if-nez p1, :cond_d

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string v1, "bytes == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    iput-object p1, p0, Lcom/android/dx/rop/cst/CstString;->bytes:Lcom/android/dx/util/ByteArray;

    #@f
    invoke-static {p1}, Lcom/android/dx/rop/cst/CstString;->utf8BytesToString(Lcom/android/dx/util/ByteArray;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    #@19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    #@0
    invoke-direct {p0}, Lcom/android/dx/rop/cst/TypedConstant;-><init>()V

    #@3
    if-nez p1, :cond_d

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string v1, "string == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    #@13
    new-instance v0, Lcom/android/dx/util/ByteArray;

    #@15
    invoke-static {p1}, Lcom/android/dx/rop/cst/CstString;->stringToUtf8Bytes(Ljava/lang/String;)[B

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Lcom/android/dx/util/ByteArray;-><init>([B)V

    #@1c
    iput-object v0, p0, Lcom/android/dx/rop/cst/CstString;->bytes:Lcom/android/dx/util/ByteArray;

    #@1e
    return-void
.end method

.method public static stringToUtf8Bytes(Ljava/lang/String;)[B
    .registers 9

    #@0
    const/4 v2, 0x0

    #@1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v3

    #@5
    mul-int/lit8 v0, v3, 0x3

    #@7
    new-array v4, v0, [B

    #@9
    move v1, v2

    #@a
    move v0, v2

    #@b
    :goto_b
    if-ge v1, v3, :cond_5e

    #@d
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_20

    #@13
    const/16 v6, 0x80

    #@15
    if-ge v5, v6, :cond_20

    #@17
    int-to-byte v5, v5

    #@18
    int-to-byte v5, v5

    #@19
    aput-byte v5, v4, v0

    #@1b
    add-int/lit8 v0, v0, 0x1

    #@1d
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_b

    #@20
    :cond_20
    const/16 v6, 0x800

    #@22
    if-ge v5, v6, :cond_3b

    #@24
    shr-int/lit8 v6, v5, 0x6

    #@26
    and-int/lit8 v6, v6, 0x1f

    #@28
    or-int/lit16 v6, v6, 0xc0

    #@2a
    int-to-byte v6, v6

    #@2b
    int-to-byte v6, v6

    #@2c
    aput-byte v6, v4, v0

    #@2e
    add-int/lit8 v6, v0, 0x1

    #@30
    and-int/lit8 v5, v5, 0x3f

    #@32
    or-int/lit16 v5, v5, 0x80

    #@34
    int-to-byte v5, v5

    #@35
    int-to-byte v5, v5

    #@36
    aput-byte v5, v4, v6

    #@38
    add-int/lit8 v0, v0, 0x2

    #@3a
    goto :goto_1d

    #@3b
    :cond_3b
    shr-int/lit8 v6, v5, 0xc

    #@3d
    and-int/lit8 v6, v6, 0xf

    #@3f
    or-int/lit16 v6, v6, 0xe0

    #@41
    int-to-byte v6, v6

    #@42
    int-to-byte v6, v6

    #@43
    aput-byte v6, v4, v0

    #@45
    add-int/lit8 v6, v0, 0x1

    #@47
    shr-int/lit8 v7, v5, 0x6

    #@49
    and-int/lit8 v7, v7, 0x3f

    #@4b
    or-int/lit16 v7, v7, 0x80

    #@4d
    int-to-byte v7, v7

    #@4e
    int-to-byte v7, v7

    #@4f
    aput-byte v7, v4, v6

    #@51
    add-int/lit8 v6, v0, 0x2

    #@53
    and-int/lit8 v5, v5, 0x3f

    #@55
    or-int/lit16 v5, v5, 0x80

    #@57
    int-to-byte v5, v5

    #@58
    int-to-byte v5, v5

    #@59
    aput-byte v5, v4, v6

    #@5b
    add-int/lit8 v0, v0, 0x3

    #@5d
    goto :goto_1d

    #@5e
    :cond_5e
    new-array v1, v0, [B

    #@60
    invoke-static {v4, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@63
    return-object v1
.end method

.method private static throwBadUtf8(II)Ljava/lang/String;
    .registers 5

    #@0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string v2, "bad utf-8 byte "

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    invoke-static {p0}, Lcom/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string v2, " at offset "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {p1}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0
.end method

.method public static utf8BytesToString(Lcom/android/dx/util/ByteArray;)Ljava/lang/String;
    .registers 11

    #@0
    const/4 v4, 0x0

    #@1
    const/16 v9, 0x80

    #@3
    invoke-virtual {p0}, Lcom/android/dx/util/ByteArray;->size()I

    #@6
    move-result v2

    #@7
    new-array v5, v2, [C

    #@9
    move v3, v4

    #@a
    move v1, v4

    #@b
    :goto_b
    if-lez v2, :cond_a5

    #@d
    invoke-virtual {p0, v1}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    #@10
    move-result v0

    #@11
    shr-int/lit8 v6, v0, 0x4

    #@13
    packed-switch v6, :pswitch_data_ac

    #@16
    :pswitch_16
    invoke-static {v0, v1}, Lcom/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    :goto_1a
    return-object v0

    #@1b
    :pswitch_1b
    add-int/lit8 v2, v2, -0x1

    #@1d
    if-nez v0, :cond_24

    #@1f
    invoke-static {v0, v1}, Lcom/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    goto :goto_1a

    #@24
    :cond_24
    int-to-char v0, v0

    #@25
    add-int/lit8 v1, v1, 0x1

    #@27
    :goto_27
    int-to-char v0, v0

    #@28
    aput-char v0, v5, v3

    #@2a
    add-int/lit8 v0, v3, 0x1

    #@2c
    move v3, v0

    #@2d
    goto :goto_b

    #@2e
    :pswitch_2e
    add-int/lit8 v2, v2, -0x2

    #@30
    if-gez v2, :cond_37

    #@32
    invoke-static {v0, v1}, Lcom/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    goto :goto_1a

    #@37
    :cond_37
    add-int/lit8 v6, v1, 0x1

    #@39
    invoke-virtual {p0, v6}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    #@3c
    move-result v6

    #@3d
    and-int/lit16 v7, v6, 0xc0

    #@3f
    if-eq v7, v9, :cond_48

    #@41
    add-int/lit8 v0, v1, 0x1

    #@43
    invoke-static {v6, v0}, Lcom/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    goto :goto_1a

    #@48
    :cond_48
    and-int/lit8 v0, v0, 0x1f

    #@4a
    shl-int/lit8 v0, v0, 0x6

    #@4c
    and-int/lit8 v7, v6, 0x3f

    #@4e
    or-int/2addr v0, v7

    #@4f
    if-eqz v0, :cond_5a

    #@51
    if-ge v0, v9, :cond_5a

    #@53
    add-int/lit8 v0, v1, 0x1

    #@55
    invoke-static {v6, v0}, Lcom/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    goto :goto_1a

    #@5a
    :cond_5a
    int-to-char v0, v0

    #@5b
    add-int/lit8 v1, v1, 0x2

    #@5d
    goto :goto_27

    #@5e
    :pswitch_5e
    add-int/lit8 v2, v2, -0x3

    #@60
    if-gez v2, :cond_67

    #@62
    invoke-static {v0, v1}, Lcom/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    #@65
    move-result-object v0

    #@66
    goto :goto_1a

    #@67
    :cond_67
    add-int/lit8 v6, v1, 0x1

    #@69
    invoke-virtual {p0, v6}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    #@6c
    move-result v6

    #@6d
    and-int/lit16 v7, v6, 0xc0

    #@6f
    if-eq v7, v9, :cond_78

    #@71
    add-int/lit8 v0, v1, 0x1

    #@73
    invoke-static {v6, v0}, Lcom/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    #@76
    move-result-object v0

    #@77
    goto :goto_1a

    #@78
    :cond_78
    add-int/lit8 v7, v1, 0x2

    #@7a
    invoke-virtual {p0, v7}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    #@7d
    move-result v7

    #@7e
    and-int/lit16 v8, v6, 0xc0

    #@80
    if-eq v8, v9, :cond_89

    #@82
    add-int/lit8 v0, v1, 0x2

    #@84
    invoke-static {v7, v0}, Lcom/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    #@87
    move-result-object v0

    #@88
    goto :goto_1a

    #@89
    :cond_89
    and-int/lit8 v0, v0, 0xf

    #@8b
    shl-int/lit8 v0, v0, 0xc

    #@8d
    and-int/lit8 v6, v6, 0x3f

    #@8f
    shl-int/lit8 v6, v6, 0x6

    #@91
    or-int/2addr v0, v6

    #@92
    and-int/lit8 v6, v7, 0x3f

    #@94
    or-int/2addr v0, v6

    #@95
    const/16 v6, 0x800

    #@97
    if-ge v0, v6, :cond_a1

    #@99
    add-int/lit8 v0, v1, 0x2

    #@9b
    invoke-static {v7, v0}, Lcom/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    #@9e
    move-result-object v0

    #@9f
    goto/16 :goto_1a

    #@a1
    :cond_a1
    int-to-char v0, v0

    #@a2
    add-int/lit8 v1, v1, 0x3

    #@a4
    goto :goto_27

    #@a5
    :cond_a5
    new-instance v0, Ljava/lang/String;

    #@a7
    invoke-direct {v0, v5, v4, v3}, Ljava/lang/String;-><init>([CII)V

    #@aa
    goto/16 :goto_1a

    #@ac
    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_2e
        :pswitch_2e
        :pswitch_5e
    .end packed-switch
.end method


# virtual methods
.method protected compareTo0(Lcom/android/dx/rop/cst/Constant;)I
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    #@2
    check-cast p1, Lcom/android/dx/rop/cst/CstString;

    #@4
    iget-object v1, p1, Lcom/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    #@0
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstString;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    #@8
    check-cast p1, Lcom/android/dx/rop/cst/CstString;

    #@a
    iget-object v1, p1, Lcom/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    goto :goto_5
.end method

.method public getBytes()Lcom/android/dx/util/ByteArray;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstString;->bytes:Lcom/android/dx/util/ByteArray;

    #@2
    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getType()Lcom/android/dx/rop/type/Type;
    .registers 2

    #@0
    sget-object v0, Lcom/android/dx/rop/type/Type;->STRING:Lcom/android/dx/rop/type/Type;

    #@2
    return-object v0
.end method

.method public getUtf16Size()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getUtf8Size()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstString;->bytes:Lcom/android/dx/util/ByteArray;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/util/ByteArray;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
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
    .registers 13

    #@0
    const/4 v1, 0x1

    #@1
    const/16 v11, 0x5c

    #@3
    const/16 v10, 0x30

    #@5
    const/4 v2, 0x0

    #@6
    const/16 v9, 0x10

    #@8
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    #@a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@d
    move-result v5

    #@e
    new-instance v6, Ljava/lang/StringBuilder;

    #@10
    mul-int/lit8 v0, v5, 0x3

    #@12
    div-int/lit8 v0, v0, 0x2

    #@14
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@17
    move v4, v2

    #@18
    :goto_18
    if-ge v4, v5, :cond_b8

    #@1a
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    #@1c
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v7

    #@20
    const/16 v0, 0x20

    #@22
    if-lt v7, v0, :cond_3c

    #@24
    const/16 v0, 0x7f

    #@26
    if-ge v7, v0, :cond_3c

    #@28
    const/16 v0, 0x27

    #@2a
    if-eq v7, v0, :cond_32

    #@2c
    const/16 v0, 0x22

    #@2e
    if-eq v7, v0, :cond_32

    #@30
    if-ne v7, v11, :cond_35

    #@32
    :cond_32
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@35
    :cond_35
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@38
    :cond_38
    :goto_38
    add-int/lit8 v0, v4, 0x1

    #@3a
    move v4, v0

    #@3b
    goto :goto_18

    #@3c
    :cond_3c
    const/16 v0, 0x7f

    #@3e
    if-gt v7, v0, :cond_8a

    #@40
    packed-switch v7, :pswitch_data_be

    #@43
    :pswitch_43
    add-int/lit8 v0, v5, -0x1

    #@45
    if-ge v4, v0, :cond_80

    #@47
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    #@49
    add-int/lit8 v3, v4, 0x1

    #@4b
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    #@4e
    move-result v0

    #@4f
    :goto_4f
    if-lt v0, v10, :cond_82

    #@51
    const/16 v3, 0x37

    #@53
    if-gt v0, v3, :cond_82

    #@55
    move v0, v1

    #@56
    :goto_56
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@59
    const/4 v3, 0x6

    #@5a
    :goto_5a
    if-ltz v3, :cond_84

    #@5c
    shr-int v8, v7, v3

    #@5e
    and-int/lit8 v8, v8, 0x7

    #@60
    add-int/lit8 v8, v8, 0x30

    #@62
    int-to-char v8, v8

    #@63
    if-ne v8, v10, :cond_67

    #@65
    if-eqz v0, :cond_6b

    #@67
    :cond_67
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6a
    move v0, v1

    #@6b
    :cond_6b
    add-int/lit8 v3, v3, -0x3

    #@6d
    goto :goto_5a

    #@6e
    :pswitch_6e
    const-string v0, "\\n"

    #@70
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    goto :goto_38

    #@74
    :pswitch_74
    const-string v0, "\\r"

    #@76
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    goto :goto_38

    #@7a
    :pswitch_7a
    const-string v0, "\\t"

    #@7c
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    goto :goto_38

    #@80
    :cond_80
    move v0, v2

    #@81
    goto :goto_4f

    #@82
    :cond_82
    move v0, v2

    #@83
    goto :goto_56

    #@84
    :cond_84
    if-nez v0, :cond_38

    #@86
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@89
    goto :goto_38

    #@8a
    :cond_8a
    const-string v0, "\\u"

    #@8c
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    shr-int/lit8 v0, v7, 0xc

    #@91
    invoke-static {v0, v9}, Ljava/lang/Character;->forDigit(II)C

    #@94
    move-result v0

    #@95
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@98
    shr-int/lit8 v0, v7, 0x8

    #@9a
    and-int/lit8 v0, v0, 0xf

    #@9c
    invoke-static {v0, v9}, Ljava/lang/Character;->forDigit(II)C

    #@9f
    move-result v0

    #@a0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a3
    shr-int/lit8 v0, v7, 0x4

    #@a5
    and-int/lit8 v0, v0, 0xf

    #@a7
    invoke-static {v0, v9}, Ljava/lang/Character;->forDigit(II)C

    #@aa
    move-result v0

    #@ab
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ae
    and-int/lit8 v0, v7, 0xf

    #@b0
    invoke-static {v0, v9}, Ljava/lang/Character;->forDigit(II)C

    #@b3
    move-result v0

    #@b4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b7
    goto :goto_38

    #@b8
    :cond_b8
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v0

    #@bc
    return-object v0

    #@bd
    nop

    #@be
    :pswitch_data_be
    .packed-switch 0x9
        :pswitch_7a
        :pswitch_6e
        :pswitch_43
        :pswitch_43
        :pswitch_74
    .end packed-switch
.end method

.method public toQuoted()Ljava/lang/String;
    .registers 4

    #@0
    const/16 v2, 0x22

    #@2
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method public toQuoted(I)Ljava/lang/String;
    .registers 6

    #@0
    const/16 v3, 0x22

    #@2
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@9
    move-result v0

    #@a
    add-int/lit8 v2, p1, -0x2

    #@c
    if-gt v0, v2, :cond_2a

    #@e
    const-string v0, ""

    #@10
    :goto_10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    return-object v0

    #@2a
    :cond_2a
    const/4 v0, 0x0

    #@2b
    add-int/lit8 v2, p1, -0x5

    #@2d
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    const-string v0, "..."

    #@33
    goto :goto_10
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "string{\""

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string v1, "\"}"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

.method public typeName()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "utf8"

    #@2
    return-object v0
.end method
