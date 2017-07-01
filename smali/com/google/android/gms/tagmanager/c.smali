.class Lcom/google/android/gms/tagmanager/c;
.super Lcom/google/android/gms/tagmanager/aj;


# static fields
.field private static final ID:Ljava/lang/String;


# instance fields
.field private final aej:Lcom/google/android/gms/tagmanager/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/internal/a;->v:Lcom/google/android/gms/internal/a;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/google/android/gms/tagmanager/c;->ID:Ljava/lang/String;

    #@8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/a;->M(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/a;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/c;-><init>(Lcom/google/android/gms/tagmanager/a;)V

    #@7
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/tagmanager/a;)V
    .registers 4

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/c;->ID:Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    new-array v1, v1, [Ljava/lang/String;

    #@5
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/aj;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    #@8
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/c;->aej:Lcom/google/android/gms/tagmanager/a;

    #@a
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
    .registers 3
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
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/c;->aej:Lcom/google/android/gms/tagmanager/a;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/a;->isLimitAdTrackingEnabled()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_12

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@c
    move-result-object v0

    #@d
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;

    #@10
    move-result-object v0

    #@11
    return-object v0

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    goto :goto_9
.end method
