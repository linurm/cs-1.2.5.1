.class public Lcom/google/android/gms/drive/internal/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveResource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/internal/v$a;,
        Lcom/google/android/gms/drive/internal/v$b;,
        Lcom/google/android/gms/drive/internal/v$c;,
        Lcom/google/android/gms/drive/internal/v$d;,
        Lcom/google/android/gms/drive/internal/v$e;,
        Lcom/google/android/gms/drive/internal/v$f;
    }
.end annotation


# instance fields
.field protected final Hz:Lcom/google/android/gms/drive/DriveId;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/drive/DriveId;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/drive/internal/v;->Hz:Lcom/google/android/gms/drive/DriveId;

    #@5
    return-void
.end method


# virtual methods
.method public addChangeListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/events/DriveEvent$Listener;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/events/DriveEvent$Listener",
            "<",
            "Lcom/google/android/gms/drive/events/ChangeEvent;",
            ">;)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    #@0
    sget-object v0, Lcom/google/android/gms/drive/Drive;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@2
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/drive/internal/r;

    #@8
    iget-object v1, p0, Lcom/google/android/gms/drive/internal/v;->Hz:Lcom/google/android/gms/drive/DriveId;

    #@a
    const/4 v2, 0x1

    #@b
    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/google/android/gms/drive/internal/r;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/DriveEvent$Listener;)Lcom/google/android/gms/common/api/PendingResult;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public getDriveId()Lcom/google/android/gms/drive/DriveId;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/v;->Hz:Lcom/google/android/gms/drive/DriveId;

    #@2
    return-object v0
.end method

.method public getMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/drive/DriveResource$MetadataResult;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/drive/internal/v$1;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/drive/internal/v$1;-><init>(Lcom/google/android/gms/drive/internal/v;)V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public listParents(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/drive/internal/v$2;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/drive/internal/v$2;-><init>(Lcom/google/android/gms/drive/internal/v;)V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public removeChangeListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/events/DriveEvent$Listener;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/events/DriveEvent$Listener",
            "<",
            "Lcom/google/android/gms/drive/events/ChangeEvent;",
            ">;)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    #@0
    sget-object v0, Lcom/google/android/gms/drive/Drive;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@2
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/drive/internal/r;

    #@8
    iget-object v1, p0, Lcom/google/android/gms/drive/internal/v;->Hz:Lcom/google/android/gms/drive/DriveId;

    #@a
    const/4 v2, 0x1

    #@b
    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/google/android/gms/drive/internal/r;->b(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/DriveEvent$Listener;)Lcom/google/android/gms/common/api/PendingResult;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public updateMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/drive/DriveResource$MetadataResult;",
            ">;"
        }
    .end annotation

    #@0
    if-nez p2, :cond_a

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string v1, "ChangeSet must be provided."

    #@6
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    new-instance v0, Lcom/google/android/gms/drive/internal/v$3;

    #@c
    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/drive/internal/v$3;-><init>(Lcom/google/android/gms/drive/internal/v;Lcom/google/android/gms/drive/MetadataChangeSet;)V

    #@f
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method
