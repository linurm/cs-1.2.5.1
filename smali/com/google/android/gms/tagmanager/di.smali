.class Lcom/google/android/gms/tagmanager/di;
.super Lcom/google/android/gms/tagmanager/df;


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final aiA:Ljava/lang/String;

.field private static final aiB:Ljava/lang/String;

.field private static aiC:Ljava/util/Map;
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

.field private static aiD:Ljava/util/Map;
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

.field private static final aiw:Ljava/lang/String;

.field private static final aix:Ljava/lang/String;

.field private static final aiy:Ljava/lang/String;

.field private static final aiz:Ljava/lang/String;


# instance fields
.field private final aeu:Lcom/google/android/gms/tagmanager/DataLayer;

.field private final aiE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final aiF:Lcom/google/android/gms/tagmanager/de;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/internal/a;->aF:Lcom/google/android/gms/internal/a;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/google/android/gms/tagmanager/di;->ID:Ljava/lang/String;

    #@8
    sget-object v0, Lcom/google/android/gms/internal/b;->aV:Lcom/google/android/gms/internal/b;

    #@a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    sput-object v0, Lcom/google/android/gms/tagmanager/di;->aiw:Ljava/lang/String;

    #@10
    sget-object v0, Lcom/google/android/gms/internal/b;->be:Lcom/google/android/gms/internal/b;

    #@12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    sput-object v0, Lcom/google/android/gms/tagmanager/di;->aix:Ljava/lang/String;

    #@18
    sget-object v0, Lcom/google/android/gms/internal/b;->bd:Lcom/google/android/gms/internal/b;

    #@1a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    sput-object v0, Lcom/google/android/gms/tagmanager/di;->aiy:Ljava/lang/String;

    #@20
    sget-object v0, Lcom/google/android/gms/internal/b;->eg:Lcom/google/android/gms/internal/b;

    #@22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    sput-object v0, Lcom/google/android/gms/tagmanager/di;->aiz:Ljava/lang/String;

    #@28
    sget-object v0, Lcom/google/android/gms/internal/b;->ei:Lcom/google/android/gms/internal/b;

    #@2a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    sput-object v0, Lcom/google/android/gms/tagmanager/di;->aiA:Ljava/lang/String;

    #@30
    sget-object v0, Lcom/google/android/gms/internal/b;->ek:Lcom/google/android/gms/internal/b;

    #@32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    sput-object v0, Lcom/google/android/gms/tagmanager/di;->aiB:Ljava/lang/String;

    #@38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;)V
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/tagmanager/de;

    #@2
    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/de;-><init>(Landroid/content/Context;)V

    #@5
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/tagmanager/di;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/tagmanager/de;)V

    #@8
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/tagmanager/de;)V
    .registers 6

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/di;->ID:Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    new-array v1, v1, [Ljava/lang/String;

    #@5
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/df;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    #@8
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/di;->aeu:Lcom/google/android/gms/tagmanager/DataLayer;

    #@a
    iput-object p3, p0, Lcom/google/android/gms/tagmanager/di;->aiF:Lcom/google/android/gms/tagmanager/de;

    #@c
    new-instance v0, Ljava/util/HashSet;

    #@e
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@11
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/di;->aiE:Ljava/util/Set;

    #@13
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/di;->aiE:Ljava/util/Set;

    #@15
    const-string v1, ""

    #@17
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1a
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/di;->aiE:Ljava/util/Set;

    #@1c
    const-string v1, "0"

    #@1e
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@21
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/di;->aiE:Ljava/util/Set;

    #@23
    const-string v1, "false"

    #@25
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@28
    return-void
.end method

.method private G(Ljava/util/Map;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/d$a;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/di;->aiA:Ljava/lang/String;

    #@2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@8
    if-eqz v0, :cond_f

    #@a
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/di;->c(Lcom/google/android/gms/internal/d$a;)Ljava/util/Map;

    #@d
    move-result-object v0

    #@e
    :goto_e
    return-object v0

    #@f
    :cond_f
    sget-object v0, Lcom/google/android/gms/tagmanager/di;->aiC:Ljava/util/Map;

    #@11
    if-nez v0, :cond_44

    #@13
    new-instance v0, Ljava/util/HashMap;

    #@15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@18
    const-string v1, "transactionId"

    #@1a
    const-string v2, "&ti"

    #@1c
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    const-string v1, "transactionAffiliation"

    #@21
    const-string v2, "&ta"

    #@23
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    const-string v1, "transactionTax"

    #@28
    const-string v2, "&tt"

    #@2a
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    const-string v1, "transactionShipping"

    #@2f
    const-string v2, "&ts"

    #@31
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    const-string v1, "transactionTotal"

    #@36
    const-string v2, "&tr"

    #@38
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    const-string v1, "transactionCurrency"

    #@3d
    const-string v2, "&cu"

    #@3f
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    sput-object v0, Lcom/google/android/gms/tagmanager/di;->aiC:Ljava/util/Map;

    #@44
    :cond_44
    sget-object v0, Lcom/google/android/gms/tagmanager/di;->aiC:Ljava/util/Map;

    #@46
    goto :goto_e
.end method

.method private H(Ljava/util/Map;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/d$a;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/di;->aiB:Ljava/lang/String;

    #@2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@8
    if-eqz v0, :cond_f

    #@a
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/di;->c(Lcom/google/android/gms/internal/d$a;)Ljava/util/Map;

    #@d
    move-result-object v0

    #@e
    :goto_e
    return-object v0

    #@f
    :cond_f
    sget-object v0, Lcom/google/android/gms/tagmanager/di;->aiD:Ljava/util/Map;

    #@11
    if-nez v0, :cond_44

    #@13
    new-instance v0, Ljava/util/HashMap;

    #@15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@18
    const-string v1, "name"

    #@1a
    const-string v2, "&in"

    #@1c
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    const-string v1, "sku"

    #@21
    const-string v2, "&ic"

    #@23
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    const-string v1, "category"

    #@28
    const-string v2, "&iv"

    #@2a
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    const-string v1, "price"

    #@2f
    const-string v2, "&ip"

    #@31
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    const-string v1, "quantity"

    #@36
    const-string v2, "&iq"

    #@38
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    const-string v1, "currency"

    #@3d
    const-string v2, "&cu"

    #@3f
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    sput-object v0, Lcom/google/android/gms/tagmanager/di;->aiD:Ljava/util/Map;

    #@44
    :cond_44
    sget-object v0, Lcom/google/android/gms/tagmanager/di;->aiD:Ljava/util/Map;

    #@46
    goto :goto_e
.end method

.method private a(Lcom/google/android/gms/analytics/Tracker;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/analytics/Tracker;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/d$a;",
            ">;)V"
        }
    .end annotation

    #@0
    const-string v1, "transactionId"

    #@2
    invoke-direct {p0, v1}, Lcom/google/android/gms/tagmanager/di;->cu(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v4

    #@6
    if-nez v4, :cond_e

    #@8
    const-string v1, "Cannot find transactionId in data layer."

    #@a
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@d
    :cond_d
    :goto_d
    return-void

    #@e
    :cond_e
    new-instance v5, Ljava/util/LinkedList;

    #@10
    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    #@13
    :try_start_13
    sget-object v1, Lcom/google/android/gms/tagmanager/di;->aiy:Ljava/lang/String;

    #@15
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lcom/google/android/gms/internal/d$a;

    #@1b
    invoke-direct {p0, v1}, Lcom/google/android/gms/tagmanager/di;->p(Lcom/google/android/gms/internal/d$a;)Ljava/util/Map;

    #@1e
    move-result-object v3

    #@1f
    const-string v1, "&t"

    #@21
    const-string v2, "transaction"

    #@23
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/di;->G(Ljava/util/Map;)Ljava/util/Map;

    #@29
    move-result-object v1

    #@2a
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@2d
    move-result-object v1

    #@2e
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v6

    #@32
    :goto_32
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v1

    #@36
    if-eqz v1, :cond_59

    #@38
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v1

    #@3c
    check-cast v1, Ljava/util/Map$Entry;

    #@3e
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@41
    move-result-object v2

    #@42
    check-cast v2, Ljava/lang/String;

    #@44
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@47
    move-result-object v1

    #@48
    check-cast v1, Ljava/lang/String;

    #@4a
    invoke-direct {p0, v1}, Lcom/google/android/gms/tagmanager/di;->cu(Ljava/lang/String;)Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/tagmanager/di;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_51} :catch_52

    #@51
    goto :goto_32

    #@52
    :catch_52
    move-exception v1

    #@53
    const-string v2, "Unable to send transaction"

    #@55
    invoke-static {v2, v1}, Lcom/google/android/gms/tagmanager/bh;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@58
    goto :goto_d

    #@59
    :cond_59
    :try_start_59
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5c
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/di;->ne()Ljava/util/List;

    #@5f
    move-result-object v1

    #@60
    if-eqz v1, :cond_cc

    #@62
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@65
    move-result-object v6

    #@66
    :goto_66
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@69
    move-result v1

    #@6a
    if-eqz v1, :cond_cc

    #@6c
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6f
    move-result-object v1

    #@70
    move-object v0, v1

    #@71
    check-cast v0, Ljava/util/Map;

    #@73
    move-object v3, v0

    #@74
    const-string v1, "name"

    #@76
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@79
    move-result-object v1

    #@7a
    if-nez v1, :cond_82

    #@7c
    const-string v1, "Unable to send transaction item hit due to missing \'name\' field."

    #@7e
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@81
    goto :goto_d

    #@82
    :cond_82
    sget-object v1, Lcom/google/android/gms/tagmanager/di;->aiy:Ljava/lang/String;

    #@84
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@87
    move-result-object v1

    #@88
    check-cast v1, Lcom/google/android/gms/internal/d$a;

    #@8a
    invoke-direct {p0, v1}, Lcom/google/android/gms/tagmanager/di;->p(Lcom/google/android/gms/internal/d$a;)Ljava/util/Map;

    #@8d
    move-result-object v7

    #@8e
    const-string v1, "&t"

    #@90
    const-string v2, "item"

    #@92
    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@95
    const-string v1, "&ti"

    #@97
    invoke-interface {v7, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9a
    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/di;->H(Ljava/util/Map;)Ljava/util/Map;

    #@9d
    move-result-object v1

    #@9e
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@a1
    move-result-object v1

    #@a2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@a5
    move-result-object v8

    #@a6
    :goto_a6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@a9
    move-result v1

    #@aa
    if-eqz v1, :cond_c8

    #@ac
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@af
    move-result-object v1

    #@b0
    move-object v0, v1

    #@b1
    check-cast v0, Ljava/util/Map$Entry;

    #@b3
    move-object v2, v0

    #@b4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@b7
    move-result-object v1

    #@b8
    check-cast v1, Ljava/lang/String;

    #@ba
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@bd
    move-result-object v2

    #@be
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c1
    move-result-object v2

    #@c2
    check-cast v2, Ljava/lang/String;

    #@c4
    invoke-direct {p0, v7, v1, v2}, Lcom/google/android/gms/tagmanager/di;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    #@c7
    goto :goto_a6

    #@c8
    :cond_c8
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@cb
    goto :goto_66

    #@cc
    :cond_cc
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@cf
    move-result-object v2

    #@d0
    :goto_d0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@d3
    move-result v1

    #@d4
    if-eqz v1, :cond_d

    #@d6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d9
    move-result-object v1

    #@da
    check-cast v1, Ljava/util/Map;

    #@dc
    invoke-virtual {p1, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V
    :try_end_df
    .catch Ljava/lang/IllegalArgumentException; {:try_start_59 .. :try_end_df} :catch_52

    #@df
    goto :goto_d0
.end method

.method private b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    if-eqz p3, :cond_5

    #@2
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    :cond_5
    return-void
.end method

.method private c(Lcom/google/android/gms/internal/d$a;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/d$a;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/dh;->o(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    instance-of v1, v0, Ljava/util/Map;

    #@6
    if-nez v1, :cond_a

    #@8
    const/4 v0, 0x0

    #@9
    :goto_9
    return-object v0

    #@a
    :cond_a
    check-cast v0, Ljava/util/Map;

    #@c
    new-instance v1, Ljava/util/LinkedHashMap;

    #@e
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    #@11
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@14
    move-result-object v0

    #@15
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v2

    #@19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_39

    #@1f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Ljava/util/Map$Entry;

    #@25
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    goto :goto_19

    #@39
    :cond_39
    move-object v0, v1

    #@3a
    goto :goto_9
.end method

.method private cu(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/di;->aeu:Lcom/google/android/gms/tagmanager/DataLayer;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/DataLayer;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_a

    #@8
    const/4 v0, 0x0

    #@9
    :goto_9
    return-object v0

    #@a
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    goto :goto_9
.end method

.method private e(Ljava/util/Map;Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/d$a;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    #@0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@6
    if-nez v0, :cond_a

    #@8
    const/4 v0, 0x0

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->n(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Boolean;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@11
    move-result v0

    #@12
    goto :goto_9
.end method

.method private ne()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/di;->aeu:Lcom/google/android/gms/tagmanager/DataLayer;

    #@2
    const-string v1, "transactionProducts"

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    if-nez v1, :cond_c

    #@a
    const/4 v1, 0x0

    #@b
    :goto_b
    return-object v1

    #@c
    :cond_c
    instance-of v0, v1, Ljava/util/List;

    #@e
    if-nez v0, :cond_18

    #@10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string v1, "transactionProducts should be of type List."

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    :cond_18
    move-object v0, v1

    #@19
    check-cast v0, Ljava/util/List;

    #@1b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v0

    #@1f
    :cond_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_35

    #@25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    instance-of v2, v2, Ljava/util/Map;

    #@2b
    if-nez v2, :cond_1f

    #@2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2f
    const-string v1, "Each element of transactionProducts should be of type Map."

    #@31
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0

    #@35
    :cond_35
    check-cast v1, Ljava/util/List;

    #@37
    goto :goto_b
.end method

.method private p(Lcom/google/android/gms/internal/d$a;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/d$a;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    if-nez p1, :cond_8

    #@2
    new-instance v0, Ljava/util/HashMap;

    #@4
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@7
    :goto_7
    return-object v0

    #@8
    :cond_8
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/di;->c(Lcom/google/android/gms/internal/d$a;)Ljava/util/Map;

    #@b
    move-result-object v1

    #@c
    if-nez v1, :cond_14

    #@e
    new-instance v0, Ljava/util/HashMap;

    #@10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@13
    goto :goto_7

    #@14
    :cond_14
    const-string v0, "&aip"

    #@16
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Ljava/lang/String;

    #@1c
    if-eqz v0, :cond_2f

    #@1e
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/di;->aiE:Ljava/util/Set;

    #@20
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_2f

    #@2a
    const-string v0, "&aip"

    #@2c
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    :cond_2f
    move-object v0, v1

    #@30
    goto :goto_7
.end method


# virtual methods
.method public y(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/d$a;",
            ">;)V"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/di;->aiF:Lcom/google/android/gms/tagmanager/de;

    #@2
    const-string v1, "_GTM_DEFAULT_TRACKER_"

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/de;->cm(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    #@7
    move-result-object v1

    #@8
    sget-object v0, Lcom/google/android/gms/tagmanager/di;->aix:Ljava/lang/String;

    #@a
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/tagmanager/di;->e(Ljava/util/Map;Ljava/lang/String;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_20

    #@10
    sget-object v0, Lcom/google/android/gms/tagmanager/di;->aiy:Ljava/lang/String;

    #@12
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@18
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/di;->p(Lcom/google/android/gms/internal/d$a;)Ljava/util/Map;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    #@1f
    :goto_1f
    return-void

    #@20
    :cond_20
    sget-object v0, Lcom/google/android/gms/tagmanager/di;->aiz:Ljava/lang/String;

    #@22
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/tagmanager/di;->e(Ljava/util/Map;Ljava/lang/String;)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_2c

    #@28
    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/tagmanager/di;->a(Lcom/google/android/gms/analytics/Tracker;Ljava/util/Map;)V

    #@2b
    goto :goto_1f

    #@2c
    :cond_2c
    const-string v0, "Ignoring unknown tag."

    #@2e
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@31
    goto :goto_1f
.end method
