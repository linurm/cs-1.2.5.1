.class public final Lcom/google/android/gms/wallet/fragment/WalletFragment;
.super Landroid/app/Fragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/fragment/WalletFragment$OnStateChangedListener;,
        Lcom/google/android/gms/wallet/fragment/WalletFragment$a;,
        Lcom/google/android/gms/wallet/fragment/WalletFragment$b;,
        Lcom/google/android/gms/wallet/fragment/WalletFragment$c;
    }
.end annotation


# instance fields
.field private final Mj:Landroid/app/Fragment;

.field private akk:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

.field private akl:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

.field private akm:Lcom/google/android/gms/wallet/MaskedWalletRequest;

.field private akn:Lcom/google/android/gms/wallet/MaskedWallet;

.field private ako:Ljava/lang/Boolean;

.field private akt:Lcom/google/android/gms/wallet/fragment/WalletFragment$b;

.field private final aku:Lcom/google/android/gms/dynamic/b;

.field private final akv:Lcom/google/android/gms/wallet/fragment/WalletFragment$c;

.field private akw:Lcom/google/android/gms/wallet/fragment/WalletFragment$a;

.field private mCreated:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->mCreated:Z

    #@6
    invoke-static {p0}, Lcom/google/android/gms/dynamic/b;->a(Landroid/app/Fragment;)Lcom/google/android/gms/dynamic/b;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->aku:Lcom/google/android/gms/dynamic/b;

    #@c
    new-instance v0, Lcom/google/android/gms/wallet/fragment/WalletFragment$c;

    #@e
    const/4 v1, 0x0

    #@f
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/wallet/fragment/WalletFragment$c;-><init>(Lcom/google/android/gms/wallet/fragment/WalletFragment;Lcom/google/android/gms/wallet/fragment/WalletFragment$1;)V

    #@12
    iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akv:Lcom/google/android/gms/wallet/fragment/WalletFragment$c;

    #@14
    new-instance v0, Lcom/google/android/gms/wallet/fragment/WalletFragment$a;

    #@16
    invoke-direct {v0, p0}, Lcom/google/android/gms/wallet/fragment/WalletFragment$a;-><init>(Lcom/google/android/gms/wallet/fragment/WalletFragment;)V

    #@19
    iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akw:Lcom/google/android/gms/wallet/fragment/WalletFragment$a;

    #@1b
    iput-object p0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->Mj:Landroid/app/Fragment;

    #@1d
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Landroid/app/Fragment;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->Mj:Landroid/app/Fragment;

    #@2
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragment;Lcom/google/android/gms/wallet/MaskedWallet;)Lcom/google/android/gms/wallet/MaskedWallet;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akn:Lcom/google/android/gms/wallet/MaskedWallet;

    #@2
    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragment;Lcom/google/android/gms/wallet/MaskedWalletRequest;)Lcom/google/android/gms/wallet/MaskedWalletRequest;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akm:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@2
    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragment;Lcom/google/android/gms/wallet/fragment/WalletFragment$b;)Lcom/google/android/gms/wallet/fragment/WalletFragment$b;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akt:Lcom/google/android/gms/wallet/fragment/WalletFragment$b;

    #@2
    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragment;Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akl:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    #@2
    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragment;Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akk:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    #@2
    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->ako:Ljava/lang/Boolean;

    #@2
    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Lcom/google/android/gms/wallet/fragment/WalletFragment$b;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akt:Lcom/google/android/gms/wallet/fragment/WalletFragment$b;

    #@2
    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->mCreated:Z

    #@2
    return v0
.end method

.method static synthetic d(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Lcom/google/android/gms/dynamic/b;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->aku:Lcom/google/android/gms/dynamic/b;

    #@2
    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akk:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    #@2
    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Lcom/google/android/gms/wallet/fragment/WalletFragment$a;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akw:Lcom/google/android/gms/wallet/fragment/WalletFragment$a;

    #@2
    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akl:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    #@2
    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Lcom/google/android/gms/wallet/MaskedWalletRequest;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akm:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@2
    return-object v0
.end method

.method static synthetic i(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Lcom/google/android/gms/wallet/MaskedWallet;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akn:Lcom/google/android/gms/wallet/MaskedWallet;

    #@2
    return-object v0
.end method

.method static synthetic j(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Ljava/lang/Boolean;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->ako:Ljava/lang/Boolean;

    #@2
    return-object v0
.end method

.method public static newInstance(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;)Lcom/google/android/gms/wallet/fragment/WalletFragment;
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/wallet/fragment/WalletFragment;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragment;-><init>()V

    #@5
    new-instance v1, Landroid/os/Bundle;

    #@7
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@a
    const-string v2, "extraWalletFragmentOptions"

    #@c
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@f
    iget-object v2, v0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->Mj:Landroid/app/Fragment;

    #@11
    invoke-virtual {v2, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    #@14
    return-object v0
.end method


# virtual methods
.method public getState()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akt:Lcom/google/android/gms/wallet/fragment/WalletFragment$b;

    #@2
    if-eqz v0, :cond_b

    #@4
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akt:Lcom/google/android/gms/wallet/fragment/WalletFragment$b;

    #@6
    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->a(Lcom/google/android/gms/wallet/fragment/WalletFragment$b;)I

    #@9
    move-result v0

    #@a
    :goto_a
    return v0

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    goto :goto_a
.end method

.method public initialize(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akt:Lcom/google/android/gms/wallet/fragment/WalletFragment$b;

    #@2
    if-eqz v0, :cond_d

    #@4
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akt:Lcom/google/android/gms/wallet/fragment/WalletFragment$b;

    #@6
    invoke-static {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->a(Lcom/google/android/gms/wallet/fragment/WalletFragment$b;Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)V

    #@9
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akl:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    #@c
    :cond_c
    :goto_c
    return-void

    #@d
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akl:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    #@f
    if-nez v0, :cond_2a

    #@11
    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akl:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    #@13
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akm:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@15
    if-eqz v0, :cond_1e

    #@17
    const-string v0, "WalletFragment"

    #@19
    const-string v1, "updateMaskedWalletRequest() was called before initialize()"

    #@1b
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akn:Lcom/google/android/gms/wallet/MaskedWallet;

    #@20
    if-eqz v0, :cond_c

    #@22
    const-string v0, "WalletFragment"

    #@24
    const-string v1, "updateMaskedWallet() was called before initialize()"

    #@26
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    goto :goto_c

    #@2a
    :cond_2a
    const-string v0, "WalletFragment"

    #@2c
    const-string v1, "initialize(WalletFragmentInitParams) was called more than once. Ignoring."

    #@2e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    goto :goto_c
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    #@0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akt:Lcom/google/android/gms/wallet/fragment/WalletFragment$b;

    #@5
    if-eqz v0, :cond_c

    #@7
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akt:Lcom/google/android/gms/wallet/fragment/WalletFragment$b;

    #@9
    invoke-static {v0, p1, p2, p3}, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->a(Lcom/google/android/gms/wallet/fragment/WalletFragment$b;IILandroid/content/Intent;)V

    #@c
    :cond_c
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    #@0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    #@3
    if-eqz p1, :cond_70

    #@5
    const-class v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    #@7
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@e
    const-string v0, "walletFragmentInitParams"

    #@10
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    #@16
    if-eqz v0, :cond_25

    #@18
    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akl:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    #@1a
    if-eqz v1, :cond_23

    #@1c
    const-string v1, "WalletFragment"

    #@1e
    const-string v2, "initialize(WalletFragmentInitParams) was called more than once.Ignoring."

    #@20
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    :cond_23
    iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akl:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    #@25
    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akm:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@27
    if-nez v0, :cond_33

    #@29
    const-string v0, "maskedWalletRequest"

    #@2b
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@31
    iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akm:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@33
    :cond_33
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akn:Lcom/google/android/gms/wallet/MaskedWallet;

    #@35
    if-nez v0, :cond_41

    #@37
    const-string v0, "maskedWallet"

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@3c
    move-result-object v0

    #@3d
    check-cast v0, Lcom/google/android/gms/wallet/MaskedWallet;

    #@3f
    iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akn:Lcom/google/android/gms/wallet/MaskedWallet;

    #@41
    :cond_41
    const-string v0, "walletFragmentOptions"

    #@43
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@46
    move-result v0

    #@47
    if-eqz v0, :cond_53

    #@49
    const-string v0, "walletFragmentOptions"

    #@4b
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@4e
    move-result-object v0

    #@4f
    check-cast v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    #@51
    iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akk:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    #@53
    :cond_53
    const-string v0, "enabled"

    #@55
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@58
    move-result v0

    #@59
    if-eqz v0, :cond_67

    #@5b
    const-string v0, "enabled"

    #@5d
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@60
    move-result v0

    #@61
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@64
    move-result-object v0

    #@65
    iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->ako:Ljava/lang/Boolean;

    #@67
    :cond_67
    :goto_67
    const/4 v0, 0x1

    #@68
    iput-boolean v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->mCreated:Z

    #@6a
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akv:Lcom/google/android/gms/wallet/fragment/WalletFragment$c;

    #@6c
    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragment$c;->onCreate(Landroid/os/Bundle;)V

    #@6f
    return-void

    #@70
    :cond_70
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->Mj:Landroid/app/Fragment;

    #@72
    invoke-virtual {v0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    #@75
    move-result-object v0

    #@76
    if-eqz v0, :cond_67

    #@78
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->Mj:Landroid/app/Fragment;

    #@7a
    invoke-virtual {v0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    #@7d
    move-result-object v0

    #@7e
    const-string v1, "extraWalletFragmentOptions"

    #@80
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@83
    move-result-object v0

    #@84
    check-cast v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    #@86
    if-eqz v0, :cond_67

    #@88
    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->Mj:Landroid/app/Fragment;

    #@8a
    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    #@8d
    move-result-object v1

    #@8e
    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->Q(Landroid/content/Context;)V

    #@91
    iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akk:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    #@93
    goto :goto_67
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akv:Lcom/google/android/gms/wallet/fragment/WalletFragment$c;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/wallet/fragment/WalletFragment$c;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    #@0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    #@3
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->mCreated:Z

    #@6
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 7

    #@0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akk:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    #@5
    if-nez v0, :cond_d

    #@7
    invoke-static {p1, p2}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akk:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    #@d
    :cond_d
    new-instance v0, Landroid/os/Bundle;

    #@f
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@12
    const-string v1, "attrKeyWalletFragmentOptions"

    #@14
    iget-object v2, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akk:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    #@16
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@19
    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akv:Lcom/google/android/gms/wallet/fragment/WalletFragment$c;

    #@1b
    invoke-virtual {v1, p1, v0, p3}, Lcom/google/android/gms/wallet/fragment/WalletFragment$c;->onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    #@1e
    return-void
.end method

.method public onPause()V
    .registers 2

    #@0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akv:Lcom/google/android/gms/wallet/fragment/WalletFragment$c;

    #@5
    invoke-virtual {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragment$c;->onPause()V

    #@8
    return-void
.end method

.method public onResume()V
    .registers 4

    #@0
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akv:Lcom/google/android/gms/wallet/fragment/WalletFragment$c;

    #@5
    invoke-virtual {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragment$c;->onResume()V

    #@8
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->Mj:Landroid/app/Fragment;

    #@a
    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    #@11
    move-result-object v0

    #@12
    const-string v1, "GooglePlayServicesErrorDialog"

    #@14
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    #@17
    move-result-object v1

    #@18
    if-eqz v1, :cond_39

    #@1a
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    #@25
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->Mj:Landroid/app/Fragment;

    #@27
    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    #@2a
    move-result-object v0

    #@2b
    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    #@2e
    move-result v0

    #@2f
    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->Mj:Landroid/app/Fragment;

    #@31
    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    #@34
    move-result-object v1

    #@35
    const/4 v2, -0x1

    #@36
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->showErrorDialogFragment(ILandroid/app/Activity;I)Z

    #@39
    :cond_39
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    #@0
    const/4 v2, 0x0

    #@1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@4
    const-class v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    #@6
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akv:Lcom/google/android/gms/wallet/fragment/WalletFragment$c;

    #@f
    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragment$c;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@12
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akl:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    #@14
    if-eqz v0, :cond_1f

    #@16
    const-string v0, "walletFragmentInitParams"

    #@18
    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akl:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    #@1a
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@1d
    iput-object v2, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akl:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    #@1f
    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akm:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@21
    if-eqz v0, :cond_2c

    #@23
    const-string v0, "maskedWalletRequest"

    #@25
    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akm:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@27
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@2a
    iput-object v2, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akm:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@2c
    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akn:Lcom/google/android/gms/wallet/MaskedWallet;

    #@2e
    if-eqz v0, :cond_39

    #@30
    const-string v0, "maskedWallet"

    #@32
    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akn:Lcom/google/android/gms/wallet/MaskedWallet;

    #@34
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@37
    iput-object v2, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akn:Lcom/google/android/gms/wallet/MaskedWallet;

    #@39
    :cond_39
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akk:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    #@3b
    if-eqz v0, :cond_46

    #@3d
    const-string v0, "walletFragmentOptions"

    #@3f
    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akk:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    #@41
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@44
    iput-object v2, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akk:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    #@46
    :cond_46
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->ako:Ljava/lang/Boolean;

    #@48
    if-eqz v0, :cond_57

    #@4a
    const-string v0, "enabled"

    #@4c
    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->ako:Ljava/lang/Boolean;

    #@4e
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@51
    move-result v1

    #@52
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@55
    iput-object v2, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->ako:Ljava/lang/Boolean;

    #@57
    :cond_57
    return-void
.end method

.method public onStart()V
    .registers 2

    #@0
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akv:Lcom/google/android/gms/wallet/fragment/WalletFragment$c;

    #@5
    invoke-virtual {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragment$c;->onStart()V

    #@8
    return-void
.end method

.method public onStop()V
    .registers 2

    #@0
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akv:Lcom/google/android/gms/wallet/fragment/WalletFragment$c;

    #@5
    invoke-virtual {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragment$c;->onStop()V

    #@8
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akt:Lcom/google/android/gms/wallet/fragment/WalletFragment$b;

    #@2
    if-eqz v0, :cond_d

    #@4
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akt:Lcom/google/android/gms/wallet/fragment/WalletFragment$b;

    #@6
    invoke-static {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->a(Lcom/google/android/gms/wallet/fragment/WalletFragment$b;Z)V

    #@9
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->ako:Ljava/lang/Boolean;

    #@c
    :goto_c
    return-void

    #@d
    :cond_d
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->ako:Ljava/lang/Boolean;

    #@13
    goto :goto_c
.end method

.method public setOnStateChangedListener(Lcom/google/android/gms/wallet/fragment/WalletFragment$OnStateChangedListener;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akw:Lcom/google/android/gms/wallet/fragment/WalletFragment$a;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragment$a;->a(Lcom/google/android/gms/wallet/fragment/WalletFragment$OnStateChangedListener;)V

    #@5
    return-void
.end method

.method public updateMaskedWallet(Lcom/google/android/gms/wallet/MaskedWallet;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akt:Lcom/google/android/gms/wallet/fragment/WalletFragment$b;

    #@2
    if-eqz v0, :cond_d

    #@4
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akt:Lcom/google/android/gms/wallet/fragment/WalletFragment$b;

    #@6
    invoke-static {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->a(Lcom/google/android/gms/wallet/fragment/WalletFragment$b;Lcom/google/android/gms/wallet/MaskedWallet;)V

    #@9
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akn:Lcom/google/android/gms/wallet/MaskedWallet;

    #@c
    :goto_c
    return-void

    #@d
    :cond_d
    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akn:Lcom/google/android/gms/wallet/MaskedWallet;

    #@f
    goto :goto_c
.end method

.method public updateMaskedWalletRequest(Lcom/google/android/gms/wallet/MaskedWalletRequest;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akt:Lcom/google/android/gms/wallet/fragment/WalletFragment$b;

    #@2
    if-eqz v0, :cond_d

    #@4
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akt:Lcom/google/android/gms/wallet/fragment/WalletFragment$b;

    #@6
    invoke-static {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->a(Lcom/google/android/gms/wallet/fragment/WalletFragment$b;Lcom/google/android/gms/wallet/MaskedWalletRequest;)V

    #@9
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akm:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@c
    :goto_c
    return-void

    #@d
    :cond_d
    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akm:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@f
    goto :goto_c
.end method
