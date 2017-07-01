.class public Lcom/google/android/gms/wearable/internal/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;",
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

.method static a(Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;Landroid/os/Parcel;I)V
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
    iget v2, p0, Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;->xM:I

    #@8
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@b
    const/4 v1, 0x2

    #@c
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;->getId()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@13
    const/4 v1, 0x3

    #@14
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;->getDataItemKey()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@1b
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@1e
    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/j;->cw(Landroid/os/Parcel;)Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public cw(Landroid/os/Parcel;)Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@4
    move-result v3

    #@5
    const/4 v1, 0x0

    #@6
    move v2, v1

    #@7
    move-object v1, v0

    #@8
    :goto_8
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@b
    move-result v4

    #@c
    if-ge v4, v3, :cond_2c

    #@e
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@11
    move-result v4

    #@12
    invoke-static {v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@15
    move-result v5

    #@16
    packed-switch v5, :pswitch_data_52

    #@19
    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1c
    goto :goto_8

    #@1d
    :pswitch_1d
    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@20
    move-result v2

    #@21
    goto :goto_8

    #@22
    :pswitch_22
    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    goto :goto_8

    #@27
    :pswitch_27
    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    goto :goto_8

    #@2c
    :cond_2c
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@2f
    move-result v4

    #@30
    if-eq v4, v3, :cond_4b

    #@32
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@34
    new-instance v1, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string v2, "Overread allowed size end="

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@4a
    throw v0

    #@4b
    :cond_4b
    new-instance v3, Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;

    #@4d
    invoke-direct {v3, v2, v1, v0}, Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@50
    return-object v3

    #@51
    nop

    #@52
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_22
        :pswitch_27
    .end packed-switch
.end method

.method public ef(I)[Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/j;->ef(I)[Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
