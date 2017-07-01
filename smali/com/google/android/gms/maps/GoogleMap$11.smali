.class Lcom/google/android/gms/maps/GoogleMap$11;
.super Lcom/google/android/gms/maps/internal/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerDragListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Zc:Lcom/google/android/gms/maps/GoogleMap;

.field final synthetic Zo:Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$11;->Zc:Lcom/google/android/gms/maps/GoogleMap;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$11;->Zo:Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;

    #@4
    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/m$a;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/maps/model/internal/f;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$11;->Zo:Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;

    #@2
    new-instance v1, Lcom/google/android/gms/maps/model/Marker;

    #@4
    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/maps/model/internal/f;)V

    #@7
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;->onMarkerDragStart(Lcom/google/android/gms/maps/model/Marker;)V

    #@a
    return-void
.end method

.method public c(Lcom/google/android/gms/maps/model/internal/f;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$11;->Zo:Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;

    #@2
    new-instance v1, Lcom/google/android/gms/maps/model/Marker;

    #@4
    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/maps/model/internal/f;)V

    #@7
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;->onMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V

    #@a
    return-void
.end method

.method public d(Lcom/google/android/gms/maps/model/internal/f;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$11;->Zo:Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;

    #@2
    new-instance v1, Lcom/google/android/gms/maps/model/Marker;

    #@4
    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/maps/model/internal/f;)V

    #@7
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;->onMarkerDrag(Lcom/google/android/gms/maps/model/Marker;)V

    #@a
    return-void
.end method
