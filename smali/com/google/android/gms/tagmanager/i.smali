.class Lcom/google/android/gms/tagmanager/i;
.super Lcom/google/android/gms/tagmanager/df;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/i$a;
    }
.end annotation


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final URL:Ljava/lang/String;

.field private static final aem:Ljava/lang/String;

.field private static final aen:Ljava/lang/String;

.field static final aeo:Ljava/lang/String;

.field private static final aep:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final aeq:Lcom/google/android/gms/tagmanager/i$a;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/a;->ap:Lcom/google/android/gms/internal/a;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/google/android/gms/tagmanager/i;->ID:Ljava/lang/String;

    #@8
    sget-object v0, Lcom/google/android/gms/internal/b;->eo:Lcom/google/android/gms/internal/b;

    #@a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    sput-object v0, Lcom/google/android/gms/tagmanager/i;->URL:Ljava/lang/String;

    #@10
    sget-object v0, Lcom/google/android/gms/internal/b;->aX:Lcom/google/android/gms/internal/b;

    #@12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    sput-object v0, Lcom/google/android/gms/tagmanager/i;->aem:Ljava/lang/String;

    #@18
    sget-object v0, Lcom/google/android/gms/internal/b;->en:Lcom/google/android/gms/internal/b;

    #@1a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    sput-object v0, Lcom/google/android/gms/tagmanager/i;->aen:Ljava/lang/String;

    #@20
    new-instance v0, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string v1, "gtm_"

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    sget-object v1, Lcom/google/android/gms/tagmanager/i;->ID:Ljava/lang/String;

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    const-string v1, "_unrepeatable"

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    sput-object v0, Lcom/google/android/gms/tagmanager/i;->aeo:Ljava/lang/String;

    #@3d
    new-instance v0, Ljava/util/HashSet;

    #@3f
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@42
    sput-object v0, Lcom/google/android/gms/tagmanager/i;->aep:Ljava/util/Set;

    #@44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/tagmanager/i$1;

    #@2
    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/i$1;-><init>(Landroid/content/Context;)V

    #@5
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/tagmanager/i;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/i$a;)V

    #@8
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/i$a;)V
    .registers 7

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/i;->ID:Ljava/lang/String;

    #@2
    const/4 v1, 0x1

    #@3
    new-array v1, v1, [Ljava/lang/String;

    #@5
    const/4 v2, 0x0

    #@6
    sget-object v3, Lcom/google/android/gms/tagmanager/i;->URL:Ljava/lang/String;

    #@8
    aput-object v3, v1, v2

    #@a
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/df;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    #@d
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/i;->aeq:Lcom/google/android/gms/tagmanager/i$a;

    #@f
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/i;->mContext:Landroid/content/Context;

    #@11
    return-void
.end method

.method private bB(Ljava/lang/String;)Z
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    monitor-enter p0

    #@2
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/i;->bD(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_16

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_a

    #@8
    :goto_8
    monitor-exit p0

    #@9
    return v0

    #@a
    :cond_a
    :try_start_a
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/i;->bC(Ljava/lang/String;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_19

    #@10
    sget-object v1, Lcom/google/android/gms/tagmanager/i;->aep:Ljava/util/Set;

    #@12
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_16

    #@15
    goto :goto_8

    #@16
    :catchall_16
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0

    #@19
    :cond_19
    const/4 v0, 0x0

    #@1a
    goto :goto_8
.end method


# virtual methods
.method bC(Ljava/lang/String;)Z
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/i;->mContext:Landroid/content/Context;

    #@2
    sget-object v1, Lcom/google/android/gms/tagmanager/i;->aeo:Ljava/lang/String;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method bD(Ljava/lang/String;)Z
    .registers 3

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/i;->aep:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public y(Ljava/util/Map;)V
    .registers 8
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
    sget-object v0, Lcom/google/android/gms/tagmanager/i;->aen:Ljava/lang/String;

    #@2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_1e

    #@8
    sget-object v0, Lcom/google/android/gms/tagmanager/i;->aen:Ljava/lang/String;

    #@a
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@10
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    move-object v1, v0

    #@15
    :goto_15
    if-eqz v1, :cond_21

    #@17
    invoke-direct {p0, v1}, Lcom/google/android/gms/tagmanager/i;->bB(Ljava/lang/String;)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_21

    #@1d
    :cond_1d
    :goto_1d
    return-void

    #@1e
    :cond_1e
    const/4 v0, 0x0

    #@1f
    move-object v1, v0

    #@20
    goto :goto_15

    #@21
    :cond_21
    sget-object v0, Lcom/google/android/gms/tagmanager/i;->URL:Ljava/lang/String;

    #@23
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@29
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@34
    move-result-object v2

    #@35
    sget-object v0, Lcom/google/android/gms/tagmanager/i;->aem:Ljava/lang/String;

    #@37
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@3d
    if-eqz v0, :cond_c3

    #@3f
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->o(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Object;

    #@42
    move-result-object v0

    #@43
    instance-of v3, v0, Ljava/util/List;

    #@45
    if-nez v3, :cond_66

    #@47
    new-instance v0, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string v1, "ArbitraryPixel: additional params not a list: not sending partial hit: "

    #@4e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@55
    move-result-object v1

    #@56
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v0

    #@62
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@65
    goto :goto_1d

    #@66
    :cond_66
    check-cast v0, Ljava/util/List;

    #@68
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@6b
    move-result-object v3

    #@6c
    :cond_6c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@6f
    move-result v0

    #@70
    if-eqz v0, :cond_c3

    #@72
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@75
    move-result-object v0

    #@76
    instance-of v4, v0, Ljava/util/Map;

    #@78
    if-nez v4, :cond_99

    #@7a
    new-instance v0, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string v1, "ArbitraryPixel: additional params contains non-map: not sending partial hit: "

    #@81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v0

    #@85
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@88
    move-result-object v1

    #@89
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@8c
    move-result-object v1

    #@8d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v0

    #@91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v0

    #@95
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@98
    goto :goto_1d

    #@99
    :cond_99
    check-cast v0, Ljava/util/Map;

    #@9b
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@9e
    move-result-object v0

    #@9f
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@a2
    move-result-object v4

    #@a3
    :goto_a3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@a6
    move-result v0

    #@a7
    if-eqz v0, :cond_6c

    #@a9
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ac
    move-result-object v0

    #@ad
    check-cast v0, Ljava/util/Map$Entry;

    #@af
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@b2
    move-result-object v5

    #@b3
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@b6
    move-result-object v5

    #@b7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@ba
    move-result-object v0

    #@bb
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@be
    move-result-object v0

    #@bf
    invoke-virtual {v2, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@c2
    goto :goto_a3

    #@c3
    :cond_c3
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@c6
    move-result-object v0

    #@c7
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@ca
    move-result-object v0

    #@cb
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/i;->aeq:Lcom/google/android/gms/tagmanager/i$a;

    #@cd
    invoke-interface {v2}, Lcom/google/android/gms/tagmanager/i$a;->li()Lcom/google/android/gms/tagmanager/aq;

    #@d0
    move-result-object v2

    #@d1
    invoke-interface {v2, v0}, Lcom/google/android/gms/tagmanager/aq;->bR(Ljava/lang/String;)Z

    #@d4
    new-instance v2, Ljava/lang/StringBuilder;

    #@d6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d9
    const-string v3, "ArbitraryPixel: url = "

    #@db
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v2

    #@df
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v0

    #@e3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e6
    move-result-object v0

    #@e7
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V

    #@ea
    if-eqz v1, :cond_1d

    #@ec
    const-class v0, Lcom/google/android/gms/tagmanager/i;

    #@ee
    monitor-enter v0

    #@ef
    :try_start_ef
    sget-object v0, Lcom/google/android/gms/tagmanager/i;->aep:Ljava/util/Set;

    #@f1
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@f4
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/i;->mContext:Landroid/content/Context;

    #@f6
    sget-object v2, Lcom/google/android/gms/tagmanager/i;->aeo:Ljava/lang/String;

    #@f8
    const-string v3, "true"

    #@fa
    invoke-static {v0, v2, v1, v3}, Lcom/google/android/gms/tagmanager/cy;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@fd
    const-class v0, Lcom/google/android/gms/tagmanager/i;

    #@ff
    monitor-exit v0

    #@100
    goto/16 :goto_1d

    #@102
    :catchall_102
    move-exception v0

    #@103
    const-class v1, Lcom/google/android/gms/tagmanager/i;

    #@105
    monitor-exit v1
    :try_end_106
    .catchall {:try_start_ef .. :try_end_106} :catchall_102

    #@106
    throw v0
.end method
