.class public Lcom/google/android/gms/drive/internal/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/drive/internal/CreateFileRequest;",
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

.method static a(Lcom/google/android/gms/drive/internal/CreateFileRequest;Landroid/os/Parcel;I)V
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
    iget v2, p0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->xM:I

    #@8
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@b
    const/4 v1, 0x2

    #@c
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->IG:Lcom/google/android/gms/drive/DriveId;

    #@e
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@11
    const/4 v1, 0x3

    #@12
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->IE:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@14
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@17
    const/4 v1, 0x4

    #@18
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->Iw:Lcom/google/android/gms/drive/Contents;

    #@1a
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@1d
    const/4 v1, 0x5

    #@1e
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->IF:Ljava/lang/Integer;

    #@20
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/Integer;Z)V

    #@23
    const/4 v1, 0x6

    #@24
    iget-boolean v2, p0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->IH:Z

    #@26
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@29
    const/4 v1, 0x7

    #@2a
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->Iy:Ljava/lang/String;

    #@2c
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@2f
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@32
    return-void
.end method


# virtual methods
.method public Y(Landroid/os/Parcel;)Lcom/google/android/gms/drive/internal/CreateFileRequest;
    .registers 12

    #@0
    const/4 v6, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@5
    move-result v8

    #@6
    move-object v3, v2

    #@7
    move-object v4, v2

    #@8
    move-object v5, v2

    #@9
    move-object v7, v2

    #@a
    move v1, v6

    #@b
    :goto_b
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@e
    move-result v0

    #@f
    if-ge v0, v8, :cond_52

    #@11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@14
    move-result v0

    #@15
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@18
    move-result v9

    #@19
    packed-switch v9, :pswitch_data_78

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
    sget-object v2, Lcom/google/android/gms/drive/DriveId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@27
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Lcom/google/android/gms/drive/DriveId;

    #@2d
    move-object v2, v0

    #@2e
    goto :goto_b

    #@2f
    :pswitch_2f
    sget-object v3, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@31
    invoke-static {p1, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@37
    move-object v3, v0

    #@38
    goto :goto_b

    #@39
    :pswitch_39
    sget-object v4, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3b
    invoke-static {p1, v0, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Lcom/google/android/gms/drive/Contents;

    #@41
    move-object v4, v0

    #@42
    goto :goto_b

    #@43
    :pswitch_43
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->h(Landroid/os/Parcel;I)Ljava/lang/Integer;

    #@46
    move-result-object v5

    #@47
    goto :goto_b

    #@48
    :pswitch_48
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@4b
    move-result v6

    #@4c
    goto :goto_b

    #@4d
    :pswitch_4d
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@50
    move-result-object v7

    #@51
    goto :goto_b

    #@52
    :cond_52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@55
    move-result v0

    #@56
    if-eq v0, v8, :cond_71

    #@58
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@5a
    new-instance v1, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string v2, "Overread allowed size end="

    #@61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@68
    move-result-object v1

    #@69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v1

    #@6d
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@70
    throw v0

    #@71
    :cond_71
    new-instance v0, Lcom/google/android/gms/drive/internal/CreateFileRequest;

    #@73
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/drive/internal/CreateFileRequest;-><init>(ILcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Lcom/google/android/gms/drive/Contents;Ljava/lang/Integer;ZLjava/lang/String;)V

    #@76
    return-object v0

    #@77
    nop

    #@78
    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_20
        :pswitch_25
        :pswitch_2f
        :pswitch_39
        :pswitch_43
        :pswitch_48
        :pswitch_4d
    .end packed-switch
.end method

.method public aU(I)[Lcom/google/android/gms/drive/internal/CreateFileRequest;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/drive/internal/CreateFileRequest;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/j;->Y(Landroid/os/Parcel;)Lcom/google/android/gms/drive/internal/CreateFileRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/j;->aU(I)[Lcom/google/android/gms/drive/internal/CreateFileRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
