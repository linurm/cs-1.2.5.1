.class Lcom/google/android/gms/drive/internal/p$b;
.super Lcom/google/android/gms/drive/internal/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/internal/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final yR:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/drive/DriveApi$DriveIdResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a$d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/drive/DriveApi$DriveIdResult;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/c;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/drive/internal/p$b;->yR:Lcom/google/android/gms/common/api/a$d;

    #@5
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/drive/internal/OnDriveIdResponse;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/p$b;->yR:Lcom/google/android/gms/common/api/a$d;

    #@2
    new-instance v1, Lcom/google/android/gms/drive/internal/p$c;

    #@4
    sget-object v2, Lcom/google/android/gms/common/api/Status;->En:Lcom/google/android/gms/common/api/Status;

    #@6
    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnDriveIdResponse;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    #@9
    move-result-object v3

    #@a
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/p$c;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveId;)V

    #@d
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    #@10
    return-void
.end method

.method public a(Lcom/google/android/gms/drive/internal/OnMetadataResponse;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/p$b;->yR:Lcom/google/android/gms/common/api/a$d;

    #@2
    new-instance v1, Lcom/google/android/gms/drive/internal/p$c;

    #@4
    sget-object v2, Lcom/google/android/gms/common/api/Status;->En:Lcom/google/android/gms/common/api/Status;

    #@6
    new-instance v3, Lcom/google/android/gms/drive/internal/l;

    #@8
    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnMetadataResponse;->gB()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@b
    move-result-object v4

    #@c
    invoke-direct {v3, v4}, Lcom/google/android/gms/drive/internal/l;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    #@f
    invoke-virtual {v3}, Lcom/google/android/gms/drive/internal/l;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    #@12
    move-result-object v3

    #@13
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/p$c;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveId;)V

    #@16
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    #@19
    return-void
.end method

.method public o(Lcom/google/android/gms/common/api/Status;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/p$b;->yR:Lcom/google/android/gms/common/api/a$d;

    #@2
    new-instance v1, Lcom/google/android/gms/drive/internal/p$c;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/drive/internal/p$c;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveId;)V

    #@8
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    #@b
    return-void
.end method
