.class public Lcom/google/android/gms/analytics/ecommerce/Product;
.super Ljava/lang/Object;


# instance fields
.field xF:Ljava/util/Map;
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
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/analytics/ecommerce/Product;->xF:Ljava/util/Map;

    #@a
    return-void
.end method


# virtual methods
.method public X(Ljava/lang/String;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v2, Ljava/util/HashMap;

    #@2
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/analytics/ecommerce/Product;->xF:Ljava/util/Map;

    #@7
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@a
    move-result-object v0

    #@b
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v3

    #@f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_3a

    #@15
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/util/Map$Entry;

    #@1b
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    check-cast v1, Ljava/lang/String;

    #@2a
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    goto :goto_f

    #@3a
    :cond_3a
    return-object v2
.end method

.method put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    const-string v0, "Name should be non-null"

    #@2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    iget-object v0, p0, Lcom/google/android/gms/analytics/ecommerce/Product;->xF:Ljava/util/Map;

    #@7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    return-void
.end method

.method public setBrand(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;
    .registers 3

    #@0
    const-string v0, "br"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/ecommerce/Product;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;
    .registers 3

    #@0
    const-string v0, "ca"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/ecommerce/Product;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-object p0
.end method

.method public setCouponCode(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;
    .registers 3

    #@0
    const-string v0, "cc"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/ecommerce/Product;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-object p0
.end method

.method public setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;
    .registers 4

    #@0
    invoke-static {p1}, Lcom/google/android/gms/analytics/o;->y(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/analytics/ecommerce/Product;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    return-object p0
.end method

.method public setCustomMetric(II)Lcom/google/android/gms/analytics/ecommerce/Product;
    .registers 5

    #@0
    invoke-static {p1}, Lcom/google/android/gms/analytics/o;->z(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/ecommerce/Product;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;
    .registers 3

    #@0
    const-string v0, "id"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/ecommerce/Product;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;
    .registers 3

    #@0
    const-string v0, "nm"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/ecommerce/Product;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-object p0
.end method

.method public setPosition(I)Lcom/google/android/gms/analytics/ecommerce/Product;
    .registers 4

    #@0
    const-string v0, "ps"

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/ecommerce/Product;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    return-object p0
.end method

.method public setPrice(D)Lcom/google/android/gms/analytics/ecommerce/Product;
    .registers 6

    #@0
    const-string v0, "pr"

    #@2
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/ecommerce/Product;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    return-object p0
.end method

.method public setQuantity(I)Lcom/google/android/gms/analytics/ecommerce/Product;
    .registers 4

    #@0
    const-string v0, "qt"

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/ecommerce/Product;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    return-object p0
.end method

.method public setVariant(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;
    .registers 3

    #@0
    const-string v0, "va"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/ecommerce/Product;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-object p0
.end method
