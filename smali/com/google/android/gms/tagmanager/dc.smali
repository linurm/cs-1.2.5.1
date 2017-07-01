.class abstract Lcom/google/android/gms/tagmanager/dc;
.super Lcom/google/android/gms/tagmanager/cc;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/cc;-><init>(Ljava/lang/String;)V

    #@3
    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/d$a;Lcom/google/android/gms/internal/d$a;Ljava/util/Map;)Z
    .registers 7
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

    #@0
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/dh;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p2}, Lcom/google/android/gms/tagmanager/dh;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->nc()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    if-eq v0, v2, :cond_14

    #@e
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->nc()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    if-ne v1, v2, :cond_16

    #@14
    :cond_14
    const/4 v0, 0x0

    #@15
    :goto_15
    return v0

    #@16
    :cond_16
    invoke-virtual {p0, v0, v1, p3}, Lcom/google/android/gms/tagmanager/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    #@19
    move-result v0

    #@1a
    goto :goto_15
.end method

.method protected abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/d$a;",
            ">;)Z"
        }
    .end annotation
.end method
