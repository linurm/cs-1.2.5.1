.class Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;


# direct methods
.method constructor <init>(Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub$1;->this$0:Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    #@0
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_58

    #@5
    :goto_5
    return-void

    #@6
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub$1;->this$0:Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;

    #@8
    # getter for: Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->mItf:Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->access$000(Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    #@b
    move-result-object v0

    #@c
    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestAbortDownload()V

    #@f
    goto :goto_5

    #@10
    :pswitch_10
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub$1;->this$0:Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;

    #@12
    # getter for: Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->mItf:Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->access$000(Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    #@15
    move-result-object v0

    #@16
    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestContinueDownload()V

    #@19
    goto :goto_5

    #@1a
    :pswitch_1a
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub$1;->this$0:Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;

    #@1c
    # getter for: Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->mItf:Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->access$000(Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    #@1f
    move-result-object v0

    #@20
    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestPauseDownload()V

    #@23
    goto :goto_5

    #@24
    :pswitch_24
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub$1;->this$0:Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;

    #@26
    # getter for: Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->mItf:Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->access$000(Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@2d
    move-result-object v1

    #@2e
    const-string v2, "flags"

    #@30
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@33
    move-result v1

    #@34
    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->setDownloadFlags(I)V

    #@37
    goto :goto_5

    #@38
    :pswitch_38
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub$1;->this$0:Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;

    #@3a
    # getter for: Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->mItf:Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->access$000(Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    #@3d
    move-result-object v0

    #@3e
    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestDownloadStatus()V

    #@41
    goto :goto_5

    #@42
    :pswitch_42
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub$1;->this$0:Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;

    #@44
    # getter for: Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->mItf:Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->access$000(Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@4b
    move-result-object v0

    #@4c
    const-string v2, "EMH"

    #@4e
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@51
    move-result-object v0

    #@52
    check-cast v0, Landroid/os/Messenger;

    #@54
    invoke-interface {v1, v0}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->onClientUpdated(Landroid/os/Messenger;)V

    #@57
    goto :goto_5

    #@58
    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_6
        :pswitch_1a
        :pswitch_24
        :pswitch_10
        :pswitch_38
        :pswitch_42
    .end packed-switch
.end method
