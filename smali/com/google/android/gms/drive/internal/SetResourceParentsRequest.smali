.class public Lcom/google/android/gms/drive/internal/SetResourceParentsRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/SetResourceParentsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final JF:Lcom/google/android/gms/drive/DriveId;

.field final JG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;"
        }
    .end annotation
.end field

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/drive/internal/av;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/av;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/drive/internal/SetResourceParentsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/drive/DriveId;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/drive/internal/SetResourceParentsRequest;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/drive/internal/SetResourceParentsRequest;->JF:Lcom/google/android/gms/drive/DriveId;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/drive/internal/SetResourceParentsRequest;->JG:Ljava/util/List;

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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/av;->a(Lcom/google/android/gms/drive/internal/SetResourceParentsRequest;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
