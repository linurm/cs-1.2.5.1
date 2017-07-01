.class public final Lcom/google/android/gms/wallet/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field aiO:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

.field aiP:Lcom/google/android/gms/wallet/OfferWalletObject;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/wallet/e;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wallet/e;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/wallet/d;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x2

    #@4
    iput v0, p0, Lcom/google/android/gms/wallet/d;->xM:I

    #@6
    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/wallet/LoyaltyWalletObject;Lcom/google/android/gms/wallet/OfferWalletObject;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/wallet/d;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/wallet/d;->aiO:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/wallet/d;->aiP:Lcom/google/android/gms/wallet/OfferWalletObject;

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

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/wallet/d;->xM:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/e;->a(Lcom/google/android/gms/wallet/d;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
