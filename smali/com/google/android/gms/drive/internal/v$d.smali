.class Lcom/google/android/gms/drive/internal/v$d;
.super Lcom/google/android/gms/drive/internal/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/internal/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final yR:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/drive/DriveResource$MetadataResult;",
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
            "Lcom/google/android/gms/drive/DriveResource$MetadataResult;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/c;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/drive/internal/v$d;->yR:Lcom/google/android/gms/common/api/a$d;

    #@5
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/drive/internal/OnMetadataResponse;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/v$d;->yR:Lcom/google/android/gms/common/api/a$d;

    #@2
    new-instance v1, Lcom/google/android/gms/drive/internal/v$e;

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
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/v$e;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/Metadata;)V

    #@12
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    #@15
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
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/v$d;->yR:Lcom/google/android/gms/common/api/a$d;

    #@2
    new-instance v1, Lcom/google/android/gms/drive/internal/v$e;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/drive/internal/v$e;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/Metadata;)V

    #@8
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    #@b
    return-void
.end method
