.class public Lcom/google/android/gms/internal/lj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/li;",
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

.method static a(Lcom/google/android/gms/internal/li;Landroid/os/Parcel;I)V
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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/li;->getVersionCode()I

    #@9
    move-result v2

    #@a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@d
    const/4 v1, 0x2

    #@e
    iget-object v2, p0, Lcom/google/android/gms/internal/li;->ake:[Ljava/lang/String;

    #@10
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    #@13
    const/4 v1, 0x3

    #@14
    iget-object v2, p0, Lcom/google/android/gms/internal/li;->akf:[[B

    #@16
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[[BZ)V

    #@19
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@1c
    return-void
.end method


# virtual methods
.method public cf(Landroid/os/Parcel;)Lcom/google/android/gms/internal/li;
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@4
    move-result v3

    #@5
    const/4 v2, 0x0

    #@6
    move-object v0, v1

    #@7
    check-cast v0, [[B

    #@9
    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@c
    move-result v4

    #@d
    if-ge v4, v3, :cond_2d

    #@f
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@12
    move-result v4

    #@13
    invoke-static {v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@16
    move-result v5

    #@17
    packed-switch v5, :pswitch_data_52

    #@1a
    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1d
    goto :goto_9

    #@1e
    :pswitch_1e
    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@21
    move-result v2

    #@22
    goto :goto_9

    #@23
    :pswitch_23
    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;I)[Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    goto :goto_9

    #@28
    :pswitch_28
    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->s(Landroid/os/Parcel;I)[[B

    #@2b
    move-result-object v0

    #@2c
    goto :goto_9

    #@2d
    :cond_2d
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@30
    move-result v4

    #@31
    if-eq v4, v3, :cond_4c

    #@33
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@35
    new-instance v1, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string v2, "Overread allowed size end="

    #@3c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@4b
    throw v0

    #@4c
    :cond_4c
    new-instance v3, Lcom/google/android/gms/internal/li;

    #@4e
    invoke-direct {v3, v2, v1, v0}, Lcom/google/android/gms/internal/li;-><init>(I[Ljava/lang/String;[[B)V

    #@51
    return-object v3

    #@52
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_23
        :pswitch_28
    .end packed-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lj;->cf(Landroid/os/Parcel;)Lcom/google/android/gms/internal/li;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public dL(I)[Lcom/google/android/gms/internal/li;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/internal/li;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lj;->dL(I)[Lcom/google/android/gms/internal/li;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
