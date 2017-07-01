.class public Lcom/google/android/gms/internal/fs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/fr;",
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

.method static a(Lcom/google/android/gms/internal/fr;Landroid/os/Parcel;I)V
    .registers 8

    #@0
    const/4 v4, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@4
    move-result v0

    #@5
    const/4 v1, 0x1

    #@6
    iget-object v2, p0, Lcom/google/android/gms/internal/fr;->yq:Lcom/google/android/gms/internal/fi;

    #@8
    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@b
    const/16 v1, 0x3e8

    #@d
    iget v2, p0, Lcom/google/android/gms/internal/fr;->xM:I

    #@f
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@12
    const/4 v1, 0x2

    #@13
    iget-wide v2, p0, Lcom/google/android/gms/internal/fr;->yr:J

    #@15
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@18
    const/4 v1, 0x3

    #@19
    iget v2, p0, Lcom/google/android/gms/internal/fr;->ys:I

    #@1b
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@1e
    const/4 v1, 0x4

    #@1f
    iget-object v2, p0, Lcom/google/android/gms/internal/fr;->mP:Ljava/lang/String;

    #@21
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@24
    const/4 v1, 0x5

    #@25
    iget-object v2, p0, Lcom/google/android/gms/internal/fr;->yt:Lcom/google/android/gms/internal/fg;

    #@27
    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@2a
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@2d
    return-void
.end method


# virtual methods
.method public K(I)[Lcom/google/android/gms/internal/fr;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/internal/fr;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fs;->q(Landroid/os/Parcel;)Lcom/google/android/gms/internal/fr;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fs;->K(I)[Lcom/google/android/gms/internal/fr;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public q(Landroid/os/Parcel;)Lcom/google/android/gms/internal/fr;
    .registers 12

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@5
    move-result v1

    #@6
    const-wide/16 v4, 0x0

    #@8
    move-object v7, v3

    #@9
    move-object v8, v3

    #@a
    move v6, v2

    #@b
    :goto_b
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@e
    move-result v0

    #@f
    if-ge v0, v1, :cond_48

    #@11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@14
    move-result v0

    #@15
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@18
    move-result v9

    #@19
    sparse-switch v9, :sswitch_data_6e

    #@1c
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1f
    goto :goto_b

    #@20
    :sswitch_20
    sget-object v3, Lcom/google/android/gms/internal/fi;->CREATOR:Lcom/google/android/gms/internal/fj;

    #@22
    invoke-static {p1, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Lcom/google/android/gms/internal/fi;

    #@28
    move-object v3, v0

    #@29
    goto :goto_b

    #@2a
    :sswitch_2a
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@2d
    move-result v2

    #@2e
    goto :goto_b

    #@2f
    :sswitch_2f
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@32
    move-result-wide v4

    #@33
    goto :goto_b

    #@34
    :sswitch_34
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@37
    move-result v6

    #@38
    goto :goto_b

    #@39
    :sswitch_39
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@3c
    move-result-object v7

    #@3d
    goto :goto_b

    #@3e
    :sswitch_3e
    sget-object v8, Lcom/google/android/gms/internal/fg;->CREATOR:Lcom/google/android/gms/internal/fh;

    #@40
    invoke-static {p1, v0, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@43
    move-result-object v0

    #@44
    check-cast v0, Lcom/google/android/gms/internal/fg;

    #@46
    move-object v8, v0

    #@47
    goto :goto_b

    #@48
    :cond_48
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@4b
    move-result v0

    #@4c
    if-eq v0, v1, :cond_67

    #@4e
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@50
    new-instance v2, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string v3, "Overread allowed size end="

    #@57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@66
    throw v0

    #@67
    :cond_67
    new-instance v1, Lcom/google/android/gms/internal/fr;

    #@69
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/fr;-><init>(ILcom/google/android/gms/internal/fi;JILjava/lang/String;Lcom/google/android/gms/internal/fg;)V

    #@6c
    return-object v1

    #@6d
    nop

    #@6e
    :sswitch_data_6e
    .sparse-switch
        0x1 -> :sswitch_20
        0x2 -> :sswitch_2f
        0x3 -> :sswitch_34
        0x4 -> :sswitch_39
        0x5 -> :sswitch_3e
        0x3e8 -> :sswitch_2a
    .end sparse-switch
.end method
