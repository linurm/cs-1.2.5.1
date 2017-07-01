.class Lcom/google/android/gms/analytics/t$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/t;->p(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic uQ:Ljava/util/Map;

.field final synthetic uR:Lcom/google/android/gms/analytics/t;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/t;Ljava/util/Map;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/analytics/t$1;->uR:Lcom/google/android/gms/analytics/t;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/analytics/t$1;->uQ:Ljava/util/Map;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/t$1;->uR:Lcom/google/android/gms/analytics/t;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/analytics/t$1;->uQ:Ljava/util/Map;

    #@4
    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/t;->a(Lcom/google/android/gms/analytics/t;Ljava/util/Map;)V

    #@7
    iget-object v0, p0, Lcom/google/android/gms/analytics/t$1;->uQ:Ljava/util/Map;

    #@9
    const-string v1, "&cid"

    #@b
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/lang/CharSequence;

    #@11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_28

    #@17
    iget-object v0, p0, Lcom/google/android/gms/analytics/t$1;->uQ:Ljava/util/Map;

    #@19
    const-string v1, "&cid"

    #@1b
    invoke-static {}, Lcom/google/android/gms/analytics/h;->cv()Lcom/google/android/gms/analytics/h;

    #@1e
    move-result-object v2

    #@1f
    const-string v3, "&cid"

    #@21
    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/h;->getValue(Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/analytics/t$1;->uR:Lcom/google/android/gms/analytics/t;

    #@2a
    invoke-static {v0}, Lcom/google/android/gms/analytics/t;->a(Lcom/google/android/gms/analytics/t;)Landroid/content/Context;

    #@2d
    move-result-object v0

    #@2e
    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getAppOptOut()Z

    #@35
    move-result v0

    #@36
    if-nez v0, :cond_42

    #@38
    iget-object v0, p0, Lcom/google/android/gms/analytics/t$1;->uR:Lcom/google/android/gms/analytics/t;

    #@3a
    iget-object v1, p0, Lcom/google/android/gms/analytics/t$1;->uQ:Ljava/util/Map;

    #@3c
    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/t;->b(Lcom/google/android/gms/analytics/t;Ljava/util/Map;)Z

    #@3f
    move-result v0

    #@40
    if-eqz v0, :cond_43

    #@42
    :cond_42
    :goto_42
    return-void

    #@43
    :cond_43
    iget-object v0, p0, Lcom/google/android/gms/analytics/t$1;->uR:Lcom/google/android/gms/analytics/t;

    #@45
    invoke-static {v0}, Lcom/google/android/gms/analytics/t;->b(Lcom/google/android/gms/analytics/t;)Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4c
    move-result v0

    #@4d
    if-nez v0, :cond_7d

    #@4f
    invoke-static {}, Lcom/google/android/gms/analytics/u;->cU()Lcom/google/android/gms/analytics/u;

    #@52
    move-result-object v0

    #@53
    const/4 v1, 0x1

    #@54
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->u(Z)V

    #@57
    iget-object v0, p0, Lcom/google/android/gms/analytics/t$1;->uQ:Ljava/util/Map;

    #@59
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    #@5b
    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;-><init>()V

    #@5e
    iget-object v2, p0, Lcom/google/android/gms/analytics/t$1;->uR:Lcom/google/android/gms/analytics/t;

    #@60
    invoke-static {v2}, Lcom/google/android/gms/analytics/t;->b(Lcom/google/android/gms/analytics/t;)Ljava/lang/String;

    #@63
    move-result-object v2

    #@64
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->setCampaignParamsFromUrl(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    #@67
    move-result-object v1

    #@68
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->build()Ljava/util/Map;

    #@6b
    move-result-object v1

    #@6c
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    #@6f
    invoke-static {}, Lcom/google/android/gms/analytics/u;->cU()Lcom/google/android/gms/analytics/u;

    #@72
    move-result-object v0

    #@73
    const/4 v1, 0x0

    #@74
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->u(Z)V

    #@77
    iget-object v0, p0, Lcom/google/android/gms/analytics/t$1;->uR:Lcom/google/android/gms/analytics/t;

    #@79
    const/4 v1, 0x0

    #@7a
    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/t;->a(Lcom/google/android/gms/analytics/t;Ljava/lang/String;)Ljava/lang/String;

    #@7d
    :cond_7d
    iget-object v0, p0, Lcom/google/android/gms/analytics/t$1;->uR:Lcom/google/android/gms/analytics/t;

    #@7f
    iget-object v1, p0, Lcom/google/android/gms/analytics/t$1;->uQ:Ljava/util/Map;

    #@81
    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/t;->c(Lcom/google/android/gms/analytics/t;Ljava/util/Map;)V

    #@84
    iget-object v0, p0, Lcom/google/android/gms/analytics/t$1;->uQ:Ljava/util/Map;

    #@86
    invoke-static {v0}, Lcom/google/android/gms/analytics/y;->u(Ljava/util/Map;)Ljava/util/Map;

    #@89
    move-result-object v1

    #@8a
    iget-object v0, p0, Lcom/google/android/gms/analytics/t$1;->uR:Lcom/google/android/gms/analytics/t;

    #@8c
    invoke-static {v0}, Lcom/google/android/gms/analytics/t;->d(Lcom/google/android/gms/analytics/t;)Lcom/google/android/gms/analytics/ag;

    #@8f
    move-result-object v0

    #@90
    iget-object v2, p0, Lcom/google/android/gms/analytics/t$1;->uQ:Ljava/util/Map;

    #@92
    const-string v3, "&ht"

    #@94
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@97
    move-result-object v2

    #@98
    check-cast v2, Ljava/lang/String;

    #@9a
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@9d
    move-result-object v2

    #@9e
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@a1
    move-result-wide v2

    #@a2
    iget-object v4, p0, Lcom/google/android/gms/analytics/t$1;->uR:Lcom/google/android/gms/analytics/t;

    #@a4
    iget-object v5, p0, Lcom/google/android/gms/analytics/t$1;->uQ:Ljava/util/Map;

    #@a6
    invoke-static {v4, v5}, Lcom/google/android/gms/analytics/t;->d(Lcom/google/android/gms/analytics/t;Ljava/util/Map;)Ljava/lang/String;

    #@a9
    move-result-object v4

    #@aa
    iget-object v5, p0, Lcom/google/android/gms/analytics/t$1;->uR:Lcom/google/android/gms/analytics/t;

    #@ac
    invoke-static {v5}, Lcom/google/android/gms/analytics/t;->c(Lcom/google/android/gms/analytics/t;)Ljava/util/List;

    #@af
    move-result-object v5

    #@b0
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/analytics/ag;->b(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    #@b3
    goto :goto_42
.end method
