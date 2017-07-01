.class public Lcom/google/android/gms/drive/internal/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;",
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

.method static a(Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;Landroid/os/Parcel;I)V
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
    iget v2, p0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;->xM:I

    #@8
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@b
    const/4 v1, 0x2

    #@c
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;->Iu:Lcom/google/android/gms/drive/DriveId;

    #@e
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@11
    const/4 v1, 0x3

    #@12
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;->Iv:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@14
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@17
    const/4 v1, 0x4

    #@18
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;->Iw:Lcom/google/android/gms/drive/Contents;

    #@1a
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@1d
    const/4 v1, 0x5

    #@1e
    iget-boolean v2, p0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;->Ix:Z

    #@20
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@23
    const/4 v1, 0x6

    #@24
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;->Iy:Ljava/lang/String;

    #@26
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@29
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@2c
    return-void
.end method


# virtual methods
.method public U(Landroid/os/Parcel;)Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;
    .registers 11

    #@0
    const/4 v5, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@5
    move-result v7

    #@6
    move-object v3, v2

    #@7
    move-object v4, v2

    #@8
    move-object v6, v2

    #@9
    move v1, v5

    #@a
    :goto_a
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@d
    move-result v0

    #@e
    if-ge v0, v7, :cond_4c

    #@10
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@13
    move-result v0

    #@14
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@17
    move-result v8

    #@18
    packed-switch v8, :pswitch_data_72

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
    sget-object v2, Lcom/google/android/gms/drive/DriveId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@26
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Lcom/google/android/gms/drive/DriveId;

    #@2c
    move-object v2, v0

    #@2d
    goto :goto_a

    #@2e
    :pswitch_2e
    sget-object v3, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@30
    invoke-static {p1, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@36
    move-object v3, v0

    #@37
    goto :goto_a

    #@38
    :pswitch_38
    sget-object v4, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3a
    invoke-static {p1, v0, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Lcom/google/android/gms/drive/Contents;

    #@40
    move-object v4, v0

    #@41
    goto :goto_a

    #@42
    :pswitch_42
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@45
    move-result v5

    #@46
    goto :goto_a

    #@47
    :pswitch_47
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@4a
    move-result-object v6

    #@4b
    goto :goto_a

    #@4c
    :cond_4c
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@4f
    move-result v0

    #@50
    if-eq v0, v7, :cond_6b

    #@52
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@54
    new-instance v1, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string v2, "Overread allowed size end="

    #@5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v1

    #@67
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@6a
    throw v0

    #@6b
    :cond_6b
    new-instance v0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;

    #@6d
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;-><init>(ILcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Lcom/google/android/gms/drive/Contents;ZLjava/lang/String;)V

    #@70
    return-object v0

    #@71
    nop

    #@72
    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_24
        :pswitch_2e
        :pswitch_38
        :pswitch_42
        :pswitch_47
    .end packed-switch
.end method

.method public aP(I)[Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/e;->U(Landroid/os/Parcel;)Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/e;->aP(I)[Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
