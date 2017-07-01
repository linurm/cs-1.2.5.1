.class public Lcom/google/android/gms/drive/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/drive/Contents;",
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

.method static a(Lcom/google/android/gms/drive/Contents;Landroid/os/Parcel;I)V
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
    iget v2, p0, Lcom/google/android/gms/drive/Contents;->xM:I

    #@8
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@b
    const/4 v1, 0x2

    #@c
    iget-object v2, p0, Lcom/google/android/gms/drive/Contents;->Fj:Landroid/os/ParcelFileDescriptor;

    #@e
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@11
    const/4 v1, 0x3

    #@12
    iget v2, p0, Lcom/google/android/gms/drive/Contents;->ra:I

    #@14
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@17
    const/4 v1, 0x4

    #@18
    iget v2, p0, Lcom/google/android/gms/drive/Contents;->Hy:I

    #@1a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@1d
    const/4 v1, 0x5

    #@1e
    iget-object v2, p0, Lcom/google/android/gms/drive/Contents;->Hz:Lcom/google/android/gms/drive/DriveId;

    #@20
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@23
    const/4 v1, 0x6

    #@24
    iget-object v2, p0, Lcom/google/android/gms/drive/Contents;->HA:Ljava/lang/String;

    #@26
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@29
    const/4 v1, 0x7

    #@2a
    iget-boolean v2, p0, Lcom/google/android/gms/drive/Contents;->HB:Z

    #@2c
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@2f
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@32
    return-void
.end method


# virtual methods
.method public M(Landroid/os/Parcel;)Lcom/google/android/gms/drive/Contents;
    .registers 12

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@5
    move-result v8

    #@6
    move-object v5, v2

    #@7
    move-object v6, v2

    #@8
    move v1, v7

    #@9
    move v3, v7

    #@a
    move v4, v7

    #@b
    :goto_b
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@e
    move-result v0

    #@f
    if-ge v0, v8, :cond_4d

    #@11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@14
    move-result v0

    #@15
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@18
    move-result v9

    #@19
    packed-switch v9, :pswitch_data_72

    #@1c
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1f
    goto :goto_b

    #@20
    :pswitch_20
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@23
    move-result v1

    #@24
    goto :goto_b

    #@25
    :pswitch_25
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@27
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    #@2d
    move-object v2, v0

    #@2e
    goto :goto_b

    #@2f
    :pswitch_2f
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@32
    move-result v3

    #@33
    goto :goto_b

    #@34
    :pswitch_34
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@37
    move-result v4

    #@38
    goto :goto_b

    #@39
    :pswitch_39
    sget-object v5, Lcom/google/android/gms/drive/DriveId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3b
    invoke-static {p1, v0, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Lcom/google/android/gms/drive/DriveId;

    #@41
    move-object v5, v0

    #@42
    goto :goto_b

    #@43
    :pswitch_43
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@46
    move-result-object v6

    #@47
    goto :goto_b

    #@48
    :pswitch_48
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@4b
    move-result v7

    #@4c
    goto :goto_b

    #@4d
    :cond_4d
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@50
    move-result v0

    #@51
    if-eq v0, v8, :cond_6c

    #@53
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@55
    new-instance v1, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string v2, "Overread allowed size end="

    #@5c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v1

    #@68
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@6b
    throw v0

    #@6c
    :cond_6c
    new-instance v0, Lcom/google/android/gms/drive/Contents;

    #@6e
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/drive/Contents;-><init>(ILandroid/os/ParcelFileDescriptor;IILcom/google/android/gms/drive/DriveId;Ljava/lang/String;Z)V

    #@71
    return-object v0

    #@72
    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_20
        :pswitch_25
        :pswitch_2f
        :pswitch_34
        :pswitch_39
        :pswitch_43
        :pswitch_48
    .end packed-switch
.end method

.method public aG(I)[Lcom/google/android/gms/drive/Contents;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/drive/Contents;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/a;->M(Landroid/os/Parcel;)Lcom/google/android/gms/drive/Contents;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/a;->aG(I)[Lcom/google/android/gms/drive/Contents;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
