.class Lcom/google/android/gms/tagmanager/ba;
.super Ljava/lang/Object;


# direct methods
.method public static bY(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/cq$c;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    new-instance v0, Lorg/json/JSONObject;

    #@2
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    #@5
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->k(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;

    #@8
    move-result-object v1

    #@9
    invoke-static {}, Lcom/google/android/gms/tagmanager/cq$c;->mr()Lcom/google/android/gms/tagmanager/cq$d;

    #@c
    move-result-object v2

    #@d
    const/4 v0, 0x0

    #@e
    :goto_e
    iget-object v3, v1, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    #@10
    array-length v3, v3

    #@11
    if-ge v0, v3, :cond_4d

    #@13
    invoke-static {}, Lcom/google/android/gms/tagmanager/cq$a;->mn()Lcom/google/android/gms/tagmanager/cq$b;

    #@16
    move-result-object v3

    #@17
    sget-object v4, Lcom/google/android/gms/internal/b;->cI:Lcom/google/android/gms/internal/b;

    #@19
    invoke-virtual {v4}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    iget-object v5, v1, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    #@1f
    aget-object v5, v5, v0

    #@21
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/tagmanager/cq$b;->b(Ljava/lang/String;Lcom/google/android/gms/internal/d$a;)Lcom/google/android/gms/tagmanager/cq$b;

    #@24
    move-result-object v3

    #@25
    sget-object v4, Lcom/google/android/gms/internal/b;->cx:Lcom/google/android/gms/internal/b;

    #@27
    invoke-virtual {v4}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-static {}, Lcom/google/android/gms/tagmanager/m;->lk()Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    invoke-static {v5}, Lcom/google/android/gms/tagmanager/dh;->cp(Ljava/lang/String;)Lcom/google/android/gms/internal/d$a;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/tagmanager/cq$b;->b(Ljava/lang/String;Lcom/google/android/gms/internal/d$a;)Lcom/google/android/gms/tagmanager/cq$b;

    #@36
    move-result-object v3

    #@37
    invoke-static {}, Lcom/google/android/gms/tagmanager/m;->ll()Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    iget-object v5, v1, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    #@3d
    aget-object v5, v5, v0

    #@3f
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/tagmanager/cq$b;->b(Ljava/lang/String;Lcom/google/android/gms/internal/d$a;)Lcom/google/android/gms/tagmanager/cq$b;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/cq$b;->mq()Lcom/google/android/gms/tagmanager/cq$a;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tagmanager/cq$d;->a(Lcom/google/android/gms/tagmanager/cq$a;)Lcom/google/android/gms/tagmanager/cq$d;

    #@4a
    add-int/lit8 v0, v0, 0x1

    #@4c
    goto :goto_e

    #@4d
    :cond_4d
    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/cq$d;->mu()Lcom/google/android/gms/tagmanager/cq$c;

    #@50
    move-result-object v0

    #@51
    return-object v0
.end method

.method private static k(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/ba;->l(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method static l(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    instance-of v0, p0, Lorg/json/JSONArray;

    #@2
    if-eqz v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string v1, "JSONArrays are not supported"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    #@e
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1c

    #@14
    new-instance v0, Ljava/lang/RuntimeException;

    #@16
    const-string v1, "JSON nulls are not supported"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    :cond_1c
    instance-of v0, p0, Lorg/json/JSONObject;

    #@1e
    if-eqz v0, :cond_44

    #@20
    check-cast p0, Lorg/json/JSONObject;

    #@22
    new-instance v1, Ljava/util/HashMap;

    #@24
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@27
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    #@2a
    move-result-object v2

    #@2b
    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_43

    #@31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Ljava/lang/String;

    #@37
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@3a
    move-result-object v3

    #@3b
    invoke-static {v3}, Lcom/google/android/gms/tagmanager/ba;->l(Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    move-result-object v3

    #@3f
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    goto :goto_2b

    #@43
    :cond_43
    move-object p0, v1

    #@44
    :cond_44
    return-object p0
.end method
