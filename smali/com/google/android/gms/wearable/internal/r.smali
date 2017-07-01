.class public Lcom/google/android/gms/wearable/internal/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/r;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final alM:Lcom/google/android/gms/wearable/c;

.field public final statusCode:I

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/wearable/internal/s;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/s;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/wearable/internal/r;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(IILcom/google/android/gms/wearable/c;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/wearable/internal/r;->versionCode:I

    #@5
    iput p2, p0, Lcom/google/android/gms/wearable/internal/r;->statusCode:I

    #@7
    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/r;->alM:Lcom/google/android/gms/wearable/c;

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/s;->a(Lcom/google/android/gms/wearable/internal/r;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
