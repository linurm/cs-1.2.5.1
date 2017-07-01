.class public Lcom/google/android/gms/drive/query/internal/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/drive/query/internal/LogicalFilter;",
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

.method static a(Lcom/google/android/gms/drive/query/internal/LogicalFilter;Landroid/os/Parcel;I)V
    .registers 7

    #@0
    const/4 v3, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@4
    move-result v0

    #@5
    const/16 v1, 0x3e8

    #@7
    iget v2, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->xM:I

    #@9
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@c
    const/4 v1, 0x1

    #@d
    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->KL:Lcom/google/android/gms/drive/query/internal/Operator;

    #@f
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@12
    const/4 v1, 0x2

    #@13
    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->KY:Ljava/util/List;

    #@15
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@18
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@1b
    return-void
.end method


# virtual methods
.method public aL(Landroid/os/Parcel;)Lcom/google/android/gms/drive/query/internal/LogicalFilter;
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
    :goto_7
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@a
    move-result v4

    #@b
    if-ge v4, v3, :cond_31

    #@d
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@10
    move-result v4

    #@11
    invoke-static {v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@14
    move-result v5

    #@15
    sparse-switch v5, :sswitch_data_56

    #@18
    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1b
    goto :goto_7

    #@1c
    :sswitch_1c
    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@1f
    move-result v2

    #@20
    goto :goto_7

    #@21
    :sswitch_21
    sget-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23
    invoke-static {p1, v4, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Lcom/google/android/gms/drive/query/internal/Operator;

    #@29
    goto :goto_7

    #@2a
    :sswitch_2a
    sget-object v1, Lcom/google/android/gms/drive/query/internal/FilterHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2c
    invoke-static {p1, v4, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@2f
    move-result-object v1

    #@30
    goto :goto_7

    #@31
    :cond_31
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@34
    move-result v4

    #@35
    if-eq v4, v3, :cond_50

    #@37
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@39
    new-instance v1, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string v2, "Overread allowed size end="

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@4f
    throw v0

    #@50
    :cond_50
    new-instance v3, Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    #@52
    invoke-direct {v3, v2, v0, v1}, Lcom/google/android/gms/drive/query/internal/LogicalFilter;-><init>(ILcom/google/android/gms/drive/query/internal/Operator;Ljava/util/List;)V

    #@55
    return-object v3

    #@56
    :sswitch_data_56
    .sparse-switch
        0x1 -> :sswitch_21
        0x2 -> :sswitch_2a
        0x3e8 -> :sswitch_1c
    .end sparse-switch
.end method

.method public bH(I)[Lcom/google/android/gms/drive/query/internal/LogicalFilter;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/query/internal/h;->aL(Landroid/os/Parcel;)Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/query/internal/h;->bH(I)[Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
