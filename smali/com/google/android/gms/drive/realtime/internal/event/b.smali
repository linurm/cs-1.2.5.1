.class public Lcom/google/android/gms/drive/realtime/internal/event/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;",
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

.method static a(Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;Landroid/os/Parcel;I)V
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
    iget v2, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;->xM:I

    #@8
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@b
    const/4 v1, 0x2

    #@c
    iget-object v2, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;->LB:[Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;

    #@e
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    #@11
    const/4 v1, 0x3

    #@12
    iget-object v2, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;->LC:Lcom/google/android/gms/common/data/DataHolder;

    #@14
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@17
    const/4 v1, 0x4

    #@18
    iget-boolean v2, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;->LD:Z

    #@1a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@1d
    const/4 v1, 0x5

    #@1e
    iget-object v2, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;->LE:[Lcom/google/android/gms/drive/realtime/internal/event/ParcelableObjectChangedEvent;

    #@20
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    #@23
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@26
    return-void
.end method


# virtual methods
.method public aU(Landroid/os/Parcel;)Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;
    .registers 10

    #@0
    const/4 v4, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@5
    move-result v6

    #@6
    move-object v3, v2

    #@7
    move-object v5, v2

    #@8
    move v1, v4

    #@9
    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@c
    move-result v0

    #@d
    if-ge v0, v6, :cond_46

    #@f
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@12
    move-result v0

    #@13
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@16
    move-result v7

    #@17
    packed-switch v7, :pswitch_data_6c

    #@1a
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1d
    goto :goto_9

    #@1e
    :pswitch_1e
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@21
    move-result v1

    #@22
    goto :goto_9

    #@23
    :pswitch_23
    sget-object v2, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@25
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, [Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;

    #@2b
    move-object v2, v0

    #@2c
    goto :goto_9

    #@2d
    :pswitch_2d
    sget-object v3, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@2f
    invoke-static {p1, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    #@35
    move-object v3, v0

    #@36
    goto :goto_9

    #@37
    :pswitch_37
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@3a
    move-result v4

    #@3b
    goto :goto_9

    #@3c
    :pswitch_3c
    sget-object v5, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableObjectChangedEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3e
    invoke-static {p1, v0, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@41
    move-result-object v0

    #@42
    check-cast v0, [Lcom/google/android/gms/drive/realtime/internal/event/ParcelableObjectChangedEvent;

    #@44
    move-object v5, v0

    #@45
    goto :goto_9

    #@46
    :cond_46
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@49
    move-result v0

    #@4a
    if-eq v0, v6, :cond_65

    #@4c
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@4e
    new-instance v1, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string v2, "Overread allowed size end="

    #@55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v1

    #@61
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@64
    throw v0

    #@65
    :cond_65
    new-instance v0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;

    #@67
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;-><init>(I[Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;Lcom/google/android/gms/common/data/DataHolder;Z[Lcom/google/android/gms/drive/realtime/internal/event/ParcelableObjectChangedEvent;)V

    #@6a
    return-object v0

    #@6b
    nop

    #@6c
    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_23
        :pswitch_2d
        :pswitch_37
        :pswitch_3c
    .end packed-switch
.end method

.method public bR(I)[Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/realtime/internal/event/b;->aU(Landroid/os/Parcel;)Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/realtime/internal/event/b;->bR(I)[Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
