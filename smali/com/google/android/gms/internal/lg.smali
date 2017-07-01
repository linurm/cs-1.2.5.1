.class public final Lcom/google/android/gms/internal/lg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/lg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field akd:[I

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/lh;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/lh;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/lg;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>()V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/lg;-><init>(I[I)V

    #@5
    return-void
.end method

.method constructor <init>(I[I)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/lg;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/lg;->akd:[I

    #@7
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

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/lg;->xM:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/lh;->a(Lcom/google/android/gms/internal/lg;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
