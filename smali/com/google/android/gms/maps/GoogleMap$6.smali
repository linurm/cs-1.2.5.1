.class Lcom/google/android/gms/maps/GoogleMap$6;
.super Lcom/google/android/gms/maps/internal/ILocationSourceDelegate$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/GoogleMap;->setLocationSource(Lcom/google/android/gms/maps/LocationSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Zc:Lcom/google/android/gms/maps/GoogleMap;

.field final synthetic Zh:Lcom/google/android/gms/maps/LocationSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/LocationSource;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$6;->Zc:Lcom/google/android/gms/maps/GoogleMap;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$6;->Zh:Lcom/google/android/gms/maps/LocationSource;

    #@4
    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/ILocationSourceDelegate$a;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public activate(Lcom/google/android/gms/maps/internal/h;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$6;->Zh:Lcom/google/android/gms/maps/LocationSource;

    #@2
    new-instance v1, Lcom/google/android/gms/maps/GoogleMap$6$1;

    #@4
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/GoogleMap$6$1;-><init>(Lcom/google/android/gms/maps/GoogleMap$6;Lcom/google/android/gms/maps/internal/h;)V

    #@7
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/LocationSource;->activate(Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;)V

    #@a
    return-void
.end method

.method public deactivate()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$6;->Zh:Lcom/google/android/gms/maps/LocationSource;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/LocationSource;->deactivate()V

    #@5
    return-void
.end method
