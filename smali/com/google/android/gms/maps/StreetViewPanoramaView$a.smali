.class Lcom/google/android/gms/maps/StreetViewPanoramaView$a;
.super Lcom/google/android/gms/dynamic/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/StreetViewPanoramaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/a",
        "<",
        "Lcom/google/android/gms/maps/StreetViewPanoramaView$b;",
        ">;"
    }
.end annotation


# instance fields
.field protected ZF:Lcom/google/android/gms/dynamic/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/dynamic/f",
            "<",
            "Lcom/google/android/gms/maps/StreetViewPanoramaView$b;",
            ">;"
        }
    .end annotation
.end field

.field private final ZK:Landroid/view/ViewGroup;

.field private final aad:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)V
    .registers 4

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/dynamic/a;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->ZK:Landroid/view/ViewGroup;

    #@5
    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->mContext:Landroid/content/Context;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->aad:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    #@9
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
            "Lcom/google/android/gms/maps/StreetViewPanoramaView$b;",
            ">;)V"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->ZF:Lcom/google/android/gms/dynamic/f;

    #@2
    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->jz()V

    #@5
    return-void
.end method

.method public jz()V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->ZF:Lcom/google/android/gms/dynamic/f;

    #@2
    if-eqz v0, :cond_28

    #@4
    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->gH()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    #@7
    move-result-object v0

    #@8
    if-nez v0, :cond_28

    #@a
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->mContext:Landroid/content/Context;

    #@c
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/u;->H(Landroid/content/Context;)Lcom/google/android/gms/maps/internal/c;

    #@f
    move-result-object v0

    #@10
    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->mContext:Landroid/content/Context;

    #@12
    invoke-static {v1}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    #@15
    move-result-object v1

    #@16
    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->aad:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    #@18
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/maps/internal/c;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;

    #@1b
    move-result-object v0

    #@1c
    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->ZF:Lcom/google/android/gms/dynamic/f;

    #@1e
    new-instance v2, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;

    #@20
    iget-object v3, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->ZK:Landroid/view/ViewGroup;

    #@22
    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;-><init>(Landroid/view/ViewGroup;Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;)V

    #@25
    invoke-interface {v1, v2}, Lcom/google/android/gms/dynamic/f;->a(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_28} :catch_29
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_a .. :try_end_28} :catch_30

    #@28
    :cond_28
    :goto_28
    return-void

    #@29
    :catch_29
    move-exception v0

    #@2a
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@2c
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@2f
    throw v1

    #@30
    :catch_30
    move-exception v0

    #@31
    goto :goto_28
.end method
