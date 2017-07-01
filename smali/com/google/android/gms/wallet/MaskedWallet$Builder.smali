.class public final Lcom/google/android/gms/wallet/MaskedWallet$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/MaskedWallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field final synthetic ajE:Lcom/google/android/gms/wallet/MaskedWallet;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/MaskedWallet;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajE:Lcom/google/android/gms/wallet/MaskedWallet;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/MaskedWallet;Lcom/google/android/gms/wallet/MaskedWallet$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/MaskedWallet$Builder;-><init>(Lcom/google/android/gms/wallet/MaskedWallet;)V

    #@3
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/wallet/MaskedWallet;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajE:Lcom/google/android/gms/wallet/MaskedWallet;

    #@2
    return-object v0
.end method

.method public setBillingAddress(Lcom/google/android/gms/wallet/Address;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajE:Lcom/google/android/gms/wallet/MaskedWallet;

    #@2
    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->aiU:Lcom/google/android/gms/wallet/Address;

    #@4
    return-object p0
.end method

.method public setBuyerBillingAddress(Lcom/google/android/gms/identity/intents/model/UserAddress;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajE:Lcom/google/android/gms/wallet/MaskedWallet;

    #@2
    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->aiX:Lcom/google/android/gms/identity/intents/model/UserAddress;

    #@4
    return-object p0
.end method

.method public setBuyerShippingAddress(Lcom/google/android/gms/identity/intents/model/UserAddress;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajE:Lcom/google/android/gms/wallet/MaskedWallet;

    #@2
    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->aiY:Lcom/google/android/gms/identity/intents/model/UserAddress;

    #@4
    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajE:Lcom/google/android/gms/wallet/MaskedWallet;

    #@2
    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->aiT:Ljava/lang/String;

    #@4
    return-object p0
.end method

.method public setGoogleTransactionId(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajE:Lcom/google/android/gms/wallet/MaskedWallet;

    #@2
    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->aiQ:Ljava/lang/String;

    #@4
    return-object p0
.end method

.method public setInstrumentInfos([Lcom/google/android/gms/wallet/InstrumentInfo;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajE:Lcom/google/android/gms/wallet/MaskedWallet;

    #@2
    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->aiZ:[Lcom/google/android/gms/wallet/InstrumentInfo;

    #@4
    return-object p0
.end method

.method public setLoyaltyWalletObjects([Lcom/google/android/gms/wallet/LoyaltyWalletObject;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajE:Lcom/google/android/gms/wallet/MaskedWallet;

    #@2
    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->ajC:[Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    #@4
    return-object p0
.end method

.method public setMerchantTransactionId(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajE:Lcom/google/android/gms/wallet/MaskedWallet;

    #@2
    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->aiR:Ljava/lang/String;

    #@4
    return-object p0
.end method

.method public setOfferWalletObjects([Lcom/google/android/gms/wallet/OfferWalletObject;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajE:Lcom/google/android/gms/wallet/MaskedWallet;

    #@2
    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->ajD:[Lcom/google/android/gms/wallet/OfferWalletObject;

    #@4
    return-object p0
.end method

.method public setPaymentDescriptions([Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajE:Lcom/google/android/gms/wallet/MaskedWallet;

    #@2
    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->aiW:[Ljava/lang/String;

    #@4
    return-object p0
.end method

.method public setShippingAddress(Lcom/google/android/gms/wallet/Address;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajE:Lcom/google/android/gms/wallet/MaskedWallet;

    #@2
    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->aiV:Lcom/google/android/gms/wallet/Address;

    #@4
    return-object p0
.end method
