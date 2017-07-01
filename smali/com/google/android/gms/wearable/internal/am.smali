.class public Lcom/google/android/gms/wearable/internal/am;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/am;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final alO:Lcom/google/android/gms/wearable/internal/m;

.field public final statusCode:I

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/wearable/internal/an;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/an;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/wearable/internal/am;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(IILcom/google/android/gms/wearable/internal/m;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/wearable/internal/am;->versionCode:I

    #@5
    iput p2, p0, Lcom/google/android/gms/wearable/internal/am;->statusCode:I

    #@7
    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/am;->alO:Lcom/google/android/gms/wearable/internal/m;

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/an;->a(Lcom/google/android/gms/wearable/internal/am;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
