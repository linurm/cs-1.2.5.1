.class public Lcom/google/android/gms/internal/jr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/jq;",
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

.method static a(Lcom/google/android/gms/internal/jq;Landroid/os/Parcel;I)V
    .registers 7

    #@0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x3e8

    #@6
    iget v2, p0, Lcom/google/android/gms/internal/jq;->xM:I

    #@8
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@b
    const/4 v1, 0x2

    #@c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jq;->jf()Lcom/google/android/gms/internal/jm;

    #@f
    move-result-object v2

    #@10
    const/4 v3, 0x0

    #@11
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@14
    const/4 v1, 0x3

    #@15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jq;->getInterval()J

    #@18
    move-result-wide v2

    #@19
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@1c
    const/4 v1, 0x4

    #@1d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jq;->getPriority()I

    #@20
    move-result v2

    #@21
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@24
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@27
    return-void
.end method


# virtual methods
.method public bx(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jq;
    .registers 10

    #@0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@3
    move-result v1

    #@4
    const/4 v2, 0x0

    #@5
    const/4 v3, 0x0

    #@6
    sget-wide v4, Lcom/google/android/gms/internal/jq;->Wm:J

    #@8
    const/16 v6, 0x66

    #@a
    :goto_a
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@d
    move-result v0

    #@e
    if-ge v0, v1, :cond_38

    #@10
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@13
    move-result v0

    #@14
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@17
    move-result v7

    #@18
    sparse-switch v7, :sswitch_data_5e

    #@1b
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1e
    goto :goto_a

    #@1f
    :sswitch_1f
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@22
    move-result v2

    #@23
    goto :goto_a

    #@24
    :sswitch_24
    sget-object v3, Lcom/google/android/gms/internal/jm;->CREATOR:Lcom/google/android/gms/internal/jn;

    #@26
    invoke-static {p1, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Lcom/google/android/gms/internal/jm;

    #@2c
    move-object v3, v0

    #@2d
    goto :goto_a

    #@2e
    :sswitch_2e
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@31
    move-result-wide v4

    #@32
    goto :goto_a

    #@33
    :sswitch_33
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@36
    move-result v6

    #@37
    goto :goto_a

    #@38
    :cond_38
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@3b
    move-result v0

    #@3c
    if-eq v0, v1, :cond_57

    #@3e
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@40
    new-instance v2, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string v3, "Overread allowed size end="

    #@47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@56
    throw v0

    #@57
    :cond_57
    new-instance v1, Lcom/google/android/gms/internal/jq;

    #@59
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/jq;-><init>(ILcom/google/android/gms/internal/jm;JI)V

    #@5c
    return-object v1

    #@5d
    nop

    #@5e
    :sswitch_data_5e
    .sparse-switch
        0x2 -> :sswitch_24
        0x3 -> :sswitch_2e
        0x4 -> :sswitch_33
        0x3e8 -> :sswitch_1f
    .end sparse-switch
.end method

.method public cS(I)[Lcom/google/android/gms/internal/jq;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/internal/jq;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jr;->bx(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jq;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jr;->cS(I)[Lcom/google/android/gms/internal/jq;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
