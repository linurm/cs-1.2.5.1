.class final Lcom/google/android/gms/appstate/AppStateManager$6;
.super Lcom/google/android/gms/appstate/AppStateManager$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/appstate/AppStateManager;->load(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;
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
    iput p1, p0, Lcom/google/android/gms/appstate/AppStateManager$6;->yK:I

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Lcom/google/android/gms/appstate/AppStateManager$e;-><init>(Lcom/google/android/gms/appstate/AppStateManager$1;)V

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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$6;->a(Lcom/google/android/gms/internal/ga;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ga;)V
    .registers 3

    #@0
    iget v0, p0, Lcom/google/android/gms/appstate/AppStateManager$6;->yK:I

    #@2
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/ga;->b(Lcom/google/android/gms/common/api/a$d;I)V

    #@5
    return-void
.end method
