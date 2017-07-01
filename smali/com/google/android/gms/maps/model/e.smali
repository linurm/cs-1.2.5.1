.class public Lcom/google/android/gms/maps/model/e;
.super Ljava/lang/Object;


# direct methods
.method static a(Lcom/google/android/gms/maps/model/LatLng;Landroid/os/Parcel;I)V
    .registers 7

    #@0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/LatLng;->getVersionCode()I

    #@8
    move-result v2

    #@9
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@c
    const/4 v1, 0x2

    #@d
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    #@f
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ID)V

    #@12
    const/4 v1, 0x3

    #@13
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    #@15
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ID)V

    #@18
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@1b
    return-void
.end method
