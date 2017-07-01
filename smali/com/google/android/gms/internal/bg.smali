.class public final Lcom/google/android/gms/internal/bg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bc;


# instance fields
.field private final nd:Lcom/google/android/gms/internal/bd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bd;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/bg;->nd:Lcom/google/android/gms/internal/bd;

    #@5
    return-void
.end method

.method private static a(Ljava/util/Map;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    #@0
    const-string v0, "1"

    #@2
    const-string v1, "custom_close"

    #@4
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method private static b(Ljava/util/Map;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    #@0
    const-string v0, "o"

    #@2
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    if-eqz v0, :cond_24

    #@a
    const-string v1, "p"

    #@c
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_17

    #@12
    invoke-static {}, Lcom/google/android/gms/internal/eo;->bS()I

    #@15
    move-result v0

    #@16
    :goto_16
    return v0

    #@17
    :cond_17
    const-string v1, "l"

    #@19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_24

    #@1f
    invoke-static {}, Lcom/google/android/gms/internal/eo;->bR()I

    #@22
    move-result v0

    #@23
    goto :goto_16

    #@24
    :cond_24
    const/4 v0, -0x1

    #@25
    goto :goto_16
.end method


# virtual methods
.method public b(Lcom/google/android/gms/internal/ex;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ex;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    const-string v0, "a"

    #@2
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    if-nez v0, :cond_10

    #@a
    const-string v0, "Action missing from an open GMSG."

    #@c
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@f
    :cond_f
    :goto_f
    return-void

    #@10
    :cond_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ex;->cb()Lcom/google/android/gms/internal/ey;

    #@13
    move-result-object v8

    #@14
    const-string v1, "expand"

    #@16
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_34

    #@1c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ex;->ce()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_28

    #@22
    const-string v0, "Cannot expand WebView that is already expanded."

    #@24
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@27
    goto :goto_f

    #@28
    :cond_28
    invoke-static {p2}, Lcom/google/android/gms/internal/bg;->a(Ljava/util/Map;)Z

    #@2b
    move-result v0

    #@2c
    invoke-static {p2}, Lcom/google/android/gms/internal/bg;->b(Ljava/util/Map;)I

    #@2f
    move-result v1

    #@30
    invoke-virtual {v8, v0, v1}, Lcom/google/android/gms/internal/ey;->a(ZI)V

    #@33
    goto :goto_f

    #@34
    :cond_34
    const-string v1, "webapp"

    #@36
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@39
    move-result v1

    #@3a
    if-eqz v1, :cond_6e

    #@3c
    const-string v0, "u"

    #@3e
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    move-result-object v0

    #@42
    check-cast v0, Ljava/lang/String;

    #@44
    if-eqz v0, :cond_52

    #@46
    invoke-static {p2}, Lcom/google/android/gms/internal/bg;->a(Ljava/util/Map;)Z

    #@49
    move-result v1

    #@4a
    invoke-static {p2}, Lcom/google/android/gms/internal/bg;->b(Ljava/util/Map;)I

    #@4d
    move-result v2

    #@4e
    invoke-virtual {v8, v1, v2, v0}, Lcom/google/android/gms/internal/ey;->a(ZILjava/lang/String;)V

    #@51
    goto :goto_f

    #@52
    :cond_52
    invoke-static {p2}, Lcom/google/android/gms/internal/bg;->a(Ljava/util/Map;)Z

    #@55
    move-result v2

    #@56
    invoke-static {p2}, Lcom/google/android/gms/internal/bg;->b(Ljava/util/Map;)I

    #@59
    move-result v3

    #@5a
    const-string v0, "html"

    #@5c
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5f
    move-result-object v0

    #@60
    check-cast v0, Ljava/lang/String;

    #@62
    const-string v1, "baseurl"

    #@64
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@67
    move-result-object v1

    #@68
    check-cast v1, Ljava/lang/String;

    #@6a
    invoke-virtual {v8, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ey;->a(ZILjava/lang/String;Ljava/lang/String;)V

    #@6d
    goto :goto_f

    #@6e
    :cond_6e
    const-string v1, "in_app_purchase"

    #@70
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@73
    move-result v0

    #@74
    if-eqz v0, :cond_b4

    #@76
    const-string v0, "product_id"

    #@78
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7b
    move-result-object v0

    #@7c
    check-cast v0, Ljava/lang/String;

    #@7e
    const-string v1, "report_urls"

    #@80
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@83
    move-result-object v1

    #@84
    check-cast v1, Ljava/lang/String;

    #@86
    iget-object v2, p0, Lcom/google/android/gms/internal/bg;->nd:Lcom/google/android/gms/internal/bd;

    #@88
    if-eqz v2, :cond_f

    #@8a
    if-eqz v1, :cond_a8

    #@8c
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@8f
    move-result v2

    #@90
    if-nez v2, :cond_a8

    #@92
    const-string v2, " "

    #@94
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@97
    move-result-object v1

    #@98
    iget-object v2, p0, Lcom/google/android/gms/internal/bg;->nd:Lcom/google/android/gms/internal/bd;

    #@9a
    new-instance v3, Ljava/util/ArrayList;

    #@9c
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@9f
    move-result-object v1

    #@a0
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@a3
    invoke-interface {v2, v0, v3}, Lcom/google/android/gms/internal/bd;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@a6
    goto/16 :goto_f

    #@a8
    :cond_a8
    iget-object v1, p0, Lcom/google/android/gms/internal/bg;->nd:Lcom/google/android/gms/internal/bd;

    #@aa
    new-instance v2, Ljava/util/ArrayList;

    #@ac
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@af
    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/bd;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@b2
    goto/16 :goto_f

    #@b4
    :cond_b4
    new-instance v0, Lcom/google/android/gms/internal/ce;

    #@b6
    const-string v1, "i"

    #@b8
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@bb
    move-result-object v1

    #@bc
    check-cast v1, Ljava/lang/String;

    #@be
    const-string v2, "u"

    #@c0
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c3
    move-result-object v2

    #@c4
    check-cast v2, Ljava/lang/String;

    #@c6
    const-string v3, "m"

    #@c8
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@cb
    move-result-object v3

    #@cc
    check-cast v3, Ljava/lang/String;

    #@ce
    const-string v4, "p"

    #@d0
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d3
    move-result-object v4

    #@d4
    check-cast v4, Ljava/lang/String;

    #@d6
    const-string v5, "c"

    #@d8
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@db
    move-result-object v5

    #@dc
    check-cast v5, Ljava/lang/String;

    #@de
    const-string v6, "f"

    #@e0
    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e3
    move-result-object v6

    #@e4
    check-cast v6, Ljava/lang/String;

    #@e6
    const-string v7, "e"

    #@e8
    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@eb
    move-result-object v7

    #@ec
    check-cast v7, Ljava/lang/String;

    #@ee
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ce;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@f1
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ey;->a(Lcom/google/android/gms/internal/ce;)V

    #@f4
    goto/16 :goto_f
.end method
