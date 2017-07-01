.class Lcom/google/android/gms/tagmanager/dh;
.super Ljava/lang/Object;


# static fields
.field private static final ain:Ljava/lang/Object;

.field private static aio:Ljava/lang/Long;

.field private static aip:Ljava/lang/Double;

.field private static aiq:Lcom/google/android/gms/tagmanager/dg;

.field private static air:Ljava/lang/String;

.field private static ais:Ljava/lang/Boolean;

.field private static ait:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static aiu:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static aiv:Lcom/google/android/gms/internal/d$a;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    #@0
    const-wide/16 v6, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v0, 0x0

    #@4
    sput-object v0, Lcom/google/android/gms/tagmanager/dh;->ain:Ljava/lang/Object;

    #@6
    new-instance v0, Ljava/lang/Long;

    #@8
    invoke-direct {v0, v6, v7}, Ljava/lang/Long;-><init>(J)V

    #@b
    sput-object v0, Lcom/google/android/gms/tagmanager/dh;->aio:Ljava/lang/Long;

    #@d
    new-instance v0, Ljava/lang/Double;

    #@f
    const-wide/16 v2, 0x0

    #@11
    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    #@14
    sput-object v0, Lcom/google/android/gms/tagmanager/dh;->aip:Ljava/lang/Double;

    #@16
    invoke-static {v6, v7}, Lcom/google/android/gms/tagmanager/dg;->z(J)Lcom/google/android/gms/tagmanager/dg;

    #@19
    move-result-object v0

    #@1a
    sput-object v0, Lcom/google/android/gms/tagmanager/dh;->aiq:Lcom/google/android/gms/tagmanager/dg;

    #@1c
    new-instance v0, Ljava/lang/String;

    #@1e
    const-string v1, ""

    #@20
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@23
    sput-object v0, Lcom/google/android/gms/tagmanager/dh;->air:Ljava/lang/String;

    #@25
    new-instance v0, Ljava/lang/Boolean;

    #@27
    invoke-direct {v0, v4}, Ljava/lang/Boolean;-><init>(Z)V

    #@2a
    sput-object v0, Lcom/google/android/gms/tagmanager/dh;->ais:Ljava/lang/Boolean;

    #@2c
    new-instance v0, Ljava/util/ArrayList;

    #@2e
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@31
    sput-object v0, Lcom/google/android/gms/tagmanager/dh;->ait:Ljava/util/List;

    #@33
    new-instance v0, Ljava/util/HashMap;

    #@35
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@38
    sput-object v0, Lcom/google/android/gms/tagmanager/dh;->aiu:Ljava/util/Map;

    #@3a
    sget-object v0, Lcom/google/android/gms/tagmanager/dh;->air:Ljava/lang/String;

    #@3c
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;

    #@3f
    move-result-object v0

    #@40
    sput-object v0, Lcom/google/android/gms/tagmanager/dh;->aiv:Lcom/google/android/gms/internal/d$a;

    #@42
    return-void
.end method

.method public static cp(Ljava/lang/String;)Lcom/google/android/gms/internal/d$a;
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/internal/d$a;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/d$a;-><init>()V

    #@5
    const/4 v1, 0x5

    #@6
    iput v1, v0, Lcom/google/android/gms/internal/d$a;->type:I

    #@8
    iput-object p0, v0, Lcom/google/android/gms/internal/d$a;->fS:Ljava/lang/String;

    #@a
    return-object v0
.end method

.method private static cq(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/dg;
    .registers 3

    #@0
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/dg;->co(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/dg;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_5

    #@3
    move-result-object v0

    #@4
    :goto_4
    return-object v0

    #@5
    :catch_5
    move-exception v0

    #@6
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string v1, "Failed to convert \'"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    const-string v1, "\' to a number."

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@22
    sget-object v0, Lcom/google/android/gms/tagmanager/dh;->aiq:Lcom/google/android/gms/tagmanager/dg;

    #@24
    goto :goto_4
.end method

.method private static cr(Ljava/lang/String;)Ljava/lang/Long;
    .registers 3

    #@0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/dh;->cq(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/dg;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lcom/google/android/gms/tagmanager/dh;->aiq:Lcom/google/android/gms/tagmanager/dg;

    #@6
    if-ne v0, v1, :cond_b

    #@8
    sget-object v0, Lcom/google/android/gms/tagmanager/dh;->aio:Ljava/lang/Long;

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/dg;->longValue()J

    #@e
    move-result-wide v0

    #@f
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@12
    move-result-object v0

    #@13
    goto :goto_a
.end method

.method private static cs(Ljava/lang/String;)Ljava/lang/Double;
    .registers 3

    #@0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/dh;->cq(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/dg;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lcom/google/android/gms/tagmanager/dh;->aiq:Lcom/google/android/gms/tagmanager/dg;

    #@6
    if-ne v0, v1, :cond_b

    #@8
    sget-object v0, Lcom/google/android/gms/tagmanager/dh;->aip:Ljava/lang/Double;

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/dg;->doubleValue()D

    #@e
    move-result-wide v0

    #@f
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@12
    move-result-object v0

    #@13
    goto :goto_a
.end method

.method private static ct(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    #@0
    const-string v0, "true"

    #@2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_b

    #@8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    const-string v0, "false"

    #@d
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_16

    #@13
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@15
    goto :goto_a

    #@16
    :cond_16
    sget-object v0, Lcom/google/android/gms/tagmanager/dh;->ais:Ljava/lang/Boolean;

    #@18
    goto :goto_a
.end method

.method private static getDouble(Ljava/lang/Object;)D
    .registers 3

    #@0
    instance-of v0, p0, Ljava/lang/Number;

    #@2
    if-eqz v0, :cond_b

    #@4
    check-cast p0, Ljava/lang/Number;

    #@6
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    #@9
    move-result-wide v0

    #@a
    :goto_a
    return-wide v0

    #@b
    :cond_b
    const-string v0, "getDouble received non-Number"

    #@d
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@10
    const-wide/16 v0, 0x0

    #@12
    goto :goto_a
.end method

.method public static j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/dh;->o(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->m(Ljava/lang/Object;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static k(Lcom/google/android/gms/internal/d$a;)Lcom/google/android/gms/tagmanager/dg;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/dh;->o(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->n(Ljava/lang/Object;)Lcom/google/android/gms/tagmanager/dg;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static l(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Long;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/dh;->o(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->o(Ljava/lang/Object;)Ljava/lang/Long;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static m(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Double;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/dh;->o(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->p(Ljava/lang/Object;)Ljava/lang/Double;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static m(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    #@0
    if-nez p0, :cond_5

    #@2
    sget-object v0, Lcom/google/android/gms/tagmanager/dh;->air:Ljava/lang/String;

    #@4
    :goto_4
    return-object v0

    #@5
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    goto :goto_4
.end method

.method public static mX()Ljava/lang/Object;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/dh;->ain:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public static mY()Ljava/lang/Long;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/dh;->aio:Ljava/lang/Long;

    #@2
    return-object v0
.end method

.method public static mZ()Ljava/lang/Double;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/dh;->aip:Ljava/lang/Double;

    #@2
    return-object v0
.end method

.method public static n(Ljava/lang/Object;)Lcom/google/android/gms/tagmanager/dg;
    .registers 3

    #@0
    instance-of v0, p0, Lcom/google/android/gms/tagmanager/dg;

    #@2
    if-eqz v0, :cond_7

    #@4
    check-cast p0, Lcom/google/android/gms/tagmanager/dg;

    #@6
    :goto_6
    return-object p0

    #@7
    :cond_7
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/dh;->t(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_16

    #@d
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/dh;->u(Ljava/lang/Object;)J

    #@10
    move-result-wide v0

    #@11
    invoke-static {v0, v1}, Lcom/google/android/gms/tagmanager/dg;->z(J)Lcom/google/android/gms/tagmanager/dg;

    #@14
    move-result-object p0

    #@15
    goto :goto_6

    #@16
    :cond_16
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/dh;->s(Ljava/lang/Object;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_29

    #@1c
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/dh;->getDouble(Ljava/lang/Object;)D

    #@1f
    move-result-wide v0

    #@20
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@23
    move-result-object v0

    #@24
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dg;->a(Ljava/lang/Double;)Lcom/google/android/gms/tagmanager/dg;

    #@27
    move-result-object p0

    #@28
    goto :goto_6

    #@29
    :cond_29
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/dh;->m(Ljava/lang/Object;)Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->cq(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/dg;

    #@30
    move-result-object p0

    #@31
    goto :goto_6
.end method

.method public static n(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Boolean;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/dh;->o(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->q(Ljava/lang/Object;)Ljava/lang/Boolean;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static na()Ljava/lang/Boolean;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/dh;->ais:Ljava/lang/Boolean;

    #@2
    return-object v0
.end method

.method public static nb()Lcom/google/android/gms/tagmanager/dg;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/dh;->aiq:Lcom/google/android/gms/tagmanager/dg;

    #@2
    return-object v0
.end method

.method public static nc()Ljava/lang/String;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/dh;->air:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public static nd()Lcom/google/android/gms/internal/d$a;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/dh;->aiv:Lcom/google/android/gms/internal/d$a;

    #@2
    return-object v0
.end method

.method public static o(Ljava/lang/Object;)Ljava/lang/Long;
    .registers 3

    #@0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/dh;->t(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_f

    #@6
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/dh;->u(Ljava/lang/Object;)J

    #@9
    move-result-wide v0

    #@a
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@d
    move-result-object v0

    #@e
    :goto_e
    return-object v0

    #@f
    :cond_f
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/dh;->m(Ljava/lang/Object;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->cr(Ljava/lang/String;)Ljava/lang/Long;

    #@16
    move-result-object v0

    #@17
    goto :goto_e
.end method

.method public static o(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Object;
    .registers 7

    #@0
    const/4 v1, 0x0

    #@1
    if-nez p0, :cond_6

    #@3
    sget-object v0, Lcom/google/android/gms/tagmanager/dh;->ain:Ljava/lang/Object;

    #@5
    :cond_5
    :goto_5
    return-object v0

    #@6
    :cond_6
    iget v0, p0, Lcom/google/android/gms/internal/d$a;->type:I

    #@8
    packed-switch v0, :pswitch_data_e4

    #@b
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string v1, "Failed to convert a value of type: "

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    iget v1, p0, Lcom/google/android/gms/internal/d$a;->type:I

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@23
    sget-object v0, Lcom/google/android/gms/tagmanager/dh;->ain:Ljava/lang/Object;

    #@25
    goto :goto_5

    #@26
    :pswitch_26
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fN:Ljava/lang/String;

    #@28
    goto :goto_5

    #@29
    :pswitch_29
    new-instance v0, Ljava/util/ArrayList;

    #@2b
    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    #@2d
    array-length v2, v2

    #@2e
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@31
    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    #@33
    array-length v3, v2

    #@34
    :goto_34
    if-ge v1, v3, :cond_5

    #@36
    aget-object v4, v2, v1

    #@38
    invoke-static {v4}, Lcom/google/android/gms/tagmanager/dh;->o(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Object;

    #@3b
    move-result-object v4

    #@3c
    sget-object v5, Lcom/google/android/gms/tagmanager/dh;->ain:Ljava/lang/Object;

    #@3e
    if-ne v4, v5, :cond_43

    #@40
    sget-object v0, Lcom/google/android/gms/tagmanager/dh;->ain:Ljava/lang/Object;

    #@42
    goto :goto_5

    #@43
    :cond_43
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@46
    add-int/lit8 v1, v1, 0x1

    #@48
    goto :goto_34

    #@49
    :pswitch_49
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    #@4b
    array-length v0, v0

    #@4c
    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    #@4e
    array-length v2, v2

    #@4f
    if-eq v0, v2, :cond_6e

    #@51
    new-instance v0, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string v1, "Converting an invalid value to object: "

    #@58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v0

    #@5c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/d$a;->toString()Ljava/lang/String;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v0

    #@64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v0

    #@68
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@6b
    sget-object v0, Lcom/google/android/gms/tagmanager/dh;->ain:Ljava/lang/Object;

    #@6d
    goto :goto_5

    #@6e
    :cond_6e
    new-instance v0, Ljava/util/HashMap;

    #@70
    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    #@72
    array-length v2, v2

    #@73
    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    #@76
    :goto_76
    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    #@78
    array-length v2, v2

    #@79
    if-ge v1, v2, :cond_5

    #@7b
    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    #@7d
    aget-object v2, v2, v1

    #@7f
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/dh;->o(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Object;

    #@82
    move-result-object v2

    #@83
    iget-object v3, p0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    #@85
    aget-object v3, v3, v1

    #@87
    invoke-static {v3}, Lcom/google/android/gms/tagmanager/dh;->o(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Object;

    #@8a
    move-result-object v3

    #@8b
    sget-object v4, Lcom/google/android/gms/tagmanager/dh;->ain:Ljava/lang/Object;

    #@8d
    if-eq v2, v4, :cond_93

    #@8f
    sget-object v4, Lcom/google/android/gms/tagmanager/dh;->ain:Ljava/lang/Object;

    #@91
    if-ne v3, v4, :cond_97

    #@93
    :cond_93
    sget-object v0, Lcom/google/android/gms/tagmanager/dh;->ain:Ljava/lang/Object;

    #@95
    goto/16 :goto_5

    #@97
    :cond_97
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9a
    add-int/lit8 v1, v1, 0x1

    #@9c
    goto :goto_76

    #@9d
    :pswitch_9d
    const-string v0, "Trying to convert a macro reference to object"

    #@9f
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@a2
    sget-object v0, Lcom/google/android/gms/tagmanager/dh;->ain:Ljava/lang/Object;

    #@a4
    goto/16 :goto_5

    #@a6
    :pswitch_a6
    const-string v0, "Trying to convert a function id to object"

    #@a8
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@ab
    sget-object v0, Lcom/google/android/gms/tagmanager/dh;->ain:Ljava/lang/Object;

    #@ad
    goto/16 :goto_5

    #@af
    :pswitch_af
    iget-wide v0, p0, Lcom/google/android/gms/internal/d$a;->fT:J

    #@b1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@b4
    move-result-object v0

    #@b5
    goto/16 :goto_5

    #@b7
    :pswitch_b7
    new-instance v0, Ljava/lang/StringBuffer;

    #@b9
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@bc
    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    #@be
    array-length v3, v2

    #@bf
    :goto_bf
    if-ge v1, v3, :cond_d5

    #@c1
    aget-object v4, v2, v1

    #@c3
    invoke-static {v4}, Lcom/google/android/gms/tagmanager/dh;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;

    #@c6
    move-result-object v4

    #@c7
    sget-object v5, Lcom/google/android/gms/tagmanager/dh;->air:Ljava/lang/String;

    #@c9
    if-ne v4, v5, :cond_cf

    #@cb
    sget-object v0, Lcom/google/android/gms/tagmanager/dh;->ain:Ljava/lang/Object;

    #@cd
    goto/16 :goto_5

    #@cf
    :cond_cf
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d2
    add-int/lit8 v1, v1, 0x1

    #@d4
    goto :goto_bf

    #@d5
    :cond_d5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@d8
    move-result-object v0

    #@d9
    goto/16 :goto_5

    #@db
    :pswitch_db
    iget-boolean v0, p0, Lcom/google/android/gms/internal/d$a;->fU:Z

    #@dd
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@e0
    move-result-object v0

    #@e1
    goto/16 :goto_5

    #@e3
    nop

    #@e4
    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_26
        :pswitch_29
        :pswitch_49
        :pswitch_9d
        :pswitch_a6
        :pswitch_af
        :pswitch_b7
        :pswitch_db
    .end packed-switch
.end method

.method public static p(Ljava/lang/Object;)Ljava/lang/Double;
    .registers 3

    #@0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/dh;->s(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_f

    #@6
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/dh;->getDouble(Ljava/lang/Object;)D

    #@9
    move-result-wide v0

    #@a
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@d
    move-result-object v0

    #@e
    :goto_e
    return-object v0

    #@f
    :cond_f
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/dh;->m(Ljava/lang/Object;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->cs(Ljava/lang/String;)Ljava/lang/Double;

    #@16
    move-result-object v0

    #@17
    goto :goto_e
.end method

.method public static q(Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 2

    #@0
    instance-of v0, p0, Ljava/lang/Boolean;

    #@2
    if-eqz v0, :cond_7

    #@4
    check-cast p0, Ljava/lang/Boolean;

    #@6
    :goto_6
    return-object p0

    #@7
    :cond_7
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/dh;->m(Ljava/lang/Object;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->ct(Ljava/lang/String;)Ljava/lang/Boolean;

    #@e
    move-result-object p0

    #@f
    goto :goto_6
.end method

.method public static r(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;
    .registers 11

    #@0
    const/4 v3, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    new-instance v4, Lcom/google/android/gms/internal/d$a;

    #@4
    invoke-direct {v4}, Lcom/google/android/gms/internal/d$a;-><init>()V

    #@7
    instance-of v0, p0, Lcom/google/android/gms/internal/d$a;

    #@9
    if-eqz v0, :cond_e

    #@b
    check-cast p0, Lcom/google/android/gms/internal/d$a;

    #@d
    :goto_d
    return-object p0

    #@e
    :cond_e
    instance-of v0, p0, Ljava/lang/String;

    #@10
    if-eqz v0, :cond_1d

    #@12
    iput v3, v4, Lcom/google/android/gms/internal/d$a;->type:I

    #@14
    check-cast p0, Ljava/lang/String;

    #@16
    iput-object p0, v4, Lcom/google/android/gms/internal/d$a;->fN:Ljava/lang/String;

    #@18
    move v0, v1

    #@19
    :goto_19
    iput-boolean v0, v4, Lcom/google/android/gms/internal/d$a;->fX:Z

    #@1b
    move-object p0, v4

    #@1c
    goto :goto_d

    #@1d
    :cond_1d
    instance-of v0, p0, Ljava/util/List;

    #@1f
    if-eqz v0, :cond_63

    #@21
    const/4 v0, 0x2

    #@22
    iput v0, v4, Lcom/google/android/gms/internal/d$a;->type:I

    #@24
    check-cast p0, Ljava/util/List;

    #@26
    new-instance v5, Ljava/util/ArrayList;

    #@28
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@2b
    move-result v0

    #@2c
    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@2f
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@32
    move-result-object v6

    #@33
    move v2, v1

    #@34
    :goto_34
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_57

    #@3a
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3d
    move-result-object v0

    #@3e
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;

    #@41
    move-result-object v7

    #@42
    sget-object v0, Lcom/google/android/gms/tagmanager/dh;->aiv:Lcom/google/android/gms/internal/d$a;

    #@44
    if-ne v7, v0, :cond_49

    #@46
    sget-object p0, Lcom/google/android/gms/tagmanager/dh;->aiv:Lcom/google/android/gms/internal/d$a;

    #@48
    goto :goto_d

    #@49
    :cond_49
    if-nez v2, :cond_4f

    #@4b
    iget-boolean v0, v7, Lcom/google/android/gms/internal/d$a;->fX:Z

    #@4d
    if-eqz v0, :cond_55

    #@4f
    :cond_4f
    move v0, v3

    #@50
    :goto_50
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@53
    move v2, v0

    #@54
    goto :goto_34

    #@55
    :cond_55
    move v0, v1

    #@56
    goto :goto_50

    #@57
    :cond_57
    new-array v0, v1, [Lcom/google/android/gms/internal/d$a;

    #@59
    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@5c
    move-result-object v0

    #@5d
    check-cast v0, [Lcom/google/android/gms/internal/d$a;

    #@5f
    iput-object v0, v4, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    #@61
    move v0, v2

    #@62
    goto :goto_19

    #@63
    :cond_63
    instance-of v0, p0, Ljava/util/Map;

    #@65
    if-eqz v0, :cond_db

    #@67
    const/4 v0, 0x3

    #@68
    iput v0, v4, Lcom/google/android/gms/internal/d$a;->type:I

    #@6a
    check-cast p0, Ljava/util/Map;

    #@6c
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@6f
    move-result-object v0

    #@70
    new-instance v5, Ljava/util/ArrayList;

    #@72
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@75
    move-result v2

    #@76
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@79
    new-instance v6, Ljava/util/ArrayList;

    #@7b
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@7e
    move-result v2

    #@7f
    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@82
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@85
    move-result-object v7

    #@86
    move v2, v1

    #@87
    :goto_87
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@8a
    move-result v0

    #@8b
    if-eqz v0, :cond_c4

    #@8d
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@90
    move-result-object v0

    #@91
    check-cast v0, Ljava/util/Map$Entry;

    #@93
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@96
    move-result-object v8

    #@97
    invoke-static {v8}, Lcom/google/android/gms/tagmanager/dh;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;

    #@9a
    move-result-object v8

    #@9b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@9e
    move-result-object v0

    #@9f
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;

    #@a2
    move-result-object v9

    #@a3
    sget-object v0, Lcom/google/android/gms/tagmanager/dh;->aiv:Lcom/google/android/gms/internal/d$a;

    #@a5
    if-eq v8, v0, :cond_ab

    #@a7
    sget-object v0, Lcom/google/android/gms/tagmanager/dh;->aiv:Lcom/google/android/gms/internal/d$a;

    #@a9
    if-ne v9, v0, :cond_af

    #@ab
    :cond_ab
    sget-object p0, Lcom/google/android/gms/tagmanager/dh;->aiv:Lcom/google/android/gms/internal/d$a;

    #@ad
    goto/16 :goto_d

    #@af
    :cond_af
    if-nez v2, :cond_b9

    #@b1
    iget-boolean v0, v8, Lcom/google/android/gms/internal/d$a;->fX:Z

    #@b3
    if-nez v0, :cond_b9

    #@b5
    iget-boolean v0, v9, Lcom/google/android/gms/internal/d$a;->fX:Z

    #@b7
    if-eqz v0, :cond_c2

    #@b9
    :cond_b9
    move v0, v3

    #@ba
    :goto_ba
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@bd
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@c0
    move v2, v0

    #@c1
    goto :goto_87

    #@c2
    :cond_c2
    move v0, v1

    #@c3
    goto :goto_ba

    #@c4
    :cond_c4
    new-array v0, v1, [Lcom/google/android/gms/internal/d$a;

    #@c6
    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@c9
    move-result-object v0

    #@ca
    check-cast v0, [Lcom/google/android/gms/internal/d$a;

    #@cc
    iput-object v0, v4, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    #@ce
    new-array v0, v1, [Lcom/google/android/gms/internal/d$a;

    #@d0
    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@d3
    move-result-object v0

    #@d4
    check-cast v0, [Lcom/google/android/gms/internal/d$a;

    #@d6
    iput-object v0, v4, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    #@d8
    move v0, v2

    #@d9
    goto/16 :goto_19

    #@db
    :cond_db
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/dh;->s(Ljava/lang/Object;)Z

    #@de
    move-result v0

    #@df
    if-eqz v0, :cond_ec

    #@e1
    iput v3, v4, Lcom/google/android/gms/internal/d$a;->type:I

    #@e3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@e6
    move-result-object v0

    #@e7
    iput-object v0, v4, Lcom/google/android/gms/internal/d$a;->fN:Ljava/lang/String;

    #@e9
    move v0, v1

    #@ea
    goto/16 :goto_19

    #@ec
    :cond_ec
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/dh;->t(Ljava/lang/Object;)Z

    #@ef
    move-result v0

    #@f0
    if-eqz v0, :cond_fe

    #@f2
    const/4 v0, 0x6

    #@f3
    iput v0, v4, Lcom/google/android/gms/internal/d$a;->type:I

    #@f5
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/dh;->u(Ljava/lang/Object;)J

    #@f8
    move-result-wide v2

    #@f9
    iput-wide v2, v4, Lcom/google/android/gms/internal/d$a;->fT:J

    #@fb
    move v0, v1

    #@fc
    goto/16 :goto_19

    #@fe
    :cond_fe
    instance-of v0, p0, Ljava/lang/Boolean;

    #@100
    if-eqz v0, :cond_111

    #@102
    const/16 v0, 0x8

    #@104
    iput v0, v4, Lcom/google/android/gms/internal/d$a;->type:I

    #@106
    check-cast p0, Ljava/lang/Boolean;

    #@108
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    #@10b
    move-result v0

    #@10c
    iput-boolean v0, v4, Lcom/google/android/gms/internal/d$a;->fU:Z

    #@10e
    move v0, v1

    #@10f
    goto/16 :goto_19

    #@111
    :cond_111
    new-instance v0, Ljava/lang/StringBuilder;

    #@113
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@116
    const-string v1, "Converting to Value from unknown object type: "

    #@118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v1

    #@11c
    if-nez p0, :cond_12f

    #@11e
    const-string v0, "null"

    #@120
    :goto_120
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v0

    #@124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@127
    move-result-object v0

    #@128
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@12b
    sget-object p0, Lcom/google/android/gms/tagmanager/dh;->aiv:Lcom/google/android/gms/internal/d$a;

    #@12d
    goto/16 :goto_d

    #@12f
    :cond_12f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@132
    move-result-object v0

    #@133
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    #@136
    move-result-object v0

    #@137
    goto :goto_120
.end method

.method private static s(Ljava/lang/Object;)Z
    .registers 2

    #@0
    instance-of v0, p0, Ljava/lang/Double;

    #@2
    if-nez v0, :cond_14

    #@4
    instance-of v0, p0, Ljava/lang/Float;

    #@6
    if-nez v0, :cond_14

    #@8
    instance-of v0, p0, Lcom/google/android/gms/tagmanager/dg;

    #@a
    if-eqz v0, :cond_16

    #@c
    check-cast p0, Lcom/google/android/gms/tagmanager/dg;

    #@e
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dg;->mS()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_16

    #@14
    :cond_14
    const/4 v0, 0x1

    #@15
    :goto_15
    return v0

    #@16
    :cond_16
    const/4 v0, 0x0

    #@17
    goto :goto_15
.end method

.method private static t(Ljava/lang/Object;)Z
    .registers 2

    #@0
    instance-of v0, p0, Ljava/lang/Byte;

    #@2
    if-nez v0, :cond_1c

    #@4
    instance-of v0, p0, Ljava/lang/Short;

    #@6
    if-nez v0, :cond_1c

    #@8
    instance-of v0, p0, Ljava/lang/Integer;

    #@a
    if-nez v0, :cond_1c

    #@c
    instance-of v0, p0, Ljava/lang/Long;

    #@e
    if-nez v0, :cond_1c

    #@10
    instance-of v0, p0, Lcom/google/android/gms/tagmanager/dg;

    #@12
    if-eqz v0, :cond_1e

    #@14
    check-cast p0, Lcom/google/android/gms/tagmanager/dg;

    #@16
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dg;->mT()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_1e

    #@1c
    :cond_1c
    const/4 v0, 0x1

    #@1d
    :goto_1d
    return v0

    #@1e
    :cond_1e
    const/4 v0, 0x0

    #@1f
    goto :goto_1d
.end method

.method private static u(Ljava/lang/Object;)J
    .registers 3

    #@0
    instance-of v0, p0, Ljava/lang/Number;

    #@2
    if-eqz v0, :cond_b

    #@4
    check-cast p0, Ljava/lang/Number;

    #@6
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    #@9
    move-result-wide v0

    #@a
    :goto_a
    return-wide v0

    #@b
    :cond_b
    const-string v0, "getInt64 received non-Number"

    #@d
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@10
    const-wide/16 v0, 0x0

    #@12
    goto :goto_a
.end method
