.class public final Lcom/google/android/gms/internal/ki;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/plus/Account;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ki$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/plus/internal/e;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/common/api/Api$c",
            "<",
            "Lcom/google/android/gms/plus/internal/e;",
            ">;)",
            "Lcom/google/android/gms/plus/internal/e;"
        }
    .end annotation

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    if-eqz p0, :cond_21

    #@4
    move v0, v1

    #@5
    :goto_5
    const-string v3, "GoogleApiClient parameter is required."

    #@7
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@a
    invoke-interface {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    #@d
    move-result v0

    #@e
    const-string v3, "GoogleApiClient must be connected."

    #@10
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@13
    invoke-interface {p0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/google/android/gms/plus/internal/e;

    #@19
    if-eqz v0, :cond_23

    #@1b
    :goto_1b
    const-string v2, "GoogleApiClient is not configured to use the Plus.API Api. Pass this into GoogleApiClient.Builder#addApi() to use this feature."

    #@1d
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@20
    return-object v0

    #@21
    :cond_21
    move v0, v2

    #@22
    goto :goto_5

    #@23
    :cond_23
    move v1, v2

    #@24
    goto :goto_1b
.end method


# virtual methods
.method public clearDefaultAccount(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 3

    #@0
    sget-object v0, Lcom/google/android/gms/plus/Plus;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ki;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/plus/internal/e;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/e;->clearDefaultAccount()V

    #@9
    return-void
.end method

.method public getAccountName(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;
    .registers 3

    #@0
    sget-object v0, Lcom/google/android/gms/plus/Plus;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ki;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/plus/internal/e;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/e;->getAccountName()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public revokeAccessAndDisconnect(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/internal/ki$1;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ki$1;-><init>(Lcom/google/android/gms/internal/ki;)V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method
