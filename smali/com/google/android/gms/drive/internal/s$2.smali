.class Lcom/google/android/gms/drive/internal/s$2;
.super Lcom/google/android/gms/drive/internal/s$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/s;->commitAndCloseContents(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/Contents;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IM:Lcom/google/android/gms/drive/Contents;

.field final synthetic Jc:Lcom/google/android/gms/drive/internal/s;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/s;Lcom/google/android/gms/drive/Contents;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/drive/internal/s$2;->Jc:Lcom/google/android/gms/drive/internal/s;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/drive/internal/s$2;->IM:Lcom/google/android/gms/drive/Contents;

    #@4
    const/4 v0, 0x0

    #@5
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/drive/internal/s$b;-><init>(Lcom/google/android/gms/drive/internal/s;Lcom/google/android/gms/drive/internal/s$1;)V

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
    check-cast p1, Lcom/google/android/gms/drive/internal/r;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/s$2;->a(Lcom/google/android/gms/drive/internal/r;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/r;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/s$2;->IM:Lcom/google/android/gms/drive/Contents;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->close()V

    #@5
    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/r;->gp()Lcom/google/android/gms/drive/internal/aa;

    #@8
    move-result-object v0

    #@9
    new-instance v1, Lcom/google/android/gms/drive/internal/CloseContentsRequest;

    #@b
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/s$2;->IM:Lcom/google/android/gms/drive/Contents;

    #@d
    const/4 v3, 0x1

    #@e
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/CloseContentsRequest;-><init>(Lcom/google/android/gms/drive/Contents;Z)V

    #@11
    new-instance v2, Lcom/google/android/gms/drive/internal/aw;

    #@13
    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/aw;-><init>(Lcom/google/android/gms/common/api/a$d;)V

    #@16
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/aa;->a(Lcom/google/android/gms/drive/internal/CloseContentsRequest;Lcom/google/android/gms/drive/internal/ab;)V

    #@19
    return-void
.end method
