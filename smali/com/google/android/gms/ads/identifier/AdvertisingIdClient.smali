.class public final Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static a(Landroid/content/Context;Lcom/google/android/gms/common/a;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/a;->ew()Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/google/android/gms/internal/s$a;->b(Landroid/os/IBinder;)Lcom/google/android/gms/internal/s;

    #@7
    move-result-object v0

    #@8
    new-instance v1, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    #@a
    invoke-interface {v0}, Lcom/google/android/gms/internal/s;->getId()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    const/4 v3, 0x1

    #@f
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/s;->a(Z)Z

    #@12
    move-result v0

    #@13
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;-><init>(Ljava/lang/String;Z)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_23
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_16} :catch_38
    .catchall {:try_start_0 .. :try_end_16} :catchall_33

    #@16
    :try_start_16
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_19} :catch_1a

    #@19
    :goto_19
    return-object v1

    #@1a
    :catch_1a
    move-exception v0

    #@1b
    const-string v2, "AdvertisingIdClient"

    #@1d
    const-string v3, "getAdvertisingIdInfo unbindService failed."

    #@1f
    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    goto :goto_19

    #@23
    :catch_23
    move-exception v0

    #@24
    :try_start_24
    const-string v1, "AdvertisingIdClient"

    #@26
    const-string v2, "GMS remote exception "

    #@28
    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2b
    new-instance v0, Ljava/io/IOException;

    #@2d
    const-string v1, "Remote exception"

    #@2f
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_33

    #@33
    :catchall_33
    move-exception v0

    #@34
    :try_start_34
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_37
    .catch Ljava/lang/IllegalArgumentException; {:try_start_34 .. :try_end_37} :catch_41

    #@37
    :goto_37
    throw v0

    #@38
    :catch_38
    move-exception v0

    #@39
    :try_start_39
    new-instance v0, Ljava/io/IOException;

    #@3b
    const-string v1, "Interrupted exception"

    #@3d
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@40
    throw v0
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_33

    #@41
    :catch_41
    move-exception v1

    #@42
    const-string v2, "AdvertisingIdClient"

    #@44
    const-string v3, "getAdvertisingIdInfo unbindService failed."

    #@46
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@49
    goto :goto_37
.end method

.method public static getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;,
            Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
        }
    .end annotation

    #@0
    const-string v0, "Calling this from your main thread can lead to deadlock"

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/hm;->az(Ljava/lang/String;)V

    #@5
    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->j(Landroid/content/Context;)Lcom/google/android/gms/common/a;

    #@8
    move-result-object v0

    #@9
    invoke-static {p0, v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->a(Landroid/content/Context;Lcom/google/android/gms/common/a;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method static j(Landroid/content/Context;)Lcom/google/android/gms/common/a;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;,
            Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3
    move-result-object v0

    #@4
    const-string v1, "com.android.vending"

    #@6
    const/4 v2, 0x0

    #@7
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_a} :catch_26

    #@a
    :try_start_a
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->z(Landroid/content/Context;)V
    :try_end_d
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_a .. :try_end_d} :catch_2f

    #@d
    new-instance v0, Lcom/google/android/gms/common/a;

    #@f
    invoke-direct {v0}, Lcom/google/android/gms/common/a;-><init>()V

    #@12
    new-instance v1, Landroid/content/Intent;

    #@14
    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    #@16
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@19
    const-string v2, "com.google.android.gms"

    #@1b
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@1e
    const/4 v2, 0x1

    #@1f
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_36

    #@25
    return-object v0

    #@26
    :catch_26
    move-exception v0

    #@27
    new-instance v0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    #@29
    const/16 v1, 0x9

    #@2b
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    #@2e
    throw v0

    #@2f
    :catch_2f
    move-exception v0

    #@30
    new-instance v1, Ljava/io/IOException;

    #@32
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    #@35
    throw v1

    #@36
    :cond_36
    new-instance v0, Ljava/io/IOException;

    #@38
    const-string v1, "Connection failure"

    #@3a
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v0
.end method
