.class public abstract Lcom/google/ads/mediation/MediationServerParameters;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/MediationServerParameters$MappingException;,
        Lcom/google/ads/mediation/MediationServerParameters$Parameter;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 1

    #@0
    return-void
.end method

.method public load(Ljava/util/Map;)V
    .registers 8
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/mediation/MediationServerParameters$MappingException;
        }
    .end annotation

    #@0
    new-instance v2, Ljava/util/HashMap;

    #@2
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    #@c
    move-result-object v3

    #@d
    array-length v4, v3

    #@e
    const/4 v0, 0x0

    #@f
    move v1, v0

    #@10
    :goto_10
    if-ge v1, v4, :cond_29

    #@12
    aget-object v5, v3, v1

    #@14
    const-class v0, Lcom/google/ads/mediation/MediationServerParameters$Parameter;

    #@16
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lcom/google/ads/mediation/MediationServerParameters$Parameter;

    #@1c
    if-eqz v0, :cond_25

    #@1e
    invoke-interface {v0}, Lcom/google/ads/mediation/MediationServerParameters$Parameter;->name()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    :cond_25
    add-int/lit8 v0, v1, 0x1

    #@27
    move v1, v0

    #@28
    goto :goto_10

    #@29
    :cond_29
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_34

    #@2f
    const-string v0, "No server options fields detected. To suppress this message either add a field with the @Parameter annotation, or override the load() method."

    #@31
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@34
    :cond_34
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@37
    move-result-object v0

    #@38
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@3b
    move-result-object v3

    #@3c
    :goto_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@3f
    move-result v0

    #@40
    if-eqz v0, :cond_d8

    #@42
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@45
    move-result-object v0

    #@46
    check-cast v0, Ljava/util/Map$Entry;

    #@48
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@4b
    move-result-object v1

    #@4c
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@4f
    move-result-object v1

    #@50
    check-cast v1, Ljava/lang/reflect/Field;

    #@52
    if-eqz v1, :cond_a4

    #@54
    :try_start_54
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@57
    move-result-object v4

    #@58
    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5b
    .catch Ljava/lang/IllegalAccessException; {:try_start_54 .. :try_end_5b} :catch_5c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_54 .. :try_end_5b} :catch_80

    #@5b
    goto :goto_3c

    #@5c
    :catch_5c
    move-exception v1

    #@5d
    new-instance v1, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string v4, "Server option \""

    #@64
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v1

    #@68
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@6b
    move-result-object v0

    #@6c
    check-cast v0, Ljava/lang/String;

    #@6e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v0

    #@72
    const-string v1, "\" could not be set: Illegal Access"

    #@74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v0

    #@78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v0

    #@7c
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@7f
    goto :goto_3c

    #@80
    :catch_80
    move-exception v1

    #@81
    new-instance v1, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string v4, "Server option \""

    #@88
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v1

    #@8c
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@8f
    move-result-object v0

    #@90
    check-cast v0, Ljava/lang/String;

    #@92
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v0

    #@96
    const-string v1, "\" could not be set: Bad Type"

    #@98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v0

    #@9c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v0

    #@a0
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@a3
    goto :goto_3c

    #@a4
    :cond_a4
    new-instance v1, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    const-string v4, "Unexpected server option: "

    #@ab
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v4

    #@af
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@b2
    move-result-object v1

    #@b3
    check-cast v1, Ljava/lang/String;

    #@b5
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v1

    #@b9
    const-string v4, " = \""

    #@bb
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v1

    #@bf
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@c2
    move-result-object v0

    #@c3
    check-cast v0, Ljava/lang/String;

    #@c5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v0

    #@c9
    const-string v1, "\""

    #@cb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v0

    #@cf
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v0

    #@d3
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@d6
    goto/16 :goto_3c

    #@d8
    :cond_d8
    new-instance v3, Ljava/lang/StringBuilder;

    #@da
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@dd
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@e0
    move-result-object v0

    #@e1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@e4
    move-result-object v2

    #@e5
    :cond_e5
    :goto_e5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e8
    move-result v0

    #@e9
    if-eqz v0, :cond_13d

    #@eb
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ee
    move-result-object v0

    #@ef
    move-object v1, v0

    #@f0
    check-cast v1, Ljava/lang/reflect/Field;

    #@f2
    const-class v0, Lcom/google/ads/mediation/MediationServerParameters$Parameter;

    #@f4
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@f7
    move-result-object v0

    #@f8
    check-cast v0, Lcom/google/ads/mediation/MediationServerParameters$Parameter;

    #@fa
    invoke-interface {v0}, Lcom/google/ads/mediation/MediationServerParameters$Parameter;->required()Z

    #@fd
    move-result v0

    #@fe
    if-eqz v0, :cond_e5

    #@100
    new-instance v0, Ljava/lang/StringBuilder;

    #@102
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@105
    const-string v4, "Required server option missing: "

    #@107
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v4

    #@10b
    const-class v0, Lcom/google/ads/mediation/MediationServerParameters$Parameter;

    #@10d
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@110
    move-result-object v0

    #@111
    check-cast v0, Lcom/google/ads/mediation/MediationServerParameters$Parameter;

    #@113
    invoke-interface {v0}, Lcom/google/ads/mediation/MediationServerParameters$Parameter;->name()Ljava/lang/String;

    #@116
    move-result-object v0

    #@117
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v0

    #@11b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11e
    move-result-object v0

    #@11f
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@122
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@125
    move-result v0

    #@126
    if-lez v0, :cond_12d

    #@128
    const-string v0, ", "

    #@12a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    :cond_12d
    const-class v0, Lcom/google/ads/mediation/MediationServerParameters$Parameter;

    #@12f
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@132
    move-result-object v0

    #@133
    check-cast v0, Lcom/google/ads/mediation/MediationServerParameters$Parameter;

    #@135
    invoke-interface {v0}, Lcom/google/ads/mediation/MediationServerParameters$Parameter;->name()Ljava/lang/String;

    #@138
    move-result-object v0

    #@139
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    goto :goto_e5

    #@13d
    :cond_13d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@140
    move-result v0

    #@141
    if-lez v0, :cond_160

    #@143
    new-instance v0, Lcom/google/ads/mediation/MediationServerParameters$MappingException;

    #@145
    new-instance v1, Ljava/lang/StringBuilder;

    #@147
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14a
    const-string v2, "Required server option(s) missing: "

    #@14c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v1

    #@150
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@153
    move-result-object v2

    #@154
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@157
    move-result-object v1

    #@158
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15b
    move-result-object v1

    #@15c
    invoke-direct {v0, v1}, Lcom/google/ads/mediation/MediationServerParameters$MappingException;-><init>(Ljava/lang/String;)V

    #@15f
    throw v0

    #@160
    :cond_160
    invoke-virtual {p0}, Lcom/google/ads/mediation/MediationServerParameters;->a()V

    #@163
    return-void
.end method
