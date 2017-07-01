.class Lcom/google/android/gms/drive/internal/p$2;
.super Lcom/google/android/gms/drive/internal/p$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/p;->newContents(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IL:Lcom/google/android/gms/drive/internal/p;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/p;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/drive/internal/p$2;->IL:Lcom/google/android/gms/drive/internal/p;

    #@2
    invoke-direct {p0, p1}, Lcom/google/android/gms/drive/internal/p$g;-><init>(Lcom/google/android/gms/drive/internal/p;)V

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
    check-cast p1, Lcom/google/android/gms/drive/internal/r;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/p$2;->a(Lcom/google/android/gms/drive/internal/r;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/r;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/r;->gp()Lcom/google/android/gms/drive/internal/aa;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Lcom/google/android/gms/drive/internal/CreateContentsRequest;

    #@6
    invoke-direct {v1}, Lcom/google/android/gms/drive/internal/CreateContentsRequest;-><init>()V

    #@9
    new-instance v2, Lcom/google/android/gms/drive/internal/p$f;

    #@b
    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/p$f;-><init>(Lcom/google/android/gms/common/api/a$d;)V

    #@e
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/aa;->a(Lcom/google/android/gms/drive/internal/CreateContentsRequest;Lcom/google/android/gms/drive/internal/ab;)V

    #@11
    return-void
.end method
