.class public Lcom/google/android/gms/wallet/wobs/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/wallet/wobs/g;",
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

.method static a(Lcom/google/android/gms/wallet/wobs/g;Landroid/os/Parcel;I)V
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
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/wobs/g;->getVersionCode()I

    #@9
    move-result v2

    #@a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@d
    const/4 v1, 0x2

    #@e
    iget v2, p0, Lcom/google/android/gms/wallet/wobs/g;->akT:I

    #@10
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@13
    const/4 v1, 0x3

    #@14
    iget-object v2, p0, Lcom/google/android/gms/wallet/wobs/g;->akU:Ljava/lang/String;

    #@16
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@19
    const/4 v1, 0x4

    #@1a
    iget-wide v2, p0, Lcom/google/android/gms/wallet/wobs/g;->akV:D

    #@1c
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ID)V

    #@1f
    const/4 v1, 0x5

    #@20
    iget-object v2, p0, Lcom/google/android/gms/wallet/wobs/g;->akW:Ljava/lang/String;

    #@22
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@25
    const/4 v1, 0x6

    #@26
    iget-wide v2, p0, Lcom/google/android/gms/wallet/wobs/g;->akX:J

    #@28
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@2b
    const/4 v1, 0x7

    #@2c
    iget v2, p0, Lcom/google/android/gms/wallet/wobs/g;->akY:I

    #@2e
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@31
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@34
    return-void
.end method


# virtual methods
.method public cm(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/wobs/g;
    .registers 14

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@5
    move-result v0

    #@6
    const-wide/16 v4, 0x0

    #@8
    const-wide/16 v7, 0x0

    #@a
    const/4 v9, -0x1

    #@b
    move-object v6, v3

    #@c
    move v2, v1

    #@d
    :goto_d
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@10
    move-result v10

    #@11
    if-ge v10, v0, :cond_45

    #@13
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@16
    move-result v10

    #@17
    invoke-static {v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@1a
    move-result v11

    #@1b
    packed-switch v11, :pswitch_data_6a

    #@1e
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@21
    goto :goto_d

    #@22
    :pswitch_22
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@25
    move-result v1

    #@26
    goto :goto_d

    #@27
    :pswitch_27
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@2a
    move-result v2

    #@2b
    goto :goto_d

    #@2c
    :pswitch_2c
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    goto :goto_d

    #@31
    :pswitch_31
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)D

    #@34
    move-result-wide v4

    #@35
    goto :goto_d

    #@36
    :pswitch_36
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@39
    move-result-object v6

    #@3a
    goto :goto_d

    #@3b
    :pswitch_3b
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@3e
    move-result-wide v7

    #@3f
    goto :goto_d

    #@40
    :pswitch_40
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@43
    move-result v9

    #@44
    goto :goto_d

    #@45
    :cond_45
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@48
    move-result v10

    #@49
    if-eq v10, v0, :cond_64

    #@4b
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@4d
    new-instance v2, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string v3, "Overread allowed size end="

    #@54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v0

    #@5c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v0

    #@60
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@63
    throw v1

    #@64
    :cond_64
    new-instance v0, Lcom/google/android/gms/wallet/wobs/g;

    #@66
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/wallet/wobs/g;-><init>(IILjava/lang/String;DLjava/lang/String;JI)V

    #@69
    return-object v0

    #@6a
    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_22
        :pswitch_27
        :pswitch_2c
        :pswitch_31
        :pswitch_36
        :pswitch_3b
        :pswitch_40
    .end packed-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/wobs/h;->cm(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/wobs/g;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public dU(I)[Lcom/google/android/gms/wallet/wobs/g;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/wallet/wobs/g;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/wobs/h;->dU(I)[Lcom/google/android/gms/wallet/wobs/g;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
