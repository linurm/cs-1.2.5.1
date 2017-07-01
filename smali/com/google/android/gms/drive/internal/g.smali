.class public Lcom/google/android/gms/drive/internal/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/drive/internal/CreateContentsRequest;",
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

.method static a(Lcom/google/android/gms/drive/internal/CreateContentsRequest;Landroid/os/Parcel;I)V
    .registers 6

    #@0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    iget v2, p0, Lcom/google/android/gms/drive/internal/CreateContentsRequest;->xM:I

    #@7
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@a
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@d
    return-void
.end method


# virtual methods
.method public W(Landroid/os/Parcel;)Lcom/google/android/gms/drive/internal/CreateContentsRequest;
    .registers 6

    #@0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@3
    move-result v1

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@8
    move-result v2

    #@9
    if-ge v2, v1, :cond_1f

    #@b
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@e
    move-result v2

    #@f
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@12
    move-result v3

    #@13
    packed-switch v3, :pswitch_data_44

    #@16
    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@19
    goto :goto_5

    #@1a
    :pswitch_1a
    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@1d
    move-result v0

    #@1e
    goto :goto_5

    #@1f
    :cond_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@22
    move-result v2

    #@23
    if-eq v2, v1, :cond_3e

    #@25
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@27
    new-instance v2, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string v3, "Overread allowed size end="

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@3d
    throw v0

    #@3e
    :cond_3e
    new-instance v1, Lcom/google/android/gms/drive/internal/CreateContentsRequest;

    #@40
    invoke-direct {v1, v0}, Lcom/google/android/gms/drive/internal/CreateContentsRequest;-><init>(I)V

    #@43
    return-object v1

    #@44
    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_1a
    .end packed-switch
.end method

.method public aR(I)[Lcom/google/android/gms/drive/internal/CreateContentsRequest;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/drive/internal/CreateContentsRequest;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/g;->W(Landroid/os/Parcel;)Lcom/google/android/gms/drive/internal/CreateContentsRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/g;->aR(I)[Lcom/google/android/gms/drive/internal/CreateContentsRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
