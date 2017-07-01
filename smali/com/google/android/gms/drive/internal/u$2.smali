.class Lcom/google/android/gms/drive/internal/u$2;
.super Lcom/google/android/gms/drive/internal/u$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/u;->createFolder(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Jd:Lcom/google/android/gms/drive/MetadataChangeSet;

.field final synthetic Ji:Lcom/google/android/gms/drive/internal/u;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/u;Lcom/google/android/gms/drive/MetadataChangeSet;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/drive/internal/u$2;->Ji:Lcom/google/android/gms/drive/internal/u;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/drive/internal/u$2;->Jd:Lcom/google/android/gms/drive/MetadataChangeSet;

    #@4
    const/4 v0, 0x0

    #@5
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/drive/internal/u$c;-><init>(Lcom/google/android/gms/drive/internal/u;Lcom/google/android/gms/drive/internal/u$1;)V

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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/u$2;->a(Lcom/google/android/gms/drive/internal/r;)V

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
    new-instance v1, Lcom/google/android/gms/drive/internal/CreateFolderRequest;

    #@6
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/u$2;->Ji:Lcom/google/android/gms/drive/internal/u;

    #@8
    invoke-virtual {v2}, Lcom/google/android/gms/drive/internal/u;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    #@b
    move-result-object v2

    #@c
    iget-object v3, p0, Lcom/google/android/gms/drive/internal/u$2;->Jd:Lcom/google/android/gms/drive/MetadataChangeSet;

    #@e
    invoke-virtual {v3}, Lcom/google/android/gms/drive/MetadataChangeSet;->gm()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@11
    move-result-object v3

    #@12
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/CreateFolderRequest;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    #@15
    new-instance v2, Lcom/google/android/gms/drive/internal/u$b;

    #@17
    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/u$b;-><init>(Lcom/google/android/gms/common/api/a$d;)V

    #@1a
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/aa;->a(Lcom/google/android/gms/drive/internal/CreateFolderRequest;Lcom/google/android/gms/drive/internal/ab;)V

    #@1d
    return-void
.end method
