.class public Lcom/apportable/GooglePlayServices/AuthenticationChecker;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static isLoggedIn(Lcom/google/android/gms/common/api/GoogleApiClient;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    :cond_3
    :goto_3
    return v0

    #@4
    :cond_4
    :try_start_4
    invoke-static {p0}, Lcom/google/android/gms/games/Games;->getCurrentAccountName(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_7} :catch_f

    #@7
    move-result-object v1

    #@8
    if-eqz v1, :cond_3

    #@a
    invoke-interface {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    #@d
    move-result v0

    #@e
    goto :goto_3

    #@f
    :catch_f
    move-exception v1

    #@10
    goto :goto_3
.end method
