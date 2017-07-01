.class Lcom/google/android/gms/tagmanager/u;
.super Lcom/google/android/gms/tagmanager/aj;


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final NAME:Ljava/lang/String;

.field private static final afi:Ljava/lang/String;


# instance fields
.field private final aeu:Lcom/google/android/gms/tagmanager/DataLayer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/internal/a;->C:Lcom/google/android/gms/internal/a;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/google/android/gms/tagmanager/u;->ID:Ljava/lang/String;

    #@8
    sget-object v0, Lcom/google/android/gms/internal/b;->dc:Lcom/google/android/gms/internal/b;

    #@a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    sput-object v0, Lcom/google/android/gms/tagmanager/u;->NAME:Ljava/lang/String;

    #@10
    sget-object v0, Lcom/google/android/gms/internal/b;->cb:Lcom/google/android/gms/internal/b;

    #@12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    sput-object v0, Lcom/google/android/gms/tagmanager/u;->afi:Ljava/lang/String;

    #@18
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/tagmanager/DataLayer;)V
    .registers 6

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/u;->ID:Ljava/lang/String;

    #@2
    const/4 v1, 0x1

    #@3
    new-array v1, v1, [Ljava/lang/String;

    #@5
    const/4 v2, 0x0

    #@6
    sget-object v3, Lcom/google/android/gms/tagmanager/u;->NAME:Ljava/lang/String;

    #@8
    aput-object v3, v1, v2

    #@a
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/aj;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    #@d
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/u;->aeu:Lcom/google/android/gms/tagmanager/DataLayer;

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
    .registers 4
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
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/u;->aeu:Lcom/google/android/gms/tagmanager/DataLayer;

    #@2
    sget-object v0, Lcom/google/android/gms/tagmanager/u;->NAME:Ljava/lang/String;

    #@4
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@a
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    if-nez v0, :cond_24

    #@14
    sget-object v0, Lcom/google/android/gms/tagmanager/u;->afi:Ljava/lang/String;

    #@16
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@1c
    if-eqz v0, :cond_1f

    #@1e
    :goto_1e
    return-object v0

    #@1f
    :cond_1f
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->nd()Lcom/google/android/gms/internal/d$a;

    #@22
    move-result-object v0

    #@23
    goto :goto_1e

    #@24
    :cond_24
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;

    #@27
    move-result-object v0

    #@28
    goto :goto_1e
.end method
