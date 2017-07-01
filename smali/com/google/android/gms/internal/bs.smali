.class public final Lcom/google/android/gms/internal/bs;
.super Lcom/google/android/gms/internal/bt$a;


# instance fields
.field private nQ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/bt$a;-><init>()V

    #@3
    return-void
.end method

.method private n(Ljava/lang/String;)Lcom/google/android/gms/internal/bu;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NETWORK_EXTRAS::",
            "Lcom/google/ads/mediation/NetworkExtras;",
            "SERVER_PARAMETERS:",
            "Lcom/google/ads/mediation/MediationServerParameters;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/bu;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    :try_start_1
    const-class v1, Lcom/google/android/gms/internal/bs;

    #@3
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@6
    move-result-object v1

    #@7
    invoke-static {p1, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@a
    move-result-object v0

    #@b
    const-class v1, Lcom/google/ads/mediation/MediationAdapter;

    #@d
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_2c

    #@13
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/google/ads/mediation/MediationAdapter;

    #@19
    new-instance v2, Lcom/google/android/gms/internal/bz;

    #@1b
    iget-object v1, p0, Lcom/google/android/gms/internal/bs;->nQ:Ljava/util/Map;

    #@1d
    invoke-interface {v0}, Lcom/google/ads/mediation/MediationAdapter;->getAdditionalParametersType()Ljava/lang/Class;

    #@20
    move-result-object v3

    #@21
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    check-cast v1, Lcom/google/ads/mediation/NetworkExtras;

    #@27
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/bz;-><init>(Lcom/google/ads/mediation/MediationAdapter;Lcom/google/ads/mediation/NetworkExtras;)V

    #@2a
    move-object v0, v2

    #@2b
    :goto_2b
    return-object v0

    #@2c
    :cond_2c
    const-class v1, Lcom/google/android/gms/ads/mediation/MediationAdapter;

    #@2e
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_41

    #@34
    new-instance v1, Lcom/google/android/gms/internal/bx;

    #@36
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationAdapter;

    #@3c
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/bx;-><init>(Lcom/google/android/gms/ads/mediation/MediationAdapter;)V

    #@3f
    move-object v0, v1

    #@40
    goto :goto_2b

    #@41
    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string v1, "Could not instantiate mediation adapter: "

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    const-string v1, " (not a valid adapter)."

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v0

    #@56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v0

    #@5a
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@5d
    new-instance v0, Landroid/os/RemoteException;

    #@5f
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    #@62
    throw v0
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_63} :catch_63

    #@63
    :catch_63
    move-exception v0

    #@64
    new-instance v1, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string v2, "Could not instantiate mediation adapter: "

    #@6b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    const-string v2, ". "

    #@75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v1

    #@79
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@7c
    move-result-object v0

    #@7d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v0

    #@81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v0

    #@85
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@88
    new-instance v0, Landroid/os/RemoteException;

    #@8a
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    #@8d
    throw v0
.end method


# virtual methods
.method public c(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;)V"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/bs;->nQ:Ljava/util/Map;

    #@2
    return-void
.end method

.method public m(Ljava/lang/String;)Lcom/google/android/gms/internal/bu;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bs;->n(Ljava/lang/String;)Lcom/google/android/gms/internal/bu;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
