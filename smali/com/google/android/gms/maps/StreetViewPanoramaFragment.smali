.class public Lcom/google/android/gms/maps/StreetViewPanoramaFragment;
.super Landroid/app/Fragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;,
        Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;
    }
.end annotation


# instance fields
.field private final ZS:Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;

.field private ZT:Lcom/google/android/gms/maps/StreetViewPanorama;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    #@3
    new-instance v0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;

    #@5
    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;-><init>(Landroid/app/Fragment;)V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->ZS:Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;

    #@a
    return-void
.end method

.method public static newInstance()Lcom/google/android/gms/maps/StreetViewPanoramaFragment;
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;-><init>()V

    #@5
    return-object v0
.end method

.method public static newInstance(Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)Lcom/google/android/gms/maps/StreetViewPanoramaFragment;
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;-><init>()V

    #@5
    new-instance v1, Landroid/os/Bundle;

    #@7
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@a
    const-string v2, "StreetViewPanoramaOptions"

    #@c
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@f
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->setArguments(Landroid/os/Bundle;)V

    #@12
    return-object v0
.end method


# virtual methods
.method public final getStreetViewPanorama()Lcom/google/android/gms/maps/StreetViewPanorama;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->jC()Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    #@4
    move-result-object v1

    #@5
    if-nez v1, :cond_8

    #@7
    :cond_7
    :goto_7
    return-object v0

    #@8
    :cond_8
    :try_start_8
    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;->getStreetViewPanorama()Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_2c

    #@b
    move-result-object v1

    #@c
    if-eqz v1, :cond_7

    #@e
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->ZT:Lcom/google/android/gms/maps/StreetViewPanorama;

    #@10
    if-eqz v0, :cond_22

    #@12
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->ZT:Lcom/google/android/gms/maps/StreetViewPanorama;

    #@14
    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanorama;->jB()Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    #@17
    move-result-object v0

    #@18
    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;->asBinder()Landroid/os/IBinder;

    #@1b
    move-result-object v0

    #@1c
    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;->asBinder()Landroid/os/IBinder;

    #@1f
    move-result-object v2

    #@20
    if-eq v0, v2, :cond_29

    #@22
    :cond_22
    new-instance v0, Lcom/google/android/gms/maps/StreetViewPanorama;

    #@24
    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/StreetViewPanorama;-><init>(Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;)V

    #@27
    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->ZT:Lcom/google/android/gms/maps/StreetViewPanorama;

    #@29
    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->ZT:Lcom/google/android/gms/maps/StreetViewPanorama;

    #@2b
    goto :goto_7

    #@2c
    :catch_2c
    move-exception v0

    #@2d
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@2f
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@32
    throw v1
.end method

.method protected jC()Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->ZS:Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->jz()V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->ZS:Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;

    #@7
    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->gH()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    #@a
    move-result-object v0

    #@b
    if-nez v0, :cond_f

    #@d
    const/4 v0, 0x0

    #@e
    :goto_e
    return-object v0

    #@f
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->ZS:Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;

    #@11
    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->gH()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;

    #@17
    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;->jC()Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    #@1a
    move-result-object v0

    #@1b
    goto :goto_e
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3

    #@0
    if-eqz p1, :cond_b

    #@2
    const-class v0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@b
    :cond_b
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    #@e
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3

    #@0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->ZS:Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;

    #@5
    invoke-static {v0, p1}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->a(Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;Landroid/app/Activity;)V

    #@8
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    #@0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->ZS:Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;

    #@5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->onCreate(Landroid/os/Bundle;)V

    #@8
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->ZS:Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->ZS:Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->onDestroy()V

    #@5
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    #@8
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->ZS:Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->onDestroyView()V

    #@5
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    #@8
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 6

    #@0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->ZS:Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;

    #@5
    invoke-static {v0, p1}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->a(Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;Landroid/app/Activity;)V

    #@8
    new-instance v0, Landroid/os/Bundle;

    #@a
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@d
    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->ZS:Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;

    #@f
    invoke-virtual {v1, p1, v0, p3}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    #@12
    return-void
.end method

.method public onLowMemory()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->ZS:Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->onLowMemory()V

    #@5
    invoke-super {p0}, Landroid/app/Fragment;->onLowMemory()V

    #@8
    return-void
.end method

.method public onPause()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->ZS:Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->onPause()V

    #@5
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    #@8
    return-void
.end method

.method public onResume()V
    .registers 2

    #@0
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->ZS:Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;

    #@5
    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->onResume()V

    #@8
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    #@0
    if-eqz p1, :cond_b

    #@2
    const-class v0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@b
    :cond_b
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@e
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->ZS:Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;

    #@10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@13
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .registers 2

    #@0
    invoke-super {p0, p1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    #@3
    return-void
.end method
