.class Lcom/google/android/gms/tagmanager/s;
.super Lcom/google/android/gms/tagmanager/aj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/s$a;
    }
.end annotation


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final aeW:Ljava/lang/String;

.field private static final aem:Ljava/lang/String;


# instance fields
.field private final aeX:Lcom/google/android/gms/tagmanager/s$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/internal/a;->J:Lcom/google/android/gms/internal/a;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/google/android/gms/tagmanager/s;->ID:Ljava/lang/String;

    #@8
    sget-object v0, Lcom/google/android/gms/internal/b;->cy:Lcom/google/android/gms/internal/b;

    #@a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    sput-object v0, Lcom/google/android/gms/tagmanager/s;->aeW:Ljava/lang/String;

    #@10
    sget-object v0, Lcom/google/android/gms/internal/b;->aX:Lcom/google/android/gms/internal/b;

    #@12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    sput-object v0, Lcom/google/android/gms/tagmanager/s;->aem:Ljava/lang/String;

    #@18
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/tagmanager/s$a;)V
    .registers 6

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/s;->ID:Ljava/lang/String;

    #@2
    const/4 v1, 0x1

    #@3
    new-array v1, v1, [Ljava/lang/String;

    #@5
    const/4 v2, 0x0

    #@6
    sget-object v3, Lcom/google/android/gms/tagmanager/s;->aeW:Ljava/lang/String;

    #@8
    aput-object v3, v1, v2

    #@a
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/aj;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    #@d
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/s;->aeX:Lcom/google/android/gms/tagmanager/s$a;

    #@f
    return-void
.end method


# virtual methods
.method public lh()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public w(Ljava/util/Map;)Lcom/google/android/gms/internal/d$a;
    .registers 7
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
    sget-object v0, Lcom/google/android/gms/tagmanager/s;->aeW:Ljava/lang/String;

    #@2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@8
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    new-instance v2, Ljava/util/HashMap;

    #@e
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@11
    sget-object v0, Lcom/google/android/gms/tagmanager/s;->aem:Ljava/lang/String;

    #@13
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@19
    if-eqz v0, :cond_53

    #@1b
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->o(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    instance-of v3, v0, Ljava/util/Map;

    #@21
    if-nez v3, :cond_2d

    #@23
    const-string v0, "FunctionCallMacro: expected ADDITIONAL_PARAMS to be a map."

    #@25
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@28
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->nd()Lcom/google/android/gms/internal/d$a;

    #@2b
    move-result-object v0

    #@2c
    :goto_2c
    return-object v0

    #@2d
    :cond_2d
    check-cast v0, Ljava/util/Map;

    #@2f
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@32
    move-result-object v0

    #@33
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@36
    move-result-object v3

    #@37
    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_53

    #@3d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@40
    move-result-object v0

    #@41
    check-cast v0, Ljava/util/Map$Entry;

    #@43
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@4e
    move-result-object v0

    #@4f
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@52
    goto :goto_37

    #@53
    :cond_53
    :try_start_53
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/s;->aeX:Lcom/google/android/gms/tagmanager/s$a;

    #@55
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/tagmanager/s$a;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    #@58
    move-result-object v0

    #@59
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5c} :catch_5e

    #@5c
    move-result-object v0

    #@5d
    goto :goto_2c

    #@5e
    :catch_5e
    move-exception v0

    #@5f
    new-instance v2, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string v3, "Custom macro/tag "

    #@66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v2

    #@6a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v1

    #@6e
    const-string v2, " threw exception "

    #@70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v1

    #@74
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@77
    move-result-object v0

    #@78
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v0

    #@7c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v0

    #@80
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@83
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->nd()Lcom/google/android/gms/internal/d$a;

    #@86
    move-result-object v0

    #@87
    goto :goto_2c
.end method
