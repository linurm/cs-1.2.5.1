.class public Lcom/google/android/gms/internal/cp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/cq;",
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

.method static a(Lcom/google/android/gms/internal/cq;Landroid/os/Parcel;I)V
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
    iget v2, p0, Lcom/google/android/gms/internal/cq;->versionCode:I

    #@8
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@b
    const/4 v1, 0x2

    #@c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cq;->bd()Landroid/os/IBinder;

    #@f
    move-result-object v2

    #@10
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    #@13
    const/4 v1, 0x3

    #@14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cq;->be()Landroid/os/IBinder;

    #@17
    move-result-object v2

    #@18
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    #@1b
    const/4 v1, 0x4

    #@1c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cq;->bf()Landroid/os/IBinder;

    #@1f
    move-result-object v2

    #@20
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    #@23
    const/4 v1, 0x5

    #@24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cq;->bg()Landroid/os/IBinder;

    #@27
    move-result-object v2

    #@28
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    #@2b
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@2e
    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cp;->g(Landroid/os/Parcel;)Lcom/google/android/gms/internal/cq;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public g(Landroid/os/Parcel;)Lcom/google/android/gms/internal/cq;
    .registers 10

    #@0
    const/4 v2, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@4
    move-result v0

    #@5
    const/4 v1, 0x0

    #@6
    move-object v3, v2

    #@7
    move-object v4, v2

    #@8
    move-object v5, v2

    #@9
    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@c
    move-result v6

    #@d
    if-ge v6, v0, :cond_37

    #@f
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@12
    move-result v6

    #@13
    invoke-static {v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@16
    move-result v7

    #@17
    packed-switch v7, :pswitch_data_5c

    #@1a
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1d
    goto :goto_9

    #@1e
    :pswitch_1e
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@21
    move-result v1

    #@22
    goto :goto_9

    #@23
    :pswitch_23
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->p(Landroid/os/Parcel;I)Landroid/os/IBinder;

    #@26
    move-result-object v2

    #@27
    goto :goto_9

    #@28
    :pswitch_28
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->p(Landroid/os/Parcel;I)Landroid/os/IBinder;

    #@2b
    move-result-object v3

    #@2c
    goto :goto_9

    #@2d
    :pswitch_2d
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->p(Landroid/os/Parcel;I)Landroid/os/IBinder;

    #@30
    move-result-object v4

    #@31
    goto :goto_9

    #@32
    :pswitch_32
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->p(Landroid/os/Parcel;I)Landroid/os/IBinder;

    #@35
    move-result-object v5

    #@36
    goto :goto_9

    #@37
    :cond_37
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@3a
    move-result v6

    #@3b
    if-eq v6, v0, :cond_56

    #@3d
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@3f
    new-instance v2, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string v3, "Overread allowed size end="

    #@46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@55
    throw v1

    #@56
    :cond_56
    new-instance v0, Lcom/google/android/gms/internal/cq;

    #@58
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cq;-><init>(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;)V

    #@5b
    return-object v0

    #@5c
    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_23
        :pswitch_28
        :pswitch_2d
        :pswitch_32
    .end packed-switch
.end method

.method public k(I)[Lcom/google/android/gms/internal/cq;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/internal/cq;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cp;->k(I)[Lcom/google/android/gms/internal/cq;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
