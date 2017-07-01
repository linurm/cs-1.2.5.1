.class public Lcom/google/android/gms/drive/internal/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;",
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

.method static a(Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;Landroid/os/Parcel;I)V
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
    iget v2, p0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->xM:I

    #@8
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@b
    const/4 v1, 0x2

    #@c
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->IE:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@e
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@11
    const/4 v1, 0x3

    #@12
    iget v2, p0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->ra:I

    #@14
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@17
    const/4 v1, 0x4

    #@18
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->HY:Ljava/lang/String;

    #@1a
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@1d
    const/4 v1, 0x5

    #@1e
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->Ia:Lcom/google/android/gms/drive/DriveId;

    #@20
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@23
    const/4 v1, 0x6

    #@24
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->IF:Ljava/lang/Integer;

    #@26
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/Integer;Z)V

    #@29
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@2c
    return-void
.end method


# virtual methods
.method public X(Landroid/os/Parcel;)Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;
    .registers 11

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@5
    move-result v7

    #@6
    move-object v4, v2

    #@7
    move-object v5, v2

    #@8
    move-object v6, v2

    #@9
    move v3, v1

    #@a
    :goto_a
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@d
    move-result v0

    #@e
    if-ge v0, v7, :cond_47

    #@10
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@13
    move-result v0

    #@14
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@17
    move-result v8

    #@18
    packed-switch v8, :pswitch_data_6c

    #@1b
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1e
    goto :goto_a

    #@1f
    :pswitch_1f
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@22
    move-result v1

    #@23
    goto :goto_a

    #@24
    :pswitch_24
    sget-object v2, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@26
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@2c
    move-object v2, v0

    #@2d
    goto :goto_a

    #@2e
    :pswitch_2e
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@31
    move-result v3

    #@32
    goto :goto_a

    #@33
    :pswitch_33
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    goto :goto_a

    #@38
    :pswitch_38
    sget-object v5, Lcom/google/android/gms/drive/DriveId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3a
    invoke-static {p1, v0, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Lcom/google/android/gms/drive/DriveId;

    #@40
    move-object v5, v0

    #@41
    goto :goto_a

    #@42
    :pswitch_42
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->h(Landroid/os/Parcel;I)Ljava/lang/Integer;

    #@45
    move-result-object v6

    #@46
    goto :goto_a

    #@47
    :cond_47
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@4a
    move-result v0

    #@4b
    if-eq v0, v7, :cond_66

    #@4d
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@4f
    new-instance v1, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string v2, "Overread allowed size end="

    #@56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@65
    throw v0

    #@66
    :cond_66
    new-instance v0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;

    #@68
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;-><init>(ILcom/google/android/gms/drive/metadata/internal/MetadataBundle;ILjava/lang/String;Lcom/google/android/gms/drive/DriveId;Ljava/lang/Integer;)V

    #@6b
    return-object v0

    #@6c
    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_24
        :pswitch_2e
        :pswitch_33
        :pswitch_38
        :pswitch_42
    .end packed-switch
.end method

.method public aT(I)[Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/i;->X(Landroid/os/Parcel;)Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/i;->aT(I)[Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
