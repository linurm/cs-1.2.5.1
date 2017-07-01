.class Lcom/google/android/gms/drive/internal/p$4;
.super Lcom/google/android/gms/drive/internal/p$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/p;->fetchDriveId(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IL:Lcom/google/android/gms/drive/internal/p;

.field final synthetic IN:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/p;Ljava/lang/String;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/drive/internal/p$4;->IL:Lcom/google/android/gms/drive/internal/p;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/drive/internal/p$4;->IN:Ljava/lang/String;

    #@4
    invoke-direct {p0, p1}, Lcom/google/android/gms/drive/internal/p$d;-><init>(Lcom/google/android/gms/drive/internal/p;)V

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
    check-cast p1, Lcom/google/android/gms/drive/internal/r;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/p$4;->a(Lcom/google/android/gms/drive/internal/r;)V

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
    new-instance v1, Lcom/google/android/gms/drive/internal/GetMetadataRequest;

    #@6
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/p$4;->IN:Ljava/lang/String;

    #@8
    invoke-static {v2}, Lcom/google/android/gms/drive/DriveId;->aL(Ljava/lang/String;)Lcom/google/android/gms/drive/DriveId;

    #@b
    move-result-object v2

    #@c
    invoke-direct {v1, v2}, Lcom/google/android/gms/drive/internal/GetMetadataRequest;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    #@f
    new-instance v2, Lcom/google/android/gms/drive/internal/p$b;

    #@11
    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/p$b;-><init>(Lcom/google/android/gms/common/api/a$d;)V

    #@14
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/aa;->a(Lcom/google/android/gms/drive/internal/GetMetadataRequest;Lcom/google/android/gms/drive/internal/ab;)V

    #@17
    return-void
.end method
