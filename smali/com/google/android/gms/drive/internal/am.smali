.class public Lcom/google/android/gms/drive/internal/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/drive/internal/OnMetadataResponse;",
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

.method static a(Lcom/google/android/gms/drive/internal/OnMetadataResponse;Landroid/os/Parcel;I)V
    .registers 7

    #@0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    iget v2, p0, Lcom/google/android/gms/drive/internal/OnMetadataResponse;->xM:I

    #@7
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@a
    const/4 v1, 0x2

    #@b
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/OnMetadataResponse;->IE:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@d
    const/4 v3, 0x0

    #@e
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@11
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@14
    return-void
.end method


# virtual methods
.method public an(Landroid/os/Parcel;)Lcom/google/android/gms/drive/internal/OnMetadataResponse;
    .registers 7

    #@0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@3
    move-result v2

    #@4
    const/4 v1, 0x0

    #@5
    const/4 v0, 0x0

    #@6
    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@9
    move-result v3

    #@a
    if-ge v3, v2, :cond_29

    #@c
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@f
    move-result v3

    #@10
    invoke-static {v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@13
    move-result v4

    #@14
    packed-switch v4, :pswitch_data_4e

    #@17
    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1a
    goto :goto_6

    #@1b
    :pswitch_1b
    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@1e
    move-result v1

    #@1f
    goto :goto_6

    #@20
    :pswitch_20
    sget-object v0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22
    invoke-static {p1, v3, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@28
    goto :goto_6

    #@29
    :cond_29
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@2c
    move-result v3

    #@2d
    if-eq v3, v2, :cond_48

    #@2f
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@31
    new-instance v1, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string v3, "Overread allowed size end="

    #@38
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@47
    throw v0

    #@48
    :cond_48
    new-instance v2, Lcom/google/android/gms/drive/internal/OnMetadataResponse;

    #@4a
    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/drive/internal/OnMetadataResponse;-><init>(ILcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    #@4d
    return-object v2

    #@4e
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_20
    .end packed-switch
.end method

.method public bj(I)[Lcom/google/android/gms/drive/internal/OnMetadataResponse;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/drive/internal/OnMetadataResponse;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/am;->an(Landroid/os/Parcel;)Lcom/google/android/gms/drive/internal/OnMetadataResponse;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/am;->bj(I)[Lcom/google/android/gms/drive/internal/OnMetadataResponse;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
