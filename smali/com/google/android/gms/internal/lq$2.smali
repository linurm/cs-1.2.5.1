.class Lcom/google/android/gms/internal/lq$2;
.super Lcom/google/android/gms/wallet/Wallet$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/lq;->loadMaskedWallet(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic UD:I

.field final synthetic akG:Lcom/google/android/gms/internal/lq;

.field final synthetic akH:Lcom/google/android/gms/wallet/MaskedWalletRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/lq;Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/lq$2;->akG:Lcom/google/android/gms/internal/lq;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/internal/lq$2;->akH:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@4
    iput p3, p0, Lcom/google/android/gms/internal/lq$2;->UD:I

    #@6
    invoke-direct {p0}, Lcom/google/android/gms/wallet/Wallet$b;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    check-cast p1, Lcom/google/android/gms/internal/lr;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lq$2;->a(Lcom/google/android/gms/internal/lr;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/lr;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/lq$2;->akH:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@2
    iget v1, p0, Lcom/google/android/gms/internal/lq$2;->UD:I

    #@4
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/lr;->a(Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V

    #@7
    sget-object v0, Lcom/google/android/gms/common/api/Status;->En:Lcom/google/android/gms/common/api/Status;

    #@9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lq$2;->b(Lcom/google/android/gms/common/api/Result;)V

    #@c
    return-void
.end method
