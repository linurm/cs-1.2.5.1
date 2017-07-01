.class public final Lcom/google/android/gms/wallet/MaskedWalletRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/MaskedWalletRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field aiL:Ljava/lang/String;

.field aiR:Ljava/lang/String;

.field ajF:Z

.field ajG:Z

.field ajH:Z

.field ajI:Ljava/lang/String;

.field ajJ:Ljava/lang/String;

.field ajK:Z

.field ajL:Z

.field ajM:[Lcom/google/android/gms/wallet/CountrySpecification;

.field ajN:Z

.field ajO:Z

.field ajP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;"
        }
    .end annotation
.end field

.field aja:Lcom/google/android/gms/wallet/Cart;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/wallet/l;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wallet/l;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>()V
    .registers 3

    #@0
    const/4 v1, 0x1

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    const/4 v0, 0x3

    #@5
    iput v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->xM:I

    #@7
    iput-boolean v1, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajN:Z

    #@9
    iput-boolean v1, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajO:Z

    #@b
    return-void
.end method

.method constructor <init>(ILjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/Cart;ZZ[Lcom/google/android/gms/wallet/CountrySpecification;ZZLjava/util/ArrayList;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/wallet/Cart;",
            "ZZ[",
            "Lcom/google/android/gms/wallet/CountrySpecification;",
            "ZZ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->aiR:Ljava/lang/String;

    #@7
    iput-boolean p3, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajF:Z

    #@9
    iput-boolean p4, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajG:Z

    #@b
    iput-boolean p5, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajH:Z

    #@d
    iput-object p6, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajI:Ljava/lang/String;

    #@f
    iput-object p7, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->aiL:Ljava/lang/String;

    #@11
    iput-object p8, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajJ:Ljava/lang/String;

    #@13
    iput-object p9, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->aja:Lcom/google/android/gms/wallet/Cart;

    #@15
    iput-boolean p10, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajK:Z

    #@17
    iput-boolean p11, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajL:Z

    #@19
    iput-object p12, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajM:[Lcom/google/android/gms/wallet/CountrySpecification;

    #@1b
    iput-boolean p13, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajN:Z

    #@1d
    iput-boolean p14, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajO:Z

    #@1f
    iput-object p15, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajP:Ljava/util/ArrayList;

    #@21
    return-void
.end method

.method public static newBuilder()Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wallet/MaskedWalletRequest;-><init>()V

    #@5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    new-instance v1, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;

    #@a
    const/4 v2, 0x0

    #@b
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;-><init>(Lcom/google/android/gms/wallet/MaskedWalletRequest;Lcom/google/android/gms/wallet/MaskedWalletRequest$1;)V

    #@e
    return-object v1
.end method


# virtual methods
.method public allowDebitCard()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajO:Z

    #@2
    return v0
.end method

.method public allowPrepaidCard()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajN:Z

    #@2
    return v0
.end method

.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAllowedCountrySpecificationsForShipping()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajP:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getAllowedShippingCountrySpecifications()[Lcom/google/android/gms/wallet/CountrySpecification;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajM:[Lcom/google/android/gms/wallet/CountrySpecification;

    #@2
    return-object v0
.end method

.method public getCart()Lcom/google/android/gms/wallet/Cart;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->aja:Lcom/google/android/gms/wallet/Cart;

    #@2
    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->aiL:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getEstimatedTotalPrice()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajI:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMerchantName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajJ:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMerchantTransactionId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->aiR:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->xM:I

    #@2
    return v0
.end method

.method public isBillingAgreement()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajL:Z

    #@2
    return v0
.end method

.method public isPhoneNumberRequired()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajF:Z

    #@2
    return v0
.end method

.method public isShippingAddressRequired()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajG:Z

    #@2
    return v0
.end method

.method public shouldRetrieveWalletObjects()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajK:Z

    #@2
    return v0
.end method

.method public useMinimalBillingAddress()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajH:Z

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/l;->a(Lcom/google/android/gms/wallet/MaskedWalletRequest;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
