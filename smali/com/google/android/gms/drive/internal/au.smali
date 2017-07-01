.class public Lcom/google/android/gms/drive/internal/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;",
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

.method static a(Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;Landroid/os/Parcel;I)V
    .registers 7

    #@0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    iget v2, p0, Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;->xM:I

    #@7
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@a
    const/4 v1, 0x2

    #@b
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;->Hz:Lcom/google/android/gms/drive/DriveId;

    #@d
    const/4 v3, 0x0

    #@e
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@11
    const/4 v1, 0x3

    #@12
    iget v2, p0, Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;->Iq:I

    #@14
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@17
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@1a
    return-void
.end method


# virtual methods
.method public av(Landroid/os/Parcel;)Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@4
    move-result v3

    #@5
    const/4 v0, 0x0

    #@6
    move v2, v1

    #@7
    :goto_7
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@a
    move-result v4

    #@b
    if-ge v4, v3, :cond_2f

    #@d
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@10
    move-result v4

    #@11
    invoke-static {v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@14
    move-result v5

    #@15
    packed-switch v5, :pswitch_data_54

    #@18
    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1b
    goto :goto_7

    #@1c
    :pswitch_1c
    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@1f
    move-result v1

    #@20
    goto :goto_7

    #@21
    :pswitch_21
    sget-object v0, Lcom/google/android/gms/drive/DriveId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23
    invoke-static {p1, v4, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Lcom/google/android/gms/drive/DriveId;

    #@29
    goto :goto_7

    #@2a
    :pswitch_2a
    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@2d
    move-result v2

    #@2e
    goto :goto_7

    #@2f
    :cond_2f
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@32
    move-result v4

    #@33
    if-eq v4, v3, :cond_4e

    #@35
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@37
    new-instance v1, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string v2, "Overread allowed size end="

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@4d
    throw v0

    #@4e
    :cond_4e
    new-instance v3, Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;

    #@50
    invoke-direct {v3, v1, v0, v2}, Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;-><init>(ILcom/google/android/gms/drive/DriveId;I)V

    #@53
    return-object v3

    #@54
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_21
        :pswitch_2a
    .end packed-switch
.end method

.method public br(I)[Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/au;->av(Landroid/os/Parcel;)Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/au;->br(I)[Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
