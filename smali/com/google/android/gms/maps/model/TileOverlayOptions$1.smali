.class Lcom/google/android/gms/maps/model/TileOverlayOptions$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/maps/model/TileProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/model/TileOverlayOptions;-><init>(ILandroid/os/IBinder;ZFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final abg:Lcom/google/android/gms/maps/model/internal/i;

.field final synthetic abh:Lcom/google/android/gms/maps/model/TileOverlayOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions$1;->abh:Lcom/google/android/gms/maps/model/TileOverlayOptions;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions$1;->abh:Lcom/google/android/gms/maps/model/TileOverlayOptions;

    #@7
    invoke-static {v0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->a(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/internal/i;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions$1;->abg:Lcom/google/android/gms/maps/model/internal/i;

    #@d
    return-void
.end method


# virtual methods
.method public getTile(III)Lcom/google/android/gms/maps/model/Tile;
    .registers 5

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions$1;->abg:Lcom/google/android/gms/maps/model/internal/i;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/maps/model/internal/i;->getTile(III)Lcom/google/android/gms/maps/model/Tile;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    #@5
    move-result-object v0

    #@6
    :goto_6
    return-object v0

    #@7
    :catch_7
    move-exception v0

    #@8
    const/4 v0, 0x0

    #@9
    goto :goto_6
.end method
