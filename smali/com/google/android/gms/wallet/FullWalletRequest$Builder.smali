.class public final Lcom/google/android/gms/wallet/FullWalletRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/FullWalletRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field final synthetic ajb:Lcom/google/android/gms/wallet/FullWalletRequest;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/FullWalletRequest;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/wallet/FullWalletRequest$Builder;->ajb:Lcom/google/android/gms/wallet/FullWalletRequest;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/FullWalletRequest;Lcom/google/android/gms/wallet/FullWalletRequest$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/FullWalletRequest$Builder;-><init>(Lcom/google/android/gms/wallet/FullWalletRequest;)V

    #@3
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/wallet/FullWalletRequest;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWalletRequest$Builder;->ajb:Lcom/google/android/gms/wallet/FullWalletRequest;

    #@2
    return-object v0
.end method

.method public setCart(Lcom/google/android/gms/wallet/Cart;)Lcom/google/android/gms/wallet/FullWalletRequest$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWalletRequest$Builder;->ajb:Lcom/google/android/gms/wallet/FullWalletRequest;

    #@2
    iput-object p1, v0, Lcom/google/android/gms/wallet/FullWalletRequest;->aja:Lcom/google/android/gms/wallet/Cart;

    #@4
    return-object p0
.end method

.method public setGoogleTransactionId(Ljava/lang/String;)Lcom/google/android/gms/wallet/FullWalletRequest$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWalletRequest$Builder;->ajb:Lcom/google/android/gms/wallet/FullWalletRequest;

    #@2
    iput-object p1, v0, Lcom/google/android/gms/wallet/FullWalletRequest;->aiQ:Ljava/lang/String;

    #@4
    return-object p0
.end method

.method public setMerchantTransactionId(Ljava/lang/String;)Lcom/google/android/gms/wallet/FullWalletRequest$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWalletRequest$Builder;->ajb:Lcom/google/android/gms/wallet/FullWalletRequest;

    #@2
    iput-object p1, v0, Lcom/google/android/gms/wallet/FullWalletRequest;->aiR:Ljava/lang/String;

    #@4
    return-object p0
.end method
