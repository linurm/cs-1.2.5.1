.class Lcom/google/android/gms/internal/kl$4;
.super Lcom/google/android/gms/internal/kl$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/kl;->remove(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ace:Lcom/google/android/gms/internal/kl;

.field final synthetic ack:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/kl;Ljava/lang/String;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/kl$4;->ace:Lcom/google/android/gms/internal/kl;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/internal/kl$4;->ack:Ljava/lang/String;

    #@4
    const/4 v0, 0x0

    #@5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/kl$b;-><init>(Lcom/google/android/gms/internal/kl$1;)V

    #@8
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
    check-cast p1, Lcom/google/android/gms/plus/internal/e;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/kl$4;->a(Lcom/google/android/gms/plus/internal/e;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/plus/internal/e;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/kl$4;->ack:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/internal/e;->removeMoment(Ljava/lang/String;)V

    #@5
    sget-object v0, Lcom/google/android/gms/common/api/Status;->En:Lcom/google/android/gms/common/api/Status;

    #@7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kl$4;->b(Lcom/google/android/gms/common/api/Result;)V

    #@a
    return-void
.end method
