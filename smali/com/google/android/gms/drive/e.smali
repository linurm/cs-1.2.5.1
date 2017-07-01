.class public Lcom/google/android/gms/drive/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/drive/StorageStats;",
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

.method static a(Lcom/google/android/gms/drive/StorageStats;Landroid/os/Parcel;I)V
    .registers 7

    #@0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    iget v2, p0, Lcom/google/android/gms/drive/StorageStats;->xM:I

    #@7
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@a
    const/4 v1, 0x2

    #@b
    iget-wide v2, p0, Lcom/google/android/gms/drive/StorageStats;->Ib:J

    #@d
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@10
    const/4 v1, 0x3

    #@11
    iget-wide v2, p0, Lcom/google/android/gms/drive/StorageStats;->Ic:J

    #@13
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@16
    const/4 v1, 0x4

    #@17
    iget-wide v2, p0, Lcom/google/android/gms/drive/StorageStats;->Id:J

    #@19
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@1c
    const/4 v1, 0x5

    #@1d
    iget-wide v2, p0, Lcom/google/android/gms/drive/StorageStats;->Ie:J

    #@1f
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@22
    const/4 v1, 0x6

    #@23
    iget v2, p0, Lcom/google/android/gms/drive/StorageStats;->If:I

    #@25
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@28
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@2b
    return-void
.end method


# virtual methods
.method public O(Landroid/os/Parcel;)Lcom/google/android/gms/drive/StorageStats;
    .registers 15

    #@0
    const/4 v1, 0x0

    #@1
    const-wide/16 v2, 0x0

    #@3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@6
    move-result v0

    #@7
    move-wide v4, v2

    #@8
    move-wide v6, v2

    #@9
    move-wide v8, v2

    #@a
    move v10, v1

    #@b
    :goto_b
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@e
    move-result v11

    #@f
    if-ge v11, v0, :cond_3e

    #@11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@14
    move-result v11

    #@15
    invoke-static {v11}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@18
    move-result v12

    #@19
    packed-switch v12, :pswitch_data_64

    #@1c
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1f
    goto :goto_b

    #@20
    :pswitch_20
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@23
    move-result v1

    #@24
    goto :goto_b

    #@25
    :pswitch_25
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@28
    move-result-wide v2

    #@29
    goto :goto_b

    #@2a
    :pswitch_2a
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@2d
    move-result-wide v4

    #@2e
    goto :goto_b

    #@2f
    :pswitch_2f
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@32
    move-result-wide v6

    #@33
    goto :goto_b

    #@34
    :pswitch_34
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@37
    move-result-wide v8

    #@38
    goto :goto_b

    #@39
    :pswitch_39
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@3c
    move-result v10

    #@3d
    goto :goto_b

    #@3e
    :cond_3e
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@41
    move-result v11

    #@42
    if-eq v11, v0, :cond_5d

    #@44
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@46
    new-instance v2, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string v3, "Overread allowed size end="

    #@4d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@5c
    throw v1

    #@5d
    :cond_5d
    new-instance v0, Lcom/google/android/gms/drive/StorageStats;

    #@5f
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/drive/StorageStats;-><init>(IJJJJI)V

    #@62
    return-object v0

    #@63
    nop

    #@64
    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_20
        :pswitch_25
        :pswitch_2a
        :pswitch_2f
        :pswitch_34
        :pswitch_39
    .end packed-switch
.end method

.method public aI(I)[Lcom/google/android/gms/drive/StorageStats;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/drive/StorageStats;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/e;->O(Landroid/os/Parcel;)Lcom/google/android/gms/drive/StorageStats;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/e;->aI(I)[Lcom/google/android/gms/drive/StorageStats;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
