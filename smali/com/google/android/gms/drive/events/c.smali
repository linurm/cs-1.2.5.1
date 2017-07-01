.class public Lcom/google/android/gms/drive/events/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/drive/events/FileConflictEvent;",
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

.method static a(Lcom/google/android/gms/drive/events/FileConflictEvent;Landroid/os/Parcel;I)V
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
    iget v2, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->xM:I

    #@8
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@b
    const/4 v1, 0x2

    #@c
    iget-object v2, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->Hz:Lcom/google/android/gms/drive/DriveId;

    #@e
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@11
    const/4 v1, 0x3

    #@12
    iget-object v2, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->yQ:Ljava/lang/String;

    #@14
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@17
    const/4 v1, 0x4

    #@18
    iget-object v2, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->Ij:Landroid/os/ParcelFileDescriptor;

    #@1a
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@1d
    const/4 v1, 0x5

    #@1e
    iget-object v2, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->Ik:Landroid/os/ParcelFileDescriptor;

    #@20
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@23
    const/4 v1, 0x6

    #@24
    iget-object v2, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->Il:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@26
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@29
    const/4 v1, 0x7

    #@2a
    iget-object v2, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->Im:Ljava/util/ArrayList;

    #@2c
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@2f
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@32
    return-void
.end method


# virtual methods
.method public Q(Landroid/os/Parcel;)Lcom/google/android/gms/drive/events/FileConflictEvent;
    .registers 12

    #@0
    const/4 v2, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@4
    move-result v8

    #@5
    const/4 v1, 0x0

    #@6
    move-object v3, v2

    #@7
    move-object v4, v2

    #@8
    move-object v5, v2

    #@9
    move-object v6, v2

    #@a
    move-object v7, v2

    #@b
    :goto_b
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@e
    move-result v0

    #@f
    if-ge v0, v8, :cond_57

    #@11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@14
    move-result v0

    #@15
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@18
    move-result v9

    #@19
    packed-switch v9, :pswitch_data_7c

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
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    goto :goto_b

    #@34
    :pswitch_34
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@36
    invoke-static {p1, v0, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    #@3c
    move-object v4, v0

    #@3d
    goto :goto_b

    #@3e
    :pswitch_3e
    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@40
    invoke-static {p1, v0, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@43
    move-result-object v0

    #@44
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    #@46
    move-object v5, v0

    #@47
    goto :goto_b

    #@48
    :pswitch_48
    sget-object v6, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4a
    invoke-static {p1, v0, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@4d
    move-result-object v0

    #@4e
    check-cast v0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@50
    move-object v6, v0

    #@51
    goto :goto_b

    #@52
    :pswitch_52
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    #@55
    move-result-object v7

    #@56
    goto :goto_b

    #@57
    :cond_57
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@5a
    move-result v0

    #@5b
    if-eq v0, v8, :cond_76

    #@5d
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@5f
    new-instance v1, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string v2, "Overread allowed size end="

    #@66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v1

    #@6a
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v1

    #@6e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v1

    #@72
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@75
    throw v0

    #@76
    :cond_76
    new-instance v0, Lcom/google/android/gms/drive/events/FileConflictEvent;

    #@78
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/drive/events/FileConflictEvent;-><init>(ILcom/google/android/gms/drive/DriveId;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Ljava/util/ArrayList;)V

    #@7b
    return-object v0

    #@7c
    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_20
        :pswitch_25
        :pswitch_2f
        :pswitch_34
        :pswitch_3e
        :pswitch_48
        :pswitch_52
    .end packed-switch
.end method

.method public aL(I)[Lcom/google/android/gms/drive/events/FileConflictEvent;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/drive/events/FileConflictEvent;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/events/c;->Q(Landroid/os/Parcel;)Lcom/google/android/gms/drive/events/FileConflictEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/events/c;->aL(I)[Lcom/google/android/gms/drive/events/FileConflictEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
