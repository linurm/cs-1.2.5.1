.class public Lcom/google/android/gms/wearable/internal/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/wearable/internal/ak;",
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

.method static a(Lcom/google/android/gms/wearable/internal/ak;Landroid/os/Parcel;I)V
    .registers 7

    #@0
    const/4 v3, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@4
    move-result v0

    #@5
    const/4 v1, 0x1

    #@6
    iget v2, p0, Lcom/google/android/gms/wearable/internal/ak;->versionCode:I

    #@8
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@b
    const/4 v1, 0x2

    #@c
    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/ak;->packageName:Ljava/lang/String;

    #@e
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@11
    const/4 v1, 0x3

    #@12
    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/ak;->label:Ljava/lang/String;

    #@14
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@17
    const/4 v1, 0x4

    #@18
    iget-wide v2, p0, Lcom/google/android/gms/wearable/internal/ak;->amb:J

    #@1a
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@1d
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@20
    return-void
.end method


# virtual methods
.method public cG(Landroid/os/Parcel;)Lcom/google/android/gms/wearable/internal/ak;
    .registers 10

    #@0
    const/4 v2, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@4
    move-result v0

    #@5
    const/4 v1, 0x0

    #@6
    const-wide/16 v4, 0x0

    #@8
    move-object v3, v2

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
    packed-switch v7, :pswitch_data_58

    #@1a
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1d
    goto :goto_9

    #@1e
    :pswitch_1e
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@21
    move-result v1

    #@22
    goto :goto_9

    #@23
    :pswitch_23
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    goto :goto_9

    #@28
    :pswitch_28
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    goto :goto_9

    #@2d
    :pswitch_2d
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
    new-instance v0, Lcom/google/android/gms/wearable/internal/ak;

    #@53
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/wearable/internal/ak;-><init>(ILjava/lang/String;Ljava/lang/String;J)V

    #@56
    return-object v0

    #@57
    nop

    #@58
    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_23
        :pswitch_28
        :pswitch_2d
    .end packed-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/al;->cG(Landroid/os/Parcel;)Lcom/google/android/gms/wearable/internal/ak;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public ep(I)[Lcom/google/android/gms/wearable/internal/ak;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/wearable/internal/ak;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/al;->ep(I)[Lcom/google/android/gms/wearable/internal/ak;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
