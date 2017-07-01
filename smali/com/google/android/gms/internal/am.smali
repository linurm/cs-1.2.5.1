.class public Lcom/google/android/gms/internal/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/al;",
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

.method static a(Lcom/google/android/gms/internal/al;Landroid/os/Parcel;I)V
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
    iget v2, p0, Lcom/google/android/gms/internal/al;->versionCode:I

    #@8
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@b
    const/4 v1, 0x2

    #@c
    iget-object v2, p0, Lcom/google/android/gms/internal/al;->me:Ljava/lang/String;

    #@e
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@11
    const/4 v1, 0x3

    #@12
    iget v2, p0, Lcom/google/android/gms/internal/al;->height:I

    #@14
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@17
    const/4 v1, 0x4

    #@18
    iget v2, p0, Lcom/google/android/gms/internal/al;->heightPixels:I

    #@1a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@1d
    const/4 v1, 0x5

    #@1e
    iget-boolean v2, p0, Lcom/google/android/gms/internal/al;->mf:Z

    #@20
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@23
    const/4 v1, 0x6

    #@24
    iget v2, p0, Lcom/google/android/gms/internal/al;->width:I

    #@26
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@29
    const/4 v1, 0x7

    #@2a
    iget v2, p0, Lcom/google/android/gms/internal/al;->widthPixels:I

    #@2c
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@2f
    const/16 v1, 0x8

    #@31
    iget-object v2, p0, Lcom/google/android/gms/internal/al;->mg:[Lcom/google/android/gms/internal/al;

    #@33
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    #@36
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@39
    return-void
.end method


# virtual methods
.method public c(Landroid/os/Parcel;)Lcom/google/android/gms/internal/al;
    .registers 13

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@5
    move-result v9

    #@6
    move-object v8, v2

    #@7
    move v1, v5

    #@8
    move v3, v5

    #@9
    move v4, v5

    #@a
    move v6, v5

    #@b
    move v7, v5

    #@c
    :goto_c
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@f
    move-result v0

    #@10
    if-ge v0, v9, :cond_4e

    #@12
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@15
    move-result v0

    #@16
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@19
    move-result v10

    #@1a
    packed-switch v10, :pswitch_data_74

    #@1d
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@20
    goto :goto_c

    #@21
    :pswitch_21
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@24
    move-result v1

    #@25
    goto :goto_c

    #@26
    :pswitch_26
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    goto :goto_c

    #@2b
    :pswitch_2b
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@2e
    move-result v3

    #@2f
    goto :goto_c

    #@30
    :pswitch_30
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@33
    move-result v4

    #@34
    goto :goto_c

    #@35
    :pswitch_35
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@38
    move-result v5

    #@39
    goto :goto_c

    #@3a
    :pswitch_3a
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@3d
    move-result v6

    #@3e
    goto :goto_c

    #@3f
    :pswitch_3f
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@42
    move-result v7

    #@43
    goto :goto_c

    #@44
    :pswitch_44
    sget-object v8, Lcom/google/android/gms/internal/al;->CREATOR:Lcom/google/android/gms/internal/am;

    #@46
    invoke-static {p1, v0, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@49
    move-result-object v0

    #@4a
    check-cast v0, [Lcom/google/android/gms/internal/al;

    #@4c
    move-object v8, v0

    #@4d
    goto :goto_c

    #@4e
    :cond_4e
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@51
    move-result v0

    #@52
    if-eq v0, v9, :cond_6d

    #@54
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@56
    new-instance v1, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string v2, "Overread allowed size end="

    #@5d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v1

    #@69
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@6c
    throw v0

    #@6d
    :cond_6d
    new-instance v0, Lcom/google/android/gms/internal/al;

    #@6f
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/al;-><init>(ILjava/lang/String;IIZII[Lcom/google/android/gms/internal/al;)V

    #@72
    return-object v0

    #@73
    nop

    #@74
    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_21
        :pswitch_26
        :pswitch_2b
        :pswitch_30
        :pswitch_35
        :pswitch_3a
        :pswitch_3f
        :pswitch_44
    .end packed-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/am;->c(Landroid/os/Parcel;)Lcom/google/android/gms/internal/al;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public d(I)[Lcom/google/android/gms/internal/al;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/internal/al;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/am;->d(I)[Lcom/google/android/gms/internal/al;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
