.class abstract Lcom/google/android/gms/tagmanager/cc;
.super Lcom/google/android/gms/tagmanager/aj;


# static fields
.field private static final afy:Ljava/lang/String;

.field private static final agv:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/internal/b;->bi:Lcom/google/android/gms/internal/b;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/google/android/gms/tagmanager/cc;->afy:Ljava/lang/String;

    #@8
    sget-object v0, Lcom/google/android/gms/internal/b;->bj:Lcom/google/android/gms/internal/b;

    #@a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    sput-object v0, Lcom/google/android/gms/tagmanager/cc;->agv:Ljava/lang/String;

    #@10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const/4 v1, 0x0

    #@4
    sget-object v2, Lcom/google/android/gms/tagmanager/cc;->afy:Ljava/lang/String;

    #@6
    aput-object v2, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    sget-object v2, Lcom/google/android/gms/tagmanager/cc;->agv:Ljava/lang/String;

    #@b
    aput-object v2, v0, v1

    #@d
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/tagmanager/aj;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    #@10
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/internal/d$a;Lcom/google/android/gms/internal/d$a;Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/d$a;",
            "Lcom/google/android/gms/internal/d$a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/d$a;",
            ">;)Z"
        }
    .end annotation
.end method

.method public lh()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public w(Ljava/util/Map;)Lcom/google/android/gms/internal/d$a;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/d$a;",
            ">;)",
            "Lcom/google/android/gms/internal/d$a;"
        }
    .end annotation

    #@0
    const/4 v2, 0x0

    #@1
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@4
    move-result-object v0

    #@5
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_24

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@15
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->nd()Lcom/google/android/gms/internal/d$a;

    #@18
    move-result-object v3

    #@19
    if-ne v0, v3, :cond_9

    #@1b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1e
    move-result-object v0

    #@1f
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;

    #@22
    move-result-object v0

    #@23
    :goto_23
    return-object v0

    #@24
    :cond_24
    sget-object v0, Lcom/google/android/gms/tagmanager/cc;->afy:Ljava/lang/String;

    #@26
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@2c
    sget-object v1, Lcom/google/android/gms/tagmanager/cc;->agv:Ljava/lang/String;

    #@2e
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    move-result-object v1

    #@32
    check-cast v1, Lcom/google/android/gms/internal/d$a;

    #@34
    if-eqz v0, :cond_38

    #@36
    if-nez v1, :cond_42

    #@38
    :cond_38
    move v0, v2

    #@39
    :goto_39
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3c
    move-result-object v0

    #@3d
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;

    #@40
    move-result-object v0

    #@41
    goto :goto_23

    #@42
    :cond_42
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/tagmanager/cc;->a(Lcom/google/android/gms/internal/d$a;Lcom/google/android/gms/internal/d$a;Ljava/util/Map;)Z

    #@45
    move-result v0

    #@46
    goto :goto_39
.end method
