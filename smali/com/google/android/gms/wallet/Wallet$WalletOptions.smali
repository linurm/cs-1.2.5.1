.class public final Lcom/google/android/gms/wallet/Wallet$WalletOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/Wallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WalletOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;
    }
.end annotation


# instance fields
.field public final environment:I

.field public final theme:I


# direct methods
.method private constructor <init>()V
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;-><init>()V

    #@5
    invoke-direct {p0, v0}, Lcom/google/android/gms/wallet/Wallet$WalletOptions;-><init>(Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;)V

    #@8
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/Wallet$1;)V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/wallet/Wallet$WalletOptions;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-static {p1}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->a(Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;)I

    #@6
    move-result v0

    #@7
    iput v0, p0, Lcom/google/android/gms/wallet/Wallet$WalletOptions;->environment:I

    #@9
    invoke-static {p1}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->b(Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;)I

    #@c
    move-result v0

    #@d
    iput v0, p0, Lcom/google/android/gms/wallet/Wallet$WalletOptions;->theme:I

    #@f
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;Lcom/google/android/gms/wallet/Wallet$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/Wallet$WalletOptions;-><init>(Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;)V

    #@3
    return-void
.end method
