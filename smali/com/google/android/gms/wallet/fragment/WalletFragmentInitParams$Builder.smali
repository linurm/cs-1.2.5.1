.class public final Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field final synthetic akB:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;->akB:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;-><init>(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)V

    #@3
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;
    .registers 5

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;->akB:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    #@4
    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->a(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)Lcom/google/android/gms/wallet/MaskedWallet;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_12

    #@a
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;->akB:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    #@c
    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->b(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@f
    move-result-object v0

    #@10
    if-eqz v0, :cond_22

    #@12
    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;->akB:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    #@14
    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->a(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)Lcom/google/android/gms/wallet/MaskedWallet;

    #@17
    move-result-object v0

    #@18
    if-nez v0, :cond_38

    #@1a
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;->akB:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    #@1c
    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->b(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@1f
    move-result-object v0

    #@20
    if-eqz v0, :cond_38

    #@22
    :cond_22
    move v0, v2

    #@23
    :goto_23
    const-string v3, "Exactly one of MaskedWallet or MaskedWalletRequest is required"

    #@25
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@28
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;->akB:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    #@2a
    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->c(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)I

    #@2d
    move-result v0

    #@2e
    if-ltz v0, :cond_3a

    #@30
    :goto_30
    const-string v0, "masked wallet request code is required and must be non-negative"

    #@32
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@35
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;->akB:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    #@37
    return-object v0

    #@38
    :cond_38
    move v0, v1

    #@39
    goto :goto_23

    #@3a
    :cond_3a
    move v2, v1

    #@3b
    goto :goto_30
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;->akB:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    #@2
    invoke-static {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->a(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;Ljava/lang/String;)Ljava/lang/String;

    #@5
    return-object p0
.end method

.method public setMaskedWallet(Lcom/google/android/gms/wallet/MaskedWallet;)Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;->akB:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    #@2
    invoke-static {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->a(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;Lcom/google/android/gms/wallet/MaskedWallet;)Lcom/google/android/gms/wallet/MaskedWallet;

    #@5
    return-object p0
.end method

.method public setMaskedWalletRequest(Lcom/google/android/gms/wallet/MaskedWalletRequest;)Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;->akB:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    #@2
    invoke-static {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->a(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;Lcom/google/android/gms/wallet/MaskedWalletRequest;)Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@5
    return-object p0
.end method

.method public setMaskedWalletRequestCode(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;->akB:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    #@2
    invoke-static {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->a(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;I)I

    #@5
    return-object p0
.end method
