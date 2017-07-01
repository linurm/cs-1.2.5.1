.class Lcom/google/android/gms/maps/GoogleMap$10;
.super Lcom/google/android/gms/maps/internal/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Zc:Lcom/google/android/gms/maps/GoogleMap;

.field final synthetic Zn:Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$10;->Zc:Lcom/google/android/gms/maps/GoogleMap;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$10;->Zn:Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;

    #@4
    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/l$a;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/internal/f;)Z
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$10;->Zn:Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;

    #@2
    new-instance v1, Lcom/google/android/gms/maps/model/Marker;

    #@4
    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/maps/model/internal/f;)V

    #@7
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;->onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method
