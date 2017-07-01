.class public Lcom/google/android/gms/internal/jf;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/jf$a;,
        Lcom/google/android/gms/internal/jf$b;
    }
.end annotation


# instance fields
.field private final VJ:Lcom/google/android/gms/internal/jj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/jj",
            "<",
            "Lcom/google/android/gms/internal/je;",
            ">;"
        }
    .end annotation
.end field

.field private VK:Landroid/content/ContentProviderClient;

.field private VL:Z

.field private VM:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/gms/location/LocationListener;",
            "Lcom/google/android/gms/internal/jf$b;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/jj;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/jj",
            "<",
            "Lcom/google/android/gms/internal/je;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/google/android/gms/internal/jf;->VK:Landroid/content/ContentProviderClient;

    #@6
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/jf;->VL:Z

    #@9
    new-instance v0, Ljava/util/HashMap;

    #@b
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@e
    iput-object v0, p0, Lcom/google/android/gms/internal/jf;->VM:Ljava/util/HashMap;

    #@10
    iput-object p1, p0, Lcom/google/android/gms/internal/jf;->mContext:Landroid/content/Context;

    #@12
    iput-object p2, p0, Lcom/google/android/gms/internal/jf;->VJ:Lcom/google/android/gms/internal/jj;

    #@14
    return-void
.end method


# virtual methods
.method public getLastLocation()Landroid/location/Location;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/jf;->VJ:Lcom/google/android/gms/internal/jj;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/internal/jj;->cn()V

    #@5
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/jf;->VJ:Lcom/google/android/gms/internal/jj;

    #@7
    invoke-interface {v0}, Lcom/google/android/gms/internal/jj;->ft()Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lcom/google/android/gms/internal/je;

    #@d
    iget-object v1, p0, Lcom/google/android/gms/internal/jf;->mContext:Landroid/content/Context;

    #@f
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/je;->bo(Ljava/lang/String;)Landroid/location/Location;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_16} :catch_18

    #@16
    move-result-object v0

    #@17
    return-object v0

    #@18
    :catch_18
    move-exception v0

    #@19
    new-instance v1, Ljava/lang/IllegalStateException;

    #@1b
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@1e
    throw v1
.end method

.method public iY()V
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/jf;->VL:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    const/4 v0, 0x0

    #@5
    :try_start_5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jf;->setMockMode(Z)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    #@8
    :cond_8
    return-void

    #@9
    :catch_9
    move-exception v0

    #@a
    new-instance v1, Ljava/lang/IllegalStateException;

    #@c
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@f
    throw v1
.end method

.method public removeAllListeners()V
    .registers 5

    #@0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/jf;->VM:Ljava/util/HashMap;

    #@2
    monitor-enter v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_2a

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/jf;->VM:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v3

    #@d
    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_31

    #@13
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/google/android/gms/internal/jf$b;

    #@19
    if-eqz v0, :cond_d

    #@1b
    iget-object v1, p0, Lcom/google/android/gms/internal/jf;->VJ:Lcom/google/android/gms/internal/jj;

    #@1d
    invoke-interface {v1}, Lcom/google/android/gms/internal/jj;->ft()Landroid/os/IInterface;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Lcom/google/android/gms/internal/je;

    #@23
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/location/a;)V

    #@26
    goto :goto_d

    #@27
    :catchall_27
    move-exception v0

    #@28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    #@29
    :try_start_29
    throw v0
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2a} :catch_2a

    #@2a
    :catch_2a
    move-exception v0

    #@2b
    new-instance v1, Ljava/lang/IllegalStateException;

    #@2d
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@30
    throw v1

    #@31
    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/google/android/gms/internal/jf;->VM:Ljava/util/HashMap;

    #@33
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_27

    #@37
    return-void
.end method

.method public removeLocationUpdates(Landroid/app/PendingIntent;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/jf;->VJ:Lcom/google/android/gms/internal/jj;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/internal/jj;->cn()V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/internal/jf;->VJ:Lcom/google/android/gms/internal/jj;

    #@7
    invoke-interface {v0}, Lcom/google/android/gms/internal/jj;->ft()Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lcom/google/android/gms/internal/je;

    #@d
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/je;->a(Landroid/app/PendingIntent;)V

    #@10
    return-void
.end method

.method public removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/jf;->VJ:Lcom/google/android/gms/internal/jj;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/internal/jj;->cn()V

    #@5
    const-string v0, "Invalid null listener"

    #@7
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    iget-object v2, p0, Lcom/google/android/gms/internal/jf;->VM:Ljava/util/HashMap;

    #@c
    monitor-enter v2

    #@d
    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/internal/jf;->VM:Ljava/util/HashMap;

    #@f
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/google/android/gms/internal/jf$b;

    #@15
    iget-object v1, p0, Lcom/google/android/gms/internal/jf;->VK:Landroid/content/ContentProviderClient;

    #@17
    if-eqz v1, :cond_29

    #@19
    iget-object v1, p0, Lcom/google/android/gms/internal/jf;->VM:Ljava/util/HashMap;

    #@1b
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_29

    #@21
    iget-object v1, p0, Lcom/google/android/gms/internal/jf;->VK:Landroid/content/ContentProviderClient;

    #@23
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    #@26
    const/4 v1, 0x0

    #@27
    iput-object v1, p0, Lcom/google/android/gms/internal/jf;->VK:Landroid/content/ContentProviderClient;

    #@29
    :cond_29
    if-eqz v0, :cond_39

    #@2b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/jf$b;->release()V

    #@2e
    iget-object v1, p0, Lcom/google/android/gms/internal/jf;->VJ:Lcom/google/android/gms/internal/jj;

    #@30
    invoke-interface {v1}, Lcom/google/android/gms/internal/jj;->ft()Landroid/os/IInterface;

    #@33
    move-result-object v1

    #@34
    check-cast v1, Lcom/google/android/gms/internal/je;

    #@36
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/location/a;)V

    #@39
    :cond_39
    monitor-exit v2

    #@3a
    return-void

    #@3b
    :catchall_3b
    move-exception v0

    #@3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_d .. :try_end_3d} :catchall_3b

    #@3d
    throw v0
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/jf;->VJ:Lcom/google/android/gms/internal/jj;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/internal/jj;->cn()V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/internal/jf;->VJ:Lcom/google/android/gms/internal/jj;

    #@7
    invoke-interface {v0}, Lcom/google/android/gms/internal/jj;->ft()Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lcom/google/android/gms/internal/je;

    #@d
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V

    #@10
    return-void
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/jf;->VJ:Lcom/google/android/gms/internal/jj;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/internal/jj;->cn()V

    #@5
    if-nez p3, :cond_10

    #@7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@a
    move-result-object v0

    #@b
    const-string v1, "Can\'t create handler inside thread that has not called Looper.prepare()"

    #@d
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    :cond_10
    iget-object v2, p0, Lcom/google/android/gms/internal/jf;->VM:Ljava/util/HashMap;

    #@12
    monitor-enter v2

    #@13
    :try_start_13
    iget-object v0, p0, Lcom/google/android/gms/internal/jf;->VM:Ljava/util/HashMap;

    #@15
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/google/android/gms/internal/jf$b;

    #@1b
    if-nez v0, :cond_3e

    #@1d
    new-instance v0, Lcom/google/android/gms/internal/jf$b;

    #@1f
    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/jf$b;-><init>(Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V

    #@22
    move-object v1, v0

    #@23
    :goto_23
    iget-object v0, p0, Lcom/google/android/gms/internal/jf;->VM:Ljava/util/HashMap;

    #@25
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    iget-object v0, p0, Lcom/google/android/gms/internal/jf;->VJ:Lcom/google/android/gms/internal/jj;

    #@2a
    invoke-interface {v0}, Lcom/google/android/gms/internal/jj;->ft()Landroid/os/IInterface;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Lcom/google/android/gms/internal/je;

    #@30
    iget-object v3, p0, Lcom/google/android/gms/internal/jf;->mContext:Landroid/content/Context;

    #@32
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    invoke-interface {v0, p1, v1, v3}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/a;Ljava/lang/String;)V

    #@39
    monitor-exit v2

    #@3a
    return-void

    #@3b
    :catchall_3b
    move-exception v0

    #@3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_13 .. :try_end_3d} :catchall_3b

    #@3d
    throw v0

    #@3e
    :cond_3e
    move-object v1, v0

    #@3f
    goto :goto_23
.end method

.method public setMockLocation(Landroid/location/Location;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/jf;->VJ:Lcom/google/android/gms/internal/jj;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/internal/jj;->cn()V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/internal/jf;->VJ:Lcom/google/android/gms/internal/jj;

    #@7
    invoke-interface {v0}, Lcom/google/android/gms/internal/jj;->ft()Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lcom/google/android/gms/internal/je;

    #@d
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/je;->setMockLocation(Landroid/location/Location;)V

    #@10
    return-void
.end method

.method public setMockMode(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/jf;->VJ:Lcom/google/android/gms/internal/jj;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/internal/jj;->cn()V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/internal/jf;->VJ:Lcom/google/android/gms/internal/jj;

    #@7
    invoke-interface {v0}, Lcom/google/android/gms/internal/jj;->ft()Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lcom/google/android/gms/internal/je;

    #@d
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/je;->setMockMode(Z)V

    #@10
    iput-boolean p1, p0, Lcom/google/android/gms/internal/jf;->VL:Z

    #@12
    return-void
.end method
