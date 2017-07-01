.class final Lcom/google/android/gms/identity/intents/Address$2;
.super Lcom/google/android/gms/identity/intents/Address$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/identity/intents/Address;->requestUserAddress(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/identity/intents/UserAddressRequest;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic UC:Lcom/google/android/gms/identity/intents/UserAddressRequest;

.field final synthetic UD:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/identity/intents/UserAddressRequest;I)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/identity/intents/Address$2;->UC:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    #@2
    iput p2, p0, Lcom/google/android/gms/identity/intents/Address$2;->UD:I

    #@4
    invoke-direct {p0}, Lcom/google/android/gms/identity/intents/Address$a;-><init>()V

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
    check-cast p1, Lcom/google/android/gms/internal/iw;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/identity/intents/Address$2;->a(Lcom/google/android/gms/internal/iw;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/iw;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/Address$2;->UC:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    #@2
    iget v1, p0, Lcom/google/android/gms/identity/intents/Address$2;->UD:I

    #@4
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/iw;->a(Lcom/google/android/gms/identity/intents/UserAddressRequest;I)V

    #@7
    sget-object v0, Lcom/google/android/gms/common/api/Status;->En:Lcom/google/android/gms/common/api/Status;

    #@9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/identity/intents/Address$2;->b(Lcom/google/android/gms/common/api/Result;)V

    #@c
    return-void
.end method
