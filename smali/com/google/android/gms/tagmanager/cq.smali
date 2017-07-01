.class Lcom/google/android/gms/tagmanager/cq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/cq$a;,
        Lcom/google/android/gms/tagmanager/cq$b;,
        Lcom/google/android/gms/tagmanager/cq$c;,
        Lcom/google/android/gms/tagmanager/cq$d;,
        Lcom/google/android/gms/tagmanager/cq$e;,
        Lcom/google/android/gms/tagmanager/cq$f;,
        Lcom/google/android/gms/tagmanager/cq$g;
    }
.end annotation


# direct methods
.method private static a(ILcom/google/android/gms/internal/c$f;[Lcom/google/android/gms/internal/d$a;Ljava/util/Set;)Lcom/google/android/gms/internal/d$a;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/internal/c$f;",
            "[",
            "Lcom/google/android/gms/internal/d$a;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/gms/internal/d$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/tagmanager/cq$g;
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4
    move-result-object v0

    #@5
    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_37

    #@b
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string v2, "Value cycle detected.  Current value reference: "

    #@12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    const-string v2, "."

    #@1c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    const-string v2, "  Previous value references: "

    #@22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    const-string v2, "."

    #@2c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/cq;->cd(Ljava/lang/String;)V

    #@37
    :cond_37
    iget-object v0, p1, Lcom/google/android/gms/internal/c$f;->eX:[Lcom/google/android/gms/internal/d$a;

    #@39
    const-string v2, "values"

    #@3b
    invoke-static {v0, p0, v2}, Lcom/google/android/gms/tagmanager/cq;->a([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@41
    aget-object v2, p2, p0

    #@43
    if-eqz v2, :cond_48

    #@45
    aget-object v0, p2, p0

    #@47
    :goto_47
    return-object v0

    #@48
    :cond_48
    const/4 v2, 0x0

    #@49
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c
    move-result-object v3

    #@4d
    invoke-interface {p3, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@50
    iget v3, v0, Lcom/google/android/gms/internal/d$a;->type:I

    #@52
    packed-switch v3, :pswitch_data_156

    #@55
    move-object v1, v2

    #@56
    :goto_56
    if-nez v1, :cond_6e

    #@58
    new-instance v2, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string v3, "Invalid value: "

    #@5f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v2

    #@63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v0

    #@6b
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/cq;->cd(Ljava/lang/String;)V

    #@6e
    :cond_6e
    aput-object v1, p2, p0

    #@70
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@73
    move-result-object v0

    #@74
    invoke-interface {p3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@77
    move-object v0, v1

    #@78
    goto :goto_47

    #@79
    :pswitch_79
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/cq;->h(Lcom/google/android/gms/internal/d$a;)Lcom/google/android/gms/internal/c$h;

    #@7c
    move-result-object v2

    #@7d
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/cq;->g(Lcom/google/android/gms/internal/d$a;)Lcom/google/android/gms/internal/d$a;

    #@80
    move-result-object v3

    #@81
    iget-object v4, v2, Lcom/google/android/gms/internal/c$h;->fz:[I

    #@83
    array-length v4, v4

    #@84
    new-array v4, v4, [Lcom/google/android/gms/internal/d$a;

    #@86
    iput-object v4, v3, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    #@88
    iget-object v4, v2, Lcom/google/android/gms/internal/c$h;->fz:[I

    #@8a
    array-length v5, v4

    #@8b
    move v2, v1

    #@8c
    :goto_8c
    if-ge v1, v5, :cond_14f

    #@8e
    aget v6, v4, v1

    #@90
    iget-object v7, v3, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    #@92
    invoke-static {v6, p1, p2, p3}, Lcom/google/android/gms/tagmanager/cq;->a(ILcom/google/android/gms/internal/c$f;[Lcom/google/android/gms/internal/d$a;Ljava/util/Set;)Lcom/google/android/gms/internal/d$a;

    #@95
    move-result-object v6

    #@96
    aput-object v6, v7, v2

    #@98
    add-int/lit8 v1, v1, 0x1

    #@9a
    add-int/lit8 v2, v2, 0x1

    #@9c
    goto :goto_8c

    #@9d
    :pswitch_9d
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/cq;->g(Lcom/google/android/gms/internal/d$a;)Lcom/google/android/gms/internal/d$a;

    #@a0
    move-result-object v4

    #@a1
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/cq;->h(Lcom/google/android/gms/internal/d$a;)Lcom/google/android/gms/internal/c$h;

    #@a4
    move-result-object v5

    #@a5
    iget-object v2, v5, Lcom/google/android/gms/internal/c$h;->fA:[I

    #@a7
    array-length v2, v2

    #@a8
    iget-object v3, v5, Lcom/google/android/gms/internal/c$h;->fB:[I

    #@aa
    array-length v3, v3

    #@ab
    if-eq v2, v3, :cond_d9

    #@ad
    new-instance v2, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    const-string v3, "Uneven map keys ("

    #@b4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v2

    #@b8
    iget-object v3, v5, Lcom/google/android/gms/internal/c$h;->fA:[I

    #@ba
    array-length v3, v3

    #@bb
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@be
    move-result-object v2

    #@bf
    const-string v3, ") and map values ("

    #@c1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v2

    #@c5
    iget-object v3, v5, Lcom/google/android/gms/internal/c$h;->fB:[I

    #@c7
    array-length v3, v3

    #@c8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v2

    #@cc
    const-string v3, ")"

    #@ce
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v2

    #@d2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d5
    move-result-object v2

    #@d6
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/cq;->cd(Ljava/lang/String;)V

    #@d9
    :cond_d9
    iget-object v2, v5, Lcom/google/android/gms/internal/c$h;->fA:[I

    #@db
    array-length v2, v2

    #@dc
    new-array v2, v2, [Lcom/google/android/gms/internal/d$a;

    #@de
    iput-object v2, v4, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    #@e0
    iget-object v2, v5, Lcom/google/android/gms/internal/c$h;->fA:[I

    #@e2
    array-length v2, v2

    #@e3
    new-array v2, v2, [Lcom/google/android/gms/internal/d$a;

    #@e5
    iput-object v2, v4, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    #@e7
    iget-object v6, v5, Lcom/google/android/gms/internal/c$h;->fA:[I

    #@e9
    array-length v7, v6

    #@ea
    move v2, v1

    #@eb
    move v3, v1

    #@ec
    :goto_ec
    if-ge v2, v7, :cond_fd

    #@ee
    aget v8, v6, v2

    #@f0
    iget-object v9, v4, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    #@f2
    invoke-static {v8, p1, p2, p3}, Lcom/google/android/gms/tagmanager/cq;->a(ILcom/google/android/gms/internal/c$f;[Lcom/google/android/gms/internal/d$a;Ljava/util/Set;)Lcom/google/android/gms/internal/d$a;

    #@f5
    move-result-object v8

    #@f6
    aput-object v8, v9, v3

    #@f8
    add-int/lit8 v2, v2, 0x1

    #@fa
    add-int/lit8 v3, v3, 0x1

    #@fc
    goto :goto_ec

    #@fd
    :cond_fd
    iget-object v3, v5, Lcom/google/android/gms/internal/c$h;->fB:[I

    #@ff
    array-length v5, v3

    #@100
    move v2, v1

    #@101
    :goto_101
    if-ge v1, v5, :cond_152

    #@103
    aget v6, v3, v1

    #@105
    iget-object v7, v4, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    #@107
    invoke-static {v6, p1, p2, p3}, Lcom/google/android/gms/tagmanager/cq;->a(ILcom/google/android/gms/internal/c$f;[Lcom/google/android/gms/internal/d$a;Ljava/util/Set;)Lcom/google/android/gms/internal/d$a;

    #@10a
    move-result-object v6

    #@10b
    aput-object v6, v7, v2

    #@10d
    add-int/lit8 v1, v1, 0x1

    #@10f
    add-int/lit8 v2, v2, 0x1

    #@111
    goto :goto_101

    #@112
    :pswitch_112
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/cq;->g(Lcom/google/android/gms/internal/d$a;)Lcom/google/android/gms/internal/d$a;

    #@115
    move-result-object v1

    #@116
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/cq;->h(Lcom/google/android/gms/internal/d$a;)Lcom/google/android/gms/internal/c$h;

    #@119
    move-result-object v2

    #@11a
    iget v2, v2, Lcom/google/android/gms/internal/c$h;->fE:I

    #@11c
    invoke-static {v2, p1, p2, p3}, Lcom/google/android/gms/tagmanager/cq;->a(ILcom/google/android/gms/internal/c$f;[Lcom/google/android/gms/internal/d$a;Ljava/util/Set;)Lcom/google/android/gms/internal/d$a;

    #@11f
    move-result-object v2

    #@120
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/dh;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;

    #@123
    move-result-object v2

    #@124
    iput-object v2, v1, Lcom/google/android/gms/internal/d$a;->fR:Ljava/lang/String;

    #@126
    goto/16 :goto_56

    #@128
    :pswitch_128
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/cq;->g(Lcom/google/android/gms/internal/d$a;)Lcom/google/android/gms/internal/d$a;

    #@12b
    move-result-object v3

    #@12c
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/cq;->h(Lcom/google/android/gms/internal/d$a;)Lcom/google/android/gms/internal/c$h;

    #@12f
    move-result-object v2

    #@130
    iget-object v4, v2, Lcom/google/android/gms/internal/c$h;->fD:[I

    #@132
    array-length v4, v4

    #@133
    new-array v4, v4, [Lcom/google/android/gms/internal/d$a;

    #@135
    iput-object v4, v3, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    #@137
    iget-object v4, v2, Lcom/google/android/gms/internal/c$h;->fD:[I

    #@139
    array-length v5, v4

    #@13a
    move v2, v1

    #@13b
    :goto_13b
    if-ge v1, v5, :cond_14f

    #@13d
    aget v6, v4, v1

    #@13f
    iget-object v7, v3, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    #@141
    invoke-static {v6, p1, p2, p3}, Lcom/google/android/gms/tagmanager/cq;->a(ILcom/google/android/gms/internal/c$f;[Lcom/google/android/gms/internal/d$a;Ljava/util/Set;)Lcom/google/android/gms/internal/d$a;

    #@144
    move-result-object v6

    #@145
    aput-object v6, v7, v2

    #@147
    add-int/lit8 v1, v1, 0x1

    #@149
    add-int/lit8 v2, v2, 0x1

    #@14b
    goto :goto_13b

    #@14c
    :pswitch_14c
    move-object v1, v0

    #@14d
    goto/16 :goto_56

    #@14f
    :cond_14f
    move-object v1, v3

    #@150
    goto/16 :goto_56

    #@152
    :cond_152
    move-object v1, v4

    #@153
    goto/16 :goto_56

    #@155
    nop

    #@156
    :pswitch_data_156
    .packed-switch 0x1
        :pswitch_14c
        :pswitch_79
        :pswitch_9d
        :pswitch_112
        :pswitch_14c
        :pswitch_14c
        :pswitch_128
        :pswitch_14c
    .end packed-switch
.end method

.method private static a(Lcom/google/android/gms/internal/c$b;Lcom/google/android/gms/internal/c$f;[Lcom/google/android/gms/internal/d$a;I)Lcom/google/android/gms/tagmanager/cq$a;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/tagmanager/cq$g;
        }
    .end annotation

    #@0
    invoke-static {}, Lcom/google/android/gms/tagmanager/cq$a;->mn()Lcom/google/android/gms/tagmanager/cq$b;

    #@3
    move-result-object v3

    #@4
    iget-object v4, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    #@6
    array-length v5, v4

    #@7
    const/4 v0, 0x0

    #@8
    move v2, v0

    #@9
    :goto_9
    if-ge v2, v5, :cond_4c

    #@b
    aget v0, v4, v2

    #@d
    iget-object v1, p1, Lcom/google/android/gms/internal/c$f;->eY:[Lcom/google/android/gms/internal/c$e;

    #@f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@16
    move-result v0

    #@17
    const-string v6, "properties"

    #@19
    invoke-static {v1, v0, v6}, Lcom/google/android/gms/tagmanager/cq;->a([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Lcom/google/android/gms/internal/c$e;

    #@1f
    iget-object v1, p1, Lcom/google/android/gms/internal/c$f;->eW:[Ljava/lang/String;

    #@21
    iget v6, v0, Lcom/google/android/gms/internal/c$e;->key:I

    #@23
    const-string v7, "keys"

    #@25
    invoke-static {v1, v6, v7}, Lcom/google/android/gms/tagmanager/cq;->a([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Ljava/lang/String;

    #@2b
    iget v0, v0, Lcom/google/android/gms/internal/c$e;->value:I

    #@2d
    const-string v6, "values"

    #@2f
    invoke-static {p2, v0, v6}, Lcom/google/android/gms/tagmanager/cq;->a([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@35
    sget-object v6, Lcom/google/android/gms/internal/b;->dB:Lcom/google/android/gms/internal/b;

    #@37
    invoke-virtual {v6}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@3a
    move-result-object v6

    #@3b
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v6

    #@3f
    if-eqz v6, :cond_48

    #@41
    invoke-virtual {v3, v0}, Lcom/google/android/gms/tagmanager/cq$b;->i(Lcom/google/android/gms/internal/d$a;)Lcom/google/android/gms/tagmanager/cq$b;

    #@44
    :goto_44
    add-int/lit8 v0, v2, 0x1

    #@46
    move v2, v0

    #@47
    goto :goto_9

    #@48
    :cond_48
    invoke-virtual {v3, v1, v0}, Lcom/google/android/gms/tagmanager/cq$b;->b(Ljava/lang/String;Lcom/google/android/gms/internal/d$a;)Lcom/google/android/gms/tagmanager/cq$b;

    #@4b
    goto :goto_44

    #@4c
    :cond_4c
    invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/cq$b;->mq()Lcom/google/android/gms/tagmanager/cq$a;

    #@4f
    move-result-object v0

    #@50
    return-object v0
.end method

.method private static a(Lcom/google/android/gms/internal/c$g;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/c$f;)Lcom/google/android/gms/tagmanager/cq$e;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/c$g;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/cq$a;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/cq$a;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/cq$a;",
            ">;",
            "Lcom/google/android/gms/internal/c$f;",
            ")",
            "Lcom/google/android/gms/tagmanager/cq$e;"
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    invoke-static {}, Lcom/google/android/gms/tagmanager/cq$e;->mv()Lcom/google/android/gms/tagmanager/cq$f;

    #@4
    move-result-object v3

    #@5
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    #@7
    array-length v5, v4

    #@8
    move v2, v1

    #@9
    :goto_9
    if-ge v2, v5, :cond_22

    #@b
    aget v0, v4, v2

    #@d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@14
    move-result v0

    #@15
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/google/android/gms/tagmanager/cq$a;

    #@1b
    invoke-virtual {v3, v0}, Lcom/google/android/gms/tagmanager/cq$f;->b(Lcom/google/android/gms/tagmanager/cq$a;)Lcom/google/android/gms/tagmanager/cq$f;

    #@1e
    add-int/lit8 v0, v2, 0x1

    #@20
    move v2, v0

    #@21
    goto :goto_9

    #@22
    :cond_22
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    #@24
    array-length v5, v4

    #@25
    move v2, v1

    #@26
    :goto_26
    if-ge v2, v5, :cond_3f

    #@28
    aget v0, v4, v2

    #@2a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@31
    move-result v0

    #@32
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Lcom/google/android/gms/tagmanager/cq$a;

    #@38
    invoke-virtual {v3, v0}, Lcom/google/android/gms/tagmanager/cq$f;->c(Lcom/google/android/gms/tagmanager/cq$a;)Lcom/google/android/gms/tagmanager/cq$f;

    #@3b
    add-int/lit8 v0, v2, 0x1

    #@3d
    move v2, v0

    #@3e
    goto :goto_26

    #@3f
    :cond_3f
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    #@41
    array-length v5, v4

    #@42
    move v2, v1

    #@43
    :goto_43
    if-ge v2, v5, :cond_5c

    #@45
    aget v0, v4, v2

    #@47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@4e
    move-result v0

    #@4f
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@52
    move-result-object v0

    #@53
    check-cast v0, Lcom/google/android/gms/tagmanager/cq$a;

    #@55
    invoke-virtual {v3, v0}, Lcom/google/android/gms/tagmanager/cq$f;->d(Lcom/google/android/gms/tagmanager/cq$a;)Lcom/google/android/gms/tagmanager/cq$f;

    #@58
    add-int/lit8 v0, v2, 0x1

    #@5a
    move v2, v0

    #@5b
    goto :goto_43

    #@5c
    :cond_5c
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    #@5e
    array-length v4, v2

    #@5f
    move v0, v1

    #@60
    :goto_60
    if-ge v0, v4, :cond_78

    #@62
    aget v5, v2, v0

    #@64
    iget-object v6, p4, Lcom/google/android/gms/internal/c$f;->eX:[Lcom/google/android/gms/internal/d$a;

    #@66
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@69
    move-result-object v5

    #@6a
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@6d
    move-result v5

    #@6e
    aget-object v5, v6, v5

    #@70
    iget-object v5, v5, Lcom/google/android/gms/internal/d$a;->fN:Ljava/lang/String;

    #@72
    invoke-virtual {v3, v5}, Lcom/google/android/gms/tagmanager/cq$f;->cf(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/cq$f;

    #@75
    add-int/lit8 v0, v0, 0x1

    #@77
    goto :goto_60

    #@78
    :cond_78
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    #@7a
    array-length v5, v4

    #@7b
    move v2, v1

    #@7c
    :goto_7c
    if-ge v2, v5, :cond_95

    #@7e
    aget v0, v4, v2

    #@80
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@83
    move-result-object v0

    #@84
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@87
    move-result v0

    #@88
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@8b
    move-result-object v0

    #@8c
    check-cast v0, Lcom/google/android/gms/tagmanager/cq$a;

    #@8e
    invoke-virtual {v3, v0}, Lcom/google/android/gms/tagmanager/cq$f;->e(Lcom/google/android/gms/tagmanager/cq$a;)Lcom/google/android/gms/tagmanager/cq$f;

    #@91
    add-int/lit8 v0, v2, 0x1

    #@93
    move v2, v0

    #@94
    goto :goto_7c

    #@95
    :cond_95
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    #@97
    array-length v4, v2

    #@98
    move v0, v1

    #@99
    :goto_99
    if-ge v0, v4, :cond_b1

    #@9b
    aget v5, v2, v0

    #@9d
    iget-object v6, p4, Lcom/google/android/gms/internal/c$f;->eX:[Lcom/google/android/gms/internal/d$a;

    #@9f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a2
    move-result-object v5

    #@a3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@a6
    move-result v5

    #@a7
    aget-object v5, v6, v5

    #@a9
    iget-object v5, v5, Lcom/google/android/gms/internal/d$a;->fN:Ljava/lang/String;

    #@ab
    invoke-virtual {v3, v5}, Lcom/google/android/gms/tagmanager/cq$f;->cg(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/cq$f;

    #@ae
    add-int/lit8 v0, v0, 0x1

    #@b0
    goto :goto_99

    #@b1
    :cond_b1
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    #@b3
    array-length v5, v4

    #@b4
    move v2, v1

    #@b5
    :goto_b5
    if-ge v2, v5, :cond_ce

    #@b7
    aget v0, v4, v2

    #@b9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@bc
    move-result-object v0

    #@bd
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@c0
    move-result v0

    #@c1
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@c4
    move-result-object v0

    #@c5
    check-cast v0, Lcom/google/android/gms/tagmanager/cq$a;

    #@c7
    invoke-virtual {v3, v0}, Lcom/google/android/gms/tagmanager/cq$f;->f(Lcom/google/android/gms/tagmanager/cq$a;)Lcom/google/android/gms/tagmanager/cq$f;

    #@ca
    add-int/lit8 v0, v2, 0x1

    #@cc
    move v2, v0

    #@cd
    goto :goto_b5

    #@ce
    :cond_ce
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    #@d0
    array-length v4, v2

    #@d1
    move v0, v1

    #@d2
    :goto_d2
    if-ge v0, v4, :cond_ea

    #@d4
    aget v5, v2, v0

    #@d6
    iget-object v6, p4, Lcom/google/android/gms/internal/c$f;->eX:[Lcom/google/android/gms/internal/d$a;

    #@d8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@db
    move-result-object v5

    #@dc
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@df
    move-result v5

    #@e0
    aget-object v5, v6, v5

    #@e2
    iget-object v5, v5, Lcom/google/android/gms/internal/d$a;->fN:Ljava/lang/String;

    #@e4
    invoke-virtual {v3, v5}, Lcom/google/android/gms/tagmanager/cq$f;->ch(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/cq$f;

    #@e7
    add-int/lit8 v0, v0, 0x1

    #@e9
    goto :goto_d2

    #@ea
    :cond_ea
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    #@ec
    array-length v5, v4

    #@ed
    move v2, v1

    #@ee
    :goto_ee
    if-ge v2, v5, :cond_107

    #@f0
    aget v0, v4, v2

    #@f2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f5
    move-result-object v0

    #@f6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@f9
    move-result v0

    #@fa
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@fd
    move-result-object v0

    #@fe
    check-cast v0, Lcom/google/android/gms/tagmanager/cq$a;

    #@100
    invoke-virtual {v3, v0}, Lcom/google/android/gms/tagmanager/cq$f;->g(Lcom/google/android/gms/tagmanager/cq$a;)Lcom/google/android/gms/tagmanager/cq$f;

    #@103
    add-int/lit8 v0, v2, 0x1

    #@105
    move v2, v0

    #@106
    goto :goto_ee

    #@107
    :cond_107
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    #@109
    array-length v4, v2

    #@10a
    move v0, v1

    #@10b
    :goto_10b
    if-ge v0, v4, :cond_123

    #@10d
    aget v1, v2, v0

    #@10f
    iget-object v5, p4, Lcom/google/android/gms/internal/c$f;->eX:[Lcom/google/android/gms/internal/d$a;

    #@111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@114
    move-result-object v1

    #@115
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@118
    move-result v1

    #@119
    aget-object v1, v5, v1

    #@11b
    iget-object v1, v1, Lcom/google/android/gms/internal/d$a;->fN:Ljava/lang/String;

    #@11d
    invoke-virtual {v3, v1}, Lcom/google/android/gms/tagmanager/cq$f;->ci(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/cq$f;

    #@120
    add-int/lit8 v0, v0, 0x1

    #@122
    goto :goto_10b

    #@123
    :cond_123
    invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/cq$f;->mG()Lcom/google/android/gms/tagmanager/cq$e;

    #@126
    move-result-object v0

    #@127
    return-object v0
.end method

.method private static a([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/tagmanager/cq$g;
        }
    .end annotation

    #@0
    if-ltz p1, :cond_5

    #@2
    array-length v0, p0

    #@3
    if-lt p1, v0, :cond_25

    #@5
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string v1, "Index out of bounds detected: "

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string v1, " in "

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/cq;->cd(Ljava/lang/String;)V

    #@25
    :cond_25
    aget-object v0, p0, p1

    #@27
    return-object v0
.end method

.method public static b(Lcom/google/android/gms/internal/c$f;)Lcom/google/android/gms/tagmanager/cq$c;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/tagmanager/cq$g;
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->eX:[Lcom/google/android/gms/internal/d$a;

    #@3
    array-length v0, v0

    #@4
    new-array v2, v0, [Lcom/google/android/gms/internal/d$a;

    #@6
    move v0, v1

    #@7
    :goto_7
    iget-object v3, p0, Lcom/google/android/gms/internal/c$f;->eX:[Lcom/google/android/gms/internal/d$a;

    #@9
    array-length v3, v3

    #@a
    if-ge v0, v3, :cond_17

    #@c
    new-instance v3, Ljava/util/HashSet;

    #@e
    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(I)V

    #@11
    invoke-static {v0, p0, v2, v3}, Lcom/google/android/gms/tagmanager/cq;->a(ILcom/google/android/gms/internal/c$f;[Lcom/google/android/gms/internal/d$a;Ljava/util/Set;)Lcom/google/android/gms/internal/d$a;

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_7

    #@17
    :cond_17
    invoke-static {}, Lcom/google/android/gms/tagmanager/cq$c;->mr()Lcom/google/android/gms/tagmanager/cq$d;

    #@1a
    move-result-object v3

    #@1b
    new-instance v4, Ljava/util/ArrayList;

    #@1d
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@20
    move v0, v1

    #@21
    :goto_21
    iget-object v5, p0, Lcom/google/android/gms/internal/c$f;->fa:[Lcom/google/android/gms/internal/c$b;

    #@23
    array-length v5, v5

    #@24
    if-ge v0, v5, :cond_34

    #@26
    iget-object v5, p0, Lcom/google/android/gms/internal/c$f;->fa:[Lcom/google/android/gms/internal/c$b;

    #@28
    aget-object v5, v5, v0

    #@2a
    invoke-static {v5, p0, v2, v0}, Lcom/google/android/gms/tagmanager/cq;->a(Lcom/google/android/gms/internal/c$b;Lcom/google/android/gms/internal/c$f;[Lcom/google/android/gms/internal/d$a;I)Lcom/google/android/gms/tagmanager/cq$a;

    #@2d
    move-result-object v5

    #@2e
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@31
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_21

    #@34
    :cond_34
    new-instance v5, Ljava/util/ArrayList;

    #@36
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@39
    move v0, v1

    #@3a
    :goto_3a
    iget-object v6, p0, Lcom/google/android/gms/internal/c$f;->fb:[Lcom/google/android/gms/internal/c$b;

    #@3c
    array-length v6, v6

    #@3d
    if-ge v0, v6, :cond_4d

    #@3f
    iget-object v6, p0, Lcom/google/android/gms/internal/c$f;->fb:[Lcom/google/android/gms/internal/c$b;

    #@41
    aget-object v6, v6, v0

    #@43
    invoke-static {v6, p0, v2, v0}, Lcom/google/android/gms/tagmanager/cq;->a(Lcom/google/android/gms/internal/c$b;Lcom/google/android/gms/internal/c$f;[Lcom/google/android/gms/internal/d$a;I)Lcom/google/android/gms/tagmanager/cq$a;

    #@46
    move-result-object v6

    #@47
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4a
    add-int/lit8 v0, v0, 0x1

    #@4c
    goto :goto_3a

    #@4d
    :cond_4d
    new-instance v6, Ljava/util/ArrayList;

    #@4f
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@52
    move v0, v1

    #@53
    :goto_53
    iget-object v7, p0, Lcom/google/android/gms/internal/c$f;->eZ:[Lcom/google/android/gms/internal/c$b;

    #@55
    array-length v7, v7

    #@56
    if-ge v0, v7, :cond_69

    #@58
    iget-object v7, p0, Lcom/google/android/gms/internal/c$f;->eZ:[Lcom/google/android/gms/internal/c$b;

    #@5a
    aget-object v7, v7, v0

    #@5c
    invoke-static {v7, p0, v2, v0}, Lcom/google/android/gms/tagmanager/cq;->a(Lcom/google/android/gms/internal/c$b;Lcom/google/android/gms/internal/c$f;[Lcom/google/android/gms/internal/d$a;I)Lcom/google/android/gms/tagmanager/cq$a;

    #@5f
    move-result-object v7

    #@60
    invoke-virtual {v3, v7}, Lcom/google/android/gms/tagmanager/cq$d;->a(Lcom/google/android/gms/tagmanager/cq$a;)Lcom/google/android/gms/tagmanager/cq$d;

    #@63
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@66
    add-int/lit8 v0, v0, 0x1

    #@68
    goto :goto_53

    #@69
    :cond_69
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fc:[Lcom/google/android/gms/internal/c$g;

    #@6b
    array-length v2, v0

    #@6c
    :goto_6c
    if-ge v1, v2, :cond_7a

    #@6e
    aget-object v7, v0, v1

    #@70
    invoke-static {v7, v4, v6, v5, p0}, Lcom/google/android/gms/tagmanager/cq;->a(Lcom/google/android/gms/internal/c$g;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/c$f;)Lcom/google/android/gms/tagmanager/cq$e;

    #@73
    move-result-object v7

    #@74
    invoke-virtual {v3, v7}, Lcom/google/android/gms/tagmanager/cq$d;->a(Lcom/google/android/gms/tagmanager/cq$e;)Lcom/google/android/gms/tagmanager/cq$d;

    #@77
    add-int/lit8 v1, v1, 0x1

    #@79
    goto :goto_6c

    #@7a
    :cond_7a
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fg:Ljava/lang/String;

    #@7c
    invoke-virtual {v3, v0}, Lcom/google/android/gms/tagmanager/cq$d;->ce(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/cq$d;

    #@7f
    iget v0, p0, Lcom/google/android/gms/internal/c$f;->fl:I

    #@81
    invoke-virtual {v3, v0}, Lcom/google/android/gms/tagmanager/cq$d;->du(I)Lcom/google/android/gms/tagmanager/cq$d;

    #@84
    invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/cq$d;->mu()Lcom/google/android/gms/tagmanager/cq$c;

    #@87
    move-result-object v0

    #@88
    return-object v0
.end method

.method public static b(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/16 v0, 0x400

    #@2
    new-array v0, v0, [B

    #@4
    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    #@7
    move-result v1

    #@8
    const/4 v2, -0x1

    #@9
    if-ne v1, v2, :cond_c

    #@b
    return-void

    #@c
    :cond_c
    const/4 v2, 0x0

    #@d
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    #@10
    goto :goto_4
.end method

.method private static cd(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/tagmanager/cq$g;
        }
    .end annotation

    #@0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@3
    new-instance v0, Lcom/google/android/gms/tagmanager/cq$g;

    #@5
    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/cq$g;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public static g(Lcom/google/android/gms/internal/d$a;)Lcom/google/android/gms/internal/d$a;
    .registers 3

    #@0
    new-instance v1, Lcom/google/android/gms/internal/d$a;

    #@2
    invoke-direct {v1}, Lcom/google/android/gms/internal/d$a;-><init>()V

    #@5
    iget v0, p0, Lcom/google/android/gms/internal/d$a;->type:I

    #@7
    iput v0, v1, Lcom/google/android/gms/internal/d$a;->type:I

    #@9
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    #@b
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, [I

    #@11
    iput-object v0, v1, Lcom/google/android/gms/internal/d$a;->fW:[I

    #@13
    iget-boolean v0, p0, Lcom/google/android/gms/internal/d$a;->fX:Z

    #@15
    if-eqz v0, :cond_1b

    #@17
    iget-boolean v0, p0, Lcom/google/android/gms/internal/d$a;->fX:Z

    #@19
    iput-boolean v0, v1, Lcom/google/android/gms/internal/d$a;->fX:Z

    #@1b
    :cond_1b
    return-object v1
.end method

.method private static h(Lcom/google/android/gms/internal/d$a;)Lcom/google/android/gms/internal/c$h;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/tagmanager/cq$g;
        }
    .end annotation

    #@0
    sget-object v0, Lcom/google/android/gms/internal/c$h;->fx:Lcom/google/android/gms/internal/mb;

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/d$a;->a(Lcom/google/android/gms/internal/mb;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/internal/c$h;

    #@8
    if-nez v0, :cond_20

    #@a
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string v1, "Expected a ServingValue and didn\'t get one. Value is: "

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/cq;->cd(Ljava/lang/String;)V

    #@20
    :cond_20
    sget-object v0, Lcom/google/android/gms/internal/c$h;->fx:Lcom/google/android/gms/internal/mb;

    #@22
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/d$a;->a(Lcom/google/android/gms/internal/mb;)Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Lcom/google/android/gms/internal/c$h;

    #@28
    return-object v0
.end method
