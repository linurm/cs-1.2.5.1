.class Lcom/google/android/gms/analytics/s$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final uG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final uH:J

.field private final uI:Ljava/lang/String;

.field private final uJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/fd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/fd;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/analytics/s$d;->uG:Ljava/util/Map;

    #@5
    iput-wide p2, p0, Lcom/google/android/gms/analytics/s$d;->uH:J

    #@7
    iput-object p4, p0, Lcom/google/android/gms/analytics/s$d;->uI:Ljava/lang/String;

    #@9
    iput-object p5, p0, Lcom/google/android/gms/analytics/s$d;->uJ:Ljava/util/List;

    #@b
    return-void
.end method


# virtual methods
.method public cR()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/s$d;->uG:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public cS()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/analytics/s$d;->uH:J

    #@2
    return-wide v0
.end method

.method public cT()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/fd;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/s$d;->uJ:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/s$d;->uI:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v0, "PATH: "

    #@7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    iget-object v0, p0, Lcom/google/android/gms/analytics/s$d;->uI:Ljava/lang/String;

    #@c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    iget-object v0, p0, Lcom/google/android/gms/analytics/s$d;->uG:Ljava/util/Map;

    #@11
    if-eqz v0, :cond_4b

    #@13
    const-string v0, "  PARAMS: "

    #@15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    iget-object v0, p0, Lcom/google/android/gms/analytics/s$d;->uG:Ljava/util/Map;

    #@1a
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@1d
    move-result-object v0

    #@1e
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v3

    #@22
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_4b

    #@28
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Ljava/util/Map$Entry;

    #@2e
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@31
    move-result-object v1

    #@32
    check-cast v1, Ljava/lang/String;

    #@34
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    const-string v1, "="

    #@39
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3f
    move-result-object v0

    #@40
    check-cast v0, Ljava/lang/String;

    #@42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    const-string v0, ",  "

    #@47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    goto :goto_22

    #@4b
    :cond_4b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    return-object v0
.end method
