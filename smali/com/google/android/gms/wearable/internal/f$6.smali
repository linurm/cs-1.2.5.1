.class Lcom/google/android/gms/wearable/internal/f$6;
.super Lcom/google/android/gms/wearable/internal/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/internal/f;->getFdForAsset(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/Asset;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/d",
        "<",
        "Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic alC:Lcom/google/android/gms/wearable/internal/f;

.field final synthetic alD:Lcom/google/android/gms/wearable/Asset;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/f;Lcom/google/android/gms/wearable/Asset;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/f$6;->alC:Lcom/google/android/gms/wearable/internal/f;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/f$6;->alD:Lcom/google/android/gms/wearable/Asset;

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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/f$6;->a(Lcom/google/android/gms/wearable/internal/au;)V

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
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/f$6;->alD:Lcom/google/android/gms/wearable/Asset;

    #@2
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/wearable/internal/au;->a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/wearable/Asset;)V

    #@5
    return-void
.end method

.method protected at(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/wearable/internal/f$c;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/f$c;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;)V

    #@6
    return-object v0
.end method

.method protected synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/f$6;->at(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
