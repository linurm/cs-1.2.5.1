.class public Lcom/google/android/gms/drive/CreateFileActivityBuilder;
.super Ljava/lang/Object;


# static fields
.field public static final EXTRA_RESPONSE_DRIVE_ID:Ljava/lang/String; = "response_drive_id"


# instance fields
.field private final HF:Lcom/google/android/gms/drive/internal/h;

.field private HG:Lcom/google/android/gms/drive/Contents;


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Lcom/google/android/gms/drive/internal/h;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/internal/h;-><init>(I)V

    #@9
    iput-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->HF:Lcom/google/android/gms/drive/internal/h;

    #@b
    return-void
.end method


# virtual methods
.method public build(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/IntentSender;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->HG:Lcom/google/android/gms/drive/Contents;

    #@2
    const-string v1, "Must provide initial contents to CreateFileActivityBuilder."

    #@4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->HG:Lcom/google/android/gms/drive/Contents;

    #@9
    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_10} :catch_1c

    #@10
    :goto_10
    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->HG:Lcom/google/android/gms/drive/Contents;

    #@12
    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->close()V

    #@15
    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->HF:Lcom/google/android/gms/drive/internal/h;

    #@17
    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/internal/h;->build(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/IntentSender;

    #@1a
    move-result-object v0

    #@1b
    return-object v0

    #@1c
    :catch_1c
    move-exception v0

    #@1d
    goto :goto_10
.end method

.method public setActivityStartFolder(Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/CreateFileActivityBuilder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->HF:Lcom/google/android/gms/drive/internal/h;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/internal/h;->a(Lcom/google/android/gms/drive/DriveId;)V

    #@5
    return-object p0
.end method

.method public setActivityTitle(Ljava/lang/String;)Lcom/google/android/gms/drive/CreateFileActivityBuilder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->HF:Lcom/google/android/gms/drive/internal/h;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/internal/h;->aM(Ljava/lang/String;)V

    #@5
    return-object p0
.end method

.method public setInitialContents(Lcom/google/android/gms/drive/Contents;)Lcom/google/android/gms/drive/CreateFileActivityBuilder;
    .registers 4

    #@0
    invoke-static {p1}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/drive/Contents;

    #@6
    iput-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->HG:Lcom/google/android/gms/drive/Contents;

    #@8
    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->HF:Lcom/google/android/gms/drive/internal/h;

    #@a
    iget-object v1, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->HG:Lcom/google/android/gms/drive/Contents;

    #@c
    invoke-virtual {v1}, Lcom/google/android/gms/drive/Contents;->getRequestId()I

    #@f
    move-result v1

    #@10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/internal/h;->aS(I)V

    #@13
    return-object p0
.end method

.method public setInitialMetadata(Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/drive/CreateFileActivityBuilder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->HF:Lcom/google/android/gms/drive/internal/h;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/internal/h;->a(Lcom/google/android/gms/drive/MetadataChangeSet;)V

    #@5
    return-object p0
.end method
