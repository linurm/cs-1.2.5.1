.class Lcom/google/android/gms/tagmanager/w;
.super Lcom/google/android/gms/tagmanager/df;


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final VALUE:Ljava/lang/String;

.field private static final aft:Ljava/lang/String;


# instance fields
.field private final aeu:Lcom/google/android/gms/tagmanager/DataLayer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/internal/a;->af:Lcom/google/android/gms/internal/a;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/google/android/gms/tagmanager/w;->ID:Ljava/lang/String;

    #@8
    sget-object v0, Lcom/google/android/gms/internal/b;->ew:Lcom/google/android/gms/internal/b;

    #@a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    sput-object v0, Lcom/google/android/gms/tagmanager/w;->VALUE:Ljava/lang/String;

    #@10
    sget-object v0, Lcom/google/android/gms/internal/b;->bD:Lcom/google/android/gms/internal/b;

    #@12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    sput-object v0, Lcom/google/android/gms/tagmanager/w;->aft:Ljava/lang/String;

    #@18
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/tagmanager/DataLayer;)V
    .registers 6

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/w;->ID:Ljava/lang/String;

    #@2
    const/4 v1, 0x1

    #@3
    new-array v1, v1, [Ljava/lang/String;

    #@5
    const/4 v2, 0x0

    #@6
    sget-object v3, Lcom/google/android/gms/tagmanager/w;->VALUE:Ljava/lang/String;

    #@8
    aput-object v3, v1, v2

    #@a
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/df;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    #@d
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/w;->aeu:Lcom/google/android/gms/tagmanager/DataLayer;

    #@f
    return-void
.end method

.method private a(Lcom/google/android/gms/internal/d$a;)V
    .registers 4

    #@0
    if-eqz p1, :cond_8

    #@2
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->mX()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-ne p1, v0, :cond_9

    #@8
    :cond_8
    :goto_8
    return-void

    #@9
    :cond_9
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/dh;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->nc()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    if-eq v0, v1, :cond_8

    #@13
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/w;->aeu:Lcom/google/android/gms/tagmanager/DataLayer;

    #@15
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->bN(Ljava/lang/String;)V

    #@18
    goto :goto_8
.end method

.method private b(Lcom/google/android/gms/internal/d$a;)V
    .registers 5

    #@0
    if-eqz p1, :cond_8

    #@2
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->mX()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-ne p1, v0, :cond_9

    #@8
    :cond_8
    return-void

    #@9
    :cond_9
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/dh;->o(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    instance-of v1, v0, Ljava/util/List;

    #@f
    if-eqz v1, :cond_8

    #@11
    check-cast v0, Ljava/util/List;

    #@13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v1

    #@17
    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_8

    #@1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    instance-of v2, v0, Ljava/util/Map;

    #@23
    if-eqz v2, :cond_17

    #@25
    check-cast v0, Ljava/util/Map;

    #@27
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/w;->aeu:Lcom/google/android/gms/tagmanager/DataLayer;

    #@29
    invoke-virtual {v2, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    #@2c
    goto :goto_17
.end method


# virtual methods
.method public y(Ljava/util/Map;)V
    .registers 3
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
    sget-object v0, Lcom/google/android/gms/tagmanager/w;->VALUE:Ljava/lang/String;

    #@2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@8
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/w;->b(Lcom/google/android/gms/internal/d$a;)V

    #@b
    sget-object v0, Lcom/google/android/gms/tagmanager/w;->aft:Ljava/lang/String;

    #@d
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@13
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/w;->a(Lcom/google/android/gms/internal/d$a;)V

    #@16
    return-void
.end method
