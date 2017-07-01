.class public Lcom/google/android/gms/internal/lh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/lg;",
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

.method static a(Lcom/google/android/gms/internal/lg;Landroid/os/Parcel;I)V
    .registers 7

    #@0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/lg;->getVersionCode()I

    #@8
    move-result v2

    #@9
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@c
    const/4 v1, 0x2

    #@d
    iget-object v2, p0, Lcom/google/android/gms/internal/lg;->akd:[I

    #@f
    const/4 v3, 0x0

    #@10
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[IZ)V

    #@13
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@16
    return-void
.end method


# virtual methods
.method public ce(Landroid/os/Parcel;)Lcom/google/android/gms/internal/lg;
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
    if-ge v3, v2, :cond_25

    #@c
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@f
    move-result v3

    #@10
    invoke-static {v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@13
    move-result v4

    #@14
    packed-switch v4, :pswitch_data_4a

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
    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->u(Landroid/os/Parcel;I)[I

    #@23
    move-result-object v0

    #@24
    goto :goto_6

    #@25
    :cond_25
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@28
    move-result v3

    #@29
    if-eq v3, v2, :cond_44

    #@2b
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@2d
    new-instance v1, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string v3, "Overread allowed size end="

    #@34
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@43
    throw v0

    #@44
    :cond_44
    new-instance v2, Lcom/google/android/gms/internal/lg;

    #@46
    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/lg;-><init>(I[I)V

    #@49
    return-object v2

    #@4a
    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_20
    .end packed-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lh;->ce(Landroid/os/Parcel;)Lcom/google/android/gms/internal/lg;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public dK(I)[Lcom/google/android/gms/internal/lg;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/internal/lg;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lh;->dK(I)[Lcom/google/android/gms/internal/lg;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
