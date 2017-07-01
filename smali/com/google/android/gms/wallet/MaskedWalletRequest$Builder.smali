.class public final Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/MaskedWalletRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field final synthetic ajQ:Lcom/google/android/gms/wallet/MaskedWalletRequest;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/MaskedWalletRequest;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->ajQ:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/MaskedWalletRequest;Lcom/google/android/gms/wallet/MaskedWalletRequest$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;-><init>(Lcom/google/android/gms/wallet/MaskedWalletRequest;)V

    #@3
    return-void
.end method


# virtual methods
.method public addAllowedCountrySpecificationForShipping(Lcom/google/android/gms/identity/intents/model/CountrySpecification;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->ajQ:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajP:Ljava/util/ArrayList;

    #@4
    if-nez v0, :cond_f

    #@6
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->ajQ:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@8
    new-instance v1, Ljava/util/ArrayList;

    #@a
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajP:Ljava/util/ArrayList;

    #@f
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->ajQ:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@11
    iget-object v0, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajP:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16
    return-object p0
.end method

.method public addAllowedCountrySpecificationsForShipping(Ljava/util/Collection;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;)",
            "Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;"
        }
    .end annotation

    #@0
    if-eqz p1, :cond_18

    #@2
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->ajQ:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@4
    iget-object v0, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajP:Ljava/util/ArrayList;

    #@6
    if-nez v0, :cond_11

    #@8
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->ajQ:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@a
    new-instance v1, Ljava/util/ArrayList;

    #@c
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajP:Ljava/util/ArrayList;

    #@11
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->ajQ:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@13
    iget-object v0, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajP:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@18
    :cond_18
    return-object p0
.end method

.method public build()Lcom/google/android/gms/wallet/MaskedWalletRequest;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->ajQ:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@2
    return-object v0
.end method

.method public setAllowDebitCard(Z)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->ajQ:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@2
    iput-boolean p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajO:Z

    #@4
    return-object p0
.end method

.method public setAllowPrepaidCard(Z)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->ajQ:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@2
    iput-boolean p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajN:Z

    #@4
    return-object p0
.end method

.method public setCart(Lcom/google/android/gms/wallet/Cart;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->ajQ:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@2
    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->aja:Lcom/google/android/gms/wallet/Cart;

    #@4
    return-object p0
.end method

.method public setCurrencyCode(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->ajQ:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@2
    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->aiL:Ljava/lang/String;

    #@4
    return-object p0
.end method

.method public setEstimatedTotalPrice(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->ajQ:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@2
    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajI:Ljava/lang/String;

    #@4
    return-object p0
.end method

.method public setIsBillingAgreement(Z)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->ajQ:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@2
    iput-boolean p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajL:Z

    #@4
    return-object p0
.end method

.method public setMerchantName(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->ajQ:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@2
    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajJ:Ljava/lang/String;

    #@4
    return-object p0
.end method

.method public setMerchantTransactionId(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->ajQ:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@2
    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->aiR:Ljava/lang/String;

    #@4
    return-object p0
.end method

.method public setPhoneNumberRequired(Z)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->ajQ:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@2
    iput-boolean p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajF:Z

    #@4
    return-object p0
.end method

.method public setShippingAddressRequired(Z)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->ajQ:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@2
    iput-boolean p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajG:Z

    #@4
    return-object p0
.end method

.method public setShouldRetrieveWalletObjects(Z)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->ajQ:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@2
    iput-boolean p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajK:Z

    #@4
    return-object p0
.end method

.method public setUseMinimalBillingAddress(Z)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->ajQ:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@2
    iput-boolean p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajH:Z

    #@4
    return-object p0
.end method
