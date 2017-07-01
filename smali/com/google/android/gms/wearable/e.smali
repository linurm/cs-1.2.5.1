.class public Lcom/google/android/gms/wearable/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/wearable/PutDataRequest;",
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

.method static a(Lcom/google/android/gms/wearable/PutDataRequest;Landroid/os/Parcel;I)V
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
    iget v2, p0, Lcom/google/android/gms/wearable/PutDataRequest;->xM:I

    #@8
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@b
    const/4 v1, 0x2

    #@c
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/PutDataRequest;->getUri()Landroid/net/Uri;

    #@f
    move-result-object v2

    #@10
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@13
    const/4 v1, 0x4

    #@14
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/PutDataRequest;->nm()Landroid/os/Bundle;

    #@17
    move-result-object v2

    #@18
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    #@1b
    const/4 v1, 0x5

    #@1c
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/PutDataRequest;->getData()[B

    #@1f
    move-result-object v2

    #@20
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[BZ)V

    #@23
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@26
    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/e;->cu(Landroid/os/Parcel;)Lcom/google/android/gms/wearable/PutDataRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public cu(Landroid/os/Parcel;)Lcom/google/android/gms/wearable/PutDataRequest;
    .registers 9

    #@0
    const/4 v1, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@4
    move-result v4

    #@5
    const/4 v3, 0x0

    #@6
    move-object v0, v1

    #@7
    move-object v2, v1

    #@8
    :goto_8
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@b
    move-result v5

    #@c
    if-ge v5, v4, :cond_35

    #@e
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@11
    move-result v5

    #@12
    invoke-static {v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@15
    move-result v6

    #@16
    packed-switch v6, :pswitch_data_5a

    #@19
    :pswitch_19
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1c
    goto :goto_8

    #@1d
    :pswitch_1d
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@20
    move-result v3

    #@21
    goto :goto_8

    #@22
    :pswitch_22
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@24
    invoke-static {p1, v5, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Landroid/net/Uri;

    #@2a
    goto :goto_8

    #@2b
    :pswitch_2b
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->q(Landroid/os/Parcel;I)Landroid/os/Bundle;

    #@2e
    move-result-object v1

    #@2f
    goto :goto_8

    #@30
    :pswitch_30
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->r(Landroid/os/Parcel;I)[B

    #@33
    move-result-object v2

    #@34
    goto :goto_8

    #@35
    :cond_35
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@38
    move-result v5

    #@39
    if-eq v5, v4, :cond_54

    #@3b
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@3d
    new-instance v1, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string v2, "Overread allowed size end="

    #@44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@53
    throw v0

    #@54
    :cond_54
    new-instance v4, Lcom/google/android/gms/wearable/PutDataRequest;

    #@56
    invoke-direct {v4, v3, v0, v1, v2}, Lcom/google/android/gms/wearable/PutDataRequest;-><init>(ILandroid/net/Uri;Landroid/os/Bundle;[B)V

    #@59
    return-object v4

    #@5a
    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_22
        :pswitch_19
        :pswitch_2b
        :pswitch_30
    .end packed-switch
.end method

.method public ec(I)[Lcom/google/android/gms/wearable/PutDataRequest;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/wearable/PutDataRequest;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/e;->ec(I)[Lcom/google/android/gms/wearable/PutDataRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
