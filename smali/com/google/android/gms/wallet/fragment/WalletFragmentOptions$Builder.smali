.class public final Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field final synthetic akD:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;->akD:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;-><init>(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;)V

    #@3
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;->akD:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    #@2
    return-object v0
.end method

.method public setEnvironment(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;->akD:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    #@2
    invoke-static {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->a(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;I)I

    #@5
    return-object p0
.end method

.method public setFragmentStyle(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;->akD:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    #@2
    new-instance v1, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    #@4
    invoke-direct {v1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;-><init>()V

    #@7
    invoke-virtual {v1, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->setStyleResourceId(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    #@a
    move-result-object v1

    #@b
    invoke-static {v0, v1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->a(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    #@e
    return-object p0
.end method

.method public setFragmentStyle(Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;->akD:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    #@2
    invoke-static {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->a(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    #@5
    return-object p0
.end method

.method public setMode(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;->akD:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    #@2
    invoke-static {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->c(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;I)I

    #@5
    return-object p0
.end method

.method public setTheme(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;->akD:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    #@2
    invoke-static {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->b(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;I)I

    #@5
    return-object p0
.end method
