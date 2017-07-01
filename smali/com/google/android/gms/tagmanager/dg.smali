.class Lcom/google/android/gms/tagmanager/dg;
.super Ljava/lang/Number;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/gms/tagmanager/dg;",
        ">;"
    }
.end annotation


# instance fields
.field private aik:D

.field private ail:J

.field private aim:Z


# direct methods
.method private constructor <init>(D)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@3
    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/dg;->aik:D

    #@5
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/dg;->aim:Z

    #@8
    return-void
.end method

.method private constructor <init>(J)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@3
    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/dg;->ail:J

    #@5
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/dg;->aim:Z

    #@8
    return-void
.end method

.method public static a(Ljava/lang/Double;)Lcom/google/android/gms/tagmanager/dg;
    .registers 5

    #@0
    new-instance v0, Lcom/google/android/gms/tagmanager/dg;

    #@2
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    #@5
    move-result-wide v2

    #@6
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/tagmanager/dg;-><init>(D)V

    #@9
    return-object v0
.end method

.method public static co(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/dg;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/tagmanager/dg;

    #@2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@5
    move-result-wide v2

    #@6
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/tagmanager/dg;-><init>(J)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_9} :catch_a

    #@9
    :goto_9
    return-object v0

    #@a
    :catch_a
    move-exception v0

    #@b
    :try_start_b
    new-instance v0, Lcom/google/android/gms/tagmanager/dg;

    #@d
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@10
    move-result-wide v2

    #@11
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/tagmanager/dg;-><init>(D)V
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_14} :catch_15

    #@14
    goto :goto_9

    #@15
    :catch_15
    move-exception v0

    #@16
    new-instance v0, Ljava/lang/NumberFormatException;

    #@18
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    const-string v2, " is not a valid TypedNumber"

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0
.end method

.method public static z(J)Lcom/google/android/gms/tagmanager/dg;
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/tagmanager/dg;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/tagmanager/dg;-><init>(J)V

    #@5
    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tagmanager/dg;)I
    .registers 6

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dg;->mT()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_1e

    #@6
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/dg;->mT()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1e

    #@c
    new-instance v0, Ljava/lang/Long;

    #@e
    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/dg;->ail:J

    #@10
    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@13
    iget-wide v2, p1, Lcom/google/android/gms/tagmanager/dg;->ail:J

    #@15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    #@1c
    move-result v0

    #@1d
    :goto_1d
    return v0

    #@1e
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dg;->doubleValue()D

    #@21
    move-result-wide v0

    #@22
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/dg;->doubleValue()D

    #@25
    move-result-wide v2

    #@26
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    #@29
    move-result v0

    #@2a
    goto :goto_1d
.end method

.method public byteValue()B
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dg;->longValue()J

    #@3
    move-result-wide v0

    #@4
    long-to-int v0, v0

    #@5
    int-to-byte v0, v0

    #@6
    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    #@0
    check-cast p1, Lcom/google/android/gms/tagmanager/dg;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/dg;->a(Lcom/google/android/gms/tagmanager/dg;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public doubleValue()D
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dg;->mT()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_a

    #@6
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/dg;->ail:J

    #@8
    long-to-double v0, v0

    #@9
    :goto_9
    return-wide v0

    #@a
    :cond_a
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/dg;->aik:D

    #@c
    goto :goto_9
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    instance-of v0, p1, Lcom/google/android/gms/tagmanager/dg;

    #@2
    if-eqz v0, :cond_e

    #@4
    check-cast p1, Lcom/google/android/gms/tagmanager/dg;

    #@6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/dg;->a(Lcom/google/android/gms/tagmanager/dg;)I

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    :goto_d
    return v0

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    goto :goto_d
.end method

.method public floatValue()F
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dg;->doubleValue()D

    #@3
    move-result-wide v0

    #@4
    double-to-float v0, v0

    #@5
    return v0
.end method

.method public hashCode()I
    .registers 5

    #@0
    new-instance v0, Ljava/lang/Long;

    #@2
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dg;->longValue()J

    #@5
    move-result-wide v2

    #@6
    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@9
    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public intValue()I
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dg;->mV()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public longValue()J
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dg;->mU()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public mS()Z
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dg;->mT()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method

.method public mT()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/dg;->aim:Z

    #@2
    return v0
.end method

.method public mU()J
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dg;->mT()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_9

    #@6
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/dg;->ail:J

    #@8
    :goto_8
    return-wide v0

    #@9
    :cond_9
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/dg;->aik:D

    #@b
    double-to-long v0, v0

    #@c
    goto :goto_8
.end method

.method public mV()I
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dg;->longValue()J

    #@3
    move-result-wide v0

    #@4
    long-to-int v0, v0

    #@5
    return v0
.end method

.method public mW()S
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dg;->longValue()J

    #@3
    move-result-wide v0

    #@4
    long-to-int v0, v0

    #@5
    int-to-short v0, v0

    #@6
    return v0
.end method

.method public shortValue()S
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dg;->mW()S

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dg;->mT()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_d

    #@6
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/dg;->ail:J

    #@8
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    :goto_c
    return-object v0

    #@d
    :cond_d
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/dg;->aik:D

    #@f
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    goto :goto_c
.end method
