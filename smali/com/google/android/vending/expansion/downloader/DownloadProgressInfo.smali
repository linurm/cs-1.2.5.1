.class public Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCurrentSpeed:F

.field public mOverallProgress:J

.field public mOverallTotal:J

.field public mTimeRemaining:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo$1;

    #@2
    invoke-direct {v0}, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo$1;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method public constructor <init>(JJJF)V
    .registers 9

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-wide p1, p0, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    #@5
    iput-wide p3, p0, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallProgress:J

    #@7
    iput-wide p5, p0, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mTimeRemaining:J

    #@9
    iput p7, p0, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mCurrentSpeed:F

    #@b
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    #@9
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@c
    move-result-wide v0

    #@d
    iput-wide v0, p0, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallProgress:J

    #@f
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@12
    move-result-wide v0

    #@13
    iput-wide v0, p0, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mTimeRemaining:J

    #@15
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@18
    move-result v0

    #@19
    iput v0, p0, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mCurrentSpeed:F

    #@1b
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    #@0
    iget-wide v0, p0, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    #@2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    iget-wide v0, p0, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallProgress:J

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@a
    iget-wide v0, p0, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mTimeRemaining:J

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@f
    iget v0, p0, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mCurrentSpeed:F

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@14
    return-void
.end method
