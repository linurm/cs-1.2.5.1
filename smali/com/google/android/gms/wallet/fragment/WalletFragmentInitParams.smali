.class public final Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private akA:I

.field private akm:Lcom/google/android/gms/wallet/MaskedWalletRequest;

.field private akn:Lcom/google/android/gms/wallet/MaskedWallet;

.field final xM:I

.field private yQ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/wallet/fragment/a;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wallet/fragment/a;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->CREATOR:Landroid/os/Parcelable$Creator;

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
    iput v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->xM:I

    #@6
    const/4 v0, -0x1

    #@7
    iput v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->akA:I

    #@9
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/wallet/MaskedWalletRequest;ILcom/google/android/gms/wallet/MaskedWallet;)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->yQ:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->akm:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@9
    iput p4, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->akA:I

    #@b
    iput-object p5, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->akn:Lcom/google/android/gms/wallet/MaskedWallet;

    #@d
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;I)I
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->akA:I

    #@2
    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)Lcom/google/android/gms/wallet/MaskedWallet;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->akn:Lcom/google/android/gms/wallet/MaskedWallet;

    #@2
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;Lcom/google/android/gms/wallet/MaskedWallet;)Lcom/google/android/gms/wallet/MaskedWallet;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->akn:Lcom/google/android/gms/wallet/MaskedWallet;

    #@2
    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;Lcom/google/android/gms/wallet/MaskedWalletRequest;)Lcom/google/android/gms/wallet/MaskedWalletRequest;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->akm:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@2
    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->yQ:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)Lcom/google/android/gms/wallet/MaskedWalletRequest;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->akm:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@2
    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->akA:I

    #@2
    return v0
.end method

.method public static newBuilder()Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;-><init>()V

    #@5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    new-instance v1, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;

    #@a
    const/4 v2, 0x0

    #@b
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;-><init>(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$1;)V

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

.method public getAccountName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->yQ:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMaskedWallet()Lcom/google/android/gms/wallet/MaskedWallet;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->akn:Lcom/google/android/gms/wallet/MaskedWallet;

    #@2
    return-object v0
.end method

.method public getMaskedWalletRequest()Lcom/google/android/gms/wallet/MaskedWalletRequest;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->akm:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@2
    return-object v0
.end method

.method public getMaskedWalletRequestCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->akA:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/fragment/a;->a(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
