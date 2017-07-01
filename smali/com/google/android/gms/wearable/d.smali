.class public Lcom/google/android/gms/wearable/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/wearable/c;",
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

.method static a(Lcom/google/android/gms/wearable/c;Landroid/os/Parcel;I)V
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
    iget v2, p0, Lcom/google/android/gms/wearable/c;->xM:I

    #@8
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@b
    const/4 v1, 0x2

    #@c
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/c;->getName()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@13
    const/4 v1, 0x3

    #@14
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/c;->getAddress()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@1b
    const/4 v1, 0x4

    #@1c
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/c;->getType()I

    #@1f
    move-result v2

    #@20
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@23
    const/4 v1, 0x5

    #@24
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/c;->getRole()I

    #@27
    move-result v2

    #@28
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@2b
    const/4 v1, 0x6

    #@2c
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/c;->isEnabled()Z

    #@2f
    move-result v2

    #@30
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@33
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@36
    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/d;->ct(Landroid/os/Parcel;)Lcom/google/android/gms/wearable/c;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public ct(Landroid/os/Parcel;)Lcom/google/android/gms/wearable/c;
    .registers 11

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@5
    move-result v0

    #@6
    move-object v3, v2

    #@7
    move v1, v6

    #@8
    move v4, v6

    #@9
    move v5, v6

    #@a
    :goto_a
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@d
    move-result v7

    #@e
    if-ge v7, v0, :cond_3d

    #@10
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@13
    move-result v7

    #@14
    invoke-static {v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@17
    move-result v8

    #@18
    packed-switch v8, :pswitch_data_62

    #@1b
    invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1e
    goto :goto_a

    #@1f
    :pswitch_1f
    invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@22
    move-result v1

    #@23
    goto :goto_a

    #@24
    :pswitch_24
    invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    goto :goto_a

    #@29
    :pswitch_29
    invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    goto :goto_a

    #@2e
    :pswitch_2e
    invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@31
    move-result v4

    #@32
    goto :goto_a

    #@33
    :pswitch_33
    invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@36
    move-result v5

    #@37
    goto :goto_a

    #@38
    :pswitch_38
    invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@3b
    move-result v6

    #@3c
    goto :goto_a

    #@3d
    :cond_3d
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@40
    move-result v7

    #@41
    if-eq v7, v0, :cond_5c

    #@43
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@45
    new-instance v2, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string v3, "Overread allowed size end="

    #@4c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@5b
    throw v1

    #@5c
    :cond_5c
    new-instance v0, Lcom/google/android/gms/wearable/c;

    #@5e
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/wearable/c;-><init>(ILjava/lang/String;Ljava/lang/String;IIZ)V

    #@61
    return-object v0

    #@62
    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_24
        :pswitch_29
        :pswitch_2e
        :pswitch_33
        :pswitch_38
    .end packed-switch
.end method

.method public eb(I)[Lcom/google/android/gms/wearable/c;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/wearable/c;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/d;->eb(I)[Lcom/google/android/gms/wearable/c;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
