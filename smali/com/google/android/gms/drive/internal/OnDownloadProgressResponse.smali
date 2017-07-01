.class public Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Jw:J

.field final Jx:J

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/drive/internal/ah;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/ah;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(IJJ)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->xM:I

    #@5
    iput-wide p2, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->Jw:J

    #@7
    iput-wide p4, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->Jx:J

    #@9
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

.method public gu()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->Jw:J

    #@2
    return-wide v0
.end method

.method public gv()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->Jx:J

    #@2
    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/ah;->a(Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
