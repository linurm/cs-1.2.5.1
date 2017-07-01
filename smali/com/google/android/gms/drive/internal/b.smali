.class public Lcom/google/android/gms/drive/internal/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;",
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

.method static a(Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;Landroid/os/Parcel;I)V
    .registers 7

    #@0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    iget v2, p0, Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;->xM:I

    #@7
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@a
    const/4 v1, 0x2

    #@b
    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;->Is:J

    #@d
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@10
    const/4 v1, 0x3

    #@11
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;->Hz:Lcom/google/android/gms/drive/DriveId;

    #@13
    const/4 v3, 0x0

    #@14
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@17
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@1a
    return-void
.end method


# virtual methods
.method public S(Landroid/os/Parcel;)Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;
    .registers 9

    #@0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@3
    move-result v4

    #@4
    const/4 v1, 0x0

    #@5
    const-wide/16 v2, 0x0

    #@7
    const/4 v0, 0x0

    #@8
    :goto_8
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@b
    move-result v5

    #@c
    if-ge v5, v4, :cond_30

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
    move-result v1

    #@21
    goto :goto_8

    #@22
    :pswitch_22
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@25
    move-result-wide v2

    #@26
    goto :goto_8

    #@27
    :pswitch_27
    sget-object v0, Lcom/google/android/gms/drive/DriveId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@29
    invoke-static {p1, v5, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Lcom/google/android/gms/drive/DriveId;

    #@2f
    goto :goto_8

    #@30
    :cond_30
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@33
    move-result v5

    #@34
    if-eq v5, v4, :cond_4f

    #@36
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@38
    new-instance v1, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string v2, "Overread allowed size end="

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@4e
    throw v0

    #@4f
    :cond_4f
    new-instance v4, Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;

    #@51
    invoke-direct {v4, v1, v2, v3, v0}, Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;-><init>(IJLcom/google/android/gms/drive/DriveId;)V

    #@54
    return-object v4

    #@55
    nop

    #@56
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_22
        :pswitch_27
    .end packed-switch
.end method

.method public aN(I)[Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/b;->S(Landroid/os/Parcel;)Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/b;->aN(I)[Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
