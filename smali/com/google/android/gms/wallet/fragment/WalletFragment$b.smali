.class Lcom/google/android/gms/wallet/fragment/WalletFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamic/LifecycleDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/fragment/WalletFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final akr:Lcom/google/android/gms/internal/lk;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/lk;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->akr:Lcom/google/android/gms/internal/lk;

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/lk;Lcom/google/android/gms/wallet/fragment/WalletFragment$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;-><init>(Lcom/google/android/gms/internal/lk;)V

    #@3
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragment$b;)I
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->getState()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragment$b;IILandroid/content/Intent;)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->onActivityResult(IILandroid/content/Intent;)V

    #@3
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragment$b;Lcom/google/android/gms/wallet/MaskedWallet;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->updateMaskedWallet(Lcom/google/android/gms/wallet/MaskedWallet;)V

    #@3
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragment$b;Lcom/google/android/gms/wallet/MaskedWalletRequest;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->updateMaskedWalletRequest(Lcom/google/android/gms/wallet/MaskedWalletRequest;)V

    #@3
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragment$b;Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->initialize(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)V

    #@3
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragment$b;Z)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->setEnabled(Z)V

    #@3
    return-void
.end method

.method private getState()I
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->akr:Lcom/google/android/gms/internal/lk;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/internal/lk;->getState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    #@5
    move-result v0

    #@6
    return v0

    #@7
    :catch_7
    move-exception v0

    #@8
    new-instance v1, Ljava/lang/RuntimeException;

    #@a
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@d
    throw v1
.end method

.method private initialize(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->akr:Lcom/google/android/gms/internal/lk;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/lk;->initialize(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    new-instance v1, Ljava/lang/RuntimeException;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v1
.end method

.method private onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->akr:Lcom/google/android/gms/internal/lk;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/lk;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    new-instance v1, Ljava/lang/RuntimeException;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v1
.end method

.method private setEnabled(Z)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->akr:Lcom/google/android/gms/internal/lk;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/lk;->setEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    new-instance v1, Ljava/lang/RuntimeException;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v1
.end method

.method private updateMaskedWallet(Lcom/google/android/gms/wallet/MaskedWallet;)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->akr:Lcom/google/android/gms/internal/lk;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/lk;->updateMaskedWallet(Lcom/google/android/gms/wallet/MaskedWallet;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    new-instance v1, Ljava/lang/RuntimeException;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v1
.end method

.method private updateMaskedWalletRequest(Lcom/google/android/gms/wallet/MaskedWalletRequest;)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->akr:Lcom/google/android/gms/internal/lk;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/lk;->updateMaskedWalletRequest(Lcom/google/android/gms/wallet/MaskedWalletRequest;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    new-instance v1, Ljava/lang/RuntimeException;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->akr:Lcom/google/android/gms/internal/lk;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/lk;->onCreate(Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    new-instance v1, Ljava/lang/RuntimeException;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->akr:Lcom/google/android/gms/internal/lk;

    #@2
    invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    #@5
    move-result-object v1

    #@6
    invoke-static {p2}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v0, v1, v2, p3}, Lcom/google/android/gms/internal/lk;->onCreateView(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/dynamic/d;Landroid/os/Bundle;)Lcom/google/android/gms/dynamic/d;

    #@d
    move-result-object v0

    #@e
    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/view/View;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    #@14
    return-object v0

    #@15
    :catch_15
    move-exception v0

    #@16
    new-instance v1, Ljava/lang/RuntimeException;

    #@18
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@1b
    throw v1
.end method

.method public onDestroy()V
    .registers 1

    #@0
    return-void
.end method

.method public onDestroyView()V
    .registers 1

    #@0
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 7

    #@0
    const-string v0, "extraWalletFragmentOptions"

    #@2
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    #@8
    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->akr:Lcom/google/android/gms/internal/lk;

    #@a
    invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    #@d
    move-result-object v2

    #@e
    invoke-interface {v1, v2, v0, p3}, Lcom/google/android/gms/internal/lk;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Landroid/os/Bundle;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    #@11
    return-void

    #@12
    :catch_12
    move-exception v0

    #@13
    new-instance v1, Ljava/lang/RuntimeException;

    #@15
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@18
    throw v1
.end method

.method public onLowMemory()V
    .registers 1

    #@0
    return-void
.end method

.method public onPause()V
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->akr:Lcom/google/android/gms/internal/lk;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/internal/lk;->onPause()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    new-instance v1, Ljava/lang/RuntimeException;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v1
.end method

.method public onResume()V
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->akr:Lcom/google/android/gms/internal/lk;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/internal/lk;->onResume()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    new-instance v1, Ljava/lang/RuntimeException;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->akr:Lcom/google/android/gms/internal/lk;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/lk;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    new-instance v1, Ljava/lang/RuntimeException;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v1
.end method

.method public onStart()V
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->akr:Lcom/google/android/gms/internal/lk;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/internal/lk;->onStart()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    new-instance v1, Ljava/lang/RuntimeException;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v1
.end method

.method public onStop()V
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->akr:Lcom/google/android/gms/internal/lk;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/internal/lk;->onStop()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    new-instance v1, Ljava/lang/RuntimeException;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v1
.end method
