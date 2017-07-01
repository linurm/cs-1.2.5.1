.class public Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;
.super Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/HitBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/HitBuilders$HitBuilder",
        "<",
        "Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;-><init>()V

    #@3
    invoke-static {}, Lcom/google/android/gms/analytics/u;->cU()Lcom/google/android/gms/analytics/u;

    #@6
    move-result-object v0

    #@7
    sget-object v1, Lcom/google/android/gms/analytics/u$a;->vV:Lcom/google/android/gms/analytics/u$a;

    #@9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V

    #@c
    const-string v0, "&t"

    #@e
    const-string v1, "item"

    #@10
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    #@13
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/util/Map;
    .registers 2

    #@0
    invoke-super {p0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->build()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;
    .registers 3

    #@0
    const-string v0, "&iv"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    #@5
    return-object p0
.end method

.method public setCurrencyCode(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;
    .registers 3

    #@0
    const-string v0, "&cu"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    #@5
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;
    .registers 3

    #@0
    const-string v0, "&in"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    #@5
    return-object p0
.end method

.method public setPrice(D)Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;
    .registers 6

    #@0
    const-string v0, "&ip"

    #@2
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    #@9
    return-object p0
.end method

.method public setQuantity(J)Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;
    .registers 6

    #@0
    const-string v0, "&iq"

    #@2
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    #@9
    return-object p0
.end method

.method public setSku(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;
    .registers 3

    #@0
    const-string v0, "&ic"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    #@5
    return-object p0
.end method

.method public setTransactionId(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;
    .registers 3

    #@0
    const-string v0, "&ti"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    #@5
    return-object p0
.end method
