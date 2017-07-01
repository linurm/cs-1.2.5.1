.class public final Lcom/google/android/gms/internal/ea;
.super Ljava/lang/Object;


# instance fields
.field private mOrientation:I

.field private qG:Ljava/lang/String;

.field private qH:Ljava/lang/String;

.field private qI:Ljava/lang/String;

.field private qJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private qK:Ljava/lang/String;

.field private qL:Ljava/lang/String;

.field private qM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private qN:J

.field private qO:Z

.field private final qP:J

.field private qQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private qR:J


# direct methods
.method public constructor <init>()V
    .registers 5

    #@0
    const-wide/16 v2, -0x1

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    iput-wide v2, p0, Lcom/google/android/gms/internal/ea;->qN:J

    #@7
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ea;->qO:Z

    #@a
    iput-wide v2, p0, Lcom/google/android/gms/internal/ea;->qP:J

    #@c
    iput-wide v2, p0, Lcom/google/android/gms/internal/ea;->qR:J

    #@e
    const/4 v0, -0x1

    #@f
    iput v0, p0, Lcom/google/android/gms/internal/ea;->mOrientation:I

    #@11
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/List;

    #@6
    if-eqz v0, :cond_16

    #@8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_16

    #@e
    const/4 v1, 0x0

    #@f
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/lang/String;

    #@15
    :goto_15
    return-object v0

    #@16
    :cond_16
    const/4 v0, 0x0

    #@17
    goto :goto_15
.end method

.method private static b(Ljava/util/Map;Ljava/lang/String;)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    #@0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/List;

    #@6
    if-eqz v0, :cond_3f

    #@8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_3f

    #@e
    const/4 v1, 0x0

    #@f
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/lang/String;

    #@15
    :try_start_15
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_18} :catch_1e

    #@18
    move-result v0

    #@19
    const/high16 v1, 0x447a0000    # 1000.0f

    #@1b
    mul-float/2addr v0, v1

    #@1c
    float-to-long v0, v0

    #@1d
    :goto_1d
    return-wide v0

    #@1e
    :catch_1e
    move-exception v1

    #@1f
    new-instance v1, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string v2, "Could not parse float from "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    const-string v2, " header: "

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@3f
    :cond_3f
    const-wide/16 v0, -0x1

    #@41
    goto :goto_1d
.end method

.method private static c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/List;

    #@6
    if-eqz v0, :cond_26

    #@8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_26

    #@e
    const/4 v1, 0x0

    #@f
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/lang/String;

    #@15
    if-eqz v0, :cond_26

    #@17
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    const-string v1, "\\s+"

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@24
    move-result-object v0

    #@25
    :goto_25
    return-object v0

    #@26
    :cond_26
    const/4 v0, 0x0

    #@27
    goto :goto_25
.end method

.method private e(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    #@0
    const-string v0, "X-Afma-Ad-Size"

    #@2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ea;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Lcom/google/android/gms/internal/ea;->qG:Ljava/lang/String;

    #@8
    return-void
.end method

.method private f(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    #@0
    const-string v0, "X-Afma-Click-Tracking-Urls"

    #@2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ea;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_a

    #@8
    iput-object v0, p0, Lcom/google/android/gms/internal/ea;->qJ:Ljava/util/List;

    #@a
    :cond_a
    return-void
.end method

.method private g(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    #@0
    const-string v0, "X-Afma-Debug-Dialog"

    #@2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/List;

    #@8
    if-eqz v0, :cond_19

    #@a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_19

    #@10
    const/4 v1, 0x0

    #@11
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/lang/String;

    #@17
    iput-object v0, p0, Lcom/google/android/gms/internal/ea;->qK:Ljava/lang/String;

    #@19
    :cond_19
    return-void
.end method

.method private h(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    #@0
    const-string v0, "X-Afma-Tracking-Urls"

    #@2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ea;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_a

    #@8
    iput-object v0, p0, Lcom/google/android/gms/internal/ea;->qM:Ljava/util/List;

    #@a
    :cond_a
    return-void
.end method

.method private i(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    #@0
    const-string v0, "X-Afma-Interstitial-Timeout"

    #@2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ea;->b(Ljava/util/Map;Ljava/lang/String;)J

    #@5
    move-result-wide v0

    #@6
    const-wide/16 v2, -0x1

    #@8
    cmp-long v2, v0, v2

    #@a
    if-eqz v2, :cond_e

    #@c
    iput-wide v0, p0, Lcom/google/android/gms/internal/ea;->qN:J

    #@e
    :cond_e
    return-void
.end method

.method private j(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    #@0
    const-string v0, "X-Afma-ActiveView"

    #@2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ea;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Lcom/google/android/gms/internal/ea;->qL:Ljava/lang/String;

    #@8
    return-void
.end method

.method private k(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    #@0
    const-string v0, "X-Afma-Mediation"

    #@2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/List;

    #@8
    if-eqz v0, :cond_21

    #@a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_21

    #@10
    const/4 v1, 0x0

    #@11
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/lang/String;

    #@17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@1e
    move-result v0

    #@1f
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ea;->qO:Z

    #@21
    :cond_21
    return-void
.end method

.method private l(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    #@0
    const-string v0, "X-Afma-Manual-Tracking-Urls"

    #@2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ea;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_a

    #@8
    iput-object v0, p0, Lcom/google/android/gms/internal/ea;->qQ:Ljava/util/List;

    #@a
    :cond_a
    return-void
.end method

.method private m(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    #@0
    const-string v0, "X-Afma-Refresh-Rate"

    #@2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ea;->b(Ljava/util/Map;Ljava/lang/String;)J

    #@5
    move-result-wide v0

    #@6
    const-wide/16 v2, -0x1

    #@8
    cmp-long v2, v0, v2

    #@a
    if-eqz v2, :cond_e

    #@c
    iput-wide v0, p0, Lcom/google/android/gms/internal/ea;->qR:J

    #@e
    :cond_e
    return-void
.end method

.method private n(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    #@0
    const-string v0, "X-Afma-Orientation"

    #@2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/List;

    #@8
    if-eqz v0, :cond_25

    #@a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_25

    #@10
    const/4 v1, 0x0

    #@11
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/lang/String;

    #@17
    const-string v1, "portrait"

    #@19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_26

    #@1f
    invoke-static {}, Lcom/google/android/gms/internal/eo;->bS()I

    #@22
    move-result v0

    #@23
    iput v0, p0, Lcom/google/android/gms/internal/ea;->mOrientation:I

    #@25
    :cond_25
    :goto_25
    return-void

    #@26
    :cond_26
    const-string v1, "landscape"

    #@28
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_25

    #@2e
    invoke-static {}, Lcom/google/android/gms/internal/eo;->bR()I

    #@31
    move-result v0

    #@32
    iput v0, p0, Lcom/google/android/gms/internal/ea;->mOrientation:I

    #@34
    goto :goto_25
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/ea;->qH:Ljava/lang/String;

    #@2
    iput-object p3, p0, Lcom/google/android/gms/internal/ea;->qI:Ljava/lang/String;

    #@4
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ea;->d(Ljava/util/Map;)V

    #@7
    return-void
.end method

.method public d(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ea;->e(Ljava/util/Map;)V

    #@3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ea;->f(Ljava/util/Map;)V

    #@6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ea;->g(Ljava/util/Map;)V

    #@9
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ea;->h(Ljava/util/Map;)V

    #@c
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ea;->i(Ljava/util/Map;)V

    #@f
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ea;->k(Ljava/util/Map;)V

    #@12
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ea;->l(Ljava/util/Map;)V

    #@15
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ea;->m(Ljava/util/Map;)V

    #@18
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ea;->n(Ljava/util/Map;)V

    #@1b
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ea;->j(Ljava/util/Map;)V

    #@1e
    return-void
.end method

.method public i(J)Lcom/google/android/gms/internal/du;
    .registers 26

    #@0
    new-instance v3, Lcom/google/android/gms/internal/du;

    #@2
    move-object/from16 v0, p0

    #@4
    iget-object v4, v0, Lcom/google/android/gms/internal/ea;->qH:Ljava/lang/String;

    #@6
    move-object/from16 v0, p0

    #@8
    iget-object v5, v0, Lcom/google/android/gms/internal/ea;->qI:Ljava/lang/String;

    #@a
    move-object/from16 v0, p0

    #@c
    iget-object v6, v0, Lcom/google/android/gms/internal/ea;->qJ:Ljava/util/List;

    #@e
    move-object/from16 v0, p0

    #@10
    iget-object v7, v0, Lcom/google/android/gms/internal/ea;->qM:Ljava/util/List;

    #@12
    move-object/from16 v0, p0

    #@14
    iget-wide v8, v0, Lcom/google/android/gms/internal/ea;->qN:J

    #@16
    move-object/from16 v0, p0

    #@18
    iget-boolean v10, v0, Lcom/google/android/gms/internal/ea;->qO:Z

    #@1a
    const-wide/16 v11, -0x1

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v13, v0, Lcom/google/android/gms/internal/ea;->qQ:Ljava/util/List;

    #@20
    move-object/from16 v0, p0

    #@22
    iget-wide v14, v0, Lcom/google/android/gms/internal/ea;->qR:J

    #@24
    move-object/from16 v0, p0

    #@26
    iget v0, v0, Lcom/google/android/gms/internal/ea;->mOrientation:I

    #@28
    move/from16 v16, v0

    #@2a
    move-object/from16 v0, p0

    #@2c
    iget-object v0, v0, Lcom/google/android/gms/internal/ea;->qG:Ljava/lang/String;

    #@2e
    move-object/from16 v17, v0

    #@30
    move-object/from16 v0, p0

    #@32
    iget-object v0, v0, Lcom/google/android/gms/internal/ea;->qK:Ljava/lang/String;

    #@34
    move-object/from16 v20, v0

    #@36
    move-object/from16 v0, p0

    #@38
    iget-object v0, v0, Lcom/google/android/gms/internal/ea;->qL:Ljava/lang/String;

    #@3a
    move-object/from16 v21, v0

    #@3c
    move-wide/from16 v18, p1

    #@3e
    invoke-direct/range {v3 .. v21}, Lcom/google/android/gms/internal/du;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    #@41
    return-object v3
.end method
