.class public Lcom/google/android/gms/internal/jn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/jm;",
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

.method static a(Lcom/google/android/gms/internal/jm;Landroid/os/Parcel;I)V
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
    iget-object v2, p0, Lcom/google/android/gms/internal/jm;->Wc:Ljava/util/List;

    #@8
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@b
    const/16 v1, 0x3e8

    #@d
    iget v2, p0, Lcom/google/android/gms/internal/jm;->xM:I

    #@f
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@12
    const/4 v1, 0x2

    #@13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jm;->jg()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@1a
    const/4 v1, 0x3

    #@1b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jm;->jh()Z

    #@1e
    move-result v2

    #@1f
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@22
    const/4 v1, 0x4

    #@23
    iget-object v2, p0, Lcom/google/android/gms/internal/jm;->Wf:Ljava/util/List;

    #@25
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@28
    const/4 v1, 0x5

    #@29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jm;->ji()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@30
    const/4 v1, 0x6

    #@31
    iget-object v2, p0, Lcom/google/android/gms/internal/jm;->Wh:Ljava/util/List;

    #@33
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@36
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@39
    return-void
.end method


# virtual methods
.method public bv(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jm;
    .registers 12

    #@0
    const/4 v4, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@5
    move-result v0

    #@6
    move-object v3, v2

    #@7
    move-object v5, v2

    #@8
    move-object v6, v2

    #@9
    move-object v7, v2

    #@a
    move v1, v4

    #@b
    :goto_b
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@e
    move-result v8

    #@f
    if-ge v8, v0, :cond_47

    #@11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@14
    move-result v8

    #@15
    invoke-static {v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@18
    move-result v9

    #@19
    sparse-switch v9, :sswitch_data_6c

    #@1c
    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1f
    goto :goto_b

    #@20
    :sswitch_20
    sget-object v2, Lcom/google/android/gms/internal/js;->CREATOR:Lcom/google/android/gms/internal/jt;

    #@22
    invoke-static {p1, v8, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@25
    move-result-object v2

    #@26
    goto :goto_b

    #@27
    :sswitch_27
    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@2a
    move-result v1

    #@2b
    goto :goto_b

    #@2c
    :sswitch_2c
    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    goto :goto_b

    #@31
    :sswitch_31
    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@34
    move-result v4

    #@35
    goto :goto_b

    #@36
    :sswitch_36
    sget-object v5, Lcom/google/android/gms/internal/jw;->CREATOR:Lcom/google/android/gms/internal/jx;

    #@38
    invoke-static {p1, v8, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@3b
    move-result-object v5

    #@3c
    goto :goto_b

    #@3d
    :sswitch_3d
    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@40
    move-result-object v6

    #@41
    goto :goto_b

    #@42
    :sswitch_42
    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    #@45
    move-result-object v7

    #@46
    goto :goto_b

    #@47
    :cond_47
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@4a
    move-result v8

    #@4b
    if-eq v8, v0, :cond_66

    #@4d
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@4f
    new-instance v2, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string v3, "Overread allowed size end="

    #@56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v0

    #@62
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@65
    throw v1

    #@66
    :cond_66
    new-instance v0, Lcom/google/android/gms/internal/jm;

    #@68
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/jm;-><init>(ILjava/util/List;Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/util/List;)V

    #@6b
    return-object v0

    #@6c
    :sswitch_data_6c
    .sparse-switch
        0x1 -> :sswitch_20
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_31
        0x4 -> :sswitch_36
        0x5 -> :sswitch_3d
        0x6 -> :sswitch_42
        0x3e8 -> :sswitch_27
    .end sparse-switch
.end method

.method public cQ(I)[Lcom/google/android/gms/internal/jm;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/internal/jm;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jn;->bv(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jm;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jn;->cQ(I)[Lcom/google/android/gms/internal/jm;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
