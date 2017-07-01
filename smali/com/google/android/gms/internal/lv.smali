.class public final Lcom/google/android/gms/internal/lv;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/lv$a;
    }
.end annotation


# direct methods
.method private static a(Ljava/lang/String;[Lcom/google/android/gms/internal/lw$a$a;)I
    .registers 9

    #@0
    const/16 v1, 0xe

    #@2
    array-length v3, p1

    #@3
    const/4 v0, 0x0

    #@4
    move v2, v0

    #@5
    move v0, v1

    #@6
    :goto_6
    if-ge v2, v3, :cond_7d

    #@8
    aget-object v4, p1, v2

    #@a
    if-ne v0, v1, :cond_4a

    #@c
    iget v5, v4, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@e
    const/16 v6, 0x9

    #@10
    if-eq v5, v6, :cond_1c

    #@12
    iget v5, v4, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@14
    const/4 v6, 0x2

    #@15
    if-eq v5, v6, :cond_1c

    #@17
    iget v5, v4, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@19
    const/4 v6, 0x6

    #@1a
    if-ne v5, v6, :cond_21

    #@1c
    :cond_1c
    iget v0, v4, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@1e
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    #@20
    goto :goto_6

    #@21
    :cond_21
    iget v5, v4, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@23
    if-eq v5, v1, :cond_1e

    #@25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@27
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string v2, "Unexpected TypedValue type: "

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    iget v2, v4, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    const-string v2, " for key "

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@49
    throw v0

    #@4a
    :cond_4a
    iget v5, v4, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@4c
    if-eq v5, v0, :cond_1e

    #@4e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@50
    new-instance v2, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string v3, "The ArrayList elements should all be the same type, but ArrayList with key "

    #@57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v2

    #@5f
    const-string v3, " contains items of type "

    #@61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v2

    #@65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@68
    move-result-object v0

    #@69
    const-string v2, " and "

    #@6b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v0

    #@6f
    iget v2, v4, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@74
    move-result-object v0

    #@75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v0

    #@79
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7c
    throw v1

    #@7d
    :cond_7d
    return v0
.end method

.method static a(Ljava/util/List;Lcom/google/android/gms/wearable/Asset;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/Asset;",
            ">;",
            "Lcom/google/android/gms/wearable/Asset;",
            ")I"
        }
    .end annotation

    #@0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@6
    move-result v0

    #@7
    add-int/lit8 v0, v0, -0x1

    #@9
    return v0
.end method

.method public static a(Lcom/google/android/gms/wearable/DataMap;)Lcom/google/android/gms/internal/lv$a;
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/internal/lw;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/lw;-><init>()V

    #@5
    new-instance v1, Ljava/util/ArrayList;

    #@7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@a
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/lv;->a(Lcom/google/android/gms/wearable/DataMap;Ljava/util/List;)[Lcom/google/android/gms/internal/lw$a;

    #@d
    move-result-object v2

    #@e
    iput-object v2, v0, Lcom/google/android/gms/internal/lw;->amr:[Lcom/google/android/gms/internal/lw$a;

    #@10
    new-instance v2, Lcom/google/android/gms/internal/lv$a;

    #@12
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/lv$a;-><init>(Lcom/google/android/gms/internal/lw;Ljava/util/List;)V

    #@15
    return-object v2
.end method

.method private static a(Ljava/util/List;Ljava/lang/Object;)Lcom/google/android/gms/internal/lw$a$a;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/Asset;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/lw$a$a;"
        }
    .end annotation

    #@0
    const/16 v12, 0x9

    #@2
    const/4 v11, 0x6

    #@3
    const/4 v10, 0x2

    #@4
    const/4 v0, 0x0

    #@5
    const/16 v4, 0xe

    #@7
    new-instance v5, Lcom/google/android/gms/internal/lw$a$a;

    #@9
    invoke-direct {v5}, Lcom/google/android/gms/internal/lw$a$a;-><init>()V

    #@c
    if-nez p1, :cond_11

    #@e
    iput v4, v5, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@10
    :goto_10
    return-object v5

    #@11
    :cond_11
    new-instance v1, Lcom/google/android/gms/internal/lw$a$a$a;

    #@13
    invoke-direct {v1}, Lcom/google/android/gms/internal/lw$a$a$a;-><init>()V

    #@16
    iput-object v1, v5, Lcom/google/android/gms/internal/lw$a$a;->amv:Lcom/google/android/gms/internal/lw$a$a$a;

    #@18
    instance-of v1, p1, Ljava/lang/String;

    #@1a
    if-eqz v1, :cond_25

    #@1c
    iput v10, v5, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@1e
    iget-object v0, v5, Lcom/google/android/gms/internal/lw$a$a;->amv:Lcom/google/android/gms/internal/lw$a$a$a;

    #@20
    check-cast p1, Ljava/lang/String;

    #@22
    iput-object p1, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amx:Ljava/lang/String;

    #@24
    goto :goto_10

    #@25
    :cond_25
    instance-of v1, p1, Ljava/lang/Integer;

    #@27
    if-eqz v1, :cond_36

    #@29
    iput v11, v5, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@2b
    iget-object v0, v5, Lcom/google/android/gms/internal/lw$a$a;->amv:Lcom/google/android/gms/internal/lw$a$a$a;

    #@2d
    check-cast p1, Ljava/lang/Integer;

    #@2f
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@32
    move-result v1

    #@33
    iput v1, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amB:I

    #@35
    goto :goto_10

    #@36
    :cond_36
    instance-of v1, p1, Ljava/lang/Long;

    #@38
    if-eqz v1, :cond_48

    #@3a
    const/4 v0, 0x5

    #@3b
    iput v0, v5, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@3d
    iget-object v0, v5, Lcom/google/android/gms/internal/lw$a$a;->amv:Lcom/google/android/gms/internal/lw$a$a$a;

    #@3f
    check-cast p1, Ljava/lang/Long;

    #@41
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    #@44
    move-result-wide v2

    #@45
    iput-wide v2, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amA:J

    #@47
    goto :goto_10

    #@48
    :cond_48
    instance-of v1, p1, Ljava/lang/Double;

    #@4a
    if-eqz v1, :cond_5a

    #@4c
    const/4 v0, 0x3

    #@4d
    iput v0, v5, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@4f
    iget-object v0, v5, Lcom/google/android/gms/internal/lw$a$a;->amv:Lcom/google/android/gms/internal/lw$a$a$a;

    #@51
    check-cast p1, Ljava/lang/Double;

    #@53
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    #@56
    move-result-wide v2

    #@57
    iput-wide v2, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amy:D

    #@59
    goto :goto_10

    #@5a
    :cond_5a
    instance-of v1, p1, Ljava/lang/Float;

    #@5c
    if-eqz v1, :cond_6c

    #@5e
    const/4 v0, 0x4

    #@5f
    iput v0, v5, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@61
    iget-object v0, v5, Lcom/google/android/gms/internal/lw$a$a;->amv:Lcom/google/android/gms/internal/lw$a$a$a;

    #@63
    check-cast p1, Ljava/lang/Float;

    #@65
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    #@68
    move-result v1

    #@69
    iput v1, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amz:F

    #@6b
    goto :goto_10

    #@6c
    :cond_6c
    instance-of v1, p1, Ljava/lang/Boolean;

    #@6e
    if-eqz v1, :cond_7f

    #@70
    const/16 v0, 0x8

    #@72
    iput v0, v5, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@74
    iget-object v0, v5, Lcom/google/android/gms/internal/lw$a$a;->amv:Lcom/google/android/gms/internal/lw$a$a$a;

    #@76
    check-cast p1, Ljava/lang/Boolean;

    #@78
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@7b
    move-result v1

    #@7c
    iput-boolean v1, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amD:Z

    #@7e
    goto :goto_10

    #@7f
    :cond_7f
    instance-of v1, p1, Ljava/lang/Byte;

    #@81
    if-eqz v1, :cond_91

    #@83
    const/4 v0, 0x7

    #@84
    iput v0, v5, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@86
    iget-object v0, v5, Lcom/google/android/gms/internal/lw$a$a;->amv:Lcom/google/android/gms/internal/lw$a$a$a;

    #@88
    check-cast p1, Ljava/lang/Byte;

    #@8a
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    #@8d
    move-result v1

    #@8e
    iput v1, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amC:I

    #@90
    goto :goto_10

    #@91
    :cond_91
    instance-of v1, p1, [B

    #@93
    if-eqz v1, :cond_a0

    #@95
    const/4 v0, 0x1

    #@96
    iput v0, v5, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@98
    iget-object v0, v5, Lcom/google/android/gms/internal/lw$a$a;->amv:Lcom/google/android/gms/internal/lw$a$a$a;

    #@9a
    check-cast p1, [B

    #@9c
    iput-object p1, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amw:[B

    #@9e
    goto/16 :goto_10

    #@a0
    :cond_a0
    instance-of v1, p1, [Ljava/lang/String;

    #@a2
    if-eqz v1, :cond_b0

    #@a4
    const/16 v0, 0xb

    #@a6
    iput v0, v5, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@a8
    iget-object v0, v5, Lcom/google/android/gms/internal/lw$a$a;->amv:Lcom/google/android/gms/internal/lw$a$a$a;

    #@aa
    check-cast p1, [Ljava/lang/String;

    #@ac
    iput-object p1, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amG:[Ljava/lang/String;

    #@ae
    goto/16 :goto_10

    #@b0
    :cond_b0
    instance-of v1, p1, [J

    #@b2
    if-eqz v1, :cond_c0

    #@b4
    const/16 v0, 0xc

    #@b6
    iput v0, v5, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@b8
    iget-object v0, v5, Lcom/google/android/gms/internal/lw$a$a;->amv:Lcom/google/android/gms/internal/lw$a$a$a;

    #@ba
    check-cast p1, [J

    #@bc
    iput-object p1, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amH:[J

    #@be
    goto/16 :goto_10

    #@c0
    :cond_c0
    instance-of v1, p1, [F

    #@c2
    if-eqz v1, :cond_d0

    #@c4
    const/16 v0, 0xf

    #@c6
    iput v0, v5, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@c8
    iget-object v0, v5, Lcom/google/android/gms/internal/lw$a$a;->amv:Lcom/google/android/gms/internal/lw$a$a$a;

    #@ca
    check-cast p1, [F

    #@cc
    iput-object p1, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amI:[F

    #@ce
    goto/16 :goto_10

    #@d0
    :cond_d0
    instance-of v1, p1, Lcom/google/android/gms/wearable/Asset;

    #@d2
    if-eqz v1, :cond_e5

    #@d4
    const/16 v0, 0xd

    #@d6
    iput v0, v5, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@d8
    iget-object v0, v5, Lcom/google/android/gms/internal/lw$a$a;->amv:Lcom/google/android/gms/internal/lw$a$a$a;

    #@da
    check-cast p1, Lcom/google/android/gms/wearable/Asset;

    #@dc
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/lv;->a(Ljava/util/List;Lcom/google/android/gms/wearable/Asset;)I

    #@df
    move-result v1

    #@e0
    int-to-long v2, v1

    #@e1
    iput-wide v2, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amJ:J

    #@e3
    goto/16 :goto_10

    #@e5
    :cond_e5
    instance-of v1, p1, Lcom/google/android/gms/wearable/DataMap;

    #@e7
    if-eqz v1, :cond_129

    #@e9
    iput v12, v5, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@eb
    check-cast p1, Lcom/google/android/gms/wearable/DataMap;

    #@ed
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/DataMap;->keySet()Ljava/util/Set;

    #@f0
    move-result-object v1

    #@f1
    invoke-interface {v1}, Ljava/util/Set;->size()I

    #@f4
    move-result v2

    #@f5
    new-array v2, v2, [Lcom/google/android/gms/internal/lw$a;

    #@f7
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@fa
    move-result-object v3

    #@fb
    move v1, v0

    #@fc
    :goto_fc
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@ff
    move-result v0

    #@100
    if-eqz v0, :cond_123

    #@102
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@105
    move-result-object v0

    #@106
    check-cast v0, Ljava/lang/String;

    #@108
    new-instance v4, Lcom/google/android/gms/internal/lw$a;

    #@10a
    invoke-direct {v4}, Lcom/google/android/gms/internal/lw$a;-><init>()V

    #@10d
    aput-object v4, v2, v1

    #@10f
    aget-object v4, v2, v1

    #@111
    iput-object v0, v4, Lcom/google/android/gms/internal/lw$a;->name:Ljava/lang/String;

    #@113
    aget-object v4, v2, v1

    #@115
    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/DataMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@118
    move-result-object v0

    #@119
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/lv;->a(Ljava/util/List;Ljava/lang/Object;)Lcom/google/android/gms/internal/lw$a$a;

    #@11c
    move-result-object v0

    #@11d
    iput-object v0, v4, Lcom/google/android/gms/internal/lw$a;->amt:Lcom/google/android/gms/internal/lw$a$a;

    #@11f
    add-int/lit8 v0, v1, 0x1

    #@121
    move v1, v0

    #@122
    goto :goto_fc

    #@123
    :cond_123
    iget-object v0, v5, Lcom/google/android/gms/internal/lw$a$a;->amv:Lcom/google/android/gms/internal/lw$a$a$a;

    #@125
    iput-object v2, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amE:[Lcom/google/android/gms/internal/lw$a;

    #@127
    goto/16 :goto_10

    #@129
    :cond_129
    instance-of v1, p1, Ljava/util/ArrayList;

    #@12b
    if-eqz v1, :cond_1bb

    #@12d
    const/16 v1, 0xa

    #@12f
    iput v1, v5, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@131
    check-cast p1, Ljava/util/ArrayList;

    #@133
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@136
    move-result v1

    #@137
    new-array v6, v1, [Lcom/google/android/gms/internal/lw$a$a;

    #@139
    const/4 v2, 0x0

    #@13a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@13d
    move-result v7

    #@13e
    move v3, v0

    #@13f
    move v0, v4

    #@140
    :goto_140
    if-ge v3, v7, :cond_1b5

    #@142
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@145
    move-result-object v1

    #@146
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/lv;->a(Ljava/util/List;Ljava/lang/Object;)Lcom/google/android/gms/internal/lw$a$a;

    #@149
    move-result-object v8

    #@14a
    iget v9, v8, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@14c
    if-eq v9, v4, :cond_177

    #@14e
    iget v9, v8, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@150
    if-eq v9, v10, :cond_177

    #@152
    iget v9, v8, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@154
    if-eq v9, v11, :cond_177

    #@156
    iget v9, v8, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@158
    if-eq v9, v12, :cond_177

    #@15a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15c
    new-instance v2, Ljava/lang/StringBuilder;

    #@15e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@161
    const-string v3, "The only ArrayList element types supported by DataBundleUtil are String, Integer, Bundle, and null, but this ArrayList contains a "

    #@163
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@166
    move-result-object v2

    #@167
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@16a
    move-result-object v1

    #@16b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v1

    #@16f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@172
    move-result-object v1

    #@173
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@176
    throw v0

    #@177
    :cond_177
    if-ne v0, v4, :cond_186

    #@179
    iget v9, v8, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@17b
    if-eq v9, v4, :cond_186

    #@17d
    iget v0, v8, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@17f
    :goto_17f
    aput-object v8, v6, v3

    #@181
    add-int/lit8 v2, v3, 0x1

    #@183
    move v3, v2

    #@184
    move-object v2, v1

    #@185
    goto :goto_140

    #@186
    :cond_186
    iget v9, v8, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@188
    if-eq v9, v0, :cond_1dc

    #@18a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18c
    new-instance v3, Ljava/lang/StringBuilder;

    #@18e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@191
    const-string v4, "ArrayList elements must all be of the sameclass, but this one contains a "

    #@193
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@196
    move-result-object v3

    #@197
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@19a
    move-result-object v2

    #@19b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v2

    #@19f
    const-string v3, " and a "

    #@1a1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v2

    #@1a5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1a8
    move-result-object v1

    #@1a9
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1ac
    move-result-object v1

    #@1ad
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b0
    move-result-object v1

    #@1b1
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b4
    throw v0

    #@1b5
    :cond_1b5
    iget-object v0, v5, Lcom/google/android/gms/internal/lw$a$a;->amv:Lcom/google/android/gms/internal/lw$a$a$a;

    #@1b7
    iput-object v6, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amF:[Lcom/google/android/gms/internal/lw$a$a;

    #@1b9
    goto/16 :goto_10

    #@1bb
    :cond_1bb
    new-instance v0, Ljava/lang/RuntimeException;

    #@1bd
    new-instance v1, Ljava/lang/StringBuilder;

    #@1bf
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c2
    const-string v2, "newFieldValueFromValue: unexpected value "

    #@1c4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c7
    move-result-object v1

    #@1c8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1cb
    move-result-object v2

    #@1cc
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@1cf
    move-result-object v2

    #@1d0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d3
    move-result-object v1

    #@1d4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d7
    move-result-object v1

    #@1d8
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1db
    throw v0

    #@1dc
    :cond_1dc
    move-object v1, v2

    #@1dd
    goto :goto_17f
.end method

.method public static a(Lcom/google/android/gms/internal/lv$a;)Lcom/google/android/gms/wearable/DataMap;
    .registers 8

    #@0
    new-instance v1, Lcom/google/android/gms/wearable/DataMap;

    #@2
    invoke-direct {v1}, Lcom/google/android/gms/wearable/DataMap;-><init>()V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/internal/lv$a;->amp:Lcom/google/android/gms/internal/lw;

    #@7
    iget-object v2, v0, Lcom/google/android/gms/internal/lw;->amr:[Lcom/google/android/gms/internal/lw$a;

    #@9
    array-length v3, v2

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    if-ge v0, v3, :cond_1b

    #@d
    aget-object v4, v2, v0

    #@f
    iget-object v5, p0, Lcom/google/android/gms/internal/lv$a;->amq:Ljava/util/List;

    #@11
    iget-object v6, v4, Lcom/google/android/gms/internal/lw$a;->name:Ljava/lang/String;

    #@13
    iget-object v4, v4, Lcom/google/android/gms/internal/lw$a;->amt:Lcom/google/android/gms/internal/lw$a$a;

    #@15
    invoke-static {v5, v1, v6, v4}, Lcom/google/android/gms/internal/lv;->a(Ljava/util/List;Lcom/google/android/gms/wearable/DataMap;Ljava/lang/String;Lcom/google/android/gms/internal/lw$a$a;)V

    #@18
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_b

    #@1b
    :cond_1b
    return-object v1
.end method

.method private static a(Ljava/util/List;Lcom/google/android/gms/internal/lw$a$a$a;I)Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/Asset;",
            ">;",
            "Lcom/google/android/gms/internal/lw$a$a$a;",
            "I)",
            "Ljava/util/ArrayList;"
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    new-instance v3, Ljava/util/ArrayList;

    #@3
    iget-object v0, p1, Lcom/google/android/gms/internal/lw$a$a$a;->amF:[Lcom/google/android/gms/internal/lw$a$a;

    #@5
    array-length v0, v0

    #@6
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    iget-object v4, p1, Lcom/google/android/gms/internal/lw$a$a$a;->amF:[Lcom/google/android/gms/internal/lw$a$a;

    #@b
    array-length v5, v4

    #@c
    move v2, v1

    #@d
    :goto_d
    if-ge v2, v5, :cond_73

    #@f
    aget-object v0, v4, v2

    #@11
    iget v6, v0, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@13
    const/16 v7, 0xe

    #@15
    if-ne v6, v7, :cond_1f

    #@17
    const/4 v0, 0x0

    #@18
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1b
    :goto_1b
    add-int/lit8 v0, v2, 0x1

    #@1d
    move v2, v0

    #@1e
    goto :goto_d

    #@1f
    :cond_1f
    const/16 v6, 0x9

    #@21
    if-ne p2, v6, :cond_40

    #@23
    new-instance v6, Lcom/google/android/gms/wearable/DataMap;

    #@25
    invoke-direct {v6}, Lcom/google/android/gms/wearable/DataMap;-><init>()V

    #@28
    iget-object v0, v0, Lcom/google/android/gms/internal/lw$a$a;->amv:Lcom/google/android/gms/internal/lw$a$a$a;

    #@2a
    iget-object v7, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amE:[Lcom/google/android/gms/internal/lw$a;

    #@2c
    array-length v8, v7

    #@2d
    move v0, v1

    #@2e
    :goto_2e
    if-ge v0, v8, :cond_3c

    #@30
    aget-object v9, v7, v0

    #@32
    iget-object v10, v9, Lcom/google/android/gms/internal/lw$a;->name:Ljava/lang/String;

    #@34
    iget-object v9, v9, Lcom/google/android/gms/internal/lw$a;->amt:Lcom/google/android/gms/internal/lw$a$a;

    #@36
    invoke-static {p0, v6, v10, v9}, Lcom/google/android/gms/internal/lv;->a(Ljava/util/List;Lcom/google/android/gms/wearable/DataMap;Ljava/lang/String;Lcom/google/android/gms/internal/lw$a$a;)V

    #@39
    add-int/lit8 v0, v0, 0x1

    #@3b
    goto :goto_2e

    #@3c
    :cond_3c
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3f
    goto :goto_1b

    #@40
    :cond_40
    const/4 v6, 0x2

    #@41
    if-ne p2, v6, :cond_4b

    #@43
    iget-object v0, v0, Lcom/google/android/gms/internal/lw$a$a;->amv:Lcom/google/android/gms/internal/lw$a$a$a;

    #@45
    iget-object v0, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amx:Ljava/lang/String;

    #@47
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4a
    goto :goto_1b

    #@4b
    :cond_4b
    const/4 v6, 0x6

    #@4c
    if-ne p2, v6, :cond_5a

    #@4e
    iget-object v0, v0, Lcom/google/android/gms/internal/lw$a$a;->amv:Lcom/google/android/gms/internal/lw$a$a$a;

    #@50
    iget v0, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amB:I

    #@52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@55
    move-result-object v0

    #@56
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@59
    goto :goto_1b

    #@5a
    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5c
    new-instance v1, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string v2, "Unexpected typeOfArrayList: "

    #@63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v1

    #@6f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@72
    throw v0

    #@73
    :cond_73
    return-object v3
.end method

.method private static a(Ljava/util/List;Lcom/google/android/gms/wearable/DataMap;Ljava/lang/String;Lcom/google/android/gms/internal/lw$a$a;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/Asset;",
            ">;",
            "Lcom/google/android/gms/wearable/DataMap;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/lw$a$a;",
            ")V"
        }
    .end annotation

    #@0
    const/16 v6, 0xe

    #@2
    const/16 v5, 0x9

    #@4
    const/4 v4, 0x6

    #@5
    const/4 v3, 0x2

    #@6
    iget v0, p3, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@8
    if-ne v0, v6, :cond_f

    #@a
    const/4 v0, 0x0

    #@b
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    :goto_e
    return-void

    #@f
    :cond_f
    iget-object v1, p3, Lcom/google/android/gms/internal/lw$a$a;->amv:Lcom/google/android/gms/internal/lw$a$a$a;

    #@11
    const/4 v2, 0x1

    #@12
    if-ne v0, v2, :cond_1a

    #@14
    iget-object v0, v1, Lcom/google/android/gms/internal/lw$a$a$a;->amw:[B

    #@16
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/DataMap;->putByteArray(Ljava/lang/String;[B)V

    #@19
    goto :goto_e

    #@1a
    :cond_1a
    const/16 v2, 0xb

    #@1c
    if-ne v0, v2, :cond_24

    #@1e
    iget-object v0, v1, Lcom/google/android/gms/internal/lw$a$a$a;->amG:[Ljava/lang/String;

    #@20
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/DataMap;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@23
    goto :goto_e

    #@24
    :cond_24
    const/16 v2, 0xc

    #@26
    if-ne v0, v2, :cond_2e

    #@28
    iget-object v0, v1, Lcom/google/android/gms/internal/lw$a$a$a;->amH:[J

    #@2a
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/DataMap;->putLongArray(Ljava/lang/String;[J)V

    #@2d
    goto :goto_e

    #@2e
    :cond_2e
    const/16 v2, 0xf

    #@30
    if-ne v0, v2, :cond_38

    #@32
    iget-object v0, v1, Lcom/google/android/gms/internal/lw$a$a$a;->amI:[F

    #@34
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/DataMap;->putFloatArray(Ljava/lang/String;[F)V

    #@37
    goto :goto_e

    #@38
    :cond_38
    if-ne v0, v3, :cond_40

    #@3a
    iget-object v0, v1, Lcom/google/android/gms/internal/lw$a$a$a;->amx:Ljava/lang/String;

    #@3c
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@3f
    goto :goto_e

    #@40
    :cond_40
    const/4 v2, 0x3

    #@41
    if-ne v0, v2, :cond_49

    #@43
    iget-wide v0, v1, Lcom/google/android/gms/internal/lw$a$a$a;->amy:D

    #@45
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/wearable/DataMap;->putDouble(Ljava/lang/String;D)V

    #@48
    goto :goto_e

    #@49
    :cond_49
    const/4 v2, 0x4

    #@4a
    if-ne v0, v2, :cond_52

    #@4c
    iget v0, v1, Lcom/google/android/gms/internal/lw$a$a$a;->amz:F

    #@4e
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/DataMap;->putFloat(Ljava/lang/String;F)V

    #@51
    goto :goto_e

    #@52
    :cond_52
    const/4 v2, 0x5

    #@53
    if-ne v0, v2, :cond_5b

    #@55
    iget-wide v0, v1, Lcom/google/android/gms/internal/lw$a$a$a;->amA:J

    #@57
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/wearable/DataMap;->putLong(Ljava/lang/String;J)V

    #@5a
    goto :goto_e

    #@5b
    :cond_5b
    if-ne v0, v4, :cond_63

    #@5d
    iget v0, v1, Lcom/google/android/gms/internal/lw$a$a$a;->amB:I

    #@5f
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/DataMap;->putInt(Ljava/lang/String;I)V

    #@62
    goto :goto_e

    #@63
    :cond_63
    const/4 v2, 0x7

    #@64
    if-ne v0, v2, :cond_6d

    #@66
    iget v0, v1, Lcom/google/android/gms/internal/lw$a$a$a;->amC:I

    #@68
    int-to-byte v0, v0

    #@69
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/DataMap;->putByte(Ljava/lang/String;B)V

    #@6c
    goto :goto_e

    #@6d
    :cond_6d
    const/16 v2, 0x8

    #@6f
    if-ne v0, v2, :cond_77

    #@71
    iget-boolean v0, v1, Lcom/google/android/gms/internal/lw$a$a$a;->amD:Z

    #@73
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/DataMap;->putBoolean(Ljava/lang/String;Z)V

    #@76
    goto :goto_e

    #@77
    :cond_77
    const/16 v2, 0xd

    #@79
    if-ne v0, v2, :cond_a4

    #@7b
    if-nez p0, :cond_96

    #@7d
    new-instance v0, Ljava/lang/RuntimeException;

    #@7f
    new-instance v1, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string v2, "populateBundle: unexpected type for: "

    #@86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v1

    #@8a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v1

    #@8e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v1

    #@92
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@95
    throw v0

    #@96
    :cond_96
    iget-wide v0, v1, Lcom/google/android/gms/internal/lw$a$a$a;->amJ:J

    #@98
    long-to-int v0, v0

    #@99
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@9c
    move-result-object v0

    #@9d
    check-cast v0, Lcom/google/android/gms/wearable/Asset;

    #@9f
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/DataMap;->putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)V

    #@a2
    goto/16 :goto_e

    #@a4
    :cond_a4
    if-ne v0, v5, :cond_c2

    #@a6
    new-instance v2, Lcom/google/android/gms/wearable/DataMap;

    #@a8
    invoke-direct {v2}, Lcom/google/android/gms/wearable/DataMap;-><init>()V

    #@ab
    iget-object v1, v1, Lcom/google/android/gms/internal/lw$a$a$a;->amE:[Lcom/google/android/gms/internal/lw$a;

    #@ad
    array-length v3, v1

    #@ae
    const/4 v0, 0x0

    #@af
    :goto_af
    if-ge v0, v3, :cond_bd

    #@b1
    aget-object v4, v1, v0

    #@b3
    iget-object v5, v4, Lcom/google/android/gms/internal/lw$a;->name:Ljava/lang/String;

    #@b5
    iget-object v4, v4, Lcom/google/android/gms/internal/lw$a;->amt:Lcom/google/android/gms/internal/lw$a$a;

    #@b7
    invoke-static {p0, v2, v5, v4}, Lcom/google/android/gms/internal/lv;->a(Ljava/util/List;Lcom/google/android/gms/wearable/DataMap;Ljava/lang/String;Lcom/google/android/gms/internal/lw$a$a;)V

    #@ba
    add-int/lit8 v0, v0, 0x1

    #@bc
    goto :goto_af

    #@bd
    :cond_bd
    invoke-virtual {p1, p2, v2}, Lcom/google/android/gms/wearable/DataMap;->putDataMap(Ljava/lang/String;Lcom/google/android/gms/wearable/DataMap;)V

    #@c0
    goto/16 :goto_e

    #@c2
    :cond_c2
    const/16 v2, 0xa

    #@c4
    if-ne v0, v2, :cond_105

    #@c6
    iget-object v0, v1, Lcom/google/android/gms/internal/lw$a$a$a;->amF:[Lcom/google/android/gms/internal/lw$a$a;

    #@c8
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/lv;->a(Ljava/lang/String;[Lcom/google/android/gms/internal/lw$a$a;)I

    #@cb
    move-result v0

    #@cc
    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/lv;->a(Ljava/util/List;Lcom/google/android/gms/internal/lw$a$a$a;I)Ljava/util/ArrayList;

    #@cf
    move-result-object v1

    #@d0
    if-ne v0, v6, :cond_d7

    #@d2
    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/wearable/DataMap;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@d5
    goto/16 :goto_e

    #@d7
    :cond_d7
    if-ne v0, v5, :cond_de

    #@d9
    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/wearable/DataMap;->putDataMapArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@dc
    goto/16 :goto_e

    #@de
    :cond_de
    if-ne v0, v3, :cond_e5

    #@e0
    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/wearable/DataMap;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@e3
    goto/16 :goto_e

    #@e5
    :cond_e5
    if-ne v0, v4, :cond_ec

    #@e7
    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/wearable/DataMap;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@ea
    goto/16 :goto_e

    #@ec
    :cond_ec
    new-instance v1, Ljava/lang/IllegalStateException;

    #@ee
    new-instance v2, Ljava/lang/StringBuilder;

    #@f0
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f3
    const-string v3, "Unexpected typeOfArrayList: "

    #@f5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v2

    #@f9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v0

    #@fd
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@100
    move-result-object v0

    #@101
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@104
    throw v1

    #@105
    :cond_105
    new-instance v1, Ljava/lang/RuntimeException;

    #@107
    new-instance v2, Ljava/lang/StringBuilder;

    #@109
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10c
    const-string v3, "populateBundle: unexpected type "

    #@10e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v2

    #@112
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@115
    move-result-object v0

    #@116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@119
    move-result-object v0

    #@11a
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11d
    throw v1
.end method

.method private static a(Lcom/google/android/gms/wearable/DataMap;Ljava/util/List;)[Lcom/google/android/gms/internal/lw$a;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/wearable/DataMap;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/Asset;",
            ">;)[",
            "Lcom/google/android/gms/internal/lw$a;"
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/DataMap;->keySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@7
    move-result v1

    #@8
    new-array v2, v1, [Lcom/google/android/gms/internal/lw$a;

    #@a
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v3

    #@e
    const/4 v0, 0x0

    #@f
    move v1, v0

    #@10
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_37

    #@16
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Ljava/lang/String;

    #@1c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/DataMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@1f
    move-result-object v4

    #@20
    new-instance v5, Lcom/google/android/gms/internal/lw$a;

    #@22
    invoke-direct {v5}, Lcom/google/android/gms/internal/lw$a;-><init>()V

    #@25
    aput-object v5, v2, v1

    #@27
    aget-object v5, v2, v1

    #@29
    iput-object v0, v5, Lcom/google/android/gms/internal/lw$a;->name:Ljava/lang/String;

    #@2b
    aget-object v0, v2, v1

    #@2d
    invoke-static {p1, v4}, Lcom/google/android/gms/internal/lv;->a(Ljava/util/List;Ljava/lang/Object;)Lcom/google/android/gms/internal/lw$a$a;

    #@30
    move-result-object v4

    #@31
    iput-object v4, v0, Lcom/google/android/gms/internal/lw$a;->amt:Lcom/google/android/gms/internal/lw$a$a;

    #@33
    add-int/lit8 v0, v1, 0x1

    #@35
    move v1, v0

    #@36
    goto :goto_10

    #@37
    :cond_37
    return-object v2
.end method
