.class public final Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/Wallet$WalletOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private akb:I

.field private mTheme:I


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    iput v0, p0, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->akb:I

    #@6
    iput v0, p0, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->mTheme:I

    #@8
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->akb:I

    #@2
    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->mTheme:I

    #@2
    return v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/wallet/Wallet$WalletOptions;
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/wallet/Wallet$WalletOptions;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/wallet/Wallet$WalletOptions;-><init>(Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;Lcom/google/android/gms/wallet/Wallet$1;)V

    #@6
    return-object v0
.end method

.method public setEnvironment(I)Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;
    .registers 8

    #@0
    const/4 v3, 0x1

    #@1
    if-eqz p1, :cond_8

    #@3
    const/4 v0, 0x2

    #@4
    if-eq p1, v0, :cond_8

    #@6
    if-ne p1, v3, :cond_b

    #@8
    :cond_8
    iput p1, p0, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->akb:I

    #@a
    return-object p0

    #@b
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@f
    const-string v2, "Invalid environment value %d"

    #@11
    new-array v3, v3, [Ljava/lang/Object;

    #@13
    const/4 v4, 0x0

    #@14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v5

    #@18
    aput-object v5, v3, v4

    #@1a
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0
.end method

.method public setTheme(I)Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;
    .registers 8

    #@0
    const/4 v3, 0x1

    #@1
    if-eqz p1, :cond_5

    #@3
    if-ne p1, v3, :cond_8

    #@5
    :cond_5
    iput p1, p0, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->mTheme:I

    #@7
    return-object p0

    #@8
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@c
    const-string v2, "Invalid theme value %d"

    #@e
    new-array v3, v3, [Ljava/lang/Object;

    #@10
    const/4 v4, 0x0

    #@11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v5

    #@15
    aput-object v5, v3, v4

    #@17
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0
.end method
