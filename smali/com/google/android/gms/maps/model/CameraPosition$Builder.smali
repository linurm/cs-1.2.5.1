.class public final Lcom/google/android/gms/maps/model/CameraPosition$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/CameraPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private aan:Lcom/google/android/gms/maps/model/LatLng;

.field private aao:F

.field private aap:F

.field private aaq:F


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iget-object v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    #@5
    iput-object v0, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->aan:Lcom/google/android/gms/maps/model/LatLng;

    #@7
    iget v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    #@9
    iput v0, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->aao:F

    #@b
    iget v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    #@d
    iput v0, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->aap:F

    #@f
    iget v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    #@11
    iput v0, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->aaq:F

    #@13
    return-void
.end method


# virtual methods
.method public bearing(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->aaq:F

    #@2
    return-object p0
.end method

.method public build()Lcom/google/android/gms/maps/model/CameraPosition;
    .registers 6

    #@0
    new-instance v0, Lcom/google/android/gms/maps/model/CameraPosition;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->aan:Lcom/google/android/gms/maps/model/LatLng;

    #@4
    iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->aao:F

    #@6
    iget v3, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->aap:F

    #@8
    iget v4, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->aaq:F

    #@a
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/CameraPosition;-><init>(Lcom/google/android/gms/maps/model/LatLng;FFF)V

    #@d
    return-object v0
.end method

.method public target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->aan:Lcom/google/android/gms/maps/model/LatLng;

    #@2
    return-object p0
.end method

.method public tilt(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->aap:F

    #@2
    return-object p0
.end method

.method public zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->aao:F

    #@2
    return-object p0
.end method
