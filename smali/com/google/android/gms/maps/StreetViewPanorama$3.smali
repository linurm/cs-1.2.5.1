.class Lcom/google/android/gms/maps/StreetViewPanorama$3;
.super Lcom/google/android/gms/maps/internal/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/StreetViewPanorama;->setOnStreetViewPanoramaClickListener(Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZP:Lcom/google/android/gms/maps/StreetViewPanorama;

.field final synthetic ZR:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/StreetViewPanorama;Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaClickListener;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanorama$3;->ZP:Lcom/google/android/gms/maps/StreetViewPanorama;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanorama$3;->ZR:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaClickListener;

    #@4
    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/r$a;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onStreetViewPanoramaClick(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama$3;->ZR:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaClickListener;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaClickListener;->onStreetViewPanoramaClick(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)V

    #@5
    return-void
.end method
