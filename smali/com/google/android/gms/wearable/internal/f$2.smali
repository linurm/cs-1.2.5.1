.class Lcom/google/android/gms/wearable/internal/f$2;
.super Lcom/google/android/gms/wearable/internal/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/internal/f;->getDataItem(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/d",
        "<",
        "Lcom/google/android/gms/wearable/DataApi$DataItemResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic abk:Landroid/net/Uri;

.field final synthetic alC:Lcom/google/android/gms/wearable/internal/f;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/f;Landroid/net/Uri;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/f$2;->alC:Lcom/google/android/gms/wearable/internal/f;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/f$2;->abk:Landroid/net/Uri;

    #@4
    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/d;-><init>()V

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
    check-cast p1, Lcom/google/android/gms/wearable/internal/au;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/f$2;->a(Lcom/google/android/gms/wearable/internal/au;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/wearable/internal/au;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/f$2;->abk:Landroid/net/Uri;

    #@2
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/wearable/internal/au;->a(Lcom/google/android/gms/common/api/a$d;Landroid/net/Uri;)V

    #@5
    return-void
.end method

.method protected aq(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/DataApi$DataItemResult;
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/wearable/internal/f$a;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/f$a;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/DataItem;)V

    #@6
    return-object v0
.end method

.method protected synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/f$2;->aq(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/DataApi$DataItemResult;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
