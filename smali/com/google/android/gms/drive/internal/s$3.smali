.class Lcom/google/android/gms/drive/internal/s$3;
.super Lcom/google/android/gms/drive/internal/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/s;->commitAndCloseContents(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IM:Lcom/google/android/gms/drive/Contents;

.field final synthetic Jc:Lcom/google/android/gms/drive/internal/s;

.field final synthetic Jd:Lcom/google/android/gms/drive/MetadataChangeSet;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/s;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/MetadataChangeSet;)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/google/android/gms/drive/internal/s$3;->Jc:Lcom/google/android/gms/drive/internal/s;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/drive/internal/s$3;->IM:Lcom/google/android/gms/drive/Contents;

    #@4
    iput-object p3, p0, Lcom/google/android/gms/drive/internal/s$3;->Jd:Lcom/google/android/gms/drive/MetadataChangeSet;

    #@6
    const/4 v0, 0x0

    #@7
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/drive/internal/s$a;-><init>(Lcom/google/android/gms/drive/internal/s;Lcom/google/android/gms/drive/internal/s$1;)V

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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/s$3;->a(Lcom/google/android/gms/drive/internal/r;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/r;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/s$3;->IM:Lcom/google/android/gms/drive/Contents;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->close()V

    #@5
    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/r;->gp()Lcom/google/android/gms/drive/internal/aa;

    #@8
    move-result-object v6

    #@9
    new-instance v0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;

    #@b
    iget-object v1, p0, Lcom/google/android/gms/drive/internal/s$3;->Jc:Lcom/google/android/gms/drive/internal/s;

    #@d
    iget-object v1, v1, Lcom/google/android/gms/drive/internal/s;->Hz:Lcom/google/android/gms/drive/DriveId;

    #@f
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/s$3;->Jd:Lcom/google/android/gms/drive/MetadataChangeSet;

    #@11
    invoke-virtual {v2}, Lcom/google/android/gms/drive/MetadataChangeSet;->gm()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@14
    move-result-object v2

    #@15
    iget-object v3, p0, Lcom/google/android/gms/drive/internal/s$3;->IM:Lcom/google/android/gms/drive/Contents;

    #@17
    const/4 v4, 0x0

    #@18
    const/4 v5, 0x0

    #@19
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Lcom/google/android/gms/drive/Contents;ZLjava/lang/String;)V

    #@1c
    new-instance v1, Lcom/google/android/gms/drive/internal/aw;

    #@1e
    invoke-direct {v1, p0}, Lcom/google/android/gms/drive/internal/aw;-><init>(Lcom/google/android/gms/common/api/a$d;)V

    #@21
    invoke-interface {v6, v0, v1}, Lcom/google/android/gms/drive/internal/aa;->a(Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;Lcom/google/android/gms/drive/internal/ab;)V

    #@24
    return-void
.end method
