.class public Lcom/google/android/gms/common/api/d;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field private DN:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

.field private Et:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private Eu:Lcom/google/android/gms/common/ConnectionResult;

.field private Ev:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/common/api/d;->Et:Lcom/google/android/gms/common/api/GoogleApiClient;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Et:Lcom/google/android/gms/common/api/GoogleApiClient;

    #@4
    invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    #@7
    iput-object p2, p0, Lcom/google/android/gms/common/api/d;->DN:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    #@9
    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Et:Lcom/google/android/gms/common/api/GoogleApiClient;

    #@b
    invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    #@e
    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Et:Lcom/google/android/gms/common/api/GoogleApiClient;

    #@10
    invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    #@13
    return-void
.end method

.method public isInitialized()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Et:Lcom/google/android/gms/common/api/GoogleApiClient;

    #@2
    if-eqz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    packed-switch p1, :pswitch_data_28

    #@5
    :cond_5
    move v0, v1

    #@6
    :goto_6
    if-eqz v0, :cond_1f

    #@8
    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Et:Lcom/google/android/gms/common/api/GoogleApiClient;

    #@a
    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    #@d
    iput-boolean v1, p0, Lcom/google/android/gms/common/api/d;->Ev:Z

    #@f
    :goto_f
    return-void

    #@10
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@13
    move-result-object v2

    #@14
    invoke-static {v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    #@17
    move-result v2

    #@18
    if-nez v2, :cond_5

    #@1a
    goto :goto_6

    #@1b
    :pswitch_1b
    const/4 v2, -0x1

    #@1c
    if-ne p2, v2, :cond_5

    #@1e
    goto :goto_6

    #@1f
    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->DN:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    #@21
    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->Eu:Lcom/google/android/gms/common/ConnectionResult;

    #@23
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    #@26
    goto :goto_f

    #@27
    nop

    #@28
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_10
    .end packed-switch
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/d;->Ev:Z

    #@3
    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->DN:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    #@5
    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->Eu:Lcom/google/android/gms/common/ConnectionResult;

    #@7
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    #@a
    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/d;->Ev:Z

    #@3
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/google/android/gms/common/api/d;->Eu:Lcom/google/android/gms/common/ConnectionResult;

    #@2
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/d;->Ev:Z

    #@4
    if-eqz v0, :cond_7

    #@6
    :goto_6
    return-void

    #@7
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    #@12
    move-result-object v0

    #@13
    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    #@16
    move-result v0

    #@17
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_32

    #@1d
    :try_start_1d
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@20
    move-result-object v1

    #@21
    add-int/lit8 v0, v0, 0x1

    #@23
    shl-int/lit8 v0, v0, 0x10

    #@25
    add-int/lit8 v0, v0, 0x1

    #@27
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_2a
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1d .. :try_end_2a} :catch_2b

    #@2a
    goto :goto_6

    #@2b
    :catch_2b
    move-exception v0

    #@2c
    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Et:Lcom/google/android/gms/common/api/GoogleApiClient;

    #@2e
    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    #@31
    goto :goto_6

    #@32
    :cond_32
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    #@35
    move-result v0

    #@36
    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isUserRecoverableError(I)Z

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_49

    #@3c
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    #@3f
    move-result v0

    #@40
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@43
    move-result-object v1

    #@44
    const/4 v2, 0x2

    #@45
    invoke-static {v0, v1, p0, v2, p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->b(ILandroid/app/Activity;Landroid/support/v4/app/Fragment;ILandroid/content/DialogInterface$OnCancelListener;)Z

    #@48
    goto :goto_6

    #@49
    :cond_49
    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->DN:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    #@4b
    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->Eu:Lcom/google/android/gms/common/ConnectionResult;

    #@4d
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    #@50
    goto :goto_6
.end method

.method public onConnectionSuspended(I)V
    .registers 2

    #@0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    #@0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    #@3
    if-eqz p1, :cond_25

    #@5
    const-string v0, "resolving_error"

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@b
    move-result v0

    #@c
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/d;->Ev:Z

    #@e
    const-string v0, "connection_result_status"

    #@10
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_25

    #@16
    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    #@18
    const-string v0, "resolution_pending_intent"

    #@1a
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Landroid/app/PendingIntent;

    #@20
    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    #@23
    iput-object v2, p0, Lcom/google/android/gms/common/api/d;->Eu:Lcom/google/android/gms/common/ConnectionResult;

    #@25
    :cond_25
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    #@0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    const-string v0, "resolving_error"

    #@5
    iget-boolean v1, p0, Lcom/google/android/gms/common/api/d;->Ev:Z

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@a
    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Eu:Lcom/google/android/gms/common/ConnectionResult;

    #@c
    if-eqz v0, :cond_24

    #@e
    const-string v0, "connection_result_status"

    #@10
    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->Eu:Lcom/google/android/gms/common/ConnectionResult;

    #@12
    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    #@15
    move-result v1

    #@16
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@19
    const-string v0, "resolution_pending_intent"

    #@1b
    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->Eu:Lcom/google/android/gms/common/ConnectionResult;

    #@1d
    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@24
    :cond_24
    return-void
.end method

.method public onStart()V
    .registers 2

    #@0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    #@3
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/d;->Ev:Z

    #@5
    if-nez v0, :cond_10

    #@7
    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Et:Lcom/google/android/gms/common/api/GoogleApiClient;

    #@9
    if-eqz v0, :cond_10

    #@b
    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Et:Lcom/google/android/gms/common/api/GoogleApiClient;

    #@d
    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    #@10
    :cond_10
    return-void
.end method

.method public onStop()V
    .registers 2

    #@0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Et:Lcom/google/android/gms/common/api/GoogleApiClient;

    #@5
    if-eqz v0, :cond_c

    #@7
    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Et:Lcom/google/android/gms/common/api/GoogleApiClient;

    #@9
    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    #@c
    :cond_c
    return-void
.end method
