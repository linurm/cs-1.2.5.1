.class Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$c;
.super Lcom/google/android/gms/dynamic/a;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/a",
        "<",
        "Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field final synthetic aks:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$c;->aks:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    #@2
    invoke-direct {p0}, Lcom/google/android/gms/dynamic/a;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$c;-><init>(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;)V

    #@3
    return-void
.end method


# virtual methods
.method protected a(Landroid/widget/FrameLayout;)V
    .registers 8

    #@0
    const/4 v1, -0x1

    #@1
    const/4 v0, -0x2

    #@2
    new-instance v2, Landroid/widget/Button;

    #@4
    iget-object v3, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$c;->aks:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    #@6
    invoke-static {v3}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;->a(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;)Landroid/support/v4/app/Fragment;

    #@9
    move-result-object v3

    #@a
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@d
    move-result-object v3

    #@e
    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    #@11
    sget v3, Lcom/google/android/gms/R$string;->wallet_buy_button_place_holder:I

    #@13
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    #@16
    iget-object v3, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$c;->aks:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    #@18
    invoke-static {v3}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;->e(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    #@1b
    move-result-object v3

    #@1c
    if-eqz v3, :cond_44

    #@1e
    iget-object v3, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$c;->aks:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    #@20
    invoke-static {v3}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;->e(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->getFragmentStyle()Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    #@27
    move-result-object v3

    #@28
    if-eqz v3, :cond_44

    #@2a
    iget-object v4, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$c;->aks:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    #@2c
    invoke-static {v4}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;->a(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;)Landroid/support/v4/app/Fragment;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@37
    move-result-object v4

    #@38
    const-string v5, "buyButtonWidth"

    #@3a
    invoke-virtual {v3, v5, v4, v1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->a(Ljava/lang/String;Landroid/util/DisplayMetrics;I)I

    #@3d
    move-result v1

    #@3e
    const-string v5, "buyButtonHeight"

    #@40
    invoke-virtual {v3, v5, v4, v0}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->a(Ljava/lang/String;Landroid/util/DisplayMetrics;I)I

    #@43
    move-result v0

    #@44
    :cond_44
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    #@46
    invoke-direct {v3, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@49
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@4c
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@4f
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    #@52
    return-void
.end method

.method protected a(Lcom/google/android/gms/dynamic/f;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamic/f",
            "<",
            "Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;",
            ">;)V"
        }
    .end annotation

    #@0
    const/4 v4, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$c;->aks:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    #@3
    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;->a(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;)Landroid/support/v4/app/Fragment;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@a
    move-result-object v0

    #@b
    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$c;->aks:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    #@d
    invoke-static {v1}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;->b(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;)Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;

    #@10
    move-result-object v1

    #@11
    if-nez v1, :cond_c1

    #@13
    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$c;->aks:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    #@15
    invoke-static {v1}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;->c(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_c1

    #@1b
    if-eqz v0, :cond_c1

    #@1d
    :try_start_1d
    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$c;->aks:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    #@1f
    invoke-static {v1}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;->d(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;)Lcom/google/android/gms/dynamic/h;

    #@22
    move-result-object v1

    #@23
    iget-object v2, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$c;->aks:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    #@25
    invoke-static {v2}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;->e(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    #@28
    move-result-object v2

    #@29
    iget-object v3, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$c;->aks:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    #@2b
    invoke-static {v3}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;->f(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;)Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$a;

    #@2e
    move-result-object v3

    #@2f
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ls;->a(Landroid/app/Activity;Lcom/google/android/gms/dynamic/c;Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Lcom/google/android/gms/internal/ll;)Lcom/google/android/gms/internal/lk;

    #@32
    move-result-object v0

    #@33
    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$c;->aks:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    #@35
    new-instance v2, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;

    #@37
    const/4 v3, 0x0

    #@38
    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;-><init>(Lcom/google/android/gms/internal/lk;Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$1;)V

    #@3b
    invoke-static {v1, v2}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;->a(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;)Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;

    #@3e
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$c;->aks:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    #@40
    const/4 v1, 0x0

    #@41
    invoke-static {v0, v1}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;->a(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;
    :try_end_44
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_1d .. :try_end_44} :catch_c2

    #@44
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$c;->aks:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    #@46
    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;->b(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;)Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;

    #@49
    move-result-object v0

    #@4a
    invoke-interface {p1, v0}, Lcom/google/android/gms/dynamic/f;->a(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V

    #@4d
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$c;->aks:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    #@4f
    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;->g(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;)Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    #@52
    move-result-object v0

    #@53
    if-eqz v0, :cond_69

    #@55
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$c;->aks:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    #@57
    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;->b(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;)Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;

    #@5a
    move-result-object v0

    #@5b
    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$c;->aks:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    #@5d
    invoke-static {v1}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;->g(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;)Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    #@60
    move-result-object v1

    #@61
    invoke-static {v0, v1}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;->a(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)V

    #@64
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$c;->aks:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    #@66
    invoke-static {v0, v4}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;->a(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    #@69
    :cond_69
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$c;->aks:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    #@6b
    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;->h(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;)Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@6e
    move-result-object v0

    #@6f
    if-eqz v0, :cond_85

    #@71
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$c;->aks:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    #@73
    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;->b(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;)Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;

    #@76
    move-result-object v0

    #@77
    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$c;->aks:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    #@79
    invoke-static {v1}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;->h(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;)Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@7c
    move-result-object v1

    #@7d
    invoke-static {v0, v1}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;->a(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;Lcom/google/android/gms/wallet/MaskedWalletRequest;)V

    #@80
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$c;->aks:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    #@82
    invoke-static {v0, v4}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;->a(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;Lcom/google/android/gms/wallet/MaskedWalletRequest;)Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@85
    :cond_85
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$c;->aks:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    #@87
    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;->i(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;)Lcom/google/android/gms/wallet/MaskedWallet;

    #@8a
    move-result-object v0

    #@8b
    if-eqz v0, :cond_a1

    #@8d
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$c;->aks:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    #@8f
    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;->b(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;)Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;

    #@92
    move-result-object v0

    #@93
    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$c;->aks:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    #@95
    invoke-static {v1}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;->i(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;)Lcom/google/android/gms/wallet/MaskedWallet;

    #@98
    move-result-object v1

    #@99
    invoke-static {v0, v1}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;->a(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;Lcom/google/android/gms/wallet/MaskedWallet;)V

    #@9c
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$c;->aks:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    #@9e
    invoke-static {v0, v4}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;->a(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;Lcom/google/android/gms/wallet/MaskedWallet;)Lcom/google/android/gms/wallet/MaskedWallet;

    #@a1
    :cond_a1
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$c;->aks:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    #@a3
    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;->j(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;)Ljava/lang/Boolean;

    #@a6
    move-result-object v0

    #@a7
    if-eqz v0, :cond_c1

    #@a9
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$c;->aks:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    #@ab
    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;->b(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;)Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;

    #@ae
    move-result-object v0

    #@af
    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$c;->aks:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    #@b1
    invoke-static {v1}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;->j(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;)Ljava/lang/Boolean;

    #@b4
    move-result-object v1

    #@b5
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@b8
    move-result v1

    #@b9
    invoke-static {v0, v1}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;->a(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;Z)V

    #@bc
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$c;->aks:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    #@be
    invoke-static {v0, v4}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;->a(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    #@c1
    :cond_c1
    :goto_c1
    return-void

    #@c2
    :catch_c2
    move-exception v0

    #@c3
    goto :goto_c1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$c;->aks:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;->a(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;)Landroid/support/v4/app/Fragment;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@9
    move-result-object v0

    #@a
    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    #@d
    move-result v1

    #@e
    const/4 v2, -0x1

    #@f
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->showErrorDialogFragment(ILandroid/app/Activity;I)Z

    #@12
    return-void
.end method
