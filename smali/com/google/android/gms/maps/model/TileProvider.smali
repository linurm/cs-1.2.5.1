.class public interface abstract Lcom/google/android/gms/maps/model/TileProvider;
.super Ljava/lang/Object;


# static fields
.field public static final NO_TILE:Lcom/google/android/gms/maps/model/Tile;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/4 v2, -0x1

    #@1
    new-instance v0, Lcom/google/android/gms/maps/model/Tile;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {v0, v2, v2, v1}, Lcom/google/android/gms/maps/model/Tile;-><init>(II[B)V

    #@7
    sput-object v0, Lcom/google/android/gms/maps/model/TileProvider;->NO_TILE:Lcom/google/android/gms/maps/model/Tile;

    #@9
    return-void
.end method


# virtual methods
.method public abstract getTile(III)Lcom/google/android/gms/maps/model/Tile;
.end method
