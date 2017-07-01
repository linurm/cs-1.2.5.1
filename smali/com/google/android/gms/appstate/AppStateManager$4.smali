.class final Lcom/google/android/gms/appstate/AppStateManager$4;
.super Lcom/google/android/gms/appstate/AppStateManager$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/appstate/AppStateManager;->updateImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;I[B)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic yK:I

.field final synthetic yL:[B


# direct methods
.method constructor <init>(I[B)V
    .registers 4

    #@0
    iput p1, p0, Lcom/google/android/gms/appstate/AppStateManager$4;->yK:I

    #@2
    iput-object p2, p0, Lcom/google/android/gms/appstate/AppStateManager$4;->yL:[B

    #@4
    const/4 v0, 0x0

    #@5
    invoke-direct {p0, v0}, Lcom/google/android/gms/appstate/AppStateManager$e;-><init>(Lcom/google/android/gms/appstate/AppStateManager$1;)V

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
    check-cast p1, Lcom/google/android/gms/internal/ga;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$4;->a(Lcom/google/android/gms/internal/ga;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ga;)V
    .registers 4

    #@0
    iget v0, p0, Lcom/google/android/gms/appstate/AppStateManager$4;->yK:I

    #@2
    iget-object v1, p0, Lcom/google/android/gms/appstate/AppStateManager$4;->yL:[B

    #@4
    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ga;->a(Lcom/google/android/gms/common/api/a$d;I[B)V

    #@7
    return-void
.end method
