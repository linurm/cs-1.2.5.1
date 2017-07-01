.class Lcom/google/android/gms/wearable/internal/f$8;
.super Lcom/google/android/gms/wearable/internal/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/internal/f;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/DataApi$DataListener;[Landroid/content/IntentFilter;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/d",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic alC:Lcom/google/android/gms/wearable/internal/f;

.field final synthetic alF:Lcom/google/android/gms/wearable/DataApi$DataListener;

.field final synthetic alG:[Landroid/content/IntentFilter;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/f;Lcom/google/android/gms/wearable/DataApi$DataListener;[Landroid/content/IntentFilter;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/f$8;->alC:Lcom/google/android/gms/wearable/internal/f;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/f$8;->alF:Lcom/google/android/gms/wearable/DataApi$DataListener;

    #@4
    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/f$8;->alG:[Landroid/content/IntentFilter;

    #@6
    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/d;-><init>()V

    #@9
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/f$8;->a(Lcom/google/android/gms/wearable/internal/au;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/wearable/internal/au;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/f$8;->alF:Lcom/google/android/gms/wearable/DataApi$DataListener;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/f$8;->alG:[Landroid/content/IntentFilter;

    #@4
    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/wearable/internal/au;->a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/wearable/DataApi$DataListener;[Landroid/content/IntentFilter;)V

    #@7
    return-void
.end method

.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/f$8;->d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@2
    const/16 v1, 0xd

    #@4
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@7
    return-object v0
.end method
