.class public Lcom/google/android/gms/drive/internal/r;
.super Lcom/google/android/gms/internal/hb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hb",
        "<",
        "Lcom/google/android/gms/drive/internal/aa;",
        ">;"
    }
.end annotation


# instance fields
.field private final IQ:Ljava/lang/String;

.field private final IR:Landroid/os/Bundle;

.field private IS:Lcom/google/android/gms/drive/DriveId;

.field private IT:Lcom/google/android/gms/drive/DriveId;

.field final IU:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

.field IV:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/drive/DriveId;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/drive/events/DriveEvent$Listener",
            "<*>;",
            "Lcom/google/android/gms/drive/internal/x",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final yQ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gy;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 14

    #@0
    move-object v0, p0

    #@1
    move-object v1, p1

    #@2
    move-object v2, p2

    #@3
    move-object v3, p4

    #@4
    move-object v4, p5

    #@5
    move-object v5, p6

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/hb;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    #@9
    new-instance v0, Ljava/util/HashMap;

    #@b
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@e
    iput-object v0, p0, Lcom/google/android/gms/drive/internal/r;->IV:Ljava/util/Map;

    #@10
    invoke-virtual {p3}, Lcom/google/android/gms/internal/gy;->fj()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    const-string v1, "Must call Api.ClientBuilder.setAccountName()"

    #@16
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Ljava/lang/String;

    #@1c
    iput-object v0, p0, Lcom/google/android/gms/drive/internal/r;->yQ:Ljava/lang/String;

    #@1e
    invoke-virtual {p3}, Lcom/google/android/gms/internal/gy;->fn()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Lcom/google/android/gms/drive/internal/r;->IQ:Ljava/lang/String;

    #@24
    iput-object p4, p0, Lcom/google/android/gms/drive/internal/r;->IU:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    #@26
    iput-object p7, p0, Lcom/google/android/gms/drive/internal/r;->IR:Landroid/os/Bundle;

    #@28
    return-void
.end method


# virtual methods
.method protected O(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/aa;
    .registers 3

    #@0
    invoke-static {p1}, Lcom/google/android/gms/drive/internal/aa$a;->P(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/aa;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/DriveEvent$Listener;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/drive/events/DriveEvent;",
            ">(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/DriveId;",
            "I",
            "Lcom/google/android/gms/drive/events/DriveEvent$Listener",
            "<TC;>;)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    #@0
    invoke-static {p3, p2}, Lcom/google/android/gms/drive/events/b;->a(ILcom/google/android/gms/drive/DriveId;)Z

    #@3
    move-result v0

    #@4
    const-string v1, "id"

    #@6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@9
    const-string v0, "listener"

    #@b
    invoke-static {p4, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/r;->isConnected()Z

    #@11
    move-result v0

    #@12
    const-string v1, "Client must be connected"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@17
    iget-object v1, p0, Lcom/google/android/gms/drive/internal/r;->IV:Ljava/util/Map;

    #@19
    monitor-enter v1

    #@1a
    :try_start_1a
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/r;->IV:Ljava/util/Map;

    #@1c
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/util/Map;

    #@22
    if-nez v0, :cond_2e

    #@24
    new-instance v0, Ljava/util/HashMap;

    #@26
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@29
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/r;->IV:Ljava/util/Map;

    #@2b
    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    :cond_2e
    invoke-interface {v0, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_3d

    #@34
    new-instance v0, Lcom/google/android/gms/drive/internal/p$k;

    #@36
    sget-object v2, Lcom/google/android/gms/common/api/Status;->En:Lcom/google/android/gms/common/api/Status;

    #@38
    invoke-direct {v0, p1, v2}, Lcom/google/android/gms/drive/internal/p$k;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/Status;)V

    #@3b
    monitor-exit v1

    #@3c
    :goto_3c
    return-object v0

    #@3d
    :cond_3d
    new-instance v2, Lcom/google/android/gms/drive/internal/x;

    #@3f
    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/r;->getLooper()Landroid/os/Looper;

    #@42
    move-result-object v3

    #@43
    invoke-direct {v2, v3, p3, p4}, Lcom/google/android/gms/drive/internal/x;-><init>(Landroid/os/Looper;ILcom/google/android/gms/drive/events/DriveEvent$Listener;)V

    #@46
    invoke-interface {v0, p4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@49
    new-instance v0, Lcom/google/android/gms/drive/internal/r$1;

    #@4b
    invoke-direct {v0, p0, p2, p3, v2}, Lcom/google/android/gms/drive/internal/r$1;-><init>(Lcom/google/android/gms/drive/internal/r;Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/internal/x;)V

    #@4e
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@51
    move-result-object v0

    #@52
    monitor-exit v1

    #@53
    goto :goto_3c

    #@54
    :catchall_54
    move-exception v0

    #@55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_1a .. :try_end_56} :catchall_54

    #@56
    throw v0
.end method

.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 5

    #@0
    if-eqz p3, :cond_21

    #@2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@d
    const-string v0, "com.google.android.gms.drive.root_id"

    #@f
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/google/android/gms/drive/DriveId;

    #@15
    iput-object v0, p0, Lcom/google/android/gms/drive/internal/r;->IS:Lcom/google/android/gms/drive/DriveId;

    #@17
    const-string v0, "com.google.android.gms.drive.appdata_id"

    #@19
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Lcom/google/android/gms/drive/DriveId;

    #@1f
    iput-object v0, p0, Lcom/google/android/gms/drive/internal/r;->IT:Lcom/google/android/gms/drive/DriveId;

    #@21
    :cond_21
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/hb;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    #@24
    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/hi;Lcom/google/android/gms/internal/hb$e;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/r;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    invoke-static {p2}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    invoke-static {v3}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/r;->fs()[Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    invoke-static {v0}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    new-instance v6, Landroid/os/Bundle;

    #@17
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    #@1a
    const-string v0, "proxy_package_name"

    #@1c
    iget-object v1, p0, Lcom/google/android/gms/drive/internal/r;->IQ:Ljava/lang/String;

    #@1e
    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@21
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/r;->IR:Landroid/os/Bundle;

    #@23
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@26
    const v2, 0x4da6e8

    #@29
    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/r;->fs()[Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    iget-object v5, p0, Lcom/google/android/gms/drive/internal/r;->yQ:Ljava/lang/String;

    #@2f
    move-object v0, p1

    #@30
    move-object v1, p2

    #@31
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/hi;->a(Lcom/google/android/gms/internal/hh;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@34
    return-void
.end method

.method b(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/DriveEvent$Listener;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/DriveId;",
            "I",
            "Lcom/google/android/gms/drive/events/DriveEvent$Listener",
            "<*>;)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    #@0
    invoke-static {p3, p2}, Lcom/google/android/gms/drive/events/b;->a(ILcom/google/android/gms/drive/DriveId;)Z

    #@3
    move-result v0

    #@4
    const-string v1, "id"

    #@6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@9
    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/r;->isConnected()Z

    #@c
    move-result v0

    #@d
    const-string v1, "Client must be connected"

    #@f
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@12
    const-string v0, "listener"

    #@14
    invoke-static {p4, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/r;->IV:Ljava/util/Map;

    #@19
    monitor-enter v2

    #@1a
    :try_start_1a
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/r;->IV:Ljava/util/Map;

    #@1c
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/util/Map;

    #@22
    if-nez v0, :cond_2d

    #@24
    new-instance v0, Lcom/google/android/gms/drive/internal/p$k;

    #@26
    sget-object v1, Lcom/google/android/gms/common/api/Status;->En:Lcom/google/android/gms/common/api/Status;

    #@28
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/drive/internal/p$k;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/Status;)V

    #@2b
    monitor-exit v2

    #@2c
    :goto_2c
    return-object v0

    #@2d
    :cond_2d
    invoke-interface {v0, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v1

    #@31
    check-cast v1, Lcom/google/android/gms/drive/internal/x;

    #@33
    if-nez v1, :cond_41

    #@35
    new-instance v0, Lcom/google/android/gms/drive/internal/p$k;

    #@37
    sget-object v1, Lcom/google/android/gms/common/api/Status;->En:Lcom/google/android/gms/common/api/Status;

    #@39
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/drive/internal/p$k;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/Status;)V

    #@3c
    monitor-exit v2

    #@3d
    goto :goto_2c

    #@3e
    :catchall_3e
    move-exception v0

    #@3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_1a .. :try_end_40} :catchall_3e

    #@40
    throw v0

    #@41
    :cond_41
    :try_start_41
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    #@44
    move-result v0

    #@45
    if-eqz v0, :cond_4c

    #@47
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/r;->IV:Ljava/util/Map;

    #@49
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@4c
    :cond_4c
    new-instance v0, Lcom/google/android/gms/drive/internal/r$2;

    #@4e
    invoke-direct {v0, p0, p2, p3, v1}, Lcom/google/android/gms/drive/internal/r$2;-><init>(Lcom/google/android/gms/drive/internal/r;Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/internal/x;)V

    #@51
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@54
    move-result-object v0

    #@55
    monitor-exit v2
    :try_end_56
    .catchall {:try_start_41 .. :try_end_56} :catchall_3e

    #@56
    goto :goto_2c
.end method

.method protected bu()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "com.google.android.gms.drive.ApiService.START"

    #@2
    return-object v0
.end method

.method protected bv()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    #@2
    return-object v0
.end method

.method public disconnect()V
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/r;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/drive/internal/aa;

    #@6
    if-eqz v0, :cond_10

    #@8
    :try_start_8
    new-instance v1, Lcom/google/android/gms/drive/internal/DisconnectRequest;

    #@a
    invoke-direct {v1}, Lcom/google/android/gms/drive/internal/DisconnectRequest;-><init>()V

    #@d
    invoke-interface {v0, v1}, Lcom/google/android/gms/drive/internal/aa;->a(Lcom/google/android/gms/drive/internal/DisconnectRequest;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_19

    #@10
    :cond_10
    :goto_10
    invoke-super {p0}, Lcom/google/android/gms/internal/hb;->disconnect()V

    #@13
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/r;->IV:Ljava/util/Map;

    #@15
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@18
    return-void

    #@19
    :catch_19
    move-exception v0

    #@1a
    goto :goto_10
.end method

.method public gp()Lcom/google/android/gms/drive/internal/aa;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/r;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/drive/internal/aa;

    #@6
    return-object v0
.end method

.method public gq()Lcom/google/android/gms/drive/DriveId;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/r;->IS:Lcom/google/android/gms/drive/DriveId;

    #@2
    return-object v0
.end method

.method public gr()Lcom/google/android/gms/drive/DriveId;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/r;->IT:Lcom/google/android/gms/drive/DriveId;

    #@2
    return-object v0
.end method

.method protected synthetic x(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/r;->O(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/aa;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
