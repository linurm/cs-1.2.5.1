.class Lcom/apportable/activity/ExpansionFileDownloader$3;
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
    iput-object p1, p0, Lcom/apportable/activity/ExpansionFileDownloader$3;->this$0:Lcom/apportable/activity/ExpansionFileDownloader;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader$3;->this$0:Lcom/apportable/activity/ExpansionFileDownloader;

    #@2
    # getter for: Lcom/apportable/activity/ExpansionFileDownloader;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    invoke-static {v0}, Lcom/apportable/activity/ExpansionFileDownloader;->access$000(Lcom/apportable/activity/ExpansionFileDownloader;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_1b

    #@8
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader$3;->this$0:Lcom/apportable/activity/ExpansionFileDownloader;

    #@a
    # getter for: Lcom/apportable/activity/ExpansionFileDownloader;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    invoke-static {v0}, Lcom/apportable/activity/ExpansionFileDownloader;->access$000(Lcom/apportable/activity/ExpansionFileDownloader;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    #@d
    move-result-object v0

    #@e
    const/4 v1, 0x1

    #@f
    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->setDownloadFlags(I)V

    #@12
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader$3;->this$0:Lcom/apportable/activity/ExpansionFileDownloader;

    #@14
    # getter for: Lcom/apportable/activity/ExpansionFileDownloader;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    invoke-static {v0}, Lcom/apportable/activity/ExpansionFileDownloader;->access$000(Lcom/apportable/activity/ExpansionFileDownloader;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    #@17
    move-result-object v0

    #@18
    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestContinueDownload()V

    #@1b
    :cond_1b
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader$3;->this$0:Lcom/apportable/activity/ExpansionFileDownloader;

    #@1d
    # getter for: Lcom/apportable/activity/ExpansionFileDownloader;->mCellMessage:Landroid/view/View;
    invoke-static {v0}, Lcom/apportable/activity/ExpansionFileDownloader;->access$400(Lcom/apportable/activity/ExpansionFileDownloader;)Landroid/view/View;

    #@20
    move-result-object v0

    #@21
    const/16 v1, 0x8

    #@23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@26
    return-void
.end method
