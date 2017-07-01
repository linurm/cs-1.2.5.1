.class public Lcom/google/android/gms/drive/internal/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/drive/internal/OnEventResponse;",
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

.method static a(Lcom/google/android/gms/drive/internal/OnEventResponse;Landroid/os/Parcel;I)V
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
    iget v2, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->xM:I

    #@8
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@b
    const/4 v1, 0x2

    #@c
    iget v2, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->Iq:I

    #@e
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@11
    const/4 v1, 0x3

    #@12
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->Jy:Lcom/google/android/gms/drive/events/ChangeEvent;

    #@14
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@17
    const/4 v1, 0x4

    #@18
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->Jz:Lcom/google/android/gms/drive/events/FileConflictEvent;

    #@1a
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@1d
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@20
    return-void
.end method


# virtual methods
.method public ak(Landroid/os/Parcel;)Lcom/google/android/gms/drive/internal/OnEventResponse;
    .registers 10

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@5
    move-result v5

    #@6
    move-object v2, v1

    #@7
    move v3, v4

    #@8
    :goto_8
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@b
    move-result v0

    #@c
    if-ge v0, v5, :cond_53

    #@e
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@11
    move-result v0

    #@12
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@15
    move-result v6

    #@16
    packed-switch v6, :pswitch_data_78

    #@19
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1c
    move-object v0, v1

    #@1d
    move-object v1, v2

    #@1e
    move v2, v3

    #@1f
    move v3, v4

    #@20
    :goto_20
    move v4, v3

    #@21
    move v3, v2

    #@22
    move-object v2, v1

    #@23
    move-object v1, v0

    #@24
    goto :goto_8

    #@25
    :pswitch_25
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@28
    move-result v0

    #@29
    move v3, v4

    #@2a
    move-object v7, v2

    #@2b
    move v2, v0

    #@2c
    move-object v0, v1

    #@2d
    move-object v1, v7

    #@2e
    goto :goto_20

    #@2f
    :pswitch_2f
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@32
    move-result v0

    #@33
    move-object v7, v1

    #@34
    move-object v1, v2

    #@35
    move v2, v3

    #@36
    move v3, v0

    #@37
    move-object v0, v7

    #@38
    goto :goto_20

    #@39
    :pswitch_39
    sget-object v1, Lcom/google/android/gms/drive/events/ChangeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Lcom/google/android/gms/drive/events/ChangeEvent;

    #@41
    move-object v1, v2

    #@42
    move v2, v3

    #@43
    move v3, v4

    #@44
    goto :goto_20

    #@45
    :pswitch_45
    sget-object v2, Lcom/google/android/gms/drive/events/FileConflictEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@47
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@4a
    move-result-object v0

    #@4b
    check-cast v0, Lcom/google/android/gms/drive/events/FileConflictEvent;

    #@4d
    move v2, v3

    #@4e
    move v3, v4

    #@4f
    move-object v7, v1

    #@50
    move-object v1, v0

    #@51
    move-object v0, v7

    #@52
    goto :goto_20

    #@53
    :cond_53
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@56
    move-result v0

    #@57
    if-eq v0, v5, :cond_72

    #@59
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@5b
    new-instance v1, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string v2, "Overread allowed size end="

    #@62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@69
    move-result-object v1

    #@6a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v1

    #@6e
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@71
    throw v0

    #@72
    :cond_72
    new-instance v0, Lcom/google/android/gms/drive/internal/OnEventResponse;

    #@74
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/android/gms/drive/internal/OnEventResponse;-><init>(IILcom/google/android/gms/drive/events/ChangeEvent;Lcom/google/android/gms/drive/events/FileConflictEvent;)V

    #@77
    return-object v0

    #@78
    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_25
        :pswitch_2f
        :pswitch_39
        :pswitch_45
    .end packed-switch
.end method

.method public bg(I)[Lcom/google/android/gms/drive/internal/OnEventResponse;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/drive/internal/OnEventResponse;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/aj;->ak(Landroid/os/Parcel;)Lcom/google/android/gms/drive/internal/OnEventResponse;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/aj;->bg(I)[Lcom/google/android/gms/drive/internal/OnEventResponse;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
