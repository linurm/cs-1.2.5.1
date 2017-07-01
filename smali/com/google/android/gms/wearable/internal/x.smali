.class public Lcom/google/android/gms/wearable/internal/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/x;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final alP:Landroid/os/ParcelFileDescriptor;

.field public final statusCode:I

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/wearable/internal/y;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/y;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/wearable/internal/x;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(IILandroid/os/ParcelFileDescriptor;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/wearable/internal/x;->versionCode:I

    #@5
    iput p2, p0, Lcom/google/android/gms/wearable/internal/x;->statusCode:I

    #@7
    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/x;->alP:Landroid/os/ParcelFileDescriptor;

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
    .registers 4

    #@0
    or-int/lit8 v0, p2, 0x1

    #@2
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/wearable/internal/y;->a(Lcom/google/android/gms/wearable/internal/x;Landroid/os/Parcel;I)V

    #@5
    return-void
.end method
