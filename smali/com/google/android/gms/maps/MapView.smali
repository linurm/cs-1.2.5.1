.class public Lcom/google/android/gms/maps/MapView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/MapView$a;,
        Lcom/google/android/gms/maps/MapView$b;
    }
.end annotation


# instance fields
.field private ZD:Lcom/google/android/gms/maps/GoogleMap;

.field private final ZG:Lcom/google/android/gms/maps/MapView$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    #@0
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@3
    new-instance v0, Lcom/google/android/gms/maps/MapView$b;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/maps/MapView$b;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V

    #@9
    iput-object v0, p0, Lcom/google/android/gms/maps/MapView;->ZG:Lcom/google/android/gms/maps/MapView$b;

    #@b
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    #@0
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    new-instance v0, Lcom/google/android/gms/maps/MapView$b;

    #@5
    invoke-static {p1, p2}, Lcom/google/android/gms/maps/GoogleMapOptions;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/GoogleMapOptions;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/maps/MapView$b;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V

    #@c
    iput-object v0, p0, Lcom/google/android/gms/maps/MapView;->ZG:Lcom/google/android/gms/maps/MapView$b;

    #@e
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    #@0
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    new-instance v0, Lcom/google/android/gms/maps/MapView$b;

    #@5
    invoke-static {p1, p2}, Lcom/google/android/gms/maps/GoogleMapOptions;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/GoogleMapOptions;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/maps/MapView$b;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V

    #@c
    iput-object v0, p0, Lcom/google/android/gms/maps/MapView;->ZG:Lcom/google/android/gms/maps/MapView$b;

    #@e
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V
    .registers 4

    #@0
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@3
    new-instance v0, Lcom/google/android/gms/maps/MapView$b;

    #@5
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/maps/MapView$b;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/maps/MapView;->ZG:Lcom/google/android/gms/maps/MapView$b;

    #@a
    return-void
.end method


# virtual methods
.method public final getMap()Lcom/google/android/gms/maps/GoogleMap;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->ZD:Lcom/google/android/gms/maps/GoogleMap;

    #@2
    if-eqz v0, :cond_7

    #@4
    iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->ZD:Lcom/google/android/gms/maps/GoogleMap;

    #@6
    :goto_6
    return-object v0

    #@7
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->ZG:Lcom/google/android/gms/maps/MapView$b;

    #@9
    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView$b;->jz()V

    #@c
    iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->ZG:Lcom/google/android/gms/maps/MapView$b;

    #@e
    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView$b;->gH()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    #@11
    move-result-object v0

    #@12
    if-nez v0, :cond_16

    #@14
    const/4 v0, 0x0

    #@15
    goto :goto_6

    #@16
    :cond_16
    :try_start_16
    new-instance v1, Lcom/google/android/gms/maps/GoogleMap;

    #@18
    iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->ZG:Lcom/google/android/gms/maps/MapView$b;

    #@1a
    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView$b;->gH()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Lcom/google/android/gms/maps/MapView$a;

    #@20
    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView$a;->jA()Lcom/google/android/gms/maps/internal/IMapViewDelegate;

    #@23
    move-result-object v0

    #@24
    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapViewDelegate;->getMap()Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@27
    move-result-object v0

    #@28
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;-><init>(Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;)V

    #@2b
    iput-object v1, p0, Lcom/google/android/gms/maps/MapView;->ZD:Lcom/google/android/gms/maps/GoogleMap;
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_2d} :catch_30

    #@2d
    iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->ZD:Lcom/google/android/gms/maps/GoogleMap;

    #@2f
    goto :goto_6

    #@30
    :catch_30
    move-exception v0

    #@31
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@33
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@36
    throw v1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->ZG:Lcom/google/android/gms/maps/MapView$b;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapView$b;->onCreate(Landroid/os/Bundle;)V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->ZG:Lcom/google/android/gms/maps/MapView$b;

    #@7
    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView$b;->gH()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    #@a
    move-result-object v0

    #@b
    if-nez v0, :cond_12

    #@d
    iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->ZG:Lcom/google/android/gms/maps/MapView$b;

    #@f
    invoke-static {p0}, Lcom/google/android/gms/maps/MapView$b;->b(Landroid/widget/FrameLayout;)V

    #@12
    :cond_12
    return-void
.end method

.method public final onDestroy()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->ZG:Lcom/google/android/gms/maps/MapView$b;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView$b;->onDestroy()V

    #@5
    return-void
.end method

.method public final onLowMemory()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->ZG:Lcom/google/android/gms/maps/MapView$b;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView$b;->onLowMemory()V

    #@5
    return-void
.end method

.method public final onPause()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->ZG:Lcom/google/android/gms/maps/MapView$b;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView$b;->onPause()V

    #@5
    return-void
.end method

.method public final onResume()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->ZG:Lcom/google/android/gms/maps/MapView$b;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView$b;->onResume()V

    #@5
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->ZG:Lcom/google/android/gms/maps/MapView$b;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapView$b;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@5
    return-void
.end method
