.class public Lcom/google/android/gms/drive/OpenFileActivityBuilder;
.super Ljava/lang/Object;


# static fields
.field public static final EXTRA_RESPONSE_DRIVE_ID:Ljava/lang/String; = "response_drive_id"


# instance fields
.field private HY:Ljava/lang/String;

.field private HZ:[Ljava/lang/String;

.field private Ia:Lcom/google/android/gms/drive/DriveId;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public build(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/IntentSender;
    .registers 7

    #@0
    invoke-interface {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    #@3
    move-result v0

    #@4
    const-string v1, "Client must be connected"

    #@6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@9
    iget-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->HZ:[Ljava/lang/String;

    #@b
    if-nez v0, :cond_12

    #@d
    const/4 v0, 0x0

    #@e
    new-array v0, v0, [Ljava/lang/String;

    #@10
    iput-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->HZ:[Ljava/lang/String;

    #@12
    :cond_12
    sget-object v0, Lcom/google/android/gms/drive/Drive;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@14
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/google/android/gms/drive/internal/r;

    #@1a
    invoke-virtual {v0}, Lcom/google/android/gms/drive/internal/r;->gp()Lcom/google/android/gms/drive/internal/aa;

    #@1d
    move-result-object v0

    #@1e
    :try_start_1e
    new-instance v1, Lcom/google/android/gms/drive/internal/OpenFileIntentSenderRequest;

    #@20
    iget-object v2, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->HY:Ljava/lang/String;

    #@22
    iget-object v3, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->HZ:[Ljava/lang/String;

    #@24
    iget-object v4, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->Ia:Lcom/google/android/gms/drive/DriveId;

    #@26
    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/drive/internal/OpenFileIntentSenderRequest;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/drive/DriveId;)V

    #@29
    invoke-interface {v0, v1}, Lcom/google/android/gms/drive/internal/aa;->a(Lcom/google/android/gms/drive/internal/OpenFileIntentSenderRequest;)Landroid/content/IntentSender;
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2c} :catch_2e

    #@2c
    move-result-object v0

    #@2d
    return-object v0

    #@2e
    :catch_2e
    move-exception v0

    #@2f
    new-instance v1, Ljava/lang/RuntimeException;

    #@31
    const-string v2, "Unable to connect Drive Play Service"

    #@33
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@36
    throw v1
.end method

.method public setActivityStartFolder(Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/OpenFileActivityBuilder;
    .registers 3

    #@0
    invoke-static {p1}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/drive/DriveId;

    #@6
    iput-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->Ia:Lcom/google/android/gms/drive/DriveId;

    #@8
    return-object p0
.end method

.method public setActivityTitle(Ljava/lang/String;)Lcom/google/android/gms/drive/OpenFileActivityBuilder;
    .registers 3

    #@0
    invoke-static {p1}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/lang/String;

    #@6
    iput-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->HY:Ljava/lang/String;

    #@8
    return-object p0
.end method

.method public setMimeType([Ljava/lang/String;)Lcom/google/android/gms/drive/OpenFileActivityBuilder;
    .registers 4

    #@0
    if-eqz p1, :cond_b

    #@2
    const/4 v0, 0x1

    #@3
    :goto_3
    const-string v1, "mimeTypes may not be null"

    #@5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@8
    iput-object p1, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->HZ:[Ljava/lang/String;

    #@a
    return-object p0

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    goto :goto_3
.end method
