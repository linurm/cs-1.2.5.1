.class public final Lcom/google/android/gms/wallet/FullWalletRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/FullWalletRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/FullWalletRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field aiQ:Ljava/lang/String;

.field aiR:Ljava/lang/String;

.field aja:Lcom/google/android/gms/wallet/Cart;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/wallet/g;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wallet/g;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/wallet/FullWalletRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/google/android/gms/wallet/FullWalletRequest;->xM:I

    #@6
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/Cart;)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/wallet/FullWalletRequest;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/wallet/FullWalletRequest;->aiQ:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/wallet/FullWalletRequest;->aiR:Ljava/lang/String;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/wallet/FullWalletRequest;->aja:Lcom/google/android/gms/wallet/Cart;

    #@b
    return-void
.end method

.method public static newBuilder()Lcom/google/android/gms/wallet/FullWalletRequest$Builder;
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/wallet/FullWalletRequest;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wallet/FullWalletRequest;-><init>()V

    #@5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    new-instance v1, Lcom/google/android/gms/wallet/FullWalletRequest$Builder;

    #@a
    const/4 v2, 0x0

    #@b
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/wallet/FullWalletRequest$Builder;-><init>(Lcom/google/android/gms/wallet/FullWalletRequest;Lcom/google/android/gms/wallet/FullWalletRequest$1;)V

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

.method public getCart()Lcom/google/android/gms/wallet/Cart;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWalletRequest;->aja:Lcom/google/android/gms/wallet/Cart;

    #@2
    return-object v0
.end method

.method public getGoogleTransactionId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWalletRequest;->aiQ:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMerchantTransactionId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWalletRequest;->aiR:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/wallet/FullWalletRequest;->xM:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/g;->a(Lcom/google/android/gms/wallet/FullWalletRequest;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
