.class public abstract Lcom/google/android/gms/internal/hy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/hy$a;,
        Lcom/google/android/gms/internal/hy$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/hy$a;Ljava/lang/Object;)V
    .registers 6

    #@0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/hy$a;->fE()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0xb

    #@6
    if-ne v0, v1, :cond_1a

    #@8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/hy$a;->fO()Ljava/lang/Class;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/google/android/gms/internal/hy;

    #@12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hy;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    :goto_19
    return-void

    #@1a
    :cond_1a
    invoke-virtual {p2}, Lcom/google/android/gms/internal/hy$a;->fE()I

    #@1d
    move-result v0

    #@1e
    const/4 v1, 0x7

    #@1f
    if-ne v0, v1, :cond_35

    #@21
    const-string v0, "\""

    #@23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    check-cast p3, Ljava/lang/String;

    #@28
    invoke-static {p3}, Lcom/google/android/gms/internal/in;->aK(Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    const-string v0, "\""

    #@31
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    goto :goto_19

    #@35
    :cond_35
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    goto :goto_19
.end method

.method private a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/hy$a;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/google/android/gms/internal/hy$a;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    const-string v0, "["

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5
    const/4 v0, 0x0

    #@6
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v1

    #@a
    :goto_a
    if-ge v0, v1, :cond_1f

    #@c
    if-lez v0, :cond_13

    #@e
    const-string v2, ","

    #@10
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    :cond_13
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    if-eqz v2, :cond_1c

    #@19
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/hy;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/hy$a;Ljava/lang/Object;)V

    #@1c
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_a

    #@1f
    :cond_1f
    const-string v0, "]"

    #@21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/hy$a;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/hy$a",
            "<TI;TO;>;",
            "Ljava/lang/Object;",
            ")TI;"
        }
    .end annotation

    #@0
    invoke-static {p1}, Lcom/google/android/gms/internal/hy$a;->c(Lcom/google/android/gms/internal/hy$a;)Lcom/google/android/gms/internal/hy$b;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_a

    #@6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/hy$a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object p2

    #@a
    :cond_a
    return-object p2
.end method

.method protected a(Lcom/google/android/gms/internal/hy$a;)Z
    .registers 4

    #@0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/hy$a;->fF()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0xb

    #@6
    if-ne v0, v1, :cond_20

    #@8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/hy$a;->fL()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_17

    #@e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/hy$a;->fM()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hy;->aI(Ljava/lang/String;)Z

    #@15
    move-result v0

    #@16
    :goto_16
    return v0

    #@17
    :cond_17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/hy$a;->fM()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hy;->aH(Ljava/lang/String;)Z

    #@1e
    move-result v0

    #@1f
    goto :goto_16

    #@20
    :cond_20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/hy$a;->fM()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hy;->aG(Ljava/lang/String;)Z

    #@27
    move-result v0

    #@28
    goto :goto_16
.end method

.method protected abstract aF(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method protected abstract aG(Ljava/lang/String;)Z
.end method

.method protected aH(Ljava/lang/String;)Z
    .registers 4

    #@0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v1, "Concrete types not supported"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method

.method protected aI(Ljava/lang/String;)Z
    .registers 4

    #@0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v1, "Concrete type arrays not supported"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method

.method protected b(Lcom/google/android/gms/internal/hy$a;)Ljava/lang/Object;
    .registers 8

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/hy$a;->fM()Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/hy$a;->fO()Ljava/lang/Class;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_7b

    #@c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/hy$a;->fM()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hy;->aF(Ljava/lang/String;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    if-nez v0, :cond_35

    #@16
    move v0, v1

    #@17
    :goto_17
    const-string v4, "Concrete field shouldn\'t be value object: %s"

    #@19
    new-array v1, v1, [Ljava/lang/Object;

    #@1b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/hy$a;->fM()Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    aput-object v5, v1, v2

    #@21
    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    #@24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/hy$a;->fL()Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_37

    #@2a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hy;->fI()Ljava/util/HashMap;

    #@2d
    move-result-object v0

    #@2e
    :goto_2e
    if-eqz v0, :cond_3c

    #@30
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    :goto_34
    return-object v0

    #@35
    :cond_35
    move v0, v2

    #@36
    goto :goto_17

    #@37
    :cond_37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hy;->fH()Ljava/util/HashMap;

    #@3a
    move-result-object v0

    #@3b
    goto :goto_2e

    #@3c
    :cond_3c
    :try_start_3c
    new-instance v0, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string v1, "get"

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    const/4 v1, 0x0

    #@48
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    #@4b
    move-result v1

    #@4c
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    #@4f
    move-result v1

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    const/4 v1, 0x1

    #@55
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v0

    #@61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@64
    move-result-object v1

    #@65
    const/4 v2, 0x0

    #@66
    new-array v2, v2, [Ljava/lang/Class;

    #@68
    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@6b
    move-result-object v0

    #@6c
    const/4 v1, 0x0

    #@6d
    new-array v1, v1, [Ljava/lang/Object;

    #@6f
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_72} :catch_74

    #@72
    move-result-object v0

    #@73
    goto :goto_34

    #@74
    :catch_74
    move-exception v0

    #@75
    new-instance v1, Ljava/lang/RuntimeException;

    #@77
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@7a
    throw v1

    #@7b
    :cond_7b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/hy$a;->fM()Ljava/lang/String;

    #@7e
    move-result-object v0

    #@7f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hy;->aF(Ljava/lang/String;)Ljava/lang/Object;

    #@82
    move-result-object v0

    #@83
    goto :goto_34
.end method

.method public abstract fG()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/hy$a",
            "<**>;>;"
        }
    .end annotation
.end method

.method public fH()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public fI()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hy;->fG()Ljava/util/HashMap;

    #@3
    move-result-object v3

    #@4
    new-instance v4, Ljava/lang/StringBuilder;

    #@6
    const/16 v0, 0x64

    #@8
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@b
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@e
    move-result-object v0

    #@f
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v5

    #@13
    :cond_13
    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_a8

    #@19
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Ljava/lang/String;

    #@1f
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Lcom/google/android/gms/internal/hy$a;

    #@25
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/hy;->a(Lcom/google/android/gms/internal/hy$a;)Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_13

    #@2b
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/hy;->b(Lcom/google/android/gms/internal/hy$a;)Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/hy;->a(Lcom/google/android/gms/internal/hy$a;Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    #@36
    move-result v6

    #@37
    if-nez v6, :cond_55

    #@39
    const-string v6, "{"

    #@3b
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    :goto_3e
    const-string v6, "\""

    #@40
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v6

    #@44
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    const-string v6, "\":"

    #@4a
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    if-nez v2, :cond_5b

    #@4f
    const-string v0, "null"

    #@51
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    goto :goto_13

    #@55
    :cond_55
    const-string v6, ","

    #@57
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    goto :goto_3e

    #@5b
    :cond_5b
    invoke-virtual {v1}, Lcom/google/android/gms/internal/hy$a;->fF()I

    #@5e
    move-result v0

    #@5f
    packed-switch v0, :pswitch_data_be

    #@62
    invoke-virtual {v1}, Lcom/google/android/gms/internal/hy$a;->fK()Z

    #@65
    move-result v0

    #@66
    if-eqz v0, :cond_a3

    #@68
    move-object v0, v2

    #@69
    check-cast v0, Ljava/util/ArrayList;

    #@6b
    invoke-direct {p0, v4, v1, v0}, Lcom/google/android/gms/internal/hy;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/hy$a;Ljava/util/ArrayList;)V

    #@6e
    goto :goto_13

    #@6f
    :pswitch_6f
    const-string v0, "\""

    #@71
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v0

    #@75
    check-cast v2, [B

    #@77
    invoke-static {v2}, Lcom/google/android/gms/internal/ih;->d([B)Ljava/lang/String;

    #@7a
    move-result-object v1

    #@7b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v0

    #@7f
    const-string v1, "\""

    #@81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    goto :goto_13

    #@85
    :pswitch_85
    const-string v0, "\""

    #@87
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v0

    #@8b
    check-cast v2, [B

    #@8d
    invoke-static {v2}, Lcom/google/android/gms/internal/ih;->e([B)Ljava/lang/String;

    #@90
    move-result-object v1

    #@91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v0

    #@95
    const-string v1, "\""

    #@97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    goto/16 :goto_13

    #@9c
    :pswitch_9c
    check-cast v2, Ljava/util/HashMap;

    #@9e
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/io;->a(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V

    #@a1
    goto/16 :goto_13

    #@a3
    :cond_a3
    invoke-direct {p0, v4, v1, v2}, Lcom/google/android/gms/internal/hy;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/hy$a;Ljava/lang/Object;)V

    #@a6
    goto/16 :goto_13

    #@a8
    :cond_a8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    #@ab
    move-result v0

    #@ac
    if-lez v0, :cond_b8

    #@ae
    const-string v0, "}"

    #@b0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    :goto_b3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v0

    #@b7
    return-object v0

    #@b8
    :cond_b8
    const-string v0, "{}"

    #@ba
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    goto :goto_b3

    #@be
    :pswitch_data_be
    .packed-switch 0x8
        :pswitch_6f
        :pswitch_85
        :pswitch_9c
    .end packed-switch
.end method
