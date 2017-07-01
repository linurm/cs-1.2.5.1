.class public final Lcom/google/android/gms/internal/mf;
.super Ljava/lang/Object;


# direct methods
.method private static a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    :cond_3
    :goto_3
    return-void

    #@4
    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/me;

    #@6
    if-eqz v0, :cond_106

    #@8
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    #@b
    move-result v4

    #@c
    if-eqz p0, :cond_24

    #@e
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@11
    move-result-object v0

    #@12
    invoke-static {p0}, Lcom/google/android/gms/internal/mf;->cA(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@19
    move-result-object v0

    #@1a
    const-string v2, " <\n"

    #@1c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1f
    const-string v0, "  "

    #@21
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@24
    :cond_24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v5}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    #@2b
    move-result-object v6

    #@2c
    array-length v7, v6

    #@2d
    move v3, v1

    #@2e
    :goto_2e
    if-ge v3, v7, :cond_8b

    #@30
    aget-object v0, v6, v3

    #@32
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    #@35
    move-result v2

    #@36
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@39
    move-result-object v8

    #@3a
    and-int/lit8 v9, v2, 0x1

    #@3c
    const/4 v10, 0x1

    #@3d
    if-ne v9, v10, :cond_6e

    #@3f
    and-int/lit8 v2, v2, 0x8

    #@41
    const/16 v9, 0x8

    #@43
    if-eq v2, v9, :cond_6e

    #@45
    const-string v2, "_"

    #@47
    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@4a
    move-result v2

    #@4b
    if-nez v2, :cond_6e

    #@4d
    const-string v2, "_"

    #@4f
    invoke-virtual {v8, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@52
    move-result v2

    #@53
    if-nez v2, :cond_6e

    #@55
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@58
    move-result-object v2

    #@59
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5c
    move-result-object v9

    #@5d
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    #@60
    move-result v0

    #@61
    if-eqz v0, :cond_87

    #@63
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@66
    move-result-object v0

    #@67
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@69
    if-ne v0, v2, :cond_72

    #@6b
    invoke-static {v8, v9, p2, p3}, Lcom/google/android/gms/internal/mf;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    #@6e
    :cond_6e
    :goto_6e
    add-int/lit8 v0, v3, 0x1

    #@70
    move v3, v0

    #@71
    goto :goto_2e

    #@72
    :cond_72
    if-nez v9, :cond_82

    #@74
    move v0, v1

    #@75
    :goto_75
    move v2, v1

    #@76
    :goto_76
    if-ge v2, v0, :cond_6e

    #@78
    invoke-static {v9, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    #@7b
    move-result-object v10

    #@7c
    invoke-static {v8, v10, p2, p3}, Lcom/google/android/gms/internal/mf;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    #@7f
    add-int/lit8 v2, v2, 0x1

    #@81
    goto :goto_76

    #@82
    :cond_82
    invoke-static {v9}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@85
    move-result v0

    #@86
    goto :goto_75

    #@87
    :cond_87
    invoke-static {v8, v9, p2, p3}, Lcom/google/android/gms/internal/mf;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    #@8a
    goto :goto_6e

    #@8b
    :cond_8b
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    #@8e
    move-result-object v3

    #@8f
    array-length v6, v3

    #@90
    move v2, v1

    #@91
    :goto_91
    if-ge v2, v6, :cond_f6

    #@93
    aget-object v0, v3, v2

    #@95
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@98
    move-result-object v0

    #@99
    const-string v7, "set"

    #@9b
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@9e
    move-result v7

    #@9f
    if-eqz v7, :cond_ce

    #@a1
    const/4 v7, 0x3

    #@a2
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@a5
    move-result-object v7

    #@a6
    :try_start_a6
    new-instance v0, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    const-string v8, "has"

    #@ad
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v0

    #@b1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v0

    #@b5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v0

    #@b9
    const/4 v8, 0x0

    #@ba
    new-array v8, v8, [Ljava/lang/Class;

    #@bc
    invoke-virtual {v5, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_bf
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a6 .. :try_end_bf} :catch_145

    #@bf
    move-result-object v0

    #@c0
    new-array v8, v1, [Ljava/lang/Object;

    #@c2
    invoke-virtual {v0, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@c5
    move-result-object v0

    #@c6
    check-cast v0, Ljava/lang/Boolean;

    #@c8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@cb
    move-result v0

    #@cc
    if-nez v0, :cond_d2

    #@ce
    :cond_ce
    :goto_ce
    add-int/lit8 v0, v2, 0x1

    #@d0
    move v2, v0

    #@d1
    goto :goto_91

    #@d2
    :cond_d2
    :try_start_d2
    new-instance v0, Ljava/lang/StringBuilder;

    #@d4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d7
    const-string v8, "get"

    #@d9
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v0

    #@dd
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v0

    #@e1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e4
    move-result-object v0

    #@e5
    const/4 v8, 0x0

    #@e6
    new-array v8, v8, [Ljava/lang/Class;

    #@e8
    invoke-virtual {v5, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_eb
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d2 .. :try_end_eb} :catch_147

    #@eb
    move-result-object v0

    #@ec
    new-array v8, v1, [Ljava/lang/Object;

    #@ee
    invoke-virtual {v0, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@f1
    move-result-object v0

    #@f2
    invoke-static {v7, v0, p2, p3}, Lcom/google/android/gms/internal/mf;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    #@f5
    goto :goto_ce

    #@f6
    :cond_f6
    if-eqz p0, :cond_3

    #@f8
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    #@fb
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@fe
    move-result-object v0

    #@ff
    const-string v1, ">\n"

    #@101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@104
    goto/16 :goto_3

    #@106
    :cond_106
    invoke-static {p0}, Lcom/google/android/gms/internal/mf;->cA(Ljava/lang/String;)Ljava/lang/String;

    #@109
    move-result-object v0

    #@10a
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@10d
    move-result-object v1

    #@10e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@111
    move-result-object v0

    #@112
    const-string v1, ": "

    #@114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@117
    instance-of v0, p1, Ljava/lang/String;

    #@119
    if-eqz v0, :cond_137

    #@11b
    check-cast p1, Ljava/lang/String;

    #@11d
    invoke-static {p1}, Lcom/google/android/gms/internal/mf;->cB(Ljava/lang/String;)Ljava/lang/String;

    #@120
    move-result-object v0

    #@121
    const-string v1, "\""

    #@123
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@126
    move-result-object v1

    #@127
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12a
    move-result-object v0

    #@12b
    const-string v1, "\""

    #@12d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@130
    :goto_130
    const-string v0, "\n"

    #@132
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@135
    goto/16 :goto_3

    #@137
    :cond_137
    instance-of v0, p1, [B

    #@139
    if-eqz v0, :cond_141

    #@13b
    check-cast p1, [B

    #@13d
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/mf;->a([BLjava/lang/StringBuffer;)V

    #@140
    goto :goto_130

    #@141
    :cond_141
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@144
    goto :goto_130

    #@145
    :catch_145
    move-exception v0

    #@146
    goto :goto_ce

    #@147
    :catch_147
    move-exception v0

    #@148
    goto :goto_ce
.end method

.method private static a([BLjava/lang/StringBuffer;)V
    .registers 9

    #@0
    const/16 v6, 0x5c

    #@2
    const/4 v1, 0x0

    #@3
    const/16 v5, 0x22

    #@5
    if-nez p0, :cond_d

    #@7
    const-string v0, "\"\""

    #@9
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c
    :goto_c
    return-void

    #@d
    :cond_d
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@10
    move v0, v1

    #@11
    :goto_11
    array-length v2, p0

    #@12
    if-ge v0, v2, :cond_45

    #@14
    aget-byte v2, p0, v0

    #@16
    if-eq v2, v6, :cond_1a

    #@18
    if-ne v2, v5, :cond_25

    #@1a
    :cond_1a
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1d
    move-result-object v3

    #@1e
    int-to-char v2, v2

    #@1f
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_11

    #@25
    :cond_25
    const/16 v3, 0x20

    #@27
    if-lt v2, v3, :cond_32

    #@29
    const/16 v3, 0x7f

    #@2b
    if-ge v2, v3, :cond_32

    #@2d
    int-to-char v2, v2

    #@2e
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@31
    goto :goto_22

    #@32
    :cond_32
    const-string v3, "\\%03o"

    #@34
    const/4 v4, 0x1

    #@35
    new-array v4, v4, [Ljava/lang/Object;

    #@37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3a
    move-result-object v2

    #@3b
    aput-object v2, v4, v1

    #@3d
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@44
    goto :goto_22

    #@45
    :cond_45
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@48
    goto :goto_c
.end method

.method private static aK(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    new-instance v3, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@a
    move v0, v1

    #@b
    :goto_b
    if-ge v0, v2, :cond_3a

    #@d
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@10
    move-result v4

    #@11
    const/16 v5, 0x20

    #@13
    if-lt v4, v5, :cond_27

    #@15
    const/16 v5, 0x7e

    #@17
    if-gt v4, v5, :cond_27

    #@19
    const/16 v5, 0x22

    #@1b
    if-eq v4, v5, :cond_27

    #@1d
    const/16 v5, 0x27

    #@1f
    if-eq v4, v5, :cond_27

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    :goto_24
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_b

    #@27
    :cond_27
    const-string v5, "\\u%04x"

    #@29
    const/4 v6, 0x1

    #@2a
    new-array v6, v6, [Ljava/lang/Object;

    #@2c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object v4

    #@30
    aput-object v4, v6, v1

    #@32
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    goto :goto_24

    #@3a
    :cond_3a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    return-object v0
.end method

.method private static cA(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    #@0
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    const/4 v0, 0x0

    #@6
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@9
    move-result v2

    #@a
    if-ge v0, v2, :cond_34

    #@c
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v2

    #@10
    if-nez v0, :cond_1c

    #@12
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    #@15
    move-result v2

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@19
    :goto_19
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_6

    #@1c
    :cond_1c
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_30

    #@22
    const/16 v3, 0x5f

    #@24
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@27
    move-result-object v3

    #@28
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    #@2b
    move-result v2

    #@2c
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2f
    goto :goto_19

    #@30
    :cond_30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@33
    goto :goto_19

    #@34
    :cond_34
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    return-object v0
.end method

.method private static cB(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    const/16 v2, 0xc8

    #@2
    const-string v0, "http"

    #@4
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_28

    #@a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@d
    move-result v0

    #@e
    if-le v0, v2, :cond_28

    #@10
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const/4 v1, 0x0

    #@16
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    const-string v1, "[...]"

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object p0

    #@28
    :cond_28
    invoke-static {p0}, Lcom/google/android/gms/internal/mf;->aK(Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    return-object v0
.end method

.method public static e(Lcom/google/android/gms/internal/me;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/me;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    if-nez p0, :cond_5

    #@2
    const-string v0, ""

    #@4
    :goto_4
    return-object v0

    #@5
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@a
    :try_start_a
    new-instance v1, Ljava/lang/StringBuffer;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@f
    const/4 v2, 0x0

    #@10
    invoke-static {v2, p0, v1, v0}, Lcom/google/android/gms/internal/mf;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    :try_end_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_13} :catch_18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_13} :catch_31

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    goto :goto_4

    #@18
    :catch_18
    move-exception v0

    #@19
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string v2, "Error printing proto: "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    goto :goto_4

    #@31
    :catch_31
    move-exception v0

    #@32
    new-instance v1, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string v2, "Error printing proto: "

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    goto :goto_4
.end method
