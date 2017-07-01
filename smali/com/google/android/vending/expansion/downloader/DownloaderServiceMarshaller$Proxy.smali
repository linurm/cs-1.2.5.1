.class Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Proxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/IDownloaderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mMsg:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/os/Messenger;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Proxy;->mMsg:Landroid/os/Messenger;

    #@5
    return-void
.end method

.method private send(ILandroid/os/Bundle;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    #@8
    :try_start_8
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Proxy;->mMsg:Landroid/os/Messenger;

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_e

    #@d
    :goto_d
    return-void

    #@e
    :catch_e
    move-exception v0

    #@f
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    #@12
    goto :goto_d
.end method


# virtual methods
.method public onClientUpdated(Landroid/os/Messenger;)V
    .registers 4

    #@0
    new-instance v0, Landroid/os/Bundle;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    #@6
    const-string v1, "EMH"

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@b
    const/4 v1, 0x6

    #@c
    invoke-direct {p0, v1, v0}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Proxy;->send(ILandroid/os/Bundle;)V

    #@f
    return-void
.end method

.method public requestAbortDownload()V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    new-instance v1, Landroid/os/Bundle;

    #@3
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@6
    invoke-direct {p0, v0, v1}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Proxy;->send(ILandroid/os/Bundle;)V

    #@9
    return-void
.end method

.method public requestContinueDownload()V
    .registers 3

    #@0
    const/4 v0, 0x4

    #@1
    new-instance v1, Landroid/os/Bundle;

    #@3
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@6
    invoke-direct {p0, v0, v1}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Proxy;->send(ILandroid/os/Bundle;)V

    #@9
    return-void
.end method

.method public requestDownloadStatus()V
    .registers 3

    #@0
    const/4 v0, 0x5

    #@1
    new-instance v1, Landroid/os/Bundle;

    #@3
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@6
    invoke-direct {p0, v0, v1}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Proxy;->send(ILandroid/os/Bundle;)V

    #@9
    return-void
.end method

.method public requestPauseDownload()V
    .registers 3

    #@0
    const/4 v0, 0x2

    #@1
    new-instance v1, Landroid/os/Bundle;

    #@3
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@6
    invoke-direct {p0, v0, v1}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Proxy;->send(ILandroid/os/Bundle;)V

    #@9
    return-void
.end method

.method public setDownloadFlags(I)V
    .registers 4

    #@0
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    const-string v1, "flags"

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@a
    const/4 v1, 0x3

    #@b
    invoke-direct {p0, v1, v0}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Proxy;->send(ILandroid/os/Bundle;)V

    #@e
    return-void
.end method
