.class Lcom/google/android/gms/maps/StreetViewPanorama$2;
.super Lcom/google/android/gms/maps/internal/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/StreetViewPanorama;->setOnStreetViewPanoramaCameraChangeListener(Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaCameraChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZP:Lcom/google/android/gms/maps/StreetViewPanorama;

.field final synthetic ZQ:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaCameraChangeListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/StreetViewPanorama;Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaCameraChangeListener;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanorama$2;->ZP:Lcom/google/android/gms/maps/StreetViewPanorama;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanorama$2;->ZQ:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaCameraChangeListener;

    #@4
    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/p$a;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onStreetViewPanoramaCameraChange(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama$2;->ZQ:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaCameraChangeListener;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaCameraChangeListener;->onStreetViewPanoramaCameraChange(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;)V

    #@5
    return-void
.end method
