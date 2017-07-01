.class Lcom/google/android/gms/internal/lq$1;
.super Lcom/google/android/gms/wallet/Wallet$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/lq;->checkForPreAuthorization(Lcom/google/android/gms/common/api/GoogleApiClient;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic UD:I

.field final synthetic akG:Lcom/google/android/gms/internal/lq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/lq;I)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/lq$1;->akG:Lcom/google/android/gms/internal/lq;

    #@2
    iput p2, p0, Lcom/google/android/gms/internal/lq$1;->UD:I

    #@4
    invoke-direct {p0}, Lcom/google/android/gms/wallet/Wallet$b;-><init>()V

    #@7
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lq$1;->a(Lcom/google/android/gms/internal/lr;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/lr;)V
    .registers 3

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/lq$1;->UD:I

    #@2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lr;->dQ(I)V

    #@5
    sget-object v0, Lcom/google/android/gms/common/api/Status;->En:Lcom/google/android/gms/common/api/Status;

    #@7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lq$1;->b(Lcom/google/android/gms/common/api/Result;)V

    #@a
    return-void
.end method
