.class final Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;
.super Landroid/os/ResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImageReceiver"
.end annotation


# instance fields
.field private final Fh:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/images/a;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic Fi:Lcom/google/android/gms/common/images/ImageManager;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@2
    new-instance v0, Landroid/os/Handler;

    #@4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@b
    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    #@e
    iput-object p2, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->mUri:Landroid/net/Uri;

    #@10
    new-instance v0, Ljava/util/ArrayList;

    #@12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@15
    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->Fh:Ljava/util/ArrayList;

    #@17
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;)Ljava/util/ArrayList;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->Fh:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method


# virtual methods
.method public b(Lcom/google/android/gms/common/images/a;)V
    .registers 3

    #@0
    const-string v0, "ImageReceiver.addImageRequest() must be called in the main thread"

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/gx;->ay(Ljava/lang/String;)V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->Fh:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a
    return-void
.end method

.method public c(Lcom/google/android/gms/common/images/a;)V
    .registers 3

    #@0
    const-string v0, "ImageReceiver.removeImageRequest() must be called in the main thread"

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/gx;->ay(Ljava/lang/String;)V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->Fh:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@a
    return-void
.end method

.method public ff()V
    .registers 4

    #@0
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string v1, "com.google.android.gms.common.images.LOAD_IMAGE"

    #@4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7
    const-string v1, "com.google.android.gms.extras.uri"

    #@9
    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->mUri:Landroid/net/Uri;

    #@b
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@e
    const-string v1, "com.google.android.gms.extras.resultReceiver"

    #@10
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@13
    const-string v1, "com.google.android.gms.extras.priority"

    #@15
    const/4 v2, 0x3

    #@16
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@19
    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@1b
    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->b(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@22
    return-void
.end method

.method public onReceiveResult(ILandroid/os/Bundle;)V
    .registers 8

    #@0
    const-string v0, "com.google.android.gms.extra.fileDescriptor"

    #@2
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    #@8
    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@a
    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->f(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/concurrent/ExecutorService;

    #@d
    move-result-object v1

    #@e
    new-instance v2, Lcom/google/android/gms/common/images/ImageManager$c;

    #@10
    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@12
    iget-object v4, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->mUri:Landroid/net/Uri;

    #@14
    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/common/images/ImageManager$c;-><init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;)V

    #@17
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    #@1a
    return-void
.end method
