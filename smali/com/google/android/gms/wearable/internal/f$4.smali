.class Lcom/google/android/gms/wearable/internal/f$4;
.super Lcom/google/android/gms/wearable/internal/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/internal/f;->getDataItems(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/d",
        "<",
        "Lcom/google/android/gms/wearable/DataItemBuffer;",
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
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/f$4;->alC:Lcom/google/android/gms/wearable/internal/f;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/f$4;->abk:Landroid/net/Uri;

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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/f$4;->a(Lcom/google/android/gms/wearable/internal/au;)V

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
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/f$4;->abk:Landroid/net/Uri;

    #@2
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/wearable/internal/au;->b(Lcom/google/android/gms/common/api/a$d;Landroid/net/Uri;)V

    #@5
    return-void
.end method

.method protected ar(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/DataItemBuffer;
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/wearable/DataItemBuffer;

    #@2
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    #@5
    move-result v1

    #@6
    invoke-static {v1}, Lcom/google/android/gms/common/data/DataHolder;->af(I)Lcom/google/android/gms/common/data/DataHolder;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lcom/google/android/gms/wearable/DataItemBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@d
    return-object v0
.end method

.method protected synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/f$4;->ar(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/DataItemBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
