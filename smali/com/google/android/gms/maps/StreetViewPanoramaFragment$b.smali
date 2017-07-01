.class Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;
.super Lcom/google/android/gms/dynamic/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/StreetViewPanoramaFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/a",
        "<",
        "Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final Mj:Landroid/app/Fragment;

.field protected ZF:Lcom/google/android/gms/dynamic/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/dynamic/f",
            "<",
            "Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;",
            ">;"
        }
    .end annotation
.end field

.field private og:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Fragment;)V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/dynamic/a;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->Mj:Landroid/app/Fragment;

    #@5
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;Landroid/app/Activity;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->setActivity(Landroid/app/Activity;)V

    #@3
    return-void
.end method

.method private setActivity(Landroid/app/Activity;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->og:Landroid/app/Activity;

    #@2
    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->jz()V

    #@5
    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/dynamic/f;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamic/f",
            "<",
            "Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;",
            ">;)V"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->ZF:Lcom/google/android/gms/dynamic/f;

    #@2
    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->jz()V

    #@5
    return-void
.end method

.method public jz()V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->og:Landroid/app/Activity;

    #@2
    if-eqz v0, :cond_2f

    #@4
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->ZF:Lcom/google/android/gms/dynamic/f;

    #@6
    if-eqz v0, :cond_2f

    #@8
    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->gH()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    #@b
    move-result-object v0

    #@c
    if-nez v0, :cond_2f

    #@e
    :try_start_e
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->og:Landroid/app/Activity;

    #@10
    invoke-static {v0}, Lcom/google/android/gms/maps/MapsInitializer;->initialize(Landroid/content/Context;)I

    #@13
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->og:Landroid/app/Activity;

    #@15
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/u;->H(Landroid/content/Context;)Lcom/google/android/gms/maps/internal/c;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->og:Landroid/app/Activity;

    #@1b
    invoke-static {v1}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    #@1e
    move-result-object v1

    #@1f
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/c;->j(Lcom/google/android/gms/dynamic/d;)Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    #@22
    move-result-object v0

    #@23
    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->ZF:Lcom/google/android/gms/dynamic/f;

    #@25
    new-instance v2, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;

    #@27
    iget-object v3, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->Mj:Landroid/app/Fragment;

    #@29
    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;-><init>(Landroid/app/Fragment;Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;)V

    #@2c
    invoke-interface {v1, v2}, Lcom/google/android/gms/dynamic/f;->a(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_2f} :catch_30
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_e .. :try_end_2f} :catch_37

    #@2f
    :cond_2f
    :goto_2f
    return-void

    #@30
    :catch_30
    move-exception v0

    #@31
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@33
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@36
    throw v1

    #@37
    :catch_37
    move-exception v0

    #@38
    goto :goto_2f
.end method
