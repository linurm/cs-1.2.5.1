.class public Lcom/google/android/gms/maps/a;
.super Ljava/lang/Object;


# direct methods
.method static a(Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Parcel;I)V
    .registers 7

    #@0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->getVersionCode()I

    #@8
    move-result v2

    #@9
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@c
    const/4 v1, 0x2

    #@d
    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->jq()B

    #@10
    move-result v2

    #@11
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    #@14
    const/4 v1, 0x3

    #@15
    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->jr()B

    #@18
    move-result v2

    #@19
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    #@1c
    const/4 v1, 0x4

    #@1d
    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->getMapType()I

    #@20
    move-result v2

    #@21
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@24
    const/4 v1, 0x5

    #@25
    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->getCamera()Lcom/google/android/gms/maps/model/CameraPosition;

    #@28
    move-result-object v2

    #@29
    const/4 v3, 0x0

    #@2a
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@2d
    const/4 v1, 0x6

    #@2e
    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->js()B

    #@31
    move-result v2

    #@32
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    #@35
    const/4 v1, 0x7

    #@36
    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->jt()B

    #@39
    move-result v2

    #@3a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    #@3d
    const/16 v1, 0x8

    #@3f
    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->ju()B

    #@42
    move-result v2

    #@43
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    #@46
    const/16 v1, 0x9

    #@48
    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->jv()B

    #@4b
    move-result v2

    #@4c
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    #@4f
    const/16 v1, 0xa

    #@51
    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->jw()B

    #@54
    move-result v2

    #@55
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    #@58
    const/16 v1, 0xb

    #@5a
    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->jx()B

    #@5d
    move-result v2

    #@5e
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    #@61
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@64
    return-void
.end method
