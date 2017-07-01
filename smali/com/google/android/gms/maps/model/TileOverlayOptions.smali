.class public final Lcom/google/android/gms/maps/model/TileOverlayOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/TileOverlayOptionsCreator;


# instance fields
.field private aax:F

.field private aay:Z

.field private abd:Lcom/google/android/gms/maps/model/internal/i;

.field private abe:Lcom/google/android/gms/maps/model/TileProvider;

.field private abf:Z

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/maps/model/TileOverlayOptionsCreator;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/maps/model/TileOverlayOptionsCreator;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->CREATOR:Lcom/google/android/gms/maps/model/TileOverlayOptionsCreator;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->aay:Z

    #@6
    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->abf:Z

    #@8
    iput v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->xM:I

    #@a
    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;ZFZ)V
    .registers 7

    #@0
    const/4 v0, 0x1

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->aay:Z

    #@6
    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->abf:Z

    #@8
    iput p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->xM:I

    #@a
    invoke-static {p2}, Lcom/google/android/gms/maps/model/internal/i$a;->bg(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/i;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->abd:Lcom/google/android/gms/maps/model/internal/i;

    #@10
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->abd:Lcom/google/android/gms/maps/model/internal/i;

    #@12
    if-nez v0, :cond_1e

    #@14
    const/4 v0, 0x0

    #@15
    :goto_15
    iput-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->abe:Lcom/google/android/gms/maps/model/TileProvider;

    #@17
    iput-boolean p3, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->aay:Z

    #@19
    iput p4, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->aax:F

    #@1b
    iput-boolean p5, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->abf:Z

    #@1d
    return-void

    #@1e
    :cond_1e
    new-instance v0, Lcom/google/android/gms/maps/model/TileOverlayOptions$1;

    #@20
    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/TileOverlayOptions$1;-><init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;)V

    #@23
    goto :goto_15
.end method

.method static synthetic a(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/internal/i;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->abd:Lcom/google/android/gms/maps/model/internal/i;

    #@2
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public fadeIn(Z)Lcom/google/android/gms/maps/model/TileOverlayOptions;
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->abf:Z

    #@2
    return-object p0
.end method

.method public getFadeIn()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->abf:Z

    #@2
    return v0
.end method

.method public getTileProvider()Lcom/google/android/gms/maps/model/TileProvider;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->abe:Lcom/google/android/gms/maps/model/TileProvider;

    #@2
    return-object v0
.end method

.method getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->xM:I

    #@2
    return v0
.end method

.method public getZIndex()F
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->aax:F

    #@2
    return v0
.end method

.method public isVisible()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->aay:Z

    #@2
    return v0
.end method

.method jQ()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->abd:Lcom/google/android/gms/maps/model/internal/i;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/i;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public tileProvider(Lcom/google/android/gms/maps/model/TileProvider;)Lcom/google/android/gms/maps/model/TileOverlayOptions;
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->abe:Lcom/google/android/gms/maps/model/TileProvider;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->abe:Lcom/google/android/gms/maps/model/TileProvider;

    #@4
    if-nez v0, :cond_a

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    iput-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->abd:Lcom/google/android/gms/maps/model/internal/i;

    #@9
    return-object p0

    #@a
    :cond_a
    new-instance v0, Lcom/google/android/gms/maps/model/TileOverlayOptions$2;

    #@c
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/maps/model/TileOverlayOptions$2;-><init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;Lcom/google/android/gms/maps/model/TileProvider;)V

    #@f
    goto :goto_7
.end method

.method public visible(Z)Lcom/google/android/gms/maps/model/TileOverlayOptions;
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->aay:Z

    #@2
    return-object p0
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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/j;->a(Lcom/google/android/gms/maps/model/TileOverlayOptions;Landroid/os/Parcel;I)V

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/TileOverlayOptionsCreator;->a(Lcom/google/android/gms/maps/model/TileOverlayOptions;Landroid/os/Parcel;I)V

    #@d
    goto :goto_9
.end method

.method public zIndex(F)Lcom/google/android/gms/maps/model/TileOverlayOptions;
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->aax:F

    #@2
    return-object p0
.end method
