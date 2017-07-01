.class public Lcom/google/android/gms/wearable/internal/ao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/ao;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final alz:Lcom/google/android/gms/wearable/internal/ac;

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/wearable/internal/ap;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/ap;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/wearable/internal/ao;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/wearable/internal/ao;->xM:I

    #@5
    if-eqz p2, :cond_e

    #@7
    invoke-static {p2}, Lcom/google/android/gms/wearable/internal/ac$a;->bx(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ac;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/ao;->alz:Lcom/google/android/gms/wearable/internal/ac;

    #@d
    :goto_d
    return-void

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/ao;->alz:Lcom/google/android/gms/wearable/internal/ac;

    #@11
    goto :goto_d
.end method

.method public constructor <init>(Lcom/google/android/gms/wearable/internal/ac;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/google/android/gms/wearable/internal/ao;->xM:I

    #@6
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/ao;->alz:Lcom/google/android/gms/wearable/internal/ac;

    #@8
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

.method no()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/ao;->alz:Lcom/google/android/gms/wearable/internal/ac;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    return-object v0

    #@6
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/ao;->alz:Lcom/google/android/gms/wearable/internal/ac;

    #@8
    invoke-interface {v0}, Lcom/google/android/gms/wearable/internal/ac;->asBinder()Landroid/os/IBinder;

    #@b
    move-result-object v0

    #@c
    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/ap;->a(Lcom/google/android/gms/wearable/internal/ao;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
