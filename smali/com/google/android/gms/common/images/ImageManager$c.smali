.class final Lcom/google/android/gms/common/images/ImageManager$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic Fi:Lcom/google/android/gms/common/images/ImageManager;

.field private final Fj:Landroid/os/ParcelFileDescriptor;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager$c;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    iput-object p2, p0, Lcom/google/android/gms/common/images/ImageManager$c;->mUri:Landroid/net/Uri;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/common/images/ImageManager$c;->Fj:Landroid/os/ParcelFileDescriptor;

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    const-string v0, "LoadBitmapFromDiskRunnable can\'t be executed in the main thread"

    #@5
    invoke-static {v0}, Lcom/google/android/gms/internal/gx;->az(Ljava/lang/String;)V

    #@8
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$c;->Fj:Landroid/os/ParcelFileDescriptor;

    #@a
    if-eqz v0, :cond_1b

    #@c
    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$c;->Fj:Landroid/os/ParcelFileDescriptor;

    #@e
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@11
    move-result-object v0

    #@12
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_15
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_15} :catch_36

    #@15
    move-result-object v3

    #@16
    :goto_16
    :try_start_16
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$c;->Fj:Landroid/os/ParcelFileDescriptor;

    #@18
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_53

    #@1b
    :cond_1b
    :goto_1b
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    #@1d
    invoke-direct {v5, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@20
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$c;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@22
    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->g(Lcom/google/android/gms/common/images/ImageManager;)Landroid/os/Handler;

    #@25
    move-result-object v6

    #@26
    new-instance v0, Lcom/google/android/gms/common/images/ImageManager$f;

    #@28
    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$c;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@2a
    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$c;->mUri:Landroid/net/Uri;

    #@2c
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/images/ImageManager$f;-><init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;Landroid/graphics/Bitmap;ZLjava/util/concurrent/CountDownLatch;)V

    #@2f
    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@32
    :try_start_32
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_35} :catch_5c

    #@35
    :goto_35
    return-void

    #@36
    :catch_36
    move-exception v0

    #@37
    const-string v2, "ImageManager"

    #@39
    new-instance v4, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string v5, "OOM while loading bitmap for uri: "

    #@40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    iget-object v5, p0, Lcom/google/android/gms/common/images/ImageManager$c;->mUri:Landroid/net/Uri;

    #@46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v4

    #@4e
    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@51
    move v4, v1

    #@52
    goto :goto_16

    #@53
    :catch_53
    move-exception v0

    #@54
    const-string v2, "ImageManager"

    #@56
    const-string v5, "closed failed"

    #@58
    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5b
    goto :goto_1b

    #@5c
    :catch_5c
    move-exception v0

    #@5d
    const-string v0, "ImageManager"

    #@5f
    new-instance v1, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string v2, "Latch interrupted while posting "

    #@66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v1

    #@6a
    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$c;->mUri:Landroid/net/Uri;

    #@6c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v1

    #@70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v1

    #@74
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@77
    goto :goto_35
.end method
