.class public Lcom/google/android/gms/drive/realtime/internal/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;",
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

.method static a(Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;Landroid/os/Parcel;I)V
    .registers 7

    #@0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    iget v2, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;->xM:I

    #@7
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@a
    const/4 v1, 0x2

    #@b
    iget-object v2, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;->Lq:Ljava/lang/String;

    #@d
    const/4 v3, 0x0

    #@e
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@11
    const/4 v1, 0x3

    #@12
    iget v2, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;->mIndex:I

    #@14
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@17
    const/4 v1, 0x4

    #@18
    iget-boolean v2, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;->Lr:Z

    #@1a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@1d
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@20
    return-void
.end method


# virtual methods
.method public aS(Landroid/os/Parcel;)Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;
    .registers 9

    #@0
    const/4 v1, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@4
    move-result v4

    #@5
    const/4 v0, 0x0

    #@6
    move v2, v1

    #@7
    move v3, v1

    #@8
    :goto_8
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@b
    move-result v5

    #@c
    if-ge v5, v4, :cond_31

    #@e
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@11
    move-result v5

    #@12
    invoke-static {v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@15
    move-result v6

    #@16
    packed-switch v6, :pswitch_data_56

    #@19
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
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    goto :goto_8

    #@27
    :pswitch_27
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@2a
    move-result v2

    #@2b
    goto :goto_8

    #@2c
    :pswitch_2c
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@2f
    move-result v1

    #@30
    goto :goto_8

    #@31
    :cond_31
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@34
    move-result v5

    #@35
    if-eq v5, v4, :cond_50

    #@37
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@39
    new-instance v1, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string v2, "Overread allowed size end="

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@4f
    throw v0

    #@50
    :cond_50
    new-instance v4, Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;

    #@52
    invoke-direct {v4, v3, v0, v2, v1}, Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;-><init>(ILjava/lang/String;IZ)V

    #@55
    return-object v4

    #@56
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_22
        :pswitch_27
        :pswitch_2c
    .end packed-switch
.end method

.method public bP(I)[Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/realtime/internal/q;->aS(Landroid/os/Parcel;)Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/realtime/internal/q;->bP(I)[Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
