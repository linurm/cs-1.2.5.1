.class public Lcom/google/android/gms/internal/lr;
.super Lcom/google/android/gms/internal/hb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/lr$a;,
        Lcom/google/android/gms/internal/lr$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hb",
        "<",
        "Lcom/google/android/gms/internal/lm;",
        ">;"
    }
.end annotation


# instance fields
.field private final akb:I

.field private final mTheme:I

.field private final og:Landroid/app/Activity;

.field private final yQ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;ILjava/lang/String;I)V
    .registers 14

    #@0
    const/4 v0, 0x0

    #@1
    new-array v5, v0, [Ljava/lang/String;

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v2, p2

    #@6
    move-object v3, p3

    #@7
    move-object v4, p4

    #@8
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/hb;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    #@b
    iput-object p1, p0, Lcom/google/android/gms/internal/lr;->og:Landroid/app/Activity;

    #@d
    iput p5, p0, Lcom/google/android/gms/internal/lr;->akb:I

    #@f
    iput-object p6, p0, Lcom/google/android/gms/internal/lr;->yQ:Ljava/lang/String;

    #@11
    iput p7, p0, Lcom/google/android/gms/internal/lr;->mTheme:I

    #@13
    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 8

    #@0
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    const-string v1, "com.google.android.gms.wallet.EXTRA_ENVIRONMENT"

    #@7
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@a
    const-string v1, "androidPackageName"

    #@c
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_21

    #@15
    const-string v1, "com.google.android.gms.wallet.EXTRA_BUYER_ACCOUNT"

    #@17
    new-instance v2, Landroid/accounts/Account;

    #@19
    const-string v3, "com.google"

    #@1b
    invoke-direct {v2, p2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@21
    :cond_21
    const-string v1, "com.google.android.gms.wallet.EXTRA_THEME"

    #@23
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@26
    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/lr;)Landroid/app/Activity;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/lr;->og:Landroid/app/Activity;

    #@2
    return-object v0
.end method

.method private ni()Landroid/os/Bundle;
    .registers 5

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/lr;->akb:I

    #@2
    iget-object v1, p0, Lcom/google/android/gms/internal/lr;->og:Landroid/app/Activity;

    #@4
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    iget-object v2, p0, Lcom/google/android/gms/internal/lr;->yQ:Ljava/lang/String;

    #@a
    iget v3, p0, Lcom/google/android/gms/internal/lr;->mTheme:I

    #@c
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/lr;->a(ILjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/hi;Lcom/google/android/gms/internal/hb$e;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const v0, 0x4da6e8

    #@3
    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/hi;->a(Lcom/google/android/gms/internal/hh;I)V

    #@6
    return-void
.end method

.method public a(Lcom/google/android/gms/wallet/FullWalletRequest;I)V
    .registers 7

    #@0
    new-instance v1, Lcom/google/android/gms/internal/lr$b;

    #@2
    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/lr$b;-><init>(Lcom/google/android/gms/internal/lr;I)V

    #@5
    invoke-direct {p0}, Lcom/google/android/gms/internal/lr;->ni()Landroid/os/Bundle;

    #@8
    move-result-object v2

    #@9
    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/lr;->ft()Landroid/os/IInterface;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/google/android/gms/internal/lm;

    #@f
    invoke-interface {v0, p1, v2, v1}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/wallet/FullWalletRequest;Landroid/os/Bundle;Lcom/google/android/gms/internal/lp;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13

    #@12
    :goto_12
    return-void

    #@13
    :catch_13
    move-exception v0

    #@14
    const-string v2, "WalletClientImpl"

    #@16
    const-string v3, "RemoteException getting full wallet"

    #@18
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    const/16 v0, 0x8

    #@1d
    const/4 v2, 0x0

    #@1e
    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    #@20
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/lr$b;->a(ILcom/google/android/gms/wallet/FullWallet;Landroid/os/Bundle;)V

    #@23
    goto :goto_12
.end method

.method public a(Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V
    .registers 7

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/lr;->ni()Landroid/os/Bundle;

    #@3
    move-result-object v1

    #@4
    new-instance v2, Lcom/google/android/gms/internal/lr$b;

    #@6
    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/internal/lr$b;-><init>(Lcom/google/android/gms/internal/lr;I)V

    #@9
    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/lr;->ft()Landroid/os/IInterface;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/google/android/gms/internal/lm;

    #@f
    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/wallet/MaskedWalletRequest;Landroid/os/Bundle;Lcom/google/android/gms/internal/lp;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13

    #@12
    :goto_12
    return-void

    #@13
    :catch_13
    move-exception v0

    #@14
    const-string v1, "WalletClientImpl"

    #@16
    const-string v3, "RemoteException getting masked wallet"

    #@18
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    const/16 v0, 0x8

    #@1d
    const/4 v1, 0x0

    #@1e
    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    #@20
    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/internal/lr$b;->a(ILcom/google/android/gms/wallet/MaskedWallet;Landroid/os/Bundle;)V

    #@23
    goto :goto_12
.end method

.method public a(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V
    .registers 4

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/lr;->ni()Landroid/os/Bundle;

    #@3
    move-result-object v1

    #@4
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/lr;->ft()Landroid/os/IInterface;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/google/android/gms/internal/lm;

    #@a
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    #@d
    :goto_d
    return-void

    #@e
    :catch_e
    move-exception v0

    #@f
    goto :goto_d
.end method

.method protected bu(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lm;
    .registers 3

    #@0
    invoke-static {p1}, Lcom/google/android/gms/internal/lm$a;->bq(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lm;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected bu()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "com.google.android.gms.wallet.service.BIND"

    #@2
    return-object v0
.end method

.method protected bv()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "com.google.android.gms.wallet.internal.IOwService"

    #@2
    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/lr;->ni()Landroid/os/Bundle;

    #@3
    move-result-object v1

    #@4
    new-instance v2, Lcom/google/android/gms/internal/lr$b;

    #@6
    invoke-direct {v2, p0, p3}, Lcom/google/android/gms/internal/lr$b;-><init>(Lcom/google/android/gms/internal/lr;I)V

    #@9
    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/lr;->ft()Landroid/os/IInterface;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/google/android/gms/internal/lm;

    #@f
    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/lm;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/lp;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13

    #@12
    :goto_12
    return-void

    #@13
    :catch_13
    move-exception v0

    #@14
    const-string v1, "WalletClientImpl"

    #@16
    const-string v3, "RemoteException changing masked wallet"

    #@18
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    const/16 v0, 0x8

    #@1d
    const/4 v1, 0x0

    #@1e
    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    #@20
    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/internal/lr$b;->a(ILcom/google/android/gms/wallet/MaskedWallet;Landroid/os/Bundle;)V

    #@23
    goto :goto_12
.end method

.method public dQ(I)V
    .registers 6

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/lr;->ni()Landroid/os/Bundle;

    #@3
    move-result-object v1

    #@4
    new-instance v2, Lcom/google/android/gms/internal/lr$b;

    #@6
    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/lr$b;-><init>(Lcom/google/android/gms/internal/lr;I)V

    #@9
    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/lr;->ft()Landroid/os/IInterface;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/google/android/gms/internal/lm;

    #@f
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/lm;->a(Landroid/os/Bundle;Lcom/google/android/gms/internal/lp;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13

    #@12
    :goto_12
    return-void

    #@13
    :catch_13
    move-exception v0

    #@14
    const-string v1, "WalletClientImpl"

    #@16
    const-string v3, "RemoteException during checkForPreAuthorization"

    #@18
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    const/16 v0, 0x8

    #@1d
    const/4 v1, 0x0

    #@1e
    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    #@20
    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/internal/lr$b;->a(IZLandroid/os/Bundle;)V

    #@23
    goto :goto_12
.end method

.method protected synthetic x(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lr;->bu(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lm;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
