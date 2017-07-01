.class Lcom/google/android/gms/wallet/fragment/WalletFragment$a;
.super Lcom/google/android/gms/internal/ll$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/fragment/WalletFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private akx:Lcom/google/android/gms/wallet/fragment/WalletFragment$OnStateChangedListener;

.field private final aky:Lcom/google/android/gms/wallet/fragment/WalletFragment;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wallet/fragment/WalletFragment;)V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ll$a;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$a;->aky:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    #@5
    return-void
.end method


# virtual methods
.method public a(IILandroid/os/Bundle;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$a;->akx:Lcom/google/android/gms/wallet/fragment/WalletFragment$OnStateChangedListener;

    #@2
    if-eqz v0, :cond_b

    #@4
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$a;->akx:Lcom/google/android/gms/wallet/fragment/WalletFragment$OnStateChangedListener;

    #@6
    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$a;->aky:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    #@8
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/gms/wallet/fragment/WalletFragment$OnStateChangedListener;->onStateChanged(Lcom/google/android/gms/wallet/fragment/WalletFragment;IILandroid/os/Bundle;)V

    #@b
    :cond_b
    return-void
.end method

.method public a(Lcom/google/android/gms/wallet/fragment/WalletFragment$OnStateChangedListener;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$a;->akx:Lcom/google/android/gms/wallet/fragment/WalletFragment$OnStateChangedListener;

    #@2
    return-void
.end method
