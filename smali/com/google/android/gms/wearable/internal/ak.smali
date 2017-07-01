.class public Lcom/google/android/gms/wearable/internal/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/ak;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final amb:J

.field public final label:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/wearable/internal/al;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/al;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/wearable/internal/ak;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;J)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/wearable/internal/ak;->versionCode:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/ak;->packageName:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/ak;->label:Ljava/lang/String;

    #@9
    iput-wide p4, p0, Lcom/google/android/gms/wearable/internal/ak;->amb:J

    #@b
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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/al;->a(Lcom/google/android/gms/wearable/internal/ak;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
