.class Lcom/google/android/gms/maps/GoogleMap$12;
.super Lcom/google/android/gms/maps/internal/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Zc:Lcom/google/android/gms/maps/GoogleMap;

.field final synthetic Zp:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$12;->Zc:Lcom/google/android/gms/maps/GoogleMap;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$12;->Zp:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;

    #@4
    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/g$a;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public e(Lcom/google/android/gms/maps/model/internal/f;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$12;->Zp:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;

    #@2
    new-instance v1, Lcom/google/android/gms/maps/model/Marker;

    #@4
    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/maps/model/internal/f;)V

    #@7
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;->onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V

    #@a
    return-void
.end method
