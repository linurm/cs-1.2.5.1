.class Lcom/google/android/gms/tagmanager/p;
.super Lcom/google/android/gms/tagmanager/aj;


# static fields
.field private static final ID:Ljava/lang/String;


# instance fields
.field private final aeU:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/internal/a;->D:Lcom/google/android/gms/internal/a;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/google/android/gms/tagmanager/p;->ID:Ljava/lang/String;

    #@8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/p;->ID:Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    new-array v1, v1, [Ljava/lang/String;

    #@5
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/aj;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    #@8
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/p;->aeU:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/p;->aeU:Ljava/lang/String;

    #@2
    if-nez v0, :cond_9

    #@4
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->nd()Lcom/google/android/gms/internal/d$a;

    #@7
    move-result-object v0

    #@8
    :goto_8
    return-object v0

    #@9
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/p;->aeU:Ljava/lang/String;

    #@b
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;

    #@e
    move-result-object v0

    #@f
    goto :goto_8
.end method