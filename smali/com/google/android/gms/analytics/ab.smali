.class Lcom/google/android/gms/analytics/ab;
.super Ljava/lang/Object;


# instance fields
.field private final wL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final wM:Ljava/util/Map;
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

.field private final wN:Z

.field private final wO:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/analytics/ab;->wL:Ljava/util/Map;

    #@a
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/android/gms/analytics/ab;->wM:Ljava/util/Map;

    #@11
    iput-boolean p2, p0, Lcom/google/android/gms/analytics/ab;->wN:Z

    #@13
    iput-object p1, p0, Lcom/google/android/gms/analytics/ab;->wO:Ljava/lang/String;

    #@15
    return-void
.end method


# virtual methods
.method c(Ljava/lang/String;I)V
    .registers 5

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/ab;->wN:Z

    #@2
    if-nez v0, :cond_5

    #@4
    :goto_4
    return-void

    #@5
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/analytics/ab;->wL:Ljava/util/Map;

    #@7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/lang/Integer;

    #@d
    if-nez v0, :cond_14

    #@f
    const/4 v0, 0x0

    #@10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v0

    #@14
    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/analytics/ab;->wL:Ljava/util/Map;

    #@16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@19
    move-result v0

    #@1a
    add-int/2addr v0, p2

    #@1b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v0

    #@1f
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    goto :goto_4
.end method

.method dq()Ljava/lang/String;
    .registers 6

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/ab;->wN:Z

    #@2
    if-nez v0, :cond_7

    #@4
    const-string v0, ""

    #@6
    :goto_6
    return-object v0

    #@7
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    iget-object v0, p0, Lcom/google/android/gms/analytics/ab;->wO:Ljava/lang/String;

    #@e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    iget-object v0, p0, Lcom/google/android/gms/analytics/ab;->wL:Ljava/util/Map;

    #@13
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@16
    move-result-object v0

    #@17
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v2

    #@1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_41

    #@21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Ljava/lang/String;

    #@27
    const-string v3, "&"

    #@29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    const-string v4, "="

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    iget-object v4, p0, Lcom/google/android/gms/analytics/ab;->wL:Ljava/util/Map;

    #@39
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    goto :goto_1b

    #@41
    :cond_41
    iget-object v0, p0, Lcom/google/android/gms/analytics/ab;->wM:Ljava/util/Map;

    #@43
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@46
    move-result-object v0

    #@47
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@4a
    move-result-object v2

    #@4b
    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@4e
    move-result v0

    #@4f
    if-eqz v0, :cond_73

    #@51
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@54
    move-result-object v0

    #@55
    check-cast v0, Ljava/lang/String;

    #@57
    const-string v3, "&"

    #@59
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v3

    #@5d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v3

    #@61
    const-string v4, "="

    #@63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v3

    #@67
    iget-object v4, p0, Lcom/google/android/gms/analytics/ab;->wM:Ljava/util/Map;

    #@69
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6c
    move-result-object v0

    #@6d
    check-cast v0, Ljava/lang/String;

    #@6f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    goto :goto_4b

    #@73
    :cond_73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v0

    #@77
    goto :goto_6
.end method
