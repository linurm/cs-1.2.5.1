.class Lcom/google/android/gms/internal/ki$1;
.super Lcom/google/android/gms/internal/ki$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ki;->revokeAccessAndDisconnect(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic acd:Lcom/google/android/gms/internal/ki;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ki;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/ki$1;->acd:Lcom/google/android/gms/internal/ki;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ki$a;-><init>(Lcom/google/android/gms/internal/ki$1;)V

    #@6
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ki$1;->a(Lcom/google/android/gms/plus/internal/e;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/plus/internal/e;)V
    .registers 2

    #@0
    invoke-virtual {p1, p0}, Lcom/google/android/gms/plus/internal/e;->m(Lcom/google/android/gms/common/api/a$d;)V

    #@3
    return-void
.end method
