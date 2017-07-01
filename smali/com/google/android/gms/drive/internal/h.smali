.class public Lcom/google/android/gms/drive/internal/h;
.super Ljava/lang/Object;


# instance fields
.field private HY:Ljava/lang/String;

.field protected IA:Lcom/google/android/gms/drive/MetadataChangeSet;

.field private IB:Ljava/lang/Integer;

.field private final IC:I

.field private Ia:Lcom/google/android/gms/drive/DriveId;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/drive/internal/h;->IC:I

    #@5
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/drive/DriveId;)V
    .registers 3

    #@0
    invoke-static {p1}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/drive/DriveId;

    #@6
    iput-object v0, p0, Lcom/google/android/gms/drive/internal/h;->Ia:Lcom/google/android/gms/drive/DriveId;

    #@8
    return-void
.end method

.method public a(Lcom/google/android/gms/drive/MetadataChangeSet;)V
    .registers 3

    #@0
    invoke-static {p1}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/drive/MetadataChangeSet;

    #@6
    iput-object v0, p0, Lcom/google/android/gms/drive/internal/h;->IA:Lcom/google/android/gms/drive/MetadataChangeSet;

    #@8
    return-void
.end method

.method public aM(Ljava/lang/String;)V
    .registers 3

    #@0
    invoke-static {p1}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/lang/String;

    #@6
    iput-object v0, p0, Lcom/google/android/gms/drive/internal/h;->HY:Ljava/lang/String;

    #@8
    return-void
.end method

.method public aS(I)V
    .registers 3

    #@0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/google/android/gms/drive/internal/h;->IB:Ljava/lang/Integer;

    #@6
    return-void
.end method

.method public build(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/IntentSender;
    .registers 9

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/h;->IA:Lcom/google/android/gms/drive/MetadataChangeSet;

    #@2
    const-string v1, "Must provide initial metadata to CreateFileActivityBuilder."

    #@4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    invoke-interface {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    #@a
    move-result v0

    #@b
    const-string v1, "Client must be connected"

    #@d
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@10
    sget-object v0, Lcom/google/android/gms/drive/Drive;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@12
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/google/android/gms/drive/internal/r;

    #@18
    invoke-virtual {v0}, Lcom/google/android/gms/drive/internal/r;->gp()Lcom/google/android/gms/drive/internal/aa;

    #@1b
    move-result-object v6

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/h;->IB:Ljava/lang/Integer;

    #@1e
    if-nez v0, :cond_37

    #@20
    const/4 v2, -0x1

    #@21
    :goto_21
    :try_start_21
    new-instance v0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;

    #@23
    iget-object v1, p0, Lcom/google/android/gms/drive/internal/h;->IA:Lcom/google/android/gms/drive/MetadataChangeSet;

    #@25
    invoke-virtual {v1}, Lcom/google/android/gms/drive/MetadataChangeSet;->gm()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@28
    move-result-object v1

    #@29
    iget-object v3, p0, Lcom/google/android/gms/drive/internal/h;->HY:Ljava/lang/String;

    #@2b
    iget-object v4, p0, Lcom/google/android/gms/drive/internal/h;->Ia:Lcom/google/android/gms/drive/DriveId;

    #@2d
    iget v5, p0, Lcom/google/android/gms/drive/internal/h;->IC:I

    #@2f
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;ILjava/lang/String;Lcom/google/android/gms/drive/DriveId;I)V

    #@32
    invoke-interface {v6, v0}, Lcom/google/android/gms/drive/internal/aa;->a(Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;)Landroid/content/IntentSender;
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_35} :catch_3e

    #@35
    move-result-object v0

    #@36
    return-object v0

    #@37
    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/h;->IB:Ljava/lang/Integer;

    #@39
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@3c
    move-result v2

    #@3d
    goto :goto_21

    #@3e
    :catch_3e
    move-exception v0

    #@3f
    new-instance v1, Ljava/lang/RuntimeException;

    #@41
    const-string v2, "Unable to connect Drive Play Service"

    #@43
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@46
    throw v1
.end method
