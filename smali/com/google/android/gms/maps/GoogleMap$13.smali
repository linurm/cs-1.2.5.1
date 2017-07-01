.class Lcom/google/android/gms/maps/GoogleMap$13;
.super Lcom/google/android/gms/maps/internal/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Zc:Lcom/google/android/gms/maps/GoogleMap;

.field final synthetic Zq:Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$13;->Zc:Lcom/google/android/gms/maps/GoogleMap;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$13;->Zq:Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;

    #@4
    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/d$a;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public f(Lcom/google/android/gms/maps/model/internal/f;)Lcom/google/android/gms/dynamic/d;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$13;->Zq:Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;

    #@2
    new-instance v1, Lcom/google/android/gms/maps/model/Marker;

    #@4
    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/maps/model/internal/f;)V

    #@7
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;->getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public g(Lcom/google/android/gms/maps/model/internal/f;)Lcom/google/android/gms/dynamic/d;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$13;->Zq:Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;

    #@2
    new-instance v1, Lcom/google/android/gms/maps/model/Marker;

    #@4
    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/maps/model/internal/f;)V

    #@7
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;->getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method
