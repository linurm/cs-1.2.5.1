.class Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$RetryDownload;
.super Ljava/lang/Throwable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetryDownload"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x55fcbdf27c25b185L


# instance fields
.field final synthetic this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;


# direct methods
.method private constructor <init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$RetryDownload;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;

    #@2
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$RetryDownload;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;)V

    #@3
    return-void
.end method
