.class public final Lcom/google/android/gms/wallet/MaskedWallet;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/MaskedWallet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field aiQ:Ljava/lang/String;

.field aiR:Ljava/lang/String;

.field aiT:Ljava/lang/String;

.field aiU:Lcom/google/android/gms/wallet/Address;

.field aiV:Lcom/google/android/gms/wallet/Address;

.field aiW:[Ljava/lang/String;

.field aiX:Lcom/google/android/gms/identity/intents/model/UserAddress;

.field aiY:Lcom/google/android/gms/identity/intents/model/UserAddress;

.field aiZ:[Lcom/google/android/gms/wallet/InstrumentInfo;

.field ajC:[Lcom/google/android/gms/wallet/LoyaltyWalletObject;

.field ajD:[Lcom/google/android/gms/wallet/OfferWalletObject;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/wallet/k;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wallet/k;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/wallet/MaskedWallet;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x2

    #@4
    iput v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->xM:I

    #@6
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/Address;Lcom/google/android/gms/wallet/Address;[Lcom/google/android/gms/wallet/LoyaltyWalletObject;[Lcom/google/android/gms/wallet/OfferWalletObject;Lcom/google/android/gms/identity/intents/model/UserAddress;Lcom/google/android/gms/identity/intents/model/UserAddress;[Lcom/google/android/gms/wallet/InstrumentInfo;)V
    .registers 13

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/wallet/MaskedWallet;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiQ:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiR:Ljava/lang/String;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiW:[Ljava/lang/String;

    #@b
    iput-object p5, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiT:Ljava/lang/String;

    #@d
    iput-object p6, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiU:Lcom/google/android/gms/wallet/Address;

    #@f
    iput-object p7, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiV:Lcom/google/android/gms/wallet/Address;

    #@11
    iput-object p8, p0, Lcom/google/android/gms/wallet/MaskedWallet;->ajC:[Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    #@13
    iput-object p9, p0, Lcom/google/android/gms/wallet/MaskedWallet;->ajD:[Lcom/google/android/gms/wallet/OfferWalletObject;

    #@15
    iput-object p10, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiX:Lcom/google/android/gms/identity/intents/model/UserAddress;

    #@17
    iput-object p11, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiY:Lcom/google/android/gms/identity/intents/model/UserAddress;

    #@19
    iput-object p12, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiZ:[Lcom/google/android/gms/wallet/InstrumentInfo;

    #@1b
    return-void
.end method

.method public static newBuilderFrom(Lcom/google/android/gms/wallet/MaskedWallet;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .registers 3

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    invoke-static {}, Lcom/google/android/gms/wallet/MaskedWallet;->ng()Lcom/google/android/gms/wallet/MaskedWallet$Builder;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWallet;->getGoogleTransactionId()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->setGoogleTransactionId(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWallet;->getMerchantTransactionId()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->setMerchantTransactionId(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWallet;->getPaymentDescriptions()[Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->setPaymentDescriptions([Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWallet;->getInstrumentInfos()[Lcom/google/android/gms/wallet/InstrumentInfo;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->setInstrumentInfos([Lcom/google/android/gms/wallet/InstrumentInfo;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWallet;->getEmail()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->setEmail(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWallet;->getLoyaltyWalletObjects()[Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->setLoyaltyWalletObjects([Lcom/google/android/gms/wallet/LoyaltyWalletObject;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWallet;->getOfferWalletObjects()[Lcom/google/android/gms/wallet/OfferWalletObject;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->setOfferWalletObjects([Lcom/google/android/gms/wallet/OfferWalletObject;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWallet;->getBuyerBillingAddress()Lcom/google/android/gms/identity/intents/model/UserAddress;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->setBuyerBillingAddress(Lcom/google/android/gms/identity/intents/model/UserAddress;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWallet;->getBuyerShippingAddress()Lcom/google/android/gms/identity/intents/model/UserAddress;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->setBuyerShippingAddress(Lcom/google/android/gms/identity/intents/model/UserAddress;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;

    #@4e
    move-result-object v0

    #@4f
    return-object v0
.end method

.method public static ng()Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/wallet/MaskedWallet;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wallet/MaskedWallet;-><init>()V

    #@5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    new-instance v1, Lcom/google/android/gms/wallet/MaskedWallet$Builder;

    #@a
    const/4 v2, 0x0

    #@b
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/wallet/MaskedWallet$Builder;-><init>(Lcom/google/android/gms/wallet/MaskedWallet;Lcom/google/android/gms/wallet/MaskedWallet$1;)V

    #@e
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getBillingAddress()Lcom/google/android/gms/wallet/Address;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiU:Lcom/google/android/gms/wallet/Address;

    #@2
    return-object v0
.end method

.method public getBuyerBillingAddress()Lcom/google/android/gms/identity/intents/model/UserAddress;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiX:Lcom/google/android/gms/identity/intents/model/UserAddress;

    #@2
    return-object v0
.end method

.method public getBuyerShippingAddress()Lcom/google/android/gms/identity/intents/model/UserAddress;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiY:Lcom/google/android/gms/identity/intents/model/UserAddress;

    #@2
    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiT:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getGoogleTransactionId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiQ:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getInstrumentInfos()[Lcom/google/android/gms/wallet/InstrumentInfo;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiZ:[Lcom/google/android/gms/wallet/InstrumentInfo;

    #@2
    return-object v0
.end method

.method public getLoyaltyWalletObjects()[Lcom/google/android/gms/wallet/LoyaltyWalletObject;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->ajC:[Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    #@2
    return-object v0
.end method

.method public getMerchantTransactionId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiR:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOfferWalletObjects()[Lcom/google/android/gms/wallet/OfferWalletObject;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->ajD:[Lcom/google/android/gms/wallet/OfferWalletObject;

    #@2
    return-object v0
.end method

.method public getPaymentDescriptions()[Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiW:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getShippingAddress()Lcom/google/android/gms/wallet/Address;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiV:Lcom/google/android/gms/wallet/Address;

    #@2
    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->xM:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/k;->a(Lcom/google/android/gms/wallet/MaskedWallet;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
