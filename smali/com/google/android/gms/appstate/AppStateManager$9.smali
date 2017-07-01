.class final Lcom/google/android/gms/appstate/AppStateManager$9;
.super Lcom/google/android/gms/appstate/AppStateManager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/appstate/AppStateManager;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/google/android/gms/appstate/AppStateManager$d;-><init>(Lcom/google/android/gms/appstate/AppStateManager$1;)V

    #@4
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$9;->a(Lcom/google/android/gms/internal/ga;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ga;)V
    .registers 2

    #@0
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ga;->b(Lcom/google/android/gms/common/api/a$d;)V

    #@3
    return-void
.end method
