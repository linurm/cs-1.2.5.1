.class public Lcom/google/android/gms/wearable/internal/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/wearable/internal/as;",
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

.method static a(Lcom/google/android/gms/wearable/internal/as;Landroid/os/Parcel;I)V
    .registers 7

    #@0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    iget v2, p0, Lcom/google/android/gms/wearable/internal/as;->versionCode:I

    #@7
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@a
    const/4 v1, 0x2

    #@b
    iget v2, p0, Lcom/google/android/gms/wearable/internal/as;->statusCode:I

    #@d
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@10
    const/4 v1, 0x3

    #@11
    iget-wide v2, p0, Lcom/google/android/gms/wearable/internal/as;->amb:J

    #@13
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@16
    const/4 v1, 0x4

    #@17
    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/as;->amd:Ljava/util/List;

    #@19
    const/4 v3, 0x0

    #@1a
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@1d
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@20
    return-void
.end method


# virtual methods
.method public cK(Landroid/os/Parcel;)Lcom/google/android/gms/wearable/internal/as;
    .registers 10

    #@0
    const/4 v2, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@4
    move-result v0

    #@5
    const-wide/16 v4, 0x0

    #@7
    const/4 v6, 0x0

    #@8
    move v3, v2

    #@9
    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@c
    move-result v1

    #@d
    if-ge v1, v0, :cond_34

    #@f
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@12
    move-result v1

    #@13
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@16
    move-result v7

    #@17
    packed-switch v7, :pswitch_data_5a

    #@1a
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1d
    goto :goto_9

    #@1e
    :pswitch_1e
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@21
    move-result v2

    #@22
    goto :goto_9

    #@23
    :pswitch_23
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@26
    move-result v3

    #@27
    goto :goto_9

    #@28
    :pswitch_28
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@2b
    move-result-wide v4

    #@2c
    goto :goto_9

    #@2d
    :pswitch_2d
    sget-object v6, Lcom/google/android/gms/wearable/internal/ak;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2f
    invoke-static {p1, v1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@32
    move-result-object v6

    #@33
    goto :goto_9

    #@34
    :cond_34
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@37
    move-result v1

    #@38
    if-eq v1, v0, :cond_53

    #@3a
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@3c
    new-instance v2, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string v3, "Overread allowed size end="

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@52
    throw v1

    #@53
    :cond_53
    new-instance v1, Lcom/google/android/gms/wearable/internal/as;

    #@55
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/wearable/internal/as;-><init>(IIJLjava/util/List;)V

    #@58
    return-object v1

    #@59
    nop

    #@5a
    :pswitch_data_5a
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/at;->cK(Landroid/os/Parcel;)Lcom/google/android/gms/wearable/internal/as;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public et(I)[Lcom/google/android/gms/wearable/internal/as;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/wearable/internal/as;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/at;->et(I)[Lcom/google/android/gms/wearable/internal/as;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
