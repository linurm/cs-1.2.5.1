.class final Lcom/google/android/gms/wallet/Wallet$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/Wallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/Api$b",
        "<",
        "Lcom/google/android/gms/internal/lr;",
        "Lcom/google/android/gms/wallet/Wallet$WalletOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gy;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;
    .registers 14

    #@0
    move-object v4, p4

    #@1
    check-cast v4, Lcom/google/android/gms/wallet/Wallet$WalletOptions;

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v2, p2

    #@6
    move-object v3, p3

    #@7
    move-object v5, p5

    #@8
    move-object v6, p6

    #@9
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/wallet/Wallet$1;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gy;Lcom/google/android/gms/wallet/Wallet$WalletOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/lr;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gy;Lcom/google/android/gms/wallet/Wallet$WalletOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/lr;
    .registers 15

    #@0
    instance-of v0, p1, Landroid/app/Activity;

    #@2
    const-string v1, "An Activity must be used for Wallet APIs"

    #@4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@7
    move-object v1, p1

    #@8
    check-cast v1, Landroid/app/Activity;

    #@a
    if-eqz p4, :cond_1d

    #@c
    :goto_c
    new-instance v0, Lcom/google/android/gms/internal/lr;

    #@e
    iget v5, p4, Lcom/google/android/gms/wallet/Wallet$WalletOptions;->environment:I

    #@10
    invoke-virtual {p3}, Lcom/google/android/gms/internal/gy;->getAccountName()Ljava/lang/String;

    #@13
    move-result-object v6

    #@14
    iget v7, p4, Lcom/google/android/gms/wallet/Wallet$WalletOptions;->theme:I

    #@16
    move-object v2, p2

    #@17
    move-object v3, p5

    #@18
    move-object v4, p6

    #@19
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/lr;-><init>(Landroid/app/Activity;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;ILjava/lang/String;I)V

    #@1c
    return-object v0

    #@1d
    :cond_1d
    new-instance p4, Lcom/google/android/gms/wallet/Wallet$WalletOptions;

    #@1f
    const/4 v0, 0x0

    #@20
    invoke-direct {p4, v0}, Lcom/google/android/gms/wallet/Wallet$WalletOptions;-><init>(Lcom/google/android/gms/wallet/Wallet$1;)V

    #@23
    goto :goto_c
.end method

.method public getPriority()I
    .registers 2

    #@0
    const v0, 0x7fffffff

    #@3
    return v0
.end method
