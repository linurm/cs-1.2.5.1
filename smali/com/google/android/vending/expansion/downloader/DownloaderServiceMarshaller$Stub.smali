.class Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/IStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Stub"
.end annotation


# instance fields
.field private mItf:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

.field final mMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Lcom/google/android/vending/expansion/downloader/IDownloaderService;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->mItf:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    #@6
    new-instance v0, Landroid/os/Messenger;

    #@8
    new-instance v1, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub$1;

    #@a
    invoke-direct {v1, p0}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub$1;-><init>(Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;)V

    #@d
    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@10
    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->mMessenger:Landroid/os/Messenger;

    #@12
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->mItf:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    #@14
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->mItf:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    #@2
    return-object v0
.end method


# virtual methods
.method public connect(Landroid/content/Context;)V
    .registers 2

    #@0
    return-void
.end method

.method public disconnect(Landroid/content/Context;)V
    .registers 2

    #@0
    return-void
.end method

.method public getMessenger()Landroid/os/Messenger;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->mMessenger:Landroid/os/Messenger;

    #@2
    return-object v0
.end method
