.class Lcom/google/android/gms/tagmanager/ce;
.super Lcom/google/android/gms/tagmanager/aj;


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final agF:Ljava/lang/String;

.field private static final agG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/internal/a;->O:Lcom/google/android/gms/internal/a;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/google/android/gms/tagmanager/ce;->ID:Ljava/lang/String;

    #@8
    sget-object v0, Lcom/google/android/gms/internal/b;->da:Lcom/google/android/gms/internal/b;

    #@a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    sput-object v0, Lcom/google/android/gms/tagmanager/ce;->agF:Ljava/lang/String;

    #@10
    sget-object v0, Lcom/google/android/gms/internal/b;->cZ:Lcom/google/android/gms/internal/b;

    #@12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    sput-object v0, Lcom/google/android/gms/tagmanager/ce;->agG:Ljava/lang/String;

    #@18
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/ce;->ID:Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    new-array v1, v1, [Ljava/lang/String;

    #@5
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/aj;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    #@8
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
    .registers 8
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
    sget-object v0, Lcom/google/android/gms/tagmanager/ce;->agF:Ljava/lang/String;

    #@2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@8
    sget-object v1, Lcom/google/android/gms/tagmanager/ce;->agG:Ljava/lang/String;

    #@a
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Lcom/google/android/gms/internal/d$a;

    #@10
    if-eqz v0, :cond_54

    #@12
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->nd()Lcom/google/android/gms/internal/d$a;

    #@15
    move-result-object v2

    #@16
    if-eq v0, v2, :cond_54

    #@18
    if-eqz v1, :cond_54

    #@1a
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->nd()Lcom/google/android/gms/internal/d$a;

    #@1d
    move-result-object v2

    #@1e
    if-eq v1, v2, :cond_54

    #@20
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->k(Lcom/google/android/gms/internal/d$a;)Lcom/google/android/gms/tagmanager/dg;

    #@23
    move-result-object v0

    #@24
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/dh;->k(Lcom/google/android/gms/internal/d$a;)Lcom/google/android/gms/tagmanager/dg;

    #@27
    move-result-object v2

    #@28
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->nb()Lcom/google/android/gms/tagmanager/dg;

    #@2b
    move-result-object v1

    #@2c
    if-eq v0, v1, :cond_54

    #@2e
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->nb()Lcom/google/android/gms/tagmanager/dg;

    #@31
    move-result-object v1

    #@32
    if-eq v2, v1, :cond_54

    #@34
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/dg;->doubleValue()D

    #@37
    move-result-wide v0

    #@38
    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/dg;->doubleValue()D

    #@3b
    move-result-wide v2

    #@3c
    cmpg-double v4, v0, v2

    #@3e
    if-gtz v4, :cond_54

    #@40
    :goto_40
    sub-double/2addr v2, v0

    #@41
    invoke-static {}, Ljava/lang/Math;->random()D

    #@44
    move-result-wide v4

    #@45
    mul-double/2addr v2, v4

    #@46
    add-double/2addr v0, v2

    #@47
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    #@4a
    move-result-wide v0

    #@4b
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@4e
    move-result-object v0

    #@4f
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;

    #@52
    move-result-object v0

    #@53
    return-object v0

    #@54
    :cond_54
    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    #@59
    const-wide/16 v0, 0x0

    #@5b
    goto :goto_40
.end method
