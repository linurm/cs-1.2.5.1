.class final Lcom/google/android/gms/security/ProviderInstaller$1;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/security/ProviderInstaller;->installIfNeededAsync(Landroid/content/Context;Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aeb:Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;

.field final synthetic qu:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/security/ProviderInstaller$1;->qu:Landroid/content/Context;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/security/ProviderInstaller$1;->aeb:Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;

    #@4
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method protected varargs b([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/security/ProviderInstaller$1;->qu:Landroid/content/Context;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/security/ProviderInstaller;->installIfNeeded(Landroid/content/Context;)V
    :try_end_5
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_5} :catch_b
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_5} :catch_15

    #@5
    const/4 v0, 0x0

    #@6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0

    #@b
    :catch_b
    move-exception v0

    #@c
    invoke-virtual {v0}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->getConnectionStatusCode()I

    #@f
    move-result v0

    #@10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v0

    #@14
    goto :goto_a

    #@15
    :catch_15
    move-exception v0

    #@16
    iget v0, v0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->errorCode:I

    #@18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v0

    #@1c
    goto :goto_a
.end method

.method protected d(Ljava/lang/Integer;)V
    .registers 5

    #@0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_c

    #@6
    iget-object v0, p0, Lcom/google/android/gms/security/ProviderInstaller$1;->aeb:Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;

    #@8
    invoke-interface {v0}, Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;->onProviderInstalled()V

    #@b
    :goto_b
    return-void

    #@c
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@f
    move-result v0

    #@10
    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->Z(I)Landroid/content/Intent;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Lcom/google/android/gms/security/ProviderInstaller$1;->aeb:Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;

    #@16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@19
    move-result v2

    #@1a
    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;->onProviderInstallFailed(ILandroid/content/Intent;)V

    #@1d
    goto :goto_b
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    #@0
    check-cast p1, [Ljava/lang/Void;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/security/ProviderInstaller$1;->b([Ljava/lang/Void;)Ljava/lang/Integer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    #@0
    check-cast p1, Ljava/lang/Integer;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/security/ProviderInstaller$1;->d(Ljava/lang/Integer;)V

    #@5
    return-void
.end method
