.class public Lcom/google/android/gms/internal/fh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/fg;",
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

.method static a(Lcom/google/android/gms/internal/fg;Landroid/os/Parcel;I)V
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
    iget-object v2, p0, Lcom/google/android/gms/internal/fg;->xN:[Lcom/google/android/gms/internal/fk;

    #@8
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    #@b
    const/16 v1, 0x3e8

    #@d
    iget v2, p0, Lcom/google/android/gms/internal/fg;->xM:I

    #@f
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@12
    const/4 v1, 0x2

    #@13
    iget-object v2, p0, Lcom/google/android/gms/internal/fg;->xO:Ljava/lang/String;

    #@15
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@18
    const/4 v1, 0x3

    #@19
    iget-boolean v2, p0, Lcom/google/android/gms/internal/fg;->xP:Z

    #@1b
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@1e
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@21
    return-void
.end method


# virtual methods
.method public D(I)[Lcom/google/android/gms/internal/fg;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/internal/fg;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fh;->l(Landroid/os/Parcel;)Lcom/google/android/gms/internal/fg;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public l(Landroid/os/Parcel;)Lcom/google/android/gms/internal/fg;
    .registers 9

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@5
    move-result v4

    #@6
    move-object v0, v1

    #@7
    move v3, v2

    #@8
    :goto_8
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@b
    move-result v5

    #@c
    if-ge v5, v4, :cond_35

    #@e
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@11
    move-result v5

    #@12
    invoke-static {v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@15
    move-result v6

    #@16
    sparse-switch v6, :sswitch_data_5a

    #@19
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1c
    goto :goto_8

    #@1d
    :sswitch_1d
    sget-object v0, Lcom/google/android/gms/internal/fk;->CREATOR:Lcom/google/android/gms/internal/fl;

    #@1f
    invoke-static {p1, v5, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, [Lcom/google/android/gms/internal/fk;

    #@25
    goto :goto_8

    #@26
    :sswitch_26
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@29
    move-result v3

    #@2a
    goto :goto_8

    #@2b
    :sswitch_2b
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    goto :goto_8

    #@30
    :sswitch_30
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@33
    move-result v2

    #@34
    goto :goto_8

    #@35
    :cond_35
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@38
    move-result v5

    #@39
    if-eq v5, v4, :cond_54

    #@3b
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@3d
    new-instance v1, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string v2, "Overread allowed size end="

    #@44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@53
    throw v0

    #@54
    :cond_54
    new-instance v4, Lcom/google/android/gms/internal/fg;

    #@56
    invoke-direct {v4, v3, v0, v1, v2}, Lcom/google/android/gms/internal/fg;-><init>(I[Lcom/google/android/gms/internal/fk;Ljava/lang/String;Z)V

    #@59
    return-object v4

    #@5a
    :sswitch_data_5a
    .sparse-switch
        0x1 -> :sswitch_1d
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_30
        0x3e8 -> :sswitch_26
    .end sparse-switch
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fh;->D(I)[Lcom/google/android/gms/internal/fg;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
