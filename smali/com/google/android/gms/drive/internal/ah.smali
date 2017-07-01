.class public Lcom/google/android/gms/drive/internal/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;",
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

.method static a(Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;Landroid/os/Parcel;I)V
    .registers 7

    #@0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    iget v2, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->xM:I

    #@7
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@a
    const/4 v1, 0x2

    #@b
    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->Jw:J

    #@d
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@10
    const/4 v1, 0x3

    #@11
    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->Jx:J

    #@13
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@16
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@19
    return-void
.end method


# virtual methods
.method public ai(Landroid/os/Parcel;)Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;
    .registers 10

    #@0
    const-wide/16 v2, 0x0

    #@2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    move-wide v4, v2

    #@8
    :goto_8
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@b
    move-result v6

    #@c
    if-ge v6, v0, :cond_2c

    #@e
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@11
    move-result v6

    #@12
    invoke-static {v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@15
    move-result v7

    #@16
    packed-switch v7, :pswitch_data_52

    #@19
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1c
    goto :goto_8

    #@1d
    :pswitch_1d
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@20
    move-result v1

    #@21
    goto :goto_8

    #@22
    :pswitch_22
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@25
    move-result-wide v2

    #@26
    goto :goto_8

    #@27
    :pswitch_27
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@2a
    move-result-wide v4

    #@2b
    goto :goto_8

    #@2c
    :cond_2c
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@2f
    move-result v6

    #@30
    if-eq v6, v0, :cond_4b

    #@32
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@34
    new-instance v2, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string v3, "Overread allowed size end="

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@4a
    throw v1

    #@4b
    :cond_4b
    new-instance v0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;

    #@4d
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;-><init>(IJJ)V

    #@50
    return-object v0

    #@51
    nop

    #@52
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_22
        :pswitch_27
    .end packed-switch
.end method

.method public be(I)[Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/ah;->ai(Landroid/os/Parcel;)Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/ah;->be(I)[Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
