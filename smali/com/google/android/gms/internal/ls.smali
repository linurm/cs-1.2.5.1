.class public Lcom/google/android/gms/internal/ls;
.super Lcom/google/android/gms/dynamic/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/g",
        "<",
        "Lcom/google/android/gms/internal/ln;",
        ">;"
    }
.end annotation


# static fields
.field private static akN:Lcom/google/android/gms/internal/ls;


# direct methods
.method protected constructor <init>()V
    .registers 2

    #@0
    const-string v0, "com.google.android.gms.wallet.dynamite.WalletDynamiteCreatorImpl"

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/g;-><init>(Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/google/android/gms/dynamic/c;Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Lcom/google/android/gms/internal/ll;)Lcom/google/android/gms/internal/lk;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
        }
    .end annotation

    #@0
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_c

    #@6
    new-instance v1, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    #@8
    invoke-direct {v1, v0}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    #@b
    throw v1

    #@c
    :cond_c
    :try_start_c
    invoke-static {}, Lcom/google/android/gms/internal/ls;->nj()Lcom/google/android/gms/internal/ls;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ls;->G(Landroid/content/Context;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/google/android/gms/internal/ln;

    #@16
    invoke-static {p0}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    #@19
    move-result-object v1

    #@1a
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ln;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/dynamic/c;Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Lcom/google/android/gms/internal/ll;)Lcom/google/android/gms/internal/lk;
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1d} :catch_1f
    .catch Lcom/google/android/gms/dynamic/g$a; {:try_start_c .. :try_end_1d} :catch_26

    #@1d
    move-result-object v0

    #@1e
    return-object v0

    #@1f
    :catch_1f
    move-exception v0

    #@20
    new-instance v1, Ljava/lang/RuntimeException;

    #@22
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@25
    throw v1

    #@26
    :catch_26
    move-exception v0

    #@27
    new-instance v1, Ljava/lang/RuntimeException;

    #@29
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@2c
    throw v1
.end method

.method private static nj()Lcom/google/android/gms/internal/ls;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/internal/ls;->akN:Lcom/google/android/gms/internal/ls;

    #@2
    if-nez v0, :cond_b

    #@4
    new-instance v0, Lcom/google/android/gms/internal/ls;

    #@6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ls;-><init>()V

    #@9
    sput-object v0, Lcom/google/android/gms/internal/ls;->akN:Lcom/google/android/gms/internal/ls;

    #@b
    :cond_b
    sget-object v0, Lcom/google/android/gms/internal/ls;->akN:Lcom/google/android/gms/internal/ls;

    #@d
    return-object v0
.end method


# virtual methods
.method protected bv(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ln;
    .registers 3

    #@0
    invoke-static {p1}, Lcom/google/android/gms/internal/ln$a;->br(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ln;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected synthetic d(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ls;->bv(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ln;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
