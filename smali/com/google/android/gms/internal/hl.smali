.class public Lcom/google/android/gms/internal/hl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/gy$a;",
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

.method static a(Lcom/google/android/gms/internal/gy$a;Landroid/os/Parcel;I)V
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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gy$a;->getAccountName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@d
    const/16 v1, 0x3e8

    #@f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gy$a;->getVersionCode()I

    #@12
    move-result v2

    #@13
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@16
    const/4 v1, 0x2

    #@17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gy$a;->fl()Ljava/util/List;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@1e
    const/4 v1, 0x3

    #@1f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gy$a;->fk()I

    #@22
    move-result v2

    #@23
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@26
    const/4 v1, 0x4

    #@27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gy$a;->fn()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@2e
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@31
    return-void
.end method


# virtual methods
.method public aq(I)[Lcom/google/android/gms/internal/gy$a;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/internal/gy$a;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/hl;->z(Landroid/os/Parcel;)Lcom/google/android/gms/internal/gy$a;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/hl;->aq(I)[Lcom/google/android/gms/internal/gy$a;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public z(Landroid/os/Parcel;)Lcom/google/android/gms/internal/gy$a;
    .registers 10

    #@0
    const/4 v1, 0x0

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
    move v4, v1

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
    sparse-switch v7, :sswitch_data_5c

    #@1a
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1d
    goto :goto_9

    #@1e
    :sswitch_1e
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    goto :goto_9

    #@23
    :sswitch_23
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@26
    move-result v1

    #@27
    goto :goto_9

    #@28
    :sswitch_28
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    #@2b
    move-result-object v3

    #@2c
    goto :goto_9

    #@2d
    :sswitch_2d
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@30
    move-result v4

    #@31
    goto :goto_9

    #@32
    :sswitch_32
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

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
    new-instance v0, Lcom/google/android/gms/internal/gy$a;

    #@58
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gy$a;-><init>(ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    #@5b
    return-object v0

    #@5c
    :sswitch_data_5c
    .sparse-switch
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_28
        0x3 -> :sswitch_2d
        0x4 -> :sswitch_32
        0x3e8 -> :sswitch_23
    .end sparse-switch
.end method
