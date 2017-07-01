.class Lcom/google/android/gms/internal/lq$4;
.super Lcom/google/android/gms/wallet/Wallet$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/lq;->changeMaskedWallet(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic UD:I

.field final synthetic akG:Lcom/google/android/gms/internal/lq;

.field final synthetic akJ:Ljava/lang/String;

.field final synthetic akK:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/lq;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/lq$4;->akG:Lcom/google/android/gms/internal/lq;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/internal/lq$4;->akJ:Ljava/lang/String;

    #@4
    iput-object p3, p0, Lcom/google/android/gms/internal/lq$4;->akK:Ljava/lang/String;

    #@6
    iput p4, p0, Lcom/google/android/gms/internal/lq$4;->UD:I

    #@8
    invoke-direct {p0}, Lcom/google/android/gms/wallet/Wallet$b;-><init>()V

    #@b
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lq$4;->a(Lcom/google/android/gms/internal/lr;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/lr;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/lq$4;->akJ:Ljava/lang/String;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/internal/lq$4;->akK:Ljava/lang/String;

    #@4
    iget v2, p0, Lcom/google/android/gms/internal/lq$4;->UD:I

    #@6
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/lr;->d(Ljava/lang/String;Ljava/lang/String;I)V

    #@9
    sget-object v0, Lcom/google/android/gms/common/api/Status;->En:Lcom/google/android/gms/common/api/Status;

    #@b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lq$4;->b(Lcom/google/android/gms/common/api/Result;)V

    #@e
    return-void
.end method
