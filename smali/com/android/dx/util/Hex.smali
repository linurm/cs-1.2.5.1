.class public final Lcom/android/dx/util/Hex;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static dump([BIIIII)Ljava/lang/String;
    .registers 11

    #@0
    const/16 v4, 0xa

    #@2
    const/4 v1, 0x0

    #@3
    add-int v0, p1, p2

    #@5
    or-int v2, p1, p2

    #@7
    or-int/2addr v2, v0

    #@8
    if-ltz v2, :cond_d

    #@a
    array-length v2, p0

    #@b
    if-le v0, v2, :cond_3b

    #@d
    :cond_d
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string v3, "arr.length "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    array-length v3, p0

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    const-string v3, "; "

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    const-string v3, "..!"

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v1

    #@3b
    :cond_3b
    if-gez p3, :cond_45

    #@3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@3f
    const-string v1, "outOffset < 0"

    #@41
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@44
    throw v0

    #@45
    :cond_45
    if-nez p2, :cond_4a

    #@47
    const-string v0, ""

    #@49
    :goto_49
    return-object v0

    #@4a
    :cond_4a
    new-instance v3, Ljava/lang/StringBuffer;

    #@4c
    mul-int/lit8 v0, p2, 0x4

    #@4e
    add-int/lit8 v0, v0, 0x6

    #@50
    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    #@53
    move v2, v1

    #@54
    :goto_54
    if-lez p2, :cond_99

    #@56
    if-nez v2, :cond_8f

    #@58
    packed-switch p5, :pswitch_data_a4

    #@5b
    :pswitch_5b
    invoke-static {p3}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@5e
    move-result-object v0

    #@5f
    :goto_5f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@62
    const-string v0, ": "

    #@64
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@67
    :cond_67
    :goto_67
    aget-byte v0, p0, p1

    #@69
    invoke-static {v0}, Lcom/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    #@6c
    move-result-object v0

    #@6d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@70
    add-int/lit8 p3, p3, 0x1

    #@72
    add-int/lit8 p1, p1, 0x1

    #@74
    add-int/lit8 v0, v2, 0x1

    #@76
    if-ne v0, p4, :cond_7c

    #@78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@7b
    move v0, v1

    #@7c
    :cond_7c
    add-int/lit8 p2, p2, -0x1

    #@7e
    move v2, v0

    #@7f
    goto :goto_54

    #@80
    :pswitch_80
    invoke-static {p3}, Lcom/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    #@83
    move-result-object v0

    #@84
    goto :goto_5f

    #@85
    :pswitch_85
    invoke-static {p3}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    #@88
    move-result-object v0

    #@89
    goto :goto_5f

    #@8a
    :pswitch_8a
    invoke-static {p3}, Lcom/android/dx/util/Hex;->u3(I)Ljava/lang/String;

    #@8d
    move-result-object v0

    #@8e
    goto :goto_5f

    #@8f
    :cond_8f
    and-int/lit8 v0, v2, 0x1

    #@91
    if-nez v0, :cond_67

    #@93
    const/16 v0, 0x20

    #@95
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@98
    goto :goto_67

    #@99
    :cond_99
    if-eqz v2, :cond_9e

    #@9b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@9e
    :cond_9e
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@a1
    move-result-object v0

    #@a2
    goto :goto_49

    #@a3
    nop

    #@a4
    :pswitch_data_a4
    .packed-switch 0x2
        :pswitch_80
        :pswitch_5b
        :pswitch_85
        :pswitch_5b
        :pswitch_8a
    .end packed-switch
.end method

.method public static s1(I)Ljava/lang/String;
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x3

    #@2
    new-array v1, v1, [C

    #@4
    if-gez p0, :cond_20

    #@6
    const/16 v2, 0x2d

    #@8
    int-to-char v2, v2

    #@9
    aput-char v2, v1, v0

    #@b
    neg-int p0, p0

    #@c
    :goto_c
    const/4 v2, 0x2

    #@d
    if-ge v0, v2, :cond_26

    #@f
    rsub-int/lit8 v2, v0, 0x2

    #@11
    and-int/lit8 v3, p0, 0xf

    #@13
    const/16 v4, 0x10

    #@15
    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    #@18
    move-result v3

    #@19
    aput-char v3, v1, v2

    #@1b
    shr-int/lit8 p0, p0, 0x4

    #@1d
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_c

    #@20
    :cond_20
    const/16 v2, 0x2b

    #@22
    int-to-char v2, v2

    #@23
    aput-char v2, v1, v0

    #@25
    goto :goto_c

    #@26
    :cond_26
    new-instance v0, Ljava/lang/String;

    #@28
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    #@2b
    return-object v0
.end method

.method public static s2(I)Ljava/lang/String;
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x5

    #@2
    new-array v1, v1, [C

    #@4
    if-gez p0, :cond_20

    #@6
    const/16 v2, 0x2d

    #@8
    int-to-char v2, v2

    #@9
    aput-char v2, v1, v0

    #@b
    neg-int p0, p0

    #@c
    :goto_c
    const/4 v2, 0x4

    #@d
    if-ge v0, v2, :cond_26

    #@f
    rsub-int/lit8 v2, v0, 0x4

    #@11
    and-int/lit8 v3, p0, 0xf

    #@13
    const/16 v4, 0x10

    #@15
    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    #@18
    move-result v3

    #@19
    aput-char v3, v1, v2

    #@1b
    shr-int/lit8 p0, p0, 0x4

    #@1d
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_c

    #@20
    :cond_20
    const/16 v2, 0x2b

    #@22
    int-to-char v2, v2

    #@23
    aput-char v2, v1, v0

    #@25
    goto :goto_c

    #@26
    :cond_26
    new-instance v0, Ljava/lang/String;

    #@28
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    #@2b
    return-object v0
.end method

.method public static s4(I)Ljava/lang/String;
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    const/16 v1, 0x9

    #@3
    new-array v1, v1, [C

    #@5
    if-gez p0, :cond_22

    #@7
    const/16 v2, 0x2d

    #@9
    int-to-char v2, v2

    #@a
    aput-char v2, v1, v0

    #@c
    neg-int p0, p0

    #@d
    :goto_d
    const/16 v2, 0x8

    #@f
    if-ge v0, v2, :cond_28

    #@11
    rsub-int/lit8 v2, v0, 0x8

    #@13
    and-int/lit8 v3, p0, 0xf

    #@15
    const/16 v4, 0x10

    #@17
    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    #@1a
    move-result v3

    #@1b
    aput-char v3, v1, v2

    #@1d
    shr-int/lit8 p0, p0, 0x4

    #@1f
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_d

    #@22
    :cond_22
    const/16 v2, 0x2b

    #@24
    int-to-char v2, v2

    #@25
    aput-char v2, v1, v0

    #@27
    goto :goto_d

    #@28
    :cond_28
    new-instance v0, Ljava/lang/String;

    #@2a
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    #@2d
    return-object v0
.end method

.method public static s8(J)Ljava/lang/String;
    .registers 8

    #@0
    const/16 v4, 0x10

    #@2
    const/4 v0, 0x0

    #@3
    const/16 v1, 0x11

    #@5
    new-array v1, v1, [C

    #@7
    const-wide/16 v2, 0x0

    #@9
    cmp-long v2, p0, v2

    #@b
    if-gez v2, :cond_25

    #@d
    const/16 v2, 0x2d

    #@f
    int-to-char v2, v2

    #@10
    aput-char v2, v1, v0

    #@12
    neg-long p0, p0

    #@13
    :goto_13
    if-ge v0, v4, :cond_2b

    #@15
    rsub-int/lit8 v2, v0, 0x10

    #@17
    long-to-int v3, p0

    #@18
    and-int/lit8 v3, v3, 0xf

    #@1a
    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    #@1d
    move-result v3

    #@1e
    aput-char v3, v1, v2

    #@20
    const/4 v2, 0x4

    #@21
    shr-long/2addr p0, v2

    #@22
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_13

    #@25
    :cond_25
    const/16 v2, 0x2b

    #@27
    int-to-char v2, v2

    #@28
    aput-char v2, v1, v0

    #@2a
    goto :goto_13

    #@2b
    :cond_2b
    new-instance v0, Ljava/lang/String;

    #@2d
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    #@30
    return-object v0
.end method

.method public static u1(I)Ljava/lang/String;
    .registers 7

    #@0
    const/4 v5, 0x2

    #@1
    new-array v1, v5, [C

    #@3
    const/4 v0, 0x0

    #@4
    :goto_4
    if-ge v0, v5, :cond_17

    #@6
    rsub-int/lit8 v2, v0, 0x1

    #@8
    and-int/lit8 v3, p0, 0xf

    #@a
    const/16 v4, 0x10

    #@c
    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    #@f
    move-result v3

    #@10
    aput-char v3, v1, v2

    #@12
    shr-int/lit8 p0, p0, 0x4

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_4

    #@17
    :cond_17
    new-instance v0, Ljava/lang/String;

    #@19
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    #@1c
    return-object v0
.end method

.method public static u2(I)Ljava/lang/String;
    .registers 7

    #@0
    const/4 v5, 0x4

    #@1
    new-array v1, v5, [C

    #@3
    const/4 v0, 0x0

    #@4
    :goto_4
    if-ge v0, v5, :cond_17

    #@6
    rsub-int/lit8 v2, v0, 0x3

    #@8
    and-int/lit8 v3, p0, 0xf

    #@a
    const/16 v4, 0x10

    #@c
    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    #@f
    move-result v3

    #@10
    aput-char v3, v1, v2

    #@12
    shr-int/lit8 p0, p0, 0x4

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_4

    #@17
    :cond_17
    new-instance v0, Ljava/lang/String;

    #@19
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    #@1c
    return-object v0
.end method

.method public static u2or4(I)Ljava/lang/String;
    .registers 2

    #@0
    int-to-char v0, p0

    #@1
    if-ne p0, v0, :cond_8

    #@3
    invoke-static {p0}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    :goto_7
    return-object v0

    #@8
    :cond_8
    invoke-static {p0}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    goto :goto_7
.end method

.method public static u3(I)Ljava/lang/String;
    .registers 7

    #@0
    const/4 v5, 0x6

    #@1
    new-array v1, v5, [C

    #@3
    const/4 v0, 0x0

    #@4
    :goto_4
    if-ge v0, v5, :cond_17

    #@6
    rsub-int/lit8 v2, v0, 0x5

    #@8
    and-int/lit8 v3, p0, 0xf

    #@a
    const/16 v4, 0x10

    #@c
    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    #@f
    move-result v3

    #@10
    aput-char v3, v1, v2

    #@12
    shr-int/lit8 p0, p0, 0x4

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_4

    #@17
    :cond_17
    new-instance v0, Ljava/lang/String;

    #@19
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    #@1c
    return-object v0
.end method

.method public static u4(I)Ljava/lang/String;
    .registers 7

    #@0
    const/16 v5, 0x8

    #@2
    new-array v1, v5, [C

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    if-ge v0, v5, :cond_18

    #@7
    rsub-int/lit8 v2, v0, 0x7

    #@9
    and-int/lit8 v3, p0, 0xf

    #@b
    const/16 v4, 0x10

    #@d
    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    #@10
    move-result v3

    #@11
    aput-char v3, v1, v2

    #@13
    shr-int/lit8 p0, p0, 0x4

    #@15
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_5

    #@18
    :cond_18
    new-instance v0, Ljava/lang/String;

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    #@1d
    return-object v0
.end method

.method public static u8(J)Ljava/lang/String;
    .registers 8

    #@0
    const/16 v4, 0x10

    #@2
    new-array v1, v4, [C

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    if-ge v0, v4, :cond_17

    #@7
    rsub-int/lit8 v2, v0, 0xf

    #@9
    long-to-int v3, p0

    #@a
    and-int/lit8 v3, v3, 0xf

    #@c
    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    #@f
    move-result v3

    #@10
    aput-char v3, v1, v2

    #@12
    const/4 v2, 0x4

    #@13
    shr-long/2addr p0, v2

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_5

    #@17
    :cond_17
    new-instance v0, Ljava/lang/String;

    #@19
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    #@1c
    return-object v0
.end method

.method public static uNibble(I)Ljava/lang/String;
    .registers 6

    #@0
    new-instance v0, Ljava/lang/String;

    #@2
    const/4 v1, 0x1

    #@3
    new-array v1, v1, [C

    #@5
    const/4 v2, 0x0

    #@6
    and-int/lit8 v3, p0, 0xf

    #@8
    const/16 v4, 0x10

    #@a
    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    #@d
    move-result v3

    #@e
    aput-char v3, v1, v2

    #@10
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    #@13
    return-object v0
.end method
