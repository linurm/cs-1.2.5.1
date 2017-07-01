.class public Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/HitBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "HitBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field wA:Lcom/google/android/gms/analytics/ecommerce/ProductAction;

.field wB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/ecommerce/Product;",
            ">;>;"
        }
    .end annotation
.end field

.field wC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/ecommerce/Promotion;",
            ">;"
        }
    .end annotation
.end field

.field wD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/ecommerce/Product;",
            ">;"
        }
    .end annotation
.end field

.field private wz:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->wz:Ljava/util/Map;

    #@a
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->wB:Ljava/util/Map;

    #@11
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->wC:Ljava/util/List;

    #@18
    new-instance v0, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->wD:Ljava/util/List;

    #@1f
    return-void
.end method


# virtual methods
.method public addImpression(Lcom/google/android/gms/analytics/ecommerce/Product;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/analytics/ecommerce/Product;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    #@0
    if-nez p1, :cond_8

    #@2
    const-string v0, "product should be non-null"

    #@4
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@7
    :goto_7
    return-object p0

    #@8
    :cond_8
    if-nez p2, :cond_c

    #@a
    const-string p2, ""

    #@c
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->wB:Ljava/util/Map;

    #@e
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_1e

    #@14
    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->wB:Ljava/util/Map;

    #@16
    new-instance v1, Ljava/util/ArrayList;

    #@18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1b
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->wB:Ljava/util/Map;

    #@20
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Ljava/util/List;

    #@26
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@29
    goto :goto_7
.end method

.method public addProduct(Lcom/google/android/gms/analytics/ecommerce/Product;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/analytics/ecommerce/Product;",
            ")TT;"
        }
    .end annotation

    #@0
    if-nez p1, :cond_8

    #@2
    const-string v0, "product should be non-null"

    #@4
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@7
    :goto_7
    return-object p0

    #@8
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->wD:Ljava/util/List;

    #@a
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d
    goto :goto_7
.end method

.method public addPromotion(Lcom/google/android/gms/analytics/ecommerce/Promotion;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/analytics/ecommerce/Promotion;",
            ")TT;"
        }
    .end annotation

    #@0
    if-nez p1, :cond_8

    #@2
    const-string v0, "promotion should be non-null"

    #@4
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@7
    :goto_7
    return-object p0

    #@8
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->wC:Ljava/util/List;

    #@a
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d
    goto :goto_7
.end method

.method public build()Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v2, 0x1

    #@1
    new-instance v5, Ljava/util/HashMap;

    #@3
    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->wz:Ljava/util/Map;

    #@5
    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #@8
    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->wA:Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    #@a
    if-eqz v0, :cond_15

    #@c
    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->wA:Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    #@e
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->build()Ljava/util/Map;

    #@11
    move-result-object v0

    #@12
    invoke-interface {v5, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    #@15
    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->wC:Ljava/util/List;

    #@17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v3

    #@1b
    move v1, v2

    #@1c
    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_37

    #@22
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Lcom/google/android/gms/analytics/ecommerce/Promotion;

    #@28
    invoke-static {v1}, Lcom/google/android/gms/analytics/o;->v(I)Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v0, v4}, Lcom/google/android/gms/analytics/ecommerce/Promotion;->X(Ljava/lang/String;)Ljava/util/Map;

    #@2f
    move-result-object v0

    #@30
    invoke-interface {v5, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    #@33
    add-int/lit8 v0, v1, 0x1

    #@35
    move v1, v0

    #@36
    goto :goto_1c

    #@37
    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->wD:Ljava/util/List;

    #@39
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@3c
    move-result-object v3

    #@3d
    move v1, v2

    #@3e
    :goto_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_59

    #@44
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@47
    move-result-object v0

    #@48
    check-cast v0, Lcom/google/android/gms/analytics/ecommerce/Product;

    #@4a
    invoke-static {v1}, Lcom/google/android/gms/analytics/o;->u(I)Ljava/lang/String;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v0, v4}, Lcom/google/android/gms/analytics/ecommerce/Product;->X(Ljava/lang/String;)Ljava/util/Map;

    #@51
    move-result-object v0

    #@52
    invoke-interface {v5, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    #@55
    add-int/lit8 v0, v1, 0x1

    #@57
    move v1, v0

    #@58
    goto :goto_3e

    #@59
    :cond_59
    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->wB:Ljava/util/Map;

    #@5b
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@5e
    move-result-object v0

    #@5f
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@62
    move-result-object v6

    #@63
    move v4, v2

    #@64
    :goto_64
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@67
    move-result v0

    #@68
    if-eqz v0, :cond_d6

    #@6a
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6d
    move-result-object v0

    #@6e
    move-object v1, v0

    #@6f
    check-cast v1, Ljava/util/Map$Entry;

    #@71
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@74
    move-result-object v0

    #@75
    check-cast v0, Ljava/util/List;

    #@77
    invoke-static {v4}, Lcom/google/android/gms/analytics/o;->x(I)Ljava/lang/String;

    #@7a
    move-result-object v7

    #@7b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@7e
    move-result-object v8

    #@7f
    move v3, v2

    #@80
    :goto_80
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@83
    move-result v0

    #@84
    if-eqz v0, :cond_ac

    #@86
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@89
    move-result-object v0

    #@8a
    check-cast v0, Lcom/google/android/gms/analytics/ecommerce/Product;

    #@8c
    new-instance v9, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v9

    #@95
    invoke-static {v3}, Lcom/google/android/gms/analytics/o;->w(I)Ljava/lang/String;

    #@98
    move-result-object v10

    #@99
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v9

    #@9d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v9

    #@a1
    invoke-virtual {v0, v9}, Lcom/google/android/gms/analytics/ecommerce/Product;->X(Ljava/lang/String;)Ljava/util/Map;

    #@a4
    move-result-object v0

    #@a5
    invoke-interface {v5, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    #@a8
    add-int/lit8 v0, v3, 0x1

    #@aa
    move v3, v0

    #@ab
    goto :goto_80

    #@ac
    :cond_ac
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@af
    move-result-object v0

    #@b0
    check-cast v0, Ljava/lang/CharSequence;

    #@b2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@b5
    move-result v0

    #@b6
    if-nez v0, :cond_d2

    #@b8
    new-instance v0, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v0

    #@c1
    const-string v3, "nm"

    #@c3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v0

    #@c7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ca
    move-result-object v0

    #@cb
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@ce
    move-result-object v1

    #@cf
    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d2
    :cond_d2
    add-int/lit8 v0, v4, 0x1

    #@d4
    move v4, v0

    #@d5
    goto :goto_64

    #@d6
    :cond_d6
    return-object v5
.end method

.method protected get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->wz:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public final set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    #@0
    invoke-static {}, Lcom/google/android/gms/analytics/u;->cU()Lcom/google/android/gms/analytics/u;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lcom/google/android/gms/analytics/u$a;->uW:Lcom/google/android/gms/analytics/u$a;

    #@6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V

    #@9
    if-eqz p1, :cond_11

    #@b
    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->wz:Ljava/util/Map;

    #@d
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    :goto_10
    return-object p0

    #@11
    :cond_11
    const-string v0, " HitBuilder.set() called with a null paramName."

    #@13
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@16
    goto :goto_10
.end method

.method public final setAll(Ljava/util/Map;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    #@0
    invoke-static {}, Lcom/google/android/gms/analytics/u;->cU()Lcom/google/android/gms/analytics/u;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lcom/google/android/gms/analytics/u$a;->uX:Lcom/google/android/gms/analytics/u$a;

    #@6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V

    #@9
    if-nez p1, :cond_c

    #@b
    :goto_b
    return-object p0

    #@c
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->wz:Ljava/util/Map;

    #@e
    new-instance v1, Ljava/util/HashMap;

    #@10
    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #@13
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    #@16
    goto :goto_b
.end method

.method public setCampaignParamsFromUrl(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    #@0
    invoke-static {}, Lcom/google/android/gms/analytics/u;->cU()Lcom/google/android/gms/analytics/u;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lcom/google/android/gms/analytics/u$a;->uZ:Lcom/google/android/gms/analytics/u$a;

    #@6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V

    #@9
    invoke-static {p1}, Lcom/google/android/gms/analytics/ak;->V(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_14

    #@13
    :goto_13
    return-object p0

    #@14
    :cond_14
    invoke-static {v0}, Lcom/google/android/gms/analytics/ak;->U(Ljava/lang/String;)Ljava/util/Map;

    #@17
    move-result-object v1

    #@18
    const-string v2, "&cc"

    #@1a
    const-string v0, "utm_content"

    #@1c
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/lang/String;

    #@22
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    #@25
    const-string v2, "&cm"

    #@27
    const-string v0, "utm_medium"

    #@29
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Ljava/lang/String;

    #@2f
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    #@32
    const-string v2, "&cn"

    #@34
    const-string v0, "utm_campaign"

    #@36
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, Ljava/lang/String;

    #@3c
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    #@3f
    const-string v2, "&cs"

    #@41
    const-string v0, "utm_source"

    #@43
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    move-result-object v0

    #@47
    check-cast v0, Ljava/lang/String;

    #@49
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    #@4c
    const-string v2, "&ck"

    #@4e
    const-string v0, "utm_term"

    #@50
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    move-result-object v0

    #@54
    check-cast v0, Ljava/lang/String;

    #@56
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    #@59
    const-string v2, "&ci"

    #@5b
    const-string v0, "utm_id"

    #@5d
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@60
    move-result-object v0

    #@61
    check-cast v0, Ljava/lang/String;

    #@63
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    #@66
    const-string v2, "&gclid"

    #@68
    const-string v0, "gclid"

    #@6a
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6d
    move-result-object v0

    #@6e
    check-cast v0, Ljava/lang/String;

    #@70
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    #@73
    const-string v2, "&dclid"

    #@75
    const-string v0, "dclid"

    #@77
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7a
    move-result-object v0

    #@7b
    check-cast v0, Ljava/lang/String;

    #@7d
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    #@80
    const-string v2, "&gmob_t"

    #@82
    const-string v0, "gmob_t"

    #@84
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@87
    move-result-object v0

    #@88
    check-cast v0, Ljava/lang/String;

    #@8a
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    #@8d
    goto :goto_13
.end method

.method public setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    #@0
    invoke-static {p1}, Lcom/google/android/gms/analytics/o;->s(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    #@7
    return-object p0
.end method

.method public setCustomMetric(IF)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF)TT;"
        }
    .end annotation

    #@0
    invoke-static {p1}, Lcom/google/android/gms/analytics/o;->t(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    #@b
    return-object p0
.end method

.method protected setHitType(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    #@0
    const-string v0, "&t"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    #@5
    return-object p0
.end method

.method public setNewSession()Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    const-string v0, "&sc"

    #@2
    const-string v1, "start"

    #@4
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    #@7
    return-object p0
.end method

.method public setNonInteraction(Z)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    #@0
    const-string v0, "&ni"

    #@2
    invoke-static {p1}, Lcom/google/android/gms/analytics/ak;->v(Z)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    #@9
    return-object p0
.end method

.method public setProductAction(Lcom/google/android/gms/analytics/ecommerce/ProductAction;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/analytics/ecommerce/ProductAction;",
            ")TT;"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->wA:Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    #@2
    return-object p0
.end method

.method public setPromotionAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->wz:Ljava/util/Map;

    #@2
    const-string v1, "&promoa"

    #@4
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    return-object p0
.end method
