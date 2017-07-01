.class public final Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/StreetViewPanoramaOptionsCreator;


# instance fields
.field private ZV:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

.field private ZW:Ljava/lang/String;

.field private ZX:Lcom/google/android/gms/maps/model/LatLng;

.field private ZY:Ljava/lang/Integer;

.field private ZZ:Ljava/lang/Boolean;

.field private Zt:Ljava/lang/Boolean;

.field private Zz:Ljava/lang/Boolean;

.field private aaa:Ljava/lang/Boolean;

.field private aab:Ljava/lang/Boolean;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/maps/StreetViewPanoramaOptionsCreator;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptionsCreator;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->CREATOR:Lcom/google/android/gms/maps/StreetViewPanoramaOptionsCreator;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    #@0
    const/4 v1, 0x1

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->ZZ:Ljava/lang/Boolean;

    #@a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->Zz:Ljava/lang/Boolean;

    #@10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->aaa:Ljava/lang/Boolean;

    #@16
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->aab:Ljava/lang/Boolean;

    #@1c
    iput v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->xM:I

    #@1e
    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/maps/model/StreetViewPanoramaCamera;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/Integer;BBBBB)V
    .registers 13

    #@0
    const/4 v1, 0x1

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->ZZ:Ljava/lang/Boolean;

    #@a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->Zz:Ljava/lang/Boolean;

    #@10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->aaa:Ljava/lang/Boolean;

    #@16
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->aab:Ljava/lang/Boolean;

    #@1c
    iput p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->xM:I

    #@1e
    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->ZV:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    #@20
    iput-object p4, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->ZX:Lcom/google/android/gms/maps/model/LatLng;

    #@22
    iput-object p5, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->ZY:Ljava/lang/Integer;

    #@24
    iput-object p3, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->ZW:Ljava/lang/String;

    #@26
    invoke-static {p6}, Lcom/google/android/gms/maps/internal/a;->a(B)Ljava/lang/Boolean;

    #@29
    move-result-object v0

    #@2a
    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->ZZ:Ljava/lang/Boolean;

    #@2c
    invoke-static {p7}, Lcom/google/android/gms/maps/internal/a;->a(B)Ljava/lang/Boolean;

    #@2f
    move-result-object v0

    #@30
    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->Zz:Ljava/lang/Boolean;

    #@32
    invoke-static {p8}, Lcom/google/android/gms/maps/internal/a;->a(B)Ljava/lang/Boolean;

    #@35
    move-result-object v0

    #@36
    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->aaa:Ljava/lang/Boolean;

    #@38
    invoke-static {p9}, Lcom/google/android/gms/maps/internal/a;->a(B)Ljava/lang/Boolean;

    #@3b
    move-result-object v0

    #@3c
    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->aab:Ljava/lang/Boolean;

    #@3e
    invoke-static {p10}, Lcom/google/android/gms/maps/internal/a;->a(B)Ljava/lang/Boolean;

    #@41
    move-result-object v0

    #@42
    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->Zt:Ljava/lang/Boolean;

    #@44
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

.method public getPanningGesturesEnabled()Ljava/lang/Boolean;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->aaa:Ljava/lang/Boolean;

    #@2
    return-object v0
.end method

.method public getPanoramaId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->ZW:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPosition()Lcom/google/android/gms/maps/model/LatLng;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->ZX:Lcom/google/android/gms/maps/model/LatLng;

    #@2
    return-object v0
.end method

.method public getRadius()Ljava/lang/Integer;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->ZY:Ljava/lang/Integer;

    #@2
    return-object v0
.end method

.method public getStreetNamesEnabled()Ljava/lang/Boolean;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->aab:Ljava/lang/Boolean;

    #@2
    return-object v0
.end method

.method public getStreetViewPanoramaCamera()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->ZV:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    #@2
    return-object v0
.end method

.method public getUseViewLifecycleInFragment()Ljava/lang/Boolean;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->Zt:Ljava/lang/Boolean;

    #@2
    return-object v0
.end method

.method public getUserNavigationEnabled()Ljava/lang/Boolean;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->ZZ:Ljava/lang/Boolean;

    #@2
    return-object v0
.end method

.method getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->xM:I

    #@2
    return v0
.end method

.method public getZoomGesturesEnabled()Ljava/lang/Boolean;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->Zz:Ljava/lang/Boolean;

    #@2
    return-object v0
.end method

.method jD()B
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->ZZ:Ljava/lang/Boolean;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/a;->c(Ljava/lang/Boolean;)B

    #@5
    move-result v0

    #@6
    return v0
.end method

.method jE()B
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->aaa:Ljava/lang/Boolean;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/a;->c(Ljava/lang/Boolean;)B

    #@5
    move-result v0

    #@6
    return v0
.end method

.method jF()B
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->aab:Ljava/lang/Boolean;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/a;->c(Ljava/lang/Boolean;)B

    #@5
    move-result v0

    #@6
    return v0
.end method

.method jr()B
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->Zt:Ljava/lang/Boolean;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/a;->c(Ljava/lang/Boolean;)B

    #@5
    move-result v0

    #@6
    return v0
.end method

.method jv()B
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->Zz:Ljava/lang/Boolean;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/a;->c(Ljava/lang/Boolean;)B

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public panningGesturesEnabled(Z)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .registers 3

    #@0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->aaa:Ljava/lang/Boolean;

    #@6
    return-object p0
.end method

.method public panoramaCamera(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->ZV:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    #@2
    return-object p0
.end method

.method public panoramaId(Ljava/lang/String;)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->ZW:Ljava/lang/String;

    #@2
    return-object p0
.end method

.method public position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->ZX:Lcom/google/android/gms/maps/model/LatLng;

    #@2
    return-object p0
.end method

.method public position(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/Integer;)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->ZX:Lcom/google/android/gms/maps/model/LatLng;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->ZY:Ljava/lang/Integer;

    #@4
    return-object p0
.end method

.method public streetNamesEnabled(Z)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .registers 3

    #@0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->aab:Ljava/lang/Boolean;

    #@6
    return-object p0
.end method

.method public useViewLifecycleInFragment(Z)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .registers 3

    #@0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->Zt:Ljava/lang/Boolean;

    #@6
    return-object p0
.end method

.method public userNavigationEnabled(Z)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .registers 3

    #@0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->ZZ:Ljava/lang/Boolean;

    #@6
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/StreetViewPanoramaOptionsCreator;->a(Lcom/google/android/gms/maps/StreetViewPanoramaOptions;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method

.method public zoomGesturesEnabled(Z)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .registers 3

    #@0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->Zz:Ljava/lang/Boolean;

    #@6
    return-object p0
.end method
