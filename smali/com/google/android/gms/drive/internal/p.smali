.class public Lcom/google/android/gms/drive/internal/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/internal/p$a;,
        Lcom/google/android/gms/drive/internal/p$b;,
        Lcom/google/android/gms/drive/internal/p$c;,
        Lcom/google/android/gms/drive/internal/p$d;,
        Lcom/google/android/gms/drive/internal/p$e;,
        Lcom/google/android/gms/drive/internal/p$f;,
        Lcom/google/android/gms/drive/internal/p$g;,
        Lcom/google/android/gms/drive/internal/p$h;,
        Lcom/google/android/gms/drive/internal/p$i;,
        Lcom/google/android/gms/drive/internal/p$j;,
        Lcom/google/android/gms/drive/internal/p$k;,
        Lcom/google/android/gms/drive/internal/p$l;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
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
    new-instance v0, Lcom/google/android/gms/drive/internal/p$3;

    #@2
    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/drive/internal/p$3;-><init>(Lcom/google/android/gms/drive/internal/p;Lcom/google/android/gms/drive/Contents;)V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public fetchDriveId(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/drive/DriveApi$DriveIdResult;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/drive/internal/p$4;

    #@2
    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/drive/internal/p$4;-><init>(Lcom/google/android/gms/drive/internal/p;Ljava/lang/String;)V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getAppFolder(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/drive/DriveFolder;
    .registers 4

    #@0
    invoke-interface {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_e

    #@6
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string v1, "Client must be connected"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    sget-object v0, Lcom/google/android/gms/drive/Drive;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@10
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/google/android/gms/drive/internal/r;

    #@16
    invoke-virtual {v0}, Lcom/google/android/gms/drive/internal/r;->gr()Lcom/google/android/gms/drive/DriveId;

    #@19
    move-result-object v1

    #@1a
    if-eqz v1, :cond_22

    #@1c
    new-instance v0, Lcom/google/android/gms/drive/internal/u;

    #@1e
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/internal/u;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    #@21
    :goto_21
    return-object v0

    #@22
    :cond_22
    const/4 v0, 0x0

    #@23
    goto :goto_21
.end method

.method public getFile(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/DriveFile;
    .registers 5

    #@0
    if-nez p2, :cond_a

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string v1, "Id must be provided."

    #@6
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    invoke-interface {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_18

    #@10
    new-instance v0, Ljava/lang/IllegalStateException;

    #@12
    const-string v1, "Client must be connected"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    :cond_18
    new-instance v0, Lcom/google/android/gms/drive/internal/s;

    #@1a
    invoke-direct {v0, p2}, Lcom/google/android/gms/drive/internal/s;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    #@1d
    return-object v0
.end method

.method public getFolder(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/DriveFolder;
    .registers 5

    #@0
    if-nez p2, :cond_a

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string v1, "Id must be provided."

    #@6
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    invoke-interface {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_18

    #@10
    new-instance v0, Ljava/lang/IllegalStateException;

    #@12
    const-string v1, "Client must be connected"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    :cond_18
    new-instance v0, Lcom/google/android/gms/drive/internal/u;

    #@1a
    invoke-direct {v0, p2}, Lcom/google/android/gms/drive/internal/u;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    #@1d
    return-object v0
.end method

.method public getRootFolder(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/drive/DriveFolder;
    .registers 4

    #@0
    invoke-interface {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_e

    #@6
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string v1, "Client must be connected"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    new-instance v1, Lcom/google/android/gms/drive/internal/u;

    #@10
    sget-object v0, Lcom/google/android/gms/drive/Drive;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@12
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/google/android/gms/drive/internal/r;

    #@18
    invoke-virtual {v0}, Lcom/google/android/gms/drive/internal/r;->gq()Lcom/google/android/gms/drive/DriveId;

    #@1b
    move-result-object v0

    #@1c
    invoke-direct {v1, v0}, Lcom/google/android/gms/drive/internal/u;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    #@1f
    return-object v1
.end method

.method public newContents(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/drive/DriveApi$ContentsResult;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/drive/internal/p$2;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/drive/internal/p$2;-><init>(Lcom/google/android/gms/drive/internal/p;)V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public newCreateFileActivityBuilder()Lcom/google/android/gms/drive/CreateFileActivityBuilder;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/drive/CreateFileActivityBuilder;-><init>()V

    #@5
    return-object v0
.end method

.method public newOpenFileActivityBuilder()Lcom/google/android/gms/drive/OpenFileActivityBuilder;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/drive/OpenFileActivityBuilder;-><init>()V

    #@5
    return-object v0
.end method

.method public query(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/query/Query;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/query/Query;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;",
            ">;"
        }
    .end annotation

    #@0
    if-nez p2, :cond_a

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string v1, "Query must be provided."

    #@6
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    new-instance v0, Lcom/google/android/gms/drive/internal/p$1;

    #@c
    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/drive/internal/p$1;-><init>(Lcom/google/android/gms/drive/internal/p;Lcom/google/android/gms/drive/query/Query;)V

    #@f
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public requestSync(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/drive/internal/p$5;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/drive/internal/p$5;-><init>(Lcom/google/android/gms/drive/internal/p;)V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method
