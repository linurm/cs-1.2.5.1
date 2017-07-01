.class Lcom/apportable/activity/ExpansionFileDownloader$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/ExpansionFileDownloader;->initializeDownloadUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/activity/ExpansionFileDownloader;


# direct methods
.method constructor <init>(Lcom/apportable/activity/ExpansionFileDownloader;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/activity/ExpansionFileDownloader$1;->this$0:Lcom/apportable/activity/ExpansionFileDownloader;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader$1;->this$0:Lcom/apportable/activity/ExpansionFileDownloader;

    #@2
    # getter for: Lcom/apportable/activity/ExpansionFileDownloader;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    invoke-static {v0}, Lcom/apportable/activity/ExpansionFileDownloader;->access$000(Lcom/apportable/activity/ExpansionFileDownloader;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_27

    #@8
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader$1;->this$0:Lcom/apportable/activity/ExpansionFileDownloader;

    #@a
    # getter for: Lcom/apportable/activity/ExpansionFileDownloader;->mDownloadStatePaused:Z
    invoke-static {v0}, Lcom/apportable/activity/ExpansionFileDownloader;->access$100(Lcom/apportable/activity/ExpansionFileDownloader;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_28

    #@10
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader$1;->this$0:Lcom/apportable/activity/ExpansionFileDownloader;

    #@12
    # getter for: Lcom/apportable/activity/ExpansionFileDownloader;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    invoke-static {v0}, Lcom/apportable/activity/ExpansionFileDownloader;->access$000(Lcom/apportable/activity/ExpansionFileDownloader;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    #@15
    move-result-object v0

    #@16
    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestContinueDownload()V

    #@19
    :goto_19
    iget-object v1, p0, Lcom/apportable/activity/ExpansionFileDownloader$1;->this$0:Lcom/apportable/activity/ExpansionFileDownloader;

    #@1b
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader$1;->this$0:Lcom/apportable/activity/ExpansionFileDownloader;

    #@1d
    # getter for: Lcom/apportable/activity/ExpansionFileDownloader;->mDownloadStatePaused:Z
    invoke-static {v0}, Lcom/apportable/activity/ExpansionFileDownloader;->access$100(Lcom/apportable/activity/ExpansionFileDownloader;)Z

    #@20
    move-result v0

    #@21
    if-nez v0, :cond_32

    #@23
    const/4 v0, 0x1

    #@24
    :goto_24
    # invokes: Lcom/apportable/activity/ExpansionFileDownloader;->setButtonPausedState(Z)V
    invoke-static {v1, v0}, Lcom/apportable/activity/ExpansionFileDownloader;->access$200(Lcom/apportable/activity/ExpansionFileDownloader;Z)V

    #@27
    :cond_27
    return-void

    #@28
    :cond_28
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader$1;->this$0:Lcom/apportable/activity/ExpansionFileDownloader;

    #@2a
    # getter for: Lcom/apportable/activity/ExpansionFileDownloader;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    invoke-static {v0}, Lcom/apportable/activity/ExpansionFileDownloader;->access$000(Lcom/apportable/activity/ExpansionFileDownloader;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    #@2d
    move-result-object v0

    #@2e
    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestPauseDownload()V

    #@31
    goto :goto_19

    #@32
    :cond_32
    const/4 v0, 0x0

    #@33
    goto :goto_24
.end method
