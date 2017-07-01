.class public Lcom/google/android/gms/internal/cd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/ce;",
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

.method static a(Lcom/google/android/gms/internal/ce;Landroid/os/Parcel;I)V
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
    iget v2, p0, Lcom/google/android/gms/internal/ce;->versionCode:I

    #@8
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@b
    const/4 v1, 0x2

    #@c
    iget-object v2, p0, Lcom/google/android/gms/internal/ce;->oa:Ljava/lang/String;

    #@e
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@11
    const/4 v1, 0x3

    #@12
    iget-object v2, p0, Lcom/google/android/gms/internal/ce;->ob:Ljava/lang/String;

    #@14
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@17
    const/4 v1, 0x4

    #@18
    iget-object v2, p0, Lcom/google/android/gms/internal/ce;->mimeType:Ljava/lang/String;

    #@1a
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@1d
    const/4 v1, 0x5

    #@1e
    iget-object v2, p0, Lcom/google/android/gms/internal/ce;->packageName:Ljava/lang/String;

    #@20
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@23
    const/4 v1, 0x6

    #@24
    iget-object v2, p0, Lcom/google/android/gms/internal/ce;->oc:Ljava/lang/String;

    #@26
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@29
    const/4 v1, 0x7

    #@2a
    iget-object v2, p0, Lcom/google/android/gms/internal/ce;->od:Ljava/lang/String;

    #@2c
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@2f
    const/16 v1, 0x8

    #@31
    iget-object v2, p0, Lcom/google/android/gms/internal/ce;->oe:Ljava/lang/String;

    #@33
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@36
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@39
    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cd;->e(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ce;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public e(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ce;
    .registers 13

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
    move-object v6, v2

    #@a
    move-object v7, v2

    #@b
    move-object v8, v2

    #@c
    :goto_c
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@f
    move-result v9

    #@10
    if-ge v9, v0, :cond_49

    #@12
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@15
    move-result v9

    #@16
    invoke-static {v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@19
    move-result v10

    #@1a
    packed-switch v10, :pswitch_data_6e

    #@1d
    invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@20
    goto :goto_c

    #@21
    :pswitch_21
    invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@24
    move-result v1

    #@25
    goto :goto_c

    #@26
    :pswitch_26
    invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    goto :goto_c

    #@2b
    :pswitch_2b
    invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    goto :goto_c

    #@30
    :pswitch_30
    invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    goto :goto_c

    #@35
    :pswitch_35
    invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    goto :goto_c

    #@3a
    :pswitch_3a
    invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@3d
    move-result-object v6

    #@3e
    goto :goto_c

    #@3f
    :pswitch_3f
    invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@42
    move-result-object v7

    #@43
    goto :goto_c

    #@44
    :pswitch_44
    invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@47
    move-result-object v8

    #@48
    goto :goto_c

    #@49
    :cond_49
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@4c
    move-result v9

    #@4d
    if-eq v9, v0, :cond_68

    #@4f
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@51
    new-instance v2, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string v3, "Overread allowed size end="

    #@58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v0

    #@64
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@67
    throw v1

    #@68
    :cond_68
    new-instance v0, Lcom/google/android/gms/internal/ce;

    #@6a
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ce;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@6d
    return-object v0

    #@6e
    :pswitch_data_6e
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

.method public i(I)[Lcom/google/android/gms/internal/ce;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/internal/ce;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cd;->i(I)[Lcom/google/android/gms/internal/ce;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
