.class Lcom/google/android/gms/tagmanager/ay;
.super Ljava/lang/Object;


# static fields
.field private static afS:Ljava/lang/String;

.field static afT:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/tagmanager/ay;->afT:Ljava/util/Map;

    #@7
    return-void
.end method

.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static bX(Ljava/lang/String;)V
    .registers 3

    #@0
    const-class v0, Lcom/google/android/gms/tagmanager/ay;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sput-object p0, Lcom/google/android/gms/tagmanager/ay;->afS:Ljava/lang/String;

    #@5
    const-class v0, Lcom/google/android/gms/tagmanager/ay;

    #@7
    monitor-exit v0

    #@8
    return-void

    #@9
    :catchall_9
    move-exception v0

    #@a
    const-class v1, Lcom/google/android/gms/tagmanager/ay;

    #@c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_9

    #@d
    throw v0
.end method

.method static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/ay;->afT:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    if-nez v0, :cond_1e

    #@a
    const-string v0, "gtm_click_referrers"

    #@c
    const/4 v1, 0x0

    #@d
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    #@10
    move-result-object v0

    #@11
    if-eqz v0, :cond_23

    #@13
    const-string v1, ""

    #@15
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    :goto_19
    sget-object v1, Lcom/google/android/gms/tagmanager/ay;->afT:Ljava/util/Map;

    #@1b
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    :cond_1e
    invoke-static {v0, p2}, Lcom/google/android/gms/tagmanager/ay;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    return-object v0

    #@23
    :cond_23
    const-string v0, ""

    #@25
    goto :goto_19
.end method

.method static d(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    #@0
    const-string v0, "gtm_install_referrer"

    #@2
    const-string v1, "referrer"

    #@4
    invoke-static {p0, v0, v1, p1}, Lcom/google/android/gms/tagmanager/cy;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@7
    invoke-static {p0, p1}, Lcom/google/android/gms/tagmanager/ay;->f(Landroid/content/Context;Ljava/lang/String;)V

    #@a
    return-void
.end method

.method static e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/ay;->afS:Ljava/lang/String;

    #@2
    if-nez v0, :cond_21

    #@4
    const-class v0, Lcom/google/android/gms/tagmanager/ay;

    #@6
    monitor-enter v0

    #@7
    :try_start_7
    sget-object v0, Lcom/google/android/gms/tagmanager/ay;->afS:Ljava/lang/String;

    #@9
    if-nez v0, :cond_1e

    #@b
    const-string v0, "gtm_install_referrer"

    #@d
    const/4 v1, 0x0

    #@e
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    #@11
    move-result-object v0

    #@12
    if-eqz v0, :cond_28

    #@14
    const-string v1, "referrer"

    #@16
    const-string v2, ""

    #@18
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    sput-object v0, Lcom/google/android/gms/tagmanager/ay;->afS:Ljava/lang/String;

    #@1e
    :cond_1e
    :goto_1e
    const-class v0, Lcom/google/android/gms/tagmanager/ay;

    #@20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_2d

    #@21
    :cond_21
    sget-object v0, Lcom/google/android/gms/tagmanager/ay;->afS:Ljava/lang/String;

    #@23
    invoke-static {v0, p1}, Lcom/google/android/gms/tagmanager/ay;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0

    #@28
    :cond_28
    :try_start_28
    const-string v0, ""

    #@2a
    sput-object v0, Lcom/google/android/gms/tagmanager/ay;->afS:Ljava/lang/String;

    #@2c
    goto :goto_1e

    #@2d
    :catchall_2d
    move-exception v0

    #@2e
    const-class v1, Lcom/google/android/gms/tagmanager/ay;

    #@30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_2d

    #@31
    throw v0
.end method

.method static f(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    #@0
    const-string v0, "conv"

    #@2
    invoke-static {p1, v0}, Lcom/google/android/gms/tagmanager/ay;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_18

    #@8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@b
    move-result v1

    #@c
    if-lez v1, :cond_18

    #@e
    sget-object v1, Lcom/google/android/gms/tagmanager/ay;->afT:Ljava/util/Map;

    #@10
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    const-string v1, "gtm_click_referrers"

    #@15
    invoke-static {p0, v1, v0, p1}, Lcom/google/android/gms/tagmanager/cy;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@18
    :cond_18
    return-void
.end method

.method static p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    if-nez p1, :cond_b

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_9

    #@8
    :goto_8
    return-object p0

    #@9
    :cond_9
    const/4 p0, 0x0

    #@a
    goto :goto_8

    #@b
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string v1, "http://hostname/?"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object p0

    #@26
    goto :goto_8
.end method
