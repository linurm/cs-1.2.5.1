.class public Lcom/apportable/activity/ExpansionFileDownloader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/IDownloaderClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/activity/ExpansionFileDownloader$Callback;,
        Lcom/apportable/activity/ExpansionFileDownloader$XAPKFile;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExpansionFileDownloader"


# instance fields
.field private heightDiff:I

.field private mActivity:Landroid/app/Activity;

.field private mAppReady:Z

.field private mApproveCellular:Landroid/widget/ScrollView;

.field private mAverageSpeed:Landroid/widget/TextView;

.field private mCallback:Lcom/apportable/activity/ExpansionFileDownloader$Callback;

.field private mCellMessage:Landroid/view/View;

.field private mDashboard:Landroid/view/View;

.field private mDownloadState:I

.field private mDownloadStatePaused:Z

.field private mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

.field private mExpansionFileManager:Lcom/apportable/ExpansionFileManager;

.field private mPB:Landroid/widget/ProgressBar;

.field private mPauseButton:Landroid/widget/Button;

.field private mPaused:Z

.field private mProgressFraction:Landroid/widget/TextView;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressView:Landroid/view/View;

.field private mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

.field private mRequestedOrientation:I

.field private mRestartIntent:Landroid/app/PendingIntent;

.field private mResumeOnCell:Landroid/widget/Button;

.field private mStatusText:Landroid/widget/TextView;

.field private mTimeRemaining:Landroid/widget/TextView;

.field private mWiFiSettingsButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    iput-boolean v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mPaused:Z

    #@6
    iput v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->heightDiff:I

    #@8
    invoke-static {}, Lcom/apportable/ExpansionFileManager;->getManager()Lcom/apportable/ExpansionFileManager;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mExpansionFileManager:Lcom/apportable/ExpansionFileManager;

    #@e
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/activity/ExpansionFileDownloader;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    #@2
    return-object v0
.end method

.method static synthetic access$100(Lcom/apportable/activity/ExpansionFileDownloader;)Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mDownloadStatePaused:Z

    #@2
    return v0
.end method

.method static synthetic access$200(Lcom/apportable/activity/ExpansionFileDownloader;Z)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/apportable/activity/ExpansionFileDownloader;->setButtonPausedState(Z)V

    #@3
    return-void
.end method

.method static synthetic access$300(Lcom/apportable/activity/ExpansionFileDownloader;)Landroid/app/Activity;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    #@2
    return-object v0
.end method

.method static synthetic access$400(Lcom/apportable/activity/ExpansionFileDownloader;)Landroid/view/View;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mCellMessage:Landroid/view/View;

    #@2
    return-object v0
.end method

.method private checkForExpansionFiles()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    const/4 v5, 0x0

    #@1
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    #@3
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    #@6
    move-result-object v0

    #@7
    new-instance v1, Landroid/content/Intent;

    #@9
    iget-object v2, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    #@b
    iget-object v3, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    #@d
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@10
    move-result-object v3

    #@11
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@14
    const/high16 v2, 0x20000

    #@16
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@19
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@20
    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    #@23
    move-result-object v2

    #@24
    if-eqz v2, :cond_3e

    #@26
    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    #@29
    move-result-object v0

    #@2a
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@2d
    move-result-object v2

    #@2e
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@31
    move-result v0

    #@32
    if-eqz v0, :cond_3e

    #@34
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@37
    move-result-object v0

    #@38
    check-cast v0, Ljava/lang/String;

    #@3a
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@3d
    goto :goto_2e

    #@3e
    :cond_3e
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    #@40
    const/high16 v2, 0x8000000

    #@42
    invoke-static {v0, v5, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@45
    move-result-object v0

    #@46
    iget-object v1, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    #@48
    const-class v2, Lcom/apportable/expansion/downloader/ExpansionFileDownloaderService;

    #@4a
    invoke-static {v1, v0, v2}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)I

    #@4d
    move-result v0

    #@4e
    const-string v1, "ExpansionFileDownloader"

    #@50
    const-string v2, "Intent start result %d"

    #@52
    const/4 v3, 0x1

    #@53
    new-array v3, v3, [Ljava/lang/Object;

    #@55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@58
    move-result-object v4

    #@59
    aput-object v4, v3, v5

    #@5b
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    if-eqz v0, :cond_67

    #@64
    invoke-direct {p0}, Lcom/apportable/activity/ExpansionFileDownloader;->initializeDownloadUI()V

    #@67
    :cond_67
    return-void
.end method

.method private initializeDownloadUI()V
    .registers 6

    #@0
    const-string v0, "ExpansionFileDownloader"

    #@2
    const-string v1, ">initializeDownloadUI"

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    #@9
    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    #@c
    move-result-object v0

    #@d
    const/4 v1, 0x0

    #@e
    new-instance v2, Landroid/content/Intent;

    #@10
    iget-object v3, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    #@12
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    #@15
    move-result-object v3

    #@16
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@19
    iget-object v3, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    #@1b
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    #@22
    move-result v3

    #@23
    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@26
    move-result-object v0

    #@27
    iput-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mRestartIntent:Landroid/app/PendingIntent;

    #@29
    const-class v0, Lcom/apportable/expansion/downloader/ExpansionFileDownloaderService;

    #@2b
    invoke-static {p0, v0}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->CreateStub(Lcom/google/android/vending/expansion/downloader/IDownloaderClient;Ljava/lang/Class;)Lcom/google/android/vending/expansion/downloader/IStub;

    #@2e
    move-result-object v0

    #@2f
    iput-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    #@31
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    #@33
    if-eqz v0, :cond_3c

    #@35
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    #@37
    iget-object v1, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    #@39
    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IStub;->connect(Landroid/content/Context;)V

    #@3c
    :cond_3c
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    #@3e
    sget v1, Lcom/apportable/activity/R$layout;->download:I

    #@40
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    #@43
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    #@45
    sget v1, Lcom/apportable/activity/R$layout;->download:I

    #@47
    const/4 v2, 0x0

    #@48
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    #@4b
    move-result-object v0

    #@4c
    iput-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mProgressView:Landroid/view/View;

    #@4e
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    #@50
    sget v1, Lcom/apportable/activity/R$id;->progressBar:I

    #@52
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    #@55
    move-result-object v0

    #@56
    check-cast v0, Landroid/widget/ProgressBar;

    #@58
    iput-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mPB:Landroid/widget/ProgressBar;

    #@5a
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    #@5c
    sget v1, Lcom/apportable/activity/R$id;->statusText:I

    #@5e
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    #@61
    move-result-object v0

    #@62
    check-cast v0, Landroid/widget/TextView;

    #@64
    iput-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mStatusText:Landroid/widget/TextView;

    #@66
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    #@68
    sget v1, Lcom/apportable/activity/R$id;->appDownloadIcon:I

    #@6a
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    #@6d
    move-result-object v0

    #@6e
    check-cast v0, Landroid/widget/ImageView;

    #@70
    iget-object v1, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    #@72
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    #@75
    move-result-object v1

    #@76
    const-string v2, "icon"

    #@78
    const-string v3, "drawable"

    #@7a
    iget-object v4, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    #@7c
    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@7f
    move-result-object v4

    #@80
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@83
    move-result v1

    #@84
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    #@87
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    #@89
    sget v1, Lcom/apportable/activity/R$id;->appName:I

    #@8b
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    #@8e
    move-result-object v0

    #@8f
    check-cast v0, Landroid/widget/TextView;

    #@91
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    #@94
    move-result-object v1

    #@95
    const-string v2, "android.app_name"

    #@97
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@9a
    move-result-object v1

    #@9b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@9e
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    #@a0
    sget v1, Lcom/apportable/activity/R$id;->progressAsFraction:I

    #@a2
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    #@a5
    move-result-object v0

    #@a6
    check-cast v0, Landroid/widget/TextView;

    #@a8
    iput-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mProgressFraction:Landroid/widget/TextView;

    #@aa
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    #@ac
    sget v1, Lcom/apportable/activity/R$id;->progressAsPercentage:I

    #@ae
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    #@b1
    move-result-object v0

    #@b2
    check-cast v0, Landroid/widget/TextView;

    #@b4
    iput-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mProgressPercent:Landroid/widget/TextView;

    #@b6
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    #@b8
    sget v1, Lcom/apportable/activity/R$id;->progressAverageSpeed:I

    #@ba
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    #@bd
    move-result-object v0

    #@be
    check-cast v0, Landroid/widget/TextView;

    #@c0
    iput-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mAverageSpeed:Landroid/widget/TextView;

    #@c2
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    #@c4
    sget v1, Lcom/apportable/activity/R$id;->progressTimeRemaining:I

    #@c6
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    #@c9
    move-result-object v0

    #@ca
    check-cast v0, Landroid/widget/TextView;

    #@cc
    iput-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mTimeRemaining:Landroid/widget/TextView;

    #@ce
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    #@d0
    sget v1, Lcom/apportable/activity/R$id;->downloaderDashboard:I

    #@d2
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    #@d5
    move-result-object v0

    #@d6
    iput-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mDashboard:Landroid/view/View;

    #@d8
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    #@da
    sget v1, Lcom/apportable/activity/R$id;->approveCellular:I

    #@dc
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    #@df
    move-result-object v0

    #@e0
    iput-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mCellMessage:Landroid/view/View;

    #@e2
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    #@e4
    sget v1, Lcom/apportable/activity/R$id;->pauseButton:I

    #@e6
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    #@e9
    move-result-object v0

    #@ea
    check-cast v0, Landroid/widget/Button;

    #@ec
    iput-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mPauseButton:Landroid/widget/Button;

    #@ee
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    #@f0
    sget v1, Lcom/apportable/activity/R$id;->wifiSettingsButton:I

    #@f2
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    #@f5
    move-result-object v0

    #@f6
    check-cast v0, Landroid/widget/Button;

    #@f8
    iput-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mWiFiSettingsButton:Landroid/widget/Button;

    #@fa
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mPauseButton:Landroid/widget/Button;

    #@fc
    new-instance v1, Lcom/apportable/activity/ExpansionFileDownloader$1;

    #@fe
    invoke-direct {v1, p0}, Lcom/apportable/activity/ExpansionFileDownloader$1;-><init>(Lcom/apportable/activity/ExpansionFileDownloader;)V

    #@101
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@104
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mWiFiSettingsButton:Landroid/widget/Button;

    #@106
    new-instance v1, Lcom/apportable/activity/ExpansionFileDownloader$2;

    #@108
    invoke-direct {v1, p0}, Lcom/apportable/activity/ExpansionFileDownloader$2;-><init>(Lcom/apportable/activity/ExpansionFileDownloader;)V

    #@10b
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@10e
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    #@110
    sget v1, Lcom/apportable/activity/R$id;->resumeOverCellular:I

    #@112
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    #@115
    move-result-object v0

    #@116
    check-cast v0, Landroid/widget/Button;

    #@118
    new-instance v1, Lcom/apportable/activity/ExpansionFileDownloader$3;

    #@11a
    invoke-direct {v1, p0}, Lcom/apportable/activity/ExpansionFileDownloader$3;-><init>(Lcom/apportable/activity/ExpansionFileDownloader;)V

    #@11d
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@120
    return-void
.end method

.method private setButtonPausedState(Z)V
    .registers 4

    #@0
    iput-boolean p1, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mDownloadStatePaused:Z

    #@2
    if-eqz p1, :cond_c

    #@4
    sget v0, Lcom/apportable/activity/R$string;->text_button_resume:I

    #@6
    :goto_6
    iget-object v1, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mPauseButton:Landroid/widget/Button;

    #@8
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    #@b
    return-void

    #@c
    :cond_c
    sget v0, Lcom/apportable/activity/R$string;->text_button_pause:I

    #@e
    goto :goto_6
.end method

.method private setDownloadState(I)V
    .registers 4

    #@0
    iget v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mDownloadState:I

    #@2
    if-eq v0, p1, :cond_f

    #@4
    iput p1, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mDownloadState:I

    #@6
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mStatusText:Landroid/widget/TextView;

    #@8
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloaderStringResourceIDFromState(I)I

    #@b
    move-result v1

    #@c
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    #@f
    :cond_f
    return-void
.end method


# virtual methods
.method public expansionFilesDelivered()Z
    .registers 11

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    new-array v3, v1, [Lcom/apportable/activity/ExpansionFileDownloader$XAPKFile;

    #@4
    new-instance v2, Lcom/apportable/activity/ExpansionFileDownloader$XAPKFile;

    #@6
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    #@9
    move-result-object v4

    #@a
    const-string v5, "apportable.expansion.main.version"

    #@c
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@f
    move-result v4

    #@10
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    #@13
    move-result-object v5

    #@14
    const-string v6, "apportable.expansion.main.size"

    #@16
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@19
    move-result v5

    #@1a
    int-to-long v6, v5

    #@1b
    invoke-direct {v2, v1, v4, v6, v7}, Lcom/apportable/activity/ExpansionFileDownloader$XAPKFile;-><init>(ZIJ)V

    #@1e
    aput-object v2, v3, v0

    #@20
    array-length v4, v3

    #@21
    move v2, v0

    #@22
    :goto_22
    if-ge v2, v4, :cond_3e

    #@24
    aget-object v5, v3, v2

    #@26
    iget-object v6, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    #@28
    iget-boolean v7, v5, Lcom/apportable/activity/ExpansionFileDownloader$XAPKFile;->mIsMain:Z

    #@2a
    iget v8, v5, Lcom/apportable/activity/ExpansionFileDownloader$XAPKFile;->mFileVersion:I

    #@2c
    invoke-static {v6, v7, v8}, Lcom/google/android/vending/expansion/downloader/Helpers;->getExpansionAPKFileName(Landroid/content/Context;ZI)Ljava/lang/String;

    #@2f
    move-result-object v6

    #@30
    iget-object v7, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    #@32
    iget-wide v8, v5, Lcom/apportable/activity/ExpansionFileDownloader$XAPKFile;->mFileSize:J

    #@34
    invoke-static {v7, v6, v8, v9, v0}, Lcom/google/android/vending/expansion/downloader/Helpers;->doesFileExist(Landroid/content/Context;Ljava/lang/String;JZ)Z

    #@37
    move-result v5

    #@38
    if-nez v5, :cond_3b

    #@3a
    :goto_3a
    return v0

    #@3b
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    #@3d
    goto :goto_22

    #@3e
    :cond_3e
    move v0, v1

    #@3f
    goto :goto_3a
.end method

.method public hasExpansionFiles()Z
    .registers 3

    #@0
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    const-string v1, "apportable.expansion.main.size"

    #@6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@9
    move-result v0

    #@a
    if-lez v0, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    :goto_d
    return v0

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    goto :goto_d
.end method

.method public load(Landroid/app/Activity;Lcom/apportable/activity/ExpansionFileDownloader$Callback;)V
    .registers 9

    #@0
    iput-object p2, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mCallback:Lcom/apportable/activity/ExpansionFileDownloader$Callback;

    #@2
    iput-object p1, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    #@4
    invoke-virtual {p0}, Lcom/apportable/activity/ExpansionFileDownloader;->hasExpansionFiles()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_7b
    
    const-string v0, "ZTAG"

    const-string v1, "ExpansionFileDownloader load() hasExpansionFiles() true "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    invoke-virtual {p0}, Lcom/apportable/activity/ExpansionFileDownloader;->expansionFilesDelivered()Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_7b
    
    const-string v0, "ZTAG"

    const-string v1, "ExpansionFileDownloader load() ... "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    :try_start_10
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    #@13
    move-result-object v0

    #@14
    new-instance v1, Landroid/content/Intent;

    #@16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@19
    move-result-object v2

    #@1a
    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@1d
    const/high16 v2, 0x20000

    #@1f
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@22
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@29
    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    #@2c
    move-result-object v2

    #@2d
    if-eqz v2, :cond_53

    #@2f
    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    #@32
    move-result-object v0

    #@33
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@36
    move-result-object v2

    #@37
    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_53

    #@3d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@40
    move-result-object v0

    #@41
    check-cast v0, Ljava/lang/String;

    #@43
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_46
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_46} :catch_47

    #@46
    goto :goto_37

    #@47
    :catch_47
    move-exception v0

    #@48
    const-string v1, "ExpansionFileDownloader"

    #@4a
    const-string v2, "Cannot find own package! MAYDAY!"

    #@4c
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    #@52
    :cond_52
    :goto_52
    return-void

    #@53
    :cond_53
    const/4 v0, 0x0

    #@54
    const/high16 v2, 0x8000000

    #@56
    :try_start_56
    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@59
    move-result-object v0

    #@5a
    const-class v1, Lcom/apportable/expansion/downloader/ExpansionFileDownloaderService;

    #@5c
    invoke-static {p1, v0, v1}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)I

    #@5f
    move-result v0

    #@60
    const-string v1, "ExpansionFileDownloader"

    #@62
    const-string v2, "Intent start result %d"

    #@64
    const/4 v3, 0x1

    #@65
    new-array v3, v3, [Ljava/lang/Object;

    #@67
    const/4 v4, 0x0

    #@68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6b
    move-result-object v5

    #@6c
    aput-object v5, v3, v4

    #@6e
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@71
    move-result-object v2

    #@72
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@75
    if-eqz v0, :cond_52

    #@77
    invoke-direct {p0}, Lcom/apportable/activity/ExpansionFileDownloader;->initializeDownloadUI()V
    :try_end_7a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_56 .. :try_end_7a} :catch_47

    #@7a
    goto :goto_52

    #@7b
    :cond_7b
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mCallback:Lcom/apportable/activity/ExpansionFileDownloader$Callback;

    #@7d
    invoke-interface {v0}, Lcom/apportable/activity/ExpansionFileDownloader$Callback;->onFinished()V

    #@80
    goto :goto_52
.end method

.method public onDownloadProgress(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V
    .registers 10

    #@0
    const/16 v7, 0x8

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v6, 0x0

    #@4
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mAverageSpeed:Landroid/widget/TextView;

    #@6
    const-string v1, "%1$s KB/s"

    #@8
    new-array v2, v4, [Ljava/lang/Object;

    #@a
    iget v3, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mCurrentSpeed:F

    #@c
    invoke-static {v3}, Lcom/google/android/vending/expansion/downloader/Helpers;->getSpeedString(F)Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    aput-object v3, v2, v6

    #@12
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@19
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mTimeRemaining:Landroid/widget/TextView;

    #@1b
    const-string v1, "Time remaining: %1$s"

    #@1d
    new-array v2, v4, [Ljava/lang/Object;

    #@1f
    iget-wide v4, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mTimeRemaining:J

    #@21
    invoke-static {v4, v5}, Lcom/google/android/vending/expansion/downloader/Helpers;->getTimeRemaining(J)Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    aput-object v3, v2, v6

    #@27
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@2e
    iget-wide v0, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    #@30
    iput-wide v0, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    #@32
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mPB:Landroid/widget/ProgressBar;

    #@34
    iget-wide v2, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    #@36
    shr-long/2addr v2, v7

    #@37
    long-to-int v1, v2

    #@38
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    #@3b
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mPB:Landroid/widget/ProgressBar;

    #@3d
    iget-wide v2, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallProgress:J

    #@3f
    shr-long/2addr v2, v7

    #@40
    long-to-int v1, v2

    #@41
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    #@44
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mProgressPercent:Landroid/widget/TextView;

    #@46
    new-instance v1, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    iget-wide v2, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallProgress:J

    #@4d
    const-wide/16 v4, 0x64

    #@4f
    mul-long/2addr v2, v4

    #@50
    iget-wide v4, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    #@52
    div-long/2addr v2, v4

    #@53
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    const-string v2, "%"

    #@5d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v1

    #@65
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@68
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mProgressFraction:Landroid/widget/TextView;

    #@6a
    iget-wide v2, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallProgress:J

    #@6c
    iget-wide v4, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    #@6e
    invoke-static {v2, v3, v4, v5}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloadProgressString(JJ)Ljava/lang/String;

    #@71
    move-result-object v1

    #@72
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@75
    return-void
.end method

.method public onDownloadStateChanged(I)V
    .registers 9

    #@0
    const/16 v2, 0x8

    #@2
    const/4 v0, 0x1

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, p1}, Lcom/apportable/activity/ExpansionFileDownloader;->setDownloadState(I)V

    #@7
    packed-switch p1, :pswitch_data_a4

    #@a
    :pswitch_a
    move v3, v0

    #@b
    move v4, v0

    #@c
    move v5, v1

    #@d
    :goto_d
    if-eqz v0, :cond_9d

    #@f
    move v0, v1

    #@10
    :goto_10
    iget-object v6, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mDashboard:Landroid/view/View;

    #@12
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    #@15
    move-result v6

    #@16
    if-eq v6, v0, :cond_1d

    #@18
    iget-object v6, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mDashboard:Landroid/view/View;

    #@1a
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    #@1d
    :cond_1d
    if-eqz v5, :cond_a0

    #@1f
    :goto_1f
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mCellMessage:Landroid/view/View;

    #@21
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@24
    move-result v0

    #@25
    if-eq v0, v1, :cond_2c

    #@27
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mCellMessage:Landroid/view/View;

    #@29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@2c
    :cond_2c
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mPB:Landroid/widget/ProgressBar;

    #@2e
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    #@31
    invoke-direct {p0, v3}, Lcom/apportable/activity/ExpansionFileDownloader;->setButtonPausedState(Z)V

    #@34
    :goto_34
    return-void

    #@35
    :pswitch_35
    move v3, v1

    #@36
    move v4, v0

    #@37
    move v5, v1

    #@38
    goto :goto_d

    #@39
    :pswitch_39
    move v3, v1

    #@3a
    move v4, v0

    #@3b
    move v5, v1

    #@3c
    goto :goto_d

    #@3d
    :pswitch_3d
    move v3, v1

    #@3e
    move v4, v1

    #@3f
    move v5, v1

    #@40
    goto :goto_d

    #@41
    :pswitch_41
    iget-object v3, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mTimeRemaining:Landroid/widget/TextView;

    #@43
    const-string v4, "Download Failed"

    #@45
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@48
    move v3, v0

    #@49
    move v4, v1

    #@4a
    move v5, v1

    #@4b
    goto :goto_d

    #@4c
    :pswitch_4c
    iget-object v3, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mTimeRemaining:Landroid/widget/TextView;

    #@4e
    const-string v4, "Download Failed"

    #@50
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@53
    move v3, v0

    #@54
    move v4, v1

    #@55
    move v5, v1

    #@56
    move v0, v1

    #@57
    goto :goto_d

    #@58
    :pswitch_58
    iget-object v3, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mTimeRemaining:Landroid/widget/TextView;

    #@5a
    const-string v4, "Need Wifi"

    #@5c
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@5f
    move v3, v0

    #@60
    move v4, v1

    #@61
    move v5, v0

    #@62
    move v0, v1

    #@63
    goto :goto_d

    #@64
    :pswitch_64
    move v3, v0

    #@65
    move v4, v1

    #@66
    move v5, v1

    #@67
    goto :goto_d

    #@68
    :pswitch_68
    iget-object v3, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mTimeRemaining:Landroid/widget/TextView;

    #@6a
    const-string v4, "Cannot download while roaming"

    #@6c
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@6f
    move v3, v0

    #@70
    move v4, v1

    #@71
    move v5, v1

    #@72
    goto :goto_d

    #@73
    :pswitch_73
    iget-object v3, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mTimeRemaining:Landroid/widget/TextView;

    #@75
    const-string v4, "Cannot download, SD card unavailable"

    #@77
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@7a
    move v3, v0

    #@7b
    move v4, v1

    #@7c
    move v5, v1

    #@7d
    goto :goto_d

    #@7e
    :pswitch_7e
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mTimeRemaining:Landroid/widget/TextView;

    #@80
    const-string v1, "Download Complete"

    #@82
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@85
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    #@87
    check-cast v0, Lcom/apportable/activity/VerdeActivity;

    #@89
    invoke-virtual {v0}, Lcom/apportable/activity/VerdeActivity;->primaryContainer()Landroid/widget/FrameLayout;

    #@8c
    move-result-object v0

    #@8d
    iget-object v1, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mProgressView:Landroid/view/View;

    #@8f
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    #@92
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mExpansionFileManager:Lcom/apportable/ExpansionFileManager;

    #@94
    invoke-virtual {v0}, Lcom/apportable/ExpansionFileManager;->updateAPKExpansionFile()V

    #@97
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mCallback:Lcom/apportable/activity/ExpansionFileDownloader$Callback;

    #@99
    invoke-interface {v0}, Lcom/apportable/activity/ExpansionFileDownloader$Callback;->onFinished()V

    #@9c
    goto :goto_34

    #@9d
    :cond_9d
    move v0, v2

    #@9e
    goto/16 :goto_10

    #@a0
    :cond_a0
    move v1, v2

    #@a1
    goto/16 :goto_1f

    #@a3
    nop

    #@a4
    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_35
        :pswitch_39
        :pswitch_39
        :pswitch_3d
        :pswitch_7e
        :pswitch_a
        :pswitch_64
        :pswitch_58
        :pswitch_58
        :pswitch_a
        :pswitch_a
        :pswitch_68
        :pswitch_a
        :pswitch_73
        :pswitch_4c
        :pswitch_41
        :pswitch_a
        :pswitch_4c
        :pswitch_4c
    .end packed-switch
.end method

.method public onServiceConnected(Landroid/os/Messenger;)V
    .registers 4

    #@0
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller;->CreateProxy(Landroid/os/Messenger;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    #@6
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    #@8
    iget-object v1, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    #@a
    invoke-interface {v1}, Lcom/google/android/vending/expansion/downloader/IStub;->getMessenger()Landroid/os/Messenger;

    #@d
    move-result-object v1

    #@e
    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->onClientUpdated(Landroid/os/Messenger;)V

    #@11
    return-void
.end method
