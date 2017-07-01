.class Lcom/google/android/gms/tagmanager/ai;
.super Ljava/lang/Object;


# direct methods
.method private static a(Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/internal/c$d;)V
    .registers 6

    #@0
    iget-object v1, p1, Lcom/google/android/gms/internal/c$d;->eS:[Lcom/google/android/gms/internal/d$a;

    #@2
    array-length v2, v1

    #@3
    const/4 v0, 0x0

    #@4
    :goto_4
    if-ge v0, v2, :cond_12

    #@6
    aget-object v3, v1, v0

    #@8
    invoke-static {v3}, Lcom/google/android/gms/tagmanager/dh;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {p0, v3}, Lcom/google/android/gms/tagmanager/DataLayer;->bN(Ljava/lang/String;)V

    #@f
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_4

    #@12
    :cond_12
    return-void
.end method

.method public static a(Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/internal/c$i;)V
    .registers 3

    #@0
    iget-object v0, p1, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;

    #@2
    if-nez v0, :cond_a

    #@4
    const-string v0, "supplemental missing experimentSupplemental"

    #@6
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    iget-object v0, p1, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;

    #@c
    invoke-static {p0, v0}, Lcom/google/android/gms/tagmanager/ai;->a(Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/internal/c$d;)V

    #@f
    iget-object v0, p1, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;

    #@11
    invoke-static {p0, v0}, Lcom/google/android/gms/tagmanager/ai;->b(Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/internal/c$d;)V

    #@14
    iget-object v0, p1, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;

    #@16
    invoke-static {p0, v0}, Lcom/google/android/gms/tagmanager/ai;->c(Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/internal/c$d;)V

    #@19
    goto :goto_9
.end method

.method private static b(Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/internal/c$d;)V
    .registers 6

    #@0
    iget-object v1, p1, Lcom/google/android/gms/internal/c$d;->eR:[Lcom/google/android/gms/internal/d$a;

    #@2
    array-length v2, v1

    #@3
    const/4 v0, 0x0

    #@4
    :goto_4
    if-ge v0, v2, :cond_14

    #@6
    aget-object v3, v1, v0

    #@8
    invoke-static {v3}, Lcom/google/android/gms/tagmanager/ai;->c(Lcom/google/android/gms/internal/d$a;)Ljava/util/Map;

    #@b
    move-result-object v3

    #@c
    if-eqz v3, :cond_11

    #@e
    invoke-virtual {p0, v3}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    #@11
    :cond_11
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_4

    #@14
    :cond_14
    return-void
.end method

.method private static c(Lcom/google/android/gms/internal/d$a;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/d$a;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/dh;->o(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    instance-of v1, v0, Ljava/util/Map;

    #@6
    if-nez v1, :cond_26

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string v2, "value: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    const-string v1, " is not a map value, ignored."

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@24
    const/4 v0, 0x0

    #@25
    :goto_25
    return-object v0

    #@26
    :cond_26
    check-cast v0, Ljava/util/Map;

    #@28
    goto :goto_25
.end method

.method private static c(Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/internal/c$d;)V
    .registers 16

    #@0
    const/4 v3, 0x0

    #@1
    iget-object v4, p1, Lcom/google/android/gms/internal/c$d;->eT:[Lcom/google/android/gms/internal/c$c;

    #@3
    array-length v5, v4

    #@4
    move v2, v3

    #@5
    :goto_5
    if-ge v2, v5, :cond_b9

    #@7
    aget-object v6, v4, v2

    #@9
    iget-object v0, v6, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    #@b
    if-nez v0, :cond_16

    #@d
    const-string v0, "GaExperimentRandom: No key"

    #@f
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@12
    :goto_12
    add-int/lit8 v0, v2, 0x1

    #@14
    move v2, v0

    #@15
    goto :goto_5

    #@16
    :cond_16
    iget-object v0, v6, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    #@18
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    instance-of v0, v1, Ljava/lang/Number;

    #@1e
    if-nez v0, :cond_88

    #@20
    const/4 v0, 0x0

    #@21
    :goto_21
    iget-wide v8, v6, Lcom/google/android/gms/internal/c$c;->eN:J

    #@23
    iget-wide v10, v6, Lcom/google/android/gms/internal/c$c;->eO:J

    #@25
    iget-boolean v7, v6, Lcom/google/android/gms/internal/c$c;->eP:Z

    #@27
    if-eqz v7, :cond_3b

    #@29
    if-eqz v0, :cond_3b

    #@2b
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@2e
    move-result-wide v12

    #@2f
    cmp-long v7, v12, v8

    #@31
    if-ltz v7, :cond_3b

    #@33
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@36
    move-result-wide v12

    #@37
    cmp-long v0, v12, v10

    #@39
    if-lez v0, :cond_50

    #@3b
    :cond_3b
    cmp-long v0, v8, v10

    #@3d
    if-gtz v0, :cond_94

    #@3f
    invoke-static {}, Ljava/lang/Math;->random()D

    #@42
    move-result-wide v0

    #@43
    sub-long/2addr v10, v8

    #@44
    long-to-double v10, v10

    #@45
    mul-double/2addr v0, v10

    #@46
    long-to-double v8, v8

    #@47
    add-double/2addr v0, v8

    #@48
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    #@4b
    move-result-wide v0

    #@4c
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@4f
    move-result-object v1

    #@50
    :cond_50
    iget-object v0, v6, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    #@52
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->bN(Ljava/lang/String;)V

    #@55
    iget-object v0, v6, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    #@57
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    #@5a
    move-result-object v1

    #@5b
    iget-wide v8, v6, Lcom/google/android/gms/internal/c$c;->eQ:J

    #@5d
    const-wide/16 v10, 0x0

    #@5f
    cmp-long v0, v8, v10

    #@61
    if-lez v0, :cond_84

    #@63
    const-string v0, "gtm"

    #@65
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@68
    move-result v0

    #@69
    if-nez v0, :cond_9b

    #@6b
    const-string v0, "gtm"

    #@6d
    const/4 v7, 0x2

    #@6e
    new-array v7, v7, [Ljava/lang/Object;

    #@70
    const-string v8, "lifetime"

    #@72
    aput-object v8, v7, v3

    #@74
    const/4 v8, 0x1

    #@75
    iget-wide v10, v6, Lcom/google/android/gms/internal/c$c;->eQ:J

    #@77
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@7a
    move-result-object v6

    #@7b
    aput-object v6, v7, v8

    #@7d
    invoke-static {v7}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    #@80
    move-result-object v6

    #@81
    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@84
    :cond_84
    :goto_84
    invoke-virtual {p0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    #@87
    goto :goto_12

    #@88
    :cond_88
    move-object v0, v1

    #@89
    check-cast v0, Ljava/lang/Number;

    #@8b
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    #@8e
    move-result-wide v8

    #@8f
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@92
    move-result-object v0

    #@93
    goto :goto_21

    #@94
    :cond_94
    const-string v0, "GaExperimentRandom: random range invalid"

    #@96
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@99
    goto/16 :goto_12

    #@9b
    :cond_9b
    const-string v0, "gtm"

    #@9d
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a0
    move-result-object v0

    #@a1
    instance-of v7, v0, Ljava/util/Map;

    #@a3
    if-eqz v7, :cond_b3

    #@a5
    check-cast v0, Ljava/util/Map;

    #@a7
    const-string v7, "lifetime"

    #@a9
    iget-wide v8, v6, Lcom/google/android/gms/internal/c$c;->eQ:J

    #@ab
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@ae
    move-result-object v6

    #@af
    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b2
    goto :goto_84

    #@b3
    :cond_b3
    const-string v0, "GaExperimentRandom: gtm not a map"

    #@b5
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@b8
    goto :goto_84

    #@b9
    :cond_b9
    return-void
.end method
