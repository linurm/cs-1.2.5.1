.class public Lcom/google/android/gms/wearable/internal/f$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/internal/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final alJ:Landroid/os/ParcelFileDescriptor;

.field private final yz:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/f$c;->yz:Lcom/google/android/gms/common/api/Status;

    #@5
    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/f$c;->alJ:Landroid/os/ParcelFileDescriptor;

    #@7
    return-void
.end method


# virtual methods
.method public getFd()Landroid/os/ParcelFileDescriptor;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/f$c;->alJ:Landroid/os/ParcelFileDescriptor;

    #@2
    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3

    #@0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/f$c;->alJ:Landroid/os/ParcelFileDescriptor;

    #@4
    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    #@7
    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/f$c;->yz:Lcom/google/android/gms/common/api/Status;

    #@2
    return-object v0
.end method

.method public release()V
    .registers 2

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/f$c;->alJ:Landroid/os/ParcelFileDescriptor;

    #@2
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    :goto_5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    goto :goto_5
.end method
