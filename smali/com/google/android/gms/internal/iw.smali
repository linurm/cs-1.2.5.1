.class public Lcom/google/android/gms/internal/iw;
.super Lcom/google/android/gms/internal/hb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/iw$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hb",
        "<",
        "Lcom/google/android/gms/internal/iy;",
        ">;"
    }
.end annotation


# instance fields
.field private UG:Lcom/google/android/gms/internal/iw$a;

.field private final mTheme:I

.field private og:Landroid/app/Activity;

.field private final yQ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;I)V
    .registers 13

    #@0
    const/4 v0, 0x0

    #@1
    new-array v5, v0, [Ljava/lang/String;

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v2, p2

    #@6
    move-object v3, p3

    #@7
    move-object v4, p4

    #@8
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/hb;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    #@b
    iput-object p5, p0, Lcom/google/android/gms/internal/iw;->yQ:Ljava/lang/String;

    #@d
    iput-object p1, p0, Lcom/google/android/gms/internal/iw;->og:Landroid/app/Activity;

    #@f
    iput p6, p0, Lcom/google/android/gms/internal/iw;->mTheme:I

    #@11
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/identity/intents/UserAddressRequest;I)V
    .registers 7

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/iw;->iU()V

    #@3
    new-instance v0, Lcom/google/android/gms/internal/iw$a;

    #@5
    iget-object v1, p0, Lcom/google/android/gms/internal/iw;->og:Landroid/app/Activity;

    #@7
    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/internal/iw$a;-><init>(ILandroid/app/Activity;)V

    #@a
    iput-object v0, p0, Lcom/google/android/gms/internal/iw;->UG:Lcom/google/android/gms/internal/iw$a;

    #@c
    :try_start_c
    new-instance v0, Landroid/os/Bundle;

    #@e
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@11
    const-string v1, "com.google.android.gms.identity.intents.EXTRA_CALLING_PACKAGE_NAME"

    #@13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/iw;->getContext()Landroid/content/Context;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    iget-object v1, p0, Lcom/google/android/gms/internal/iw;->yQ:Ljava/lang/String;

    #@20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@23
    move-result v1

    #@24
    if-nez v1, :cond_34

    #@26
    new-instance v1, Landroid/accounts/Account;

    #@28
    iget-object v2, p0, Lcom/google/android/gms/internal/iw;->yQ:Ljava/lang/String;

    #@2a
    const-string v3, "com.google"

    #@2c
    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2f
    const-string v2, "com.google.android.gms.identity.intents.EXTRA_ACCOUNT"

    #@31
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@34
    :cond_34
    const-string v1, "com.google.android.gms.identity.intents.EXTRA_THEME"

    #@36
    iget v2, p0, Lcom/google/android/gms/internal/iw;->mTheme:I

    #@38
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@3b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/iw;->iT()Lcom/google/android/gms/internal/iy;

    #@3e
    move-result-object v1

    #@3f
    iget-object v2, p0, Lcom/google/android/gms/internal/iw;->UG:Lcom/google/android/gms/internal/iw$a;

    #@41
    invoke-interface {v1, v2, p1, v0}, Lcom/google/android/gms/internal/iy;->a(Lcom/google/android/gms/internal/ix;Lcom/google/android/gms/identity/intents/UserAddressRequest;Landroid/os/Bundle;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_44} :catch_45

    #@44
    :goto_44
    return-void

    #@45
    :catch_45
    move-exception v0

    #@46
    const-string v1, "AddressClientImpl"

    #@48
    const-string v2, "Exception requesting user address"

    #@4a
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4d
    new-instance v0, Landroid/os/Bundle;

    #@4f
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@52
    const-string v1, "com.google.android.gms.identity.intents.EXTRA_ERROR_CODE"

    #@54
    const/16 v2, 0x22b

    #@56
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@59
    iget-object v1, p0, Lcom/google/android/gms/internal/iw;->UG:Lcom/google/android/gms/internal/iw$a;

    #@5b
    const/4 v2, 0x1

    #@5c
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/iw$a;->g(ILandroid/os/Bundle;)V

    #@5f
    goto :goto_44
.end method

.method protected a(Lcom/google/android/gms/internal/hi;Lcom/google/android/gms/internal/hb$e;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const v0, 0x4da6e8

    #@3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/iw;->getContext()Landroid/content/Context;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/gms/internal/hi;->d(Lcom/google/android/gms/internal/hh;ILjava/lang/String;)V

    #@e
    return-void
.end method

.method protected an(Landroid/os/IBinder;)Lcom/google/android/gms/internal/iy;
    .registers 3

    #@0
    invoke-static {p1}, Lcom/google/android/gms/internal/iy$a;->ap(Landroid/os/IBinder;)Lcom/google/android/gms/internal/iy;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected bu()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "com.google.android.gms.identity.service.BIND"

    #@2
    return-object v0
.end method

.method protected bv()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "com.google.android.gms.identity.intents.internal.IAddressService"

    #@2
    return-object v0
.end method

.method public disconnect()V
    .registers 3

    #@0
    const/4 v1, 0x0

    #@1
    invoke-super {p0}, Lcom/google/android/gms/internal/hb;->disconnect()V

    #@4
    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->UG:Lcom/google/android/gms/internal/iw$a;

    #@6
    if-eqz v0, :cond_f

    #@8
    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->UG:Lcom/google/android/gms/internal/iw$a;

    #@a
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/iw$a;->a(Lcom/google/android/gms/internal/iw$a;Landroid/app/Activity;)V

    #@d
    iput-object v1, p0, Lcom/google/android/gms/internal/iw;->UG:Lcom/google/android/gms/internal/iw$a;

    #@f
    :cond_f
    return-void
.end method

.method protected iT()Lcom/google/android/gms/internal/iy;
    .registers 2

    #@0
    invoke-super {p0}, Lcom/google/android/gms/internal/hb;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/internal/iy;

    #@6
    return-object v0
.end method

.method protected iU()V
    .registers 1

    #@0
    invoke-super {p0}, Lcom/google/android/gms/internal/hb;->cn()V

    #@3
    return-void
.end method

.method protected synthetic x(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iw;->an(Landroid/os/IBinder;)Lcom/google/android/gms/internal/iy;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
