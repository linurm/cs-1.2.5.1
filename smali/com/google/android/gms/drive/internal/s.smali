.class public Lcom/google/android/gms/drive/internal/s;
.super Lcom/google/android/gms/drive/internal/v;

# interfaces
.implements Lcom/google/android/gms/drive/DriveFile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/internal/s$a;,
        Lcom/google/android/gms/drive/internal/s$b;,
        Lcom/google/android/gms/drive/internal/s$c;,
        Lcom/google/android/gms/drive/internal/s$d;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/drive/internal/v;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    #@3
    return-void
.end method


# virtual methods
.method public commitAndCloseContents(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/Contents;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/Contents;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    #@0
    if-nez p2, :cond_a

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string v1, "Contents must be provided."

    #@6
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    new-instance v0, Lcom/google/android/gms/drive/internal/s$2;

    #@c
    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/drive/internal/s$2;-><init>(Lcom/google/android/gms/drive/internal/s;Lcom/google/android/gms/drive/Contents;)V

    #@f
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public commitAndCloseContents(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/Contents;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    #@0
    if-nez p2, :cond_a

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string v1, "Contents must be provided."

    #@6
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    new-instance v0, Lcom/google/android/gms/drive/internal/s$3;

    #@c
    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/drive/internal/s$3;-><init>(Lcom/google/android/gms/drive/internal/s;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/MetadataChangeSet;)V

    #@f
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public discardContents(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/Contents;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/Contents;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    #@0
    sget-object v0, Lcom/google/android/gms/drive/Drive;->DriveApi:Lcom/google/android/gms/drive/DriveApi;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/drive/DriveApi;->discardContents(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/Contents;)Lcom/google/android/gms/common/api/PendingResult;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public openContents(Lcom/google/android/gms/common/api/GoogleApiClient;ILcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "I",
            "Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/drive/DriveApi$ContentsResult;",
            ">;"
        }
    .end annotation

    #@0
    const/high16 v0, 0x10000000

    #@2
    if-eq p2, v0, :cond_14

    #@4
    const/high16 v0, 0x20000000

    #@6
    if-eq p2, v0, :cond_14

    #@8
    const/high16 v0, 0x30000000

    #@a
    if-eq p2, v0, :cond_14

    #@c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    const-string v1, "Invalid mode provided."

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    :cond_14
    new-instance v0, Lcom/google/android/gms/drive/internal/s$1;

    #@16
    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/drive/internal/s$1;-><init>(Lcom/google/android/gms/drive/internal/s;ILcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V

    #@19
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method
