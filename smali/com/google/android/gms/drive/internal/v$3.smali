.class Lcom/google/android/gms/drive/internal/v$3;
.super Lcom/google/android/gms/drive/internal/v$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/v;->updateMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Jd:Lcom/google/android/gms/drive/MetadataChangeSet;

.field final synthetic Jl:Lcom/google/android/gms/drive/internal/v;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/v;Lcom/google/android/gms/drive/MetadataChangeSet;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/drive/internal/v$3;->Jl:Lcom/google/android/gms/drive/internal/v;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/drive/internal/v$3;->Jd:Lcom/google/android/gms/drive/MetadataChangeSet;

    #@4
    const/4 v0, 0x0

    #@5
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/drive/internal/v$f;-><init>(Lcom/google/android/gms/drive/internal/v;Lcom/google/android/gms/drive/internal/v$1;)V

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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/v$3;->a(Lcom/google/android/gms/drive/internal/r;)V

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
    new-instance v1, Lcom/google/android/gms/drive/internal/UpdateMetadataRequest;

    #@6
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/v$3;->Jl:Lcom/google/android/gms/drive/internal/v;

    #@8
    iget-object v2, v2, Lcom/google/android/gms/drive/internal/v;->Hz:Lcom/google/android/gms/drive/DriveId;

    #@a
    iget-object v3, p0, Lcom/google/android/gms/drive/internal/v$3;->Jd:Lcom/google/android/gms/drive/MetadataChangeSet;

    #@c
    invoke-virtual {v3}, Lcom/google/android/gms/drive/MetadataChangeSet;->gm()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@f
    move-result-object v3

    #@10
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/UpdateMetadataRequest;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    #@13
    new-instance v2, Lcom/google/android/gms/drive/internal/v$d;

    #@15
    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/v$d;-><init>(Lcom/google/android/gms/common/api/a$d;)V

    #@18
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/aa;->a(Lcom/google/android/gms/drive/internal/UpdateMetadataRequest;Lcom/google/android/gms/drive/internal/ab;)V

    #@1b
    return-void
.end method
