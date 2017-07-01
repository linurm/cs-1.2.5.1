.class public final Lcom/google/android/gms/wallet/OfferWalletObject;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/OfferWalletObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field ajT:Ljava/lang/String;

.field ajU:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

.field eC:Ljava/lang/String;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/wallet/n;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wallet/n;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/wallet/OfferWalletObject;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x3

    #@4
    iput v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->xM:I

    #@6
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/wobs/CommonWalletObject;)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->xM:I

    #@5
    iput-object p3, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->ajT:Ljava/lang/String;

    #@7
    const/4 v0, 0x3

    #@8
    if-ge p1, v0, :cond_19

    #@a
    invoke-static {}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->nk()Lcom/google/android/gms/wallet/wobs/CommonWalletObject$a;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p2}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$a;->cw(Ljava/lang/String;)Lcom/google/android/gms/wallet/wobs/CommonWalletObject$a;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$a;->nl()Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->ajU:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    #@18
    :goto_18
    return-void

    #@19
    :cond_19
    iput-object p4, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->ajU:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    #@1b
    goto :goto_18
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->ajU:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->getId()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getRedemptionCode()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->ajT:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->xM:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/n;->a(Lcom/google/android/gms/wallet/OfferWalletObject;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
