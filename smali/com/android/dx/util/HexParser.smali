.class public final Lcom/android/dx/util/HexParser;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static parse(Ljava/lang/String;)[B
    .registers 14

    #@0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    div-int/lit8 v0, v1, 0x2

    #@6
    new-array v7, v0, [B

    #@8
    const/4 v6, 0x0

    #@9
    const/4 v0, 0x0

    #@a
    move v2, v0

    #@b
    :goto_b
    if-ge v2, v1, :cond_145

    #@d
    const/16 v0, 0xa

    #@f
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    #@12
    move-result v0

    #@13
    if-gez v0, :cond_16

    #@15
    move v0, v1

    #@16
    :cond_16
    const/16 v3, 0x23

    #@18
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    #@1b
    move-result v3

    #@1c
    if-ltz v3, :cond_55

    #@1e
    if-ge v3, v0, :cond_55

    #@20
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    :goto_24
    const/16 v3, 0x3a

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    #@29
    move-result v3

    #@2a
    const/4 v4, -0x1

    #@2b
    if-eq v3, v4, :cond_38

    #@2d
    const/16 v4, 0x22

    #@2f
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    #@32
    move-result v4

    #@33
    const/4 v5, -0x1

    #@34
    if-eq v4, v5, :cond_5a

    #@36
    if-ge v4, v3, :cond_5a

    #@38
    :cond_38
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@3b
    move-result v9

    #@3c
    const/4 v3, 0x0

    #@3d
    const/4 v5, 0x0

    #@3e
    const/4 v4, -0x1

    #@3f
    move v8, v3

    #@40
    move v3, v4

    #@41
    :goto_41
    if-ge v8, v9, :cond_101

    #@43
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    #@46
    move-result v10

    #@47
    if-eqz v5, :cond_94

    #@49
    const/16 v4, 0x22

    #@4b
    if-ne v10, v4, :cond_8a

    #@4d
    const/4 v4, 0x0

    #@4e
    move v5, v6

    #@4f
    :goto_4f
    add-int/lit8 v6, v8, 0x1

    #@51
    move v8, v6

    #@52
    move v6, v5

    #@53
    move v5, v4

    #@54
    goto :goto_41

    #@55
    :cond_55
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    goto :goto_24

    #@5a
    :cond_5a
    const/4 v4, 0x0

    #@5b
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    add-int/lit8 v3, v3, 0x1

    #@65
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    const/16 v3, 0x10

    #@6b
    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@6e
    move-result v3

    #@6f
    if-eq v3, v6, :cond_38

    #@71
    new-instance v0, Ljava/lang/RuntimeException;

    #@73
    new-instance v1, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string v2, "bogus offset marker: "

    #@7a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v1

    #@7e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v1

    #@82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v1

    #@86
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@89
    throw v0

    #@8a
    :cond_8a
    int-to-byte v4, v10

    #@8b
    int-to-byte v4, v4

    #@8c
    aput-byte v4, v7, v6

    #@8e
    add-int/lit8 v4, v6, 0x1

    #@90
    move v12, v5

    #@91
    move v5, v4

    #@92
    move v4, v12

    #@93
    goto :goto_4f

    #@94
    :cond_94
    const/16 v4, 0x20

    #@96
    if-gt v10, v4, :cond_9b

    #@98
    move v4, v5

    #@99
    move v5, v6

    #@9a
    goto :goto_4f

    #@9b
    :cond_9b
    const/16 v4, 0x22

    #@9d
    if-ne v10, v4, :cond_c2

    #@9f
    const/4 v4, -0x1

    #@a0
    if-eq v3, v4, :cond_bf

    #@a2
    new-instance v0, Ljava/lang/RuntimeException;

    #@a4
    new-instance v1, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    const-string v2, "spare digit around offset "

    #@ab
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v1

    #@af
    invoke-static {v6}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@b2
    move-result-object v2

    #@b3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v1

    #@b7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v1

    #@bb
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@be
    throw v0

    #@bf
    :cond_bf
    const/4 v4, 0x1

    #@c0
    move v5, v6

    #@c1
    goto :goto_4f

    #@c2
    :cond_c2
    const/16 v4, 0x10

    #@c4
    invoke-static {v10, v4}, Ljava/lang/Character;->digit(CI)I

    #@c7
    move-result v4

    #@c8
    const/4 v11, -0x1

    #@c9
    if-ne v4, v11, :cond_ea

    #@cb
    new-instance v0, Ljava/lang/RuntimeException;

    #@cd
    new-instance v1, Ljava/lang/StringBuilder;

    #@cf
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d2
    const-string v2, "bogus digit character: \""

    #@d4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v1

    #@d8
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@db
    move-result-object v1

    #@dc
    const-string v2, "\""

    #@de
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v1

    #@e2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e5
    move-result-object v1

    #@e6
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e9
    throw v0

    #@ea
    :cond_ea
    const/4 v10, -0x1

    #@eb
    if-ne v3, v10, :cond_f2

    #@ed
    move v3, v4

    #@ee
    move v4, v5

    #@ef
    move v5, v6

    #@f0
    goto/16 :goto_4f

    #@f2
    :cond_f2
    shl-int/lit8 v3, v3, 0x4

    #@f4
    or-int/2addr v3, v4

    #@f5
    int-to-byte v3, v3

    #@f6
    int-to-byte v3, v3

    #@f7
    aput-byte v3, v7, v6

    #@f9
    add-int/lit8 v4, v6, 0x1

    #@fb
    const/4 v3, -0x1

    #@fc
    move v12, v5

    #@fd
    move v5, v4

    #@fe
    move v4, v12

    #@ff
    goto/16 :goto_4f

    #@101
    :cond_101
    const/4 v2, -0x1

    #@102
    if-eq v3, v2, :cond_121

    #@104
    new-instance v0, Ljava/lang/RuntimeException;

    #@106
    new-instance v1, Ljava/lang/StringBuilder;

    #@108
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10b
    const-string v2, "spare digit around offset "

    #@10d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v1

    #@111
    invoke-static {v6}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@114
    move-result-object v2

    #@115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v1

    #@119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11c
    move-result-object v1

    #@11d
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@120
    throw v0

    #@121
    :cond_121
    if-eqz v5, :cond_140

    #@123
    new-instance v0, Ljava/lang/RuntimeException;

    #@125
    new-instance v1, Ljava/lang/StringBuilder;

    #@127
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12a
    const-string v2, "unterminated quote around offset "

    #@12c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v1

    #@130
    invoke-static {v6}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@133
    move-result-object v2

    #@134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v1

    #@138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13b
    move-result-object v1

    #@13c
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@13f
    throw v0

    #@140
    :cond_140
    add-int/lit8 v0, v0, 0x1

    #@142
    move v2, v0

    #@143
    goto/16 :goto_b

    #@145
    :cond_145
    array-length v0, v7

    #@146
    if-ge v6, v0, :cond_150

    #@148
    new-array v0, v6, [B

    #@14a
    const/4 v1, 0x0

    #@14b
    const/4 v2, 0x0

    #@14c
    invoke-static {v7, v1, v0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@14f
    :goto_14f
    return-object v0

    #@150
    :cond_150
    move-object v0, v7

    #@151
    goto :goto_14f
.end method
