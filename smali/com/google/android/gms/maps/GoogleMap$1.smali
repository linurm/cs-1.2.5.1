.class Lcom/google/android/gms/maps/GoogleMap$1;
.super Lcom/google/android/gms/maps/internal/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/GoogleMap;->setOnIndoorStateChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Zb:Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;

.field final synthetic Zc:Lcom/google/android/gms/maps/GoogleMap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$1;->Zc:Lcom/google/android/gms/maps/GoogleMap;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$1;->Zb:Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;

    #@4
    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/f$a;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/internal/d;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$1;->Zb:Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;

    #@2
    new-instance v1, Lcom/google/android/gms/maps/model/IndoorBuilding;

    #@4
    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/IndoorBuilding;-><init>(Lcom/google/android/gms/maps/model/internal/d;)V

    #@7
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;->onIndoorLevelActivated(Lcom/google/android/gms/maps/model/IndoorBuilding;)V

    #@a
    return-void
.end method

.method public onIndoorBuildingFocused()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$1;->Zb:Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;->onIndoorBuildingFocused()V

    #@5
    return-void
.end method
