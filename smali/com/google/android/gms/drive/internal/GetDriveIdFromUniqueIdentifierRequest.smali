.class public Lcom/google/android/gms/drive/internal/GetDriveIdFromUniqueIdentifierRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/GetDriveIdFromUniqueIdentifierRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Jp:Ljava/lang/String;

.field final Jq:Z

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/drive/internal/y;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/y;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/drive/internal/GetDriveIdFromUniqueIdentifierRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Z)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/drive/internal/GetDriveIdFromUniqueIdentifierRequest;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/drive/internal/GetDriveIdFromUniqueIdentifierRequest;->Jp:Ljava/lang/String;

    #@7
    iput-boolean p3, p0, Lcom/google/android/gms/drive/internal/GetDriveIdFromUniqueIdentifierRequest;->Jq:Z

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/y;->a(Lcom/google/android/gms/drive/internal/GetDriveIdFromUniqueIdentifierRequest;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
