.class final Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    #@2
    invoke-direct {v0, p1}, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;-><init>(Landroid/os/Parcel;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo$1;->newArray(I)[Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
