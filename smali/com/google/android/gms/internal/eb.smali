.class Lcom/google/android/gms/internal/eb;
.super Ljava/lang/Object;


# instance fields
.field private final qS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final qT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final qU:Ljava/lang/String;

.field private final qV:Ljava/lang/String;

.field private final qW:Ljava/lang/String;

.field private final qX:Ljava/lang/String;

.field private final qY:Ljava/lang/String;

.field private final qZ:Z

.field private final ra:I


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-string v0, "url"

    #@5
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    iput-object v0, p0, Lcom/google/android/gms/internal/eb;->qY:Ljava/lang/String;

    #@d
    const-string v0, "base_uri"

    #@f
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/lang/String;

    #@15
    iput-object v0, p0, Lcom/google/android/gms/internal/eb;->qV:Ljava/lang/String;

    #@17
    const-string v0, "post_parameters"

    #@19
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Ljava/lang/String;

    #@1f
    iput-object v0, p0, Lcom/google/android/gms/internal/eb;->qW:Ljava/lang/String;

    #@21
    const-string v0, "drt_include"

    #@23
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Ljava/lang/String;

    #@29
    invoke-static {v0}, Lcom/google/android/gms/internal/eb;->parseBoolean(Ljava/lang/String;)Z

    #@2c
    move-result v0

    #@2d
    iput-boolean v0, p0, Lcom/google/android/gms/internal/eb;->qZ:Z

    #@2f
    const-string v0, "activation_overlay_url"

    #@31
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Ljava/lang/String;

    #@37
    iput-object v0, p0, Lcom/google/android/gms/internal/eb;->qU:Ljava/lang/String;

    #@39
    const-string v0, "check_packages"

    #@3b
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Ljava/lang/String;

    #@41
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/eb;->t(Ljava/lang/String;)Ljava/util/List;

    #@44
    move-result-object v0

    #@45
    iput-object v0, p0, Lcom/google/android/gms/internal/eb;->qT:Ljava/util/List;

    #@47
    const-string v0, "request_id"

    #@49
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4c
    move-result-object v0

    #@4d
    check-cast v0, Ljava/lang/String;

    #@4f
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/eb;->parseInt(Ljava/lang/String;)I

    #@52
    move-result v0

    #@53
    iput v0, p0, Lcom/google/android/gms/internal/eb;->ra:I

    #@55
    const-string v0, "type"

    #@57
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5a
    move-result-object v0

    #@5b
    check-cast v0, Ljava/lang/String;

    #@5d
    iput-object v0, p0, Lcom/google/android/gms/internal/eb;->qX:Ljava/lang/String;

    #@5f
    const-string v0, "errors"

    #@61
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@64
    move-result-object v0

    #@65
    check-cast v0, Ljava/lang/String;

    #@67
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/eb;->t(Ljava/lang/String;)Ljava/util/List;

    #@6a
    move-result-object v0

    #@6b
    iput-object v0, p0, Lcom/google/android/gms/internal/eb;->qS:Ljava/util/List;

    #@6d
    return-void
.end method

.method private static parseBoolean(Ljava/lang/String;)Z
    .registers 2

    #@0
    if-eqz p0, :cond_14

    #@2
    const-string v0, "1"

    #@4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_12

    #@a
    const-string v0, "true"

    #@c
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_14

    #@12
    :cond_12
    const/4 v0, 0x1

    #@13
    :goto_13
    return v0

    #@14
    :cond_14
    const/4 v0, 0x0

    #@15
    goto :goto_13
.end method

.method private parseInt(Ljava/lang/String;)I
    .registers 3

    #@0
    if-nez p1, :cond_4

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    return v0

    #@4
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    goto :goto_3
.end method

.method private t(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    if-nez p1, :cond_4

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    return-object v0

    #@4
    :cond_4
    const-string v0, ","

    #@6
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@d
    move-result-object v0

    #@e
    goto :goto_3
.end method


# virtual methods
.method public bA()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/eb;->qZ:Z

    #@2
    return v0
.end method

.method public by()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/eb;->qS:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public bz()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/eb;->qW:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/eb;->qX:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/eb;->qY:Ljava/lang/String;

    #@2
    return-object v0
.end method
