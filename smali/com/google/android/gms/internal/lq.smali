.class public Lcom/google/android/gms/internal/lq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/wallet/Payments;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public changeMaskedWallet(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    #@0
    new-instance v0, Lcom/google/android/gms/internal/lq$4;

    #@2
    invoke-direct {v0, p0, p2, p3, p4}, Lcom/google/android/gms/internal/lq$4;-><init>(Lcom/google/android/gms/internal/lq;Ljava/lang/String;Ljava/lang/String;I)V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    return-void
.end method

.method public checkForPreAuthorization(Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/internal/lq$1;

    #@2
    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/lq$1;-><init>(Lcom/google/android/gms/internal/lq;I)V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    return-void
.end method

.method public loadFullWallet(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/FullWalletRequest;I)V
    .registers 5

    #@0
    new-instance v0, Lcom/google/android/gms/internal/lq$3;

    #@2
    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/lq$3;-><init>(Lcom/google/android/gms/internal/lq;Lcom/google/android/gms/wallet/FullWalletRequest;I)V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    return-void
.end method

.method public loadMaskedWallet(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V
    .registers 5

    #@0
    new-instance v0, Lcom/google/android/gms/internal/lq$2;

    #@2
    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/lq$2;-><init>(Lcom/google/android/gms/internal/lq;Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    return-void
.end method

.method public notifyTransactionStatus(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/internal/lq$5;

    #@2
    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/lq$5;-><init>(Lcom/google/android/gms/internal/lq;Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    return-void
.end method
