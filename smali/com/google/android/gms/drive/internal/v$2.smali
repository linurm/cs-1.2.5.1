.class Lcom/google/android/gms/drive/internal/v$2;
.super Lcom/google/android/gms/drive/internal/v$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/v;->listParents(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Jl:Lcom/google/android/gms/drive/internal/v;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/v;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/drive/internal/v$2;->Jl:Lcom/google/android/gms/drive/internal/v;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/drive/internal/v$c;-><init>(Lcom/google/android/gms/drive/internal/v;Lcom/google/android/gms/drive/internal/v$1;)V

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
    check-cast p1, Lcom/google/android/gms/drive/internal/r;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/v$2;->a(Lcom/google/android/gms/drive/internal/r;)V

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
    new-instance v1, Lcom/google/android/gms/drive/internal/ListParentsRequest;

    #@6
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/v$2;->Jl:Lcom/google/android/gms/drive/internal/v;

    #@8
    iget-object v2, v2, Lcom/google/android/gms/drive/internal/v;->Hz:Lcom/google/android/gms/drive/DriveId;

    #@a
    invoke-direct {v1, v2}, Lcom/google/android/gms/drive/internal/ListParentsRequest;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    #@d
    new-instance v2, Lcom/google/android/gms/drive/internal/v$b;

    #@f
    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/v$b;-><init>(Lcom/google/android/gms/common/api/a$d;)V

    #@12
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/aa;->a(Lcom/google/android/gms/drive/internal/ListParentsRequest;Lcom/google/android/gms/drive/internal/ab;)V

    #@15
    return-void
.end method
