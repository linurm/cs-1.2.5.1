.class Lcom/google/android/gms/tagmanager/ax;
.super Lcom/google/android/gms/tagmanager/aj;


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final aek:Ljava/lang/String;


# instance fields
.field private final kO:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/internal/a;->ab:Lcom/google/android/gms/internal/a;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/google/android/gms/tagmanager/ax;->ID:Ljava/lang/String;

    #@8
    sget-object v0, Lcom/google/android/gms/internal/b;->bH:Lcom/google/android/gms/internal/b;

    #@a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    sput-object v0, Lcom/google/android/gms/tagmanager/ax;->aek:Ljava/lang/String;

    #@10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/ax;->ID:Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    new-array v1, v1, [Ljava/lang/String;

    #@5
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/aj;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    #@8
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ax;->kO:Landroid/content/Context;

    #@a
    return-void
.end method


# virtual methods
.method public lh()Z
    .registers 2

    #@0
    const/4 v0, 0x1

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
    sget-object v0, Lcom/google/android/gms/tagmanager/ax;->aek:Ljava/lang/String;

    #@2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@8
    if-eqz v0, :cond_23

    #@a
    sget-object v0, Lcom/google/android/gms/tagmanager/ax;->aek:Ljava/lang/String;

    #@c
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@12
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    :goto_16
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ax;->kO:Landroid/content/Context;

    #@18
    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/ay;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    if-eqz v0, :cond_25

    #@1e
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;

    #@21
    move-result-object v0

    #@22
    :goto_22
    return-object v0

    #@23
    :cond_23
    const/4 v0, 0x0

    #@24
    goto :goto_16

    #@25
    :cond_25
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->nd()Lcom/google/android/gms/internal/d$a;

    #@28
    move-result-object v0

    #@29
    goto :goto_22
.end method
