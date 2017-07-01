.class Lcom/google/android/gms/drive/internal/u$1;
.super Lcom/google/android/gms/drive/internal/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/u;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/Contents;IZLjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/internal/q",
        "<",
        "Lcom/google/android/gms/drive/DriveFolder$DriveFileResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic IM:Lcom/google/android/gms/drive/Contents;

.field final synthetic Jd:Lcom/google/android/gms/drive/MetadataChangeSet;

.field final synthetic Jf:I

.field final synthetic Jg:Z

.field final synthetic Jh:Ljava/lang/String;

.field final synthetic Ji:Lcom/google/android/gms/drive/internal/u;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/u;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/MetadataChangeSet;IZLjava/lang/String;)V
    .registers 7

    #@0
    iput-object p1, p0, Lcom/google/android/gms/drive/internal/u$1;->Ji:Lcom/google/android/gms/drive/internal/u;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/drive/internal/u$1;->IM:Lcom/google/android/gms/drive/Contents;

    #@4
    iput-object p3, p0, Lcom/google/android/gms/drive/internal/u$1;->Jd:Lcom/google/android/gms/drive/MetadataChangeSet;

    #@6
    iput p4, p0, Lcom/google/android/gms/drive/internal/u$1;->Jf:I

    #@8
    iput-boolean p5, p0, Lcom/google/android/gms/drive/internal/u$1;->Jg:Z

    #@a
    iput-object p6, p0, Lcom/google/android/gms/drive/internal/u$1;->Jh:Ljava/lang/String;

    #@c
    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/q;-><init>()V

    #@f
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/u$1;->a(Lcom/google/android/gms/drive/internal/r;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/r;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/u$1;->IM:Lcom/google/android/gms/drive/Contents;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/u$1;->IM:Lcom/google/android/gms/drive/Contents;

    #@6
    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->close()V

    #@9
    :cond_9
    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/r;->gp()Lcom/google/android/gms/drive/internal/aa;

    #@c
    move-result-object v7

    #@d
    new-instance v0, Lcom/google/android/gms/drive/internal/CreateFileRequest;

    #@f
    iget-object v1, p0, Lcom/google/android/gms/drive/internal/u$1;->Ji:Lcom/google/android/gms/drive/internal/u;

    #@11
    invoke-virtual {v1}, Lcom/google/android/gms/drive/internal/u;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    #@14
    move-result-object v1

    #@15
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/u$1;->Jd:Lcom/google/android/gms/drive/MetadataChangeSet;

    #@17
    invoke-virtual {v2}, Lcom/google/android/gms/drive/MetadataChangeSet;->gm()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@1a
    move-result-object v2

    #@1b
    iget-object v3, p0, Lcom/google/android/gms/drive/internal/u$1;->IM:Lcom/google/android/gms/drive/Contents;

    #@1d
    iget v4, p0, Lcom/google/android/gms/drive/internal/u$1;->Jf:I

    #@1f
    iget-boolean v5, p0, Lcom/google/android/gms/drive/internal/u$1;->Jg:Z

    #@21
    iget-object v6, p0, Lcom/google/android/gms/drive/internal/u$1;->Jh:Ljava/lang/String;

    #@23
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/drive/internal/CreateFileRequest;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Lcom/google/android/gms/drive/Contents;IZLjava/lang/String;)V

    #@26
    new-instance v1, Lcom/google/android/gms/drive/internal/u$a;

    #@28
    invoke-direct {v1, p0}, Lcom/google/android/gms/drive/internal/u$a;-><init>(Lcom/google/android/gms/common/api/a$d;)V

    #@2b
    invoke-interface {v7, v0, v1}, Lcom/google/android/gms/drive/internal/aa;->a(Lcom/google/android/gms/drive/internal/CreateFileRequest;Lcom/google/android/gms/drive/internal/ab;)V

    #@2e
    return-void
.end method

.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/u$1;->s(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DriveFolder$DriveFileResult;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public s(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DriveFolder$DriveFileResult;
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/drive/internal/u$d;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/drive/internal/u$d;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveFile;)V

    #@6
    return-object v0
.end method
