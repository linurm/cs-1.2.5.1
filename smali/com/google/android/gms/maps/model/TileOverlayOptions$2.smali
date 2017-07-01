.class Lcom/google/android/gms/maps/model/TileOverlayOptions$2;
.super Lcom/google/android/gms/maps/model/internal/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/model/TileOverlayOptions;->tileProvider(Lcom/google/android/gms/maps/model/TileProvider;)Lcom/google/android/gms/maps/model/TileOverlayOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic abh:Lcom/google/android/gms/maps/model/TileOverlayOptions;

.field final synthetic abi:Lcom/google/android/gms/maps/model/TileProvider;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;Lcom/google/android/gms/maps/model/TileProvider;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions$2;->abh:Lcom/google/android/gms/maps/model/TileOverlayOptions;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions$2;->abi:Lcom/google/android/gms/maps/model/TileProvider;

    #@4
    invoke-direct {p0}, Lcom/google/android/gms/maps/model/internal/i$a;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public getTile(III)Lcom/google/android/gms/maps/model/Tile;
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions$2;->abi:Lcom/google/android/gms/maps/model/TileProvider;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/maps/model/TileProvider;->getTile(III)Lcom/google/android/gms/maps/model/Tile;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
