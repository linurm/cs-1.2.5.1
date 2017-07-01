.class public Lcom/google/android/gms/location/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/location/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static a(Lcom/google/android/gms/location/b;Landroid/os/Parcel;I)V
    .registers 7

    #@0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    iget v2, p0, Lcom/google/android/gms/location/b;->Vq:I

    #@7
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@a
    const/16 v1, 0x3e8

    #@c
    invoke-virtual {p0}, Lcom/google/android/gms/location/b;->getVersionCode()I

    #@f
    move-result v2

    #@10
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@13
    const/4 v1, 0x2

    #@14
    iget v2, p0, Lcom/google/android/gms/location/b;->Vr:I

    #@16
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@19
    const/4 v1, 0x3

    #@1a
    iget-wide v2, p0, Lcom/google/android/gms/location/b;->Vs:J

    #@1c
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@1f
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@22
    return-void
.end method


# virtual methods
.method public bs(Landroid/os/Parcel;)Lcom/google/android/gms/location/b;
    .registers 10

    #@0
    const/4 v2, 0x1

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@4
    move-result v0

    #@5
    const/4 v1, 0x0

    #@6
    const-wide/16 v4, 0x0

    #@8
    move v3, v2

    #@9
    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@c
    move-result v6

    #@d
    if-ge v6, v0, :cond_32

    #@f
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@12
    move-result v6

    #@13
    invoke-static {v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@16
    move-result v7

    #@17
    sparse-switch v7, :sswitch_data_58

    #@1a
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1d
    goto :goto_9

    #@1e
    :sswitch_1e
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@21
    move-result v2

    #@22
    goto :goto_9

    #@23
    :sswitch_23
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@26
    move-result v1

    #@27
    goto :goto_9

    #@28
    :sswitch_28
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@2b
    move-result v3

    #@2c
    goto :goto_9

    #@2d
    :sswitch_2d
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@30
    move-result-wide v4

    #@31
    goto :goto_9

    #@32
    :cond_32
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@35
    move-result v6

    #@36
    if-eq v6, v0, :cond_51

    #@38
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@3a
    new-instance v2, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string v3, "Overread allowed size end="

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@50
    throw v1

    #@51
    :cond_51
    new-instance v0, Lcom/google/android/gms/location/b;

    #@53
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/b;-><init>(IIIJ)V

    #@56
    return-object v0

    #@57
    nop

    #@58
    :sswitch_data_58
    .sparse-switch
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_28
        0x3 -> :sswitch_2d
        0x3e8 -> :sswitch_23
    .end sparse-switch
.end method

.method public cL(I)[Lcom/google/android/gms/location/b;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/location/b;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/c;->bs(Landroid/os/Parcel;)Lcom/google/android/gms/location/b;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/c;->cL(I)[Lcom/google/android/gms/location/b;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
