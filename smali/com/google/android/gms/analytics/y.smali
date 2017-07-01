.class Lcom/google/android/gms/analytics/y;
.super Ljava/lang/Object;


# direct methods
.method static a(Lcom/google/android/gms/analytics/x;J)Ljava/lang/String;
    .registers 10

    #@0
    const-wide/16 v4, 0x0

    #@2
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/x;->dk()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/x;->dm()J

    #@11
    move-result-wide v2

    #@12
    cmp-long v1, v2, v4

    #@14
    if-lez v1, :cond_2f

    #@16
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/x;->dm()J

    #@19
    move-result-wide v2

    #@1a
    sub-long v2, p1, v2

    #@1c
    cmp-long v1, v2, v4

    #@1e
    if-ltz v1, :cond_2f

    #@20
    const-string v1, "&qt"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    const-string v4, "="

    #@28
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2f
    :cond_2f
    const-string v1, "&z"

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    const-string v2, "="

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/x;->dl()J

    #@3e
    move-result-wide v2

    #@3f
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    return-object v0
.end method

.method static encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    :try_start_0
    const-string v0, "UTF-8"

    #@2
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    #@5
    move-result-object v0

    #@6
    return-object v0

    #@7
    :catch_7
    move-exception v0

    #@8
    new-instance v0, Ljava/lang/AssertionError;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string v2, "URL encoding failed for: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@20
    throw v0
.end method

.method static u(Ljava/util/Map;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
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
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v3

    #@d
    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_47

    #@13
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    move-object v1, v0

    #@18
    check-cast v1, Ljava/util/Map$Entry;

    #@1a
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Ljava/lang/String;

    #@20
    const-string v4, "&"

    #@22
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_d

    #@28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    if-eqz v0, :cond_d

    #@2e
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Ljava/lang/String;

    #@34
    const/4 v4, 0x1

    #@35
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3c
    move-result v4

    #@3d
    if-nez v4, :cond_d

    #@3f
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@42
    move-result-object v1

    #@43
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    goto :goto_d

    #@47
    :cond_47
    return-object v2
.end method
