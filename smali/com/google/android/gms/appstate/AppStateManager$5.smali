.class final Lcom/google/android/gms/appstate/AppStateManager$5;
.super Lcom/google/android/gms/appstate/AppStateManager$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/appstate/AppStateManager;->delete(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic yK:I


# direct methods
.method constructor <init>(I)V
    .registers 3

    #@0
    iput p1, p0, Lcom/google/android/gms/appstate/AppStateManager$5;->yK:I

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Lcom/google/android/gms/appstate/AppStateManager$b;-><init>(Lcom/google/android/gms/appstate/AppStateManager$1;)V

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
    check-cast p1, Lcom/google/android/gms/internal/ga;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$5;->a(Lcom/google/android/gms/internal/ga;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ga;)V
    .registers 3

    #@0
    iget v0, p0, Lcom/google/android/gms/appstate/AppStateManager$5;->yK:I

    #@2
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/ga;->a(Lcom/google/android/gms/common/api/a$d;I)V

    #@5
    return-void
.end method

.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$5;->g(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public g(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/appstate/AppStateManager$5$1;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$5$1;-><init>(Lcom/google/android/gms/appstate/AppStateManager$5;Lcom/google/android/gms/common/api/Status;)V

    #@5
    return-object v0
.end method
