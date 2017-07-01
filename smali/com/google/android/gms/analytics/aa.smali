.class public Lcom/google/android/gms/analytics/aa;
.super Ljava/lang/Object;


# static fields
.field private static wK:Lcom/google/android/gms/analytics/GoogleAnalytics;


# direct methods
.method public static A(Ljava/lang/String;)V
    .registers 2

    #@0
    invoke-static {}, Lcom/google/android/gms/analytics/aa;->getLogger()Lcom/google/android/gms/analytics/Logger;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_9

    #@6
    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/Logger;->error(Ljava/lang/String;)V

    #@9
    :cond_9
    return-void
.end method

.method public static B(Ljava/lang/String;)V
    .registers 2

    #@0
    invoke-static {}, Lcom/google/android/gms/analytics/aa;->getLogger()Lcom/google/android/gms/analytics/Logger;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_9

    #@6
    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/Logger;->info(Ljava/lang/String;)V

    #@9
    :cond_9
    return-void
.end method

.method public static C(Ljava/lang/String;)V
    .registers 2

    #@0
    invoke-static {}, Lcom/google/android/gms/analytics/aa;->getLogger()Lcom/google/android/gms/analytics/Logger;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_9

    #@6
    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/Logger;->verbose(Ljava/lang/String;)V

    #@9
    :cond_9
    return-void
.end method

.method public static D(Ljava/lang/String;)V
    .registers 2

    #@0
    invoke-static {}, Lcom/google/android/gms/analytics/aa;->getLogger()Lcom/google/android/gms/analytics/Logger;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_9

    #@6
    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/Logger;->warn(Ljava/lang/String;)V

    #@9
    :cond_9
    return-void
.end method

.method public static dp()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {}, Lcom/google/android/gms/analytics/aa;->getLogger()Lcom/google/android/gms/analytics/Logger;

    #@4
    move-result-object v1

    #@5
    if-eqz v1, :cond_12

    #@7
    invoke-static {}, Lcom/google/android/gms/analytics/aa;->getLogger()Lcom/google/android/gms/analytics/Logger;

    #@a
    move-result-object v1

    #@b
    invoke-interface {v1}, Lcom/google/android/gms/analytics/Logger;->getLogLevel()I

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_12

    #@11
    const/4 v0, 0x1

    #@12
    :cond_12
    return v0
.end method

.method private static getLogger()Lcom/google/android/gms/analytics/Logger;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/analytics/aa;->wK:Lcom/google/android/gms/analytics/GoogleAnalytics;

    #@2
    if-nez v0, :cond_a

    #@4
    invoke-static {}, Lcom/google/android/gms/analytics/GoogleAnalytics;->di()Lcom/google/android/gms/analytics/GoogleAnalytics;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Lcom/google/android/gms/analytics/aa;->wK:Lcom/google/android/gms/analytics/GoogleAnalytics;

    #@a
    :cond_a
    sget-object v0, Lcom/google/android/gms/analytics/aa;->wK:Lcom/google/android/gms/analytics/GoogleAnalytics;

    #@c
    if-eqz v0, :cond_15

    #@e
    sget-object v0, Lcom/google/android/gms/analytics/aa;->wK:Lcom/google/android/gms/analytics/GoogleAnalytics;

    #@10
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getLogger()Lcom/google/android/gms/analytics/Logger;

    #@13
    move-result-object v0

    #@14
    :goto_14
    return-object v0

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    goto :goto_14
.end method
