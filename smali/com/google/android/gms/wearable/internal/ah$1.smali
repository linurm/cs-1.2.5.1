.class Lcom/google/android/gms/wearable/internal/ah$1;
.super Lcom/google/android/gms/wearable/internal/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/internal/ah;->getLocalNode(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/d",
        "<",
        "Lcom/google/android/gms/wearable/NodeApi$GetLocalNodeResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic alX:Lcom/google/android/gms/wearable/internal/ah;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/ah;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/ah$1;->alX:Lcom/google/android/gms/wearable/internal/ah;

    #@2
    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/d;-><init>()V

    #@5
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
    check-cast p1, Lcom/google/android/gms/wearable/internal/au;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/ah$1;->a(Lcom/google/android/gms/wearable/internal/au;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/wearable/internal/au;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-virtual {p1, p0}, Lcom/google/android/gms/wearable/internal/au;->p(Lcom/google/android/gms/common/api/a$d;)V

    #@3
    return-void
.end method

.method protected av(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/NodeApi$GetLocalNodeResult;
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/wearable/internal/ah$b;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/ah$b;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/Node;)V

    #@6
    return-object v0
.end method

.method protected synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/ah$1;->av(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/NodeApi$GetLocalNodeResult;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
