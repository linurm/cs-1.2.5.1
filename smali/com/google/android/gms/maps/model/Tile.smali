.class public final Lcom/google/android/gms/maps/model/Tile;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/TileCreator;


# instance fields
.field public final data:[B

.field public final height:I

.field public final width:I

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/maps/model/TileCreator;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/maps/model/TileCreator;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/maps/model/Tile;->CREATOR:Lcom/google/android/gms/maps/model/TileCreator;

    #@7
    return-void
.end method

.method constructor <init>(III[B)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/maps/model/Tile;->xM:I

    #@5
    iput p2, p0, Lcom/google/android/gms/maps/model/Tile;->width:I

    #@7
    iput p3, p0, Lcom/google/android/gms/maps/model/Tile;->height:I

    #@9
    iput-object p4, p0, Lcom/google/android/gms/maps/model/Tile;->data:[B

    #@b
    return-void
.end method

.method public constructor <init>(II[B)V
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/maps/model/Tile;-><init>(III[B)V

    #@4
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/Tile;->xM:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    invoke-static {}, Lcom/google/android/gms/maps/internal/v;->jL()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_a

    #@6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/i;->a(Lcom/google/android/gms/maps/model/Tile;Landroid/os/Parcel;I)V

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/TileCreator;->a(Lcom/google/android/gms/maps/model/Tile;Landroid/os/Parcel;I)V

    #@d
    goto :goto_9
.end method
