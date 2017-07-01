.class public final Lcom/google/android/gms/wallet/FullWallet;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/FullWallet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field aiQ:Ljava/lang/String;

.field aiR:Ljava/lang/String;

.field aiS:Lcom/google/android/gms/wallet/ProxyCard;

.field aiT:Ljava/lang/String;

.field aiU:Lcom/google/android/gms/wallet/Address;

.field aiV:Lcom/google/android/gms/wallet/Address;

.field aiW:[Ljava/lang/String;

.field aiX:Lcom/google/android/gms/identity/intents/model/UserAddress;

.field aiY:Lcom/google/android/gms/identity/intents/model/UserAddress;

.field aiZ:[Lcom/google/android/gms/wallet/InstrumentInfo;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/wallet/f;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wallet/f;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/wallet/FullWallet;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/google/android/gms/wallet/FullWallet;->xM:I

    #@6
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/ProxyCard;Ljava/lang/String;Lcom/google/android/gms/wallet/Address;Lcom/google/android/gms/wallet/Address;[Ljava/lang/String;Lcom/google/android/gms/identity/intents/model/UserAddress;Lcom/google/android/gms/identity/intents/model/UserAddress;[Lcom/google/android/gms/wallet/InstrumentInfo;)V
    .registers 12

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/wallet/FullWallet;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/wallet/FullWallet;->aiQ:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/wallet/FullWallet;->aiR:Ljava/lang/String;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/wallet/FullWallet;->aiS:Lcom/google/android/gms/wallet/ProxyCard;

    #@b
    iput-object p5, p0, Lcom/google/android/gms/wallet/FullWallet;->aiT:Ljava/lang/String;

    #@d
    iput-object p6, p0, Lcom/google/android/gms/wallet/FullWallet;->aiU:Lcom/google/android/gms/wallet/Address;

    #@f
    iput-object p7, p0, Lcom/google/android/gms/wallet/FullWallet;->aiV:Lcom/google/android/gms/wallet/Address;

    #@11
    iput-object p8, p0, Lcom/google/android/gms/wallet/FullWallet;->aiW:[Ljava/lang/String;

    #@13
    iput-object p9, p0, Lcom/google/android/gms/wallet/FullWallet;->aiX:Lcom/google/android/gms/identity/intents/model/UserAddress;

    #@15
    iput-object p10, p0, Lcom/google/android/gms/wallet/FullWallet;->aiY:Lcom/google/android/gms/identity/intents/model/UserAddress;

    #@17
    iput-object p11, p0, Lcom/google/android/gms/wallet/FullWallet;->aiZ:[Lcom/google/android/gms/wallet/InstrumentInfo;

    #@19
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

.method public getBillingAddress()Lcom/google/android/gms/wallet/Address;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->aiU:Lcom/google/android/gms/wallet/Address;

    #@2
    return-object v0
.end method

.method public getBuyerBillingAddress()Lcom/google/android/gms/identity/intents/model/UserAddress;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->aiX:Lcom/google/android/gms/identity/intents/model/UserAddress;

    #@2
    return-object v0
.end method

.method public getBuyerShippingAddress()Lcom/google/android/gms/identity/intents/model/UserAddress;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->aiY:Lcom/google/android/gms/identity/intents/model/UserAddress;

    #@2
    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->aiT:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getGoogleTransactionId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->aiQ:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getInstrumentInfos()[Lcom/google/android/gms/wallet/InstrumentInfo;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->aiZ:[Lcom/google/android/gms/wallet/InstrumentInfo;

    #@2
    return-object v0
.end method

.method public getMerchantTransactionId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->aiR:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPaymentDescriptions()[Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->aiW:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getProxyCard()Lcom/google/android/gms/wallet/ProxyCard;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->aiS:Lcom/google/android/gms/wallet/ProxyCard;

    #@2
    return-object v0
.end method

.method public getShippingAddress()Lcom/google/android/gms/wallet/Address;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->aiV:Lcom/google/android/gms/wallet/Address;

    #@2
    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/wallet/FullWallet;->xM:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/f;->a(Lcom/google/android/gms/wallet/FullWallet;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
