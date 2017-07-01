.class public Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;
.super Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/HitBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SocialBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/HitBuilders$HitBuilder",
        "<",
        "Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;",
        ">;"
    }
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
    sget-object v1, Lcom/google/android/gms/analytics/u$a;->vG:Lcom/google/android/gms/analytics/u$a;

    #@9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V

    #@c
    const-string v0, "&t"

    #@e
    const-string v1, "social"

    #@10
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

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

.method public setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;
    .registers 3

    #@0
    const-string v0, "&sa"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    #@5
    return-object p0
.end method

.method public setNetwork(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;
    .registers 3

    #@0
    const-string v0, "&sn"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    #@5
    return-object p0
.end method

.method public setTarget(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;
    .registers 3

    #@0
    const-string v0, "&st"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    #@5
    return-object p0
.end method
