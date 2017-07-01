.class Lcom/google/android/gms/drive/internal/s$1;
.super Lcom/google/android/gms/drive/internal/s$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/s;->openContents(Lcom/google/android/gms/common/api/GoogleApiClient;ILcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ja:I

.field final synthetic Jb:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

.field final synthetic Jc:Lcom/google/android/gms/drive/internal/s;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/s;ILcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/google/android/gms/drive/internal/s$1;->Jc:Lcom/google/android/gms/drive/internal/s;

    #@2
    iput p2, p0, Lcom/google/android/gms/drive/internal/s$1;->Ja:I

    #@4
    iput-object p3, p0, Lcom/google/android/gms/drive/internal/s$1;->Jb:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    #@6
    const/4 v0, 0x0

    #@7
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/drive/internal/s$d;-><init>(Lcom/google/android/gms/drive/internal/s;Lcom/google/android/gms/drive/internal/s$1;)V

    #@a
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/s$1;->a(Lcom/google/android/gms/drive/internal/r;)V

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
    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/r;->gp()Lcom/google/android/gms/drive/internal/aa;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Lcom/google/android/gms/drive/internal/OpenContentsRequest;

    #@6
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/s$1;->Jc:Lcom/google/android/gms/drive/internal/s;

    #@8
    invoke-virtual {v2}, Lcom/google/android/gms/drive/internal/s;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    #@b
    move-result-object v2

    #@c
    iget v3, p0, Lcom/google/android/gms/drive/internal/s$1;->Ja:I

    #@e
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/OpenContentsRequest;-><init>(Lcom/google/android/gms/drive/DriveId;I)V

    #@11
    new-instance v2, Lcom/google/android/gms/drive/internal/s$c;

    #@13
    iget-object v3, p0, Lcom/google/android/gms/drive/internal/s$1;->Jb:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    #@15
    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/drive/internal/s$c;-><init>(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V

    #@18
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/aa;->a(Lcom/google/android/gms/drive/internal/OpenContentsRequest;Lcom/google/android/gms/drive/internal/ab;)V

    #@1b
    return-void
.end method
