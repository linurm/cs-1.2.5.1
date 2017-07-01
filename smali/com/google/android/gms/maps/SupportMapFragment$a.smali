.class Lcom/google/android/gms/maps/SupportMapFragment$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamic/LifecycleDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/SupportMapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final FV:Landroid/support/v4/app/Fragment;

.field private final ZE:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-static {p2}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    #@9
    iput-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->ZE:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    #@b
    invoke-static {p1}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@11
    iput-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->FV:Landroid/support/v4/app/Fragment;

    #@13
    return-void
.end method


# virtual methods
.method public jy()Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->ZE:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    #@2
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    #@0
    if-nez p1, :cond_7

    #@2
    :try_start_2
    new-instance p1, Landroid/os/Bundle;

    #@4
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    #@7
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->FV:Landroid/support/v4/app/Fragment;

    #@9
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_22

    #@f
    const-string v1, "MapOptions"

    #@11
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_22

    #@17
    const-string v1, "MapOptions"

    #@19
    const-string v2, "MapOptions"

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@1e
    move-result-object v0

    #@1f
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/maps/internal/t;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    #@22
    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->ZE:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    #@24
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onCreate(Landroid/os/Bundle;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_27} :catch_28

    #@27
    return-void

    #@28
    :catch_28
    move-exception v0

    #@29
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@2b
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@2e
    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->ZE:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    #@2
    invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    #@5
    move-result-object v1

    #@6
    invoke-static {p2}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v0, v1, v2, p3}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onCreateView(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/dynamic/d;Landroid/os/Bundle;)Lcom/google/android/gms/dynamic/d;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_15

    #@d
    move-result-object v0

    #@e
    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/view/View;

    #@14
    return-object v0

    #@15
    :catch_15
    move-exception v0

    #@16
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@18
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@1b
    throw v1
.end method

.method public onDestroy()V
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->ZE:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onDestroy()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@9
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@c
    throw v1
.end method

.method public onDestroyView()V
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->ZE:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onDestroyView()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@9
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@c
    throw v1
.end method

.method public onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 7

    #@0
    const-string v0, "MapOptions"

    #@2
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/maps/GoogleMapOptions;

    #@8
    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->ZE:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    #@a
    invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    #@d
    move-result-object v2

    #@e
    invoke-interface {v1, v2, v0, p3}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onInflate(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Bundle;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    #@11
    return-void

    #@12
    :catch_12
    move-exception v0

    #@13
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@15
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@18
    throw v1
.end method

.method public onLowMemory()V
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->ZE:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onLowMemory()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@9
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@c
    throw v1
.end method

.method public onPause()V
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->ZE:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onPause()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@9
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@c
    throw v1
.end method

.method public onResume()V
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->ZE:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onResume()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@9
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@c
    throw v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->ZE:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@9
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@c
    throw v1
.end method

.method public onStart()V
    .registers 1

    #@0
    return-void
.end method

.method public onStop()V
    .registers 1

    #@0
    return-void
.end method
